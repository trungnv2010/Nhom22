<?php
    session_start();
    include('../../../model/connect.php');
    if(isset($_GET['bookid'])){
        $bookID = $_GET['bookid'];
        include('../../../model/front/books.php');
        $row = mysqli_fetch_array($result);
        $total_product = mysqli_num_rows(mysqli_query($con, "SELECT * FROM books"));
        $previous = $bookID-1;
        $next = $bookID+1;
        
    }
    if(isset($_POST['addCart'])){
        $books = mysqli_fetch_array(mysqli_query($con, "SELECT amount FROM books WHERE id = {$_GET['bookid']}"));
        $cart = mysqli_fetch_array(mysqli_query($con, "SELECT quantity FROM cart WHERE bookId = {$_GET['bookid']} AND userId = {$_SESSION['id']}"));
        $_SESSION['amount'] = $_POST['amount'];
        $_SESSION['buy'] = true;
        if($books['amount'] - $cart['quantity'] >= $_SESSION['amount']){
            if(isset($_SESSION['id'])) {
                header("Location: shopping-cart.php?bookid={$row['id']}");       
            }
            else header("Location: sign-in.php");
        }
        else {
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            $_SESSION['limit'] = 'Quá số lượng, vui lòng đặt lại!. Số dư trong kho = '. $books['amount'];
        }
    }
    
?>