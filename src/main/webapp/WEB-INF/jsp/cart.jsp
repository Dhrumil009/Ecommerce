 <%@include file="Header.jsp"%>
 <%@ page import="com.troy.domain.Cart" %>
  <%@ page import="java.util.List" %>
   
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
            <aside id="left_column"  class="span3 column" style=" display:none"> </aside>
            <div id="center_column" class="center_column span12 clearfix">
                <h1 id="cart_title"><span>Shopping-cart summary</span></h1>
             
                <!-- Steps -->
                <ul id="order_steps" class="step1">
                   <li class="step_current"><span><span>01</span> Cart</span> </li>
                   <li class="step_todo"><span><span>02</span> Address</span></li>
                   <li class="step_todo"><span><span>03</span> Shipping</span></li>
                   <li class="step_todo"><span><span>04</span> Payment</span></li>
                   <li id="step_end" class="step_todo"><span><span>05</span>Summary </span></li>
                   
                </ul>
                <!-- /Steps -->
              <c:if test="${empty  cart}">
              	 <p  id="emptyCartWarning" class="warning">Your shopping cart is empty.</p>
              </c:if>
               <c:if test="${not empty  cart}">
                <p class="ordercart-title">Your shopping cart contains: <span id="summary_products_quantity"> ${fn:length(cart)} product</span></p>
                <div id="order-detail-content" class="table_block">
                  <table id="cart_summary" class="std">
                    <thead>
                    </thead>
                     <tbody>
                     <%float count=0.0f; 
                     List<Cart> cart = (List<Cart>)session.getAttribute("cart");
                     %>
                     <% for(Cart cartObj : cart){ %>
	                      <tr id="product_3_0_0_0" class="bordercolor last_item  cart_item address_0 odd">
	                        <td class="cart_product">
	                        	<a href="productDetails?productID=<%=cartObj.getProductID()%>"> 
	                        		<img src="<%=cartObj.getProductImage()%>" alt="SRAM S80 Front Wheel" /> 
	                        	</a> 
	                        </td>
	                        <td class="cart"><h5><a class="product_link" href="#"><%=cartObj.getProductName()%></a></h5>
	                          <div class="clearfix insset-bottom"> <span class="title-th"><%=cartObj.getProductShortDesc()%></span> --</div>
	                          <div class="clearfix insset-bottom"> 
	                          	<span class="title-th">price: $ <%=cartObj.getProductPrice()%> </span> 
							 </div>
	                          <div class="clearfix insset-bottom"> <span class="title-th cart_quantity_title">Qty: <%=cartObj.getProductQuantity()%></span></div>
	                          <div class="clearfix insset-bottom">
	                            <span class="title-th cart_quantity_title">
	                            	<a href="removefromCart?productID=<%=cartObj.getProductID()%>">Remove</a>
	                            </span>
	                          </div>
	                      </tr>
	                      <%count=count+(cartObj.getProductPrice()*cartObj.getProductQuantity()); %>
                   <%  } %>
                    </tbody>
                    <tfoot>
                      <tr class="cart_total_price ">
                        <td>Total products</td>
                        <td class="price" id="total_product">$ <%=count %></td>
                      </tr>
                    </tfoot>
                  </table>
                </div>
                </c:if>
                <div id="cart_voucher" class="table_block"> </div>
                <p class="cart_navigation  clearfix inner-top"> 
                	 <c:if test="${not empty  cart}"><a href="address" class="exclusive standard-checkout" title="Next">Next &raquo;</a> </c:if>
                	<a href="/" class="button_large" title="Continue shopping">&laquo; Continue shopping</a>
                </p>
              </div>
            <!-- Right -->
            <aside id="right_column"  class="span3 column right_home" style=" display:none" > </aside>
          </div>
        </div>
      </div>
    </div>
    
<script type="text/javascript">
    $(document).ready(function() {
      
      $('fieldset:first').data('validation',function($fieldset, callback) {
        var $name = $('input[name=name]', $fieldset);
        if ($.trim($name.val()) == "" || $.trim($name.val()).length < 4 || $.trim($name.val()).length > 30) {
          if ($name.closest('.control-group').hasClass('error')) return false;
          $name.closest('.control-group').addClass('error');
          var $appendTo = $name.parent();
          if ($appendTo.is('.input-append')) $appendTo = $appendTo.parent();
          $('<span class="help-inline">The name is to short. At least 4 characters, maximum 30.</span>').appendTo($appendTo);
          return callback(false);
        }
        $name.closest('.control-group').removeClass('error');
        $('.help-inline', $name.parent()).remove();
        callback(true);
      });
      
      $('.wizard').wizard();

    });
    
    .wizard fieldset {
    	display: none;
    }
    .wizard fieldset:first-of-type {
    	display: block;
    }
  </script>
  <%@include file="Footer.jsp"%>	