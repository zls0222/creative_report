<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
    <base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link href="static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
<link href="static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
<link href="lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>鍚庡彴鐧诲綍姹借溅绉熻祦绯荤粺</title>
<meta name="keywords" content="H-ui.admin 3.0,H-ui缃戠珯鍚庡彴妯＄増,鍚庡彴妯＄増涓嬭浇,鍚庡彴绠＄悊绯荤粺妯＄増,HTML鍚庡彴妯＄増涓嬭浇">
<meta name="description" content="H-ui.admin 3.0锛屾槸涓�娆剧敱鍥戒汉寮�鍙戠殑杞婚噺绾ф墎骞冲寲缃戠珯鍚庡彴妯℃澘锛屽畬鍏ㄥ厤璐瑰紑婧愮殑缃戠珯鍚庡彴绠＄悊绯荤粺妯＄増锛岄�傚悎涓皬鍨婥MS鍚庡彴绯荤粺銆�">
<script>
function check(){
	var uname = document.getElementById('uname').value;
	if(uname==null){
	alert('鐢ㄦ埛鍚嶄笉鑳戒负绌�');
	return false;
	}
	return true;
}
</script>


</head>
<body>
login please
</body>
</html>