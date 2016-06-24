function loadHeader(position) {
   
    var xhttp=new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById('header').innerHTML = createHeader(position);
      }
   };
    xhttp.open("GET", "../php/category.php", true);
    xhttp.send();
}

function createHeader(position)
{
    var cl1="", cl2="", cl3="", cl4="", cl5="";
    if(position == "1")
        cli1=" class=active ";
    if(position == "2")
        cli2=" class=active ";
    if(position == "3")
        cli3=" class=active ";
    if(position == "4")
        cli4=" class=active ";
    if(position == "5")
        cli5=" class=active ";
    
     var out="";
        out += "<nav class=\"navbar navbar-default col-sm-12\">";
        out += "          <div class=\"container-fluid\">";
        out += "            <div class=\"navbar-header\">";
        out += "              <a class=\"navbar-brand\" href=\"#\"><a href=index.html><img src=\"..\/img\/tim_logo.png\" class=\"logo\"><\/a><\/a>";
        out += "            <\/div>";
        out += "            <ul class=\"nav navbar-nav\">";
        out += "              <li"+cl1+"><a href=\"plans.html\">Plans<\/a><\/li>";
        out += "              <li"+cl2+"><a href=\"categorie.html?id=1\">Devices<\/a><\/li> ";
        out += "              <li"+cl3+"><a href=\"categorie.html?id=2\">Smart life<\/a><\/li> ";
        out += "              <li"+cl4+"><a href=\"assistance.html\">Assistance<\/a><\/li> ";
        out += "              <li"+cl5+"><a href=\"whoweare.html\">Who we are<\/a><\/li> ";
        out += "            <\/ul>";
        out += "          <\/div>";
        out += "        <\/nav>";
    return out;
}
