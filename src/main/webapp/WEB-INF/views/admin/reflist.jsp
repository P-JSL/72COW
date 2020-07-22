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
					<div class="col-lg-12 stretch-card"
						style="margin-bottom: 1rem; margin-left: auto; margin-right: auto;">
						<div class="card"
							style="box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.3);">
							<div class="card-body"
								style="text-align: center; padding: 0.5rem;">
								<h5 class="card-title"
									style="font-size: 2rem; font-weight: bold; margin-bottom: 0;">送信したお問い合わせ回答</h5>
							</div>
						</div>
					</div>
						<c:forEach items="${list }" var="i">
							<div class="col-md-6 grid-margin stretch-card">
								<div class="card">
									<div class="card-body">
										<div class="form-group">
											<label>TO</label> <input type="text"
												class="form-control form-control-lg" value="${i.send_to }"
												aria-label="Username">
										</div>
										<div class="form-group">
											<label>FROM</label> <input type="text"
												value="${i.send_from }" class="form-control"
												aria-label="Username">
										</div>
										<div class="form-group">
											<label for="exampleTextarea1">Textarea</label>
											<textarea class="form-control" id="exampleTextarea1" rows="4">${i.message }</textarea>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div><%@include file="footer.jsp"%>