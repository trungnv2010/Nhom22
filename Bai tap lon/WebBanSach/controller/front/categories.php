<?php
    include('../../../model/connect.php');
    if(isset($_GET['sortby'])){
        $sort = $_GET['sortby'];
        switch($sort){
            case 'newest':
                $result = mysqli_query($con, "SELECT * FROM books ORDER BY dateModified DESC");
                break;
            case 'priceup':
                $result = mysqli_query($con, "SELECT * FROM books ORDER BY price ASC");
                break;
            case 'pricedown':
                $result = mysqli_query($con, "SELECT * FROM books ORDER BY price DESC");;
                break;
            case 'all':
                $result = mysqli_query($con, "SELECT * FROM books");;
                break;
            case 'science':
                $result = mysqli_query($con, "SELECT * FROM books WHERE category = 'Khoa học'");;
                break;
            case 'novel':
                $result = mysqli_query($con, "SELECT * FROM books WHERE category = 'Tiểu thuyết'");;
                break;
            case 'comic':
                $result = mysqli_query($con, "SELECT * FROM books WHERE category = 'Truyện tranh'");;
                break;
        }
    }  
    //search
    elseif(isset($_GET['search'])){
        $name = $_GET['nameBook'];
        $result = mysqli_query($con, "SELECT *, MATCH (`name`, `description`, `author`, `category`) AGAINST ('{$name}') as score FROM books WHERE MATCH (`name`, `description`, `author`, `category`) AGAINST ('{$name}') > 0 ORDER BY score DESC");
    }
    else $result = mysqli_query($con, "SELECT * FROM books ORDER BY dateModified DESC LIMIT 10");
?>