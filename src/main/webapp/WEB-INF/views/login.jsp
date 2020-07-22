<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<link href="/resources/login.css" rel="stylesheet">

<html>
<body>
	<div id="main">
		<div id="content">
			<div id="qnb" class="quick-navigation"></div>
			<div class="section_login">
				<h3 class="tit_login">ログイン</h3>
				<h3 class="error" style="text-align: center;">${error }</h3>
				<div class="write_form">
					<div class="write_view login_view">
						<form method="post" name="form" id="form"
							 action="/login">
							<input type="text" name="userid" size="20" tabindex="1" value=""
								placeholder="IDを入力してください。"> <input type="password"
								name="password" size="20" tabindex="2"
								placeholder="パスワードを入力してください。">
							<div class="checkbox_save">
								<label class="label_checkbox checked"> <input
									type="checkbox" id="chk_security" name="chk_security" value="y"
									checked="checked"
									onchange="if( this.checked){$(this).parent().addClass('checked')}else{$(this).parent().removeClass('checked')} ">
									IDを保存
								</label>

								<div class="login_search">
									<a href="/shop/member/find_id.php" class="link">IDを検索</a> <span
										class="bar"></span> <a href="/shop/member/find_pwd.php"
										class="link">パスワードを検索</a>
								</div>
							</div>
							<input type="submit" class="btn_type1" value="ログイン"><span class="txt_type"></span>
						</form>
						<a href="/signup" class="btn_type2 btn_member"><span
							class="txt_type">会員登録</span></a>
					</div>
				</div>
			</div>
			<script>
				window.onload = function() {
					document.form.m_id.focus();
				}

				function checkReCaptcha() {
					var $captcha = $("input[name=captcha]");
					if ($captcha.length > 0) {
						if (!$captcha.val()) {
							alert("인증번호를 입력해 주세요");
							$captcha.focus();
							return false;
						}
					} else {
						return true;
					}
				}

				// KM-1483 Amplitude
				KurlyTracker.setScreenName('login').setTabName('my_kurly');
			</script>
		</div>
	</div>




</body>
</html>