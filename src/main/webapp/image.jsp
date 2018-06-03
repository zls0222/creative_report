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
<html>
<head>
    <title></title>
  <link rel="stylesheet" href="/assets/css/colorbox.css" />
  <script src="/Content/scripts/jquery/jquery.colorbox-min.js" type="text/javascript"></script>
  <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
  <script src="/assets/js/uncompressed/jquery.colorbox.js"></script>


</head>
<body>
<div id="download-APP-colorbox" align="center">
  <a href="javascript:submitComment('http://fms.ipinyou.com/5/00/6F/45/F001Nl1Qu03I001J5DBy.jpg');"  data-rel="colorbox" style="width:2680px" id="makeComment">
    <img style="width:180px" src="http://fms.ipinyou.com/5/00/6F/45/F001Nl1Qu03I001J5DBy.jpg" />
  </a>
</div>
<script>

  function submitComment(data) {
    alert("ok")



    $("#makeComment").colorbox({
      reposition: false,      // ?
//top: "20px",
      width: "auto",
      innerWidth: "200%",
      innerHeight:"200%",
      height: "auto",
      inline: true,
      href: "<div id=\"download-APP-colorbox\" align=\"center\">"+
            "<a href=\"javascript:submitComment('"+data+"');\"  data-rel=\"colorbox\" style=\"width:2680px\" id=\"makeComment\">"+
            "<img style=\"width:180px\" src='"+data+"' />"+
            "</a>"+
            "</div>"
    });
    $("#makeComment").click();
  }
</script>
</body>
</html>
