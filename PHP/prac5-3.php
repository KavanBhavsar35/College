<?php 
    $arr1 = array(
        array(1,2,3),
        array(4,5,6),
        array(7,8,9)
    );
    $arr2 = array(
        array(7,8,9),
        array(4,5,6),
        array(1,2,3)
    );
    $arr3 = array();
    for ($i = 0; $i < count($arr1); $i++) {
        for ($j = 0; $j < count($arr1); $j++) {
            $arr3[$i][$j] = $arr1[$i][$j] * $arr2[$i][$j];
        }
    }
    print_r($arr3);
?>