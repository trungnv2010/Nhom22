<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transistional//EN" lang="en">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <SCRIPT type="text/javascript">
    num=0;
    func myFunc() {
        num++;
        document.myForm.outputField.value = "Called" + num + "times";
    }
    window.setInterval("myFunc()", 1000);
   
   </SCRIPT>
</head>
<body>
  <FORM name = "myForm">
    <INPUT type="text" name="outputField" readonly>
    </FORM>
</body>
</html>