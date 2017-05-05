<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>Login|Troy E-commerce</title>
		<link rel="icon" type="image/x-icon" href="images/favicon.ico">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<link rel="stylesheet" href="css/app.v2.css" type="text/css" />
		<link rel="stylesheet" href="css/font.css" type="text/css" cache="false" />
		<!--[if lt IE 9]> <script src="js/ie/respond.min.js" cache="false"></script> <script src="js/ie/html5.js" cache="false"></script> <script src="js/ie/fix.js" cache="false"></script> <![endif]-->
	</head>
<body style="background-image: url('images/bgimg.jpg');">
	<section id="content" class="m-t-lg wrapper-md animated fadeInUp"> <a class="nav-brand" href="index.jsp">Troy E-commerce</a>
  <div class="row m-n">
    <div class="col-md-4 col-md-offset-4 m-t-lg">
      <section class="panel">
	        <header class="panel-heading text-center">
	        	 <a href="index" title="" rel="nofollow">Home</a> <br/>
				<span style="color:red;">${msg}	</span>
	        </header>
		        <form action="doLogin" method="post" class="panel-body">
			            <div class="form-group">
				            <label class="control-label">Your email address</label>
				            <input type="email" placeholder="test@example.com" class="form-control" name="email" required>
		          		</div>
			          <div class="form-group">
			            <label class="control-label">Password</label>
			            <input type="password" id="inputPassword" placeholder="password"  name="password" class="form-control" required>
			          </div>
			          <div class="checkbox">
			            <label>
			              <input type="checkbox">Keep me logged in </label>
			          </div>
			          <a href="Forget.jsp" class="pull-right m-t-xs"><small>Forgot password?</small></a>
			
			          <button type="submit" class="btn btn-info">Sign in</button>

			          <div class="line line-dashed"></div>
			          <div class="line line-dashed"></div>

          			  <p class="text-muted text-center"><small>Do not have an account?</small></p>

          			  <a href="signup" class="btn btn-white btn-block">Create an account</a>
		        </form>
      </section>
    </div>
  </div>
</section>
<!-- footer -->
<footer id="footer">
  <div class="text-center padder clearfix">
    <p> <small>All Rights Reserved<br>
      &copy; 2017 Troy University.</small> </p>
  </div>
</footer>
<!-- / footer --><script src="js/app.v2.js"></script> <!-- Bootstrap --> <!-- app -->
</body>
</html>