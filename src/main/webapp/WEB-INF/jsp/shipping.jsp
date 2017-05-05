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
                <li class="step_current"><span><span>03</span> Shipping</span> </li>
                <li class="step_todo"><span><span>04</span> Payment</span></li>
                <li id="step_end" class="step_todo"><span><span>05</span>Summary </span></li>
              </ul>
              <!-- /Steps -->
              
              <p style="display:none" id="emptyCartWarning" class="warning">Your shopping cart is empty.</p>
              <div class="row-fluid">
                <form id="form" action="payment" method="post" onsubmit="return acceptCGV();" class="titled_box">
                  <div class="order_carrier_content">
                    <h2 class="carrier_title"><span>Choose your delivery method</span></h2>
                    <div id="HOOK_BEFORECARRIER"> </div>
                    <div class="delivery_options_address titled_box">
                      <h2><span> Choose a shipping option for this address: My address </span> </h2>
                      <div class="delivery_options">
                        <div class="delivery_option item">
                          <label for="delivery_option_32_0"> </label>
                          <table class="resume">
                            <tbody>
                              <tr>
                                <td><input class="delivery_option_radio" type="radio" name="delivery_option[32]" onchange="updateExtraCarrier('3,', 32);" id="delivery_option_32_0" value="3," checked="checked"></td>
                                <td class="delivery_option_logo"><img src="../images/3.jpg" alt="My carrier"></td>
                                <td><div class="delivery_option_title">My carrier</div>
                                  <div class="delivery_option_delay">Delivery next day!</div></td>
                                <td><div class="delivery_option_price"> $2.00 (tax incl.) </div></td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                      <div class="hook_extracarrier" id="HOOK_EXTRACARRIER_32"></div>
                    </div>
                    <div style="display: none;" id="extra_carrier"></div>
                    <div>
                      <h2 class="condition_title titled_box"><span>Terms of service</span></h2>
                    </div>
                    <p class="checkbox">
                      <input type="checkbox" name="cgv" id="cgv" value="1" required>
                      <label for="cgv">I agree to the terms of service and will adhere to them unconditionally.</label>
                      <a href="#" class="iframe">(Read Terms of Service)</a> </p>
                    <script type="text/javascript">$('a.iframe').fancybox();</script> 
                  </div>
                  <p class="cart_navigation clearfix submit">
                    <input type="hidden" name="step" value="3">
                    <input type="hidden" name="back" value="">
                    <a href="address" title="Previous" class="button">« Previous</a>
                    <input type="submit" name="processCarrier" value="Next »" class="exclusive">
                  </p>
                </form>
              </div>
            </div>
            <!-- Right -->
            <aside id="right_column"  class="span3 column right_home" style=" display:none"  > 
            </aside>
          </div>
        </div>
      </div>
    </div>
 
 
 
 
 <%@include file="Footer.jsp"%>	