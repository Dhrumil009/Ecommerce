 <%@include file="Header.jsp"%>
     <div class="container_bg">
      <div id="columns" class="container ">
        <div class="row ">
          <div class="loader_page">
            <aside id="left_column"  class="span3 column" style=" display:none"> </aside>
            <div id="center_column" class="center_column span9 clearfix">
              <h1><span>Profile</span></h1>
              
              <form id="contact_form" action="updateProfile" method="post" class="std">
               <input type="hidden" name="userID" id="userId" value="${user.userID}" />
               <input type="hidden" name="userPassword" id="userId" value="${user.userPassword}" />
               <input type="hidden" name="image" id="userId" value="${user.image}" />
            
                <fieldset class="titled_box">
              
				<p id="desc_contact0" class="desc_contact">&nbsp;</p>
                 
				<p class="text">
                  <label for="email">Email address</label>
                  <input type="email" id="email" name="userEmail" value="${user.userEmail}" />
                </p>
				
                <p class="text">
                  <label for="userFirstName">First Name</label>
                  <input type="text" name="userFirstName" id="userFirstName" value="${user.userFirstName}" />
                </p>
				<p class="text">
                  <label for="userLastName">Last Name</label>
                  <input type="text" name="userLastName" id="userLastName" value="${user.userLastName}" />
                </p>
				<p class="text">
                  <label for="userAddress">Address</label>
                  <input type="text" name="userAddress" id="userAddress" value="${user.userAddress}" />
                </p>
				<p class="text">
                  <label for="userAddress2">Address2</label>
                  <input type="text" name="userAddress2" id="userAddress2" value="${user.userAddress2}" />
                </p>
				<p class="text">
                  <label for="userCity">City</label>
                  <input type="text" name="userCity" id="userCity" value="${user.userCity}" />
                </p>
                <p class="text">
                  <label for="userState">State</label>
                  <input type="text" name="userState" id="userState" value="${user.userState}" />
                </p>
                <p class="text">
                  <label for="userState">Country</label>
                  <input type="text" name="userCountry" id="userState" value="${user.userCountry}" />
                </p>
				<p class="text">
                  <label for="userZip">Zip</label>
                  <input type="text" name="userZip" id="userZip" value="${user.userZip}" />
                </p>
				<p class="submit">
                  <input  class="button" type="submit" name="submitMessage" id="submitMessage" value="Submit"  />
                </p>
                </fieldset>
              </form>
            </div>
            
          </div>
        </div>
      </div>
    </div>
 
 
 
  <%@include file="Footer.jsp"%>	