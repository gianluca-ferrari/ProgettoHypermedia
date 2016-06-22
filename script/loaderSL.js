$(document).ready(loadSL());
$(document).ready(loadBreadcumbs());

function loadSL() {
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
    var position, link, url, button;
    url = "../html/slservice.html?id=";
    var id = location.search.split('id=')[1];
    if(id == 6)
        {
            position = "TV & Entertainment";
            immagine = "tventertainment.jpg"
        }
        
    if(id == 7)
        {
            position = "TIM Games";
            immagine = "timgames.jpg"
        }
        
    if(id == 8)
        {
            position = "TIM Reading";
            immagine = "timreading.jpg"
        }
        
    if(id == 9)
        {
            position = "Health & Wellness";
            immagine = "healthandwellness.jpg"
        }
        
    out += "<h1 class = \"category_title\">" + position + "</h1>";
    out += "<div class=\"container categorybox\">";
    out += "<img src=\"../img/" + immagine + "\" class=\"img-responsive\"></div>";
    out += "<div class=\"col-sm-2\"></div>";
    out += "<div class=\"col-sm-8\">";
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
        
        out += "<div class=\"col-sm-6\">";
           out += "<div class=\"panel_box panel-primary\">";
           out += "<h3 class= \"device_title\">";
               out += arr[i].nome;
           out += "</h3>";
           out += "<img src=\"" + arr[i].immagine + "\" class=\"img_device\" width=\"100%\" > <br>";
           out += "<button type=\"button\"" + button + "onclick=\"window.location='" + link  + "'\">More details</button></div>";
        out += "</div>";
    }
    out += "</div><div class=\"col-sm-2\"></div>";
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