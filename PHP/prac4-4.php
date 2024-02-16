    <h1>Table of 12</h1>
    <table>
        <tbody>
            <?php
                $n = 12;
                for ($i = 1; $i <= 10; $i++) {
                    echo "<tr> <td> $n * $i = ".$i*$n." </td> </tr>";
                }
            ?>
        </tbody>
    </table>