<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<div style="margin-top: 200px;" class="main_area_center">
	<div class="main">
		
		
			</div>
			<div class="notice_list_wrapper">
				<div class="notice_list active">
					<div class="questions btn01" onclick="fn_spread('hiddenContent02');">
						<img class="icon_questions"
							src="https://ccimage.hellomarket.com/web/tag/ico_helmacenter_faq_question.png"
							alt="질문 이미지" ><span class="title">お知らせ事項です。</span><img
							class="btn_questions" alt="질문열기" height="8" width="15"
							src="https://ccimage.hellomarket.com/web/button/img_helmacenter_faq_list_open.png"><span
							class="timeago">7. 19.</span>
					</div>
					<div id="hiddenContent02"class="answer" style=width:99.8%;display:none;>
						<img alt="답변" class="icon_answer" height="25" width="25"
							src="https://ccimage.hellomarket.com/web/tag/ico_helmacenter_faq_answer.png">
							<span>こんにちは、72cowです。<br> 
							<br>お知らせです。
							<br>ありがとうございます。
						</span>
					</div>
				</div>
				<div class="notice_list">
					<div class="questions">
						<img class="icon_questions"
							src="https://ccimage.hellomarket.com/web/tag/ico_helmacenter_faq_question.png"
							alt="질문 이미지"><span class="title">お知らせ事項です。 </span><img
							class="btn_questions" alt="질문열기" height="8" width="15"
							src="https://ccimage.hellomarket.com/web/button/img_helmacenter_faq_list_open.png"><span
							class="timeago">5. 20.</span>
					</div>
				</div>
				
				<div class="notice_list">
					<div class="questions">
						<img class="icon_questions" src="https://ccimage.hellomarket.com/web/tag/ico_helmacenter_faq_question.png"
							alt="질문 이미지">
							<span class="title">お知らせ事項です。</span>
							<img class="btn_questions" alt="질문열기" height="8" width="15"
							src="https://ccimage.hellomarket.com/web/button/img_helmacenter_faq_list_open.png">
							<span class="timeago">3. 12.</span>
					</div>
				</div>
				</div>
				<div class="view_more_mobile">
					<div class="hellopay_view_more">
						<span class="view_more_plus">+</span><span class="view_more_text">more</span>
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


<%@include file="footer.jsp"%>