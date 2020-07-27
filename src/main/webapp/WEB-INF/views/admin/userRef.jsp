<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<%@include file="header.jsp"%>
<div class="container-scroller">
	<%@include file="navbar.jsp"%>
	<div class="container-fluid page-body-wrapper">
		<%@include file="sidebar.jsp"%>
		<div class="main-panel">
			<div class="row">
				<div class="col-12 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">質問応答</h4>
							<form class="forms-sample" action="/admin/userRef" method="post">
							<input type="hidden" name="user_num" value="<%=request.getParameter("user_num")%>">
								<div class="form-group">
									<label for="exampleInputName1">TO</label> <input type="text"
										class="form-control" name='send_to' placeholder="to" value="管理者" readonly>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail3">FROM</label> <input type="text"
										class="form-control" name="send_from" placeholder="from" value="${userid }" readonly>
								</div>
								<div class="form-group">
									<label for="exampleTextarea1">Textarea</label>
									<textarea class="form-control" id="exampleTextarea1" rows="10" name="message"></textarea>
								</div>
								<input type="reset" name="reset" value="書き直す"
									class="btn btn-gradient-light mr-2">
								<button type="submit" class="btn btn-gradient-primary mr-2">送信</button>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>

<%@include file="footer.jsp"%>