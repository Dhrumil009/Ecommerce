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
                <li class="step_current"><span><span>02</span> Address</span> </li>
                <li class="step_todo"><span><span>03</span> Shipping</span></li>
                <li class="step_todo"><span><span>04</span> Payment</span></li>
                 <li id="step_end" class="step_todo"><span><span>05</span>Summary </span></li>
              </ul>
              <!-- /Steps -->
              <c:if test="${not empty user}">
	              <div class="row-fluid">
	                <form action="shipping" method="post">
						<div class="addresses clearfix">
							<div class="clearfix">
								<ul class="address item" id="address_delivery">
									<li class="address_title">Your delivery address</li>
									<li class="address_firstname lastname">${user.userFirstName} ${user.userLastName }</li>
									<li class="address_address1">${user.userAddress}</li>
									<li class="address_address2">${user.userAddress2}</li>
									<li class="address_postcode city">${user.userCity} - ${user.userState}</li>
									<li class="address_Country:name">${user.userCountry} - ${user.userZip}</li>
									<li class="address_phone">${user.userPhone}</li>
									<li class="address_update">	<a href="profile" title="Update" class="btn-success btn">» Update</a></li>
								</ul>
								<ul class="address alternate_item " id="address_invoice">
									<li class="address_title">Your billing address</li>
									<li class="address_firstname lastname">${user.userFirstName} ${user.userLastName }</li>
									<li class="address_address1">${user.userAddress}</li>
									<li class="address_address2">${user.userAddress2}</li>
									<li class="address_postcode city">${user.userCity} - ${user.userState}</li>
									<li class="address_Country:name">${user.userCountry} - ${user.userZip}</li>
									<li class="address_phone">${user.userPhone}</li>
									<li class="address_update">	<a href="profile" title="Update" class="btn-success btn">» Update</a></li>
								</ul>
							</div>
							<div id="ordermsg" class="clearfix">
								<p class="txt">If you would like to add a comment about your order, please write it in the field below.</p>
								<p class="textarea"><textarea cols="60" rows="3" name="message">${OrderMessage}</textarea></p>
							</div>
						</div>
						<p class="cart_navigation submit clearfix">
							<input type="hidden" class="hidden" name="step" value="2">
							<input type="hidden" name="back" value="">
							<a href="cart" title="Previous" class="button">« Previous</a>
							<input type="submit" name="processAddress" value="Next »" class="exclusive">
						</p>
					</form>
	              </div>
	           </c:if>
            </div>
            <!-- Right -->
            <aside id="right_column"  class="span3 column right_home" style=" display:none" > 
            </aside>
          </div>
        </div>
      </div>
    </div>
 
 
 
   <%@include file="Footer.jsp"%>	