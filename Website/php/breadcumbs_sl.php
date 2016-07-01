<?php
    $id=$_GET[("id")];
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
        $out = $out."<a class=\"breadcumbs\" href=\"categorie.html?id=2\">SL Services</a> &nbsp ->  &nbsp ".$position."</p>";
    echo $out;
?>