<?php 
header('Content-type: image/jpeg');
$font=realpath('arial.ttf');
$image=imagecreatefromjpeg("indigency.jpg");
$color=imagecolorallocate($image, 51, 51, 102);
$date=date('d F, Y');
imagettftext($image, 30, 0, 1900, 2120, $color,$font, $date);
$name="MY Name";
imagettftext($image, 40, 0, 2000, 1390, $color,$font, $name);
$name="23";
imagettftext($image, 40, 0, 2670, 1390, $color,$font, $name);
//imagejpeg($image,"certificate/$name.jpg");
imagejpeg($image);
imagedestroy($image);
?>
