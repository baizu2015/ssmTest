<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="sidebar" id="sidebar">
		<script type="text/javascript">
			try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
		</script>

		<ul class="nav nav-list" id="menu">
			<li class="active">
				<a href="${ pageContext.request.contextPath }">
					<i class="icon-dashboard"></i>
					<span class="menu-text"> 控制台 </span>
				</a>
			</li>
		</ul><!-- /.nav-list -->

		<div class="sidebar-collapse" id="sidebar-collapse">
			<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
		</div>

		<script type="text/javascript">
			try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
		</script>
	</div>