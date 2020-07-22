<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<style type="text/css">
body {
    font-size: 1rem;
    font-family: "ubuntu-regular", sans-serif;
    font-weight: initial;
    line-height: normal;
    -webkit-font-smoothing: antialiased;
}
.card .card-body {
	padding: 1.5rem 1.5rem !important;
}

.media-left-content {
	margin-right: 10px;
}

.media-left-content img {
	width: 100%;
	position: relative;
}

.media-body {
	display: contents;
}

.media-body span {
	display: inline-block;
}

td {
	border-right: 1px solid #eee;
	border-bottom: 1px solid #eee;
}
</style>
<div class="container-scroller">
	<%@include file="navbar.jsp"%>
	<div class="container-fluid page-body-wrapper">
		<%@include file="sidebar.jsp"%>
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="row">
					<div class="col-md-6 grid-margin stretch-card">
						<div class="card"
							style="border: 1px solid; box-shadow: 1px 3px 3px 2px rgba(0, 0, 0, 0.3);">
							<div class="card-body">
								<h4 class="card-title" style="text-align: center;">スーパーコンピューター</h4>
								<div class="media">
									<div class="media-body">
										<div class="card col-md-12">
											<table class="table">
												<tbody>
													<tr>
														<td>code</td>
														<td class="code">C0123742</td>
													</tr>
													<tr>
														<td>price</td>
														<td>134727￥</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="media-left-content" id='img'>
									<img src="/resources/images/quantom.jpg"
										style="margin-top: 15px;">
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 grid-margin stretch-card">
						<div class="card"
							style="border: 1px solid; box-shadow: 1px 3px 3px 2px rgba(0, 0, 0, 0.3);">
							<div class="card-body">
								<h4 class="card-title" style="text-align: center;">スーパーコンピューター</h4>
								<div class="media">
									<div class="media-body">
										<div class="card col-md-12">
											<table class="table">
												<tbody>
													<tr>
														<td>code</td>
														<td class="code">C0123742</td>
													</tr>
													<tr>
														<td>price</td>
														<td>134727￥</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="media-left-content" id='img'>
									<img src="/resources/images/quantom.jpg"
										style="margin-top: 15px;">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<%@include file="footer.jsp"%>