<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<%@include file="header.jsp"%>
<link rel="stylesheet" href="/resources/modal.css">
<style type="text/css">
#bar {
	position: relative;
}

#inquired.after::after {
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	content: "\f4ad";
	position: absolute;
	top: -10px;
	right: 0;
	font-size: 1.5rem;
}
</style>
<body>

	<div class="container-scroller">
		<%@include file="navbar.jsp"%>
		<div class="container-fluid page-body-wrapper">
			<%@include file="sidebar.jsp"%>
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="col-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body" style="text-align: center;">
								<h4 class="card-title">ユーザー検索</h4>
								<!-- 검색 폼 -->
								<form class="form-inline" action="/admin/userList" method="post" style="justify-content: center;">
									<div class="input-group mb-2 mr-sm-2">
										<div class="input-group-prepend">
											<div class="input-group-text">検索条件</div>
										</div>
										<div class="form-group">
											<select class="form-control form-control-lg" id="selected">
												<option value="code">コード</option>
												<option value="name">お名前</option>
											</select>
										</div>
									</div>
									<label class="sr-only" for="inlineFormInputName2">Name</label>
									<input type="text" class="form-control mb-2 mr-sm-2"
										id="inlineFormInputName2" placeholder="Jane Doe"> <label
										class="sr-only" for="inlineFormInputGroupUsername2">Username</label>

									<button type="submit" class="btn btn-gradient-primary mb-2">Submit</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title" style="text-align: center; border-bottom: 3px double" >ユーザー</h4>
								<table class="table table-striped">
									<thead>
										<tr>
											<th>会員コード</th>
											<th>お名前</th>
											<th>購入回数</th>
											<th>登録日</th>
											<th>お問合せ</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="py-1" id="code">A0016723</td>
											<td>小日向</td>
											<td>
												<!--<div class="progress-bar bg-success" role="progressbar"
														style="width: 25%" aria-valuenow="25" aria-valuemin="0"
														aria-valuemax="100"></div>  --> 24回

											</td>
											<td>2020/07/04</td>
											<td class="ari" id="bar"><label id="inquired">有</label></td>
										</tr>
										<tr>
											<td class="py-1" id="code">A00422123</td>
											<td>いちご</td>
											<td>81回</td>
											<td>2020/06/07</td>
											<td class="ari" id="bar"><label id="inquired">無</label></td>
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
						<!-- 내용 -->
						<div class="col-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title" id="username"></h4>
									<form class="forms-sample">
										<div class="form-group">
											<label for="exampleInputName1">Name</label> <input
												type="text" class="form-control" id="exampleInputName1"
												placeholder="Name">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail3">Email address</label> <input
												type="email" class="form-control" id="exampleInputEmail3"
												placeholder="Email">
										</div>
										<div class="form-group">
											<label for="exampleTextarea1">Textarea</label>
											<textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
										</div>
										<button type="button" class="btn btn-gradient-success"
											id="comment">応答</button>
										<button type="button" class="btn btn-gradient-danger"
											id="close2">閉める</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

	<script src="https://use.fontawesome.com/releases/v5.14.0/js/all.js"
		data-auto-replace-svg="nest"></script>
	<script type="text/javascript">
		$(function() {
			$(".table tr").css("text-align", "center");
			var arion = $(".table").find("#inquired");
			var ari = $(".table tbody tr").find(".ari");
			for (var i = 0; i < ari.length; i++) {
				if (ari[i].innerText == '有') {
					$(ari[i]).css("cursor", "pointer");
					$(ari[i]).children().css("cursor", "pointer");
					$(arion).addClass("after");
					$(ari[i]).addClass("trigger");
					$(ari[i]).css("background", "#f6e58d");
				} else {
					$(ari[i]).css("background", "#dff9fb");
				}
			}
		})
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.trigger').on('click', function() {
				$('.modal-wrapper').toggleClass('open');
				$('.page-wrapper').toggleClass('blur-it');
				var code = $(this).parent().find("#code").text();
				console.log(code);
				$.ajax({
					url : "/admin/codefind",
					type : 'POST',
					data : JSON.stringify({
						"code" : code,
					}),
					contentType : "application/json; charset=UTF-8",
					processData : false,
					success : function(res) {
						console.log(res);
						$("#username").text(res.code + "様の質問");
					},
					error : function(req, status, error) {
						console.log(error);
					}
				})
				return false;
			});
			$("#close").on("click", function() {
				$(".modal-wrapper").removeClass("open");
			})
			$("#close2").on("click", function() {
				$(".modal-wrapper").removeClass("open");
			})

		});
	</script>
	<script type="text/javascript">
		$(function() {
			$("#comment").on("click", function() {
				location.href = "/admin/userRef";
			})
		})
	</script>
</body>
</html>

<%@include file="footer.jsp"%>