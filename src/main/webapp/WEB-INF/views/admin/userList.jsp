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
								<form class="form-inline" action="/admin/userList" method="get"
									style="justify-content: center;">
									<input type="hidden" name="pageNum" value="${pageMaker.pageNum }">
									<input type="hidden" name="amount" value="${pageMaker.amount }">
									<div class="input-group mb-2 mr-sm-2">
										<div class="input-group-prepend">
											<div class="input-group-text">検索条件</div>
										</div>
										<div class="form-group">
											<select class="form-control form-control-lg" id="selected" name="type">
												<option>選択</option>
												<option value="i">コード</option>
												<option value="n">お名前</option>
											</select>
										</div>
									</div>
									<label class="sr-only" for="inlineFormInputName2">Name</label>
									<input type="text" class="form-control mb-2 mr-sm-2"
										id="inlineFormInputName2" name="keyword" placeholder="名前の場合、名字と名前の間に空白をつけてください。" style="width: 60%;"> <label
										class="sr-only" for="inlineFormInputGroupUsername2">Username</label>

									<button type="submit" class="btn btn-gradient-primary mb-2">検索</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title"
									style="text-align: center; border-bottom: 3px double">ユーザー</h4>
								<table class="table table-striped">
									<thead>
										<tr>
											<th>会員名（漢字）</th>
											<th>会員名（ひらがな）</th>
											<th>購入回数</th>
											<th>登録日</th>
											<th>お問合せ</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list }" var="i">
											<tr>
												<input type="hidden" name="userid" value="${i.userid }">
												<td class="py-1" id="code">${i.f_name }</td>
												<td>${i.l_name }</td>
												<td>${i.count }回</td>
												<td><fmt:formatDate value="${i.rdate }"
														pattern="YYYY-MM-dd" /></td>
												<td class="ari" id="bar"><label id="inquired">${i.o }</label></td>
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
												placeholder="Name" readonly>
										</div>
										<div class="form-group">
											<label for="exampleTextarea1">Textarea</label>
											<textarea readonly class="form-control" id="exampleTextarea1"
												rows="4"></textarea>
										</div>
										<button type="button" class="btn btn-gradient-success"
											onclick="moveContact(this)">応答</button>
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
			var arion = $(".table tbody tr").find("#inquired");
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
		$(document)
				.ready(
						function() {
							$('.trigger').on('click',function() {$('.modal-wrapper').toggleClass('open');
							$('.page-wrapper').toggleClass('blur-it');
							var userid = $(this).parent().find("input[name='userid']").val();
							$.ajax({
								url : "/admin/codefind",
								type : 'POST',
								data : JSON.stringify({
										"userid" : userid
										}),
										contentType : "application/json; charset=UTF-8",
										processData : false,
										success : function(res) {
											console.log(res.otoi);
											$("#username").text(res.otoi[0].send_to+ "様からのお問合せ");
											$("#exampleInputName1").val(res.otoi[0].send_to);
											$("#exampleTextarea1").val(res.otoi[0].message);
										},
										error : function(req,status,error) {
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
			function moveContact(values) {
				var To_user = $(values).parent().find("#exampleInputName1").val();
					location.href = "/admin/userRef?userid="+To_user;
			}
	</script>
</body>
</html>

<%@include file="footer.jsp"%>