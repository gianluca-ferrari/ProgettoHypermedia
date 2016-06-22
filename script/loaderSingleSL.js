$(document).ready(loadSingleSL());
$(document).ready(loadPlans());
$(document).ready(loadDevice);

function loadSingleSL(){
     var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("image").innerHTML = parseImage(xhttp.responseText);
     document.getElementById("caratteristiche").innerHTML = parseCaratteristiche(xhttp.responseText);
     document.getElementById("prezzo").innerHTML = parsePrezzo(xhttp.responseText);
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

function loadDevice(){
     var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
        
     document.getElementById("consigliati").innerHTML = parseConsigliato(xhttp.responseText);
    }
  };
  var id = location.search.split('id=')[1];
  xhttp.open("GET", "../php/device_consigliati.php?id=" + id , true);
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

function parseConsigliato(response)
{
    var arr = JSON.parse(response);
    var out = "";
    out += " <h3 >Consigliato con i seguenti devices:</h3> "; 
    out += "                 <hr class=\"line\"> "; 
    out += "                 <div> "; 
    
    for(i = 0; i < arr.length; i++)
        {
            out += "                     <div class= \"col-sm-6\"> "; 
            out += "                         <button type=\"button\" class=\"btn btn-default btn-block button-disabled\" disabled=disabled>" + arr[i].device + "</button> "; 
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

function parseImage(response)
{
    var arr = JSON.parse(response);
    var out = "";
    out += "<img src=\"" + arr[0].immagine + "\" class=\"img_device\" width=\"100%\" >";
    return out;
}