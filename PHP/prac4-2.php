<?php
$subjects = array(
    "Summer Internship-I	" => 92,
    "Scripting Language -Python	" => 89,
    "Relational Database Management System	" => 80,
    "Basics of Operating System	" => 10,
    "Data Structures and Algorithms	" => 91,
    "Responsive Web Page Design" => 91,
);
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h1 class="h1">Marksheet</h1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Subject</th>
                    <th scope="col">Marks</th>
                    <th scope="col">Grade</th>
                    <th scope="col">Result</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $overallResult = "Pass"; 
                foreach ($subjects as $subject => $marks) {
                    if ($marks >= 85 && $marks <= 100) {
                        $grade = "AA";
                    } elseif ($marks >= 75 && $marks <= 84) {
                        $grade = "AB";
                    } elseif ($marks >= 65 && $marks <= 74) {
                        $grade = "BB";
                    } elseif ($marks >= 55 && $marks <= 64) {
                        $grade = "BC";
                    } elseif ($marks >= 45 && $marks <= 54) {
                        $grade = "CC";
                    } elseif ($marks >= 40 && $marks <= 44) {
                        $grade = "CD";
                    } elseif ($marks >= 35 && $marks <= 39) {
                        $grade = "DD";
                    } else {
                        $grade = "Fail";
                        $overallResult = "Fail"; 
                    }

                    echo "<tr>
                        <td scope='row'>$subject</td>
                        <td>$marks</td>
                        <td>$grade</td>
                        <td>" . ($grade != 'Fail' ? 'Pass' : 'Fail') . "</td>
                    </tr>";
                }

                echo "<tr>
                    <td scope='row' colspan='3'>Overall Result</td>
                    <td>$overallResult</td>
                </tr>";
                ?>


            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>