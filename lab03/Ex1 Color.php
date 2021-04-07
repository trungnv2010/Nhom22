<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event handling</title>
</head>

    <body>
        <a href="http://example.com/" style="color:red;" onmouseover="changeRed()" onmouseout="normalColor()">Red Link</a> </br>
        <a href="http://example1.com/" style="color: green;" onmouseover="changeGreen()" onmouseout="normalColor()">Green Link</a> </br>
        <a href="http://example3.com/" style="color:blue;" onmouseover="changeBlue()" onmouseout="normalColor()" >Blue Link</a> </br>
       <p id = "p">Change the color of paragraph</p>
       <script>
          
           function changeRed(){
            document.getElementById("p").style.color= "red"

           }
           function changeGreen(){
            document.getElementById("p").style.color= "green"

           }
           function changeBlue(){
            document.getElementById("p").style.color= "blue"

           }
           function normalColor(){
            document.getElementById("p").style.color= "black"

           }


       </script>
      </body>

</html>