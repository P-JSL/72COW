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
							<form class="forms-sample" action="/admin/ref" method="post">
								<div class="form-group">
									<label for="exampleInputName1">TO</label> <input type="text"
										class="form-control" name='to' placeholder="to">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail3">FROM</label> <input type="text"
										class="form-control" name="from" placeholder="from">
								</div>
								<div class="form-group">
									<label>File upload</label> <input type="file" name="img[]"
										class="file-upload-default">
									<div class="input-group col-xs-12">
										<input type="text" class="form-control file-upload-info"
											disabled="" placeholder="Upload Image"> <span
											class="input-group-append">
											<button class="file-upload-browse btn btn-gradient-primary"
												type="button">Upload</button>
										</span>
									</div>
								</div>
								
								<div class="form-group">
									<label for="exampleTextarea1">Textarea</label>
									<textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
								</div>
								<input type="reset" name="reset" value="reset"
									class="btn btn-gradient-light mr-2">
								<button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>

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