<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Fin network</title>
<!-- Bootstrap -->
<link href="vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="build/css/custom.min.css" rel="stylesheet">
<link href="css/jquery.auto-complete.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/tabs.css">

<link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
#container {
	position: relative;
	overflow: hidden;
}

.active1 {
	background-color: #52B9FA;
	color: white;
}

.axis {
	font: 10px sans-serif;
}

.axis path, .axis line {
	fill: none;
	stroke: #000;
	shape-rendering: crispEdges;
}
</style>
<link href="c3_js/c3.css" rel="stylesheet">

<!-- Load d3.js and c3.js -->
<script src="https://d3js.org/d3.v5.min.js" charset="utf-8"></script>
<script src="c3_js/c3.min.js"></script>


</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<jsp:include page="menu.jsp" />
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
				</div>
			</div>
			<!-- /top navigation -->
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="row">

					<div class="x_panel">
						<div class="x_title">
							<h2>
								Annual Prospectus Count <span id="cmp_header"></span>
							</h2>
							<ul class="nav navbar-right panel_toolbox">
								<li><a class="collapse-link"><i
										class="fa fa-chevron-up"></i></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<div id="chart"></div>





							<div>
								<div class="x_title">
									<h2>
										Yearly Basis Prospectus Count Over Associated Topic <span
											id="cmp_header"></span>
									</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
									</ul>
									<div class="clearfix"></div>
								</div>

								<div class="x_panel">

									<div class="x_content">

										<div class="" role="tabpanel" data-example-id="togglable-tabs">
											<div class="row">
												<div class="col-md-1">
													<ul class="nav nav-tabs tabs-left">
														<li role="presentation" class="active"><a
															href="#tab_content11"
															onclick="getDataForGivenYear('2002','chart_2002','Graph_for_specific_topic_2002')"
															id="home-tabb" role="tab" data-toggle="tab"
															aria-controls="home" aria-expanded="true">2002</a></li>
														<li role="presentation" class=""><a
															href="#tab_content22"
															onclick="getDataForGivenYear('2003','chart_2003','Graph_for_specific_topic_2003')"
															role="tab" id="profile-tabb" data-toggle="tab"
															aria-controls="profile" aria-expanded="false">2003</a></li>
														<li role="presentation" class=""><a
															href="#tab_content33"
															onclick="getDataForGivenYear('2004','chart_2004','Graph_for_specific_topic_2004')"
															role="tab" id="profile-tabb3" data-toggle="tab"
															aria-controls="profile" aria-expanded="false">2004</a></li>

														<li role="presentation" class=""><a
															href="#tab_content44"
															onclick="getDataForGivenYear('2005','chart_2005','Graph_for_specific_topic_2005')"
															role="tab" id="profile-tabb4" data-toggle="tab"
															aria-controls="profile" aria-expanded="false">2005</a></li>
														<li role="presentation" class=""><a
															href="#tab_content55"
															onclick="getDataForGivenYear('2006','chart_2006','Graph_for_specific_topic_2006')"
															role="tab" id="profile-tabb4" data-toggle="tab"
															aria-controls="profile" aria-expanded="false">2006</a></li>
														<li role="presentation" class=""><a
															href="#tab_content66"
															onclick="getDataForGivenYear('2007','chart_2007','Graph_for_specific_topic_2007')"
															role="tab" id="profile-tabb4" data-toggle="tab"
															aria-controls="profile" aria-expanded="false">2007</a></li>
														<li role="presentation" class=""><a
															href="#tab_content77"
															onclick="getDataForGivenYear('2008','chart_2008','Graph_for_specific_topic_2008')"
															role="tab" id="profile-tabb4" data-toggle="tab"
															aria-controls="profile" aria-expanded="false">2008</a></li>

													</ul>
												</div>

												<div class="col-md-11">
													<div id="myTabContent2" class="tab-content">
														<div role="tabpanel" class="tab-pane fade active in"
															id="tab_content11" aria-labelledby="home-tab">
															<div class="row">
																<div class="col-md-6  col-sm-6 col-xl-6 col-6">
																	<br>
																	<div id="chart_2002"></div>
																</div>
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<div id=Prospectus_of_2002></div>
																	<div style="display: none;" class="x_content"
																		id="Graph_for_specific_topic_2002"></div>
																</div>
															</div>
														</div>
														<div role="tabpanel" class="tab-pane fade"
															id="tab_content22" aria-labelledby="profile-tab">
															<div class="row">
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<br>
																	<div id="chart_2003"></div>

																</div>
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<div id=Prospectus_of_2003></div>

																	<div style="display: none;" class="x_content"
																		id="Graph_for_specific_topic_2003"></div>
																</div>
															</div>
														</div>
														<div role="tabpanel" class="tab-pane fade"
															id="tab_content33" aria-labelledby="profile-tab">
															<div class="row">
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<br>
																	<div id="chart_2004"></div>
																</div>
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<div id=Prospectus_of_2004></div>
																	<div style="display: none;" class="x_content"
																		id="Graph_for_specific_topic_2004"></div>
																</div>
															</div>
														</div>
														<div role="tabpanel" class="tab-pane fade"
															id="tab_content44" aria-labelledby="profile-tab">
															<div class="row">
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<br>
																	<div id="chart_2005"></div>
																</div>
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<div id=Prospectus_of_2005></div>
																	<div style="display: none;" class="x_content"
																		id="Graph_for_specific_topic_2005"></div>
																</div>
															</div>
														</div>
														<div role="tabpanel" class="tab-pane fade"
															id="tab_content55" aria-labelledby="profile-tab">
															<div class="row">
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<br>
																	<div id="chart_2006"></div>
																</div>
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<div id=Prospectus_of_2006></div>
																	<div style="display: none;" class="x_content"
																		id="Graph_for_specific_topic_2006"></div>
																</div>
															</div>
														</div>
														<div role="tabpanel" class="tab-pane fade"
															id="tab_content66" aria-labelledby="profile-tab">
															<div class="row">
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																<br>
																	<div id="chart_2007"></div>
																</div>
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<div id=Prospectus_of_2007></div>
																	<div style="display: none;" class="x_content"
																		id="Graph_for_specific_topic_2007"></div>
																</div>
															</div>
														</div>
														<div role="tabpanel" class="tab-pane fade"
															id="tab_content77" aria-labelledby="profile-tab">
															<div class="row">
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																<br>
																	<div id="chart_2008"></div>
																</div>
																<div class="col-md-6 col-sm-6 col-xl-6 col-6">
																	<div id=Prospectus_of_2008></div>
																	<div style="display: none;" class="x_content"
																		id="Graph_for_specific_topic_2008"></div>
																</div>

															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>


								</div>
							</div>
						</div>

					</div>
				</div>
			</div>




			<!-- footer content -->
			<footer> </footer>
			<!-- /footer content -->
		</div>
	</div>

	<!-- jQuery -->
	<script src="vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>

	<script src="build/js/custom.min.js"></script>
	<script src="js/d3.v4.min.js"></script>
	<script src="js/d3-selection-multi.v1.js"></script>
	<script src="js/TRDF_gt_vizSec51.js"></script>
	<script src="js/TNIC2_viz.js"></script>
	<script src="js/APP_viz.js"></script>

	<script src="js/jquery.auto-complete.min.js"></script>

	<script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<script
		src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script
		src="vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
	<script
		src="vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
	<script
		src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
	<script
		src="vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>




</body>

<script src="js/prospectus.js"></script>

</html>