<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  <title>Tables - Ace Admin</title>

  <meta name="description" content="Static &amp; Dynamic Tables" />
  <meta name="viewport" content="width=device-width*2, initial-scale=1.0" />

  <!--basic styles-->

  <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="/assets/css/font-awesome.min.css" />

  <!--[if IE 7]>
  <link rel="stylesheet" href="/assets/css/font-awesome-ie7.min.css" />
  <![endif]-->

  <!--page specific plugin styles-->

  <!--fonts-->

  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

  <!--ace styles-->

  <link rel="stylesheet" href="/assets/css/ace.min.css" />
  <link rel="stylesheet" href="/assets/css/ace-responsive.min.css" />
  <link rel="stylesheet" href="/assets/css/ace-skins.min.css" />

  <!--[if lte IE 8]>
  <link rel="stylesheet" href="/assets/css/ace-ie.min.css" />
  <![endif]-->

  <!--inline styles if any-->

  <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>


</head>

<body >


<div>


    <ul class="nav nav-tabs" id="myTab">
        <li class="active" style="width:100px" style="text-align:center;">
            <a data-toggle="tab" href="${pageContext.request.contextPath}/creative/reporttype?toSelect='launch'" >
                <%--<button id="select01" onclick="subForm()" >提交</button>--%>
                <i class="green icon-home bigger-170"></i>
                投放分析
            </a>
        </li>

        <li style="width:100px" style="text-align:center;">
            <a data-toggle="tab" href="${pageContext.request.contextPath}/creative/reporttype?toSelect='recommend'" >
                <i class="green icon-home bigger-170"></i>

                <!--<a data-toggle="tab" href="#profile">-->
                创意推荐

            </a>
        </li>



        <li style="width:100px" style="text-align:center;">
            <a data-toggle="tab"  href="${pageContext.request.contextPath}/creative/reporttype?toSelect='media'">
                <i class="green icon-home bigger-170"></i>
                <!--<a data-toggle="tab" href="#dropdown1">-->
                媒体分析

            </a>
        </li>






    </ul>
</div>

</body>
</html>

