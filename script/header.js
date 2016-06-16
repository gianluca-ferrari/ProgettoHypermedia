        function loadHeader() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (xhttp.readyState == 4 && xhttp.status == 200) {
                   document.getElementById("header").innerHTML = xhttp.responseText;
                }
            };
            xhttp.open("GET", "../php/header.php" , true);
            xhttp.send();
        }