<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@include file="../header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div class="main_area_center" style="margin-top: 200px">
	<div class="main">
		<div class="left">
			<div class="category_filter">
				<div class="category_title">
					<div class="category_title_txt">生活用品</div>
				</div>
				<div class="category_sub">
					<span><ul class="category_sub_list">
							<li class=""><a href="/search?category=HAG0001&amp;page=1">寝室用品</a></li>
							<li class=""><a href="/search?category=HAG0007&amp;page=1">掃除用品</a></li>
							<li class=""><a href="/search?category=HAG0008&amp;page=1">浴室用品</a></li>
							<li class=""><a href="/search?category=HAG0006&amp;page=1">台所用品</a></li>
							<li class=""><a href="/search?category=HAG0004&amp;page=1">インテリア</a></li>
							<li class=""><a href="/search?category=HAG0005&amp;page=1">収納用品</a></li>
							<li class=""><a href="/search?category=HAG0011&amp;page=1">その他の生活用品</a></li>
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
						target="_blank" rel="noopener noreferrer"><img
						src="../resources/img/b22.png" class="main_item_img"
						alt="광고 배너 이미지"></a>
				</div>
			</div>
			<div class="tab_area biz_area item_tab_area">
				<div class="tab_type_box">
					<a href="/search?category=HAG0000&amp;page=1&amp;isEscrowOnly=true"><div
							class="hellopay_only_tab">
							<label class="feature_option feature_option_checkbox"><span
								class="hellopay_only_color">안전결제 전용</span><span>만 보기</span>
								<div class="feature_option_checkbox_indicator"></div></label>
						</div></a>
					<div class="tab_type biz_type mobile_type">
						<ul>
							<a href="/search?category=HAG0000&amp;tabType=list&amp;page=1"><li
								class="list"></li></a>
							<a
								href="/search?category=HAG0000&amp;tabType=thumbnail&amp;page=1"><li
								class="thumbnail active"></li></a>
							<li class="mobile_filter_icon"></li>
						</ul>
					</div>
				</div>
				<div class="tab_type biz_type pc_type">
					<ul class="search_tab_type">
						<a href="/search?category=HAG0000&amp;tabType=list&amp;page=1"><li
							class="list"></li></a>
						<a
							href="/search?category=HAG0000&amp;tabType=thumbnail&amp;page=1"><li
							class="thumbnail active"></li></a>
					</ul>
				</div>
				<!-- <div class="sort_filter biz_sort">
					<label for="sortTitle">최신순</label><select><option value="">최신순</option>
						<option value="lowprice">저가순</option>
						<option value="highprice">고가순</option>
						<option value="near">가까운순</option></select>
				</div> -->
			</div>
			<div class="list_area">
				<div class="tab_content">
					<div>
						<div class="infinite-scroll-component "
							style="height: auto; overflow: hidden auto;">
							<ul class="mian_row general_mian_row">
							<c:forEach items="${allList }" var="p">
								<c:forTokens items="${p }" var="o" delims="*" begin="1" end="1">
									<li class="main_col_4" style="height: auto;">
										<div class="item_wrapper_card">
											<a class="card card_list"
												href="/productdetail?title=${p.title }&userid=${p.userid }&contents=${p.contents }&amount=${p.amount }&category=${p.category }&status=${p.status }&addr=${p.addr }&num=${p.num }&price=${p.price}&name=${p.name}&picture=${p.picture}">
												<div class="card_box">
													<div class="image_wrapper">
														<div class="image_outside">
															<div class="image_centerbox">
																<img src="/upload/${o }" 
																	class="thumbnail_img"><label data-index="4"
																	style="display: none;">4</label>
															</div>
														</div>
													</div>

													<div class="cont">
														<div class="item_title">${p.title }</div>
														<div class="item_price">${p.price * p.amount}円</div>
													</div>
												</div>
											</a>
										</div>
									</li>
								</c:forTokens>
							</c:forEach>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>

<%@include file="../footer.jsp"%>