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
										総売り上げ <i class="mdi mdi-chart-line mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5" id="price"></h2>
								</div>
							</div>
						</div>
						<div class="col-md-6 stretch-card grid-margin">
							<div class="card bg-gradient-info card-img-holder text-white">
								<div class="card-body">
									<img src="/resources/assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image" />
									<h4 class="font-weight-normal mb-3">
										総手数料 <i class="mdi mdi-cash-usd mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5" id="comm"></h2>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">私の登録商品</h4>
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
												<c:forEach items="${product }" var="p">												
												<tr>
												<!-- 상품 상세 화면으로 이동 링크 -->
													<td><a href="#">${p.psid }</a></td>
													<td><fmt:formatNumber pattern="##,###" value="${p.price }"/>￥</td>
													<td><label class="badge badge-gradient-success">${p.amount !=0 ? '販売中' : '在庫無し'}</label>
													</td>
													<td>${p.category}</td>
													<td><fmt:formatDate value="${p.pdate }" pattern="YY/MM/dd"/></td>
												</tr>
												</c:forEach>
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
	<script type="text/javascript">
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	$(function() {
		$.ajax({
			url : "/admin/month",
			type : 'POST',
			contentType : "application/json; charset=UTF-8",
			processData : false,
			success : function(res) {
				console.log(res);
				if(res.price0 == 0 || res.price0 ==null){
					$("#price").text(0);
				}
				if(res.price1 == 0 || res.price1 ==null){
					$("#comm").text(0);
				}
				$("#price").text("￥ "+numberWithCommas(res.price0));
				$("#comm").text("￥ "+numberWithCommas(Math.floor(res.price1*0.1)));
			},
			error : function(req, status, error) {
				console.log(error);
			}
		})
	})
	</script>
</body>
</html>