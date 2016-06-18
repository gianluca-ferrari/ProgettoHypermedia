<?php
    $out = "";
    $out = $out. "<div class=\"wrapper\">";
        $out = $out. "<a href=\"index.html\"><img src=\"../img/tim_logo.png\" class=\"logo\"></a>";     
        $out = $out. "<a href=\"#\" class=\"hamburger\"></a>";   
        $out = $out. "<nav>";    
            $out = $out. " <ul>";       
                $out = $out. "<li><a href=\"#\">Plans</a></li>";      
                $out = $out. "<li><a href=\"categorie.html?id=1\">Devices</a></li>";  
                $out = $out. "<li><a href=\"categorie.html?id=2\">Smart Life</a></li>";  
                $out = $out. "<li><a href=\"#\">Assistance</a></li>";   
                $out = $out. "<li><a href=\"#\">Who We Are</a></li>";   
            $out = $out. " </ul>";        
        $out = $out. "</nav>";        
    $out = $out. "</div>";
    echo $out;
?>