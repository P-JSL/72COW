<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>



<div class="main_area_center" style="margin-top: 200px;">
	<div class="main">

		<section class="">
			<div class="tab_con" id="tab_con">
				<!-- 첫번째 탭 -->
				<div id="tab-1" class="tab-content current">
					<div class="mail_view">
						<h1>헬로마켓 - 100% 안전한 중고거래 장터</h1>
						<h2>일반문의 신청 페이지</h2>
						<form method="get" action="/yeeun/noticeModifyOK">
						<input type="hidden" name="num" value="${notice.num}">
							<table class="inquiry_table">
								<tbody>
									<tr>
										<td class="label">*タイトル</td>
										<td class="field" style="height: 80px;">
										<input type="text" class="" placeholder="${notice.title}" value="${notice.title}"
											style="margin-top: 22px;" name="title"></td>
									</tr>
									<tr>
										<td class="field photo_field" colspan="2"><textarea
												placeholder="${notice.content}" class="textarea" rows="7" name="content">${notice.content}</textarea></td>
									</tr>
								</tbody>
							</table>
							<ul class="btn_wrapper btn_wrapper_center">
							<li><input class="btn" type="submit" value="入力"></li>
						</ul>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<%@ include file="../footer.jsp"%>