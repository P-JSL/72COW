<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<div class="main_area_center">
	<div class="main">
		<div class="detail_box">
			<div class="detail_box_top">
				<div class="detail_top_area" style="margin-top: 200px;">
					<div class="photo_area">
						<div class="large_img">
							<div
								class="swiper-container swiper-container-initialized swiper-container-horizontal">
								<div class="swiper-wrapper"
									style="transform: translate3d(0px, 0px, 0px);">
									<c:forTokens items="${pdto.picture }" delims="*" var="pic">
										<div
											class="swiper-slide thumbnail_wrapper swiper-slide-active"
											style="width: 460px;">
											<div class="badeagle">
												<div class="centered">
													<img src="/upload/${pic }" alt="에어팟 3세대 프로"
														class="thumbnail_img">
												</div>
											</div>
										</div>
									</c:forTokens>
								</div>
								<div
									class="swiper-pagination swiper-pagination-white auto_item_image_pagination swiper-pagination-fraction">
									<span class="swiper-pagination-current">1</span> / <span
										class="swiper-pagination-total">8</span>
								</div>
								<div class="swiper-button-next auto_swiper_next" tabindex="0"
									role="button" aria-label="Next slide" aria-disabled="false">
									<svg xmlns="https://www.w3.org/2000/svg" viewBox="0 0 27 44">
												<path
											d="M27,22L27,22L5,44l-2.1-2.1L22.8,22L2.9,2.1L5,0L27,22L27,22z"></path></svg>
								</div>
								<div
									class="swiper-button-prev auto_swiper_prev swiper-button-disabled"
									tabindex="0" role="button" aria-label="Previous slide"
									aria-disabled="true">
									<svg xmlns="https://www.w3.org/2000/svg" viewBox="0 0 27 44">
												<path
											d="M0,22L22,0l2.1,2.1L4.2,22l19.9,19.9L22,44L0,22L0,22L0,22z"></path></svg>
								</div>
								<span class="swiper-notification" aria-live="assertive"
									aria-atomic="true"></span>
							</div>
						</div>
						<div class="als_image_viewport">
							<div class="als_prev"></div>
							<div class="als_container">
								<div class="als_viewport" style="transform: translateX(0px);">
									<c:forTokens items="${pdto.picture }" delims="*" var="pic">
										<div class="als_item als_normal_item" style="width: 60px">
											<a><img alt="작은 썸네일 이미지" class="thumbnail_img"
												width="100%" height="100%" src="/upload/${pic }"></a>
										</div>
									</c:forTokens>

								</div>
							</div>
							<div class="als_next"></div>
						</div>
					</div>
					<div class="item_info">
						<div class="item_title_area">
							<span class="item_tag"><span class="used_type_tag">新品</span><span
								class="delivery_tag used_type_tag_active active used_type_tag_active">無料配送</span><span
								class="share_box item_share_box"><img
									src="https://ccimage.hellomarket.com/web/2018/item/btn_share_16x16_x2.png"
									alt="공유이미지" class="share_icon"></span></span>
						</div>
						<span class="item_title">${pdto.title }</span>
						<div class="item_price_box item_price_box_bottom">
							<div class="item_price_box_bottom_low">
								<div class="item_price item_price_bottom">¥${pdto.price }</div>

							</div>
							<div class="description_hellopay  only_hellopay_area">

								<table>
									<tbody>
										<tr>
											<td class="title">出品者</td>
											<td class="description">${pdto.name }</td>
										</tr>
										<tr>
											<td class="title">カテゴリー</td>
											<td class="description">${pdto.category }</td>
										</tr>
										<tr>
											<td class="title">商品の状態</td>
											<td class="description">${pdto.status }</td>
										</tr>
										<tr>
											<td class="title">配送元地域</td>
											<td class="description">${pdto.addr }</td>
										</tr>
										<tr>
											<td class="title">配送料</td>
											<td class="description">無料配送</td>
										</tr>
									</tbody>
								</table>
								<div style="margin-top: 0px;"></div>
							</div>
							<div class="item_sns item_detail_sns">
								<div class="item_hello_box">
									<div class="item_hello_box_pay item_hello_box_chat_pay"
										style="float: left; width: 100%; padding: 15px 0;">
										<a href="/buyproduct?num=${pdto.num }&userid=${user.userid}">
											<button type="button" class="hello_pay_btn">購入</button>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="detail_box_bottom detail_box_item"
					style="padding-top: 0px;">
					<div class="detail_comment">
						<div class="main_auto_item_section">
							<div class="main_auto_item_title">
								<span class="common_text"></span><span class="bold_text">
									どうぶつの森さんのその他の出品 </span><a href="/sellerinfo"><span
									class="all_data">もっと見る &gt;</span></a>
								<div class="hide">
									<img
										src="https://ccimage.hellomarket.com/web/2020/item/btn_detail_arrow_box_left_50x50.png"
										alt="더보기">
								</div>
								<div class="next_arrow">
									<img
										src="https://ccimage.hellomarket.com/web/2020/item/btn_detail_arrow_box_right_50x50.png.png"
										alt="더보기">
								</div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
							<div class="main_auto_item">
								<div class="translate_local" style="transform: translateX(0px);">
									<ul>
										<div class="more_traslate">

											<c:forEach items="${selpic }" var="ps">
												<c:forTokens items="${ps }" delims="*" var="d">
													<li><a href="/item/167465407">
															<div class="wrap_auto_item_wrapper">
																<div class="image_wrapper">
																	<div class="image_outside">
																		<div class="image_centerbox" style="width: 130px">

																			<img alt="LG G패드 4 8.0 블랙 32G 정상해지 판매합니다!"
																				src="/upload/${d }" width="100%" height="100%">
																		</div>
																	</div>
																</div>
															</div>

													</a></li>
												</c:forTokens>
											</c:forEach>


										</div>
									</ul>
								</div>
							</div>
						</div>
						<div class="pc_item_user_info">
							<div class="profile_img">
							<c:choose>
									<c:when test="${uri < 10 }">
										<a href="/sellerinfo"><img class="profile"
									src="/resources/cowlogo.png" alt="모바일 상품 회원 프로필 이미지"><img
									class="profile_img_level"
									src="https://ccimage.hellomarket.com/web/2020/item/img_level_1.png"
									alt="뱃지 이미지"></a>
									</c:when>
									<c:when test="${uri  < 30}">
										<a href="/sellerinfo"><img class="profile"
									src="/resources/cowlogo.png" alt="모바일 상품 회원 프로필 이미지"><img
									class="profile_img_level"
									src="https://ccimage.hellomarket.com/web/2020/item/img_level_2.png"
									alt="뱃지 이미지"></a>
									</c:when>
									<c:when test="${uri  < 70}">
										<a href="/sellerinfo"><img class="profile"
									src="/resources/cowlogo.png" alt="모바일 상품 회원 프로필 이미지"><img
									class="profile_img_level"
									src="https://ccimage.hellomarket.com/web/2020/item/img_level_3.png"
									alt="뱃지 이미지"></a>
									</c:when>
									<c:when test="${uri < 100} ">
										<a href="/sellerinfo"><img class="profile"
									src="/resources/cowlogo.png" alt="모바일 상품 회원 프로필 이미지"><img
									class="profile_img_level"
									src="https://ccimage.hellomarket.com/web/2020/item/img_level_4.png"
									alt="뱃지 이미지"></a>
									</c:when>
									<c:otherwise>
										<a href="/sellerinfo"><img class="profile"
									src="/resources/cowlogo.png" alt="모바일 상품 회원 프로필 이미지"><img
									class="profile_img_level"
									src="https://ccimage.hellomarket.com/web/2020/item/img_level_5.png"
									alt="뱃지 이미지"></a>
									</c:otherwise>
								</c:choose>
								
							</div>
							<div class="nick">
								<a href="/sellerinfo">どうぶつの森</a>
								<c:choose>
									<c:when test="${uri < 10 }">
										<div class="detail_member_level">Lv 1 Nomal</div>
									</c:when>
									<c:when test="${uri  < 30}">
										<div class="detail_member_level">Lv 2 Basic</div>
									</c:when>
									<c:when test="${uri  < 70}">
										<div class="detail_member_level">Lv 3 Bronze</div>
									</c:when>
									<c:when test="${uri < 100} ">
										<div class="detail_member_level">Lv 4 Silver</div>
									</c:when>
									<c:otherwise>
										<div class="detail_member_level">Lv 5 GOLD</div>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="item_count">
								<a href="/sellerinfo"><span class="item_count_title">出品数</span><span
									class="item_count_number">${uri }</span></a>
							</div>
							<div class="detail_profile_review">
								<a href="/s/@15956464?tab=review"><span class="review_label">取引評価</span><span
									class="item_count_rating">(42)</span><span
									class="item_count_rating_image"><img
										src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_16x16_x2.png"
										alt="상품 상세 모바일 별점 한개 이미지 1"><img
										src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_16x16_x2.png"
										alt="상품 상세 모바일 별점 한개 이미지 2"><img
										src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_16x16_x2.png"
										alt="상품 상세 모바일 별점 한개 이미지 3"><img
										src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_16x16_x2.png"
										alt="상품 상세 모바일 별점 한개 이미지 4"><img
										src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_16x16_x2.png"
										alt="상품 상세 모바일 별점 한개 이미지 5"></span></a>
							</div>
						</div>



						<div class="description">
							<div class="description_title">詳細説明</div>
							<div class="detail_item_description">
								<div class="description_text">${pdto.contents }</div>
							</div>
						</div>
						<div class="detail_bottom_box">
							<div class="detail_bottom_area">
								<img
									src="https://ccimage.hellomarket.com/web/2020/item/ico_detail_info_time_x2.png"
									alt="지도아이콘" class="item_location_img"><span class="time">1日前</span>
							</div>
							<div class="detail_bottom_area">
								<img
									src="https://ccimage.hellomarket.com/web/2020/item/ico_detail_info_location_x2.png"
									alt="지도아이콘" class="item_location_img"><span>東京都 </span>
							</div>
							<div class="detail_bottom_area detail_bottom_tag_area">
								<img
									src="https://ccimage.hellomarket.com/web/2020/item/ico_detail_info_tag_x2.png"
									alt="지도아이콘" class="item_location_img"><span class="tag">
									<a href="/search?q=G패드"><button type="button">#携帯</button></a>
									<a href="/search?q=G패드"><button type="button">#携帯</button></a>
									<a href="/search?q=G패드"><button type="button">#携帯</button></a>
									<a href="/search?q=G패드"><button type="button">#携帯</button></a>
									<a href="/search?q=G패드"><button type="button">#携帯</button></a>
									<a href="/search?q=G패드"><button type="button">#携帯</button></a>
								</span>
							</div>
							<div class="detail_bottom_area">
								<img
									src="https://ccimage.hellomarket.com/web/2020/item/ico_detail_info_category_x2.png"
									alt="지도아이콘" class="item_location_img"><a
									href="/search?category=HAK0000"><span>携帯、タブレット</span></a>
								<div>&gt;</div>
								<a href="/search?category=HAK0006"><span>たブレット</span></a>
							</div>
						</div>
						<div class="item_buy_area">
							<div class="item_wish_box">
								<div class="item_wish_box_border">
									<button type="button" class="image_wish_box_btn">
										<img
											src="https://ccimage.hellomarket.com/web/2018/item/ico_zzim.png"
											alt="찜하기이미지" class="ad_wish_icon">
									</button>
								</div>
							</div>
							<div class="item_talk_box">
								<div class="item_talk">헬로톡</div>
							</div>
							<div class="item_buy_box">
								<button type="button" class="item_buy">헬로페이 구매</button>
							</div>
						</div>
						<div class="item_user_info mobile_item_user_info">
							<div class="profile_img">
								<a href="/s/@15956464"><img src="/resources/72cowlogo2.png"
									alt="상품 상세 회원 프로필 이미지"></a>
							</div>
							<div class="nick">
								<a href="/s/@15956464">엘씨상가</a>
							</div>
							<div class="item_count">
								<span class="member_level">Lv 5 골드</span><span
									class="item_count_middot">・</span><span
									class="item_count_rating_image"><img
									src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_16x16_x2.png"
									alt="상품 상세 별점 한개 이미지 1"><img
									src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_16x16_x2.png"
									alt="상품 상세 별점 한개 이미지 2"><img
									src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_16x16_x2.png"
									alt="상품 상세 별점 한개 이미지 3"><img
									src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_16x16_x2.png"
									alt="상품 상세 별점 한개 이미지 4"><img
									src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_16x16_x2.png"
									alt="상품 상세 별점 한개 이미지 5"></span><span class="item_count_rating">(52)</span>
							</div>
							<span class="item_count_number mw_item_count_number">상품
								972개</span>
						</div>



						<div class="comment_title">
							<div class="comment_title_comment">コメント</div>
							<span>(0)</span>
						</div>
						<form name="commentInsertForm" method="post">

							<div class="input_custorm">
								<div class="cm_in_box input-group">
									<input type="hidden" name="num" value="${detail.num}" />
									<textarea type="text" placeholder="コメントを入力してください"
										class="input_txt form-control" id="content" name="content"
										style="width: 482%";
										></textarea>
								</div>
								<div class="cms_btn_box">
									<div class="comment_send_btn" style="margin-top: -50px";>
										<button class="btn btn-default" type="button"
											name="commentInsertBtn" data-id="${user.userid }"
											data-num="1" onclick="submitcom(this)"
											style="color: white; background: #0484F6; border: none;">登録</button>
									</div>
									<%--<%=request.getParameter("num") %  --%>
								</div>
							</div>
						</form>

						<div class="container">
							<div>
								<table class="table table-hover">
									<thead>
										<tr>
											<th>コメント番号</th>
											<th>作成者</th>
											<th>内容</th>
										</tr>
									</thead>
									<tbody class="commentList">


									</tbody>
								</table>
							</div>
						</div>



					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="relation_image_wish_box image_wish_box">
		<button type="button" class="image_wish_box_btn">
			<svg viewBox="0 0 24 24" fill="#484848" fill-opacity="0.5"
				stroke="#ffffff" stroke-width="2" focusable="false" aria-label="찜하기"
				role="img" stroke-linecap="round" stroke-linejoin="round"
				class="image_wish_box_img">
													<path
					d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
					stroke-linejoin="round"></path></svg>
		</button>
	</div>
	</li>
	</ul>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	function submitcom(th) {
		console.log(th);
		var userid = $(th).attr("data-id");
		var num = $(th).attr("data-num");
		var content = $(th).parent().parent().parent().find(".input_txt").val();
		console.log(userid);
		console.log(num);
		console.log(content);

		$.ajax({
			url : "/comment",
			type : "post",
			data : JSON.stringify({
				"userid" : userid,
				"num" : num,
				"content" : content
			}),
			contentType : "application/json; charset=UTF-8",
			processData : false,
			success : function(res) {
				console.log(res);
				var html = "";
				html += "<tr>";
				html += "<th scope='row'>" + res.list[0].cno + "</th>";
				html += "<td>" + res.list[0].userid + "</td>";
				html += "<td>" + res.list[0].content + "</td>";
				html += "</tr>";
				$(".commentList").prepend(html);
			},
			error : function(req, status, error) {
				console.log(req + " : " + status + " : " + error);
			}
		})
	}
</script>

<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "/commread",
			type : "post",
			contentType : "application/json; charset=UTF-8",
			processData : false,
			success : function(res) {
				console.log(res);
				var html = "";
				for (var i = 0; i < res.list.length; i++) {

					html += "<tr>";
					html += "<th scope='row'>" + res.list[i].cno + "</th>";
					html += "<td>" + res.list[i].userid + "</td>";
					html += "<td>" + res.list[i].content + "</td>";
					html += "</tr>";

				}
				$(".commentList").append(html);
			},
			error : function(req, status, error) {
				console.log(req + " : " + status + " : " + error);
			}
		})
	})
</script>
<%@ include file="footer.jsp"%>
