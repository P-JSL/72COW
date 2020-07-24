<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>



<div class="main_area_center" style=margin-top:200px;>
	<div class="main">
		<div class="left">
			<div class="left_nav_type2">
				<div class="left_nav_type2_title">ヘルプ</div>
				<ul class="left_nav_menu">
					<li><a class="active" id="scrollMain"
						href="/faq"><span>問い合わせ</span></a></li>
					<li><a href="/notice"><span>お知らせ</span></a></li>
				</ul>
			</div>
		</div>
		
		
		
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
				<h1>헬로마켓 - 100% 안전한 중고거래 장터</h1>
				<h2>일반문의 신청 페이지</h2>
				<form>
					<table class="inquiry_table">
						<tbody>
							<tr>
								<td class="label">*お名前</td>
								<td class="field" style=height:80px;>
								<input type="text" class=""
									placeholder="お名前を入力してください" value="" style=margin-top:22px;></td>
							</tr>
							<tr>
								<td class="label">*連絡先</td>
								<td class="field" style=height:80px;><input type="text" class=""
									placeholder="連絡先（数字のみ）" value="" style=margin-top:22px;></td>
							</tr>
							<tr>
								<td class="label">*メール</td>
								<td class="field" style=height:80px;><input type="text" class=""
									placeholder="メールを入力してください" value="" style=margin-top:22px;></td>
							</tr>
							<tr>
								<td class="label">*分類</td>
								<td class="field"><select id="" class="commonSelectbox"><option
											value="" disabled="">カテゴリー選択</option>
										<option value="ICA0000">個人情報&amp;会員ID</option>
										<option value="IDA0000">申告</option>
										<option value="IBA0000">配送</option>
										<option value="IEA0000">エラー</option>
										<option value="IIA0000">出品</option>
										<option value="IIB0000">購入</option>
										<option value="IJA0000">広告</option>
										<option value="IFA0000">提案</option>
										<option value="IGA0000">その他</option></select></td>
							</tr>
							<tr>
								<td class="label">*タイトル</td>
								<td class="field" style=height:80px;><input type="text" class=""
									placeholder="タイトルを入力してください" value="" style=margin-top:22px;></td>
							</tr>
							<tr>
								<td class="field photo_field" colspan="2"><textarea
										placeholder="内容を入力" class="textarea" rows="7"></textarea></td>
							</tr>
							<tr>
								<td class="field photo_field" colspan="2"><label>写真添付</label>
								<div class="inquiry_photo_wrapper">
										<ul class="image_list">
										<label for ="image">
											<input type="file" name="image" id="image" multiple="" class="multiple" style="display:none;">
													<li><div class="up_img_box">
															<img
																src="https://ccimage.hellomarket.com/web/2018/auto/img_car_pic_basic.png"
																class="item_img" alt="상품 등록 이미지">
														</div></li>
													<li><div class="up_img_box">
															<img
																src="https://ccimage.hellomarket.com/web/2018/auto/img_car_pic_basic.png"
																class="item_img" alt="상품 등록 이미지">
														</div></li>
													<li><div class="up_img_box">
															<img
																src="https://ccimage.hellomarket.com/web/2018/auto/img_car_pic_basic.png"
																class="item_img" alt="상품 등록 이미지">
														</div></li>
										</label>		
												</ul>
									</div>
									</td>
							</tr>
						</tbody>
					</table>
				</form>
				<ul class="btn_wrapper btn_wrapper_center">
					<li><div class="btn">送信</div></li>
				</ul>
			</div>
			</div>
			
			<!-- 
			두번째 탭
			<div id="tab-2" class="tab-content">
			<div class="inquiry_view_wrapper">
				<h1>헬로마켓 - 100% 안전한 중고거래 장터</h1>
				<h2>일반문의 상세 페이지</h2>
				<ul class="inquiry_list">
					<li><div class="link">
							<span class="category">個人情報&amp;会員 &gt; その他</span><span
								class="title">質問はここに</span>
							<div class="state_wrapper">
								<span class="state txt_answer_complete"><span
									class="state_icon txt_answer_complete_icon"></span>回答済み</span><span
									class="date">2020-07-17</span>
							</div>
						</div></li>
				</ul>
				<ul class="message_list">
					<li class="question_wrapper"><div class="member_wrapper">
							<img class="profile_img" src="" alt="프로필 이미지">
							<div class="nick">どうぶつの森</div>
							<div class="timeago">午前 9:54</div>
						</div>
						<div class="info_wrapper">
							<div>
								<label>名前</label><span>田中</span>
							</div>
							<div>
							
								<label>連絡先</label><span>08042964262</span>
							</div>
							<div>
								<label>メール</label><span>taes1101@gmail.com</span>
							</div>
							<div>
								<label>分類</label><span>個人情報&amp;会員ID &gt; その他</span>
							</div>
						</div>
						<div class="message_wrapper">書いた内容ｗ</div>
						<div class="inquiry_photo_wrapper">
							<ul class="inquiry_photo_wrapper_margin"></ul>
						</div></li>
					<li class="answer_wrapper"><div class="member_wrapper">
							<img class="profile_img"
								src="http://ccimg.hellomarket.com/images/2017/member_profile/s4/04/10/11/3714_172_1.jpg?size=s2"
								alt="프로필 이미지">
							<div class="nick">【72COWヘルプ】</div>
							<div class="timeago">午前 9:59</div>
						</div>
						<div class="message_wrapper">
							こんにちは、田中様<br>
							<br>今はテストでございます。
							<br>今はテストでございます。
							<br>今はテストでございます。
							<br>今はテストでございます。
							<br>今はテストでございます。
							<br>今はテストでございます。
							<br>今はテストでございます。							
							<br>ありがとうございます。
						</div>
						<div class="inquiry_photo_wrapper">
							<ul class="inquiry_photo_wrapper_margin"></ul>
						</div></li>
				</ul>
				<div class="mail_view"></div>
			</div> 
			
			</div>
			// 두번쨰 탭  -->
			</div>
		</section>
	</div>
</div>
<!-- 
<script>

$(function () {	
	inquiry_tab('#tab',0);	
});

function inquiry_tab(e, num){
    var num = num || 0;
    var menu = $(e).children();
    var con = $(e+'_con').children();
    var select = $(menu).eq(num);
    var i = num;

    select.addClass('on');
    con.eq(num).show();

    menu.click(function(){
        if(select!==null){
            select.removeClass("on");
            con.eq(i).hide();
        }

        select = $(this);	
        i = $(this).index();

        select.addClass('on');
        con.eq(i).show();
    });
}
	
</script>
 -->
<script>
$("input[type='image']").click(function() {
    $("input[id='my_file']").click();
});
</script>

<%@ include file="footer.jsp"%>