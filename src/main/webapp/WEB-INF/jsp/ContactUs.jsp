  <%@include file="Header.jsp"%>
 <div class="container_bg">
      <div id="columns" class="container ">
        <div class="row ">
          <div class="loader_page">
            <aside id="left_column"  class="span3 column" style=" display:none"> </aside>
            <div id="center_column" class="center_column span9 clearfix">
              <h1><span>Customer service - Contact us</span></h1>
              <p class="title-pagecontact"><i class="icon-comment-alt"></i>For questions about an order or for more information about our products.</p>
              <form id="contact_form" action="contactUs" method="post" class="std" >
                <fieldset class="titled_box">
                <h2><span>send a message ${msg} </span></h2>
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
                  <input type="email" id="email" name="email" value="" />
                </p>
                <p class="text select">
                  <label for="id_order">Order Reference</label>
                  <input type="text" name="id_order" id="id_order" value="" />
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
                <h4><img src="../images/custom_bg.png">334-268-9925</h4>
                <div class="block_content toggle_content">
                 	Troy University, Troy, Alabama- 36081, USA
                </div>
              </section>
              <!-- /Block manufacturers module -->
            </aside>
          </div>
        </div>
      </div>
    </div>
     <%@include file="Footer.jsp"%>	