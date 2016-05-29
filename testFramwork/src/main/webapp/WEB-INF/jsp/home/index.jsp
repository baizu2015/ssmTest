<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${ pageContext.request.contextPath }/script/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/script/assets/css/font-awesome.min.css" />


<link rel="stylesheet" href="${ pageContext.request.contextPath }/script/assets/css/ace.min.css" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/script/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/script/assets/css/ace-skins.min.css" />


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
			    	  url:$("#pageUrl").val()+"/home/menu"
			      })
		    });
		</script>
</body>
</html>