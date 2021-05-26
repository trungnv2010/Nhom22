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
        include('../../../controller/front/categories.php');
    ?>

	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form" method="GET">
                <input type="text" id="search-input" name="nameBook" placeholder="Tìm kiếm.....">
                <button class="btn btn-dark" type="submit" name="search"><i class="fa fa-search" aria-hidden="true"></i></button>
			</form>
		</div>
    </div>

    <?php
        include('../layouts/front/header.php');
    ?>

    <section class="page-add">
        <div class="col-lg-4">
            <div class="page-breadcrumb">
                <h2 style=" float: left;  margin: -100px 220px;}">Sách<span>.</span></h2>
            </div>
        </div>
        <div class="col-lg-8-slide-category">
            <img src="../../../img/add1.jpg" alt="">
        </div>
    </section>

    <section class="categories-page spad">
        <div class="product-filter">
            <div class="row" style="margin: -30px 0 -70px;">
                <div class="col-lg-12-new-product text-center">
                    <ul class="product-controls" style="text-align: center">
                        <li><a href="./categories.php?sortby=newest">Mới nhất</a></li>
                        <li><a href="./categories.php?sortby=priceup">Giá: Thấp -> Cao</a></li>
                        <li><a href="./categories.php?sortby=pricedown">Giá: Cao -> Thấp</a></li>
                        <li style="background-color: #7abd1a"><a href="./categories.php?sortby=all">All</a></li>
                        <li><a href="./categories.php?sortby=science">Sách khoa học</a></li>
                        <li><a href="./categories.php?sortby=novel">Tiểu thuyết</a></li>
                        <li><a href="./categories.php?sortby=comic">Truyện tranh</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
                while($row = mysqli_fetch_array($result)){
                    echo"
                    <div class=\"single-product-item\">
                        <a href=\"./product-page.php?bookid={$row['id']}\">
                            <figure>
                                <img width= 270 height= 370 style=\"object-fit: cover;\" src=\"../../../img/products/{$row['image']}\" alt=\"\">
                                <div class=\"p-status\">new</div>
                            </figure>
                        </a>    
                        <div style=\"text-align: center;\" class=\"product-text\">
                            <a href=\"./product-page.php?bookid={$row['id']}\">
                                <h6>{$row['name']}</h6>
                            </a>
                            <p>{$row['price']} Đ</p>
                        </div>
                    </div>";
                }
            ?>
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