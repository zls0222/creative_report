<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%--
Created by IntelliJ IDEA.
User: Administrator
Date: 2018/5/11
Time: 16:40
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>Login Page - Ace Admin</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!--basic styles-->

		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!--page specific plugin styles-->

		<!--fonts-->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!--ace styles-->

		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-responsive.min.css" />

		<!--[if lt IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<%--<script>--%>


			<%--function UserLogin() {--%>
<%--//        alert($('#selectCondition').serialize());--%>




				<%--$.ajax({--%>
					<%--type: "POST",--%>
					<%--url: "/creative/login",--%>
					<%--data: {"Username":document.getElementById('Username').value,"Password":document.getElementById('Password').value},--%>

					<%--});--%>
			<%--}--%>
		<%--</script>--%>
	</head>

	<body class="login-layout">
		<div class="container-fluid" id="main-container">
			<div id="main-content">
				<div class="row-fluid">
					<div class="span12">
						<div class="login-container">
							<div class="row-fluid">
								<div class="center">
									<h1>
										<i class="icon-leaf green"></i>
										<span class="red">ALL</span>
										<span class="white">CREATIVE</span>
									</h1>
									<h4 class="blue">&copy;  PINYOU</h4>
								</div>
							</div>

							<div class="space-6"></div>

							<div class="row-fluid">
								<div class="position-relative">
									<div id="login-box" class="visible widget-box no-border">
										<div class="widget-body">
											<div class="widget-main">
												<h4 class="header blue lighter bigger">
													<i class="icon-coffee green"></i>
													Please Enter Your Information
												</h4>

												<div class="space-6"></div>

												<form action="/creative/login" method="post">
													<fieldset>
														<label>
															<span class="block input-icon input-icon-right">
																<input type="text" class="span12" id="Username" name="Username" placeholder="Username" />
																<i class="icon-user"></i>
															</span>
														</label>

														<label>
															<span class="block input-icon input-icon-right">
																<input type="password" class="span12" id="Password" name="Password" placeholder="Password" />
																<i class="icon-lock"></i>
															</span>
														</label>

														<div class="space"></div>

														<div class="row-fluid">
															<%--<label class="span8">--%>
																<%--<input type="checkbox" />--%>
																<%--<span class="lbl"> Remember Me</span>--%>
															<%--</label>--%>

															<%--<button onclick="UserLogin()" class="span4 btn btn-small btn-primary">--%>
																<%--<i class="icon-key"></i>--%>
																<%--Login--%>
															<%--</button>--%>
															<input type=submit name="submit1" value="登陆">
														</div>
													</fieldset>
												</form>
											</div><!--/widget-main-->


										</div><!--/widget-body-->
									</div><!--/login-box-->




								</div><!--/position-relative-->
							</div>
						</div>
					</div><!--/span-->
				</div><!--/row-->
			</div>
		</div><!--/.fluid-container-->

		<!--basic scripts-->

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-1.9.1.min.js'>"+"<"+"/script>");
		</script>

		<!--page specific plugin scripts-->

		<!--inline scripts related to this page-->

		<script type="text/javascript">
			function show_box(id) {
			 $('.widget-box.visible').removeClass('visible');
			 $('#'+id).addClass('visible');
			}
		</script>
	</body>
</html>
