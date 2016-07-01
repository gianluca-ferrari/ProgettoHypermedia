$(document).ready(loadDevices);
$(document).ready(loadBreadcumbs);

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
    var url, button, position, link;
    url = "../html/device.html?id=";
    var id = location.search.split('id=')[1];
    if(id == 1)
        position = "Smarthphone";
    if(id == 2)
        position = "Smartwatch";
    if(id == 3)
        position = "Tablet";
    if(id == 4)
        position = "Smart living";
    if(id == 5)
        position = "Promotions";
    out += "<h1 class = \"category_title\">" + position + "</h1>";
    for(i = 0; i < arr.length; i++) {
        
        if(arr[i].disponibile == 1)
            {
                link = url + arr[i].idDevice;
                button = "class=\"btn btn-default btn-block\"";
            }
        else
            {
                link = "#";
                button = "class=\"btn btn-default btn-block\" disabled = 'disabled'";
            }
        
        out += "<div class=\"col-sm-4\">";
           out += "<div class=\"panel_box panel-primary\">";
           out += "<h3 class= \"device_title\">";
               out += arr[i].nome;
           out += "</h3>";
           out += "<img src=\"" + arr[i].immagine + "\" class=\"img_device\" width=\"100%\" > <br>";
           out += "<button type=\"button\"" + button +  "onclick=\"window.location='" + link  + "'\">More details</button></div>";
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
  xhttp.open("GET", "../php/breadcumbs_device.php?id=" + id, true);
  xhttp.send();
}