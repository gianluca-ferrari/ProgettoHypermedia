$(document).ready(loadContacts());

function loadContacts() {
    var xhttp=new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("contatti").innerHTML = xhttp.responseText;
        }
    };
    xhttp.open("GET", "../html/pages/contatti.txt", true);
    xhttp.send();
}