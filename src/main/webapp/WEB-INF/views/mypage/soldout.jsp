<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<style>
.search_group_menu i.arrow:before, i:after {
	content: "";
	position: absolute;
	background-color: #454c53;
	width: 1px;
	height: 1px;
}
</style>
<section class="content">
	<div class="item_list_area">
		<h1>회원프로필</h1>
		<div class="breadcrumbs" id="breadcrumbs">
			<ul>
				<li><a href="/">HOME</a></li>
				<li>&gt; <a href="/s/@16132188?type=item">私のメニュー</a></li>
			</ul>
		</div>
		<div class="main_area">
			<div class="main_area_center">
				<div class="main">
					<h2>会員情報</h2>
					<div class="my_profile_left">
						<div class="my_profile_info">
							<div class="my_profile_image">
								<img
									src="https://ccimage.hellomarket.com/web/2019/member/img_apply_profile_4x_0419.png"
									alt="n16132188의 프로필 이미지"><img
									src="https://ccimage.hellomarket.com/web/2019/member/img_level_1_x2.png"
									alt="뱃지 이미지">
							</div>
							<div class="my_profile_nick">${userlist.userid }</div>
							<div class="my_profile_shop_created">
								<div class="my_profile_start_mobile">
								<fmt:formatDate value="${userlist.rdate}" pattern="yy-MM-dd"/>
													
								시작</div>
								<div class="my_profile_start"><fmt:formatDate value="${userlist.rdate}" pattern="yy-MM-dd"/>시작</div>
							</div>
							<div class="my_profile_pro_review">
								<div class="my_profile_pro_review_box">
									<a href="/s/@16132188?tab=item"><span>商品</span><span>0</span></a>
								</div>
								<div class="my_profile_pro_review_box">
									<a href="/s/@16132188?tab=review"><span>取引評価</span><span>0</span>
										<div class="my_profile_pro_review_rating">
											<img
												src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png"
												alt="프로필 별점 없는 이미지 1"><img
												src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png"
												alt="프로필 별점 없는 이미지 2"><img
												src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png"
												alt="프로필 별점 없는 이미지 3"><img
												src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png"
												alt="프로필 별점 없는 이미지 4"><img
												src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png"
												alt="프로필 별점 없는 이미지 5">
										</div></a>
								</div>
							</div>
						</div>
						<div class="my_profile_nav">
							<ul>
								<li class="my_profile_m_nav"><a class="active"
									href="/s/@16132188?tab=item"><span>상품 0</span></a></li>
								<li class="my_profile_m_nav"><a
									href="/s/@16132188?tab=review"><span>거래후기&nbsp;</span><span>0</span>
										<div class="my_profile_pro_review_rating">
											<img
												src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png"
												alt="프로필 별점 없는 이미지 1"><img
												src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png"
												alt="프로필 별점 없는 이미지 2"><img
												src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png"
												alt="프로필 별점 없는 이미지 3"><img
												src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png"
												alt="프로필 별점 없는 이미지 4"><img
												src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png"
												alt="프로필 별점 없는 이미지 5">
										</div></a></li>
								<li><a href="/mypage/outmember?userid=${userlist.userid}"><span>会員退会</span></a></li>
								<li><a href="/mypage/profileModify?userid=${userlist.userid}"><span>会員情報設定</span></a></li>
							</ul>
						</div>
					</div>
					<h2>회원 탭 영역</h2>
					<section class="left_main profile_right_main">
						<div class="tab_content">
							<div class="my_profile_item_menu">
								<ul>
									<li class=""><a class="" href="/mypage/myshop?userid=${userlist.userid }">販売商品</a></li>
									<li class="active"><a class="active" href="/mypgae/soldout?userid=${userlist.userid }">販売完了商品</a></li>
								</ul>
							</div>
							<div class="cat_box">
								<div class="my_specialist_name">
									全体&nbsp;<span>${count}</span>
								</div>
							</div>
							<div class="tab_content">
								<div class="default_message" style="margin: auto;">
									<div>
										<ul class="mian_row general_mian_row">
											<c:forEach var="slist" items="${soldoutlist}">
												<li class="main_col_3" style="height: auto;">
												<div class="item_wrapper_card">
														<a class="card card_list"
															href="/productdetail?title=${slist.title }&userid=${slist.userid }&contents=${slist.contents }&amount=${slist.amount }&category=${slist.category }&status=${slist.status }&addr=${slist.addr }&num=${slist.num }&price=${slist.price}&name=${slist.name}&picture=${slist.picture}"><div
																class="card_box">
																<div class="image_wrapper">
																	<div class="image_outside">
																		<c:forTokens items="${slist.picture}" delims="*" var="i" begin="1" end="1">
																		<div class="image_centerbox">
																			<img src="/upload/${i }" 
																				alt="히가시노게이고,추리소설" class="thumbnail_img" style=" padding-top: 0;"><label
																				data-index="0" style="display: none;">0</label>
																		</div>
																		</c:forTokens>
																	</div>
																</div>
																<div class="cont">
																	<div class="item_title">${slist.title }</div>
																	<a class="label label-danger" style="float: right;" href="/mypage/SoldDelete?num=${slist.num}&userid=${userlist.userid}">
																	<i class="fa fa-trash-o" aria-hidden="true" style="font-size: x-large; color: white;" ></i>
																	</a>
																</div>
															</div></a>
													</div>
													
												</li>
											</c:forEach>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../footer.jsp"%>