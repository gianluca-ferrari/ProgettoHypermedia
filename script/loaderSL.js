function loadDevices() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     parseDevices(xhttp.responseText);
    }
  };
  var id = location.search.split('id=')[1];
  xhttp.open("GET", "../php/devices.php?id=" + id, true);
  xhttp.send();
}

function parseDevices(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "";
    var position;
    var id = location.search.split('id=')[1];
    if(id == 6)
        position = "TV & Entertainment";
    if(id == 7)
        position = "TIM Games";
    if(id == 8)
        position = "TIM Reading";
    if(id == 9)
        position = "Health & Wellness";
    out += "<h1 class = \"category_title\">" + position + "</h1>";
    for(i = 0; i < arr.length; i++) {
        out += "<div class=\"col-sm-4\">";
           out += "<div class=\"panel_box panel-primary\">";
           out += "<h3 class= \"device_title\">";
               out += arr[i].nome;
           out += "</h3>";
           out += "<img src=\"" + arr[i].immagine + "\" class=\"img_device\" width=\"100%\" > <br>";
           out += "<button type=\"button\" class=\"btn btn-default btn-block\">More details</button></div>";
        out += "</div>";
    }
    document.getElementById("device").innerHTML = out;
} 

function loadBreadcumbs(){
     var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("breadcumbs").innerHTML = xhttp.responseText;
    }
  };
  var id = location.search.split('id=')[1];
  xhttp.open("GET", "../php/breadcumbs_sl.php?id=" + id, true);
  xhttp.send();
}