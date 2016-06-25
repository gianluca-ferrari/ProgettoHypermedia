$(document).ready(loadWho());
$(document).ready(loadTestimonials());

function loadWho() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("movingtextgroup").innerHTML = xhttp.responseText;
    }
  };
  xhttp.open("GET", "../html/pages/groupdescription.txt", true);
  xhttp.send();
}

function loadTestimonials() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("teste").innerHTML = parseCategories(xhttp.responseText);
    }
  };
  xhttp.open("GET", "../php/whoweare.php", true);
  xhttp.send();
}


function parseCategories(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "<div class=\"col-xs-3\"></div>";
    for(i = 0; i < arr.length; i++) {
        out +="<div class=\"col-xs-2\">";
        out += "<div >";
        out += "<img src=\"" + arr[i].img + "\" class=\"testimonialsimg\">";
        out += "</div>";
        out += "<div class=\"testimonialsquote\">" + arr[i].frase + "</div>";        
        out += "<div class=\"testimonialsname\">- " + arr[i].nome + "</div>";   
        out += "</div>";
    }
    out +="<div class=\"col-xs-3\"></div>";
     return out;

}
    