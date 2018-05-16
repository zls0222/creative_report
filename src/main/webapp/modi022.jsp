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
</head>

<body>
<div class="navbar navbar-inverse">
  <div class="navbar-inner">
    <div class="container-fluid">
      <a href="#" class="brand">
        <small>
          <i class="icon-leaf"></i>
          Creative_Analysis
        </small>
      </a><!--/.brand-->


    </div><!--/.container-fluid-->
  </div><!--/.navbar-inner-->
</div>

<div class="container-fluid" id="main-container">
  <a id="menu-toggler" href="#">
    <span></span>
  </a>



  <div class="clearfix">
    <!--<div id="main-content" class="clearfix">-->


    <div id="page-content" class="clearfix">
      <div class="page-header position-relative">
        <h1>
          Creative
          <small>
            <i class="icon-double-angle-right"></i>
            Show_detail
          </small>
        </h1>
      </div><!--/.page-header-->

      <div class="row-fluid"  style="width:2680px" >
        <div class="span6">
          <div class="tabbable">
            <ul class="nav nav-tabs" id="myTab">
              <li class="active" style="width:100px" style="text-align:center;">
                <a data-toggle="tab" href="#home" >
                  <i class="green icon-home bigger-170"></i>
                  Banner
                </a>
              </li>

              <li style="width:100px" style="text-align:center;">
                <a data-toggle="tab" href="#home2" >
                  <!--<a data-toggle="tab" href="#profile">-->
                  Native

                </a>
              </li>



              <li style="width:100px" style="text-align:center;">
                <a data-toggle="tab" href="#home" >
                  <!--<a data-toggle="tab" href="#dropdown1">-->
                  product

                </a>
              </li>


              <li style="width:100px" style="text-align:center;">
                <a data-toggle="tab" href="#home" >
                  <!--<a data-toggle="tab" href="#dropdown2">-->
                  Html

                </a>
              </li>



            </ul>

            <div class="tab-content">
              <div id="home" class="tab-pane in active">
                <div class="row-fluid">
                  <!--PAGE CONTENT BEGINS HERE-->



                  <div >
                    <form action="${pageContext.request.contextPath}/creative/selected" method="post" class="form form-horizontal" id="form-member-add" >
                      <input type="hidden" name="type" id='type' value="banner">
                      <ul class="nav nav-tabs" id="selectadv">
                        <li>
                        <select name="adv" id='adv'>
                        <option value="">广告主</option>
                        <c:forEach items="${advList }" var="adv" varStatus="one">
                        <option value="${adv.toSelect }">${adv.toSelect }</option>
                        </c:forEach>
                        </select>
                        </li>

                        <li>

                          <select name="industry" id="industry">
                            <option value="">行业</option>

                            <c:forEach items="${industryList }" var="industry" varStatus="one">
                              <option value="${industry.toSelect }">${industry.toSelect }</option>
                            </c:forEach>
                          </select>
                        </li>

                        <li>

                          <select name="size" id="size">
                            <option value="">尺寸</option>

                            <c:forEach items="${sizeList }" var="size" varStatus="one">
                              <option value="${size.toSelect }">${size.toSelect }</option>
                            </c:forEach>
                          </select>
                        </li>


                        <li>

                          <select name="classify" id="classify" >
                            <option value="">创意类别</option>
                            <c:forEach items="${classifyList }" var="classify" varStatus="one">
                              <option value="${classify.toSelect }">${classify.toSelect }</option>
                            </c:forEach>
                          </select>
                        </li>

                        <li>
                          <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">


                        </li>





                      <%--<li>--%>

                        <%--<select name="xxx">--%>
                          <%--<option>这里是select的默认值</option>--%>
                          <%--<c:forEach items="${classifyList }" var="classify" varStatus="one">--%>
                            <%--<option value="${classify.toSelect }">${classify.toSelect }</option>--%>
                          <%--</c:forEach>--%>
                        <%--</select>--%>
                      <%--</li>--%>
                    </ul>
                    </form>


                    <div class="table-header">
                      Results for Last 90 Day Creative Data
                    </div>

                    <table id="table_report2" class="table table-striped table-bordered table-hover">
                      <thead>
                      <tr>
                        <th>creative_url</th>
                        <th>order_id</th>
                        <th>exe_campaign_id</th>
                        <th>width</th>
                        <th>height</th>
                        <th>imp</th>
                        <th>click</th>
                        <th>ctr</th>


                      </tr>
                      </thead>

                      <tbody>
                      <tr>
                        <c:forEach items="${alllist }" var="creative" varStatus="one">
                      <tr class="text-c">
                        <td><a href='${creative.creative_url }' data-rel="colorbox">
                          <img alt="15x15" src='${creative.creative_url }' />
                          <!--<div class="text">-->
                          <!--<div class="inner">Sample Caption on Hover</div>-->
                          <!--</div>-->
                        </a>
                        </td>

                        <td>${creative.order_id }</td>
                        <td>${creative.exe_campaign_id}</td>
                        <td>${creative.width }</td>
                        <td>${creative.height }</td>
                        <td>${creative.imp }</td>
                        <td>${creative.click }</td>
                        <td>${creative.ctr }</td>
                        <%--<td class="f-14"><a title="编辑" href="${pageContext.request.contextPath}/customer/detail?cidcard=${customer.cidcard}" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>--%>
                          <%--<a title="删除" href="${pageContext.request.contextPath}/customer/delete?cidcard=${customer.cidcard}" onclick="system_category_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>--%>
                      </tr>
                      </c:forEach>
                      </tr>


                      </tbody>
                    </table>
                  </div>

                  <!--PAGE CONTENT ENDS HERE-->
                </div><!--/row-->
              </div>



            </div>


            <%--NATIVE--%>

          </div>
        </div><!--/span-->



      </div><!--/row-->


    </div><!--/#page-content-->

    <div id="ace-settings-container">
      <div class="btn btn-app btn-mini btn-warning" id="ace-settings-btn">
        <i class="icon-cog"></i>
      </div>

      <div id="ace-settings-box">
        <div>
          <div class="pull-left">
            <select id="skin-colorpicker" class="hidden">
              <option data-class="default" value="#438EB9">#438EB9</option>
              <option data-class="skin-1" value="#222A2D">#222A2D</option>
              <option data-class="skin-2" value="#C6487E">#C6487E</option>
              <option data-class="skin-3" value="#D0D0D0">#D0D0D0</option>
            </select>
          </div>
          <span>&nbsp; Choose Skin</span>
        </div>

        <div>
          <input type="checkbox" class="ace-checkbox-2" id="ace-settings-header" />
          <label class="lbl" for="ace-settings-header"> Fixed Header</label>
        </div>

        <div>
          <input type="checkbox" class="ace-checkbox-2" id="ace-settings-sidebar" />
          <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
        </div>
      </div>
    </div><!--/#ace-settings-container-->
  </div><!--/#main-content-->
</div><!--/.fluid-container#main-container-->

<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse">
  <i class="icon-double-angle-up icon-only bigger-110"></i>
</a>

<!--basic scripts-->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
  window.jQuery || document.write("<script src='/assets/js/jquery-1.9.1.min.js'>"+"<"+"/script>");
</script>
<script src="/assets/js/bootstrap.min.js"></script>

<!--page specific plugin scripts-->

<script src="/assets/js/jquery.dataTables.min.js"></script>
<script src="/assets/js/jquery.dataTables.bootstrap.js"></script>

<!--ace scripts-->

<script src="/assets/js/ace-elements.min.js"></script>
<script src="/assets/js/ace.min.js"></script>

<!--inline scripts related to this page-->

<script type="text/javascript">
  $(function() {
    var oTable1 = $('#table_report').dataTable( {
      "aoColumns": [
        { "bSortable": false },
        null, null,null, null, null,
        { "bSortable": false }
      ] } );


    $('table th input:checkbox').on('click' , function(){
      var that = this;
      $(this).closest('table').find('tr > td:first-child input:checkbox')
              .each(function(){
                this.checked = that.checked;
                $(this).closest('tr').toggleClass('selected');
              });

    });

    $('[data-rel=tooltip]').tooltip();
  })
</script>
</body>
</html>

