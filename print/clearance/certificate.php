<?php 
header('Content-type: image/jpeg');
$font=realpath('arial.ttf');
$image=imagecreatefromjpeg("clearance.jpg");
$color=imagecolorallocate($image, 51, 51, 102);
$date=date('d F, Y');
imagettftext($image, 40, 0, 1500, 1880, $color,$font, $date);
$name="Juniel M. Marfa";
imagettftext($image, 40, 0, 1480, 1680, $color,$font, $name);
$name="YOUTUBE";
imagettftext($image, 40, 0, 1450, 1980, $color,$font, $name);
$name="22";
imagettftext($image, 40, 0, 1499, 1780, $color,$font, $name);
//imagejpeg($image,"certificate/$name.jpg");
imagejpeg($image);
imagedestroy($image);

?>
