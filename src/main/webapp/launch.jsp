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
    <meta charset="utf-8">
    <title>dataTables</title>
    <link href="dataTables.css" rel="stylesheet" type="text/css">
  <meta charset="utf-8" />
  <title>Tables - Ace Admin</title>

  <meta name="description" content="Static &amp; Dynamic Tables" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

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






<%--<script type="text/javascript">--%>
        <%--jQuery(function($) {--%>
            <%--var oTable1 =--%>
                    <%--$('#table_report2')--%>
                        <%--//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)--%>
                            <%--.dataTable( {--%>
                                <%--bAutoWidth: false,--%>
                                <%--"aoColumns": [--%>
                                    <%--{ "bSortable": false },--%>
                                    <%--null, null,null, null, null,--%>
                                    <%--{ "bSortable": false }--%>
                                <%--],--%>
                                <%--"aaSorting": [],--%>

                                <%--//,--%>
                                <%--//"sScrollY": "200px",--%>
                                <%--//"bPaginate": false,--%>

                                <%--//"sScrollX": "100%",--%>
                                <%--//"sScrollXInner": "120%",--%>
                                <%--//"bScrollCollapse": true,--%>
                                <%--//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"--%>
                                <%--//you may want to wrap the table inside a "div.dataTables_borderWrap" element--%>

                                <%--//"iDisplayLength": 50--%>
                            <%--} );--%>
            <%--/**--%>
             <%--var tableTools = new $.fn.dataTable.TableTools( oTable1, {--%>
					<%--"sSwfPath": "../../copy_csv_xls_pdf.swf",--%>
			        <%--"buttons": [--%>
			            <%--"copy",--%>
			            <%--"csv",--%>
			            <%--"xls",--%>
						<%--"pdf",--%>
			            <%--"print"--%>
			        <%--]--%>
			    <%--} );--%>
             <%--$( tableTools.fnContainer() ).insertBefore('#sample-table-2');--%>
             <%--*/--%>


                <%--//oTable1.fnAdjustColumnSizing();--%>


            <%--$(document).on('click', 'th input:checkbox' , function(){--%>
                <%--var that = this;--%>
                <%--$(this).closest('table').find('tr > td:first-child input:checkbox')--%>
                        <%--.each(function(){--%>
                            <%--this.checked = that.checked;--%>
                            <%--$(this).closest('tr').toggleClass('selected');--%>
                        <%--});--%>
            <%--});--%>


            <%--$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});--%>
            <%--function tooltip_placement(context, source) {--%>
                <%--var $source = $(source);--%>
                <%--var $parent = $source.closest('table')--%>
                <%--var off1 = $parent.offset();--%>
                <%--var w1 = $parent.width();--%>

                <%--var off2 = $source.offset();--%>
                <%--//var w2 = $source.width();--%>

                <%--if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';--%>
                <%--return 'left';--%>
            <%--}--%>

        <%--})--%>
    <%--</script>--%>


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
                          "<img style=\"width:180px\" src="+data[i].creative_url+" />"+
                          "</a>"+
                          "</td>"+
//                    "<td>"+data[i].creative_url + "</td>" +
                          "<td>"+data[i].advertiser + "</td>" +
                          "<td>"+data[i].order_id + "</td>" +
                          "<td>"+data[i].campaign_id + "</td>" +
                          "<td>"+data[i].advertiser_cat + "</td>" +
                          "<td>"+data[i].width + "</td>" +
                          "<td>"+data[i].height + "</td>" +
                          "<td>"+data[i].creative_id + "</td>" +
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


        $('#example').DataTable( {
            retrieve: true,
            "serverSide": true,
            searching: true,
            lengthChange: true,
            paging: true,
            scrollCollapse: true,
            serverSide: false,
            search: true,
            processing: true,
            /* scrollY: 500,   表格的高度限制*/
//            scrollX: "50%",
//            scrollXInner: "100%",
            scrollCollapse: true,
            jQueryUI: true,
            autoWidth: true,
            autoSearch: false,
            language: {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项搜索结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 条",
                "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "未搜索到数据",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            },
            ajax: {
                url: "/resume/queryList",
                url : "/creative/creative",
                type : "GET",
                contentType : "application/json",
                dataType : "json",
                data: {"toSelect":arg1},
                dataSrc: ''
            },

            "columns": [
                { "data": "creative_url",
                    render : function(data,type, full, meta) {
                        return "<a href="+data +" data-rel="+"colorbox"+" style="+"width:2680px"+">"+
                                "<img style=\"width:180px\" src="+data+" />"+
                                "</a>"; }
                },
                { "data": "advertiser" },
                { "data": "order_id" },
                { "data": "campaign_id" },
                { "data": "advertiser_cat" },
                { "data": "width" },
                { "data": "height" },
                { "data": "creative_id" },
                { data: "imp"},
                { data: "click"},
                { data: "ctr"},
            ]
        } );




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

    <div id="sidebar" >
        <div id="sidebar-shortcuts">
            <div id="sidebar-shortcuts-large">
                <button class="btn btn-small btn-success">
                    <i class="icon-signal"></i>
                </button>

                <button class="btn btn-small btn-info">
                    <i class="icon-pencil"></i>
                </button>

                <button class="btn btn-small btn-warning">
                    <i class="icon-group"></i>
                </button>

                <button class="btn btn-small btn-danger">
                    <i class="icon-cogs"></i>
                </button>




            </div>

            <div id="sidebar-shortcuts-mini">
                <span class="btn btn-success"></span>

                <span class="btn btn-info"></span>

                <span class="btn btn-warning"></span>

                <span class="btn btn-danger"></span>
            </div>
        </div><!--#sidebar-shortcuts-->

        <ul class="nav nav-list">
            <li class="active">
                <a style=" color:#666; font-size:18px;" href="launch.jsp">
                    <i class="icon-dashboard"></i>
                    <span>投放分析</span>
                </a>
            </li>

            <li>
                <a style=" color:#666; font-size:18px;" href="recommend.jsp">
                    <i class="icon-text-width"></i>
                    <span>创意推荐</span>
                </a>
            </li>

            <li>
                <a style=" color:#666; font-size:18px;" href="media.jsp">
                    <i class="icon-dashboard"></i>
                    <span>媒体分析</span>
                </a>
            </li>



        </ul><!--/.nav-list-->

        <div id="sidebar-collapse">
            <i class="icon-double-angle-left"></i>
        </div>
    </div>

    <div id="main-content" class="clearfix">
        <div id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="icon-home"></i>
                    <a href="#">Home</a>

							<span class="divider">
								<i class="icon-angle-right"></i>
							</span>
                </li>
                <li class="active">Dashboard</li>
            </ul><!--.breadcrumb-->

            <div id="nav-search">
                <form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="input-small search-query" id="nav-search-input" autocomplete="off" />
								<i class="icon-search" id="nav-search-icon"></i>
							</span>
                </form>
            </div><!--#nav-search-->
        </div>

        <div id="page-content" class="clearfix">
            <div class="page-header position-relative">
                <h1>
                    Creative
                    <small>
                        <i class="icon-double-angle-right"></i>
                        show_detail
                    </small>
                </h1>
            </div><!--/.page-header-->

      <div class="row-fluid"  style="width:2280px" >
        <div class="span6">
          <div class="tabbable">
            <ul class="nav nav-tabs" id="myTab">
              <li class="active" style="width:100px" style="text-align:center;">
                <a data-toggle="tab"  onclick="typeForm('banner')">
                  <%--<button id="select01" onclick="subForm()" >提交</button>--%>
                  <i class="green icon-home bigger-170"></i>
                  banner
                </a>
              </li>

              <li style="width:100px" style="text-align:center;">
                <a data-toggle="tab"  onclick="typeForm('native')">
                  <i class="green icon-home bigger-170"></i>

                  <!--<a data-toggle="tab" href="#profile">-->
                  native

                </a>
              </li>



              <li style="width:100px" style="text-align:center;">
                <a data-toggle="tab"  onclick="typeForm('product')">
                  <i class="green icon-home bigger-170"></i>
                  <!--<a data-toggle="tab" href="#dropdown1">-->
                  product

                </a>
              </li>


              <li style="width:100px" style="text-align:center;">
                <a data-toggle="tab" onclick="typeForm('html')">
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
                    <form id="selectCondition"    class="form form-horizontal" id="form-member-add" >

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
                      <script src="jquery.min.js"></script>
                      <script src="dataTables.js"></script>


                          <table id="example" class="display dataTable">
                          <%--<table   id="table_report2" class="table table-striped  order_table">--%>
                          <thead>
                          <tr style="width:2280px">
                            <th  style="width:180px">创意图片</th>
                              <%--<th tabindex="0" class="hidden-480 sorting" aria-controls="sample-table-2" aria-label="Status1: activate to sort column ascending" rowspan="1" colspan="1">Status1</th>--%>
                              <%--<th tabindex="0" class="hidden-480 sorting" aria-controls="sample-table-2" aria-label="Status2: activate to sort column ascending" rowspan="1" colspan="1">Status2</th>--%>
                              <%--<th tabindex="0" class="hidden-480 sorting" aria-controls="sample-table-2" aria-label="Status3: activate to sort column ascending" rowspan="1" colspan="1">Status3</th>--%>
                              <%--<th tabindex="0" class="hidden-480 sorting" aria-controls="sample-table-2" aria-label="Status4: activate to sort column ascending" rowspan="1" colspan="1">Status4</th>--%>
                              <%--<th tabindex="0" class="hidden-480 sorting" aria-controls="sample-table-2" aria-label="Status5: activate to sort column ascending" rowspan="1" colspan="1">Status5</th>--%>
                              <%--<th tabindex="0" class="hidden-480 sorting" aria-controls="sample-table-2" aria-label="Status6: activate to sort column ascending" rowspan="1" colspan="1">Status6</th>--%>
                              <%--<th tabindex="0" class="hidden-480 sorting" aria-controls="sample-table-2" aria-label="Status7: activate to sort column ascending" rowspan="1" colspan="1">Status7</th>--%>
                              <%--<th tabindex="0" class="hidden-480 sorting" aria-controls="sample-table-2" aria-label="Status8: activate to sort column ascending" rowspan="1" colspan="1">Status8</th>--%>
                              <%--<th tabindex="0" class="hidden-480 sorting" aria-controls="sample-table-2" aria-label="Status9: activate to sort column ascending" rowspan="1" colspan="1">Status9</th>--%>
                              <%--<th tabindex="0" class="hidden-480 sorting" aria-controls="sample-table-2" aria-label="Status10: activate to sort column ascending" rowspan="1" colspan="1">Status10</th>--%>


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




                        </table>




              </div>



            </div>


            <%--NATIVE--%>

          </div>
        </div><!--/span-->

        </div>

      </div><!--/row-->


    </div><!--/#page-content-->
   </div>

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

<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='/assets/js/jquery.mobile.custom.js'>"+"<"+"/script>");
</script>
<script src="/assets/js/bootstrap.js"></script>

<!-- page specific plugin scripts -->
<script src="/assets/js/jquery.dataTables.js"></script>
<script src="/assets/js/jquery.dataTables.bootstrap.js"></script>

<!-- ace scripts -->
<script src="/assets/js/ace/elements.scroller.js"></script>
<script src="/assets/js/ace/elements.colorpicker.js"></script>
<script src="/assets/js/ace/elements.fileinput.js"></script>
<script src="/assets/js/ace/elements.typeahead.js"></script>
<script src="/assets/js/ace/elements.wysiwyg.js"></script>
<script src="/assets/js/ace/elements.spinner.js"></script>
<script src="/assets/js/ace/elements.treeview.js"></script>
<script src="/assets/js/ace/elements.wizard.js"></script>
<script src="/assets/js/ace/elements.aside.js"></script>
<script src="/assets/js/ace/ace.js"></script>
<script src="/assets/js/ace/ace.ajax-content.js"></script>
<script src="/assets/js/ace/ace.touch-drag.js"></script>
<script src="/assets/js/ace/ace.sidebar.js"></script>
<script src="/assets/js/ace/ace.sidebar-scroll-1.js"></script>
<script src="/assets/js/ace/ace.submenu-hover.js"></script>
<script src="/assets/js/ace/ace.widget-box.js"></script>
<script src="/assets/js/ace/ace.settings.js"></script>
<script src="/assets/js/ace/ace.settings-rtl.js"></script>
<script src="/assets/js/ace/ace.settings-skin.js"></script>
<script src="/assets/js/ace/ace.widget-on-reload.js"></script>
<script src="/assets/js/ace/ace.searchbox-autocomplete.js"></script>

<!-- inline scripts related to this page -->
<%--<script type="text/javascript">--%>
    <%--jQuery(function($) {--%>
        <%--var oTable1 =--%>
                <%--$('#sample-table-2')--%>
                    <%--//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)--%>
                        <%--.dataTable( {--%>
                            <%--bAutoWidth: false,--%>
                            <%--"aoColumns": [--%>
                                <%--{ "bSortable": false },--%>
                                <%--null, null,null, null, null,--%>
                                <%--{ "bSortable": false }--%>
                            <%--],--%>
                            <%--"aaSorting": [],--%>


                        <%--} );--%>



        <%--//oTable1.fnAdjustColumnSizing();--%>


        <%--$(document).on('click', 'th input:checkbox' , function(){--%>
            <%--var that = this;--%>
            <%--$(this).closest('table').find('tr > td:first-child input:checkbox')--%>
                    <%--.each(function(){--%>
                        <%--this.checked = that.checked;--%>
                        <%--$(this).closest('tr').toggleClass('selected');--%>
                    <%--});--%>
        <%--});--%>


        <%--$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});--%>
        <%--function tooltip_placement(context, source) {--%>
            <%--var $source = $(source);--%>
            <%--var $parent = $source.closest('table')--%>
            <%--var off1 = $parent.offset();--%>
            <%--var w1 = $parent.width();--%>

            <%--var off2 = $source.offset();--%>
            <%--//var w2 = $source.width();--%>

            <%--if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';--%>
            <%--return 'left';--%>
        <%--}--%>

    <%--})--%>
<%--</script>--%>

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="/assets/css/ace.onpage-help.css" />
<link rel="stylesheet" href="/assets/js/themes/sunburst.css" />

<script src="/assets/js/ace/elements.onpage-help.js"></script>
<script src="/assets/js/ace/ace.onpage-help.js"></script>
<script src="/assets/js/rainbow.js"></script>
<script src="/assets/js/language/generic.js"></script>
<script src="/assets/js/language/html.js"></script>
<script src="/assets/js/language/css.js"></script>
<script src="/assets/js/language/javascript.js"></script>

<%--<script>--%>
    <%--//加入分页--%>

    <%--$('#example').DataTable( {--%>
        <%--retrieve: true,--%>
        <%--"serverSide": true,--%>
        <%--searching: true,--%>
        <%--lengthChange: true,--%>
        <%--paging: true,--%>
        <%--scrollCollapse: true,--%>
        <%--serverSide: false,--%>
        <%--search: true,--%>
        <%--processing: true,--%>
        <%--/* scrollY: 500,   表格的高度限制*/--%>
        <%--scrollX: "100%",--%>
        <%--scrollXInner: "100%",--%>
        <%--scrollCollapse: true,--%>
        <%--jQueryUI: true,--%>
        <%--autoWidth: true,--%>
        <%--autoSearch: false,--%>
        <%--language: {--%>
            <%--"sProcessing": "处理中...",--%>
            <%--"sLengthMenu": "显示 _MENU_ 项搜索结果",--%>
            <%--"sZeroRecords": "没有匹配结果",--%>
            <%--"sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 条简历",--%>
            <%--"sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",--%>
            <%--"sInfoFiltered": "(由 _MAX_ 项结果过滤)",--%>
            <%--"sInfoPostFix": "",--%>
            <%--"sSearch": "搜索:",--%>
            <%--"sUrl": "",--%>
            <%--"sEmptyTable": "未搜索到数据",--%>
            <%--"sLoadingRecords": "载入中...",--%>
            <%--"sInfoThousands": ",",--%>
            <%--"oPaginate": {--%>
                <%--"sFirst": "首页",--%>
                <%--"sPrevious": "上页",--%>
                <%--"sNext": "下页",--%>
                <%--"sLast": "末页"--%>
            <%--},--%>
            <%--"oAria": {--%>
                <%--"sSortAscending": ": 以升序排列此列",--%>
                <%--"sSortDescending": ": 以降序排列此列"--%>
            <%--}--%>
        <%--},--%>
        <%--ajax: {--%>
            <%--url: "/resume/queryList",--%>
            <%--url : "/creative/creative",--%>
            <%--type : "GET",--%>
            <%--contentType : "application/json",--%>
            <%--dataType : "json",--%>
            <%--data: {"toSelect":arg1},--%>
            <%--dataSrc: ''--%>
        <%--},--%>

        <%--"columns": [--%>
            <%--{ "data": "creative_url" },--%>
            <%--{ "data": "advertiser" },--%>
            <%--{ "data": "order_id" },--%>
            <%--{ "data": "campaign_id" },--%>
            <%--{ "data": "advertiser_cat" },--%>
            <%--{ "data": "width" },--%>
            <%--{ "data": "height" },--%>
            <%--{ "data": "creative_id" },--%>
            <%--{ data: "imp"},--%>
            <%--{ data: "click"},--%>
            <%--{ data: "ctr"},--%>
        <%--]--%>
    <%--} );--%>
<%--</script>--%>

    <%--//                        p.pageNo = d.advertiser;--%>
    <%--//                        p.draw = d.order_id;--%>
    <%--//                        p.pageSize = d.campaign_id;--%>
    <%--//                        p.pageNo = d.advertiser_cat;--%>
    <%--//                        p.draw = d.width;--%>
    <%--//                        p.pageSize = d.height;--%>
    <%--//                        p.pageNo = d.creative_id;--%>
    <%--//                        p.draw = d.imp;--%>
    <%--//                        p.pageSize = d.click;--%>
    <%--//                        p.pageSize = d.ctr;--%>




    <%--$('#example').DataTable({--%>
                <%--retrieve: true,--%>
                <%--//开启搜索框--%>
                <%--"searching": true,--%>
                <%--//允许分页--%>
                <%--"paging": true,--%>
                <%--//左下角信息 showing 1 to 7 of 7entries--%>
                <%--"info":true,--%>
                <%--//支持国际化，将search转为中文--%>
                <%--language: {--%>
                    <%--"search": "在表格中搜索:",--%>
                    <%--"oPaginate": {--%>
                        <%--"sPrevious": "上页",--%>
                        <%--"sNext": "下页",--%>
                    <%--},--%>
                <%--},--%>
                <%--"columnDefs": [--%>
                    <%--{--%>
                        <%--//targets指定列禁止排序功能--%>
                        <%--"orderable": false,--%>
                        <%--"targets": [0,1,2]--%>
                    <%--}--%>
                <%--],--%>
<%--//                ajax : {--%>
<%--//                    url : "/creative/creative",--%>
<%--//                    type : "GET",--%>
<%--//                    contentType : "application/json",--%>
<%--//                    dataType : "json",--%>
<%--//                    data: {"toSelect":arg1},--%>
<%--//                    data : function(d) {--%>
<%--//                        //console.log(JSON.stringify(d));--%>
<%--//                        var p = {};--%>
<%--//                        p.pageSize = d.creative_url;--%>
<%--//                        p.pageNo = d.advertiser;--%>
<%--//                        p.draw = d.order_id;--%>
<%--//                        p.pageSize = d.campaign_id;--%>
<%--//                        p.pageNo = d.advertiser_cat;--%>
<%--//                        p.draw = d.width;--%>
<%--//                        p.pageSize = d.height;--%>
<%--//                        p.pageNo = d.creative_id;--%>
<%--//                        p.draw = d.imp;--%>
<%--//                        p.pageSize = d.click;--%>
<%--//                        p.pageSize = d.ctr;--%>
<%--//--%>
<%--////                        "<td style=\"width:100px\">"+data[i].advertiser + "</td>" +--%>
<%--////                        "<td style=\"width:120px\">"+data[i].order_id + "</td>" +--%>
<%--////                        "<td style=\"width:120px\">"+data[i].campaign_id + "</td>" +--%>
<%--////                        "<td>"+data[i].advertiser_cat + "</td>" +--%>
<%--////                        "<td>"+data[i].width + "</td>" +--%>
<%--////                        "<td>"+data[i].height + "</td>" +--%>
<%--////                        "<td>"+data[i].creative_id + "</td>" +--%>
<%--////                        "<td>"+data[i].imp + "</td>" +--%>
<%--////                        "<td>"+data[i].click + "</td>" +--%>
<%--////                        "<td style=\"width:30px\">"+data[i].ctr + "</td>" +--%>
<%--//--%>
<%--//--%>
<%--//                        var jsonParam = JSON.stringify(p);--%>
<%--//                        console.log(jsonParam);--%>
<%--//                        return jsonParam;--%>
<%--//                    },--%>
<%--//                    "error":function(data){--%>
<%--//                        alert(data);--%>
<%--//                    }--%>
<%--//--%>
<%--//                }--%>


                <%--ajax:{--%>
                    <%--type: "GET",--%>
                    <%--url: '/creative/creative',--%>
                    <%--data: {"toSelect": arg1},--%>
                    <%--dataType: "json",--%>
                    <%--error: function (XMLHttpRequest, textStatus, errorThrown, data) {--%>
                        <%--console.info(XMLHttpRequest.status);--%>
                        <%--console.info(XMLHttpRequest.readyState);--%>
                        <%--console.info(textStatus);--%>
                        <%--console.info(XMLHttpRequest.responseText);--%>
                    <%--},--%>

                    <%--success: function (data) {--%>
<%--//          $('#resText').empty();   //清空resText里面的所有内容--%>
<%--//          alert('请求ok');--%>
<%--//        }--%>
<%--//      });--%>
<%--//      $.ajax({--%>
<%--//        url: '/creative/creative', //请求的url--%>
<%--//        type: 'post', //请求的方式--%>
<%--//        data: {"toSelect":arg1},--%>
<%--//        async : false,--%>
<%--////        dataType : 'json',--%>
<%--////        error:function (data) {--%>
<%--////          alert(data.toLocaleString)--%>
<%--////          alert('请求失败');--%>
<%--////        },--%>
<%--//--%>
<%--//        success:function (data) {--%>
<%--//          alert(data);--%>
                        <%--var str1 = "";--%>
                        <%--//清空table中的html--%>
                        <%--$("#test").html("");--%>
                        <%--for (var i = 0; i < data.length; i++) {--%>
                            <%--str1 = "<tr style=\"width:2280px\">" +--%>
<%--//                    "<td>111</td>" +--%>
<%--//                    "<td>111</td>" +--%>
<%--//                    "<td>111</td>" +--%>
<%--//                    "<td>111</td>" +--%>
<%--//                    "<td>111</td>" +--%>
<%--//                    "<td>111</td>" +--%>
<%--//                    "<td>111</td>" +--%>
<%--//                    "<td>111</td>" +--%>
<%--//--%>
<%--//                    <th>创意图片</th>--%>
<%--//                    <th>广告主</th>--%>
<%--//                    <th>订单</th>--%>
<%--//                    <th>计划</th>--%>
<%--//                    <th>分类</th>--%>
<%--//                    <th>宽度</th>--%>
<%--//                    <th>高度</th>--%>
<%--//                    <th>创意分类</th>--%>
<%--//                    <th>曝光</th>--%>
<%--//                    <th>点击</th>--%>
<%--//                    <th>点击率</th>--%>
<%--//                    <th>对比值</th>--%>
<%--//                    <th>转化</th>--%>
<%--//                    <th>转化率</th>--%>
<%--//                    <th>对比值</th>--%>
<%--//                    <th>综合权重</th>--%>


<%--//--%>


                                    <%--"<td><a href="+data[i].creative_url +" data-rel="+"colorbox"+" style="+"width:2680px"+">"+--%>
                                    <%--"<img style=\"width:180px\" src="+data[i].creative_url+" />"+--%>
                                    <%--"</a>"+--%>
                                    <%--"</td>"+--%>
<%--//                    "<td>"+data[i].creative_url + "</td>" +--%>
                                    <%--"<td style=\"width:100px\">"+data[i].advertiser + "</td>" +--%>
                                    <%--"<td style=\"width:120px\">"+data[i].order_id + "</td>" +--%>
                                    <%--"<td style=\"width:120px\">"+data[i].campaign_id + "</td>" +--%>
                                    <%--"<td>"+data[i].advertiser_cat + "</td>" +--%>
                                    <%--"<td>"+data[i].width + "</td>" +--%>
                                    <%--"<td>"+data[i].height + "</td>" +--%>
                                    <%--"<td>"+data[i].creative_id + "</td>" +--%>
                                    <%--"<td>"+data[i].imp + "</td>" +--%>
                                    <%--"<td>"+data[i].click + "</td>" +--%>
                                    <%--"<td style=\"width:30px\">"+data[i].ctr + "</td>" +--%>
<%--//                    "<td>"+data[i].clickContrast + "</td>" +--%>
<%--//                    "<td>"+data[i].cvt + "</td>" +--%>
<%--//                    "<td>"+data[i].cvr + "</td>" +--%>
<%--//                    "<td>"+data[i].cvtContrast + "</td>" +--%>
<%--//                    "<td>"+data[i].ComprehensiveWeight + "</td>" +--%>
                                    <%--"</tr>";--%>


                            <%--&lt;%&ndash;&lt;%&ndash;<tr class="text-c">&ndash;%&gt;&ndash;%&gt;--%>
                            <%--&lt;%&ndash;"<td><a href="+'${creative.creative_url }'+" data-rel="+"colorbox"+">"+&ndash;%&gt;--%>
                            <%--&lt;%&ndash;"<img alt="+"15x15"+" src="+'${creative.creative_url }'+" />"+&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<!--<div class="text">-->&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<!--<div class="inner">Sample Caption on Hover</div>-->&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<!--</div>-->&ndash;%&gt;--%>
                            <%--&lt;%&ndash;"</a>"+&ndash;%&gt;--%>
                            <%--&lt;%&ndash;"</td>"&ndash;%&gt;--%>

                            <%--&lt;%&ndash;<td>${creative.order_id }</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${creative.exe_campaign_id}</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${creative.width }</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${creative.height }</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${creative.imp }</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${creative.click }</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${creative.ctr }</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;&lt;%&ndash;<td class="f-14"><a title="编辑" href="${pageContext.request.contextPath}/customer/detail?cidcard=${customer.cidcard}" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>&ndash;%&gt;&ndash;%&gt;--%>
                            <%--&lt;%&ndash;&lt;%&ndash;<a title="删除" href="${pageContext.request.contextPath}/customer/delete?cidcard=${customer.cidcard}" onclick="system_category_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>&ndash;%&gt;&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>

                            <%--$("#test").append(str1);--%>
                        <%--}--%>
                    <%--},--%>
                    <%--&lt;%&ndash;error:function(XMLHttpRequest, textStatus, errorThrown){&ndash;%&gt;--%>
                    <%--&lt;%&ndash;alert(XMLHttpRequest);&ndash;%&gt;--%>
                    <%--&lt;%&ndash;alert(textStatus);&ndash;%&gt;--%>
                    <%--&lt;%&ndash;alert(errorThrown);&ndash;%&gt;--%>
                    <%--&lt;%&ndash;}&ndash;%&gt;--%>
                    <%--&lt;%&ndash;});&ndash;%&gt;--%>



                <%--}--%>
            <%--}--%>




    <%--);--%>


<%--<script type="text/javascript">--%>
    <%--$(document).ready( function () {--%>
        <%--$('#example').DataTable();--%>
    <%--} );--%>
<%--</script>--%>


</body>
</html>

