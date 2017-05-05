 <%@include file="Header.jsp"%>
 
 <script type="text/javascript">
			var baseDir = '';
			var baseUri = '';
			var static_token = '25a1855afcd1746080a947539538f608';
			var token = 'fd875df97cd3170d561d6bc7af699c34';
			var priceDisplayPrecision = 2;
			var priceDisplayMethod = 1;
			var roundMode = 2;
		</script>
<div class="container_bg">
      <div id="columns" class="container ">
        <div class="row ">
          <div class="loader_page">
            <div id="center_column" class="center_column span12 clearfix">
              <h1> <span>${category.categoryName} <strong class="category-product-count"><c:if test="${not empty productList }"> There are ${fn:length(productList)} Products. </c:if> </strong> </span> </h1>
              <div class="row_category clearfix">
                <!-- Category image -->
                <div class="align_center category_image "> <img src="${category.categoryImage}" title="${category.categoryName}" id="categoryImage"  /> </div>
                <p class="cat_desc clearfix">${category.categoryDescription}</p>
              </div>
        
              <div class="sortPagiBar shop_box_row shop_box_row clearfix">
                <ul class="product_view clearfix">
                  <li id="product_view_grid" class="current "></li>
                  <li id="product_view_list" class=""></li>
                </ul>
              </div>
              <!-- Products list -->
				<ul id="product_list" class="grid row">
				<c:if test="${not empty productList }">
					<c:forEach items="${productList}" var="item">
		                <li class="ajax_block_product span3 shop_box item num-1 clearfix"> 
		                	<a href="productDetails?productID=${item.productID}" class="product_img_link" title=""> 
		                		<img src="${item.productImage}" alt="" /> 
		                   </a>
		                  <div class="center_block">
		                    <div class="product_flags clearfix"> 
		                    	<span class="new title_shop">New!</span> 
		                    	<span class="availability title_shop">Available </span> 
		                    </div>
		                    <div class="clear"></div>
		                    <h3><a class="product_link" href="#" title="">${item.productName}</a></h3>
		                    <p class="product_desc">${item.productCartDesc}</p>
		                  </div>
		                  <div class="right_block">$ ${item.productPrice}</span>
		                    <div class="clear noneclass"></div>
		                    <a class="ajax_add_to_cart_button exclusive btn_add_cart" rel="" href="addtoCart?productID=${item.productID}" title="Add to cart">
		                    	 <span>Add to cart</span> </a> 
		                    <a class="button" href="productDetails?productID=${item.productID}" title="View">View</a> </div>
		                </li>
		             </c:forEach>
	              </c:if> 
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
 <%@include file="Footer.jsp"%>	