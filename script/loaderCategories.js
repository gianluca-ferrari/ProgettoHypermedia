function loadCategories() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     parseCategories(xhttp.responseText);
    }
  };
  var id = location.search.split('id=')[1];
  xhttp.open("GET", "../php/category.php?id="+id, true);
  xhttp.send();
}

function parseCategories(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "";

    for(i = 0; i < arr.length; i++) {
       out += "<div class=\"container categorybox\">";
            out += "<img src=\"../img/" + arr[i].immagine + "\" class=\"img-responsive\">";
            out += "<div>";
                out += "<button type=\"button\" class=\"btn btn-default categorybutton\" onclick=\"window.location='devices.html?id=" +  arr[i].id + "'\">" + arr[i].name + "</a></button>";
            out += "</div></div>";
    }
    document.getElementById("category").innerHTML = out;
} 