<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/modal.css">
<style type="text/css">
.content {
	padding-top: 0 !important;
	margin-top: 0 !important;
}
</style>
<div class="main_area_center" style="margin-top: 200px">
	<div class="main">
		<div class="order_title_wrapper">
			<div class="title">注文書</div>
		</div>
		<div class="order_content_wrapper">
			<ul>
				<li class="order_card"><div class="title_box">配送地</div>
					<div class="parcel_wrapper">
						<div class="label adress_label">配送地記入</div>
						<div class="selectbox_order se_order_adress" style="z-index: 0;">
							<label for="adressList">配送地を記入してください。</label> <input
								style="width: 100%;" type="text" name="addr"
								placeholder="配送地を記入してください。">
						</div>

					</div>
					<ul class="order_member_info">
						<li><dl>
								<dt>お名前</dt>
								<dd class="order_member_name">
									<input type="text" class="w_10" name="sname" placeholder="名前入力"
										value="">
								</dd>
							</dl></li>
						<li><dl>
								<dt>連絡先</dt>
								<dd class="order_member_phone">
									<input type="number" name="phone" id="phone" class="w_10"
										placeholder="数字のみ入力" value="">
								</dd>
							</dl></li>
						<li><dl>
								<dt>ご住所</dt>
								<dd>
									<input name="senderHide" class="div_input_st" id="zip_code">
									<button id="zip_codeBtn" class="addr_search trigger"
										style="margin-top: 13px;">住所検索</button>
								</dd>
							</dl></li>
						<li><dl>
								<dt></dt>
								<dd>
									<input readonly type="text" name="address1" id="address1"
										class="w_10" value=""> <input readonly type="text"
										name="address2" id="address2" class="w_10" value="">
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
												<c:forTokens items="${one }" delims="*" var="o" begin="1"
													end="1">
													<img class="thumbnail_img" src="/upload/${o }"
														alt="LG G패드4 8.0 블랙 32G 판매합니다!">
												</c:forTokens>
											</div>
										</div>
									</div>

									<div class="cont cont_main_col_1">
										<div class="item_title title_main_col_1">${one.title }</div>
										<div class="item_price pri_main_col_1">
											<fmt:formatNumber value="${one.price }" pattern="###,###" />
											円
										</div>
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
										<div class="price"
											data-point="${user.point eq null ? '0' : user.point }">
											${user.point eq null ? '0' : user.point }<span>ミルク</span>
										</div>
									</div>
								</div>
								<div class="sale_total">
									<div>割引金額</div>
									<div>${user.point eq null ? '0' : user.point }円</div>
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
													<label for="EasyBank" class="radio_desc"> シンプル振り込み
													</label>
													<div class="available_check_box">利用可能銀行確認</div>
													<div class="available_check_list">
														<div>利用可能銀行</div>
														<div>日本銀行、みずほ銀行、三菱ＵＦＪ銀行、三井住友銀行、りそな銀行、埼玉りそな銀行、ジャパンネット銀行、セブン銀行、
															ソニー銀行</div>
													</div>
												</div>
												<i class="arrow"></i>
												<div class="exp"></div>
											</div>
											<div class="easybank_wrapper pc_disaebld">
												<div class="easybank_scroll">
													<div class="swiper_account_box">
														<div
															style="width: 100%; height: 100%; position: relative; touch-action: none;">
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
																		</div>
																	</a>
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
									<dd>
										<span id="price"><fmt:formatNumber value="${one.price}"
												pattern="###,###,###" /></span>円
									</dd>
								</dl>
								<dl>
									<dt>ミルク使用</dt>
									<dd>
										<span id="point"></span>円
									</dd>
								</dl>
								<dl class="final_order_price_margin">
									<dt>配送料</dt>
									<dd>無料配送</dd>
								</dl>
								<dl>
									<dt>
										決済手数料<span class="payment_method_credit">バーチャル口座 3.2%適用</span>
									</dt>
									<dd>
										<span id="comm"><fmt:formatNumber
												value="${one.price *0.032}" pattern="###,###" /></span>円
									</dd>
								</dl>
								
							</div>
							<dl class="order_total_price">
								<dt class="title" style="display: inline-block;">最終決済金額</dt>
								<dd class="totpri" id="orderTotalPrice"
									style="display: inline-block; position: relative; right: -110px"></dd>
							</dl>
							<div class="policy_area">
								<div class="info">
									<label class="feature_option feature_option_checkbox"
										for="agree"> <input type="checkbox" name="agree"
										id="agree" class="feature_option_checkbox_indicator"
										style="position: absolute; top: 2px; left: 0; height: 15px; width: 15px; background: #fff; border: 1px solid #c9cdd2; clip: inherit; appearance: auto;">

									</label>
								</div>
								<div class="description">
									決済ボタンを押すと <span class="txt-bl-12 txt_un">決済時の注意事項</span> 及び <span
										class="txt-bl-12 txt_un">返品払い戻し政策</span>を全部理解した上で、これに同意します。
								</div>
							</div>
							<div class="success_btn_box">
								<div class="success_btn btn_disabled">
									<p onMouseover="this.style.background='#0484f6';"
										onMouseout="this.style.background='lightblue';"
										style="background: lightblue; color: white;">決済</p>
								</div>
							</div>
						</div>
					</div></li>
			</ul>
		</div>
	</div>
</div>
<!-- Modal -->
<div class="modal-wrapper">
	<div class="modal" style="height: 700px">
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
								<div class="row">
									<div class="col-md-12">
										<div style="width: 100%; height: 500px; overflow: auto">
											<table class="table text-center">
												<thead>
													<tr>
														<th style="width: 150px;">우편번호</th>
														<th style="width: 600px;">주소</th>
													</tr>
												</thead>
												<tbody id="zip_codeList"></tbody>
											</table>
										</div>
										<div class="col-md-12" style="text-align: right;">
											<button class="btn btn-dangerous" onclick="closed()">닫기</button>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //넘겨야 할 요소 : 아이디, 총합 가격, 카테고리, many = 1, price = Sum_price,separate = 0; -->
<form action="/buyproduct" method="post" id="form_buy">
	<input type="hidden" name="userid"> <input type="hidden"
		name="category"> <input type="hidden" name="sum_price">
	<input type="hidden" name="price"> <input type="hidden"
		name="many" value="1"> <input type="hidden" name="separate"
		value="0"><input type="hidden" name="picture" value="">
	<input type="hidden" name="sname"> <input type="hidden"
		name="num"> <input type="hidden" name="phone"> <input
		type="hidden" name="address1"> <input type="hidden"
		name="address2"><input type="hidden"
		name="point">
</form>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.trigger').on('click', function() {
			$('.modal-wrapper').toggleClass('open')
			$('.page-wrapper').toggleClass('blur-it');
		});
		$("#close").on("click", function() {
			$(".modal-wrapper").removeClass("open");
		})
		$("#close2").on("click", function() {
			$(".modal-wrapper").removeClass("open");
		})

	});
	function closed() {
		$(".modal-wrapper").removeClass("open");
	}

	$("#zip_codeBtn").on(
			"click",
			function() {
				var zip_code = $("#zip_code").val();
				$
						.ajax({
							url : "/zip_code_find",
							type : 'POST',
							data : JSON.stringify({
								"zip_code" : zip_code
							}),
							contentType : "application/json; charset=UTF-8",
							processData : false,
							success : function(result) {
								console.log(result);
								$("#zip_codeList").empty();
								var html = "";
								if (result.errorCode != null
										&& result.errorCode != "") {
									html += "<tr>";
									html += "    <td colspan='2'>";
									html += result.errorMessage;
									html += "    </td>";
									html += "</tr>";
								} else {
									// 검색결과를 list에 담는다.
									var list = result.list;

									for (var i = 0; i < list.length; i++) {
										html += "<tr>";
										html += "    <td>";
										// 현
										var state = list[i].state;
										// 주소
										var addr = list[i].address;
										//구
										var city = list[i].city
										//?
										var company = "";
										if (list[i].company != 'none') {

											company = list[i].company
										} else {
											company = " ";
										}

										html += zip_code;
										html += "    </td>";
										html += "    <td>";
										html += '<a href="#" onclick="put(\''
												+ state + '\',\'' + city
												+ '\',\'' + addr + '\')">'
												+ state + " " + company + " "
												+ city + " " + addr + '</a>';
										html += "    </td>";
										html += "</tr>";
									}
								}
								$("#zip_codeList").append(html);
							},
							error : function(req, status, error) {
								console.log(error);
							}
						})
			})
	function put(a, b, c) {
		$("#address1").val(a);
		$("#address2").val(b + " " + c);
		$("#close").click();
	}
</script>
<script>
	$(document).ready(function() {
		$(".info_betu").click(function() {
			$(".other_wrapper_div").toggle();
		});
	});

	$(document).ready(function() {
		$(".info_betu").click(function() {
			$(".other_wrapper_consignment").toggle();
		});
	});
</script>
<script type="text/javascript">
	var Allprice;
	var point ;
	$(function() {
		point = 0;
		$(".coupon_btn").on(
				"click",
				function() {
					point = $(".price").attr("data-point");
					console.log("point : " + point);
					$("#point").text("-" + point);
					$(".totpri").text(
							numberWithCommas(price + fee - point
									+ parseInt(removeComma(comm)))
									+ "円");

					$(".coupon_btn").addClass("onmilk");
				})

		var price = ${one.price};
		var comm = $("#comm").text();
		var fee = 1000;
		console.log(comm);
		$(".totpri").text(
				numberWithCommas(price + fee + parseInt(removeComma(comm)))
						+ "円");
		Allprice = parseInt(price) + +parseInt(point)
				+ parseInt(removeComma(comm)) + parseInt(fee);
		console.log(Allprice);
		$("input[name='agree']").prop("checked", false);

	})
	function removeComma(str) {
		n = parseInt(str.replace(/,/g, ""));
		return n;
	}
	function numberWithCommas(x) {
		return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	function subslide(str) {
		var sliceStr = str.slice(0, str.length - 1); //문자
		return sliceStr;
	}
	$("input[name='agree']").on("change", function() {
		if ($("input[name='agree']").prop("checked")) {
			$(".success_btn_box div p").prop("disabled", false);
			$(".success_btn_box div p").attr("data-price", Allprice);
		} else {
			$(".success_btn_box div p").removeAttr("data-price");
			$(".success_btn_box div p").prop("disabled", true);
		}
	})

	$(".success_btn_box div p").on(
			"click",
			function() {
				var price = $(this).attr("data-price");
				var pic = $(".thumbnail_img").attr("src");
				var num =<%=request.getParameter("num")%>;
				//넘겨야 할 요소 : 아이디, 총합 가격, 카테고리, many = 1, price = Sum_price,separate = 0;
				var form = $("#form_buy");
				var id = '${userid}';
				
				$(form).find("input[name='point']").val(point);
				$(form).find("input[name='userid']").val(id);
				$(form).find("input[name='sum_price']").val(Number(price));
				$(form).find("input[name='price']").val(Number(price));
				$(form).find("input[name='category']").val('${one.category}');
				$(form).find("input[name='picture']").val(pic);
				$(form).find("input[name='sname']").val(
						$("input[name='sname']").val());
				$(form).find("input[name='num']").val(num);
				$(form).find("input[name='phone']").val($("#phone").val());
				$(form).find("input[name='address1']").val(
						$("input[name='address1']").val());
				$(form).find("input[name='address2']").val(
						$("input[name='address2']").val());
				form.submit();
			})
</script>
<%@ include file="footer.jsp"%>
