<!DOCTYPE html>
<html lang="vi">
<head>
    <?php
        include('../layouts/front/head.php');
    ?>
    <title> Book Store </title>
</head>
<body>
    <?php
        session_start();
        include('../../../controller/front/categories.php');
    ?>

    <?php
        include('../layouts/front/header.php');
    ?>
    <section class="hero-slider">
        <div class="single-slider-item set-bg" >
            <img src="../../../img/background1.jpg" alt="">
        </div>
        <div class="info-banner" >
            <h1 style="color:white;margin-left: 55px;" >2021</h1>
            <h2 style="color: white; margin-left: 35px;" ">Tri Thức.</h2>
            <a href="./categories.php" class="primary-btn">Xem Thêm</a>
        </div>
    </section>

<!--    latest product-->
    <section class="latest-products spad">
        <div class="container">
            <div class="product-filter">
                <div class="row">
                    <div class="col-lg-12-new-product text-center">
                        <div class="section-title">
                            <h2 style="text-align: center;">Sản phẩm mới nhất</h2>
                        </div>
                        <ul class="product-controls" style="text-align: center">
                            <li><span> Những sản phẩm mới nhất tại của hàng của chúng tôi </span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row" id="product-list">
                <?php
                    $count = 0;
                    while($row = mysqli_fetch_array($result) and $count < 10){
                        if($row['category'] == 'Tiểu thuyết') $category = 'novel';
                        elseif($row['category'] == 'Khoa học') $category = 'science';
                        elseif($row['category'] == 'Truyện tranh') $category = 'comic';
                        echo"
                            <div class=\"css_product_index mix all {$category}\">
                                <div class=\"single-product-item\">
                                    <figure>
                                        <a href=\"./product-page.php?id={$row['id']}\"><img width= 270 height= 370 style=\"object-fit: cover;\" src=\"../../../img/products/{$row['image']}\" alt=\"\"></a>
                                        <div class=\"p-status\">new</div>
                                    </figure>
                                    <div class=\"product-text\">
                                        <a href=\"./product-page.php?id={$row['id']}\">
                                            <h6>{$row['name']}</h6>
                                        </a>
                                        <p>{$row['price']} Đ</p>
                                    </div>
                                </div>
                            </div>
                        ";
                    $count++;
                    }
                ?>

            </div>
        </div>
    </section>

<!--    Footer-->
    <?php
        include('../layouts/front/footer.php');
    ?>

<!--    Js-->
    <?php
        include('../layouts/front/embed.js.php');
    ?>
</body>
</html>