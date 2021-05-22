<!DOCTYPE html>
<html lang="vi">
<head>
    <?php
        include('../layouts/front/head.php');
    ?>
</head>
<body>
    <?php
        include('../../../controller/front/shopping-cart.php');
    ?>

    <?php
        include('../layouts/front/header.php');
    ?>

    <section class="page-add">
        <div class="col-lg-4">
            <div class="page-breadcrumb">
                <h2 style=" float: left;  margin: -100px 220px;}">Giỏ Hàng<span>.</span></h2>
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
                            <th class="product-h order_product">Sản phẩm</th>
                            <th  class="product-h order_product">Giá</th>
                            <th class="quan product-h order_product">Số lượng</th>
                            <th class="product-h order_product">Tổng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while($cart = mysqli_fetch_array($carts)){
                                $product = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM books WHERE id = '{$cart['bookId']}'"));
                                echo"
                                    <tr>
                                        <td class=\"product-col value-cart\">
                                            <img src=\"../../../img/products/{$product['image']}\" alt=\"\">
                                            <div class=\"p-title\">
                                                <h5>{$product['name']}</h5>
                                            </div>
                                        </td>
                                        <td class=\"price-col value-cart\" style=\"padding: 0 8%;\">{$product['price']}</td>
                                        <td class=\"quantity-col value-cart\">
                                            <div class=\"product-quantity ml-5\">
                                                <h5>{$cart['quantity']}</h5>
                                            </div>
                                        </td>
                                        <td class=\"total value-cart\">{$cart['totalPayment']} Đ</td>
                                        <td class=\"product-close value-cart\"><a href=\"../../../controller/front/shopping-cart.php?delete={$cart['id']}\" class=\"text-body\"><i class=\"fa fa-trash-o\"></i></a></td>
                                    </tr>
                                ";
                            }
                        ?> 
                    </tbody>
                </table>
            </div>
            <div class="cart-btn" style="padding-bottom: 100px; margin-right: 150px; margin-left: 120px;">
                <div class="row">
                    <div class="col-lg-10 offset-lg-1 text-left text-lg-right" style="float: right;">
                        <div class="site-btn clear-btn"><a href="../../../controller/front/shopping-cart.php?deleteAll=true" class="text-body">Xóa toàn bộ</div>
                        <div class="site-btn update-btn"><a href="./categories.php" class="text-body">Thêm sản phẩm mới</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="shopping-method">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shipping-info" style="text-align: center; font-size: 30px; margin: 0 28%; padding-bottom: 80px;">
                            <h5>Lựa chọn phương thức vận chuyển</h5>
                            <div class="chose-shipping">
                                <div class="cs-item">
                                    <input type="radio" name="cs" id="one">
                                    <label for="one" class="<?php if($_SESSION['methodShip']=="standard") echo "active"; else echo "noactive"?>">
                                        <a href="../../../controller/front/shopping-cart.php?methodShip=standard" class="<?php if($_SESSION['methodShip']=="standard") echo "text-body"; else echo "text-black-50"?>">Giao hàng tiêu chuẩn</a>
                                        <span>Nhận hàng sau 3-5 ngày</span>
                                    </label>
                                </div>
                                <div class="cs-item">
                                    <input type="radio" name="cs" id="two">
                                    <label for="two" class="<?php if($_SESSION['methodShip']=="fast") echo "active"; else echo "noactive"?>">
                                        <a href="../../../controller/front/shopping-cart.php?methodShip=fast" class="<?php if($_SESSION['methodShip']=="fast") echo "text-body"; else echo "text-black-50"?>">Giao hàng nhanh</a>
                                        <span>Nhận hàng sau 1-2 ngày</span>
                                    </label>
                                </div>
                                <div class="cs-item last">
                                    <input type="radio" name="cs" id="three">
                                    <label for="three" class="<?php if($_SESSION['methodShip']=="express") echo "active"; else echo "noactive"?>">
                                        <a href="../../../controller/front/shopping-cart.php?methodShip=express" class="<?php if($_SESSION['methodShip']=="express") echo "text-body"; else echo "text-black-50"?>">Giao hàng hỏa tốc</a>
                                        <span>Nhận hàng trong ngày</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="total-info">
                            <div class="total-table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Tổng hàng</th>
                                            <!-- <th>Subtotal</th> -->
                                            <th style="float: left; padding-left: 35%">Phí giao hàng</th>
                                            <th class="total-cart" style="padding-right: 14%;width: 18%;}">Tổng cộng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="total" style="padding: 0 10%;"><?php if($totalPayment!= "")echo "{$totalPayment} Đ"; else echo "0 Đ";?></td>
                                            <td class="shipping" style="padding-left: 20% !important;"><?php echo "{$_SESSION['fee']} Đ";?></td>
                                            <td class="total-cart-p" style="float:left; margin-right: 20px"><?php echo "{$totalSum} Đ" ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                                <div class="col-lg-12 text-right">
                                    <a href="./check-out.php" class="primary-btn chechout-btn" style=" float: right; margin-right: 9%;">Tiến hành thanh toán</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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