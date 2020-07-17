<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp"%>
<!-- Styles -->
<style>
#chartdiv {
	width: 100%;
	height: 400px;
}
</style>
<body>
	<div class="container-scroller">
		<!-- Navbar Include -->
		<%@include file="navbar.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<%@include file="sidebar.jsp"%>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title">
							<span class="page-title-icon bg-gradient-primary text-white mr-2">
								<i class="mdi mdi-home"></i>
							</span> Dashboard
						</h3>
					</div>
					<div class="row">
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-danger card-img-holder text-white">
								<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image" />
									<h4 class="font-weight-normal mb-3">
										今月の売り上げ <i
											class="mdi mdi-chart-line mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">$ 15,0000</h2>
									<h6 class="card-text">前月に比べ20%増</h6>
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-info card-img-holder text-white">
								<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image" />
									<h4 class="font-weight-normal mb-3">
										今月の手数料 <i
											class="mdi mdi-cash-usd mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">45,6334</h2>
									<h6 class="card-text">前月に比べ 10%増</h6>
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-success card-img-holder text-white">
								<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image" />
									<h4 class="font-weight-normal mb-3">
										会員数 <i
											class="mdi mdi-account-multiple-plus mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">95,5741</h2>
									<h6 class="card-text">前月に比べ 5%増</h6>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="clearfix">
										<h4 class="card-title float-left">Visit And Sales
											Statistics</h4>
										<div id="chartdiv"
											class="rounded-legend legend-horizontal legend-top-right float-right"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Recent Tickets</h4>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>＃</th>
													<th>ユーザー数</th>
													<th>商品の数</th>
													<th>売り上げ</th>
													<th>手数料</th>
													<th>取引回数</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th>6月</th>
													<td>121名</td>
													<td>70個</td>
													<td><label class="badge badge-gradient-info">13,220￥</label>
													</td>
													<td><label class="badge badge-gradient-danger">942￥</label></td>
													<td><label class="badge badge-gradient-success">91回</label></td>

												</tr>
												<tr>
													<td>7月</td>
													<td>327名</td>
													<td>214個</td>
													<td><label class="badge badge-gradient-info">32,473￥</label>
													</td>
													<td><label class="badge badge-gradient-danger">2,417￥</label></td>
													<td><label class="badge badge-gradient-success">471回</label></td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">人気商品</h4>
									<div class="d-flex">
										<div
											class="d-flex align-items-center text-muted font-weight-light">
											<i class="mdi mdi-clock icon-sm mr-2"></i> <span>2020年6月</span>
										</div>
									</div>
									<div class="row mt-3">
										<div class="col-6 pr-1">
											<img src="/resources/assets/images/dashboard/img_1.jpg"
												class="mb-2 mw-100 w-100 rounded" alt="image"> <img
												src="/resources/assets/images/dashboard/img_4.jpg"
												class="mw-100 w-100 rounded" alt="image">
										</div>
										<div class="col-6 pl-1">
											<img src="/resources/assets/images/dashboard/img_2.jpg"
												class="mb-2 mw-100 w-100 rounded" alt="image"> <img
												src="/resources/assets/images/dashboard/img_3.jpg"
												class="mw-100 w-100 rounded" alt="image">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Todo</h4>
									<div class="add-items d-flex">
										<input type="text" class="form-control todo-list-input"
											placeholder="What do you need to do today?">
										<button
											class="add btn btn-gradient-primary font-weight-bold todo-list-add-btn"
											id="add-task">Add</button>
									</div>
									<div class="list-wrapper">
										<ul
											class="d-flex flex-column-reverse todo-list todo-list-custom">
											<li>
												<div class="form-check">
													<label class="form-check-label"> <input
														class="checkbox" type="checkbox"> 商品の点検
													</label>
												</div> <i class="remove mdi mdi-close-circle-outline"></i>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<%@include file="footer.jsp"%>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	<!-- Resources -->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
		am4core
				.ready(function() {

					// Themes begin
					am4core.useTheme(am4themes_animated);
					// Themes end

					var chart = am4core.create("chartdiv", am4charts.XYChart);
					chart.paddingRight = 20;
					var data = [];
					var visits = 10;
					var previousValue;

					for (var i = 0; i < 100; i++) {
						visits += Math.round((Math.random() < 0.5 ? 1 : -1)
								* Math.random() * 10); //visit 데이터

						if (i > 0) {
							// add color to previous data item depending on whether current value is less or more than previous value
							if (previousValue <= visits) {
								data[i - 1].color = chart.colors.getIndex(0);
							} else {
								data[i - 1].color = chart.colors.getIndex(5);
							}
						}

						data.push({
							date : new Date(2018, 0, i + 1),
							value : visits
						}); // 날짜
						previousValue = visits;
					}

					chart.data = data;

					var dateAxis = chart.xAxes.push(new am4charts.DateAxis());
					dateAxis.renderer.grid.template.location = 0;
					dateAxis.renderer.axisFills.template.disabled = true;
					dateAxis.renderer.ticks.template.disabled = true;

					var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
					valueAxis.tooltip.disabled = true;
					valueAxis.renderer.minWidth = 35;
					valueAxis.renderer.axisFills.template.disabled = true;
					valueAxis.renderer.ticks.template.disabled = true;

					var series = chart.series.push(new am4charts.LineSeries());
					series.dataFields.dateX = "date"; //날짜 X측 변수
					series.dataFields.valueY = "value"; //Y축 값
					series.strokeWidth = 2;
					series.tooltipText = "value: {valueY}, day change: {valueY.previousChange}";

					// set stroke property field
					series.propertyFields.stroke = "color";

					chart.cursor = new am4charts.XYCursor();

					var scrollbarX = new am4core.Scrollbar();
					chart.scrollbarX = scrollbarX;

					dateAxis.start = 0.7;
					dateAxis.keepSelection = true;

				}); // end am4core.ready()
	</script>
</body>
</html>