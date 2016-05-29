<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息管理</title>
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
	
						<li>
							<a href="javascript:void(0)">
							角色管理</a>
						</li>
						<li class="active">用户信息管理</li>
					</ul><!-- .breadcrumb -->
				</div>
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<div class="table-header">
								用户信息管理
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
											<th>用户名称</th>
											<th>用户登录名称</th>
											<th class="hidden-480">身份证号</th>

											<th>
												<i class="icon-time bigger-110 hidden-480"></i>
												修改时间
											</th>
											<th class="hidden-480">状态</th>

											<th>操作</th>
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
													<a class="blue" href="javascript:add()">
														<i class="icon-plus-sign bigger-130"></i>
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
																<a href="#" class="tooltip-info" data-rel="tooltip" title="Add">
																	<span class="blue">
																		<i class="icon-plus-sign bigger-120"></i>
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
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" 
	               data-dismiss="modal" aria-hidden="true">
	                  &times;
	            </button>
	            <h4 class="modal-title" id="myModalLabel">
	               	添加用户信息
	            </h4>
	         </div>
	         <form class="form-horizontal" role="form">
		         <div class="modal-body">
		           	<div class="form-group">
				      <label for="firstname" class="col-sm-2 control-label">用户名称</label>
				      <div class="col-sm-10">
				         <input type="text" class="form-control" id="firstname" 
				            placeholder="请输入名字">
				      </div>
				   </div>
				   <div class="form-group">
				      <label for="lastname" class="col-sm-2 control-label">密码</label>
				      <div class="col-sm-10">
				         <input type="text" class="form-control" id="lastname" 
				            placeholder="请输入姓">
				      </div>
				   </div>
				 </div>
		         <div class="modal-footer">
		            <button type="button" class="btn btn-default" 
		               data-dismiss="modal">关闭
		            </button>
		            <button type="button" class="btn btn-primary">
		               	提交更改
		            </button>
		         </div>
         	</form>
	      </div><!-- /.modal-content -->
	</div><!-- /.modal -->

	<script src="${ pageContext.request.contextPath }/script/assets/js/jquery-2.0.3.min.js"></script>
	<script src="${ pageContext.request.contextPath }/script/assets/js/bootstrap.min.js"></script>

	<script src="${ pageContext.request.contextPath }/script/assets/js/ace-elements.min.js"></script>
	<script src="${ pageContext.request.contextPath }/script/assets/js/ace.min.js"></script>
	<script src="${ pageContext.request.contextPath }/script/assets/js/sidebar-menu.js"></script>

	<script type="text/javascript">
		$(function () {
		      $('#menu').sidebarMenu({
		    	  url:$("#pageUrl").val()+"/home/menu",
		    	  isShow:"userindex"
		      })
	    });
		var add = function(){
			$("#myModal").modal("show");
		}
	</script>
</body>
</html>