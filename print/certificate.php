<?php 
header('Content-type: image/jpeg');
$font=realpath('arial.ttf');
$image=imagecreatefromjpeg("business permit.jpg");
$color=imagecolorallocate($image, 51, 51, 102);
$date=date('d F, Y');
imagettftext($image, 30, 0, 2040, 2480, $color,$font, $date);
$name="YOUTUBE";
imagettftext($image, 40, 0, 2300, 1780, $color,$font, $name);
$name="YOUTUBE";
imagettftext($image, 40, 0, 1200, 1900, $color,$font, $name);
//imagejpeg($image,"certificate/$name.jpg");
imagejpeg($image);
imagedestroy($image);
?>
