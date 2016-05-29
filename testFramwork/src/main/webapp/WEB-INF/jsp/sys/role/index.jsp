<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色管理</title>
<link href="${ pageContext.request.contextPath }/script/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/script/assets/css/font-awesome.min.css" />


<link rel="stylesheet" href="${ pageContext.request.contextPath }/script/assets/css/ace.min.css" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/script/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/script/assets/css/ace-skins.min.css" />

<style type="text/css">
	.isShow{
		display:block;
	}
</style>
<script src="${ pageContext.request.contextPath }/script/assets/js/ace-extra.min.js"></script>
</head>
<body>
	<input type="hidden" value="${ pageContext.request.contextPath }" id="pageUrl">
		<!-- 导航栏 -->
	<jsp:include page="../sys/_nav.jsp"></jsp:include>
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try{ace.settings.check('main-container' , 'fixed')}catch(e){}
		</script>

		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>

			<!-- sidebar -->
			<jsp:include page="../sys/_left.jsp"></jsp:include>

			<div class="main-content" id="maincontent">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>
					<ul class="breadcrumb">
						<li>
							<i class="icon-home home-icon"></i>
							<a href="#">主页</a>
						</li>
	
						<li class="active">
							角色管理
						</li>
					</ul><!-- .breadcrumb -->
				</div>
				<div class="page-content">
					<div class="page-header">
						<h1>
							Tables
							<small>
								<i class="icon-double-angle-right"></i>
								Static &amp; Dynamic Tables
							</small>
						</h1>
					</div><!-- /.page-header -->
					<div class="row">
						<div class="col-xs-12">
							<h3 class="header smaller lighter blue">jQuery dataTables</h3>
							<div class="table-header">
								Results for "Latest Registered Domains"
							</div>
							<div class="table-responsive">
								<table id="sample-table-2" class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th class="center">
												<label>
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</th>
											<th>角色名称</th>
											<th>角色编码</th>
											<th class="hidden-480">Clicks</th>

											<th>
												<i class="icon-time bigger-110 hidden-480"></i>
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
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>
	
											<td>
												<a href="#">app.com</a>
											</td>
											<td>$45</td>
											<td class="hidden-480">3,330</td>
											<td>Feb 12</td>
	
											<td class="hidden-480">
												<span class="label label-sm label-warning">Expiring</span>
											</td>
	
											<td>
												<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="icon-zoom-in bigger-130"></i>
													</a>
	
													<a class="green" href="#">
														<i class="icon-pencil bigger-130"></i>
													</a>
	
													<a class="red" href="#">
														<i class="icon-trash bigger-130"></i>
													</a>
												</div>
	
												<div class="visible-xs visible-sm hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
															<i class="icon-caret-down icon-only bigger-120"></i>
														</button>
	
														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																	<span class="blue">
																		<i class="icon-zoom-in bigger-120"></i>
																	</span>
																</a>
															</li>
	
															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																	<span class="green">
																		<i class="icon-edit bigger-120"></i>
																	</span>
																</a>
															</li>
	
															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																	<span class="red">
																		<i class="icon-trash bigger-120"></i>
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
						</div>
					</div>
				</div>
			</div><!-- /.main-content -->
		</div><!-- /.main-container-inner -->
	</div><!-- /.main-container -->
	<script src="${ pageContext.request.contextPath }/script/assets/js/jquery-2.0.3.min.js"></script>
	<script src="${ pageContext.request.contextPath }/script/assets/js/bootstrap.min.js"></script>

	<script src="${ pageContext.request.contextPath }/script/assets/js/ace-elements.min.js"></script>
	<script src="${ pageContext.request.contextPath }/script/assets/js/ace.min.js"></script>
	<script src="${ pageContext.request.contextPath }/script/assets/js/sidebar-menu.js"></script>

	<script type="text/javascript">
		$(function () {
		      $('#menu').sidebarMenu({
		    	  url:$("#pageUrl").val()+"/home/menu",
		    	  isShow:"roleindex"
		      })
	    });
	</script>
</body>
</html>