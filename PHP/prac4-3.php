<?php 
    $t1 = 0;
    $t2 = 1;
    $n = 7;
    echo "$t1 <br>";
    echo "$t2 <br>";
    while ($n > 2) {
        $nextTerm = $t1 + $t2;
        $t1 = $t2;
        $t2 = $nextTerm;
        $n--;
        echo "$nextTerm <br>";
    }
?>