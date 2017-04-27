<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>Signup|Troy E-commerce</title>
		<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<link rel="stylesheet" href="css/app.v2.css" type="text/css" />
		<link rel="stylesheet" href="css/font.css" type="text/css" cache="false" />
		<script src="js/jquery.js"></script>
			<script src="js/jquery-migrate-1.1.1.js"></script>
			<script src="js/jquery.easing.1.3.js"></script>
			<script src="js/script.js"></script>
			<script src="js/superfish.js"></script>
			<script src="js/jquery.equalheights.js"></script>
			<script src="js/jquery.mobilemenu.js"></script>
			<script src="js/jquery.ui.totop.js"></script>
			<script src="js/owl.carousel.js"></script>
			<script src="js/touchTouch.jquery.js"></script>
			<script src="js/modal.js"></script>
			<script src="js/password.js"></script>
			<script type="text/javascript" 	src="js/jquery.min.js"></script>
		
		<!--[if lt IE 9]> <script src="js/ie/respond.min.js" cache="false"></script> <script src="js/ie/html5.js" cache="false"></script> <script src="js/ie/fix.js" cache="false"></script> <![endif]-->
	</head>
<body style="background-image: url('images/bgimg.jpg');">
	<section id="content" class="m-t-lg wrapper-md animated fadeInDown"> <a class="nav-brand" href="index.jsp">Troy E-commerce</a>
  	  <div class="row m-n">
	    <div class="col-md-4 col-md-offset-4 m-t-lg">
	      <section class="panel">
	        <header class="panel-heading bg bg-primary text-center"> 
	        	Sign up &nbsp;&nbsp;| &nbsp;&nbsp;<a href="index" title="" rel="nofollow">Home</a> <br/>
	        	<% String msg=(String) request.getAttribute("msg");
		               if(msg==null){
		            	   msg="";
		               }else{
		               msg="*"+msg;
		               }
            		%>
				<%=msg%>	
	        </header>
		        <form action="addUser" method="post" class="panel-body" enctype="multipart/form-data" >
		           <div class="form-group">
			            <label class="control-label">Your email address</label>
			            <input type="email" placeholder="test@example.com" class="form-control" name="UserEmail" required>
		          </div>
		          <div class="form-group">
		            <label class="control-label">Type a password</label>
		            <input type="password" id="password" placeholder="Password" class="form-control" name="UserPassword" required onblur="passwordChanged();" >
		            	<div id="msg2" style=" display: none; color:red;">
	       					 			
	       			 </div>
		          </div>
		          <div class="form-group">
		            <label class="control-label">ReType a password</label>
		            <input type="password" id="cpassword" placeholder="Password" class="form-control"  required  onblur="chechpass();" >
		            <div id="msg3" style=" display: none; color:red;">
	       					 			
	       			 </div>
	       			 <div id="msg4" style=" display: none; color:green;">
	       					 			
	       			 </div>
		          </div>
		          <div class="form-group">
		            <label class="control-label">Your Logo or Image</label>
		            <input type="file" class="btn btn-file btn-s-xs" placeholder='Upload' name="file" /> 
		          </div>
		          <div class="checkbox">
		            <label>
		              <input type="checkbox" name="chk" required>
		              Agree the <a href="#">terms and policy</a> 
		            </label>
		          </div>
		          <button type="submit" class="btn btn-info" id="sg">Sign up</button>
		          <div class="line line-dashed"></div>
		          <p class="text-muted text-center"><small>Already have an account?</small></p>
		          <a href="login" class="btn btn-white btn-block">Sign in</a>
        		</form>
	      </section>
	    </div>
  </div>
</section>
<!-- footer -->
<footer id="footer">
  <div class="text-center padder clearfix">
     <p> <small>All Rights Reserved<br>
      &copy;2017 Troy University.</small> </p>
  </div>
</footer>
<!-- / footer --><script src="js/app.v2.js"></script> <!-- Bootstrap --> <!-- app -->
</body>
		<script type="text/javascript">
			 function checkuser(){
				 var ui=document.getElementById("userName").value;
				 $.ajax({
			     			type : "get",
							url : 'FormValidation',
							data : {id:"check",username:ui},
						 	dataType : "text", 
							success : function(data) {
								
								if(data=="ok"){
									document.getElementById("msg").style.display="block";
									$("#msg").html( "* Username not available");
									document.getElementById("sg").disabled = true;
								}
								else{
									document.getElementById("msg").style.display="none";
									document.getElementById("sg").disabled=false;
								}
								
							} 
					});
				 
				 }
				 function chechpass(){  
					    var a=document.getElementById("password").value;
					    var b=document.getElementById("cpassword").value;
					    
					    if(a.trim()=="" || b.trim()==""){
					    	document.getElementById("msg3").style.display="block";
					        $("#msg3").html("Please Enter The PassWord");
					         document.getElementById("sg").disabled = true;
					    
					    }else if(a==b){
					   			 document.getElementById("msg4").style.display="block";
					   			 document.getElementById("msg3").style.display="none";
					            $("#msg4").html("Password Match");
					            document.getElementById("sg").disabled=false;
					        }
					    else{
					    		document.getElementById("msg3").style.display="block";
					            $("#msg3").html("Password Not Match");
					           document.getElementById("sg").disabled = true;
					        }
    			}
    			function passwordChanged() {
    				document.getElementById("msg2").style.display="block";
					var strength = document.getElementById("msg2");
					var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\W).*$", "g");
					var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
					var enoughRegex = new RegExp("(?=.{6,}).*", "g");
					var pwd = document.getElementById("password");
						if (pwd.value.length==0) {
							strength.innerHTML = "Type Password";
						}
						 else if (false == enoughRegex.test(pwd.value)) {
						strength.innerHTML = "More Characters";
						} 
						else if (strongRegex.test(pwd.value)) {
						strength.innerHTML = "<span style='color:green'>Strong!</span>";
						} 
						else if (mediumRegex.test(pwd.value)) {
						strength.innerHTML = "<span style='color:orange'>Medium!</span>";
						}
					    else {
						strength.innerHTML = "<span style='color:red'>Weak!</span>";
						}
				}
		</script>
		
		
</html>