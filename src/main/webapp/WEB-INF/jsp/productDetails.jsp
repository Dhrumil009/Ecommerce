<%@include file="Header.jsp"%>
    <div class="container_bg">
      <div id="columns" class="container ">
        <div class="row ">
          <div class="loader_page">
            <div id="center_column" class="center_column span18 clearfix">
              <div id="primary_block" class="clearfix">
              <c:if test="${not empty product}">
                <div class="row">
	                  <div id="pb-right-column" class="span4">
	                    <h1 class="pb-right-colum-h"></h1>
	                    	<div id="image-block"> 
	                    		<span id="view_full_size"> 
	                    			<a id="zoom1" rel="position: 'inside' , showTitle: false, adjustX:0, adjustY:0" class="cloud-zoom" href="#"> 
	                    			<img id="bigpic" alt="" title="${product.productName}" width="640" height="640" src="${product.productImage}" />
	                    			<span class="mask"></span> </a> </span> 
	                    	</div>
	                  </div>
                  <div id="pb-left-column" class="span5">
                    <h1>${product.productName}</h1>
                    <div id="short_description_block">
                      <div id="short_description_content" class="rte align_justify">
                      		${product.productShortDesc}
                      </div>
                    </div>
                    <!-- add to cart form-->
                    <form id="buy_block"  action="#" method="post">
                      <div class="product_attributes">
                        <div class="row-3">
                          <p id="pQuantityAvailable"> <span id="quantityAvailable">${product.productQuantity}</span> <span  id="quantityAvailableTxtMultiple">items in stock</span> </p>
                        </div>
                      </div>
                      <div class="content_prices clearfix">
                        <div class="row_1">
                          <p class="our_price_display"> <span  id="our_price_display">$ ${product.productPrice}</span>
                          </p>
                        </div>
                        <div class="row-2 " style="display:inline-flex;  border-top: none;">
                          <p id="add_to_cart" class="buttons_bottom_block"> <a class="exclusive button " href="addtoCart?productID=${product.productID}"> <span>Add to cart <i  class="fa fa-shopping-cart"></i></span></a> </p>
                          <p id="add_to_cart" class="buttons_bottom_block"> <a class="exclusive button btn_add_cart" href="../cart/cart.html" style="width:84px"> <span>Buy Now</span></a> </p>
                        </div>
                        <div id="product_comments_block_extra">
                          <div class="comments_advices"> <a class="open-comment-form" href="#"><i class="fa fa-exchange">
                          		</i> Easy Returns</a><br>
                            <a class="open-comment-form" href="#"><i class="fa fa-credit-card"></i> Pay Securely</a><br>
                            <a class="open-comment-form" href="#"><i class="fa fa-certificate"></i> 100% Original</a><br>
                            <a class="open-comment-form" href="#"><i class="fa fa-check-circle"></i> Brand New</a> </div>
                        </div>
                        <div class="other-prices"> </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
              <div class="clear"></div>
	              <div class="extra-box-product">
	                <section class="page_product_box toggle_frame more_info_inner">
	                  <h3 class="toggle">Product Detail<span class="icon-toggle"></span></h3>
	                  <div class="toggle_content">
	                    <p>${product.productLongDesc}</p>
	                  </div>
	                </section>
	             
	        </c:if>
	              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
 <%@include file="Footer.jsp"%>	