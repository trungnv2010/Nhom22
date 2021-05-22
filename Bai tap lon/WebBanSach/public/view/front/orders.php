<!DOCTYPE html>
<html lang="vi">
<head>
    <?php
        include('../layouts/front/head.php');
    ?>
</head>
<body>
    <?php
        include('../../../controller/front/orders.php');
    ?>

    <?php
        include('../layouts/front/header.php');
    ?>

    <section class="page-add">
        <div class="col-lg-4">
            <div class="page-breadcrumb">
                <h2 style=" float: left;  margin: -100px 220px;}">Đơn Hàng<span>.</span></h2>
            </div>
        </div>
        <div class="col-lg-8-slide-category">
            <img src="../../../img/add1.jpg" alt="">
        </div>
    </section>

    <div class="cart-page">
        <div class="container">
            <div class="cart-table">
                <table>
                    <thead>
                        <tr>
                            <th>Tên sản phẩm</th>
                            <th>Mã đơn hàng</th>
                            <th class="method-ship">Phương thức vận chuyển</th>
                            <th style="float: left;padding-left: 26%;">Ngày đặt</th>
                            <th>Tình trạng</th>         
                        </tr>
                    </thead>
                    <tbody> 
                        <?php
                        while($order = mysqli_fetch_array($temp)){
                            $checkShip = false;
                            $datediff = mysqli_fetch_array(mysqli_query($con, "SELECT ROUND(DATEDIFF(NOW(), `orderDate`)) as Date FROM orders WHERE orderId = '{$order['orderId']}'"));
                            if($order['methodShip'] == 'standard'){
                                $order['methodShip'] = "Tiêu chuẩn";
                                if($datediff['Date'] >= 4) $checkShip = true;
                            }
                            elseif($order['methodShip'] == 'fast'){
                                $order['methodShip'] = "Nhanh";
                                if($datediff['Date'] >= 2) $checkShip = true;
                            }
                            elseif($order['methodShip'] == 'express'){
                                $order['methodShip'] = "Hỏa tốc";
                                if($datediff['Date'] >= 1) $checkShip = true;
                            }
                            if($checkShip){
                                // thay doi status
                                $status = mysqli_query($con, "UPDATE `orders` SET status = '1' WHERE orderId = '{$order['orderId']}' ");
                            } 
                            $status = "";
                            if($order['status'] == '0') $status = "Đang giao";
                            if($order['status'] == '1') $status = "Đã giao";
                            $result = "";
                            $idofBooks = mysqli_query($con, "SELECT bookId FROM `orderdetails` WHERE orderId =  '{$order['orderId']}'");
                            while($idofBook = mysqli_fetch_array($idofBooks)){
                                $nameofBook = mysqli_fetch_array(mysqli_query($con, "SELECT name FROM books WHERE id = {$idofBook['bookId']}"));
                                $result.= "<td class=\"product-col\">
                                <div class=\"p-title\" style=\"padding-left: 100px;\">
                                    <h5>" . $nameofBook['name'] ."</h5>
                                </div>
                                </td>" . "\n";
                            }
                            echo"
                                <tr>
                                " . $result .
                                "<td class=\"price-col\" style=\"padding-left: 100px;\"><a style=\"color: #999\" href=\"./orderdetails.php?orderId={$order['orderId']}\">{$order['orderId']}</a></td>
                                <td class=\"quantity-col\">                                   
                                    <h5>{$order['methodShip']}</h5>
                                </td>
                                <td class=\"total\">{$order['orderDate']}</td>
                                <td class=\"product-close\">{$status}</td>
                                </tr>  
                                ";   
                        }   
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <?php
        include('../layouts/front/footer.php');
    ?>

    <?php
        include('../layouts/front/embed.js.php');
    ?>
</body>

</html>