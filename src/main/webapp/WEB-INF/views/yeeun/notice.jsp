<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<style>
.btn {
	border: none;
	color: white;
	padding: 14px 28px;
	font-size: 16px;
	cursor: pointer;
}

.info {
	background-color: #2196F3;
	float: right;
    position: relative;
    text-align: center;
    border-radius: 20px;
    right: 15px;
    margin-bottom: 20px;
} /* Blue */
.info:hover {
	background: #0b7dda;
}

.accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.active, .accordion:hover {
	background-color: #ccc;
}

.panel {
	padding: 0 18px;
	display: none;
	background-color: white;
	overflow: hidden;
}

.search_group_menu i.arrow:before, i:after {
	content: "";
	position: absolute;
	background-color: #454c53;
	width: 1px;
	height: 1px;
}
</style>

<div style="margin-top: 200px;" class="main_area_center">

	<div class="main">
		<div class="notice_list_wrapper">

			<c:forEach var="list" items="${nlist}">
				<button class="accordion">
					<i class="fa fa-info-circle" aria-hidden="true"
						style="color: darkslateblue;"></i>&nbsp;&nbsp;${list.title }
					<p style="float: right;">${list.regdate }</p>
				</button>
				<div class="panel">
					<p style="margin: 15px 0;">${list.content }</p>
					<a class="label label-warning" href="/yeeun/NoticeModify?num=${list.num }">修正</a> 
					<a class="label label-danger" href="/yeeun/NoticeDelete?num=${list.num }">削除</a>
				</div>
			</c:forEach>
		</div>
		<div class="row">
			<a href="/yeeun/noticeWrite" class="btn info">書き込み</a>
		</div>
	</div>
</div>

<script>
	function fn_spread(id) {
		var getID = document.getElementById(id);
		getID.style.display = (getID.style.display == 'block') ? 'none'
				: 'block';
	}
</script>
<script>
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
		acc[i].addEventListener("click", function() {
			this.classList.toggle("active");
			var panel = this.nextElementSibling;
			if (panel.style.display === "block") {
				panel.style.display = "none";
			} else {
				panel.style.display = "block";
			}
		});
	}
</script>


<%@include file="../footer.jsp"%>