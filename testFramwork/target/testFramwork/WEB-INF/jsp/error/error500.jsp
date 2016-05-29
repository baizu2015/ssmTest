<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="main-content">
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
				<li class="active">Error 500</li>
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
									<i class="icon-random"></i>
									500
								</span>
								Something Went Wrong
							</h1>

							<hr />
							<h3 class="lighter smaller">
								But we are working
								<i class="icon-wrench icon-animated-wrench bigger-125"></i>
								on it!
							</h3>

							<div class="space"></div>

							<div>
								<h4 class="lighter smaller">Meanwhile, try one of the following:</h4>

								<ul class="list-unstyled spaced inline bigger-110 margin-15">
									<li>
										<i class="icon-hand-right blue"></i>
										Read the faq
									</li>

									<li>
										<i class="icon-hand-right blue"></i>
										Give us more info on how this specific error occurred!
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
					</div>

					<!-- PAGE CONTENT ENDS -->
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.page-content -->
	</div><!-- /.main-content -->

	<div class="ace-settings-container" id="ace-settings-container">
		<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
			<i class="icon-cog bigger-150"></i>
		</div>

		<div class="ace-settings-box" id="ace-settings-box">
			<div>
				<div class="pull-left">
					<select id="skin-colorpicker" class="hide">
						<option data-skin="default" value="#438EB9">#438EB9</option>
						<option data-skin="skin-1" value="#222A2D">#222A2D</option>
						<option data-skin="skin-2" value="#C6487E">#C6487E</option>
						<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
					</select>
				</div>
				<span>&nbsp; Choose Skin</span>
			</div>

			<div>
				<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
				<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
			</div>

			<div>
				<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
				<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
			</div>

			<div>
				<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
				<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
			</div>

			<div>
				<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
				<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
			</div>

			<div>
				<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
				<label class="lbl" for="ace-settings-add-container">
					Inside
					<b>.container</b>
				</label>
			</div>
		</div>
	</div><!-- /#ace-settings-container -->
</div>