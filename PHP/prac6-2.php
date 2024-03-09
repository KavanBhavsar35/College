<?php

$string = "Hello, World!";
echo ctype_lower($str) ? "String $string is lowercase\n" : "String $string is not lowercase\n" . "</br></br></br>";
echo "Reversed String: " . strrev($string) . "</br></br></br>";
echo "String without spaces: " . str_replace(' ', '', $string) . "</br></br></br>";
echo "String with 'World' replaced by 'Universe': " . str_replace("World", "Universe", $string) . "\n" . "</br></br></br>";