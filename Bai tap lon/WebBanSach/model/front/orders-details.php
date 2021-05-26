<?php
    $orderdetails = mysqli_query($con, "SELECT * FROM orderdetails WHERE orderId= '$orderID'");
?>