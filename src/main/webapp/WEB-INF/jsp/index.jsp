<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 " lang="en"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7" lang="en"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8" lang="en"> <![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="en"> <![endif]-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Troy E-commerce</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<link href="css/normalize.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/font.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/all.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" type="text/css" href="css/mobile.css">
<link rel="stylesheet" type="text/css" href="css/MobileLandscape.css">
<link rel="stylesheet" type="text/css" href="css/Tablet.css">
<script src="js/jQuery1.7.2.js"></script>
</head>
<body id="index" class="  ">
<div id="wrapp">
  <div id="wrapp_2">
    <div class="header_bg">
      <header id="header" class="container ">
        <div id="header-inner"> <a id="header_logo" href="#" title="Bikes"> <img class="logo" src="images/welcomeweek-banner.png" alt="Bikes" width="104" height="91"/> </a>
          <section class="blockuserinfo header-box"> <a href="Login.jsp" title="" class="login" rel="tooltip" data-original-title="Login" data-placement="bottom"><span><i class="fa fa-lock"></i></span></a> </section>
          <section id="header_user" class="blockuserinfo-cart header-box">
            <div id="shopping_cart"> <a href="#" title="View my shopping cart" rel="nofollow"> <strong class="opancart"></strong> <span class="shopping_cart_title">Cart:</span> <span class="ajax_cart_quantity hidden">0</span> <span class="ajax_cart_no_product">(empty)</span> </a> </div>
          </section>
          <div id="your_account"><a href="signup" title="" rel="nofollow">Sign UP</a></div>
          <div id="menu-wrap" class="clearfix desktop">
            <div id="menu-trigger">Categories<span class="menu-icon"></span></div>
            <ul id="menu-custom">
              <li><a href="#">Home</a></li>
              <li><a href="#">About</a>
                <ul>
                  <li><a href="#">Our Story</a></li>
                  <li><a href="#">Innovation</a></li>
                </ul>
              </li>
              <li><a href="#">Blog</a></li>
              <li><a href="#">Gallary</a>
                <ul>
                  <li><a href="#">Photos</a></li>
                  <li><a href="#">Video</a></li>
                </ul>
              </li>
              <li><a href="#">Events</a></li>
              <li><a href="#">Product</a> </li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>
          <section id="cart_block" class="block column_box exclusive">
            <h4><span>Cart</span><span class="column_icon_toggle"></span></h4>
            <div class="block_content toggle_content">
              <div id="cart_block_summary" class="collapsed"> <span class="ajax_cart_quantity" style="display:none;">0</span> <span class="ajax_cart_product_txt_s" style="display:none">Products</span> <span class="ajax_cart_product_txt">Product</span> <span class="ajax_cart_total" style="display:none"> </span> <span class="ajax_cart_no_product">(empty)</span> </div>
              <div id="cart_block_list" class="expanded">
                <p class="cart_no_products" id="cart_block_no_products">No products</p>
                <table id="vouchers" style="display:none;">
                  <tbody>
                  </tbody>
                </table>
                <div class="cart-prices">
                  <div class="cart-prices-block"> <span id="cart_block_shipping_cost" class="price ajax_cart_shipping_cost">$0.00</span> <span>Shipping</span> </div>
                  <div class="cart-prices-block"> <span id="cart_block_total" class="price ajax_block_cart_total">$0.00</span> <span>Total</span> </div>
                </div>
                <p id="cart-buttons" class=""> <a href="#" class="button_mini" title="View my shopping cart" rel="nofollow">Cart</a> <a href="#" id="button_order_cart" class="exclusive" title="Checkout" rel="nofollow">Checkout</a> </p>
              </div>
            </div>
          </section>
        </div>
      </header>
    </div>
    <div class="container_bg">
      <div id="columns" class="container ">
        <div class="row ">
          <div class="loader_page">
            <aside id="left_column" class="span3 column" style=" display:none"> </aside>
            <div id="center_column" class="center_column span12 clearfix">
              <div id="minic_slider" class="theme-default">
                <div id="slider" class="nivoSlider" style="margin-bottom:0;"> <a href="#"> <img src="images/slide1.jpg" class="slider_image"/> </a> <a href="#"> <img src="images/slide2.jpg" class="slider_image"/> </a> <a href="#"> <img src="images/slide3.jpg" class="slider_image"/> </a> <a href="#"> <img src="images/slide4.jpg" class="slider_image"/> </a> </div>
              </div>
              <script type="text/javascript">
        $(window).load(function() {
            $('#slider').nivoSlider({
                effect: 'fade', 
                slices: 15, 
                boxCols: 8, 
                boxRows: 4, 
                animSpeed: 500, 
                pauseTime: 7000, 
                startSlide: 0,
                directionNav: true, 
                controlNav: false, 
                controlNavThumbs: false,
                pauseOnHover: true, 
                manualAdvance: false, 
                prevText: 'Prev', 
                nextText: 'Next', 
                randomStart: false            });
        });
        </script>
              <div id="customcontent_home">
                <ul class="customcontent-home">
                  <li class="num-2"> <a href="#"> <img src="images/341ae2d8afc027c1c7224b30c92a1b35.jpg" alt="" > </a> </li>
                </ul>
              </div>
              <div id="customcontent_home2">
                <ul class="customcontent-home">
                  <li class="num-1"> <a href="#"> <img src="images/1-(2).jpg" alt="" /> </a> </li>
                  <li class="num-2"> <a href="#"> <img src="images/5a2ca1fea1d20f086e68ca2c77020e92.jpg" alt="" /> </a> </li>
                  <li class="num-3"> <a href="#"> <img src="images/9e069cea70ebd288b9852db85b3525c0.jpg" alt=""/> </a> </li>
                  <li class="num-4"> <a href="#"> <img src="images/f267bfddc2045288af54ffd0140619f6.jpg" alt=""/> </a> </li>
                </ul>
              </div>
              <div class="clearfix"></div>
              <section class="addhomefeatured">
                <h4><span>Our products</span></h4>
                <ul class="row">
                  <li class="ajax_block_product span3   num-1 alpha">
                    <div class="featured_li"> <a class="product_image" href="#" title="  New!" rel="tooltip" data-placement="bottom" data-original-title="Santini Italy Short Sleeve Jersey"> <img src="images/1-home_default.jpg" alt="Santini Italy Short Sleeve Jersey" class="main-img"/> <img src="images/2-home_default.jpg" alt="" style="display:none;" class="next-img"/> </a> <span class="price"> $122.51 </span> <span class="price-drop-feacherd">$128.00</span>
                      <div class="box">
                        <h5><a class="product_link" href="id_product=1&amp;controller=product&amp;id_lang=1" title="">Skates</a></h5>
                        <p class="product_desc">Description</p>
                        <div class="clearfix"> </div>
                        <a class="exclusive ajax_add_to_cart_button btn_add_cart" rel="ajax_id_product_1" href="#"> <span>Add to cart</span> </a> <a class="button" href="#" rel="tooltip" data-placement="bottom">View</a> </div>
                    </div>
                  </li>
                  <li class="ajax_block_product span3   num-2">
                    <div class="featured_li"> <a class="product_image" href="#" title="  New!" rel="tooltip" data-placement="bottom" data-original-title="Selle SMP Pro Saddle"> <img src="images/4-home_default.jpg" alt="Selle SMP Pro Saddle" class="main-img"/> <img src="images/5-home_default.jpg" alt="" style="display:none;" class="next-img"/> </a> <span class="price"> $628.96 </span>
                      <div class="box">
                        <h5><a class="product_link" href="" title="">Product Name</a></h5>
                        <p class="product_desc">Description</p>
                        <div class="clearfix"> </div>
                        <a class="exclusive ajax_add_to_cart_button btn_add_cart" rel="ajax_id_product_2" href="#"> <span>Add to cart</span> </a> <a class="button" href="" rel="tooltip" data-placement="bottom">View</a> </div>
                    </div>
                  </li>
                  <li class="ajax_block_product span3   num-3">
                    <div class="featured_li"> <a class="product_image" href="#" title="  New!" rel="tooltip" data-placement="bottom" data-original-title="SRAM S80 Front Wheel"> <img src="images/8-home_default.jpg" alt="SRAM S80 Front Wheel" class="main-img"/> <img src="images/9-home_default.jpg" alt="" style="display:none;" class="next-img"/> </a> <span class="price"> $394.64 </span> <span class="price-drop-feacherd">$428.00</span>
                      <div class="box">
                        <h5><a class="product_link" href="#" title="">Product Name</a></h5>
                        <p class="product_desc">Description</p>
                        <div class="clearfix"> </div>
                        <a class="exclusive ajax_add_to_cart_button btn_add_cart" rel="ajax_id_product_3" href="#"> <span>Add to cart</span> </a> <a class="button" href="#" rel="tooltip" data-placement="bottom">View</a> </div>
                    </div>
                  </li>
                  <li class="ajax_block_product span3   omega num-4">
                    <div class="featured_li"> <a class="product_image" href="#" title="  New!" rel="tooltip" data-placement="bottom" data-original-title="Shimano Dura-Ace BR-7900 Brakes"> <img src="images/12-home_default.jpg" alt="Shimano Dura-Ace BR-7900 Brakes" class="main-img"/> 
                      <!-- <img src="images/13-home_default.jpg" alt="" style="display:none;" class="next-img"/>--> 
                      </a> <span class="price"> $928.96 </span>
                      <div class="box">
                        <h5><a class="product_link" href="#" title="">Product Name</a></h5>
                        <p class="product_desc">Description</p>
                        <div class="clearfix"> </div>
                        <a class="exclusive ajax_add_to_cart_button btn_add_cart" rel="ajax_id_product_4" href="#"> <span>Add to cart</span> </a> <a class="button" href="#" rel="tooltip" data-placement="bottom">View</a> </div>
                    </div>
                  </li>
                  <li class="ajax_block_product span3   num-5 alpha">
                    <div class="featured_li"> <a class="product_image" href="#" title="  New!" rel="tooltip" data-placement="bottom" data-original-title="Easton EA50 Rear Wheel"> <img src="images/16-home_default.jpg" alt="Easton EA50 Rear Wheel" class="main-img"/> 
                      <!--<img src="images/17-home_default.jpg" alt="" style="display:none;" class="next-img"/>--> 
                      </a> <span class="price"> $428.96 </span>
                      <div class="box">
                        <h5><a class="product_link" href="#" title="">Product Name</a></h5>
                        <p class="product_desc">Description</p>
                        <div class="clearfix"> </div>
                        <a class="exclusive ajax_add_to_cart_button btn_add_cart" rel="ajax_id_product_5" href="#"> <span>Add to cart</span> </a> <a class="button" href="" rel="tooltip" data-placement="bottom">View</a> </div>
                    </div>
                  </li>
                  <li class="ajax_block_product span3   num-6">
                    <div class="featured_li"> <a class="product_image" href="#" title="  New!" rel="tooltip" data-placement="bottom" data-original-title=""> <img src="images/20-home_default.jpg" alt="" class="main-img"/> 
                      <!--<img src="images/21-home_default.jpg" alt="" style="display:none;" class="next-img"/> --> 
                      </a> <span class="price"> $428.96 </span>
                      <div class="box">
                        <h5><a class="product_link" href="#" title="">Product Name</a></h5>
                        <p class="product_desc">Description</p>
                        <div class="clearfix"> </div>
                        <a class="exclusive ajax_add_to_cart_button btn_add_cart" rel="ajax_id_product_6" href=""> <span>Add to cart</span> </a> <a class="button" href="#" rel="tooltip" data-placement="bottom">View</a> </div>
                    </div>
                  </li>
                  <li class="ajax_block_product span3   num-7">
                    <div class="featured_li"> <a class="product_image" href="#" title="  New!" rel="tooltip" data-placement="bottom" data-original-title="Fi&#039;zik Antares Braided Saddle"> <img src="images/24-home_default.jpg" alt="Fi&#039;zik Antares Braided Saddle" class="main-img"/> 
                      <!-- <img src="images/25-home_default.jpg" alt="" style="display:none;" class="next-img"/>--> 
                      </a> <span class="price"> $632.15 </span>
                      <div class="box">
                        <h5><a class="product_link" href="#" title="">Product Name</a></h5>
                        <p class="product_desc">Description</p>
                        <div class="clearfix"> </div>
                        <a class="exclusive ajax_add_to_cart_button btn_add_cart" rel="ajax_id_product_7" href="#"> <span>Add to cart</span> </a> <a class="button" href="#" rel="tooltip" data-placement="bottom">View</a> </div>
                    </div>
                  </li>
                  <li class="ajax_block_product span3   omega num-8">
                    <div class="featured_li"> <a class="product_image" href="#" title="  New!" rel="tooltip" data-placement="bottom" data-original-> <img src="images/28-home_default.jpg" alt="AGU Robotica Short Sleeve Jersey" class="main-img"/> 
                      <!--<img src="images/29-home_default.jpg" alt="" style="display:none;" class="next-img"/> --> 
                      </a> <span class="price"> $563.42 </span> <span class="price-drop-feacherd">$640.00</span>
                      <div class="box">
                        <h5><a class="product_link" href="#" title="">AGU Robotica Short Sleeve Jersey</a></h5>
                        <p class="product_desc">Description</p>
                        <div class="clearfix"> </div>
                        <a class="exclusive ajax_add_to_cart_button btn_add_cart" rel="ajax_id_product_8" href=""> <span>Add to cart</span> </a> <a class="button" href="#" rel="tooltip" data-placement="bottom">View</a> </div>
                    </div>
                  </li>
                </ul>
              </section>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-bg-mob">
      <footer class="container ">
        <div class="row modules">
          <section class="block blockcms_footer span3">
            <h4 class="toggle">Information</h4>
            <ul class="list-footer toggle_content clearfix">
              <li class="first_item"><a href="#" title="Specials">Specials</a></li>
              <li class="item"><a href="#" title="Best sellers">Best sellers</a></li>
              <li class="item"><a href="#" title="Contact us">Contact us</a></li>
              <li class="item"><a href="#" title="Terms and conditions of use">Terms and conditions of use</a></li>
              <li><a href="#" title="Sitemap">Sitemap</a></li>
            </ul>
          </section>
          <section class="bottom_footer">© 2017 Troy University. Developed By<a href="http://www.troy.edu//" target="_blank">Troy University</a></section>
          <section class="block blockmyaccountfooter span3">
            <h4>My account</h4>
            <ul class="list-footer toggle_content clearfix">
              <li><a href="#" title="My orders" rel="nofollow">My orders</a></li>
              <li><a href="#" title="My credit slips" rel="nofollow">My credit slips</a></li>
              <li><a href="#" title="My addresses" rel="nofollow">My addresses</a></li>
              <li><a href="#" title="Manage my personal information" rel="nofollow">My personal info</a></li>
              <li class="favoriteproducts"> <a href="#" title="My favorite products."> My favorite products. </a> </li>
            </ul>
          </section>
          <section class="block blocksocial span3">
            <h4>Follow us</h4>
            <ul class="toggle_content list-footer">
              <li class="facebook"><a href="#">Facebook</a></li>
              <li class="twitter"><a href="#">Twitter</a></li>
            </ul>
          </section>
          <section class="block blockcontactinfos span3">
            <h4>Contact us</h4>
            <ul class="toggle_content list-footer">
              <li>Troy University,
                Troy, Alabama- 36081,
                USA</li>
              <li class="mail">+1(334)268-9925</li>
            </ul>
          </section>
        </div>
      </footer>
    </div>
  </div>
</div>
<script src="js/bootstrap.js"></script> 
<script src="js/plugins.js"></script> 
<script src="js/footable.js"></script> 
<script src="js/jquery.core-ui-select.js"></script> 
<script src="js/jquery.scrollpane.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/jquery.mousewheel.js"></script> 
<script src="js/mainscript.js"></script> 
<script src="js/modernizr-2.5.3.min.js"></script> 
<script src="js/jquery.carouFredSel-6.2.1.js"></script> 
<script src="js/jquery.touchSwipe.min.js"></script>
</body>
</html>
