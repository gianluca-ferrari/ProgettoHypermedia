$(document).ready(loadGroup());

function loadGroup() {
    var xhttp=new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("descr").innerHTML = xhttp.responseText;
        }
    };
    xhttp.open("GET", "../html/pages/thegroup.txt", true);
    xhttp.send();
}