<?php
function generateRandomNumber($min, $max)
{
    return mt_rand($min, $max);
}
function convertToBase($number)
{
    return array(
        'Binary' => decbin($number),
        'Octal' => decoct($number),
        'Hexadecimal' => dechex($number)
    );
}
function trigFunctions($angle)
{
    return array(
        'sin' => sin($angle),
        'cos' => cos($angle),
        'tan' => tan($angle)
    );
}

// Example usage
$decimalNumber = 42;
echo "Random number between 1 and 100: " . generateRandomNumber(1, 100) . " </br></br></br>";

$converted = convertToBase($decimalNumber);
echo "Decimal: $decimalNumber,</br> Binary: {$converted['Binary']},</br> Octal: {$converted['Octal']},</br> Hexadecimal: {$converted['Hexadecimal']} </br></br></br>";

$angle = 45;
$trig = trigFunctions(deg2rad($angle));
echo "Angle: $angle,</br> sin: {$trig['sin']},</br> cos: {$trig['cos']},</br> tan: {$trig['tan']} </br></br></br>";
