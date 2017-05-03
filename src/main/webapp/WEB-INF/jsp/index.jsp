 <%@include file="Header.jsp"%>
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
                	<c:if test="${not empty catalogList }">
                		<c:forEach items="${catalogList}" var="item">
                			<li class="num-1"> <a href="getcategory?catalogID=${item.catalogID}"> <img src="${item.catalogImage}" alt="${item.catalogName}" /> </a> </li>
                		</c:forEach>
                	</c:if>
                </ul>
              </div>
              <div class="clearfix"></div>
              <section class="addhomefeatured">
                <h4><span>Our products</span></h4>
                <ul class="row">
                	<c:if test="${not empty productList }">
                		<c:forEach items="${productList }" var="item">
                			<li class="ajax_block_product span3   num-1 ">
	                    		<div class="featured_li"> 
			                    	<a class="product_image" href="productDetails" title="${item.productName}" rel="tooltip" data-placement="bottom" > 
				                    	<img src="${item.productImage}" alt="Santini Italy Short Sleeve Jersey" class="main-img"/> 
				                    	<img src="images/2-home_default.jpg" alt="" style="display:none;" class="next-img"/> 
			                    	</a> 
	                    			<span class="price"> ${item.productPrice} </span> 
<!-- 	                    		<span class="price-drop-feacherd">$128.00</span> -->
			                      <div class="box">
			                        <h5><a class="product_link" href="id_product=1&amp;controller=product&amp;id_lang=1" title="">${item.productName}</a></h5>
			                        <p class="product_desc"> ${item.productCartDesc} </p>
			                        <div class="clearfix"> </div>
			                        <a class="exclusive ajax_add_to_cart_button btn_add_cart" rel="ajax_id_product_1" href="#"> 
			                        	<span>Add to cart</span> </a> <a class="button" href="productDetails" rel="tooltip" data-placement="bottom">View</a> 
			                      </div>
	                    		</div>
	                  		</li>
                		</c:forEach>
                	</c:if>
                </ul>
              </section>
            </div>
          </div>
        </div>
      </div>
    </div>
 <%@include file="Footer.jsp"%>	