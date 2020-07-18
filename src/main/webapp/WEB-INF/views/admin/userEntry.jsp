<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%@include file="header.jsp"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/modal.css">
<style type="text/css">
#chartdiv {
	width: 100%;
	height: 500px;
}
</style>
<body>
	<div class="container-scroller">
		<%@include file="navbar.jsp"%>
		<div class="container-fluid page-body-wrapper">
			<%@include file="sidebar.jsp"%>
			<div class="main-panel">
				<div class="content-wrapper">
					<!-- 내부내용 -->
					<div class="row">
						<div class="col-md-6 stretch-card grid-margin">
							<div class="card bg-gradient-danger card-img-holder text-white">
								<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image" />
									<h4 class="font-weight-normal mb-3">
										総販売価格 <i class="mdi mdi-chart-line mdi-24px float-right"></i>
									</h4>
									<h2>￥ 15,000</h2>
									<a href="#" class="btn trigger" style="padding: 0;"><button
											type="button" class="btn btn-inverse-info btn-fw">手数料を見る</button></a>
								</div>
							</div>
						</div>
						<div class="col-md-6 stretch-card grid-margin">
							<div class="card bg-gradient-info card-img-holder text-white">
								<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image" />
									<h4 class="font-weight-normal mb-3">
										一番売った人 <i class="mdi mdi-cash-usd mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">林様 ・ 27個売り</h2>
								</div>
							</div>
						</div>
					</div>
					<!-- 수수료 -->
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">全体情報・状態</h4>
								<table class="table table-hover">
									<thead>
										<tr>
											<th>ユーザーコード</th>
											<th>商品コード</th>
											<th>商品写真</th>
											<th>価格</th>
											<th>登録日</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a href="#" id="trigger" onclick="openmodal(this);"
												style="border: 0; margin: 0; display: inherit;">A0000124</a></td>
											<td></td>
											<td></td>
											<td class="text-danger">28.76% <i
												class="mdi mdi-arrow-down"></i></td>
											<td><label class="badge badge-danger">Pending</label></td>
										</tr>
										<tr>
											<td>Messsy</td>
											<td>Flash</td>
											<td></td>
											<td class="text-danger">21.06% <i
												class="mdi mdi-arrow-down"></i></td>
											<td><label class="badge badge-warning">In
													progress</label></td>
										</tr>
										<tr>
											<td>John</td>
											<td>Premier</td>
											<td></td>
											<td class="text-danger">35.00% <i
												class="mdi mdi-arrow-down"></i></td>
											<td><label class="badge badge-info">Fixed</label></td>
										</tr>
										<tr>
											<td>Peter</td>
											<td>After effects</td>
											<td></td>
											<td class="text-success">82.00% <i
												class="mdi mdi-arrow-up"></i></td>
											<td><label class="badge badge-success">Completed</label></td>
										</tr>
										<tr>
											<td>Dave</td>
											<td>53275535</td>
											<td></td>
											<td class="text-success">98.05% <i
												class="mdi mdi-arrow-up"></i></td>
											<td><label class="badge badge-warning">In
													progress</label></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal-wrapper">
		<div class="modal" style="overflow: scroll;">
			<div class="head" style="position: relative;">
				<div class="container"
					style="text-align: right; position: absolute; top: -2px; right: 3px;">
					<i class="fa fa-times fa-fw fa-2x" id="close"></i>
				</div>
			</div>
			<div class="content">
				<div class="good-job">
					<div class="row">
						<div class="col-md-12 stretch-card grid-margin">
							<div class="card bg-gradient-danger card-img-holder text-white">
								<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image" />
									<h2 style="display: inline-block;">
										<strong>総手数料：</strong>￥<span>24,144</span>
									</h2>
									<i class="mdi mdi-chart-line mdi-24px float-right"></i>
								</div>
							</div>
						</div>
						<div class="container" style="text-align: center;">
							<p style="color: green">手数料 TOP8</p>
						</div>
						<div id="chartdiv"></div>
					</div>
				</div>
			</div>
			<div class="container mb-5" style="text-align: right">
				<button type="button" class="btn btn-gradient-danger" id="close2">閉める</button>
			</div>
		</div>
	</div>

	<!-- USERNFO MODAL - click usercode -->
	<!-- Modal -->
	<div class="modal-wrapper2">
		<div class="modal" style="overflow: scroll;">
			<div class="head" style="position: relative;">
				<div class="container"
					style="text-align: right; position: absolute; top: -2px; right: 3px;">
					<i class="fa fa-times fa-fw fa-2x" id="dojirus"></i>
				</div>
			</div>
			<div class="content">
				<div class="good-job">
					<div class="row">
						<div class="col-md-12 stretch-card">
							<div class="card bg-gradient-success card-img-holder text-white">
								<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image" />
									<h2 style="display: inline-block;">
										<strong>取引回数：</strong><span>214回</span>
									</h2>

									<i class="mdi mdi-chart-line mdi-24px float-right"></i>
								</div>
							</div>
						</div>

						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">A0000124様の情報</h4>
									<table class="table table-striped">
										<thead>
											<tr>
												<th>名前</th>
												<th>コード</th>
												<th>商品登録数</th>
												<th>売り上げ</th>
												<th>手数料</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>小林</td>
												<td>A0000124</td>
												<td>15回</td>
												<td>26万円</td>
												<td><label class="badge badge-danger">2万6千円</label></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container mb-5" style="text-align: right">
				<button type="button" class="btn btn-gradient-danger" id="dojiru">閉める</button>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.trigger').on('click', function() {
				$('.modal-wrapper').toggleClass('open');
				$('.page-wrapper').toggleClass('blur-it');
				return false;
			});
			$("#close").on("click",function() {
				$(".modal-wrapper").removeClass("open");
			})
			$("#close2").on("click",function() {
				$(".modal-wrapper").removeClass("open");
			})
			
		});
		
		$(function(){
			$('#trigger').on('click', function() {
				$('.modal-wrapper2').toggleClass('open');
				$('.page-wrapper').toggleClass('blur-it');
				return false;
			});
			$("#dojirus").on("click",function() {
				$(".modal-wrapper2").removeClass("open");
			})
			$("#dojiru").on("click",function() {
				$(".modal-wrapper2").removeClass("open");
			})
		})
		
	
		
			function openmodal(usercode){
				var userid = usercode.innerText;
				$.ajax({
					url : "/admin/info",
					type : 'POST',
					data : JSON.stringify({
						"userid" : userid,
					}),
					contentType : "application/json; charset=UTF-8",
					processData : false,
					success : function(res) {
						
						console.log(res.info);
					},
					error : function(req, status, error) {
						console.log(error);
					}
				})
				
			}	
		
	</script>
	<!-- Resources -->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
	<script>
	am4core.ready(function() {

		// Themes begin
		am4core.useTheme(am4themes_animated);
		// Themes end

		var chart = am4core.create("chartdiv", am4charts.XYChart);
		chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

		chart.data = [
		  {
		    country: "小林",
		    visits: 10000
		  },
		  {
		    country: "石上",
		    visits: 7082
		  },
		  {
		    country: "紅葉",
		    visits: 1809
		  },
		  {
		    country: "林",
		    visits: 1322
		  },
		  {
		    country: "八幡",
		    visits: 1122
		  },
		  {
		    country: "雪ノ下",
		    visits: 1114
		  },
		  {
		    country: "山田",
		    visits: 984
		  },
		  {
		    country: "肺一郎",
		    visits: 711
		  }
		];

		var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
		categoryAxis.renderer.grid.template.location = 0;
		categoryAxis.dataFields.category = "country";
		categoryAxis.renderer.minGridDistance = 40;
		categoryAxis.fontSize = 11;

		var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
		valueAxis.min = 0;
		valueAxis.max = 15000;
		valueAxis.strictMinMax = true;
		valueAxis.renderer.minGridDistance = 30;
		// axis break
		var axisBreak = valueAxis.axisBreaks.create();
		axisBreak.startValue = 2100;
		axisBreak.endValue = 6000;
		//axisBreak.breakSize = 0.005;

		// fixed axis break
		var d = (axisBreak.endValue - axisBreak.startValue) / (valueAxis.max - valueAxis.min);
		axisBreak.breakSize = 0.05 * (1 - d) / d; // 0.05 means that the break will take 5% of the total value axis height

		// make break expand on hover
		var hoverState = axisBreak.states.create("hover");
		hoverState.properties.breakSize = 1;
		hoverState.properties.opacity = 0.1;
		hoverState.transitionDuration = 1500;

		axisBreak.defaultState.transitionDuration = 1000;
		/*
		// this is exactly the same, but with events
		axisBreak.events.on("over", function() {
		  axisBreak.animate(
		    [{ property: "breakSize", to: 1 }, { property: "opacity", to: 0.1 }],
		    1500,
		    am4core.ease.sinOut
		  );
		});
		axisBreak.events.on("out", function() {
		  axisBreak.animate(
		    [{ property: "breakSize", to: 0.005 }, { property: "opacity", to: 1 }],
		    1000,
		    am4core.ease.quadOut
		  );
		});*/

		var series = chart.series.push(new am4charts.ColumnSeries());
		series.dataFields.categoryX = "country";
		series.dataFields.valueY = "visits";
		series.columns.template.tooltipText = "{valueY.value}";
		series.columns.template.tooltipY = 0;
		series.columns.template.strokeOpacity = 0;

		// as by default columns of the same series are of the same color, we add adapter which takes colors from chart.colors color set
		series.columns.template.adapter.add("fill", function(fill, target) {
		  return chart.colors.getIndex(target.dataItem.index);
		});

		}); // end am4core.ready()
	</script>

	<%@include file="footer.jsp"%>
</body>
</html>