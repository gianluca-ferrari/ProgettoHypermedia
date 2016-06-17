function loadCategories() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     parseCategories(xhttp.responseText);
    }
  };
  xhttp.open("GET", "../php/category.php", true);
  xhttp.send();
}

function parseCategories(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "";

    for(i = 0; i < arr.length; i++) {
       out += "<div class=\"container categorybox\">";
            out += "<img src=\"../img/" + arr[i].name + ".jpg\" class=\"img-responsive\">";
            out += "<div>";
                out += "<button type=\"button\" class=\"btn btn-default categorybutton\" onclick=\"window.location='devices.html?id=" +  arr[i].id + "'\">" + arr[i].name + "</a></button>";
            out += "</div></div>";
    }
    document.getElementById("category").innerHTML = out;
} 