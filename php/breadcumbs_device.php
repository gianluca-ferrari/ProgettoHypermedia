<?php
    $id=$_GET[("id")];
    if($id == 1)
        $position = "Smarthphone";
    if($id == 2)
        $position = "Tablet";
    if($id == 3)
        $position = "Smartwatch";
    if($id == 4)
        $position = "Smart living";
    if($id == 5)
        $position = "Promotions";
    if($id == 6)
        $position = "TV & Entertaiment";
    if($id == 7)
        $position = "TIM Games";
    if($id == 8)
        $position = "TIM Reading";
    if($id == 9)
        $position = "Health & Wellness";
    $out = "";
    $out = $out."<p> &nbsp";
        $out = $out."<a class=\"breadcumbs\" href=\"categorie.html?id=1\">Devices</a> &nbsp ->  &nbsp ".$position."</p>";
    echo $out;
?>