<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item nav-profile"><a href="#" class="nav-link">
				<div class="nav-profile-text d-flex flex-column">
					<span class="font-weight-bold mb-2">${user.f_name} ${user.l_name }</span>
					<span class="text-secondary text-small">Project Manager<i
						class="mdi mdi-bookmark-check text-success nav-profile-badge"></i></span>

				</div>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="/admin/index">
				<span class="menu-title">メイン</span> <i
				class="mdi mdi-home menu-icon"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="/admin/sales">
				<span class="menu-title">売り上げ</span> <i
				class="mdi mdi-chart-line menu-icon"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#general-pages" aria-expanded="false"
			aria-controls="general-pages"> <span class="menu-title">一覧</span>
				<i class="menu-arrow"></i> <i class="mdi mdi-eye menu-icon"></i>
		</a>
			<div class="collapse" id="general-pages">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="/admin/userList">ユーザー </a></li>
					<li class="nav-item"><a class="nav-link"
						href="/admin/userEntry">出品者 </a></li>
					<li class="nav-item"><a class="nav-link"
						href="/admin/AllProduct"> 全ての商品 </a></li>
				</ul>
			</div></li>
		<li class="nav-item"><a class="nav-link" href="/admin/reflist">
				<span class="menu-title">送信お問合せリスト</span> <i
				class="mdi mdi-help menu-icon"></i>
		</a></li>
	</ul>
</nav>
