$(document).ready(loadHome);

function loadHome() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     parseHome(xhttp.responseText);
    }
  };
  xhttp.open("GET", "../php/index.php", true);
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
        out += "<h3 class= \"device_title\">";
        out += arr[i].nome;
        out += "</h3>";
        out += "<div class=\"col-sm-6\">";
            out += "<div class=\"panel_box panel-primary\">";
                out += "<img src=\"" + arr[i].immagine + "\" class=\"img_device\" width=\"100%\" > <br>";
              out += "</div>";
        out += "</div>";
        out += "<div class=\"col-sm-6\">";
                out += "<div class=\"panel_box panel-primary\">";
                    out += arr[i].highlights;
                out += "</div>";
         out += "<button type=\"button\"" + button +  "onclick=\"window.location='" + link  + "'\">More details</button></div>";
    }
    document.getElementById("highlights").innerHTML = out;
} 