 <%@include file="Header.jsp"%>
     <div class="container_bg">
      <div id="columns" class="container ">
        <div class="row ">
          <div class="loader_page">
            <aside id="left_column"  class="span3 column" style=" display:none"> </aside>
            <div id="center_column" class="center_column span12 clearfix"> 
              <h1 id="cart_title"><span>Shopping-cart summary</span></h1>
              
              <!-- Steps -->
              <ul id="order_steps" class="step1">
                <li class="step_todo"><span><span>01</span> Summary</span></li>
                <li class="step_todo"><span><span>02</span> Address</span></li>
                <li class="step_todo"><span><span>03</span> Shipping</span></li>
                <li class="step_current"> <span><span>04</span> Payment</span> </li>
                <li id="step_end" class="step_todo"><span><span>05</span>Summary </span></li>
              </ul>
              <!-- /Steps -->
              
              <p style="display:none" id="emptyCartWarning" class="warning">Your shopping cart is empty.</p>
              <div class="row-fluid">
                <div class="paiement_block">
                  <div id="HOOK_TOP_PAYMENT"></div>
                  <div id="HOOK_PAYMENT">
                    <p class="payment_module"> <a href="#" title="Pay by cheque"> <img src="http://livedemo00.template-help.com/prestashop_44691/themes/theme673/img//cheque.jpg" alt="Pay by check." width="86" height="54"> Pay by check (order processing will take more time) </a> </p>
                    <p class="payment_module"> <a href="#" title="Pay by bank wire"> <img src="http://livedemo00.template-help.com/prestashop_44691/themes/theme673/img//bankwire.jpg" alt="Pay by bank wire" width="86" height="54"> Pay by bank wire (order processing will take more time) </a> </p>
                    <p class="payment_module"> <a href="#" title="Cash on Delivery "> <img src="http://livedemo00.template-help.com/prestashop_44691/themes/theme673/img//bankwire.jpg" alt="cash on delivery" width="86" height="54"> Cash on Delivery</a> </p>
                  </div>
                    <p class="cart_navigation  clearfix inner-top"> 
                	 <a href="summary" class="exclusive standard-checkout" title="Next">Next &raquo;</a>
                	<a href="shipping" title="Previous" class="button">« Previous</a></p>
                	</p>
                </div>
              </div>
            </div>
            <!-- Right -->
            <aside id="right_column"  class="span3 column right_home" display:none"> </aside>

          </div>
        </div>
      </div>
    </div>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 <%@include file="Footer.jsp"%>	