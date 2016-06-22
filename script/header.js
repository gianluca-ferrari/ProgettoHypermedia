$(document).ready(loadHeader());

function loadHeader() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
           document.getElementById("header").innerHTML = xhttp.responseText;
        }
    };
  var place = location.search.split('place=')[1];
    xhttp.open("GET", "../php/header.php?place=" + place , true);
    xhttp.send();
}
