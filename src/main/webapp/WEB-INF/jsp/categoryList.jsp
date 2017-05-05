 <%@include file="Header.jsp"%>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
  
<div class="container_bg">
      <div id="columns" class="container ">
        <div class="row ">
          <div class="loader_page">
            <div id="center_column" class="center_column span18 clearfix">
            	<c:if test="${not empty catalog }">
		              <h1> <span>  ${catalog.catalogName} <strong class="category-product-count"></strong> </span> </h1>
		               <div class="row_category clearfix">
		                <!-- Category image -->
		                <div class="align_center category_image "> <img src="${catalog.catalogImage}"  title="${catalog.catalogName}" id="categoryImage"  /> </div>
		                <p class="cat_desc clearfix">${catalog.catalogDesc}</p>
		              </div>
             	 </c:if>
             	 <div class="sortPagiBar shop_box_row shop_box_row clearfix">
	             	 	<form id="productsSortForm" action="" class="nbrItemPage">
	             	 		<label for="selectProductSort"><c:if test="${not empty categoryList }"> There are ${fn:length(categoryList)} Category. </c:if></label>
	             	 	</form>
             	 </div>
              <!-- Category list -->
				<ul id="product_list" class="grid row">
					 <c:if test="${not empty categoryList }"> 
					   <c:forEach items="${categoryList}" var="item">
		                <li class="ajax_block_product span3 shop_box item num-1 clearfix">
		                	 <a href="products?categoryId=${item.categoryID}" class="product_img_link" title="${item.categoryName}"> 
		                	 	<img src="${item.categoryImage}" alt=""  /> 
		                	 </a>
			                  <div class="center_block">
			                    <div class="product_flags clearfix"> <span class="new title_shop"></span> <span class="availability title_shop"> </span> </div>
			                    <div class="clear"></div>
			                    <h3 align="center"><a class="product_link" href="#" title="">${item.categoryName}</a></h3>
<!-- 			                    <p class="product_desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam elementum posuere libero sed dapibus.</p> -->
			                  </div>
                    		 <div class="clear noneclass"></div>
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