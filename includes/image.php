<?php

header('Content-type: image/jpeg');

$email = "kalia.ronish_09@gmail.com";
$len = strlen($email);
$font_size = 4;

$width = ImageFontWidth($len * 4);
$height = ImageFontHeight(4);

$image = imagecreate($width. $height);
imagecolorlocator($image, 255, 255, 255);
$font_color = imagefontlocator($image, 0, 0, 0);
imagestring($image, $font_size, 0, 0, $email, $font_color);

imagejpeg($image);


?>