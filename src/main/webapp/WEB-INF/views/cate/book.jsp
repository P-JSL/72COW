<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<div class="main_area_center" style="margin-top: 200px">
	<div class="main">
		<div class="left">
			<div class="category_filter">
				<div class="category_title">
					<div class="category_title_txt">図書</div>
				</div>
				<div class="category_sub">
					<span><ul class="category_sub_list">
							<li class=""><a href="/search?category=HAP0002&amp;page=1">一般図書</a></li>
							<li class=""><a href="/search?category=HAP0001&amp;page=1">教材</a></li>
							<li class=""><a href="/search?category=HAP0011&amp;page=1">幼児棟、全集</a></li>
							<li class=""><a href="/search?category=HAP0010&amp;page=1">漫画</a></li>
							<li class=""><a href="/search?category=HAP0009&amp;page=1">外国図書</a></li>
							<li class=""><a href="/search?category=HAP0012&amp;page=1">その他の図書</a></li>
						</ul></span>
				</div>
			</div>
			<div class="search_filter">
				<div class="title">商品の状態</div>
				<div class="middle">
					<ul>
						<a href="/search?category=HAA0000&amp;page=1"><li><label
								class="feature_option feature_option_checkbox">全体
									<div class="feature_option_checkbox_indicator checked"></div>
							</label></li></a>
						<a href="/search?category=HAA0000&amp;page=1&amp;usedType=NotUsed"><li><label
								class="feature_option feature_option_checkbox">新商品
									<div class="feature_option_checkbox_indicator"></div>
							</label></li></a>
						<a
							href="/search?category=HAA0000&amp;page=1&amp;usedType=Secondhand"><li><label
								class="feature_option feature_option_checkbox">中古
									<div class="feature_option_checkbox_indicator"></div>
							</label></li></a>
					</ul>
				</div>
				<div class="item_left_bottom"></div>
			</div>
			<div class="search_filter no_padding">
				<div class="title">取引種類</div>
				<div class="middle">
					<ul>
						<a href="/search?category=HAA0000&amp;page=1"><li><label
								class="feature_option feature_option_checkbox">全体
									<div class="feature_option_checkbox_indicator checked"></div>
							</label></li></a>
						<a href="/search?category=HAA0000&amp;page=1&amp;sellMethod=Sell"><li><label
								class="feature_option feature_option_checkbox">販売
									<div class="feature_option_checkbox_indicator"></div>
							</label></li></a>
						<a
							href="/search?category=HAA0000&amp;page=1&amp;sellMethod=Freecycle"><li><label
								class="feature_option feature_option_checkbox">無料
									<div class="feature_option_checkbox_indicator"></div>
							</label></li></a>
					</ul>
				</div>
				<div class="item_left_bottom"></div>
			</div>
			<div class="search_filter no_padding">
				<div class="middle safe_middle">
					<ul>
						<a href="/search?category=HAA0000&amp;page=1&amp;canBarter=true"><li><label
								class="feature_option feature_option_checkbox">交換可能
									<div class="feature_option_checkbox_indicator"></div>
							</label></li></a>
						<a href="/search?category=HAA0000&amp;hasDeliveryFee=true"><li><label
								class="feature_option feature_option_checkbox">送料無料
									<div class="feature_option_checkbox_indicator"></div>
							</label></li></a>
					</ul>
				</div>
				<div class="item_left_bottom"></div>
			</div>
		</div>
		<section class="left_main">
			<div class="banner_auto_bg">
				<div class="banner_items_promotion">
					<a
						href="https://l.hellomarket.com/?t=browser&amp;u=https%3A%2F%2Fwww.hellomarket.com%2Fpost%2F198970"
						target="_blank" rel="noopener noreferrer">
						<img
						src="../resources/img/b22.png"
						class="main_item_img" alt="광고 배너 이미지"></a>
				</div>
			</div>
			<div class="tab_area biz_area item_tab_area">
				<div class="tab_type_box">
					<a href="/search?category=HAP0000&amp;page=1&amp;isEscrowOnly=true"><div
							class="hellopay_only_tab">
							<label class="feature_option feature_option_checkbox"><span
								class="hellopay_only_color">안전결제 전용</span><span>만 보기</span>
								<div class="feature_option_checkbox_indicator"></div></label>
						</div></a>
					<div class="tab_type biz_type mobile_type">
						<ul>
							<a href="/search?category=HAP0000&amp;tabType=list&amp;page=1"><li
								class="list"></li></a>
							<a
								href="/search?category=HAP0000&amp;tabType=thumbnail&amp;page=1"><li
								class="thumbnail active"></li></a>
							<li class="mobile_filter_icon"></li>
						</ul>
					</div>
				</div>
				<div class="tab_type biz_type pc_type">
					<ul class="search_tab_type">
						<a href="/search?category=HAP0000&amp;tabType=list&amp;page=1"><li
							class="list"></li></a>
						<a
							href="/search?category=HAP0000&amp;tabType=thumbnail&amp;page=1"><li
							class="thumbnail active"></li></a>
					</ul>
				</div>
				<!-- <div class="sort_filter biz_sort">
					<label for="sortTitle">最新順</label><select><option value="">最新順</option>
						<option value="lowprice">低価格順</option>
						<option value="highprice">高架順</option>
				</div> -->
			</div>
			<div class="list_area">
				<div class="tab_content">
					<div>
						<div class="infinite-scroll-component "
							style="height: auto; overflow: hidden auto;">
							<ul class="mian_row general_mian_row">
								<li class="main_col_3" style="height: auto;"><div
										class="item_wrapper_card">
										<div class="dibs_card">
											<button type="button">
												<svg viewBox="0 0 24 24" fill="#484848" fill-opacity="0.5"
													stroke="#ffffff" stroke-width="2" focusable="false"
													aria-label="찜하기" role="img" stroke-linecap="round"
													stroke-linejoin="round" class="dib_img">
													<path
														d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
														stroke-linejoin="round"></path></svg>
											</button>
										</div>
										<a class="card card_list"
											href="/item/167448284?viewPath=search_list&amp;clickPath=search&amp;feedPosition=31"><div
												class="card_box">
												<div class="image_wrapper">
													<div class="image_outside">
														<div class="image_centerbox">
															<img
																src="../resources/img/3333.png"
																alt="히가시노게이고,추리소설" class="thumbnail_img"><label
																data-index="0" style="display: none;">0</label>
														</div>
													</div>
												</div>
												<div class="cont">
													<div class="item_title">テスト</div>
													<div class="item_price">1000円</div>
												</div>
											</div></a>
									</div></li>
									<li class="main_col_3" style="height: auto;"><div
										class="item_wrapper_card">
										<div class="dibs_card">
											<button type="button">
												<svg viewBox="0 0 24 24" fill="#484848" fill-opacity="0.5"
													stroke="#ffffff" stroke-width="2" focusable="false"
													aria-label="찜하기" role="img" stroke-linecap="round"
													stroke-linejoin="round" class="dib_img">
													<path
														d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
														stroke-linejoin="round"></path></svg>
											</button>
										</div>
										<a class="card card_list"
											href="/item/167448284?viewPath=search_list&amp;clickPath=search&amp;feedPosition=31"><div
												class="card_box">
												<div class="image_wrapper">
													<div class="image_outside">
														<div class="image_centerbox">
															<img
																src="../resources/img/3333.png"
																alt="히가시노게이고,추리소설" class="thumbnail_img"><label
																data-index="0" style="display: none;">0</label>
														</div>
													</div>
												</div>
												<div class="cont">
													<div class="item_title">テスト</div>
													<div class="item_price">1000円</div>
												</div>
											</div></a>
									</div></li>
									<li class="main_col_3" style="height: auto;"><div
										class="item_wrapper_card">
										<div class="dibs_card">
											<button type="button">
												<svg viewBox="0 0 24 24" fill="#484848" fill-opacity="0.5"
													stroke="#ffffff" stroke-width="2" focusable="false"
													aria-label="찜하기" role="img" stroke-linecap="round"
													stroke-linejoin="round" class="dib_img">
													<path
														d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
														stroke-linejoin="round"></path></svg>
											</button>
										</div>
										<a class="card card_list"
											href="/item/167448284?viewPath=search_list&amp;clickPath=search&amp;feedPosition=31"><div
												class="card_box">
												<div class="image_wrapper">
													<div class="image_outside">
														<div class="image_centerbox">
															<img
																src="../resources/img/3333.png"
																alt="히가시노게이고,추리소설" class="thumbnail_img"><label
																data-index="0" style="display: none;">0</label>
														</div>
													</div>
												</div>
												<div class="cont">
													<div class="item_title">テスト</div>
													<div class="item_price">1000円</div>
												</div>
											</div></a>
									</div></li>
									<li class="main_col_3" style="height: auto;"><div
										class="item_wrapper_card">
										<div class="dibs_card">
											<button type="button">
												<svg viewBox="0 0 24 24" fill="#484848" fill-opacity="0.5"
													stroke="#ffffff" stroke-width="2" focusable="false"
													aria-label="찜하기" role="img" stroke-linecap="round"
													stroke-linejoin="round" class="dib_img">
													<path
														d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
														stroke-linejoin="round"></path></svg>
											</button>
										</div>
										<a class="card card_list"
											href="/item/167448284?viewPath=search_list&amp;clickPath=search&amp;feedPosition=31"><div
												class="card_box">
												<div class="image_wrapper">
													<div class="image_outside">
														<div class="image_centerbox">
															<img
																src="../resources/img/3333.png"
																alt="히가시노게이고,추리소설" class="thumbnail_img"><label
																data-index="0" style="display: none;">0</label>
														</div>
													</div>
												</div>
												<div class="cont">
													<div class="item_title">テスト</div>
													<div class="item_price">1000円</div>
												</div>
											</div></a>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>

<%@include file="../footer.jsp"%>