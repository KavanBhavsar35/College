<!DOCTYPE html>
<html>
<?php
$cars = array(
    "Safari" => "Tata",
    "Nexon" => "Tata",
    "Tigor" => "Tata",
    "Tiago" => "Tata",
    "XUV700" => "Mahindra",
    "XUV300" => "Mahindra",
    "Bolero" => "Mahindra",
    "I20" => "Hyundai",
    "Verna" => "Hyundai",
    "Venue" => "Hyundai",
    "Creta" => "Hyundai",
    "Swift" => "Suzuki",
    "Alto" => "Suzuki",
    "Baleno" => "Suzuki",
    "Brezza" => "Suzuki"
)
?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Car Company</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="../node_modules/jquery/dist/jquery.js"></script>
</head>

<body>
    <div class="container mt-5 mb-3">
        <div class="d-flex flex-column justify-content-center" style="position:relative;left:25%;max-width: 50%;">
            <h2 class="mt-3 py-1 px-3">Car Company</h2>
            <form action="prac4-1.php" method="get" id="carCompanyForm">
                <select class="form-select" name="car" id="carSelect">
                    <option selected value="Safari">Safari</option>
                    <option value="Nexon">Nexon</option>
                    <option value="Tigor">Tigor</option>
                    <option value="Tiago">Tiago</option>
                    <option value="XUV700">XUV700</option>
                    <option value="XUV300">XUV300</option>
                    <option value="Bolero">Bolero</option>
                    <option value="I20">I20</option>
                    <option value="Verna">Verna</option>
                    <option value="Venue">Venue</option>
                    <option value="Creta">Creta</option>
                    <option value="Swift">Swift</option>
                    <option value="Alto">Alto</option>
                    <option value="Baleno">Baleno</option>
                    <option value="Brezza">Brezza</option>
                </select>
            </form>
            <label for="companyName">Company</label>
            <?php
            if (isset($_GET["car"])) {
                $car = $_GET["car"];
                echo "<input type='text' name='companyName' id='companyName' readonly value=$cars[$car]>";
            } else {
                echo "<input type='text' name='companyName' id='companyName' readonly value='Tata'>";
            }
            ?>
        </div>
    </div>
    <script>
        const urlParams = new URLSearchParams(window.location.search);
        const selectedCar = urlParams.get('car');
        console.log(selectedCar);
        const carSelect = document.getElementById('carSelect');
        const companyNameInput = document.getElementById('companyName');

        if (selectedCar) {
            const option = carSelect.querySelector(`option[value="${selectedCar}"]`);
            if (option) {
                option.selected = true;
            }
        }
        $('#carSelect').on('change', function() {
            $('#carCompanyForm').submit();
        });
    </script>
</body>

</html>