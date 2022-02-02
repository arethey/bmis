<?php
$con=mysqli_connect("localhost","root","");
$res=mysqli_query($con,"select * from  where tblresident status=0 limit 1");
if(mysqli_num_rows($res)>0){
	header('content-type:image/jpeg');
	$font="BRUSHSCI.TTF";
	$image=imagecreatefromjpeg("clearance.jpg");
	$color=imagecolorallocate($image,19,21,22);
	while($row=mysqli_fetch_assoc($res)){
		$name=$row['lname'];
		$name=$row['fname'];
		$name=$row['mname'];
		$name=$row['age'];
		imagettftext($image,50,0,365,420,$color,$font,$name);
		$date=date('d F, Y');
		imagettftext($image,20,0,450,595,$color,"AGENCYR.TTF",$date);
		$file=time().'_'.$row['id'];
		imagejpeg($image,"clearance/".$file.".jpg");
		imagedestroy($image);
		mysqli_query($con,"update student set status=1 where id='".$row['id']."'");
	}
}
?>