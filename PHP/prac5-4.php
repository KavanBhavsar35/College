<?php
$morse_code_dict = array(
    'A' => '.-', 'B' => '-...',
    'C' => '-.-.', 'D' => '-..', 'E' => '.',
    'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-',
    'L' => '.-..', 'M' => '--', 'N' => '-.',
    'O' => '---', 'P' => '.--.', 'Q' => '--.-',
    'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--',
    'X' => '-..-', 'Y' => '-.--', 'Z' => '--..',
    '1' => '.----', '2' => '..---', '3' => '...--',
    '4' => '....-', '5' => '.....', '6' => '-....',
    '7' => '--...', '8' => '---..', '9' => '----.',
    '0' => '-----', ', ' => '--..--', '.' => '.-.-.-',
    '?' => '..--..', '/' => '-..-.', '-' => '-....-',
    '(' => '-.--.', ')' => '-.--.-'
);

$message = "";
$morse_code = "";

if (isset($_POST['message'])) {
    $message = strtoupper($_POST['message']);
    $morse_code_array = array();
    foreach (str_split($message) as $char) {
        if (array_key_exists($char, $morse_code_dict)) {
            $morse_code_array[] = $morse_code_dict[$char];
        } else {
            $morse_code_array[] = '?';
        }
    }
    $morse_code = implode(' ', $morse_code_array);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Morse Code Converter</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-6 offset-3 mb-5">
                <h2 class="display-3">Morse Code Converter</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-6 offset-3">
                <form method="post">
                    <div class="mb-3">
                        <label for="message" class="form-label">Message</label>
                        <input value="<?= $message ?>" name="message" type="text" class="form-control" id="message" aria-describedby="messageHelp" placeholder="Enter message">
                    </div>
                    <div class="mb-3">
                        <label for="morse_code" class="form-label">Morse Code</label>
                        <input readonly type="text" class="form-control" id="morse_code" aria-describedby="morseCodeHelp" value="<?= $morse_code ?>" placeholder="Morse Code">
                    </div>
                    <button type="submit" class="btn btn-primary">Convert to Morse Code</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-kenU1KFdBIeUqUlnwZjH7z/ywl+JuonjyTyDejVrtI/QjD4J7URz4OIW+NIlU/6LP" crossorigin="anonymous"></script>
</body>

</html>
