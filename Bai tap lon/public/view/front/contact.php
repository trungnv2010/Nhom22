<!DOCTYPE html>
<html lang="vi">
<head>
    <?php
        include('../layouts/front/head.php');
    ?>
</head>
<body>
    <?php
        session_start();
    ?>

    <?php
        include('../layouts/front/header.php');
    ?>

    <section class="page-add">
        <div class="col-lg-4">
            <div class="page-breadcrumb">
                <h2 style=" float: left;  margin: -100px 100px;}">Liên Hệ Với Chúng Tôi<span>.</span></h2>
            </div>
        </div>
        <div class="col-lg-8-slide-category">
            <img src="../../../img/add1.jpg" alt="">
        </div>
    </section>

    <div class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <form action="#" class="contact-form">
                        <div class="row">
                            <h1 style="text-align: center">Quý Khách vui lòng liên hệ theo số địa chỉ hoặc email</h1>
                        </div>
                    </form>
                </div>
                <div class="col-lg-3 offset-lg-1" style="text-align: center;padding: 60px; margin-bottom: -100px;">
                    <div class="contact-widget">
                        <div class="cw-item">
                            <h5 style=" margin: 0">Địa chỉ</h5>
                            <ul>
                                <li>Cơ sở 1 : Đại Học Bách Khoa </li>
                                <li>Cơ sở 2 : Pháp Vân</li>
                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5 style=" margin: 0">Số điện thoại</h5>
                            <ul>
                                <li>0123456789</li>
                                <li>0987654321</li>
                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5 style=" margin: 0">E-mail</h5>
                            <ul>
                                <li>bookstore@gmail.com</li>
                                <li>nvtrung@gmail.com</li>
                            </ul>
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