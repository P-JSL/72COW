<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>



<div class="main_area_center" style="margin-top: 200px;">
	<div class="main">
		<div class="left">
			<div class="left_nav_type2">
				<div class="left_nav_type2_title">ヘルプ</div>
				<ul class="left_nav_menu">
					<li><a class="active" id="scrollMain" href="/faq"><span>問い合わせ</span></a></li>
					<li><a href="/notice"><span>お知らせ</span></a></li>
				</ul>
			</div>
		</div>


		<!-- 여기 부터 풋터 전까지 긁어서 복붙 ㄱㄱ -->

		<section class="left_main">
			<div class="comunity_content_title_area_contact">
				<ul class="inquiry_tab" id="tab">
					<a id="tab-1" class="active" href="faq"><li>問い合わせ</li></a>
					<a id="tab-2" class="" href="myfaq"><li>問い合わせ内訳</li></a>
				</ul>
			</div>


			<div class="tab_con" id="tab_con">
				<!-- 첫번째 탭 -->
				<div id="tab-1" class="tab-content current">
					<div class="mail_view">

						<form id="question" action="/question" method="post">
							<table class="inquiry_table">
								<tbody>
									<tr>
										<td class="label">*お名前</td>
										<td class="field" style="height: 80px;"><input id="name"
											name="name" type="text" class="" placeholder="お名前を入力してください"
											value="" style="margin-top: 22px;"></td>
									</tr>
									<tr>
										<td class="label">*連絡先</td>
										<td class="field" style="height: 80px;"><input
											id="send_to" name="send_to" type="text" class=""
											placeholder="連絡先（数字のみ）" value="" style="margin-top: 22px;"></td>
									</tr>
									<tr>
										<td class="label">*メール</td>
										<td class="field" style="height: 80px;"><input
											id="send_from" name="send_from" type="text" class=""
											placeholder="メールを入力してください" value="" style="margin-top: 22px;"></td>
									</tr>

									<tr>
										<td class="label">*タイトル</td>
										<td class="field" style="height: 80px;"><input id="title"
											name="title" type="text" class="" placeholder="タイトルを入力してください"
											value="" style="margin-top: 22px;"></td>
									</tr>
									<tr>
										<td class="field photo_field" colspan="2"><textarea
												id="content" name="content" placeholder="内容を入力"
												class="textarea" rows="7"></textarea></td>
									</tr>

								</tbody>
							</table>
							<ul class="btn_wrapper btn_wrapper_center">
								<li><div id="btn" class="btn">送信</div></li>
							</ul>
						</form>

					</div>
				</div>



				<script>
					$('#btn').click(function() {
						$('#question').submit();
					});
				</script>


				<%@ include file="footer.jsp"%>