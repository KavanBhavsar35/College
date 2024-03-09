<?php
function isLowercase($str) {
    return ctype_lower($str);
}

function reverseString($str) {
    return strrev($str);
}

function removeSpaces($str) {
    return str_replace(' ', '', $str);
}

function replaceWord($str, $word, $replace) {
    return str_replace($word, $replace, $str);
}

$string = "Hello, World!";
echo isLowercase($string) ? "String $string is lowercase\n" : "String $string is not lowercase\n" . "</br></br></br>";
echo "Reversed String: " . reverseString($string) . "\n" . "</br></br></br>";
echo "String without spaces: " . removeSpaces($string) . "\n" . "</br></br></br>";
echo "String with 'World' replaced by 'Universe': " . replaceWord($string, "World", "Universe") . "\n" . "</br></br></br>";