<!DOCTYPE html>
<html lang="vi">
<head>
    <?php
        include('../layouts/front/head.php');
    ?>
</head>

<body>
    <?php
        include('../../../controller/front/orderdetails.php');
    ?>

    <?php
        include('../layouts/front/header.php');
    ?>

    <section class="page-add">
        <div class="col-lg-4">
            <div class="page-breadcrumb">
                <h2 style=" float: left;  margin: -100px 220px;}">Chi Tiết Đơn Hàng<span>.</span></h2>
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
                            <th class="product-h" style="padding-left: 9%">Sản phẩm</th>
                            <th>Giá</th>
                            <th class="quan">Số lượng</th>
                            <th style="padding-right: 15%;">Tổng</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>       
                            <?php
                            while($orderdetail = mysqli_fetch_array($orderdetails)){
                                $product = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM books WHERE id = '{$orderdetail['bookId']}'"));
                                echo"
                                <tr>
                                <td class=\"product-col\">
                                    <img src=\"../../../img/products/{$product['image']}\" alt=\"\">
                                    <div class=\"p-title\">
                                        <h5>{$product['name']}</h5>
                                    </div>
                                </td>
                                <td class=\"price-col\" style=\"padding-left:110px\">{$product['price']}</td>
                                <td class=\"quantity-col\" style=\"padding-left: 15%;\">
                                    <div class=\"product-quantity ml-5\">
                                        <h5>{$orderdetail['quantity']}</h5>
                                    </div>
                                </td>
                                <td class=\"total\">{$orderdetail['totalPayment']} Đ</td>
                                </tr>
                                ";
                            }
                            ?> 
                    </tbody>
                </table>
            </div>
        </div>
        <div class="shopping-method">  
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shipping-info" style="text-align: center">
                            <h1 style="padding-bottom: 40px">Thông tin vận chuyển</h1>
                            <div class="chose-shipping" style="margin-left: 26%;">
                                <div class="cs-item">
                                    <label for="one">
                                        <span>Họ tên người nhận</span>
                                        <?php echo $order['customerName']?>
                                    </label>
                                </div>
                                <div class="cs-item">
                                    <label for="two">
                                        <span>Địa chỉ giao hàng</span>
                                        <?php echo $order['address']?>
                                    </label>
                                </div>
                                <div class="cs-item">
                                    <label for="three">
                                        <span>Tình trạng giao hàng</span>
                                        <?php echo $status?>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="total-info">
                            <div class="total-table">
                                <table style="padding-left: 17%;">
                                    <thead>
                                        <tr>
                                            <th>Tổng hàng</th>
                                            <!-- <th>Subtotal</th> -->
                                            <th style="float: left">Phí giao hàng</th>
                                            <th class="total-cart" style="float: left;padding-left: 20%;">Tổng cộng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="total" style="padding-left: 11%;"><?php if($totalPayment!= "")echo "{$totalPayment} Đ"; else echo "0 Đ";?></td>
                                            <td class="shipping" style="float: left;"><?php echo "{$fee} Đ";?></td>
                                            <td class="total-cart-p" style="float: left ; padding-left: 20%"><?php echo "{$totalSum} Đ" ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 text-right">
                                    <a href="./orders.php" class="primary-btn chechout-btn" style="margin-left: 42%;">Quay lại danh sách đơn</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>'
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