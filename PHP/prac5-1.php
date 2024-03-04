<?php

$string = trim("This is a long sentence with eight words");
$length = 0;
$words = 1;

while (isset($string[$length])) {
    if ($string[$length] == " ") {
        $words++;
    }
    $length++;
}


echo "The Sentence is : " . $string . "</br>";
echo "The length of string is : " . $length . "</br>";
echo "The word count of string is : " . $words . "</br>";

?>