$(document).ready(loadHome);
$(document).ready(loadHome2);

function loadHome() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     parseHome(xhttp.responseText);
    }
  };
  xhttp.open("GET", "../php/index.php?id=1", true);
  xhttp.send();
}

function loadHome2() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     parseHome2(xhttp.responseText);
    }
  };
  xhttp.open("GET", "../php/index.php?id=47", true);
  xhttp.send();
}

function parseHome(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "";
    var url, button, position, link;
    url = "../html/device.html?id=";
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
        out += "<div class=\"panel_box panel-primary\">";
        out += "<h2 class= \"device_title\" style=\"text-align: center;\">";
        out += arr[i].nome;
        out += "</h2>";
        out += "<div class=\"col-sm-6\">";
            out += "<div style=\"text-align: center\">";
                out += "<img src=\"" + arr[i].immagine + "\" class=\"img_device\" height=\"40%\" > <br>";
              out += "</div>";
        out += "</div>";
        out += "<div class=\"col-sm-6\">";
                out += "<div class=\"panel_box panel-primary\"><h4>";
                    out += arr[i].vetrina;
                out += "</h4></div>";
         out += "<button type=\"button\"" + button +  "onclick=\"window.location='" + link  + "'\">More details</button></div>";
        out += "</div>"
    }
    document.getElementById("highlightsdevice").innerHTML = out;
} 

function parseHome2(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "";
    var url, button, position, link;
    url = "../html/slservice.html?id=";
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
        out += "<div class=\"panel_box panel-primary\">";
        out += "<h2 class= \"device_title\" style=\"text-align: center;\">";
        out += arr[i].nome;
        out += "</h2>";
        out += "<div class=\"col-sm-6\">";
            out += "<div style=\"text-align: center\">";
                out += "<img src=\"" + arr[i].immagine + "\" class=\"img_device\" height=\"40%\" > <br>";
              out += "</div>";
        out += "</div>";
        out += "<div class=\"col-sm-6\">";
                out += "<div class=\"panel_box panel-primary\"><h4>";
                    out += arr[i].vetrina;
                out += "</h4></div>";
         out += "<button type=\"button\"" + button +  "onclick=\"window.location='" + link  + "'\">More details</button></div>";
        out += "</div>"
    }
    document.getElementById("highlightssl").innerHTML = out;
} 