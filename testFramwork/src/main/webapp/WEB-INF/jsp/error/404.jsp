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
<script src="${ pageContext.request.contextPath }/script/assets/js/ace-extra.min.js"></script>
</head>
<body>
	<input type="hidden" value="${ pageContext.request.contextPath }" id="pageUrl">
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
							<a href="#">Home</a>
						</li>

						<li>
							<a href="#">Other Pages</a>
						</li>
						<li class="active">Error 404</li>
					</ul><!-- .breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="icon-search nav-search-icon"></i>
							</span>
						</form>
					</div><!-- #nav-search -->
				</div>

				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="error-container">
								<div class="well">
									<h1 class="grey lighter smaller">
										<span class="blue bigger-125">
											<i class="icon-sitemap"></i>
											404
										</span>
										Page Not Found
									</h1>

									<hr />
									<h3 class="lighter smaller">We looked everywhere but we couldn't find it!</h3>

									<div>
										<form class="form-search">
											<span class="input-icon align-middle">
												<i class="icon-search"></i>

												<input type="text" class="search-query" placeholder="Give it a search..." />
											</span>
											<button class="btn btn-sm" onclick="return false;">Go!</button>
										</form>

										<div class="space"></div>
										<h4 class="smaller">Try one of the following:</h4>

										<ul class="list-unstyled spaced inline bigger-110 margin-15">
											<li>
												<i class="icon-hand-right blue"></i>
												Re-check the url for typos
											</li>

											<li>
												<i class="icon-hand-right blue"></i>
												Read the faq
											</li>

											<li>
												<i class="icon-hand-right blue"></i>
												Tell us about it
											</li>
										</ul>
									</div>

									<hr />
									<div class="space"></div>

									<div class="center">
										<a href="#" class="btn btn-grey">
											<i class="icon-arrow-left"></i>
											Go Back
										</a>

										<a href="#" class="btn btn-primary">
											<i class="icon-dashboard"></i>
											Dashboard
										</a>
									</div>
								</div>
							</div><!-- PAGE CONTENT ENDS -->
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container-inner -->
	</div><!-- /.main-container -->
<script src="${ pageContext.request.contextPath }/script/assets/js/jquery-2.0.3.min.js"></script>
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