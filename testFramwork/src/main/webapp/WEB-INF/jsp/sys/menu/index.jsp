<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单管理</title>
<link href="${ pageContext.request.contextPath }/script/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/script/assets/css/font-awesome.min.css" />


<link rel="stylesheet" href="${ pageContext.request.contextPath }/script/assets/css/ace.min.css" />

</head>
<body>
	<input type="hidden" value="${ pageContext.request.contextPath }" id="pageUrl">
		<!-- 导航栏 -->
	<jsp:include page="../_nav.jsp"></jsp:include>
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try{ace.settings.check('main-container' , 'fixed')}catch(e){}
		</script>

		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>

			<!-- sidebar -->
			<jsp:include page="../_left.jsp"></jsp:include>

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
							系统管理</a>
						</li>
						<li class="active">菜单管理</li>
					</ul><!-- .breadcrumb -->
				</div>
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<div class="table-header">
								菜单管理
							</div>
							<div class="table-responsive">
								<table id="menulistTable" class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th class="center">
												<label>
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</th>
											<th>菜单名称</th>
											<th>菜单编号</th>
											<th>菜单地址</th>

											<th>
												菜单父级编号
											</th>
											<th class="hidden-480">菜单图表</th>

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
														<i class="icon-zoom-in bigger-130" title="查看详情"></i>
													</a>
	
													<a class="green" href="#">
														<i class="icon-pencil bigger-130" title="修改"></i>
													</a>
	
													<a class="red" href="#">
														<i class="icon-trash bigger-130" title="删除"></i>
													</a>
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
	
	<script src="${ pageContext.request.contextPath }/script/assets/js/jquery.dataTables.min.js"></script>
	<script src="${ pageContext.request.contextPath }/script/assets/js/jquery.dataTables.bootstrap.js"></script>

	<script src="${ pageContext.request.contextPath }/script/assets/js/ace.min.js"></script>
	<script src="${ pageContext.request.contextPath }/script/assets/js/sidebar-menu.js"></script>

	<script type="text/javascript">
		$(function () {
		      $('#menu').sidebarMenu({
		    	  url:$("#pageUrl").val()+"/home/menu",
		    	  isShow:"menuindex"
		      })
	    });
		var add = function(){
			$("#myModal").modal("show");
		}
		jQuery(function($) {
			$('#menulistTable').dataTable( {
			"sAjaxSource": $("#pageUrl").val()+"/menu/list",
			"aoColumns": [
		      { "sClass": "center","fnRender":function(data){
		    	  var chkHtml = "<label>";
		    	  chkHtml +='<input type="checkbox" class="ace" value="'+data.aData.id+'" />';
					chkHtml += '<span class="lbl"></span>';
					chkHtml += '</label>';
				return chkHtml;
		      }},
		      {"fnRender":function(data,type,row){
		    	  return data.aData.moduleName
		    	
		      }},
		      {"fnRender":function(data,type,row){
		    	  return data.aData.moduleCode
		      }},
		      {"fnRender":function(data,type,row){
		    	  return !!data.aData.moduleUrl?data.aData.moduleUrl:"";
		      }},
		      {"fnRender":function(data,type,row){
		    	  return !!data.aData.moduleParentCode ? data.aData.moduleParentCode:""
		      }}, 
		      {"sClass": "center","fnRender":function(data,type,row){
		    	  var strIcon = "";
		    	  strIcon = "<span class='"+data.aData.moduleIcon+"'></span>";
		    	  return strIcon;
		      }},
			  { "mDataProp":"id","fnRender":function(data){
				  var strHtml = '<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">';
				  strHtml +='<a class="blue" href="javascript:add()">'
				  strHtml +=	'<i class="icon-zoom-in bigger-130" title="查看详情"></i>'
				  strHtml +='</a>'

				  strHtml +='<a class="green" href="#">'
				  strHtml +='<i class="icon-pencil bigger-130" title="修改"></i>'
						strHtml +='</a>'

						strHtml +='<a class="red" href="#">'
						strHtml +=	'<i class="icon-trash bigger-130" title="删除"></i>'
						strHtml +='</a>'
						strHtml +='</div>'
					return strHtml;
			  }}
			],
			"aoColumnDefs" : [ {
		        sDefaultContent : '',
		        aTargets : [ '_all' ]
		    } ],
		    "bSort": false, 
		    "bFilter": false,
			"oLanguage":{
			 	"sLengthMenu" : "每页显示 _MENU_ 条记录",
				"sProcessing" : "正在加载中......",
				"sInfo" : "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
				"oPaginate" : {
                    "sFirst" : "首页",
                    "sPrevious" : "上一页",
                    "sNext" : "下一页",
                    "sLast" : "末页"
                }
			}
			});
			
			
			$('table th input:checkbox').on('click' , function(){
				var that = this;
				$(this).closest('table').find('tr > td:first-child input:checkbox')
				.each(function(){
					this.checked = that.checked;
					$(this).closest('tr').toggleClass('selected');
				});
					
			});
		})
	</script>
</body>
</html>