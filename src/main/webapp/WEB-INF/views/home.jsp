<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
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
							<c:forEach items="${list}" var="p">
								<c:if test="${p.amount > 0 }">
									<li class="main_col_4" style="height: auto;">
										<div class="item_wrapper_card">

											<a class="card card_list"
												href="/productdetail?title=${p.title }&userid=${p.userid }&contents=${p.contents }&amount=${p.amount }&category=${p.category }&status=${p.status }&addr=${p.addr }&num=${p.num }&price=${p.price}&name=${p.name}&picture=${p.picture}">
												<div class="card_box">
													<div class="image_wrapper">
														<div class="image_outside">
															<c:forTokens items="${p.picture }" delims="*" var="ip"
																begin="1" end="1">
																<c:forEach items="${ip }" var="s">
																	<div class="image_centerbox">
																		<img src="/upload/${s}" alt="에어팟 3세대 프로" height="100%"
																			width="100%" class="thumbnail_img"><label
																			data-index="4" style="display: none;">4</label>
																	</div>
																</c:forEach>
															</c:forTokens>
														</div>
													</div>
													<div class="cont">
														<div class="item_title">${p.name}</div>
														<div class="item_price">${p.price}</div>
													</div>
												</div>
											</a>
										</div>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>
</section>
