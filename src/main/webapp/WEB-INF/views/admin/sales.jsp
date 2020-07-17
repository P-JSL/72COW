<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="header.jsp"%>
<body>
	<div class="container-scroller">
		<%@include file="navbar.jsp"%>
		<div class="container-fluid page-body-wrapper">
			<%@include file="sidebar.jsp"%>
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-md-6 stretch-card grid-margin">
							<div class="card bg-gradient-danger card-img-holder text-white">
								<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image" />
									<h4 class="font-weight-normal mb-3">
										今月の売り上げ <i class="mdi mdi-chart-line mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">￥ 15,000</h2>
								</div>
							</div>
						</div>
						<div class="col-md-6 stretch-card grid-margin">
							<div class="card bg-gradient-info card-img-holder text-white">
								<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image" />
									<h4 class="font-weight-normal mb-3">
										今月の手数料 <i class="mdi mdi-cash-usd mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">￥ 4,534</h2>
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
													<th>商品コード</th>
													<th>価格</th>
													<th>状態</th>
													<th>発送日</th>
													<th>登録日</th>
												</tr>
											</thead>
											<tbody>
												<tr>
												<!-- 상품 상세 화면으로 이동 링크 -->
													<td><a href="#">A01023142</a></td>
													<td>13,000￥</td>
													<td><label class="badge badge-gradient-success">取引完</label>
													</td>
													<td>20/07/02</td>
													<td>20/06/29</td>
												</tr>
												<tr>
													<td><a>A00023142</a></td>
													<td>8,000￥</td>
													<td><label class="badge badge-gradient-warning">配送中</label>
													</td>
													<td>20/06/21</td>
													<td>20/06/19</td>
												</tr>
												<tr>
													<td><a>A0122142</a></td>
													<td>20,000￥</td>
													<td><label class="badge badge-gradient-info">未配送</label></td>
													<td>20/07/10</td>
													<td>20/07/02</td>
												</tr>
												<tr>
													<td><a>B00013142</a></td>
													<td>800￥</td>
													<td><label class="badge badge-gradient-danger">払い戻し</label>
													</td>
													<td>20/07/25</td>
													<td>20/07/17</td>
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
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>