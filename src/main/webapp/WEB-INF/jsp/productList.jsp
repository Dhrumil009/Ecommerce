 <%@include file="Header.jsp"%>
<div class="container_bg">
      <div id="columns" class="container ">
        <div class="row ">
          <div class="loader_page">
            <div id="center_column" class="center_column span18 clearfix">
              <!-- Breadcrumb -->
              <div class="breadcrumb">
                <div class="breadcrumb_inset"> <a class="breadcrumb-home" href="../Home/index.html" title="Return to Home" rel="tooltip"><i class="fa fa-home"></i></a> <span class="navigation-pipe" >&gt;</span> <span class="navigation_page">Shoes &amp; skates</span> </div>
              </div>
              <!-- /Breadcrumb -->
              <h1> <span> Shoes &amp; skates<strong class="category-product-count"> There are 9 products. </strong> </span> </h1>
        
        
              <div class="sortPagiBar shop_box_row shop_box_row clearfix">
                <ul class="product_view clearfix">
                  <li id="product_view_grid" class="current "></li>
                  <li id="product_view_list" class=""></li>
                </ul>
                <form id="productsSortForm" action="" class="nbrItemPage">
                  <label for="selectProductSort">Sort by</label>
                  <select id="selectProductSort" class="selectProductSort" name="selectProductSort" style="width:170px;"  >
                    <option value="price:asc" >Price: Lowest first</option>
                    <option value="price:desc" >Price: Highest first</option>
                    <option value="name:asc" >Product Name: A to Z</option>
                    <option value="name:desc" >Product Name: Z to A</option>
                    <option value="quantity:desc" >In stock</option>
                  </select>
                </form>
                <!-- /Sort products -->
                <!-- nbr product/page -->
                <form action="" method="get" class="nbrItemPage nbr_page">
                  <label for="nb_item">Show</label>
                  <input type="hidden" name="id_lang" value="1" />
                  <input type="hidden" name="id_category" value="7" />
                  <input type="hidden" name="controller" value="category" />
                  <select name="n" id="nb_item" class="nb_item" onChange="" style="width:65px;">
                    <option value="6" selected="selected">6</option>
                    <option value="10" >10</option>
                  </select>
                </form>
                <!-- /nbr product/page -->
              </div>
              <!-- Products list -->
              <ul id="product_list" class="grid row">
                <li class="ajax_block_product span3 shop_box  product_list_1 first_item num-1 clearfix"> <a href="productDetails" class="product_img_link" title=""> <img src="../images/product/1-home_default.jpg" alt="" /> </a>
                  <div class="center_block">
                    <div class="product_flags clearfix"> <span class="new title_shop">New!</span> <span class="availability title_shop">Available </span> </div>
                    <div class="clear"></div>
                    <h3><a class="product_link" href="#" title="">Santini GXT Iron Bib...</a></h3>
                    <p class="product_desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam elementum posuere libero sed dapibus.</p>
                    <p class="product_desc mob">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam elementum posuere libero...</p>
                    <p class="product_desc mob2">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam elementum posuere libero sed dapibus.</p>
                  </div>
                  <div class="right_block"> 428.96</span>
                    <!--      <p class="compare checkbox choices-thin clearfix">
                              <input type="checkbox"  class="comparator" id="comparator_item_6" value="comparator_item_6" 
                 />
                                <label for="comparator_item_6">Select to compare</label> 
                            </p>-->
                    <div class="clear noneclass"></div>
                    <a class="ajax_add_to_cart_button exclusive btn_add_cart" rel="" href="#" title="Add to cart"> <span>Add to cart</span> </a> <a class="button" href="../Product_Detail/index.html" title="View">View</a> </div>
                </li>
                <li class="ajax_block_product span3 shop_box  item num-2 clearfix"> <a href="#" class="product_img_link" title=""> <img src="../images/product/5-home_default.jpg" alt="" /> </a>
                  <div class="center_block">
                    <div class="product_flags clearfix"> <span class="new title_shop">New!</span> <span class="availability title_shop">Available </span> </div>
                    <div class="clear"></div>
                    <h3><a class="product_link" href="#" title="">Fi&#039;zik Antares...</a></h3>
                    <p class="product_desc">Etiam a auctor purus. Quisque facilisis enim ac dolor blandit tincidunt. Sed porttitor, erat non ultrices egestas, mauris velit auctor nulla, sed suscipit eros lorem vel dolor. Vestibulum quis ipsum justo, sit amet accumsan dui.</p>
                    <p class="product_desc mob">Etiam a auctor purus. Quisque facilisis enim ac dolor blandit tincidunt. Sed porttitor,...</p>
                    <p class="product_desc mob2">Etiam a auctor purus. Quisque facilisis enim ac dolor blandit tincidunt. Sed porttitor, erat non ultrices egestas, mauris velit auctor nulla, sed suscipit eros lorem vel dolor....</p>
                  </div>
                  <div class="right_block"> 632.15</span>
                    <!--    <p class="compare checkbox choices-thin clearfix">
                              <input type="checkbox"  class="comparator" id="comparator_item_7" value="comparator_item_7" 
                 />
                               <label for="comparator_item_7">Select to compare</label> 
                            </p>-->
                    <div class="clear noneclass"></div>
                    <a class="ajax_add_to_cart_button exclusive btn_add_cart" rel="" href="#" title="Add to cart"> <span>Add to cart</span> </a> <a class="button" href="../Product_Detail/index.html" title="View">View</a> </div>
                </li>
                <li class="ajax_block_product span3 shop_box  item num-3 clearfix"> <a href="#" class="product_img_link" title=""> <img src="../images/product/8-home_default.jpg" alt="" /> </a>
                  <div class="center_block">
                    <div class="product_flags clearfix"> <span class="new title_shop">New!</span> <span class="availability title_shop">Available </span> <span class="online_only title_shop">Online only!</span> </div>
                    <div class="clear"></div>
                    <h3><a class="product_link" href="#" title="">AGU Robotica Short...</a></h3>
                    <p class="product_desc">Donec sollicitudin, lectus in ullamcorper tempor, risus ipsum convallis leo, volutpat feugiat velit lacus in neque. Ut posuere suscipit arcu.</p>
                    <p class="product_desc mob">Donec sollicitudin, lectus in ullamcorper tempor, risus ipsum convallis leo, volutpat...</p>
                    <p class="product_desc mob2">Donec sollicitudin, lectus in ullamcorper tempor, risus ipsum convallis leo, volutpat feugiat velit lacus in neque. Ut posuere suscipit arcu.</p>
                  </div>
                  <div class="right_block"> <span class="on_sale title_shop"></span> 563.42</span>
                    <!-- <p class="compare checkbox choices-thin clearfix">
                              <input type="checkbox"  class="comparator" id="comparator_item_8" value="comparator_item_8" 
                 />
                                <label for="comparator_item_8">Select to compare</label> 
                            </p>-->
                    <div class="clear noneclass"></div>
                    <a class="ajax_add_to_cart_button exclusive btn_add_cart" rel="" href="#" title="Add to cart"> <span>Add to cart</span> </a> <a class="button" href="../Product_Detail/index.html" title="View">View</a> </div>
                </li>
                <li class="ajax_block_product span3 shop_box   item num-4 clearfix"> <a href="#" class="product_img_link" title=""> <img src="../images/product/image_0.jpg" alt="" /> </a>
                  <div class="center_block">
                    <div class="product_flags clearfix"> <span class="new title_shop">New!</span> <span class="availability title_shop">Available </span> </div>
                    <div class="clear"></div>
                    <h3><a class="product_link" href="#" title="">Fi&#039;zik Antares...</a></h3>
                    <p class="product_desc">Pellentesque imperdiet mollis eleifend. Quisque non est in odio faucibus placerat vitae sit amet neque. Praesent mauris orci, condimentum eget suscipit et, dapibus eget est. Nunc sollicitudin, ligula a placerat porta, elit nisl pellentesque justo, quis imperdiet ante elit et orci.</p>
                    <p class="product_desc mob">Pellentesque imperdiet mollis eleifend. Quisque non est in odio faucibus placerat vitae...</p>
                    <p class="product_desc mob2">Pellentesque imperdiet mollis eleifend. Quisque non est in odio faucibus placerat vitae sit amet neque. Praesent mauris orci, condimentum eget suscipit et, dapibus eget est....</p>
                  </div>
                  <div class="right_block"> <span class="on_sale title_shop"></span> 779.27</span>
                    <!--  <p class="compare checkbox choices-thin clearfix">
                              <input type="checkbox"  class="comparator" id="comparator_item_9" value="comparator_item_9" 
                 />
                              <label for="comparator_item_9">Select to compare</label> 
                            </p>-->
                    <div class="clear noneclass"></div>
                    <a class="ajax_add_to_cart_button exclusive btn_add_cart" rel="" href="#" title=""> <span>Add to cart</span> </a> <a class="button" href="../Product_Detail/index.html" title="View">View</a> </div>
                </li>
                <li class="ajax_block_product span3 shop_box product_list_1 item num-5 clearfix"> <a href="#" class="product_img_link" > <img src="../images/product/12-home_default.jpg" alt="" /> </a>
                  <div class="center_block">
                    <div class="product_flags clearfix"> <span class="new title_shop">New!</span> <span class="availability title_shop">Available </span> </div>
                    <div class="clear"></div>
                    <h3><a class="product_link" href="#" title="">Forte Adjustable...</a></h3>
                    <p class="product_desc">Vestibulum sed tortor imperdiet tortor faucibus hendrerit. Sed at augue eget purus bibendum pellentesque. Aliquam diam nibh, aliquam semper iaculis in, ullamcorper eget risus. Aliquam placerat, arcu eget vulputate consectetur, nulla massa sodales tortor, vitae consequat est nibh sed nibh.</p>
                    <p class="product_desc mob">Vestibulum sed tortor imperdiet tortor faucibus hendrerit. Sed at augue eget purus...</p>
                    <p class="product_desc mob2">Vestibulum sed tortor imperdiet tortor faucibus hendrerit. Sed at augue eget purus bibendum pellentesque. Aliquam diam nibh, aliquam semper iaculis in, ullamcorper eget risus....</p>
                  </div>
                  <div class="right_block"> <span class="on_sale title_shop"></span> 658.16</span>
                    <!-- <p class="compare checkbox choices-thin clearfix">
                              <input type="checkbox"  class="comparator" id="comparator_item_10" value="comparator_item_10" 
                 />
                              <label for="comparator_item_10">Select to compare</label> 
                            </p>-->
                    <div class="clear noneclass"></div>
                    <a class="ajax_add_to_cart_button exclusive btn_add_cart" rel="" href="#" title=""> <span>Add to cart</span> </a> <a class="button" href="../Product_Detail/index.html" title="View">View</a> </div>
                </li>
                <li class="ajax_block_product span3 shop_box  last_item num-6 clearfix"> <a href="#" class="product_img_link" title=""> <img src="../images/product/img_0180.png" alt="" /> </a>
                  <div class="center_block">
                    <div class="product_flags clearfix"> <span class="new title_shop">New!</span> <span class="availability title_shop">Available </span> </div>
                    <div class="clear"></div>
                    <h3><a class="product_link" href="#" title="">Laces</a></h3>
                    <p class="product_desc"></p>
                    <p class="product_desc mob"></p>
                    <p class="product_desc mob2"></p>
                  </div>
                  <div class="right_block"> 2.00</span>
                    <!--<p class="compare checkbox choices-thin clearfix">
                              <input type="checkbox"  class="comparator" id="comparator_item_17" value="comparator_item_17" 
                 />
                              <label for="comparator_item_17">Select to compare</label> 
                            </p>-->
                    <div class="clear noneclass"></div>
                    <a class="ajax_add_to_cart_button exclusive btn_add_cart" rel="" href="#" title="Add to cart"> <span>Add to cart</span> </a> <a class="button" href="../Product_Detail/index.html" title="View">View</a> </div>
                </li>
              </ul>
         
            </div>
            <!-- Right -->
          
          </div>
        </div>
      </div>
    </div>
 <%@include file="Footer.jsp"%>	