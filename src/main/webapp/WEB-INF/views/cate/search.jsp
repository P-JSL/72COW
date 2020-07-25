<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8">
<title>72Cow</title>



<link rel="stylesheet"
	href="https://cdmedia.hellomarket.com/plugins/sweetalert/sweetalert.css">
<link rel="stylesheet"
	href="https://cdmedia.hellomarket.com/plugins/swiper/swiper4.2.2.min.css">
<style>
@media all and (max-width: 800px) {
	img {
		width: 100%;
	}
}
</style>

<link rel="preload" href="resources/index.js" as="script">
<link rel="preload" href="resources/_app.js" as="script">
<link rel="preload" href="resources/webpack.js" as="script">
<link rel="preload" href="resources/commons.js" as="script">
<link rel="preload" href="resources/main.js" as="script">
<link rel="preload" href="resources/styles.js" as="script">
<link rel="stylesheet" href="resources/chunk.css">
<link rel="stylesheet" href="resources/base.css">


 -->
<link rel="preload" href="resources/index.js" as="script">
<link rel="preload" href="resources/_app.js" as="script">
<link rel="preload" href="resources/webpack.js" as="script">
<link rel="preload" href="resources/commons.js" as="script">
<link rel="preload" href="resources/main.js" as="script">
<link rel="preload" href="resources/styles.js" as="script">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>



<header class="">
	<div class="bar hide"></div>
	<div class="menu">
		<input type="checkbox" href="#" class="menu-open" name="menu-open"
			id="menu-open"><label class="menu-open-button"
			for="menu-open"><img
			src="https://ccimage.hellomarket.com/web/2018/common/btn_mweb_sell_n.png"
			alt="내 물건 판매하기"><span class="lines line-1"></span><span
			class="lines line-2"></span><span class="lines line-3"></span></label><a
			href="https://account.hellomarket.com?continue_url=https://www.hellomarket.com/item/form.hm"
			class="menu-item blue"><img
			src="https://ccimage.hellomarket.com/web/2019/common/img_home_item_sellx2_191117.png"
			alt="상품 등록하기"></a><a
			href="https://account.hellomarket.com?continue_url=https://www.hellomarket.com/auto/form.hm"
			class="menu-item green"><img
			src="https://ccimage.hellomarket.com/web/2019/common/img_home_item_carx2_1118.png"
			alt="자동차 등록하기"></a><a
			href="https://account.hellomarket.com?continue_url=https://www.hellomarket.com/item/rc-form.hm"
			class="menu-item green"><img
			src="https://ccimage.hellomarket.com/web/2019/common/img_home_RCcar_sellx2.png"
			alt="RC카 등록하기"></a>
	</div>
	<section class="header_top">
		<div class="header_logo header_logo_s">
			<div class="log_box"
				style="max-width: 115px; height: 28px; position: relative; top: -45px;">
				<a href="/"><img src="resources/cowlogo.png" class="logo"
					alt="헬로마켓"><img src="resources/nanicowlogo2.png" class="mobile_logo"
					alt="헬로마켓"></a>
			</div>
			<div class="btn_box">
				<a class="btn_login_box" href="/login"><button class="login_btn">ログイン</button></a>
				<a class="btn_signup_box" href="/addmember"><button class="signup_btn">会員登録</button></a>
				<a class="btn_signup_box" href="/admin/index"><button class="signup_btn">管理者</button></a>
					<a href="/msearch"><div class="notification_box"></div></a>
			</div>
			<div class="header_search" id="tebas">
				<div class="com_search_box">
					<div>
						<div>
							<input type="text" class="com_search" placeholder="どんな商品をお探しですか?"
								value="" style="border-bottom: 1px solid rgb(158, 164, 170);">
							<div class="search_icon_box search_engine_icon">
								<div class="search_icon">
									<div class="search_circle"
										style="border-color: rgb(158, 164, 170);"></div>
									<div class="search_rectangle"
										style="border-color: rgb(158, 164, 170); background-color: rgb(158, 164, 170);"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<section class="header_cat">
		<div class="header_wrapper">
			<div>
				<div class="btn_box header_wrapper_sub active">
					<input type="checkbox" class="cat_checkbox chkbox1">
					<i class="arrow"></i>
					<span for="cat_checkbox" class="selectbox">カテゴリー</span>
					<div class="header_category active">
						<div class="cat_list_box left_slidein">
							<div class="mobile_login_wrapper">
								<div class="btn_close_wrapper">
									<input type="checkbox" class="close_checkbox chkbox1" id="btnClose" name="btnClose">
									<button type="button" class="btn_close" for="btnClose">
										<i class="fa fa-times" aria-hidden="true"></i>
									</button>
								</div>
								<a
									href="https://account.hellomarket.com/login?continue_url=https://www.hellomarket.com/">
									<div class="member_info">
										<div class="profile_wrapper">
											<img alt="프로필사진" id="loginProfileImg" class="profile_img"
												src="https://ccimage.hellomarket.com/web/2017/common/img_default_profile_60x60.png">
										</div>
										<div class="member_info_txt">로그인하세요</div>
									</div>
								</a>
							</div>
							<div class="mobile_nav">
								<div class="cat_avt">
									<ul class="cat_avt_top">
										<li><a href="/search?sort=current">最新順 &gt;</a></li>
										<li><a>近い順 &gt;</a></li>
									</ul>
								</div>
									<nav>
									<ul class="cat_list mobile_cat_list_none">
										<li class="cat_space"></li>
										<li class="cat_space"></li>
										<li class="cat_space"></li>
										<li class="cat_space"></li>
										<li class="cat_space"></li>
										<li class="cat_space"></li>
										<li class="category"><a class="cat_link"
											href="/cate/gagu"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_haf0000.png"
												alt="가구" class="category_img"><span
												class="category_text">家具</span></a></li>
										<li class="category"><a class="cat_link"
											href="/cate/living"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hag0000.png"
												alt="생활용품" class="category_img"><span
												class="category_text">生活商品</span></a></li>
										<li class="category"><a class="cat_link"
											href="/cate/food"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hau0000.png"
												alt="식품" class="category_img"><span
												class="category_text">食品</span></a></li>
										<li class="category"><a class="cat_link"
											href="/cate/dress"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hab0000.png"
												alt="의류" class="category_img"><span
												class="category_text">衣類</span></a></li>
										<li class="category"><a class="cat_link"
											href="/cate/book"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hap0000.png"
												alt="도서" class="category_img"><span
												class="category_text">書籍、本</span></a></li>
										<li class="category"><a class="cat_link"
											href="/cate/outside"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hzz0000.png"
												alt="기타" class="category_img"><span
												class="category_text">その他</span></a></li>

										<li class="category_blank"></li>
										<li class="category_blank"></li>
										<li class="category_blank"></li>
										<li class="category_blank"></li>
										<li class="category_blank"></li>
										<li class="category_blank"></li>
										<li class="category_blank"></li>
									</ul>
								</nav>
								<ul class="mobile mobile_sub_category">
									<li><a href="/community/list.hm?category=DAC0002">이벤트</a><i
										class="arrow right_arrow"></i></li>
									<li><a href="/community/list.hm?category=DAC0004">헬마뉴스</a><i
										class="arrow right_arrow"></i></li>
									<li><a href="/help/faq.hm">헬프센터</a><i
										class="arrow right_arrow"></i></li>
									<li><a href="https://ad.hellomarket.com" target="_blank"
										rel="noopener noreferrer">광고센터</a><i class="arrow right_arrow"></i></li>
								</ul>
								<ul class="logout_wrapper"></ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="sellimg_sub_box header_wrapper_sub">
				<div class="selling_bot">
				<a href="/sellproduct">
					<img
						src="https://ccimage.hellomarket.com/web/2019/header/ico_sell_camera_x2.png"
						alt="판매하기 이미지" class="selling_bot_img"
						><span
						class="selling_bot_text">出品</span>
						</a>
				</div>
			</div>
			<div class="link_box header_wrapper_sub">
				<ul>
					<li><a href="/faq">お問い合わせ</a></li>
					<li><a href="/notice"><img
							src="https://ccimage.hellomarket.com/web/2019/header/ico_category_AD_x2.png"
							alt="광고센터 아이콘이미지">お知らせ</a></li>
				</ul>
			</div>
		</div>
	</section>
</header>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
var modals ="";
$(function() {
   $(".header_wrapper_sub").removeClass("active");
   $(".header_category").removeClass("active");
   //header_category active
    modals= $(".w_search_modal").html();
    $(".w_search_modal").hide();
   console.log(modals);
})

	$(".selectbox").on("click", function() {
		var category = $(".header_category").attr("class");
		if (category == "header_category active") {
			$(".header_category").removeClass("active");
			$(".header_wrapper_sub").removeClass("active");
		} else {
			$(".header_category").addClass("active");
			$(".header_wrapper_sub").addClass("active");
		}
	})
	$(".search_close").click(function() {
		$(".w_search_modal").hide();
	})
	$(".com_search").on("click", function() {
		$(".w_search_modal").show();
	})
</script>


<!-- main -->


<section class="content">
	<h2>메인 이미지 영역</h2>

	<div class="main_area">
		<div class="main_area_center">
			<div class="main_home">
				<h1>헬로마켓 - 100% 안전한 중고거래 장터</h1>
				<h2>모바일 중고나라, 무료나눔이 많은 직거래 중고장터</h2>
				<div>
					<div class="infinite-scroll-component "
						style="height: auto; overflow: hidden auto;">
						<ul class="mian_row ">

							<li class="main_col_4" style="height: auto;">
								<div class="item_wrapper_card">
									<a class="card card_list" href="/productdetail">
										<div class="card_box">
											<div class="image_wrapper">
												<div class="image_outside">
													<div class="image_centerbox">
														<img
															src="/resources/img/3333.png"
															alt="에어팟 3세대 프로" class="thumbnail_img"><label
															data-index="4" style="display: none;">4</label>
													</div>
												</div>
											</div>

											<div class="cont">
												<div class="item_title">商品A</div>
												<div class="item_price">21,000円</div>
											</div>
										</div>
									</a>
								</div>
							</li>

							<li class="main_col_4" style="height: auto;">
								<div class="item_wrapper_card">
									<a class="card card_list"
										href="/item/167478262?viewPath=main_feed&amp;clickPath=home&amp;feedType=ranking&amp;featuredFeedType=RankingItem&amp;escrowType=common&amp;feedPosition=6">
										<div class="card_box">
											<div class="image_wrapper">
												<div class="image_outside">
													<div class="image_centerbox">
														<img
															src="/resources/img/3333.png"
															alt="에어팟 3세대 프로" class="thumbnail_img"><label
															data-index="4" style="display: none;">4</label>
													</div>
												</div>
											</div>

											<div class="cont">
												<div class="item_title">商品A</div>
												<div class="item_price">21,000円</div>
											</div>
										</div>
									</a>
								</div>
							</li>


							<li class="main_col_4" style="height: auto;">
								<div class="item_wrapper_card">
									<a class="card card_list"
										href="/item/167478262?viewPath=main_feed&amp;clickPath=home&amp;feedType=ranking&amp;featuredFeedType=RankingItem&amp;escrowType=common&amp;feedPosition=6">
										<div class="card_box">
											<div class="image_wrapper">
												<div class="image_outside">
													<div class="image_centerbox">
														<img
															src="/resources/img/3333.png"
															alt="에어팟 3세대 프로" class="thumbnail_img"><label
															data-index="4" style="display: none;">4</label>
													</div>
												</div>
											</div>

											<div class="cont">
												<div class="item_title">商品A</div>
												<div class="item_price">21,000円</div>
											</div>
										</div>
									</a>
								</div>
							</li>


							<li class="main_col_4" style="height: auto;">
								<div class="item_wrapper_card">
									<a class="card card_list"
										href="/item/167478262?viewPath=main_feed&amp;clickPath=home&amp;feedType=ranking&amp;featuredFeedType=RankingItem&amp;escrowType=common&amp;feedPosition=6">
										<div class="card_box">
											<div class="image_wrapper">
												<div class="image_outside">
													<div class="image_centerbox">
														<img
															src="/resources/img/3333.png"
															alt="에어팟 3세대 프로" class="thumbnail_img"><label
															data-index="4" style="display: none;">4</label>
													</div>
												</div>
											</div>

											<div class="cont">
												<div class="item_title">商品A</div>
												<div class="item_price">21,000円</div>
											</div>
										</div>
									</a>
								</div>
							</li>

							<li class="main_col_4" style="height: auto;">
								<div class="item_wrapper_card">
									<a class="card card_list"
										href="/item/167478262?viewPath=main_feed&amp;clickPath=home&amp;feedType=ranking&amp;featuredFeedType=RankingItem&amp;escrowType=common&amp;feedPosition=6">
										<div class="card_box">
											<div class="image_wrapper">
												<div class="image_outside">
													<div class="image_centerbox">
														<img
															src="/resources/img/3333.png"
															alt="에어팟 3세대 프로" class="thumbnail_img"><label
															data-index="4" style="display: none;">4</label>
													</div>
												</div>
											</div>

											<div class="cont">
												<div class="item_title">商品A</div>
												<div class="item_price">21,000円</div>
											</div>
										</div>
									</a>
								</div>
							</li>


							<li class="main_col_4" style="height: auto;">
								<div class="item_wrapper_card">
									<a class="card card_list"
										href="/item/167478262?viewPath=main_feed&amp;clickPath=home&amp;feedType=ranking&amp;featuredFeedType=RankingItem&amp;escrowType=common&amp;feedPosition=6">
										<div class="card_box">
											<div class="image_wrapper">
												<div class="image_outside">
													<div class="image_centerbox">
														<img
															src="/resources/img/3333.png"
															alt="에어팟 3세대 프로" class="thumbnail_img"><label
															data-index="4" style="display: none;">4</label>
													</div>
												</div>
											</div>

											<div class="cont">
												<div class="item_title">商品A</div>
												<div class="item_price">21,000円</div>
											</div>
										</div>
									</a>
								</div>
							</li>


							<li class="main_col_4" style="height: auto;">
								<div class="item_wrapper_card">
									<a class="card card_list"
										href="/item/167478262?viewPath=main_feed&amp;clickPath=home&amp;feedType=ranking&amp;featuredFeedType=RankingItem&amp;escrowType=common&amp;feedPosition=6">
										<div class="card_box">
											<div class="image_wrapper">
												<div class="image_outside">
													<div class="image_centerbox">
														<img
															src="/resources/img/3333.png"
															alt="에어팟 3세대 프로" class="thumbnail_img"><label
															data-index="4" style="display: none;">4</label>
													</div>
												</div>
											</div>

											<div class="cont">
												<div class="item_title">商品A</div>
												<div class="item_price">21,000円</div>
											</div>
										</div>
									</a>
								</div>
							</li>


							<li class="main_col_4" style="height: auto;">
								<div class="item_wrapper_card">
									<a class="card card_list"
										href="/item/167478262?viewPath=main_feed&amp;clickPath=home&amp;feedType=ranking&amp;featuredFeedType=RankingItem&amp;escrowType=common&amp;feedPosition=6">
										<div class="card_box">
											<div class="image_wrapper">
												<div class="image_outside">
													<div class="image_centerbox">
														<img
															src="/resources/img/3333.png"
															alt="에어팟 3세대 프로" class="thumbnail_img"><label
															data-index="4" style="display: none;">4</label>
													</div>
												</div>
											</div>

											<div class="cont">
												<div class="item_title">商品A</div>
												<div class="item_price">21,000円</div>
											</div>
										</div>
									</a>
								</div>
							</li>



						</ul>
					</div>
				</div>
<
				<div class="ad_banner_absolute" style="top: -207px;">
					<div class="ad_banner">
						<a href="https://ad.hellomarket.com/direct/content"
							target="_blank" rel="noopener noreferrer"><img
							src="https://ccimage.hellomarket.com/web/2019/banner/img_banner_main_ad_0903_x2.png"
							alt="회원직접광고 배너 이미지"></a>
					</div>
				</div>
				<div class="police_banner_absolute" style="top: 30px;">
				
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //main -->

<!-- footer  -->
<div class="footer">
	<div class="footer_area">
		<div class="footer_top">
			<div class="f_wrapper">
				<ul class="f_left">
					<li><span>Hellomarket Inc.</span></li>
					<li><a class="link_info" href="/help/faq.hm">FAQ</a><span
						class="list_space"></span></li>
					<li><a class="link_info" href="/terms.hm">이용약관</a><span
						class="list_space"></span></li>
					<li><a class="link_info" href="/protection.hm">개인정보 처리방침</a></li>
				</ul>
				<ul class="f_right">
					<li><a
						href="https://itunes.apple.com/kr/app/id469381475?mt=8&amp;ls=1"
						target="_blank" rel="noopener noreferrer"><img
							src="https://ccimage.hellomarket.com/web/2017/common/img_footer_appstore.png"
							alt="appstore" class="appstore_n_btn"></a></li>
					<li><a
						href="https://play.google.com/store/apps/details?id=com.tuck.hellomarket"
						target="_blank" rel="noopener noreferrer"><img
							src="https://ccimage.hellomarket.com/web/2017/common/img_footer_googleplay.png"
							alt="googleplay" class="googleplay_n_btn"></a></li>
					<li><a href="https://blog.naver.com/tuckandco" target="_blank"
						rel="noopener noreferrer"><img
							src="https://ccimage.hellomarket.com/web/2019/footer/img_naver_gray_blog.png"
							alt="naverblog" class="naver_blog_n_btn"></a></li>
				</ul>
			</div>
		</div>
		<div class="footer_bottom">
			<div class="f_wrapper">
				<div class="footer_wrapper_left">
					<div class="fb_logobox">
						<img
							src="https://ccimage.hellomarket.com/web/2017/common/footer/img_footer_logo_171127.png"
							alt="hellomarket">
					</div>
					<ul class="footer_company_info">
						<li><span>（株） 72COW（神田雑貨店） | </span>
						<span>東京都千代田区丸の内</span></li>
						<li><span>事業番号 : 105-87-56305</span><span>ああああ <a
								href="#"
								class="link_info" target="_blank" rel="noopener noreferrer"
								style="text-decoration: underline;">123123123</a>
						</span></li>
						<li><span>問い合わせ: 080-324-4090</span><span>(平日
								10~16時) | ファックス : 08-3141-4090</span></li>
						<li><span>申告センター: <a
								href="https://www.hellomarket.com/help/inquiry/form.hm"
								target="_blank" rel="noopener noreferrer"
								style="text-decoration: underline;">헬프센터 - 문의</a></span><span> |
								<a
								href="https://www.hellomarket.com/help/inquiry/form.hm?categoryId=IGA0200"
								target="_blank" rel="noopener noreferrer"
								style="text-decoration: underline;">제휴문의</a>
						</span></li>
						<br>
						<li><span>(株)72COWは～～～～～～～～～
						72COWは～～～～～～～～～～</span></li>
						<li><span>©(株)72COW . All rights reserved.</span></li>
					</ul>
				</div>
				<div class="footer_wrapper_right">
					<ul class="box">
						<li style="font-weight: bold;">기업은행 구매 안전 서비스 (채무지급보증)</li>
						<li>안전거래를 위해 현금 등으로 결제 시,</li>
						<li>저희 사이트에서 가입한 기업은행의</li>
						<li>구매안전서비스를 이용하실 수 있습니다.</li>
						<li><img
							src="https://ccimage.hellomarket.com/web/2017/common/footer/btn_footer_service_n.png"
							alt="services" class="footer_service_btn"></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!--  footer -->


</body>
</html>
