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

    <link rel="stylesheet" href="/assets/css/colorbox.css" />
    <script src="/Content/scripts/jquery/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="/assets/js/uncompressed/jquery.colorbox.js"></script>
    <script>

        function toPercent(point){
            var str=Number(point*100).toFixed(2);
            str+="%";
            return str;
        }
    </script>
    <script>

        function submitComment(data) {
            alert("ok1")



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
                "<img style=\"width:100%;height=100% \" src='"+data+"' />"+
                "</a>"+
                "</div>"
            });
            $("#makeComment").click();
        }
    </script>






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
//        alert($('#selectCondition').serialize());

            $.fn.dataTable.ext.errMode = 'throw';
            var1=$('#selectCondition').serialize();
//        alert(var1);

            type=document.getElementById('type').value
            advs=document.getElementById('advs').value
            industrys=document.getElementById('industrys').value
            sizes=document.getElementById('sizes').value
            classes=document.getElementById('classes').value






            var  labelItemListDataTable =$("#example").dataTable();
            labelItemListDataTable.fnClearTable();
            labelItemListDataTable.fnDestroy();


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
//            scrollY: 500,   //表格的高度限制*/
//            scrollX: "50%",
//            scrollXInner: "100%",
                scrollCollapse: true,
//            jQueryUI: true,
//            autoWidth: false,
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

                    url : "/creative/selected",
                    type : "GET",
                    contentType : "application/json",
                    dataType : "json",


//


                    data: {"jsp":document.getElementById('media').value,"type":document.getElementById('type').value,"adv":document.getElementById('advs').value,"industry":document.getElementById('industrys').value,"size":document.getElementById('sizes').value,"classify":document.getElementById('classes').value,"device":document.getElementById('device').value,"recommends":document.getElementById('recommends').value,"platforms":document.getElementById('platforms').value,"medias":document.getElementById('medias').value},
                    dataSrc: ''
                },

                "columns": [
                    { "data": "creative_url",
                        render : function(data,type, full, meta) {
                            return  "<div id=\"download-APP-colorbox\" align=\"center\">"+
                                    "<a href=\"javascript:submitComment('"+data+"');\" data-rel=\"colorbox\" style=\"width:2680px\" id=\"makeComment\">"+
                                    "<img style=\"width:180px\" src="+data+" />"+
                                    "</a>"+
                                    "</div>"; }
                    },

                    //选择	广告主	订单	计划	分类	尺寸	类型	创意分类	创意	曝光	点击	点击率	对比值	转化	转化率	对比值	综合权重




                    { "data": "size" ,
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+data + "</td>"; }
                    },


                    { "data": "imp",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+data + "</td>"; }
                    },
                    { "data": "click",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+data + "</td>"; }
                    },
                    { "data": "ctr",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+toPercent(data) + "</td>"; }
                    },

                    { "data": "cvt",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+data + "</td>"; }
                    },
                    { "data": "cvr",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+toPercent(data) + "</td>"; }
                    },

                    { "data": "comprehensiveWeight",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+data + "</td>"; }
                    }


                ]
            } );


        }

        function loadAdv(arg1,arg2){
            $.ajax({
                type: "GET",
                url: '/creative/creative/subselect',
                data: {"jsp":document.getElementById('media').value,"creativetype": arg1,"creativeadv":arg2},
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

            var el = document.getElementById('type');
            el.setAttribute('value', arg1);
//        alert(el.getAttribute('value'))

            $.fn.dataTable.ext.errMode = 'throw';
            var  labelItemListDataTable =$("#example").dataTable();
            labelItemListDataTable.fnClearTable();
            labelItemListDataTable.fnDestroy();


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
//            scrollY: 500,   //表格的高度限制*/
//            scrollX: "50%",
//            scrollXInner: "100%",
                scrollCollapse: true,
//            jQueryUI: true,
//            autoWidth: false,
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

                    url : "/creative/creative",
                    type : "GET",
                    contentType : "application/json",
                    dataType : "json",
                    data: {"jsp":document.getElementById('media').value,"toSelect":arg1},
                    dataSrc: ''
                },

                "columns": [
                    { "data": "creative_url",
                        render : function(data,type, full, meta) {
                            return  "<div id=\"download-APP-colorbox\" align=\"center\">"+
                                    "<a href=\"javascript:submitComment('"+data+"');\" data-rel=\"colorbox\" style=\"width:2680px\" id=\"makeComment\">"+
                                    "<img style=\"width:180px\" src="+data+" />"+
                                    "</a>"+
                                    "</div>"; }
                    },

                    //选择	广告主	订单	计划	分类	尺寸	类型	创意分类	创意	曝光	点击	点击率	对比值	转化	转化率	对比值	综合权重




                    { "data": "size" ,
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+data + "</td>"; }
                    },


                    { "data": "imp",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+data + "</td>"; }
                    },
                    { "data": "click",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+data + "</td>"; }
                    },
                    { "data": "ctr",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+toPercent(data) + "</td>"; }
                    },

                    { "data": "cvt",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+data + "</td>"; }
                    },
                    { "data": "cvr",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+toPercent(data) + "</td>"; }
                    },

                    { "data": "comprehensiveWeight",
                        render : function(data,type, full, meta) {
                            return "<td width='50' style=\"word-break: break-all;\">"+data + "</td>"; }
                    }


                ]
            } );




            loadAdv(arg1,"advs")
            loadAdv(arg1,"industrys")
            loadAdv(arg1,"sizes")
            loadAdv(arg1,"classes")
            loadAdv(arg1,"recommends")
            loadAdv(arg1,"device")
            loadAdv(arg1,"platforms")
            loadAdv(arg1,"medias")
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
            <li >
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

            <li class="active">
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
                                    原生创意

                                </a>
                            </li>



                            <%--<li style="width:100px" style="text-align:center;">--%>
                                <%--<a data-toggle="tab"  onclick="typeForm('product')">--%>
                                    <%--<i class="green icon-home bigger-170"></i>--%>
                                    <%--<!--<a data-toggle="tab" href="#dropdown1">-->--%>
                                    <%--product--%>

                                <%--</a>--%>
                            <%--</li>--%>


                            <%--<li style="width:100px" style="text-align:center;">--%>
                                <%--<a data-toggle="tab" onclick="typeForm('html')">--%>
                                    <%--<i class="green icon-home bigger-170"></i>--%>
                                    <%--<!--<a data-toggle="tab" href="#dropdown2">-->--%>
                                    <%--html--%>

                                <%--</a>--%>
                            <%--</li>--%>



                        </ul>

                        <div class="tab-content">
                            <div id="home" class="tab-pane in active">
                                <div class="row-fluid">
                                    <!--PAGE CONTENT BEGINS HERE-->



                                    <div >
                                        <form id="selectCondition"    class="form form-horizontal" id="form-member-add" >
                                            <input type="hidden" name="media" value="media" id="media">

                                            <%--<form action="${pageContext.request.contextPath}/creative/selected"  method="post" class="form form-horizontal" id="form-member-add" >--%>
                                            <input type="hidden" name="type" id='type' >
                                            <ul class="nav nav-tabs" id="selectadv">
                                                <li>
                                                    <select id="advs" name="adv" style="width:150px;" class="selectpicker show-tick form-control" title='广告主' required data-live-search="true">
                                                        <%--<option id="advs" value="">广告主</option>--%>

                                                        <%--<c:forEach items="${advList }" var="adv" varStatus="one">--%>
                                                        <%--<option value="${adv.toSelect }">${adv.toSelect }</option>--%>
                                                        <%--</c:forEach>--%>
                                                    </select>
                                                </li>

                                                <li onload="typeForm('advertiser_cat')">

                                                    <select  id="industrys" name="industry" style="width:150px;">
                                                        <%--<option id="industrys" value="">行业</option>--%>

                                                        <%--<c:forEach items="${industryList }" var="industry" varStatus="one">--%>
                                                        <%--<option value="${industry.toSelect }">${industry.toSelect }</option>--%>
                                                        <%--</c:forEach>--%>
                                                    </select>
                                                </li>

                                                <li onload="typeForm('size')">

                                                    <select id="sizes" name="size" style="width:150px;">
                                                        <%--<option id="sizes" value="">尺寸</option>--%>

                                                        <%--<c:forEach items="${sizeList }" var="size" varStatus="one">--%>
                                                        <%--<option value="${size.toSelect }">${size.toSelect }</option>--%>
                                                        <%--</c:forEach>--%>
                                                    </select>
                                                </li>


                                                <li onload="typeForm('creative_id')">

                                                    <select id="classes" name="classify" style="width:150px;">
                                                        <%--<option id="classes" value="">创意类别</option>--%>
                                                        <%--<c:forEach items="${classifyList }" var="classify" varStatus="one">--%>
                                                        <%--<option value="${classify.toSelect }">${classify.toSelect }</option>--%>
                                                        <%--</c:forEach>--%>
                                                    </select>
                                                </li>

                                                <li>

                                                    <select id="recommends" style="width:150px;">
                                                        <%--<option id="sizes" value="">尺寸</option>--%>

                                                        <%--<c:forEach items="${sizeList }" var="size" varStatus="one">--%>
                                                        <%--<option value="${size.toSelect }">${size.toSelect }</option>--%>
                                                        <%--</c:forEach>--%>
                                                    </select>
                                                </li>
                                                <li>

                                                    <select id="platforms" style="width:150px;">
                                                        <%--<option id="sizes" value="">尺寸</option>--%>

                                                        <%--<c:forEach items="${sizeList }" var="size" varStatus="one">--%>
                                                        <%--<option value="${size.toSelect }">${size.toSelect }</option>--%>
                                                        <%--</c:forEach>--%>
                                                    </select>
                                                </li>
                                                <li>

                                                    <select id="medias" style="width:150px;">
                                                        <%--<option id="sizes" value="">尺寸</option>--%>

                                                        <%--<c:forEach items="${sizeList }" var="size" varStatus="one">--%>
                                                        <%--<option value="${size.toSelect }">${size.toSelect }</option>--%>
                                                        <%--</c:forEach>--%>
                                                    </select>
                                                </li>

                                                <li onload="typeForm('device')">

                                                    <select id="device" name="device">
                                                        <%--<option id="sizes" value="">尺寸</option>--%>

                                                        <%--<c:forEach items="${sizeList }" var="size" varStatus="one">--%>
                                                        <%--<option value="${size.toSelect }">${size.toSelect }</option>--%>
                                                        <%--</c:forEach>--%>
                                                    </select>
                                                </li>

                                                <li>

                                                    <%--<img src="/assets/images/gallery/thumb-3.jpg" onclick="subForm()" style="cursor:pointer;" />--%>
                                                    <%--<button  onclick="subForm()" >提交</button>--%>
                                                    <button class="btn btn-info" type="button" onclick="subForm()">
                                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                                        Submit
                                                    </button>


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


                                                <%--<th style="width:100px;word-wrap:break-word;">订单</th>--%>


                                                <th width='100' style="word-break: break-all;">尺寸</th>

                                                <th width='100' style="word-break: break-all;">曝光</th>
                                                <th width='100' style="word-break: break-all;">点击</th>
                                                <th width='100' style="word-break: break-all;">点击率</th>
                                                <th width='100' style="word-break: break-all;">转化</th>
                                                <th width='100' style="word-break: break-all;">转化率</th>

                                                <th width='100' style="word-break: break-all;">综合权重</th>


                                            </tr>
                                            </thead>





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


<link rel="stylesheet" href="/assets/css/ace.onpage-help.css" />
<link rel="stylesheet" href="/assets/js/themes/sunburst.css" />

<script src="/assets/js/ace/elements.onpage-help.js"></script>
<script src="/assets/js/ace/ace.onpage-help.js"></script>
<script src="/assets/js/rainbow.js"></script>
<script src="/assets/js/language/generic.js"></script>
<script src="/assets/js/language/html.js"></script>
<script src="/assets/js/language/css.js"></script>
<script src="/assets/js/language/javascript.js"></script>



</body>
</html>

