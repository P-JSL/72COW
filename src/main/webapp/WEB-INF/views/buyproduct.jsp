<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<div class="main_area_center" style=margin-top:200px>
	<div class="main">
		<div class="order_title_wrapper">
			<div class="title">注文書</div>
		</div>
		<div class="order_content_wrapper">
			<ul>
				<li class="order_card"><div class="title_box">配送地</div>
					<div class="parcel_wrapper">
						<div class="label adress_label">配送地選択</div>
						<div class="selectbox_order se_order_adress">
							<label for="adressList">配送地を選択してください</label><select><option
									value="default" hidden="">配送地を選択してください</option></select>
						</div>
						<div class="adress_btn_wrapper">
							<button type="button">住所更新</button>
						</div>
					</div>
					<ul class="order_member_info">
						<li><dl>
								<dt>お名前</dt>
								<dd class="order_member_name">
									<input type="text" class="w_10" name="receiverName"
										placeholder="名前入力" value="">
								</dd>
							</dl></li>
						<li><dl>
								<dt>連絡先</dt>
								<dd class="order_member_phone">
									<input type="number" class="w_10" placeholder="数字のみ入力" value="">
								</dd>
							</dl></li>
						<li><dl>
								<dt>ご住所</dt>
								<dd>
									<div readonly="" name="senderHide" class="div_input_st">郵便番号入力</div>
									<button class="addr_search" style=margin-top:13px;>住所検索</button>
								</dd>
							</dl></li>
						<li><dl>
								<dt></dt>
								<dd>
									<div readonly="" name="receiverAddr1" class="div_input_st">基本住所
										입력</div>
									<input type="text" name="receiverAddr2" placeholder="詳細住所入力"
										class="w_10" value="">
								</dd>
							</dl></li>
					</ul></li>
				<li class="order_card"><div class="title_box">注文内容</div>
					<div class="card_cont deal_card_cont">
						<ul class="item_list">
							<li><div class="card_box card_box_list">
									<div
										class="image_wrapper image_wrapper_main_col_1 deal_image_wrapper">
										<div class="image_outside">
											<div class="image_centerbox">
												<img class="thumbnail_img"
													src="https://ccimg.hellomarket.com/images/2020/item/07/13/18/2904618_4845353_1.jpg?size=s4"
													alt="LG G패드4 8.0 블랙 32G 판매합니다!">
											</div>
										</div>
									</div>
									<div class="cont cont_main_col_1">
										<div class="item_title title_main_col_1">LG 販売します！！!</div>
										<div class="item_price pri_main_col_1">10,000円</div>
										<div class="item_hasdeliveryfee">無料配送</div>
									</div>
								</div></li>
						</ul>
					</div></li>
				<li class="order_card last_order_card"><div
						class="order_card_left">
						<div class="title_box">ミルク割引</div>
						<div>
							<div class="wallet_wrapper wallet_items_wrapper">
								<div class="box_coupon">
									<div class="title order_sub_title">ミルク</div>
									<div class="box_coupon_right">
										<div>
											<div class="description">適用1本 | 保有 1本</div>
											<div class="coupon_btn">ミルク使用</div>
										</div>
										<div class="price">
											300<span>円</span>
										</div>
									</div>
								</div>
								<div class="sale_total">
									<div>割引金額</div>
									<div>300円</div>
								</div>
								<div class="certified_box hide">
									<div class="title_txt">
										<span>携帯認証</span> *ミルク使用時必須
									</div>
									<div class="phone_number_box">
										<input type="number" placeholder="数字のみ入力">
										<button class="addr_search">認証要請</button>
									</div>
									<div class="auth_code_box">
										<input type="number" placeholder="認証番号入力">
										<button class="addr_search">認証</button>
									</div>
								</div>
							</div>
						</div>
						<div class="title_box sub_title_box">
							<span> 決済手段</span>
							<div class="etc_other_wrapper_form">
								<span class="other_wrapper_description other_wrapper_box">宅配や郵便以外の方法でお取引になさいますか。
			 <span>&gt;</span>
								</span>
							</div>
						</div>
						<div>
							<div class="wallet_wrapper wallet_items_wrapper">
								<div>
									<ul class="pay_method_list item_pay_method_list">
										<li><div class="wrapper_div">
												<div class="info">
													<input type="radio" name="radioTxt" value="シンプル振り込み">
														<label for="EasyBank" class="radio_desc">
															シンプル振り込み
														</label>
													<div class="available_check_box">利用可能銀行確認</div>
													<div class="available_check_list">
														<div>利用可能銀行</div>
														<div>日本銀行、みずほ銀行、三菱ＵＦＪ銀行、三井住友銀行、りそな銀行、埼玉りそな銀行、ジャパンネット銀行、セブン銀行、
															ソニー銀行</div>
													</div>
												</div
												
												>
												<i class="arrow"></i>
												<div class="exp"></div>
											</div>
											<div class="easybank_wrapper pc_disaebld">
												<div class="easybank_scroll">
													<div class="swiper_account_box">
														<div style="width: 100%; height: 100%; position: relative; touch-action: none;">
															<div class="swiper_image_wrapper"
																style="overflow: hidden; width: 100%; height: 100%; position: relative; touch-action: none;">
																<div class="swiper_account_wrapper active"
																	style="z-index: 99; position: absolute; opacity: 1; transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px); display: block;">
																	<a href="/m/payment/account/form?itemIdx=167466168">
																	<div class="easybank_box easybank_new_box">
																			<div>
																				<div class="easybank_new_icon">
																					<img
																						src="https://ccimage.hellomarket.com/btn/ico_plus_75x75_700_n.png"
																						alt="">
																				</div>
																				<div class="easybank_new_title">口座登録</div>
																			</div>
																	</div></a>
																</div>
															</div>
															<div
																style="position: absolute; width: 100%; z-index: 100; text-align: center;"></div>
															<div
																style="position: absolute; width: 100%; z-index: 100; top: 60px; text-align: center;"></div>
														</div>
													</div>
				
												</div>
											</div></li>
											
											
										<li class="other_list_li"><div class="wrapper_div">
												<div class="info_betu">
													<input type="radio" name="radioTxt" value="他の決済手段">
													<label for="CreditCard" class="radio_desc">他の決済手段</label>
												</div>
												<i class="active"></i>
												<div class="exp"></div>
											</div></li>
											
											
										<div class="other_wrapper_div">
											<ul>
												<li><div class="wrapper_div other_wrapper_div_option">
														<div class="info">
															<input type="radio" class="radio_button" readonly=""
																checked=""><label for="CreditCard"
																class="radio_desc">クレジットカード</label>
														</div>
														<div class="exp"></div>
													</div></li>
												<li><div
														class="wrapper_div other_wrapper_div_option checked">
														<div class="info">
															<input type="radio" class="radio_button" readonly=""><label
																for="VirtualBank" class="radio_desc">バーチャル口座</label>
														</div>
														<div class="exp"></div>
													</div></li>
												<li><div class="wrapper_div other_wrapper_div_option">
														<div class="info">
															<input type="radio" class="radio_button" readonly=""><label
																for="CvsCash" class="radio_desc">セブンイレブン</label>
														</div>
														<div class="exp"></div>
													</div></li>
												<li><div class="wrapper_div other_wrapper_div_option">
														<div class="info">
															<input type="radio" class="radio_button" readonly=""><label
																for="Toss" class="radio_desc">LINEPAY</label>
														</div>
														<div class="exp"></div>
													</div></li>
											</ul>
										</div>
										<div class="other_wrapper_consignment">
						
											<div class="other_form_wrapper">
												<div class="other_wrapper_form_box">
													<div class="other_wrapper_form_type">
														<span>振込銀行</span>
														<div>
															<div>
																<select><option value="04">りそな</option>
																	<option value="88">日本銀行</option>
																	<option value="20">みずほ銀行</option>
																	<option value="03">三菱ＵＦＪ銀行</option>
																	<option value="05">三井住友銀行</option>
																	<option value="23">埼玉りそな銀行</option>
																	<option value="71">ジャパンネット銀行</option>
																</select>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</ul>
							
									<div class="wrapper_remember">
										<div class="info">
											<label class="feature_option feature_option_checkbox">選択した決済手段を保存
												<div class="feature_option_checkbox_indicator"></div>
											</label>
										</div>
									</div>
								</div>
								<div class="certified_box hide">
									<div class="title_txt">
										<span>핸드폰 인증</span> *헬로포인트 사용시 필수
									</div>
									<div class="phone_number_box">
										<input type="number" placeholder="숫자만 입력">
										<button class="addr_search">인증요청</button>
									</div>
									<div class="auth_code_box">
										<input type="number" placeholder="인증번호 입력">
										<button class="addr_search">인증</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="order_card_right">
						<div class="title_box sub_last_title_box">最終決済金額</div>
						<div class="final_order_wrapper">
							<div class="final_order_price">
								<dl
									class="final_order_price_border_bottom final_order_price_padding">
									<dt>注文金額</dt>
									<dd>100,000円</dd>
								</dl>
								<dl>
									<dt>ミルク使用</dt>
									<dd>-3000円</dd>
								</dl>
								<dl class="final_order_price_margin">
									<dt>配送料</dt>
									<dd>無料配送</dd>
								</dl>
								<dl>
									<dt>
										決済手数料<span class="payment_method_credit">バーチャル口座
											3.2%適用</span>
									</dt>
									<dd>3,104円</dd>
								</dl>
								<dl
									class="final_order_price_border_bottom final_order_price_padding">
									<dt>安全取引手数料</dt>
									<dd>1,000円</dd>
								</dl>
							</div>
							<div class="order_total_price">
								<div class="title">最終決済金額</div>
								<div class="price" id="orderTotalPrice">101,104円</div>
							</div>
							<div class="policy_area">
								<div class="info">
									<label class="feature_option feature_option_checkbox">&nbsp;
										<div class="feature_option_checkbox_indicator"></div>
									</label>
								</div>
								<div class="description">
									決済ボタンを押すと <span class="txt-bl-12 txt_un">決済時の注意事項</span> 及び <span
										class="txt-bl-12 txt_un">返品払い戻し政策</span>を全部理解した上で、これに同意します。
								</div>
							</div>
							<div class="success_btn_box">
								<div class="success_btn btn_disabled">
									<p onMouseover="this.style.background='#0484f6';" onMouseout="this.style.background='lightblue';"
									style="background:lightblue;color:white;">
									決済
									</p>
								</div>
							</div>
						</div>
					</div></li>
				<form method="post" id="SETTLEBANK_PAYINFO"
					target="orderServiceForm">
					<input type="hidden" name="PMid"><input type="hidden"
						name="PAmt"><input type="hidden" name="PGoods"><input
						type="hidden" name="POid"><input type="hidden"
						name="PMname"><input type="hidden" name="PEname"
						value="HELLOMARKET"><input type="hidden" name="PUname"><input
						type="hidden" name="PNoti" value=""><input type="hidden"
						name="PNoteUrl"><input type="hidden" name="PNextPUrl"><input
						type="hidden" name="PCancPUrl"><input type="hidden"
						name="PUserid"><input type="hidden" name="PVtransDt"><input
						type="hidden" name="PBnkCd"><input type="hidden"
						name="PUiFlag" value="Y"><input type="hidden"
						name="PAppScheme" value="hellomarket://"><input
						type="hidden" name="PCardType" value="6"><input
						type="hidden" name="PChainUserId">
				</form>
			</ul>
		</div>
	</div>
</div>

<script>
 $(document).ready(function(){
  $(".info_betu").click(function(){ 
    $(".other_wrapper_div").toggle();
  });
});

$(document).ready(function(){
	  $(".info_betu").click(function(){
	    $(".other_wrapper_consignment").toggle();
	  });
	}); 

</script>
<%@ include file="footer.jsp"%>
