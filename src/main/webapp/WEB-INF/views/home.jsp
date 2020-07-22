<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8">
<link rel="canonical" href="https://www.hellomarket.com/">
<title>헬로마켓 - 100% 안전한 중고거래 장터</title>
<meta name="description"
	content="누구나 쉽게 중고거래를 할 수 있는 모바일 중고나라 입니다. 중고 휴대폰, 중고차 등 다양한 중고 물건을 안전하게 거래하세요!">
<meta name="keywords"
	content="헬로마켓은 누구나 사고 팔 수 있는 가장 쉽고 안전한 개인간 중고거래 마켓 입니다. 안 쓰는 물건, 중고물건은 누구나 거래할 수 있으며 특히 물물교환과 무료나눔이 많은 중고장터 입니다. 전국에서 등록되는 다양한 중고물건을 편의점택배를 통한 택배거래, 직거래 할 수 있고, 헬로페이 에스크로 안전거래서비스를 통해 사기 걱정없는 거래를 할 수 있습니다. 매월 전국에서 열리는 플리마켓 벼룩시장 정보를 제공합니다.">
<meta property="og:title" content="헬로마켓 - 100% 안전한 중고거래 장터">
<meta property="og:description"
	content="누구나 쉽게 중고거래를 할 수 있는 모바일 중고나라 입니다. 중고 휴대폰, 중고차 등 다양한 중고 물건을 안전하게 거래하세요!">
<meta property="og:url" content="https://www.hellomarket.com/">
<meta property="og:image"
	content="https://ccimage.hellomarket.com/web/common/img_share_20170111.png">
<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="og:site_name" content="헬로마켓">
<meta name="robots" content="index,follow">
<meta name="copyright" content="Copyright (c) 2011 Hellomarket Inc.">
<meta name="twitter:title" content="헬로마켓 - 100% 안전한 중고거래 장터">
<meta name="twitter:description"
	content="누구나 쉽게 중고거래를 할 수 있는 모바일 중고나라 입니다. 중고 휴대폰, 중고차 등 다양한 중고 물건을 안전하게 거래하세요!">
<meta name="twitter:image"
	content="https://ccimage.hellomarket.com/web/common/img_share_20170111.png">
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@hellomarket">
<meta name="twitter:creator" content="hellomarket">
<meta http-equiv="cache-control"
	content="no-cache, must-revalidate, post-check=0, pre-check=0">
<meta http-equiv="expires" content="0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="pragma" content="no-cache">
<meta property="fb:pages" content="126845860730781">
<meta property="business:contact_data:street_address"
	content="마포구 와우산로25길 7 (서교동, 서문빌딩) 5층">
<meta property="business:contact_data:locality" content="서울특별시">
<meta property="business:contact_data:postal_code" content="040054">
<meta property="business:contact_data:country_name" content="대한민국">
<meta property="business:contact_data:email"
	content="help@hellomarket.com">
<meta property="place:location:latitude" content="37.5536844">
<meta property="place:location:longitude" content="126.9257458">
<meta property="al:android:url" content="hellomarket://hellomarket.api">
<meta property="al:android:package" content="com.tuck.hellomarket">
<meta property="al:android:app_name"
	content="헬로마켓 - 중고 거래 안전하게 하는 개인들의 중고장터(중고차, 중고폰, 중고나라)">
<meta property="al:ios:url" content="hellomarket://hellomarket.api">
<meta property="al:ios:app_store_id" content="469381475">
<meta property="al:ios:app_name" content="헬로마켓">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="google-site-verification"
	content="ggHDFNKLE20RhE6DgQt1WCka106UdjE4YQP7Y8gGbBo">
<meta name="naver-site-verification"
	content="84fcff496e9c388f1deb5329cd55eb3234729c34">
<meta name="theme-color" content="#037EB4">
<meta name="msapplication-TileImage" content="/icon/ms-icon-144x144.png">
<link rel="manifest" href="/manifest.json">
<link rel="icon" type="image/x-icon" href="/icon/favicon.ico">
<link rel="apple-touch-icon" sizes="57x57"
	href="/icon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/icon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/icon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/icon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/icon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/icon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/icon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/icon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/icon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="/icon/android-icon-192x192.png">
<meta name="viewport"
	content="initial-scale=1.0,user-scalable=no,maximum-scale=1,width=device-width">
<meta property="fb:app_id" content="306163192727427">
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
<meta name="next-head-count" content="61">
<link rel="preload" href="/resources/index.js" as="script">
<link rel="preload" href="/resources/_app.js" as="script">
<link rel="preload" href="/resources/webpack.js" as="script">
<link rel="preload" href="/resources/commons.js" as="script">
<link rel="preload" href="/resources/main.js" as="script">
<link rel="preload" href="/resources/styles.js" as="script">
<link rel="stylesheet" href="/resources/chunk.css">
<style id="__jsx-2573731215">
#nprogress {
	pointer-events: none;
}

#nprogress .bar {
	background: #2299DD;
	position: fixed;
	z-index: 1031;
	top: 0;
	left: 0;
	width: 100%;
	height: 2px;
}

#nprogress .peg {
	display: block;
	position: absolute;
	right: 0px;
	width: 100px;
	height: 100%;
	box-shadow: 0 0 10px #2299DD, 0 0 5px #2299DD;
	opacity: 1;
	-webkit-transform: rotate(3deg) translate(0px, -4px);
	-ms-transform: rotate(3deg) translate(0px, -4px);
	-webkit-transform: rotate(3deg) translate(0px, -4px);
	-ms-transform: rotate(3deg) translate(0px, -4px);
	transform: rotate(3deg) translate(0px, -4px);
}

#nprogress .spinner {
	display: none;
	position: fixed;
	z-index: 1031;
	top: 15px;
	right: 15px;
}

#nprogress .spinner-icon {
	width: 18px;
	height: 18px;
	box-sizing: border-box;
	border: solid 2px transparent;
	border-top-color: #2299DD;
	border-left-color: #2299DD;
	border-radius: 50%;
	-webkit-animation: nprogresss-spinner 400ms linear infinite;
	-webkit-animation: nprogress-spinner 400ms linear infinite;
	animation: nprogress-spinner 400ms linear infinite;
}

.nprogress-custom-parent {
	overflow: hidden;
	position: relative;
}

.nprogress-custom-parent #nprogress .spinner, .nprogress-custom-parent #nprogress .bar
	{
	position: absolute;
}

@
-webkit-keyframes nprogress-spinner { 0%{
	-webkit-transform: rotate(0deg);
}

100








%
{
-webkit-transform








:








rotate






(








360deg








)






;
}
}
@
-webkit-keyframes nprogress-spinner { 0%{
	-webkit-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
	transform: rotate(0deg);
}

100








%
{
-webkit-transform








:








rotate






(








360deg








)






;
-ms-transform








:








rotate






(








360deg








)






;
transform








:








rotate






(








360deg








)






;
}
}
@
keyframes nprogress-spinner { 0%{
	-webkit-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
	transform: rotate(0deg);
}
100








%
{
-webkit-transform








:








rotate






(








360deg








)






;
-ms-transform








:








rotate






(








360deg








)






;
transform








:








rotate






(








360deg








)






;
}
}
</style>
<style id="__jsx-1471488780">
#nprogress {
	pointer-events: none;
}

#nprogress .bar {
	background: #2299DD;
	position: fixed;
	z-index: 1031;
	top: 0;
	left: 0;
	width: 100%;
	height: 2px;
}

#nprogress .peg {
	display: block;
	position: absolute;
	right: 0px;
	width: 100px;
	height: 100%;
	box-shadow: 0 0 10px #2299DD, 0 0 5px #2299DD;
	opacity: 1;
	-webkit-transform: rotate(3deg) translate(0px, -4px);
	-ms-transform: rotate(3deg) translate(0px, -4px);
	-webkit-transform: rotate(3deg) translate(0px, -4px);
	-ms-transform: rotate(3deg) translate(0px, -4px);
	transform: rotate(3deg) translate(0px, -4px);
}

#nprogress .spinner {
	display: block;
	position: fixed;
	z-index: 1031;
	top: 15px;
	right: 15px;
}

#nprogress .spinner-icon {
	width: 18px;
	height: 18px;
	box-sizing: border-box;
	border: solid 2px transparent;
	border-top-color: #2299DD;
	border-left-color: #2299DD;
	border-radius: 50%;
	-webkit-animation: nprogresss-spinner 400ms linear infinite;
	-webkit-animation: nprogress-spinner 400ms linear infinite;
	animation: nprogress-spinner 400ms linear infinite;
}

.nprogress-custom-parent {
	overflow: hidden;
	position: relative;
}

.nprogress-custom-parent #nprogress .spinner, .nprogress-custom-parent #nprogress .bar
	{
	position: absolute;
}

@
-webkit-keyframes nprogress-spinner { 0%{
	-webkit-transform: rotate(0deg);
}

100








%
{
-webkit-transform








:








rotate






(








360deg








)






;
}
}
@
-webkit-keyframes nprogress-spinner { 0%{
	-webkit-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
	transform: rotate(0deg);
}

100








%
{
-webkit-transform








:








rotate






(








360deg








)






;
-ms-transform








:








rotate






(








360deg








)






;
transform








:








rotate






(








360deg








)






;
}
}
@
keyframes nprogress-spinner { 0%{
	-webkit-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
	transform: rotate(0deg);
}
100








%
{
-webkit-transform








:








rotate






(








360deg








)






;
-ms-transform








:








rotate






(








360deg








)






;
transform








:








rotate






(








360deg








)






;
}
}
</style>
<script
	src="https://www.googletagservices.com/activeview/js/current/osd.js?cb=%2Fr20100101"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="https://partner.googleadservices.com/gampad/cookie.js?domain=www.hellomarket.com&amp;callback=_gfp_s_&amp;client=ca-pub-9169594828612333&amp;cookie=ID%3D96cce10925d1fee9%3AT%3D1594619671%3AS%3DALNI_Mb2EX8-ymhSdusc-2VbqS9s0uqvNA"></script>
<script
	src="https://pagead2.googlesyndication.com/pagead/js/r20200707/r20190131/show_ads_impl.js"
	id="google_shimpl"></script>
<script src="https://www.gstatic.com/firebasejs/5.2.0/firebase.js"
	type="text/javascript"></script>
<link rel="preload"
	href="https://adservice.google.co.kr/adsid/integrator.js?domain=www.hellomarket.com"
	as="script">
<script type="text/javascript"
	src="https://adservice.google.co.kr/adsid/integrator.js?domain=www.hellomarket.com"></script>
<link rel="preload"
	href="https://adservice.google.com/adsid/integrator.js?domain=www.hellomarket.com"
	as="script">

<link rel="preload" href="/resources/index.js" as="script">
<link rel="preload" href="/resources/_app.js" as="script">
<link rel="preload" href="/resources/webpack.js" as="script">
<link rel="preload" href="/resources/commons.js" as="script">
<link rel="preload" href="/resources/main.js" as="script">
<link rel="preload" href="/resources/styles.js" as="script">
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
				<a href="/"><img src="/resources/LOGOS.png" class="logo"
					alt="헬로마켓"><img src="/resources/LOGOS.png"
					class="mobile_logo" alt="헬로마켓"></a>
			</div>
			<div class="btn_box">
				<a class="btn_login_box" href="/login"><button class="login_btn">로그인</button></a><a
					href="/signup" class="btn_signup_box"><button
						class="signup_btn">회원가입</button></a><a href="/msearch"><div
						class="notification_box"></div></a>
			</div>
			<div class="header_search" id="tebas">
				<div class="com_search_box">
					<div>
						<div>
							<input type="text" class="com_search"
								placeholder="어떤 상품을 찾고 계세요?" value=""
								style="border-bottom: 1px solid rgb(158, 164, 170);">
							<div class="search_icon_box search_engine_icon">
								<div class="search_icon">
									<div class="search_circle"
										style="border-color: rgb(158, 164, 170);"></div>
									<div class="search_rectangle"
										style="border-color: rgb(158, 164, 170); background-color: rgb(158, 164, 170);"></div>
								</div>
							</div>
							<div class="w_search_modal">
								<div>
									<div class="search_contents">
										<div class="search_recent">
											<p>최근 검색</p>
											<ul>
												<div class="search_empty">최근 검색내역이 없습니다.</div>
											</ul>
										</div>
										<div class="line"></div>
										<div class="search_popular">
											<p>인기 키워드</p>
											<ul>
												<li class=""><span>1</span> 진로</li>
												<li class=""><span>2</span> 미싱</li>
												<li class=""><span>3</span> 베라크루즈</li>
												<li class=""><span>4</span> 휴롬</li>
												<li class=""><span>5</span> 10400</li>
												<li class=""><span>6</span> 판도라</li>
												<li class=""><span>7</span> 파라점퍼스 고비</li>
												<li class=""><span>8</span> 톰브라운 맨투맨</li>
												<li class=""><span>9</span> 여성</li>
												<li class="last_child"><span>10</span> 슬링백</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="search_close">
									<div>닫기</div>
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
					<input type="checkbox" class="cat_checkbox chkbox1"><i
						class="arrow"></i><span for="cat_checkbox" class="selectbox">カテゴリー</span>
					<div class="header_category active">
						<div class="cat_list_box left_slidein">
							<div class="mobile_login_wrapper">
								<div class="btn_close_wrapper">
									<input type="checkbox" class="close_checkbox chkbox1"
										id="btnClose" name="btnClose">
									<button type="button" class="btn_close" for="btnClose">
										<i class="fa fa-times" aria-hidden="true"></i>
									</button>
								</div>
								<a
									href="https://account.hellomarket.com/login?continue_url=https://www.hellomarket.com/"><div
										class="member_info">
										<div class="profile_wrapper">
											<img alt="프로필사진" id="loginProfileImg" class="profile_img"
												src="https://ccimage.hellomarket.com/web/2017/common/img_default_profile_60x60.png">
										</div>
										<div class="member_info_txt">로그인하세요</div>
									</div></a>
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
											href="/search?category=HFA0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hfa0000.png"
												alt="자동차" class="category_img"><span class="車">車</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HBA0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hba0000.png"
												alt="핸드메이드" class="category_img"><span
												class="category_text">ハンドメード</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAK0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hak0000.png"
												alt="휴대폰, 태블릿" class="category_img"><span
												class="category_text">携帯、タブレット</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAF0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_haf0000.png"
												alt="가구" class="category_img"><span
												class="category_text">家具</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAW0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_haw0000.png"
												alt="문구" class="category_img"><span
												class="category_text">文具</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HEA0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hea0000.png"
												alt="유기동물입양" class="category_img"><span
												class="category_text">動物お引き取り</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAR0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_har0000.png"
												alt="자동차용품" class="category_img"><span
												class="category_text">自動車用品</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAE0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hae0000.png"
												alt="유아동,완구" class="category_img"><span
												class="category_text">ベビー用品</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAI0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hai0000.png"
												alt="컴퓨터,주변기기" class="category_img"><span
												class="category_text">PC,周辺機器</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAG0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hag0000.png"
												alt="생활" class="category_img"><span
												class="category_text">DIY</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAX0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hax0000.png"
												alt="스타굿즈" class="category_img"><span
												class="category_text">スターグッズ</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HEB0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_pet_goods.png"
												alt="반려동물용품" class="category_img"><span
												class="category_text">ペット用品</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HFB0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hfb0000.png"
												alt="바이크" class="category_img"><span
												class="category_text">バイク</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAD0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_had0000.png"
												alt="뷰티" class="category_img"><span
												class="category_text">化粧品</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAJ0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_haj0000.png"
												alt="카메라" class="category_img"><span
												class="category_text">カメラ―</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAT0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hat0000.png"
												alt="골동품,희귀품" class="category_img"><span
												class="category_text">骨董品、希少品</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HFD0000"><img
												src="https://ccimage.hellomarket.com/web/2019/common/cate_hfd0000.png"
												alt="RC카, 드론" class="category_img"><span
												class="category_text">RCカー, ドローン</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAU0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hau0000.png"
												alt="포장식품" class="category_img"><span
												class="category_text">レトルト食品</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HFC0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_motorcycle_goods.png"
												alt="바이크용품" class="category_img"><span
												class="category_text">バイク用品</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAA0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_haa0000.png"
												alt="여성의류" class="category_img"><span
												class="category_text">女性衣類</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAH0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hah0000.png"
												alt="디지털,가전" class="category_img"><span
												class="category_text">デジタル、家電</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HGA0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hga0000.png"
												alt="여행,숙박" class="category_img"><span
												class="category_text">旅行、宿泊</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAV0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hav0000.png"
												alt="피규어,키덜트" class="category_img"><span
												class="category_text">フィギュア</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HCA0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hca0000.png"
												alt="부동산" class="category_img"><span
												class="category_text">不動産</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAO0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hao0000.png"
												alt="스포츠,레저" class="category_img"><span
												class="category_text">スポーツ、レザー</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAB0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hab0000.png"
												alt="남성의류" class="category_img"><span
												class="category_text">男性衣類</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAL0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hal0000.png"
												alt="CD,DVD" class="category_img"><span
												class="category_text">CD,DVD</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAQ0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_haq0000.png"
												alt="티켓" class="category_img"><span
												class="category_text">チケット</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAS0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_has0000.png"
												alt="예술,미술" class="category_img"><span
												class="category_text">芸術、美術</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HZZ0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hzz0000.png"
												alt="기타" class="category_img"><span
												class="category_text">他</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAN0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_han0000.png"
												alt="게임" class="category_img"><span
												class="category_text">ゲーム</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAC0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hac0000.png"
												alt="신발,가방,잡화" class="category_img"><span
												class="category_text">靴、雑貨、かばん</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAM0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_ham0000.png"
												alt="음향기기,악기" class="category_img"><span
												class="category_text">音響機器、楽器</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HAP0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hap0000.png"
												alt="도서" class="category_img"><span
												class="category_text">書籍、本</span></a></li>
										<li class="category"><a class="cat_link"
											href="/search?category=HDA0000"><img
												src="https://ccimage.hellomarket.com/web/2018/common/category/cate_hda0000.png"
												alt="재능,서비스" class="category_img"><span
												class="category_text">サービス</span></a></li>
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
					<img
						src="https://ccimage.hellomarket.com/web/2019/header/ico_sell_camera_x2.png"
						alt="판매하기 이미지" class="selling_bot_img"><span
						class="selling_bot_text">出品</span>
				</div>
			</div>
			<div class="link_box header_wrapper_sub">
				<ul>
					<li><a href="/search?category=HFA0000&amp;tabType=list">車</a></li>
					<li><a
						href="/community/list.hm?category=DAC0002&amp;status=begin">イベント</a></li>
					<li><a href="/help/faq.hm">ヘルプセンター</a></li>
					<li><a href="https://ad.hellomarket.com" target="_blank"
						rel="noopener noreferrer"><img
							src="https://ccimage.hellomarket.com/web/2019/header/ico_category_AD_x2.png"
							alt="광고센터 아이콘이미지">広告センター</a></li>
				</ul>
			</div>
		</div>
	</section>
</header>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	var modals = "";
	$(function() {
		$(".header_wrapper_sub").removeClass("active");
		$(".header_category").removeClass("active");
		//header_category active
		modals = $(".w_search_modal").html();
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
	$(".com_search").click(function() {
		$(".w_search_modal").show();
	})
</script>
</body>
</html>
