<?php

$string = "Hello, world!";
$length = 0;

for ($i = 0; isset($string[$i]); $i++) {
    $length++;
}

echo "The length is : " . $length;

?>