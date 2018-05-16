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
  <link rel="stylesheet" href="assets/css/ace-skins.min.css" />

  <!--[if lte IE 8]>
  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
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
                    <ul class="nav nav-tabs" id="selectadv">



                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          广告主
                          <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu dropdown-info">
                          <li>
                            <a data-toggle="tab" href="#dropdown1">@fat</a>
                          </li>

                          <li>
                            <a data-toggle="tab" href="#dropdown2">@mdo</a>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          行业
                          <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu dropdown-info">
                          <li>
                            <a data-toggle="tab" href="#dropdown1">@fat</a>
                          </li>

                          <li>
                            <a data-toggle="tab" href="#dropdown2">@mdo</a>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          尺寸
                          <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu dropdown-info">
                          <li>
                            <a data-toggle="tab" href="#dropdown1">@fat</a>
                          </li>

                          <li>
                            <a data-toggle="tab" href="#dropdown2">@mdo</a>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          创意分类
                          <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu dropdown-info">
                          <li>
                            <a data-toggle="tab" href="#dropdown1">@fat</a>
                          </li>

                          <li>
                            <a data-toggle="tab" href="#dropdown2">@mdo</a>
                          </li>
                        </ul>
                      </li>
                    </ul>

                    <div class="table-header">
                      Results for Last 90 Day Creative Data
                    </div>

                    <table id="table_report2" class="table table-striped table-bordered table-hover">
                      <thead>
                      <tr>
                        <th class="center">
                          <label>
                            <input type="checkbox" />
                            <span class="lbl"></span>
                          </label>
                        </th>
                        <th>Domain</th>
                        <th>Price</th>
                        <th>Price</th>
                        <th class="hidden-480">Clicks</th>

                        <th class="hidden-phone">
                          <i class="icon-time hidden-phone"></i>
                          Update
                        </th>
                        <th class="hidden-480">Status</th>

                        <th></th>
                      </tr>
                      </thead>

                      <tbody>
                      <tr>
                        <td class="center">
                          <label>
                            <input type="checkbox" />
                            <span class="lbl"></span>
                          </label>
                        </td>

                        <td>

                          <a href="assets/images/gallery/image-2.jpg" data-rel="colorbox">
                            <img alt="15x15" src="assets/images/gallery/thumb-2.jpg" />
                            <!--<div class="text">-->
                            <!--<div class="inner">Sample Caption on Hover</div>-->
                            <!--</div>-->
                          </a>

                        </td>
                        <td>$45</td>
                        <td class="hidden-480">3,330</td>
                        <td class="hidden-phone">Feb 12</td>


                        <td class="hidden-480">
                          <span class="label label-warning">Expiring</span>
                        </td>

                        <td class="td-actions">
                          <div class="hidden-phone visible-desktop btn-group">
                            <button class="btn btn-mini btn-success">
                              <i class="icon-ok bigger-120"></i>
                            </button>

                            <button class="btn btn-mini btn-info">
                              <i class="icon-edit bigger-120"></i>
                            </button>

                            <button class="btn btn-mini btn-danger">
                              <i class="icon-trash bigger-120"></i>
                            </button>

                            <button class="btn btn-mini btn-warning">
                              <i class="icon-flag bigger-120"></i>
                            </button>
                          </div>

                          <div class="hidden-desktop visible-phone">
                            <div class="inline position-relative">
                              <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                                <i class="icon-caret-down icon-only bigger-120"></i>
                              </button>

                              <ul class="dropdown-menu dropdown-icon-only dropdown-yellow pull-right dropdown-caret dropdown-close">
                                <li>
                                  <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit" data-placement="left">
																<span class="green">
																	<i class="icon-edit"></i>
																</span>
                                  </a>
                                </li>

                                <li>
                                  <a href="#" class="tooltip-warning" data-rel="tooltip" title="Flag" data-placement="left">
																<span class="blue">
																	<i class="icon-flag"></i>
																</span>
                                  </a>
                                </li>

                                <li>
                                  <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete" data-placement="left">
																<span class="red">
																	<i class="icon-trash"></i>
																</span>
                                  </a>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </td>
                      </tr>


                      </tbody>
                    </table>
                  </div>

                  <!--PAGE CONTENT ENDS HERE-->
                </div><!--/row-->
              </div>

              <div id="home2" class="tab-pane in active">
                <div class="row-fluid">
                  <!--PAGE CONTENT BEGINS HERE-->



                  <div >
                    <ul class="nav nav-tabs" id="myTab2">



                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          广告主
                          <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu dropdown-info">
                          <li>
                            <a data-toggle="tab" href="#dropdown1">@fat</a>
                          </li>

                          <li>
                            <a data-toggle="tab" href="#dropdown2">@mdo</a>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          行业
                          <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu dropdown-info">
                          <li>
                            <a data-toggle="tab" href="#dropdown1">@fat</a>
                          </li>

                          <li>
                            <a data-toggle="tab" href="#dropdown2">@mdo</a>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          尺寸
                          <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu dropdown-info">
                          <li>
                            <a data-toggle="tab" href="#dropdown1">@fat</a>
                          </li>

                          <li>
                            <a data-toggle="tab" href="#dropdown2">@mdo</a>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          创意分类
                          <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu dropdown-info">
                          <li>
                            <a data-toggle="tab" href="#dropdown1">@fat</a>
                          </li>

                          <li>
                            <a data-toggle="tab" href="#dropdown2">@mdo</a>
                          </li>
                        </ul>
                      </li>
                    </ul>

                    <div class="table-header">
                      Results for Last 90 Day Creative Data
                    </div>

                    <table id="table_report" class="table table-striped table-bordered table-hover">
                      <thead>
                      <tr>
                        <th class="center">
                          <label>
                            <input type="checkbox" />
                            <span class="lbl"></span>
                          </label>
                        </th>
                        <th>Domain</th>
                        <th>Price</th>
                        <th>Price</th>
                        <th class="hidden-480">Clicks</th>

                        <th class="hidden-phone">
                          <i class="icon-time hidden-phone"></i>
                          Update
                        </th>
                        <th class="hidden-480">Status</th>

                        <th></th>
                      </tr>
                      </thead>

                      <tbody>
                      <tr>
                        <td class="center">
                          <label>
                            <input type="checkbox" />
                            <span class="lbl"></span>
                          </label>
                        </td>

                        <td>

                          <a href="assets/images/gallery/image-2.jpg" data-rel="colorbox">
                            <img alt="15x15" src="assets/images/gallery/thumb-2.jpg" />
                            <!--<div class="text">-->
                            <!--<div class="inner">Sample Caption on Hover</div>-->
                            <!--</div>-->
                          </a>

                        </td>
                        <td>$45</td>
                        <td class="hidden-480">3,330</td>
                        <td class="hidden-phone">Feb 12</td>


                        <td class="hidden-480">
                          <span class="label label-warning">Expiring</span>
                        </td>

                        <td class="td-actions">
                          <div class="hidden-phone visible-desktop btn-group">
                            <button class="btn btn-mini btn-success">
                              <i class="icon-ok bigger-120"></i>
                            </button>

                            <button class="btn btn-mini btn-info">
                              <i class="icon-edit bigger-120"></i>
                            </button>

                            <button class="btn btn-mini btn-danger">
                              <i class="icon-trash bigger-120"></i>
                            </button>

                            <button class="btn btn-mini btn-warning">
                              <i class="icon-flag bigger-120"></i>
                            </button>
                          </div>

                          <div class="hidden-desktop visible-phone">
                            <div class="inline position-relative">
                              <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                                <i class="icon-caret-down icon-only bigger-120"></i>
                              </button>

                              <ul class="dropdown-menu dropdown-icon-only dropdown-yellow pull-right dropdown-caret dropdown-close">
                                <li>
                                  <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit" data-placement="left">
																<span class="green">
																	<i class="icon-edit"></i>
																</span>
                                  </a>
                                </li>

                                <li>
                                  <a href="#" class="tooltip-warning" data-rel="tooltip" title="Flag" data-placement="left">
																<span class="blue">
																	<i class="icon-flag"></i>
																</span>
                                  </a>
                                </li>

                                <li>
                                  <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete" data-placement="left">
																<span class="red">
																	<i class="icon-trash"></i>
																</span>
                                  </a>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </td>
                      </tr>


                      </tbody>
                    </table>
                  </div>

                  <!--PAGE CONTENT ENDS HERE-->
                </div><!--/row-->
              </div>

            </div>
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
  window.jQuery || document.write("<script src='assets/js/jquery-1.9.1.min.js'>"+"<"+"/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>

<!--page specific plugin scripts-->

<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>

<!--ace scripts-->

<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

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

