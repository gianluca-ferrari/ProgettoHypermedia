$(document).ready(loadSingleDevice());

function loadSingleDevice(){
     var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("breadcumbs").innerHTML = xhttp.responseText;
    }
  };
  var id = location.search.split('id=')[1];
  xhttp.open("GET", "../php/single_device.php?id=" + id , true);
  xhttp.send();
}