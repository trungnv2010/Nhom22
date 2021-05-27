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
        include('../../../controller/front/check-out.php');
    ?>

    <?php
        include('../layouts/front/header.php');
    ?>

    <section class="page-add">
        <div class="col-lg-4">
            <div class="page-breadcrumb">
                <h2 style=" float: left;  margin: -100px 220px;}">Thanh Toán<span>.</span></h2>
            </div>
        </div>
        <div class="col-lg-8-slide-category">
            <img src="../../../img/add1.jpg" alt="">
        </div>
    </section>

    <section class="cart-total-page spad">
        <div class="container">
            <form action="#" class="checkout-form" method="POST">
                    <div class="col-lg-12">
                        <h3 style="font-size: 30px; margin-left: 6%; margin-right: 10%;">Thông tin của bạn</h3>
                    </div>
                    <div class="col-lg-9" style="float: left; width: 55%;margin: 10px 7%;">
                        <div class="row">
                            <div class="col-lg-2-payment">
                                <p class="in-name" >Họ và tên*</p>
                            </div>
                            <div class="col-lg-10-payment">
                                <input type="text" name="name" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2-payment">
                                <p class="in-name">Số nhà*</p>
                            </div>
                            <div class="col-lg-10-payment">
                                <input type="text" name="apartmentNumber" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2-payment">
                                <p class="in-name" >Xã/Phường*</p>
                            </div>
                            <div class="col-lg-10-payment">
                                <input type="text" name="ward" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2-payment">
                                <p class="in-name">Quận/Huyện*</p>
                            </div>
                            <div class="col-lg-10-payment">
                                <input type="text" name="district" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2-payment">
                                <p class="in-name">Tỉnh/TP*</p>
                            </div>
                            <div class="col-lg-10-payment">
                                <input type="text" name="province" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2-payment">
                                <p class="in-name">Số điện thoại*</p>
                            </div>
                            <div class="col-lg-10-payment">
                                <input type="tel" name="phoneNumber"  pattern= "0[0-9\s.-]{9}" required>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3" style="margin-right: 10%;">
                        <div class="order-table">
                            <div class="cart-item">
                                <span>Sản phẩm</span>
                                <?php
                                    while($cart = mysqli_fetch_array($carts)){
                                        $product = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM books WHERE id = '{$cart['bookId']}'"));
                                        echo"<p class=\"product-name\" style=\"float: right;\">{$product['name']}</p>";
                                    }
                                ?>
                                
                            </div>
                            <div class="cart-item">
                                <span>Tổng đơn hàng</span>
                                <p><?php if($totalPayment!= "")echo "{$totalPayment} Đ"; else echo "0 Đ";?></p>
                            </div>
                            <div class="cart-item">
                                <span>Số lượng</span>
                                <p><?php echo "{$totalQuantity} Cuốn" ?></p>
                            </div>
                            <div class="cart-item">
                                <span>Phí vận chuyển</span>
                                <p><?php echo "{$_SESSION['fee']} Đ";?></p>
                            </div>

                            <div class="cart-total">
                                <span>Tổng</span>
                                <p><?php echo "{$totalSum} Đ" ?></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <div class="col-lg-12">
                        <div class="payment-method" style="float: left">
                            <h3>Phương thức thanh toán</h3>
                            <ul>
                                <li>
                                    <label for="two"> Vui lòng thanh toán khi nhận hàng</label>
                                    <input type="radio" id="two" required>
                                </li>
                            </ul>
                            <button type="submit" name="order" style="margin: 0 -221% 50px;width: 120%;">Đặt hàng</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>

    <?php
        include('../layouts/front/footer.php');
    ?>
    <?php
        include('../layouts/front/embed.js.php');
    ?>
</body>

</html>