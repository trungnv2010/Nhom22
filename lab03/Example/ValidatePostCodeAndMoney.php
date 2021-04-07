<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transistional//EN" lang="en">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <SCRIPT type="text/javascript">
   function setAlign(align) {
       var pTag = window.document.getElementById("paragraph");
       pTag.setAttribute("align", align);
   }
   
   </SCRIPT>
</head>
<body>
  <FORM name = "alignForm">
    <SELECT id="alignSelect">
        <OPTION value="left"> left </OPTION>
        <OPTION value="right"> right </OPTION>
        <OPTION value="center"> center </OPTION>
    </SELECT>
    <INPUT type="button" value="Go" onClick="setAlign(document.alignForm.alignSelect.value)">
    </FORM>
    <p id="paragraph"> This is some sample text. </p>
</body>
</html>