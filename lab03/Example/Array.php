<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transistional//EN" lang="en">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <SCRIPT type="text/javascript">
    var myArray = new Array();
    myArray.push("Tri Tri");
    myArray.push("Hoa Nguyen");
    myArray.push("Nguyen Trung");

    document.writeln(myArray[1]);
    document.writeln("<BR>");

    document.writeln("Array Size:" +myArray.length);
    document.writeln("<BR>");

    var who = myArray.pop();
    document.writeln("Poped Element: " + who);
    document.writeln("<BR>");

    document.writeln("Array Size:" +myArray.length);
    document.writeln("<BR>");
    document.writeln("<BR>");

    var otherArray = new Array("dog", 3, 8.4);
    document.writeln("Other Array:" +otherArray.toString());
    document.writeln("<BR>");
    document.writeln("<BR>");

    otherArray["key"] = "value";
    document.writeln(otherArray["key"]);
    document.writeln("<BR>");
    </SCRIPT>
</body>
</html>