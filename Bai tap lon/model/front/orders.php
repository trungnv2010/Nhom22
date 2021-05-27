<?php
     $orders = mysqli_query($con, "SELECT * FROM orders WHERE userId = '{$_SESSION['id']}'");
?>