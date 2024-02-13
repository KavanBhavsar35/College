<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Salary Slip</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>


    <div class="container d-flex justify-content-center flex-column ">
        <div class="">
            <h1 class="text-center display-1"> Salary Slip</h1>
        </div>
        <br><br>
        <?php
            $basic_pay = 50000;
            $da = 0.5 * $basic_pay;
            $hra = 0.1 * $basic_pay;
            $medical = 0.04 * $basic_pay;
            $gross_salary = $basic_pay + $da + $hra + $medical;
            $insurance = 0.07 * $gross_salary;
            $pf = 0.05 * $gross_salary;
            $deduction = $insurance + $pf;
            $net_salary = $gross_salary - $deduction;
        ?>
        <table class="table">
            <tbody>
                <tr>
                    <td>Name: Kavan Bhavsar</td>
                    <td>Department: Hr</td>
                </tr>
                <tr>
                    <td>Employee Id: 4194</td>
                    <td>Date: 09-02-2024</td>
                </tr>
            </tbody>
        </table>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Amount</th>
                </tr>
            </thead>
            <tbody>
                <tr class="table-secondary">
                    <th scope="row">1</th>
                    <td colspan="2">Additions</td>
                
                </tr>
                <tr>
                    <th scope="row">i</th>
                    <td>Dearness Allowance</td>
                    <?php echo "<td> $da </td>"  ?>
                </tr>
                <tr>
                    <th scope="row">ii</th>
                    <td>House Rental Allowance</td>
                    <?php echo "<td> $hra </td>"  ?>
                </tr>
                <tr>
                    <th scope="row">iii</th>
                    <td>Medical Allowance</td>
                    <?php echo "<td> $medical </td>"  ?>
                </tr>
                <tr class="table-success pb-3">
                    <th scope="row">Total</th>
                    <td>Gross Salary</td>
                    <?php echo "<td> $gross_salary </td>"  ?>
                </tr>
                <tr>
                    <td><pre>  </pre></td>
                </tr>
            </tbody>
        <!-- </table>
        <table class="table"> -->
            
            <tbody>
                <tr class="table-secondary">
                        <th scope="row">2</th>
                        <td colspan="2">Depreciations</td>
                    </tr>
                    <tr>
                        <th scope="row">i</th>
                        <td>Profident Fund        </td>
                        <!-- <td>House Rental Allowance</td> -->
                        <?php echo "<td> $pf </td>"  ?>
                    </tr>
                    <tr>
                        <th scope="row">ii</th>
                        <td>Insurance</td>
                        <?php echo "<td> $insurance </td>"  ?>
                    </tr>
                    <tr class="table-danger">
                        <th scope="row">Total</th>
                        <td>Deductions</td>
                        <?php echo "<td> $deduction </td>"  ?>
                    </tr>
            </tbody>
        </table>
    </div>
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>