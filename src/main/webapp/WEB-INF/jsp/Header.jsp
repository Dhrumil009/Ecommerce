<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<body id="${bodyType}" class="  ">
<div id="wrapp">
  <div id="wrapp_2">
    <div class="header_bg">
      <header id="header" class="container ">
        <div id="header-inner"> 
        	<a id="header_logo" href="#" title="Bikes"> <img class="logo" src="images/welcomeweek-banner.png" alt="Bikes" width="104" height="91"/> </a>
        		
        			  <c:if  test="${empty user}" >
	        			<section class="blockuserinfo header-box"> 
			          		<a href="login" title="" class="login" rel="tooltip" data-original-title="Login" data-placement="bottom"><span><img src="img/logintroy.png"  title="login"></img></span></a> 
			          	</section>
			          </c:if>	
				         <section id="header_user" class="blockuserinfo-cart header-box">
				            	<div id="shopping_cart">
									<a href="cart" title="View my shopping cart" rel="nofollow"> 
										<strong class="opancart"></strong> <span class="shopping_cart_title">Cart:</span> 
										<c:if test="${not empty  cart}"> <span class="ajax_cart_no_product">( ${fn:length(cart)} )</span> </c:if>
										<c:if test="${empty  cart}"> <span class="ajax_cart_no_product">(empty)</span> </c:if>
									</a> 
								</div>
				          </section>
				      <c:if  test="${not empty user}" >
					    <section class="blockuserinfo header-box"> 
			          		<a href="doLogout" title="logout" class="login" rel="tooltip" data-original-title="Login" data-placement="bottom"><span><img src="img/logout.jpg"></img></span></a> 
			          	</section>
			          	 <div id="your_account">
				          		<a href="#" title="" rel="nofollow">Welcome ${user.userFirstName}</a>
				          </div>
				      </c:if>
			          <c:if  test="${empty user}" >
				          <div id="your_account">
				          		<a href="signup" title="" rel="nofollow">Sign UP</a>
				          </div>
        			 </c:if>	
<%--         		<c:if  test="${empty user}" > --%>
        			 
			       
<%--         		</c:if> --%>
		          	
          <div id="menu-wrap" class="clearfix desktop">
            <div id="menu-trigger">Categories<span class="menu-icon"></span></div>
            <ul id="menu-custom">
              <li><a href="/">Home</a></li>
              <li><a href="aboutus">About</a></li>
              <li><a href="event">Events</a></li>
              <li><a href="contact">Contact</a></li>
              <c:if  test="${not empty user}" ><li><a href="profile">Profile</a></li></c:if>
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