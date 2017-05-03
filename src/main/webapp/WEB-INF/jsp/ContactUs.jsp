  <%@include file="Header.jsp"%>
 <div class="container_bg">
      <div id="columns" class="container ">
        <div class="row ">
          <div class="loader_page">
            <aside id="left_column"  class="span3 column" style=" display:none"> </aside>
            <div id="center_column" class="center_column span9 clearfix">
              <!-- Breadcrumb -->
              <div class="breadcrumb">
                <div class="breadcrumb_inset"> <a class="breadcrumb-home" href="#" title="Return to Home" rel="tooltip"><i class="fa fa-home"></i></a> <span class="navigation-pipe" >&gt;</span> <span class="navigation_page">Contact</span> </div>
              </div>
              <!-- /Breadcrumb -->
              <h1><span>Customer service - Contact us</span></h1>
              <p class="title-pagecontact"><i class="icon-comment-alt"></i>For questions about an order or for more information about our products.</p>
              <form id="contact_form" action="#" method="post" class="std" enctype="multipart/form-data">
                <fieldset class="titled_box">
                <h2><span>send a message</span></h2>
                <p class="select">
                  <label for="id_contact">Subject Heading</label>
                  <select id="id_contact" name="id_contact" onChange="showElemFromSelect('id_contact', 'desc_contact')">
                    <option value="0">-- Choose --</option>
                    <option value="2" >Customer service</option>
                    <option value="1" >Webmaster</option>
                  </select>
                </p>
                <p id="desc_contact0" class="desc_contact">&nbsp;</p>
                <p id="desc_contact2" class="desc_contact" style="display:none;"> For any question about a product, an order </p>
                <p id="desc_contact1" class="desc_contact" style="display:none;"> If a technical problem occurs on this website </p>
                <p class="text">
                  <label for="email">Email address</label>
                  <input type="email" id="email" name="from" value="" />
                </p>
                <p class="text select">
                  <label for="id_order">Order Reference</label>
                  <input type="text" name="id_order" id="id_order" value="" />
                </p>
                <p class="text upload-file">
                  <label for="fileUpload">Attach File</label>
                  <input type="hidden" name="MAX_FILE_SIZE" value="2000000" />
                  <input  type="file" name="fileUpload" id="fileUpload" />
                </p>
                <p class="textarea">
                  <label for="message">Message</label>
                  <textarea id="message" name="message" rows="15" cols="10"></textarea>
                </p>
                <p class="submit">
                  <input  class="button" type="submit" name="submitMessage" id="submitMessage" value="Send"  onclick="$(this).fadeOut('slow');" />
                </p>
                </fieldset>
              </form>
            </div>
            <!-- Right -->
            <aside id="right_column"  class="span3 column right_home">
              <!-- MODULE Block best sellers -->
              
              <!-- MODULE Block new products -->
              
              <!-- /MODULE Block new products -->
              <!-- MODULE Block specials -->
              
              <!-- /MODULE Block specials -->
              <!-- Block Newsletter module-->
              <section id="newsletter_block_left"  class="block products_block column_box">
                <h4><img src="../images/custom_bg.png"> 00-00000-000</h4>
                <div class="block_content toggle_content">
                  <form action="http://livedemo00.template-help.com/prestashop_44691/index.php" method="post">
                    <p>
                      <input type="email" name="email" size="18" 
					value="Your email address" 
					onfocus="javascript:if(this.value=='Your email address')this.value='';" 
					onblur="javascript:if(this.value=='')this.value='Your email address';" 
					class="inputNew" />
                      <!--<select name="action">
					<option value="0">Subscribe</option>
					<option value="1">Unsubscribe</option>
				</select>-->
                      <input type="submit" value="ok" class="button_form button" name="submitNewsletter" />
                      <input type="hidden" name="action" value="0" />
                    </p>
                  </form>
                </div>
              </section>
              <!-- /Block Newsletter module-->
              <!-- Block manufacturers module -->
              <section id="manufacturers_block_left" class="block blockmanufacturer column_box">
                <h4 class="title_block"><span>Manufacturers</span><span class="column_icon_toggle"></span></h4>
                <div class="block_content toggle_content">
                  <ul class="store_list">
                    <li class="first_item"><a href="#" title="Learn more about Apple Computer, Inc"><i class="icon-ok"></i>Apple Computer, Inc</a></li>
                    <li class="last_item"><a href="#" title="Learn more about Shure Incorporated"><i class="icon-ok"></i>Shure Incorporated</a></li>
                  </ul>
                 
                </div>
              </section>
              <!-- /Block manufacturers module -->
            </aside>
          </div>
        </div>
      </div>
    </div>
     <%@include file="Footer.jsp"%>	