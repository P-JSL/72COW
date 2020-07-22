<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<link href="/resources/login.css" rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>会員登録</title>
</head>
<body>

	<div id="main">
		<div id="content">

			<div id="qnb" class="quick-navigation" style="top: 70px;">
				<style>
#qnb {
	position: absolute;
	z-index: 1;
	right: 20px;
	top: 70px;
	width: 80px;
	font: normal 12px/16px "Noto Sans";
	color: #333;
	letter-spacing: -0.3px;
	transition: top 0.2s
}

.goods-goods_view #qnb {
	top: 20px
}
/* 배너 */
#qnb .bnr_qnb {
	padding-bottom: 7px
}

#qnb .bnr_qnb .thumb {
	width: 80px;
	height: 120px;
	vertical-align: top
}
/* 메뉴 */
#qnb .side_menu {
	width: 80px;
	border: 1px solid #ddd;
	border-top: 0 none;
	background-color: #fff
}

#qnb .link_menu {
	display: block;
	height: 29px;
	padding-top: 5px;
	border-top: 1px solid #ddd;
	text-align: center
}

#qnb .link_menu:hover, #qnb .link_menu.on {
	color: #5f0080
}
/* 최근본상품 */
#qnb .side_recent {
	position: relative;
	margin-top: 6px;
	border: 1px solid #ddd;
	background-color: #fff
}

#qnb .side_recent .tit {
	display: block;
	padding: 22px 0 6px;
	text-align: center
}

#qnb .side_recent .list_goods {
	overflow: hidden;
	position: relative;
	width: 60px;
	margin: 0 auto
}

#qnb .side_recent .list {
	position: absolute;
	left: 0;
	top: 0
}

#qnb .side_recent .link_goods {
	display: block;
	overflow: hidden;
	width: 60px;
	height: 80px;
	padding: 1px 0 2px
}

#qnb .side_recent .btn {
	display: block;
	overflow: hidden;
	width: 100%;
	height: 17px;
	border: 0 none;
	font-size: 0;
	line-height: 0;
	text-indent: -9999px
}

#qnb .side_recent .btn_up {
	position: absolute;
	left: 0;
	top: 0;
	background:
		url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover.png)
		no-repeat 50% 50%
}

#qnb .side_recent .btn_up.off {
	background:
		url(https://res.kurly.com/pc/service/main/2002/ico_quick_up.png)
		no-repeat 50% 50%
}

#qnb .side_recent .btn_down {
	background:
		url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover.png)
		no-repeat 50% 0
}

#qnb .side_recent .btn_down.off {
	background:
		url(https://res.kurly.com/pc/service/main/2002/ico_quick_down.png)
		no-repeat 50% 0
}

@media only screen and (-webkit-min-device-pixel-ratio: 1.5) , only screen and
		(min-device-pixel-ratio: 1.5) , only screen and (min-resolution:
	1.5dppx) {
	#qnb .side_recent .btn_up {
		background-image:
			url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover_x2.png);
		background-size: 12px 18px
	}
	#qnb .side_recent .btn_down {
		background-image:
			url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover_x2.png);
		background-size: 12px 18px
	}
	#qnb .side_recent .btn_up.off {
		background-image:
			url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_x2.png);
		background-size: 12px 18px
	}
	#qnb .side_recent .btn_down.off {
		background-image:
			url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_x2.png);
		background-size: 12px 18px
	}
}

@media all and (max-width: 1250px) {
	#qnb {
		display: none
	}
}
</style>

				<script>
					/**
					 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
					 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
					 */
					var getGoodsRecent = (function() {
						var i, len, getGoodsRecent, item, _nowTime = '1594950834452';

						_goodsRecent();
						function _goodsRecent() {
							if (localStorage.getItem('goodsRecent') === null) {
								return false;
							}

							try {
								getGoodsRecent = JSON.parse(localStorage
										.getItem("goodsRecent"));
								len = getGoodsRecent.length;
								if (addDays(getGoodsRecent[len - 1].time, 1) < _nowTime) {
									localStorage.removeItem('goodsRecent');
								} else {
									for (i = 0; i < len; i++) {
										item = '<li><a class="link_goods" href="/shop/goods/goods_view.php?goodsno='
												+ getGoodsRecent[i].no
												+ '"><img src="' + getGoodsRecent[i].thumb + '" alt=""></a></li>';
										$('.side_recent .list').append(item);
									}
									$('.side_recent').show();
								}
							} catch (e) {
								console
										.log(
												"JSON parse error from the Quick menu goods list!!!",
												e);
							}
						}

						function addDays(date, days) {
							var result = new Date(date);
							result.setDate(result.getDate() + days);
							return result.getTime();
						}

						// return {
						// }
					})();
				</script>
			</div>
			<div class="page_aticle">
				<script src="/shop/data/skin/designgj/godo.password_strength.js"
					type="text/javascript"></script>
				<script src="/common_js/join_v1.js?ver=1.16.11"></script>
				<div class="type_form member_join ">
					<form id="form" name="frmMember" method="post" action="/signup"
						onsubmit="return chkForm2(this)" novalidate="">

						<div class="field_head">
							<h3 class="tit">会員登録</h3>
							<p class="sub"></p>
						</div>
						<table class="tbl_comm">
							<tbody>
								<tr class="fst">
									<th>ID<span class="ico">*<span class="screen_out"></span></span></th>
									<td><input type="text" name="userid" value=""
										maxlength="16" required="" fld_esssential="" option="regId"
										label="ID" placeholder="6文字以上の英文と数字を組み合わせる"> <input
										type="hidden" name="chk_id" required="" fld_esssential=""
										label="아이디중복체크" value=""> <a class="btn default"
										href="javascript:chkId()" style="float: right; width: 100px;">重複確認</a>
										<p class="txt_guide square">
											<span class="txt txt_case1">6자 이상의 영문 혹은 영문과 숫자를 조합</span> <span
												class="txt txt_case2">아이디 중복확인</span>
										</p></td>
								</tr>
								<tr>
									<th>パスワード<span class="ico">*<span
											class="screen_out">필수항목</span></span></th>
									<td><input type="password" name="password" required=""
										fld_esssential="" option="regPass" label="パスワード"
										maxlength="16" class="reg_pw" placeholder="パスワードを入力してください。">
										<p class="txt_guide square">
											<span class="txt txt_case1">10자 이상 입력</span> <span
												class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상
												조합</span> <span class="txt txt_case3">동일한 숫자 3개 이상 연속 사용 불가</span>
										</p></td>
								</tr>
								<tr class="member_pwd">
									<th>パスワード確認<span class="ico">*<span
											class="screen_out">필수항목</span></span></th>
									<td><input type="password" name="password2" required=""
										fld_esssential="" option="regPass" label="비밀번호" maxlength="16"
										class="confirm_pw" placeholder="パスワードをもう一度入力してください。">
										<p class="txt_guide square">
											<span class="txt txt_case1">同じパスワードを入力してください。</span>
										</p></td>
								</tr>
								<tr>
									<th>名前<span class="ico">*<span class="screen_out">필수항목</span></span></th>
									<td><input style="width: 150px" type="text" name="f_name"
										fld_esssential="" label="성" placeholder="田中"> <input
										style="width: 150px; position: relative; left: 27px;"
										; type="text" name="l_name" value="" required=""
										fld_esssential="" label="이름" placeholder="雄二"></td>


								</tr>
								<tr>
									<th>名前(ひらがな)<span class="ico">*<span
											class="screen_out">필수항목</span></span></th>
									<td><input style="width: 150px" type="text"
										name="f_e_name" fld_esssential="" label="성" placeholder="たなか">
										<input style="width: 150px; position: relative; left: 27px;"
										; type="text" name="l_e_name" value="" required=""
										fld_esssential="" label="이름" placeholder="ゆうじ"></td>


								</tr>
								<tr>
									<th>メール<span class="ico">*<span class="screen_out">필수항목</span></span></th>
									<td><input type="text" name="email" value="" data-email=""
										size="30" required="" fld_esssential="" option="regEmail"
										label="이메일" placeholder="例: 72cow@google.com"></td>
								</tr>
								<tr class="field_phone">
									<th>電話番号<span class="ico">*<span class="screen_out">필수항목</span></span></th>
									<td>
										<div class="phone_num">
											<input type="text" value="" pattern="[0-9]*" name="phone"
												placeholder="数字のみ入力" class="inp">
										</div>
									</td>
								</tr>
								<tr>
									<th>住所<span class="ico">*<span class="screen_out">필수항목</span></span></th>
									<td class="field_address"><input type="hidden"
										name="zonecode" id="zonecode" size="5" value=""> <input
										type="hidden" name="zipcode[]" id="zipcode0" size="3" value="">
										<input type="hidden" name="zipcode[]" id="zipcode1" size="3"
										value=""> <input type="hidden" name="deliPoli"
										id="deliPoli" size="1" value="">
										<div id="selectAddress">
											<input type="text" name="address" id="address" value=""
												required="" readonly="readonly" label="주소">
										</div> <a href="#none" id="addressSearch" class="search"
										onclick="popup('../proc/popup_address.php',530,500)"> <span
											id="addressNo" class="address_no" data-text="재검색">ご住所検索
										</span>
									</a>
										<div id="selectAddressSub">
											<input type="text" name="Address" id="address_sub" value=""
												class="byteTotext" placeholder="나머지 주소를 입력해주세요"> <input
												type="hidden" name="road_address" id="road_address" value="">
											<p id="delivery"></p>
											<div class="count chk_bytes">
												<span class="bytes">0</span>자 / <span class="limit">50</span>자
											</div>
										</div>
										<p class="txt_guide"></p></td>
								</tr>

							</tbody>
						</table>
						<div id="formSubmit" class="form_footer">
							<input type="submit" class="btn active btn_join" value="登録">
						</div>
					</form>
				</div>
				<iframe id="ifrmRnCheck" name="ifrmRnCheck" style="display: none;"></iframe>
				<iframe id="ifrmHpauth" name="ifrmHpauth" style="display: none;"></iframe>

			</div>
		</div>
	</div>

</body>
</html>