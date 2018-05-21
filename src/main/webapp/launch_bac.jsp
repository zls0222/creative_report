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
  <script>
    //别忘了导入该用的js文件
    function subForm() {
        alert($('#selectCondition').serialize())
      $.ajax({
        url: '/creative/selected', //请求的url
        type: 'post', //请求的方式
        data: $('#selectCondition').serialize(), //form表单里要提交的内容，里面的input等写上name就会提交，这是序列化
        error: function (XMLHttpRequest, textStatus, errorThrown, data) {
            alert("error");
//              console.info(XMLHttpRequest.status);
//              console.info(XMLHttpRequest.readyState);
//              console.info(textStatus);
//              console.info(XMLHttpRequest.responseText);
          },

          success: function (data) {
//
              alert("success");
              var str1 = "";
              //清空table中的html
              $("#test").html("");
              for (var i = 0; i < data.length; i++) {
                  str1 = "<tr>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
                          "<td><a href="+data[i].creative_url +" data-rel="+"colorbox"+" style="+"width:2680px"+">"+
                          "<img alt="+"15x15"+" src="+data[i].creative_url+" />"+
                          "</a>"+
                          "</td>"+
//                    "<td>"+data[i].creative_url + "</td>" +
                          "<td>"+data[i].advertiser + "</td>" +
                          "<td>"+data[i].order_id + "</td>" +
                          "<td>"+data[i].campaign_id + "</td>" +
                          "<td>"+data[i].advertiser_cat + "</td>" +
                          "<td>"+data[i].width + "</td>" +
                          "<td>"+data[i].height + "</td>" +
                          "<td>"+data[i].campaign_id + "</td>" +
                          "<td>"+data[i].imp + "</td>" +
                          "<td>"+data[i].click + "</td>" +
                          "<td>"+data[i].ctr + "</td>" +
//                          "<td>"+data[i].clickContrast + "</td>" +
//                          "<td>"+data[i].cvt + "</td>" +
//                          "<td>"+data[i].cvr + "</td>" +
//                          "<td>"+data[i].cvtContrast + "</td>" +
//                          "<td>"+data[i].ComprehensiveWeight + "</td>" +
                          "</tr>";


                  <%--&lt;%&ndash;<tr class="text-c">&ndash;%&gt;--%>
                  <%--"<td><a href="+'${creative.creative_url }'+" data-rel="+"colorbox"+">"+--%>
                  <%--"<img alt="+"15x15"+" src="+'${creative.creative_url }'+" />"+--%>
                  <%--<!--<div class="text">-->--%>
                  <%--<!--<div class="inner">Sample Caption on Hover</div>-->--%>
                  <%--<!--</div>-->--%>
                  <%--"</a>"+--%>
                  <%--"</td>"--%>

                  <%--<td>${creative.order_id }</td>--%>
                  <%--<td>${creative.exe_campaign_id}</td>--%>
                  <%--<td>${creative.width }</td>--%>
                  <%--<td>${creative.height }</td>--%>
                  <%--<td>${creative.imp }</td>--%>
                  <%--<td>${creative.click }</td>--%>
                  <%--<td>${creative.ctr }</td>--%>
                  <%--&lt;%&ndash;<td class="f-14"><a title="编辑" href="${pageContext.request.contextPath}/customer/detail?cidcard=${customer.cidcard}" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>&ndash;%&gt;--%>
                  <%--&lt;%&ndash;<a title="删除" href="${pageContext.request.contextPath}/customer/delete?cidcard=${customer.cidcard}" onclick="system_category_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>&ndash;%&gt;--%>
                  <%--</tr>--%>

                  $("#test").append(str1);
              }
          },
      });
    }

    function loadAdv(arg1,arg2){
      $.ajax({
        type: "GET",
        url: '/creative/creative/subselect',
        data: {"creativetype": arg1,"creativeadv":arg2},
        dataType: "json",
        error: function (XMLHttpRequest, textStatus, errorThrown, data) {
          console.info(XMLHttpRequest.status);
          console.info(XMLHttpRequest.readyState);
          console.info(textStatus);
          console.info(XMLHttpRequest.responseText);
        },

        success: function (data) {
//          $('#resText').empty();   //清空resText里面的所有内容
//          alert('请求ok'+arg1+arg2);
//
          var str1 = "";
          //清空table中的html
          str0="#"+arg2
          $(str0).html("");
          str1="<option value=''>"+arg2+"</option>";
          $("#"+arg2).append(str1);
          for (var i = 0; i < data.length; i++) {

            str1="<option value="+data[i].toSelect+">"+data[i].toSelect+"</option>";


            $(str0).append(str1);
          }
        },

      });


    }


    function typeForm(arg1) {


      $.ajax({
        type: "GET",
        url: '/creative/creative',
        data: {"toSelect": arg1},
        dataType: "json",
        error: function (XMLHttpRequest, textStatus, errorThrown, data) {
          console.info(XMLHttpRequest.status);
          console.info(XMLHttpRequest.readyState);
          console.info(textStatus);
          console.info(XMLHttpRequest.responseText);
        },

        success: function (data) {
//          $('#resText').empty();   //清空resText里面的所有内容
//          alert('请求ok');
//        }
//      });
//      $.ajax({
//        url: '/creative/creative', //请求的url
//        type: 'post', //请求的方式
//        data: {"toSelect":arg1},
//        async : false,
////        dataType : 'json',
////        error:function (data) {
////          alert(data.toLocaleString)
////          alert('请求失败');
////        },
//
//        success:function (data) {
//          alert(data);
          var str1 = "";
          //清空table中的html
          $("#test").html("");
          for (var i = 0; i < data.length; i++) {
            str1 = "<tr>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//                    "<td>111</td>" +
//
//                    <th>创意图片</th>
//                    <th>广告主</th>
//                    <th>订单</th>
//                    <th>计划</th>
//                    <th>分类</th>
//                    <th>宽度</th>
//                    <th>高度</th>
//                    <th>创意分类</th>
//                    <th>曝光</th>
//                    <th>点击</th>
//                    <th>点击率</th>
//                    <th>对比值</th>
//                    <th>转化</th>
//                    <th>转化率</th>
//                    <th>对比值</th>
//                    <th>综合权重</th>


//


                    "<td><a href="+data[i].creative_url +" data-rel="+"colorbox"+" style="+"width:2680px"+">"+
                    "<img alt="+"15x15"+" src="+data[i].creative_url+" />"+
                    "</a>"+
                    "</td>"+
//                    "<td>"+data[i].creative_url + "</td>" +
                    "<td>"+data[i].advertiser + "</td>" +
                    "<td>"+data[i].order_id + "</td>" +
                    "<td>"+data[i].campaign_id + "</td>" +
                    "<td>"+data[i].advertiser_cat + "</td>" +
                    "<td>"+data[i].width + "</td>" +
                    "<td>"+data[i].height + "</td>" +
                    "<td>"+data[i].campaign_id + "</td>" +
                    "<td>"+data[i].imp + "</td>" +
                    "<td>"+data[i].click + "</td>" +
                    "<td>"+data[i].ctr + "</td>" +
//                    "<td>"+data[i].clickContrast + "</td>" +
//                    "<td>"+data[i].cvt + "</td>" +
//                    "<td>"+data[i].cvr + "</td>" +
//                    "<td>"+data[i].cvtContrast + "</td>" +
//                    "<td>"+data[i].ComprehensiveWeight + "</td>" +
                    "</tr>";


            <%--&lt;%&ndash;<tr class="text-c">&ndash;%&gt;--%>
            <%--"<td><a href="+'${creative.creative_url }'+" data-rel="+"colorbox"+">"+--%>
            <%--"<img alt="+"15x15"+" src="+'${creative.creative_url }'+" />"+--%>
            <%--<!--<div class="text">-->--%>
            <%--<!--<div class="inner">Sample Caption on Hover</div>-->--%>
            <%--<!--</div>-->--%>
            <%--"</a>"+--%>
            <%--"</td>"--%>

            <%--<td>${creative.order_id }</td>--%>
            <%--<td>${creative.exe_campaign_id}</td>--%>
            <%--<td>${creative.width }</td>--%>
            <%--<td>${creative.height }</td>--%>
            <%--<td>${creative.imp }</td>--%>
            <%--<td>${creative.click }</td>--%>
            <%--<td>${creative.ctr }</td>--%>
            <%--&lt;%&ndash;<td class="f-14"><a title="编辑" href="${pageContext.request.contextPath}/customer/detail?cidcard=${customer.cidcard}" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a title="删除" href="${pageContext.request.contextPath}/customer/delete?cidcard=${customer.cidcard}" onclick="system_category_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>&ndash;%&gt;--%>
            <%--</tr>--%>

            $("#test").append(str1);
          }
        },
        <%--error:function(XMLHttpRequest, textStatus, errorThrown){--%>
        <%--alert(XMLHttpRequest);--%>
        <%--alert(textStatus);--%>
        <%--alert(errorThrown);--%>
        <%--}--%>
        <%--});--%>
      });
      loadAdv(arg1,"advs")
      loadAdv(arg1,"industrys")
      loadAdv(arg1,"sizes")
      loadAdv(arg1,"classes")
    }
  </script>

</head>

<%--<body onload="typeForm('banner')">--%>
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
                <a data-toggle="tab" href="#home" onclick="typeForm('banner')">
                  <%--<button id="select01" onclick="subForm()" >提交</button>--%>
                  <i class="green icon-home bigger-170"></i>
                  banner
                </a>
              </li>

              <li style="width:100px" style="text-align:center;">
                <a data-toggle="tab" href="#home" onclick="typeForm('native')">
                  <i class="green icon-home bigger-170"></i>

                  <!--<a data-toggle="tab" href="#profile">-->
                  native

                </a>
              </li>



              <li style="width:100px" style="text-align:center;">
                <a data-toggle="tab" href="#home" onclick="typeForm('product')">
                  <i class="green icon-home bigger-170"></i>
                  <!--<a data-toggle="tab" href="#dropdown1">-->
                  product

                </a>
              </li>


              <li style="width:100px" style="text-align:center;">
                <a data-toggle="tab" href="#home" onclick="typeForm('html')">
                  <i class="green icon-home bigger-170"></i>
                  <!--<a data-toggle="tab" href="#dropdown2">-->
                  html

                </a>
              </li>



            </ul>

            <div class="tab-content">
              <div id="home" class="tab-pane in active">
                <div class="row-fluid">
                  <!--PAGE CONTENT BEGINS HERE-->



                  <div >
                    <form id="selectCondition"   method="post" class="form form-horizontal" id="form-member-add" >

                    <%--<form action="${pageContext.request.contextPath}/creative/selected"  method="post" class="form form-horizontal" id="form-member-add" >--%>
                      <input type="hidden" name="type" id='type' value="banner">
                      <ul class="nav nav-tabs" id="selectadv">
                        <li>
                        <select id="advs" name="adv">
                        <%--<option id="advs" value="">广告主</option>--%>

                        <%--<c:forEach items="${advList }" var="adv" varStatus="one">--%>
                        <%--<option value="${adv.toSelect }">${adv.toSelect }</option>--%>
                        <%--</c:forEach>--%>
                        </select>
                        </li>

                        <li onload="typeForm('advertiser_cat')">

                          <select  id="industrys" name="industry">
                            <%--<option id="industrys" value="">行业</option>--%>

                            <%--<c:forEach items="${industryList }" var="industry" varStatus="one">--%>
                              <%--<option value="${industry.toSelect }">${industry.toSelect }</option>--%>
                            <%--</c:forEach>--%>
                          </select>
                        </li>

                        <li onload="typeForm('size')">

                          <select id="sizes" name="size">
                            <%--<option id="sizes" value="">尺寸</option>--%>

                            <%--<c:forEach items="${sizeList }" var="size" varStatus="one">--%>
                              <%--<option value="${size.toSelect }">${size.toSelect }</option>--%>
                            <%--</c:forEach>--%>
                          </select>
                        </li>


                        <li onload="typeForm('creative_id')">

                          <select id="classes" name="classify" >
                            <%--<option id="classes" value="">创意类别</option>--%>
                            <%--<c:forEach items="${classifyList }" var="classify" varStatus="one">--%>
                              <%--<option value="${classify.toSelect }">${classify.toSelect }</option>--%>
                            <%--</c:forEach>--%>
                          </select>
                        </li>

                        <li>
                          <button id="select01" onclick="subForm()" >提交</button>


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
                        <th>创意图片</th>
                        <th>广告主</th>
                        <th>订单</th>
                        <th>计划</th>
                        <th>分类</th>
                        <th>宽度</th>
                        <th>高度</th>
                        <th>创意分类</th>
                        <th>曝光</th>
                        <th>点击</th>
                        <th>点击率</th>
                        <%--<th>对比值</th>--%>
                        <%--<th>转化</th>--%>
                        <%--<th>转化率</th>--%>
                        <%--<th>对比值</th>--%>
                        <%--<th>综合权重</th>--%>


                      </tr>
                      </thead>

                      <tbody id="test">
                      <tr>
                        <%--<c:forEach items="${alllist }" var="creative" varStatus="one">--%>
                      <%--<tr class="text-c">--%>
                        <%--<td><a href='${creative.creative_url }' data-rel="colorbox">--%>
                          <%--<img alt="15x15" src='${creative.creative_url }' />--%>
                          <%--<!--<div class="text">-->--%>
                          <%--<!--<div class="inner">Sample Caption on Hover</div>-->--%>
                          <%--<!--</div>-->--%>
                        <%--</a>--%>
                        <%--</td>--%>

                        <%--<td>${creative.order_id }</td>--%>
                        <%--<td>${creative.exe_campaign_id}</td>--%>
                        <%--<td>${creative.width }</td>--%>
                        <%--<td>${creative.height }</td>--%>
                        <%--<td>${creative.imp }</td>--%>
                        <%--<td>${creative.click }</td>--%>
                        <%--<td>${creative.ctr }</td>--%>
                        <%--&lt;%&ndash;<td class="f-14"><a title="编辑" href="${pageContext.request.contextPath}/customer/detail?cidcard=${customer.cidcard}" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>&ndash;%&gt;--%>
                          <%--&lt;%&ndash;<a title="删除" href="${pageContext.request.contextPath}/customer/delete?cidcard=${customer.cidcard}" onclick="system_category_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>&ndash;%&gt;--%>
                      <%--</tr>--%>
                      <%--</c:forEach>--%>
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

