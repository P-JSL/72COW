<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta charset="utf-8">
<!-- <link rel="canonical" href="https://www.hellomarket.com/"> -->
<title>72Cow</title>
<style>
@media all and (max-width: 800px) {
	img {
		width: 100%;
	}
}
</style>
<meta name="next-head-count" content="61">
<link rel="stylesheet" href="resources/chunk.css">
<link rel="stylesheet" href="resources/base.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5f115ba77258dc118bee6a9d/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->

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
					alt="72cow"><img src="resources/nanicowlogo2.png" class="mobile_logo"
					alt="72cow"></a>
			</div>
			<div class="btn_box">
				<a class="btn_login_box" href="/login"><button class="login_btn">ログイン</button></a>
				<a class="btn_signup_box" href="/signup"><button class="signup_btn">会員登録</button></a>
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
				<div>
					<div class="infinite-scroll-component "
						style="height: auto; overflow: hidden auto;">
						<ul class="mian_row ">
						

						<!--  상품하나   -->
							<li class="main_col_4" style="height: auto;">
								<div class="item_wrapper_card">
									<a class="card card_list" href="/productdetail">
										<div class="card_box">
											<div class="image_wrapper">
												<div class="image_outside">
													<div class="image_centerbox">
														<img src="/resources/img/3333.png" alt="에어팟 3세대 프로"
															class="thumbnail_img"><label data-index="4"
															style="display: none;">4</label>
													</div>
												</div>
											</div>

											<div class="cont">
												<div class="item_title">a</div>
												<div class="item_price">b</div>
											</div>
										</div>
									</a>
								</div>
							</li>
						<!--  //상품하나   -->
	
						
						</ul>
					</div>
				</div>
<!-- 				<div class="login_banner_absolute" style="top: -207px;">
					<div class="login_banner" style="height: auto !important;">
						<ins class=" adsbygoogle" data-ad-client="ca-pub-9169594828612333"
							data-ad-slot="1810790830" data-ad-layout="" data-ad-layout-key=""
							data-ad-format="auto" data-full-width-responsive="false"
							style="width: 160px; height: 600px; display: inline-block;"
							data-adsbygoogle-status="done">
							<ins id="aswift_3_expand"
								style="display: inline-table; border: none; height: 600px; margin: 0; padding: 0; position: relative; visibility: visible; width: 160px; background-color: transparent;">
								<ins id="aswift_3_anchor"
									style="display: block; border: none; height: 600px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 160px; background-color: transparent; overflow: visible;">
									<iframe id="aswift_3" name="aswift_3"
										style="left: 0; position: absolute; top: 0; border: 0; width: 160px; height: 600px;"
										sandbox="allow-forms allow-pointer-lock allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation"
										width="160" height="600" frameborder="0"
										src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-9169594828612333&amp;output=html&amp;h=600&amp;slotname=1810790830&amp;adk=2235706032&amp;adf=1452585109&amp;w=160&amp;fwrn=1&amp;fwrnh=100&amp;lmt=1594862865&amp;rafmt=1&amp;psa=1&amp;guci=2.2.0.0.2.2.0.0&amp;format=160x600&amp;url=https%3A%2F%2Fwww.hellomarket.com%2F&amp;flash=0&amp;fwr=0&amp;fwrattr=false&amp;rh=600&amp;rw=160&amp;rpe=1&amp;resp_fmts=4&amp;wgl=1&amp;dt=1594862865125&amp;bpp=3&amp;bdt=334307&amp;idt=3&amp;shv=r20200709&amp;cbv=r20190131&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Deca2116a19892c2c%3AT%3D1594619851%3AS%3DALNI_MaIKGAGwnk9YkBzNnNAPU2Cg0BiUA&amp;prev_fmts=250x336%2C160x600%2C970x250%2C0x0%2C250x336%2C250x336%2C250x336&amp;nras=1&amp;correlator=6412001108057&amp;frm=20&amp;pv=1&amp;ga_vid=1334726417.1594619849&amp;ga_sid=1594862531&amp;ga_hid=602222455&amp;ga_fc=0&amp;iag=0&amp;icsg=36675256291&amp;dssz=23&amp;mdo=0&amp;mso=0&amp;u_tz=540&amp;u_his=5&amp;u_java=0&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=1270&amp;ady=-12&amp;biw=1519&amp;bih=754&amp;scr_x=0&amp;scr_y=0&amp;oid=3&amp;psts=AGkb-H9mQ0A52QUR4QXtBKIgDzFWW8Xdb6e9wTjAzFM8xq_87IqZojCJYFLimbm5izmqdQ%2CAGkb-H9v4gWLS5i0245eGC42XjKEqNTypzceQyL1I_jtU8A2BwbTG6Ft6XBMg8wSTSDf%2CAGkb-H9SHIw1QdzTnPNsKSIMk6PjdViFXVenwDZTP4GqTLn-lWxBYQqcSaB9q5THfsQC0Q%2CAGkb-H-i4kPi61-kZuUR8EWcskSR70dCLil9TCadINhfSB-4wXJQJ5gRgdXbTUwFUPomBA&amp;pvsid=3012461741919288&amp;pem=856&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;rx=0&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C754&amp;vis=1&amp;rsz=%7C%7CfeE%7C&amp;abl=CF&amp;pfx=0&amp;fu=8336&amp;bc=31&amp;ifi=8&amp;uci=a!8&amp;fsb=1&amp;xpc=Y3bPm0loED&amp;p=https%3A//www.hellomarket.com&amp;dtd=70"
										marginwidth="0" marginheight="0" vspace="0" hspace="0"
										allowtransparency="true" scrolling="no" allowfullscreen="true"
										data-google-container-id="a!8"
										data-google-query-id="CO-a1pXP0OoCFUYylgodAvwBew"
										data-load-complete="true"></iframe>
								</ins>
							</ins>
						</ins>
					</div>
				</div> -->
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
					<li><span>72Cow Inc.</span></li>
					<li><a class="link_info" href="/help/faq.hm">FAQ</a><span
						class="list_space"></span></li>
					<li><a class="link_info" href="/terms.hm">asd</a><span
						class="list_space"></span></li>
					<li><a class="link_info" href="/protection.hm">csada</a></li>
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
								style="text-decoration: underline;">vvvv</a></span><span> |
								<a
								href="https://www.hellomarket.com/help/inquiry/form.hm?categoryId=IGA0200"
								target="_blank" rel="noopener noreferrer"
								style="text-decoration: underline;">cccc</a>
						</span></li>
						<br>
						<li><span>(株)72COWは～～～～～～～～～
						72COWは～～～～～～～～～～</span></li>
						<li><span>©(株)72COW . All rights reserved.</span></li>
					</ul>
				</div>
				<div class="footer_wrapper_right">
					<ul class="box">
						<li style="font-weight: bold;">zzzzzzzzzzzzzz</li>
						<li>aaaaaaaaaa,</li>
						<li>cccccccccccc</li>
						<li>ddddddddddddddd</li>
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
