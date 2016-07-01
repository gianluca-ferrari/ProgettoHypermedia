$(document).ready(loadInnovation());

function loadInnovation() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("projects").innerHTML = parseCategories(xhttp.responseText);
    }
  };
  xhttp.open("GET", "../php/whoweare.php?tipo=1", true);
  xhttp.send();
}


function parseCategories(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "";
    for(i = 0; i < arr.length; i++) {
        out +="<div class=\"col-xs-4\">";
        out += "<div class=\"projectsname\">" + arr[i].nome + "</div><hr>";   
        out += "<div class=\"projectsimg\">";
        out += "<img src=\"" + arr[i].img + "\" class=\"projectsimg\" align=\"middle\">";
        out += "</div><hr>";
        out += "<div class=\"projectsquote\">" + arr[i].frase + "</div>";        

        out += "</div>";
    }
    return out;
}