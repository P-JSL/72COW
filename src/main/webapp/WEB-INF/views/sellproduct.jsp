<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<link rel="stylesheet" href="/resources/modal.css">
<style>
.text_wrapper {
	background: #fff;
	color: black;
}

.text_wrapper.active {
	background: rgba(0, 0, 0, 0.65);
}

.text_wrapper.active div {
	color: white;
}
</style>
<div class="main_area_center" style="margin-top: 100px;">
	<div class="main">
		<div class="breadcrumbs">
			<ul>
				<li><a href="/">HOME</a></li>
				<li>&gt; 出品する</li>
			</ul>
		</div>
		<div class="regist_top">
			<div class="regist_box_top">
				<div>出品</div>
			</div>
		</div>

		<form name="product" action="/register" id="product" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="userid" value="${user.userid }">
			<div class="regist_box">
				<div class="description">
					<dl id="title">
						<dt>
							<label style="color: rgb(51, 51, 51);">タイトル</label>
						</dt>
						<dd>
							<input type="text" name="title" class="title_input"
								placeholder="商品のタイトルを入力してください" value="">
							<ul class="item_recommend_box"></ul>
						</dd>
						<dt>
							<label style="color: rgb(51, 51, 51);">商品名</label>
						</dt>
						<dd>
							<input type="text" name="name" class="title_input"
								placeholder="商品名を入力してください" value="">
							<ul class="item_recommend_box"></ul>
						</dd>
						<dt>
							<label style="color: rgb(51, 51, 51);">数量</label>
						</dt>
						<dd>
							<input type="text" name="amount" class="title_input"
								placeholder="数量を書いてください。" value="">
							<ul class="item_recommend_box"></ul>
						</dd>
					</dl>
					<dl id="content">
						<dt>
							<label style="color: rgb(51, 51, 51);">商品説明</label>
						</dt>
						<dd>
							<textarea name="contents" rows="5" class="introduce"
								placeholder="商品情報を詳しくお書きください
説明されていないところに問題が起きた場合、責任は出品者本人にあります。
- 購入情報(購入日, 当時価格)
- 商品情報(サイズ, 色, ブランドなど )
- 商品状態(スクラッチ, 故障, 修理有無 等)"></textarea>
						</dd>
					</dl>
					<dl class="regist_image_dl" id="registImage">
						<dt>
							<label for="picture" style="color: rgb(51, 51, 51);">商品写真</label><span
								class="photo_max">* 6枚まで</span>
						</dt>
						<dd>
							<ul class="image_list">
								<div>
									<input type="file" id="image" accept="image/*"
										name="uploadfile" onchange="setThumbnail(event,this);"
										; style="display: none;">
									<li>
										<div class="up_img_box button"
											onclick="onclick=document.all.image.click()">
											<div id="image_container" id="thumbnailImg" class="item_img"
												style="width: 146px;"
												src="https://ccimage.hellomarket.com/web/2018/auto/img_car_pic_basic.png"></div>
										</div>
									</li>
								</div>

								<div>
									<input type="file" id="image2" accept="image/*"
										name="uploadfile" onchange="setThumbnail(event,this);"
										; style="display: none;">
									<li>
										<div class="up_img_box button"
											onclick="onclick=document.all.image2.click()">
											<div id="image_container" id="thumbnailImg" class="item_img"
												style="width: 146px;"
												src="https://ccimage.hellomarket.com/web/2018/auto/img_car_pic_basic.png"></div>
										</div>
									</li>
								</div>

								<div>
									<input type="file" id="image3" accept="image/*"
										name="uploadfile" onchange="setThumbnail(event,this);"
										; style="display: none;">
									<li>
										<div class="up_img_box button"
											onclick="onclick=document.all.image3.click()">
											<div id="image_container" id="thumbnailImg" class="item_img"
												style="width: 146px;"
												src="https://ccimage.hellomarket.com/web/2018/auto/img_car_pic_basic.png"></div>
										</div>
									</li>
								</div>

								<div>
									<input type="file" id="image4" accept="image/*"
										name="uploadfile" onchange="setThumbnail(event,this);"
										; style="display: none;">
									<li>
										<div class="up_img_box button"
											onclick="onclick=document.all.image4.click()">
											<div id="image_container" id="thumbnailImg" class="item_img"
												style="width: 146px;"
												src="https://ccimage.hellomarket.com/web/2018/auto/img_car_pic_basic.png"></div>
										</div>
									</li>
								</div>

								<div>
									<input type="file" id="image5" accept="image/*"
										name="uploadfile" onchange="setThumbnail(event,this);"
										; style="display: none;">
									<li>
										<div class="up_img_box button"
											onclick="onclick=document.all.image5.click()">
											<div id="image_container" id="thumbnailImg" class="item_img"
												style="width: 146px;"
												src="https://ccimage.hellomarket.com/web/2018/auto/img_car_pic_basic.png"></div>
										</div>
									</li>
								</div>

								<div>
									<input type="file" id="image6" accept="image/*"
										name="uploadfile" onchange="setThumbnail(event,this);"
										; style="display: none;">
									<li>
										<div class="up_img_box button"
											onclick="onclick=document.all.image6.click()">
											<div id="image_container" id="thumbnailImg" class="item_img"
												style="width: 146px;"
												src="https://ccimage.hellomarket.com/web/2018/auto/img_car_pic_basic.png"></div>
										</div>
									</li>
								</div>


							</ul>
							<div class="up_img_label">代表写真</div>
							<div class="up_img_description">
								<span class="up_img_description_title">*
									代表写真は直接取った商品写真にしてください。</span> <img
									src="https://ccimage.hellomarket.com/web/2019/ad/ico_question_gr_60x60.png"
									alt="물음표이미지">

							</div>
						</dd>
					</dl>

					<dl id="category">
						<dt>
							<label style="color: rgb(51, 51, 51);">カテゴリー</label>
						</dt>
						<dd>
							<div class="item_select_box">
								<select name="category"><option value="" hidden="">カテゴリー</option>
									<option value="sofa">家具</option>
									<option value="living">生活用品</option>
									<option value="food">食品</option>
									<option value="cloth">衣類</option>
									<option value="book">書籍、本</option>
									<option value="other">その他</option></select>
							</div>
						</dd>
					</dl>
					<input type="hidden" name="status" value="" id="status">
					<dl>
						<dt>
							<label>商品状態</label>
						</dt>
						<dd>
							<ul class="item_status_list">
								<li class="item_status">
									<div class="text_wrapper" tabindex="1">
										<div class="text" style="font-size: 13px;">新品、未使用</div>
									</div>
								</li>
								<li class="item_status">
									<div class="text_wrapper" tabindex="2">
										<div class="text" style="font-size: 13px;">未使用に近い</div>
									</div>
								</li>
								<li class="item_status">
									<div class="text_wrapper" tabindex="3">
										<div class="text" style="font-size: 9px;">目立った傷や汚れなし</div>
									</div>
								</li>
								<li class="item_status">
									<div class="text_wrapper" tabindex="4">
										<div class="text" style="font-size: 11px;">やや傷や汚れあり</div>
									</div>
								</li>
								<li class="item_status">
									<div class="text_wrapper" tabindex="5">
										<div class="text" style="font-size: 10px;">傷や汚れあり</div>
									</div>
								</li>
								<li class="item_status">
									<div class="text_wrapper" tabindex="6">
										<div class="text" style="font-size: 10px;">全体的に状態が悪い</div>
									</div>
								</li>
							</ul>
						</dd>
					</dl>


					<dl class="hellopay_options_box direct_options_box" id="price">
						<dt style="color: rgb(51, 51, 51);">販売価格</dt>
						<dd>
							<div class="box_price box_area">
								<input type="text" name="price" placeholder="販売希望価格を入力してください。"
									class="sell_type_input" value=""><span
									class="box_prive_text">円</span>
							</div>
							<dl class="etc_options_box etc_options_box_2">
								<dd>
									<div class="box_option box_area check_box_area">
										<div>
											<label
												class="feature_option feature_option_checkbox no_feature_option">無料配送
												<div class="feature_option_checkbox_indicator"></div>
											</label>
										</div>
									</div>
								</dd>
							</dl>
						</dd>
					</dl>
					<dl>
						<dt>
							<label>販売元 <span></span></label>
						</dt>
						<dd class="map_box">
							<input type="text" class="my_location_input item_location_input"
								placeholder="都道府県入力" id="address" name="addr" value="" readonly>
							<div class="close_button item_close_button" id="clear"></div>
							<div class="my_location_map trigger">
								<span>検索</span>
							</div>
						</dd>
					</dl>
				</div>
			</div>


			<div>
				<div class="item_notice">
					<div class="text_bold">商品登録前に必ず確認してください</div>
					<div class="text_bottom">
						禁止されている行為および出品物を必ずご確認ください。偽ブランド品や盗品物などの販売は犯罪であり、<br>法律により処罰される可能性があります。
						また、出品をもちまして加盟店規約に同意したことになります。
					</div>
				</div>
				<div class="item_submit_box">
					<div class="item_area_submit_box">
						<a href="/"><button class="btn_item_cancel" type="button">取消</button></a>
						<button class="btn_item_mobile_cancel" type="button">削除</button>
						<button class="btn_item_submit" type="button">登録</button>
					</div>
				</div>
			</div>
		</form>

	</div>
</div>
<!-- Modal -->
<div class="modal-wrapper">
	<div class="modal" style="overflow: scroll;">
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
								<h4 class="card-title" id="username"></h4>
								<div class="row">
									<div class="col-md-12">
										<div class="input-group">
											<span class="input-group-addon">우편번호</span> <input
												type="text" class="form-control" id="zip_code"
												name="zip_code"> <span class="input-group-addon"><a
												href="#" id="zip_codeBtn" data-toggle="modal"
												data-target="#zip_codeModal">검색하기</a></span>
										</div>
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
<%@ include file="footer.jsp"%>
<script type="text/javascript">
$(".btn_item_submit").click(function(){
	var form = $("#product");
	form.submit();
})
</script>
<script>
	var $div = new Array();
	$div = $("ul.item_status_list li div.text_wrapper");

	$($div).on("click", function() {
		$(this).addClass("active");
		var clicked = $(this).attr("tabIndex");
		categoryValue(clicked);
		for (var $el of $div) {
			if ($($el).attr("tabIndex") != clicked) {
				$($el).removeClass("active");
			}
		}

	})
	
	function categoryValue(index){
		if(index == 1){
			$("#status").val("新品・未使用");
		}
		if(index == 2){
			$("#status").val("未使用に近い");					
		}
		if(index == 3){
			$("#status").val("目立つギース・汚れ無");
		}
		if(index == 4){
			$("#status").val("ややギース・汚れあり");
		}
		if(index == 5){
			$("#status").val("傷や汚れあり");
		}
		if(index == 6){
			$("#status").val("全体的に状態が悪い");
		}
	}
</script>
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
$("#zip_codeBtn").on("click",function() {
			var zip_code = $("#zip_code").val();
			$.ajax({
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
									+ state + '\')">' +state + '</a>';
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
function put(a) {
	$("#address").val(a);
	$("#close").click();
}
$("#clear").on("click",function(){
	$("#address").val("");
})

</script>
<script type="text/javascript">
function setThumbnail(event,thiss) {

	var reader = new FileReader(); 
	reader.onload = function(event) {
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		$(thiss).next().find("div#image_container").append(img);
/* 		document.querySelector("div#image_container").appendChild(img); */
		$(img).css({"height":"100%","width":"100%"});
	}; 
	reader.readAsDataURL(event.target.files[0]);
}

</script>
