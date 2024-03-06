<?php
function computeNotes($amount) {
    $notes = array(100, 50, 20, 10, 5, 2, 1);
    $count = array();

    foreach ($notes as $note) {
        if ($amount >= $note) {
            $count[$note] = floor($amount / $note);
            $amount %= $note;
        }
    }

    return $count;
}
?>

<html>
    <head>
        <title>Currency Denomition Calculator</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <div class="container d-flex flex-column justify-content-center align-items-center">
            <h2 class="display-1">Currency Converter</h2>
            <div class="wrapper d-flex justify-content-center align-items-baseline mt-5">
                <form action="prac6-1.php" method="get">
                    <label for="amount">Amount</label>
                    <input id="amount" name="amount" type="number" required style='max-width:7rem;'>
                    <button class='btn btn-primary'>Generate</button>
                </form>
            </div>
            <?php
                // $amount = 256;
                if (isset($_GET["amount"])) {
                    $amount = $_GET["amount"];
                    $result = computeNotes($amount);
                    echo "<h4 class='h4 mt-3'>Amount: $amount</h4>";
                    echo "<table class='table mt-5' style='max-width: 9.7rem;text-align: center;'>";
                    echo "    <thead>";
                    echo "        <tr>";
                    echo "            <th>Note</th>";
                    echo "            <th>Count</th>";
                    echo "        </tr>";
                    echo "    </thead>";
                    echo "    <tbody>";
                    foreach ($result as $note => $count) {
                        echo "<tr><td>$note</td><td> $count</td></tr>";
                    }
                    echo "    </tbody>";
                    echo "</table>";
                }
            ?>
        </div>
        <style>
        table tr td:first-child,
        table tr th:first-child {
            border-right-width: var(--bs-border-width);
        }

        </style>
    </body>
</html>