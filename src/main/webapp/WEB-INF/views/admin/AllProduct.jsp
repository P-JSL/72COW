<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>
<style type="text/css">
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
					<c:forEach items="${pvo }" var="p">
						<div class="col-md-5 grid-margin stretch-card">
							<div class="card"
								style="border: 1px solid; box-shadow: 1px 3px 3px 2px rgba(0, 0, 0, 0.3);">
								<div class="card-body">
									<h4 class="card-title" style="text-align: center;">${p.name}</h4>
									<div class="media">
										<div class="media-body">
											<div class="card col-md-12">
												<table class="table">
													<tbody>
														<tr>
															<td>category</td>
															<td class="code">${p.category }</td>
														</tr>
														<tr>
															<td>price</td>
															<td>${p.price }</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<c:forTokens items="${p.picture }" delims="*" var="pt" >
									<img src="/upload/${pt }"
										style="margin-top: 15px; width: 100%;">
									</c:forTokens>
								</div>
							</div>
						</div>
						<div class="media-left-content" id='img'></div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<%@include file="footer.jsp"%>