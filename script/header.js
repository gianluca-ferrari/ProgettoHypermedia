function loadHeader(position) {
   
    var xhttp=new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById('header').innerHTML = createHeader(position);
      document.getElementById('footer').innerHTML = createFooter();
      }
   };
    xhttp.open("GET", "../php/category.php", true);
    xhttp.send();
}

function createHeader(position)
{
    var cl1="", cl2=" ", cl3=" ", cl4=" ", cl5="";
    if(position == "1")
        cl1+=" " + " class='active' ";
    if(position == "2")
        cl2+=" " + " class='active' ";
    if(position == "3")
        cl3+=" " +" class='active' ";
    if(position == "4")
        cl4+=" " +" class='active' ";
    if(position == "5")
        cl5=" " +" class='active' ";
    
     var out="";
        out += "<nav class=\"navbar navbar-default navbar-fixed-top col-sm-12\">";
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

function createFooter()
{
    var out="";
        out += "<nav class=\"navbar navbar-fixed-bottom footer col-sm-12\"";
        out += "      <div class=\"container-fluid\">";
        out += "        <ul class=\"nav navbar-nav\">";
        out += "          <li><img class=\"img-responsive\" src=\"..\/img\/tim_logo.png\" alt=\"logo tim\" style=\"widht:154px; \"><\/li>";
        out += "          <li><a href=\"contatti.html\">Contatti<\/a><\/li>";
        out += "          <li><a href=\"group.html\">The Group<\/a><\/li> ";
        out += "        <\/ul>";
        out += "";
        out += "        <div class=logos>";
        out += "            <i class=\"fa fa-facebook-official\" style=\"font-size:36px\"><\/i>";
        out += "            <i class=\"fa fa-google-plus-square\" style=\"font-size:36px\"><\/i>";
        out += "            <i class=\"fa fa-twitter\" style=\"font-size:36px\"><\/i>";
        out += "            <i class=\"fa fa-youtube\" style=\"font-size:36px\"><\/i>";
        out += "            <i class=\"fa fa-linkedin-square\" style=\"font-size:36px\"><\/i>";
        out += "            <p>Telecom Italia 2016 - P.IVA 00488410010<\/p>";
        out += "        <\/div>";
        out += "    <\/div>";
        out += "<\/nav>";
    return out;
}