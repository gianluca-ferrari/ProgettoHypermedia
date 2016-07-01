$(document).ready(loadSingleDevice());
$(document).ready(loadPlans());
$(document).ready(loadSL);

function loadSingleDevice(){
     var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("myCarousel").innerHTML = parseGalleria(xhttp.responseText);
     document.getElementById("caratteristiche").innerHTML = parseCaratteristiche(xhttp.responseText);
     document.getElementById("prezzo").innerHTML = parsePrezzo(xhttp.responseText);
     document.getElementById("specifiche").innerHTML = parseSpecifiche(xhttp.responseText);
    }
  };
  var id = location.search.split('id=')[1];
  xhttp.open("GET", "../php/single_device.php?id=" + id , true);
  xhttp.send();
}


function loadPlans(){
     var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("offerte").innerHTML = parseOfferte(xhttp.responseText);
    }
  };
  var id = location.search.split('id=')[1];
  xhttp.open("GET", "../php/offerte_device.php?id=" + id , true);
  xhttp.send();
}

function loadSL(){
     var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("sl").innerHTML = parseSL(xhttp.responseText);
    }
  };
  var id = location.search.split('id=')[1];
  xhttp.open("GET", "../php/SL_device.php?id=" + id , true);
  xhttp.send();
}

function parseCaratteristiche(response)
{
    var arr = JSON.parse(response);
    var out = "";
    out += "<h2>" + arr[0].nome + "</h2>";
    out += "<h3 >Caratteristiche</h3> <hr class='line'> <p>" + arr[0].descrizione + "</p>";
    return out;
}

function parsePrezzo(response)
{
    var arr = JSON.parse(response);
    var out = "";
    out += "<h3>Prezzo</h3><hr class=\"line\"><p class=\"prezzo\">" + arr[0].costo + "0€</p>";
    return out;
}

function parseSpecifiche(response)
{
    var arr = JSON.parse(response);
    var out = "";
    out += "<div class=\"panel panel-default\"><div class=\"panel-body\"><h4>Specifiche tecniche</h4></div><div class=\"panel-heading\">" + arr[0].specifiche + "</div></div>";
    return out;
}

function parseSL(response)
{
    var arr = JSON.parse(response);
    var out = "";
    out += " <h3 >Disponibile con i seguenti SL services</h3> "; 
    out += "                 <hr class=\"line\"> "; 
    out += "                 <div> "; 
    
    for(i = 0; i < arr.length; i++)
        {
            out += "                     <div class= \"col-sm-6\"> "; 
            out += "                         <button type=\"button\" class=\"btn btn-default btn-block button-disabled\" disabled=disabled>" + arr[i].sl + "</button> "; 
            out += "                     </div> "; 
        }
    out += "                 </div> ";
    return out;
}

function parseOfferte(response)
{
    var arr = JSON.parse(response);
    var out = "";
    out += " <h3 >Disponibile con le seguenti offerte</h3> "; 
    out += "                 <hr class=\"line\"> "; 
    out += "                 <div> "; 
    
    for(i = 0; i < arr.length; i++)
        {
            out += "                     <div class= \"col-sm-6\"> "; 
            out += "                         <button type=\"button\" class=\"btn btn-default btn-block button-disabled\" disabled=disabled>" + arr[i].nome + "</button> "; 
            out += "                     </div> "; 
        }
    out += "                 </div> ";
    return out;
}

function parseGalleria(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "";
    var nome = arr[0].nome;
    var immagine1 = "../img/" + nome + ".jpg";
    var immagine2 = "../img/" + nome + "1.jpg";
    var immagine3 = "../img/" + nome + "2.jpg";
    var immagine4 = "../img/" + nome + "3.jpg";
    out += " <ol class=\"carousel-indicators\"> "; 
    out += "             <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li> "; 
    out += "             <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li> "; 
    out += "             <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li> "; 
    out += "             <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li> "; 
    out += "           </ol> "; 
    out += "            "; 
    out += "           <div class=\"carousel-inner\" role=\"listbox\"> "; 
    out += "             <div class=\"item active\"> "; 
    out += "               <img src=\"" + immagine1 + "\" alt=\"Samsung Galaxy S7\"> "; 
    out += "               <div class=\"carousel-caption\"> "; 
    out += "               </div> "; 
    out += "             </div> "; 
    out += "             <div class=\"item\"> "; 
    out += "               <img src=\"" + immagine2 + "\" alt=\"Samsung Galaxy S7\"> "; 
    out += "               <div class=\"carousel-caption\"> "; 
    out += "               </div> "; 
    out += "             </div> "; 
    out += "             <div class=\"item\"> "; 
    out += "               <img src=\"" + immagine3 + "\" alt=\"Samsung Galaxy S7\"> "; 
    out += "               <div class=\"carousel-caption\"> "; 
    out += "               </div> "; 
    out += "             </div> ";  
    out += "             <div class=\"item\"> "; 
    out += "               <img src=\"" + immagine4 + "\" alt=\"Samsung Galaxy S7\"> "; 
    out += "               <div class=\"carousel-caption\"> "; 
    out += "               </div> "; 
    out += "             </div> "; 
    out += "           </div> "; 
    out += "           <a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\"> "; 
    out += "             <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span> "; 
    out += "             <span class=\"sr-only\">Previous</span> "; 
    out += "           </a> "; 
    out += "           <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\"> "; 
    out += "             <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span> "; 
    out += "             <span class=\"sr-only\">Next</span> "; 
    out += "           </a> ";
    
    return out;
} 