$(document).ready(loadSingleDevice());

function loadSingleDevice() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     parseSingleDevice(xhttp.responseText);
    }
  };
  url = "../php/filter.php?id=";
  //url += "?tipologia=" + "" + "?marca=" + "" + "?connessione=" + "" + "?fotocamera=" + "" + "?display=" + "";
  var id = location.search.split('id=')[1];
  xhttp.open("GET", url+id , true);
  xhttp.send();
}

function parseSingleDevice(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "";
    for(i = 0; i < arr.length; i++) {
    }
    document.getElementById("singledevice").innerHTML = out;
} 