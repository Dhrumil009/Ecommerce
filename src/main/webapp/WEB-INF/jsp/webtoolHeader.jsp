<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
		<meta charset="utf-8" />
		<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		
		<title>Troy E-commerce</title>
	
		<script src="js/app.v2.js"></script>
		<script type="text/javascript" 	src="js/jquery.min.js"></script>
		<script type="text/javascript"	src="js/uploadjs/jquery.js"></script>
		<script type="text/javascript"	src="js/uploadjs/jquery.form.js"></script>
		<script type="text/javascript"	src="js/bootstrap-datepicker.js"></script>
		<script type="text/javascript"	src="js/div.js"></script>
		<script type="text/javascript" 	src="js/animatedcollapse.js"></script>
		<script type="text/javascript"	src="js/bootstrap.file-input.js"></script>
		<script type="text/javascript"	src="js/combodate.js"></script>
		<script type="text/javascript"	src="js/dmsAction.js"></script>
		<link rel="icon" type="image/x-icon" href="images/favicon.ico">




		<!-- 	   	TREE 		-->
		<link rel="stylesheet" 	href="css/tree/jqtree.css">
		<script	src="js/tree/tree.jquery.js"></script>
		<!-- 	   	TREE End	-->

		<link rel="stylesheet"	href="css/app.v2.css" type="text/css" />
		<link rel="stylesheet" media="screen" 	href="css/datepicker.css">
		
		<link rel="stylesheet" media="screen" 	href="css/dialog/RDS.css">
				
		<!-- 	   	ICON Start 		-->
		<link rel="stylesheet"	href="css/font.css" type="text/css"	cache="false" />
		<!--       	ICON End		-->

	
</head>


<body onload="callLoad()">

<spring:hasBindErrors name="person">
            <script type="text/javascript">
                $(document).ready(function() {
                    $("#alertDanger").parent().parent().addClass("error");
                });
            </script>
</spring:hasBindErrors>
	<section class="hbox stretch">
		<!-- .aside -->
		 <aside class="bg-dark aside-lg" id="nav">
  			<section class="vbox">
   				<header class="dker nav-bar">
					<a class="btn btn-link visible-xs" > 
						<i class="fa fa-bars"></i> 
					</a> 
					<a href="webtools" class="nav-brand">
						<i title="home" class="fa fa-cloud"></i>
						Troy E-commerce 
					</a>
	 			</header>
   			<section>
		    <nav class="nav-primary hidden-xs" data-ride="collapse">
				 <ul class="nav">
<!-- 					<li> -->
<!-- 						<a href="webtools" > -->
<!-- 							 <i class="fa fa fa-dashboard "></i>  -->
<!-- 							 <span>Dashboard</span> -->
<!-- 						</a> -->
<!-- 					</li> -->
					<li >
						<a href="catalog" >
							<i class="fa fa-folder"></i> 
							<span id="doc">Catalog</span>
						</a>
					</li>
				 	<li> 
				 		<a href="category"> 
				 			<i class="fa fa-arrows-alt"></i> 
				 			<span>Category</span> </a> 
				 	</li>
			     	<li> 
			     		<a href="product"> 
			     			<i	class="fa fa fa-calendar"></i> 
			     			<span>Product</span> </a> 
			     	</li>
				</ul>
     		</nav>
						<!--    </section> -->
						<!--     <footer class="footer bg-gradient hidden-xs"> </footer>  -->
						<!--   </section> -->
		</aside>
		<section id="content">
  			<section class="vbox">
			    <header class="header bg-dark bg-gradient">
			     	 <div class="collapse navbar-collapse">
			     	 	<ul class="nav navbar-nav navbar-center ">
			     	 		<a href="#" class="nav-brand"> ${headerMsg} </a>
			     	 	</ul>
			     	 	<ul class="nav navbar-nav navbar-right"> 
			     	 		<li class="dropdown"> 
			     	 			<a href="#" class="dropdown-toggle dker" data-toggle="dropdown">
			     	 				 <span class="thumb-sm avatar pull-left m-t-n-xs m-r-xs"> 
			     	 				 	<img src="${user.image} "> </span>Welcome ${user.userFirstName}<b class="caret"></b> </a>
			     	 				  <ul class="dropdown-menu animated fadeInLeft">
			     	 				  	 <li> <a href="profileServlet">Settings</a> </li> 
			     	 				  	 <li> <a href="help.jsp">Help</a> </li>
			     	 				  	 <li> <a href="doLogout">Logout</a> </li> 
			     	 				  </ul> 
			     	 		</li> 
			     	 	</ul>
			     	 </div>
			     </header>
<section id="content">	
		<section class="vbox">		     
			     	<c:if test="${not empty menu}">
        				<header class="header bg-black navbar navbar-inverse">
         					 <div class="collapse navbar-collapse pull-in">
          						  <div class="col-sm-9">
         						     <ul class="nav nav-tabs">
						<!--                <li class="active"><a href="#tab" data-toggle="message" class="m-r"><i class="fa fa-upload fa-2x icon-muted v-middle"></i></a></li> -->
											<li id="uploadButton" class="">
												<a onclick="load1Div()" title='Upload' data-toggle="tab" class="m-r">
													<i class="fa fa-upload fa-2x icon-muted v-middle"></i>
												</a>
											</li>
										</ul>
           						 	</div>
         				 		</div>
        				</header>
        			</c:if>
					<section class="scrollable" id="pjax-container">
						<section class="hbox">
							<aside class="bg-white-only">								
								<div class="tab-content">
								
<!-- 									<div class="tab-pane active" id="header"> -->
<!-- 										<div role="alert" class="alert alert-danger  alert-dismissible  col-sm-12" id="alertDanger"> -->
<!-- 											<button data-dismiss="alert" class="close" type="button"> -->
<!-- 										    	<span aria-hidden="true">×</span> -->
<!-- 										        <span class="sr-only">Close</span> -->
<!-- 										  	</button> -->
<!-- 										    <div id="idActionErr" style="color:red;"></div> -->
<!-- 										</div> -->
<!-- 									    <div role="alert" class="alert alert-success  alert-dismissible  col-sm-12" id="alertSuccess"> -->
<!-- 									   		<button data-dismiss="alert" class="close" type="button"> -->
<!-- 									   			<span aria-hidden="true">×</span> -->
<!-- 									   			<span class="sr-only">Close</span> -->
<!-- 									   		</button> -->
<!-- 									        <div id="idActionMsg" style="color:blue;"></div>	 -->
<!-- 									    </div> -->
									 
<!-- 									    	<div role="alert" class="alert alert-success  alert-dismissible  col-sm-12" id="alertSuccess"> -->
<!-- 									   		<button data-dismiss="alert" class="close" type="button"> -->
<!-- 									   			<span aria-hidden="true">×</span> -->
<!-- 									   			<span class="sr-only">Close</span> -->
<!-- 									   		</button> -->
<!-- 									        <div id="idActionMsg" style="color:blue;"></div>	 -->
<!-- 									    	</div> -->
									    
<!-- 									    	<div role="alert" class="alert alert-danger  alert-dismissible  col-sm-12" id="alertDanger"> -->
<!-- 												<button data-dismiss="alert" class="close" type="button"> -->
<!-- 											    	<span aria-hidden="true">×</span> -->
<!-- 											        <span class="sr-only">Close</span> -->
<!-- 											  	</button> -->
<!-- 											    <div id="idActionErr" style="color:red;"></div> -->
<!-- 											</div> -->
									  
<!-- 									</div> -->