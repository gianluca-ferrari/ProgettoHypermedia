function loadFilter() {
  var xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     parseFilter(xhttp.responseText);
    }
  };
  url = "../php/filter.php?id=";
  //url += "?tipologia=" + "" + "?marca=" + "" + "?connessione=" + "" + "?fotocamera=" + "" + "?display=" + "";
  var id = location.search.split('id=')[1];
  xhttp.open("GET", url+id , true);
  xhttp.send();
}

function parseFilter(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "";
    for(i = 0; i < arr.length; i++) {
        if(arr[i].tipo==true)
            {
                if(i!=0)
                    {
                        out += "<hr class=\"line\">";
                        out += "</div>";
                    }
                out += "<div class=\"panel-body\">";
                out += "<h4 class = \"filter_category\">" + arr[i].nome + "</h4>";
            }
         else
         {
                out += "<div class=\"radio\">";
                    out += "<label><input type=\"radio\" name=\"optradio\" value=\"" + arr[i].value + "\">"; 
                    out += arr[i].nome + "</label>";
                out += "</div>";
         }   
          
    }
    document.getElementById("filter").innerHTML = out;
} 