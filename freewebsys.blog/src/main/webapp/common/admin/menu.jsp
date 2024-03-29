<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	//设置action url.
	pageContext.setAttribute("requestUri",
			request.getAttribute("javax.servlet.forward.request_uri"));
%>
<!-- 左侧菜单 开始-->
<div id="adminmenuback"></div>
<div id="adminmenuwrap">
	<ul id="adminmenu">

		<li class="wp-not-current-submenu wp-menu-separator"><div
				class="separator"></div></li>

		<li class="wp-has-submenu wp-has-current-submenu wp-menu-open"
			id="menu-posts">
			<div class="wp-menu-image">
				<a><br></a>
			</div>
			<div class="wp-menu-arrow">
				<div></div>
			</div> <a href="#"
			class="wp-has-submenu wp-has-current-submenu wp-menu-open menu-top">首页</a>
			<div class="wp-submenu">
				<div class="wp-submenu-wrap">
					<ul>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/userMain.do'}">current</c:if>"><a
							href="/admin/userMain.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/userMain.do'}">current</c:if>">欢迎页</a></li>
					</ul>
				</div>
			</div>
		</li>

		<li class="wp-has-submenu wp-has-current-submenu wp-menu-open"
			id="menu-posts">
			<div class="wp-menu-image">
				<a><br></a>
			</div>
			<div class="wp-menu-arrow">
				<div></div>
			</div> <a href="#"
			class="wp-has-submenu wp-has-current-submenu wp-menu-open menu-top">文章</a>
			<div class="wp-submenu">
				<div class="wp-submenu-wrap">
					<ul>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/addPostType.do'}">current</c:if>"><a
							href="/admin/addPostType.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/addPostType.do'}">current</c:if>">新增分类</a></li>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/listPostType.do'}">current</c:if>"><a
							href="/admin/listPostType.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/listPostType.do'}">current</c:if>">分类管理</a></li>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/addPost.do'}">current</c:if>"><a
							href="/admin/addPost.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/addPost.do'}">current</c:if>">新增文章</a></li>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/listPost.do'}">current</c:if>"><a
							href="/admin/listPost.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/listPost.do'}">current</c:if>">文章管理</a></li>
					</ul>
				</div>
			</div>
		</li>

		<li class="wp-has-submenu wp-has-current-submenu wp-menu-open"
			id="menu-posts">
			<div class="wp-menu-image">
				<a><br></a>
			</div>
			<div class="wp-menu-arrow">
				<div></div>
			</div> <a href="#"
			class="wp-has-submenu wp-has-current-submenu wp-menu-open menu-top">评论管理</a>
			<div class="wp-submenu">
				<div class="wp-submenu-wrap">
					<ul>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/listComment.do'}">current</c:if>"><a
							href="/admin/listComment.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/listComment.do'}">current</c:if>">评论管理</a></li>
					</ul>
				</div>
			</div>
		</li>

		<li class="wp-has-submenu wp-has-current-submenu wp-menu-open"
			id="menu-posts">
			<div class="wp-menu-image">
				<a><br></a>
			</div>
			<div class="wp-menu-arrow">
				<div></div>
			</div> <a href="#"
			class="wp-has-submenu wp-has-current-submenu wp-menu-open menu-top">友情链接管理</a>
			<div class="wp-submenu">
				<div class="wp-submenu-wrap">
					<ul>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/addLink.do'}">current</c:if>"><a
							href="/admin/addLink.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/addLink.do'}">current</c:if>">新增友情链接</a></li>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/listLink.do'}">current</c:if>"><a
							href="/admin/listLink.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/listLink.do'}">current</c:if>">友情链接管理</a></li>
					</ul>
				</div>
			</div>
		</li>

		<li class="wp-has-submenu wp-has-current-submenu wp-menu-open"
			id="menu-posts">
			<div class="wp-menu-image">
				<a><br></a>
			</div>
			<div class="wp-menu-arrow">
				<div></div>
			</div> <a href="#"
			class="wp-has-submenu wp-has-current-submenu wp-menu-open menu-top">用户管理</a>
			<div class="wp-submenu">
				<div class="wp-submenu-wrap">
					<ul>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/addUserInfo.do'}">current</c:if>"><a
							href="/admin/addUserInfo.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/addUserInfo.do'}">current</c:if>">新增用户</a></li>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/listUserInfo.do'}">current</c:if>"><a
							href="/admin/listUserInfo.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/listUserInfo.do'}">current</c:if>">用户管理</a></li>
					</ul>
				</div>
			</div>
		</li>

		<li class="wp-has-submenu wp-has-current-submenu wp-menu-open"
			id="menu-posts">
			<div class="wp-menu-image">
				<a><br></a>
			</div>
			<div class="wp-menu-arrow">
				<div></div>
			</div> <a href="#"
			class="wp-has-submenu wp-has-current-submenu wp-menu-open menu-top">系统配置</a>
			<div class="wp-submenu">
				<div class="wp-submenu-wrap">
					<ul>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/listOption.do'}">current</c:if>"><a
							href="/admin/listOption.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/listOption.do'}">current</c:if>">系统配置</a></li>
						<li
							class="wp-first-item <c:if test="${requestUri == '/admin/listTemplate.do'}">current</c:if>"><a
							href="/admin/listTemplate.do"
							class="wp-first-item <c:if test="${requestUri == '/admin/listTemplate.do'}">current</c:if>">模板管理</a></li>
					</ul>
				</div>
			</div>
		</li>

		<li class="wp-not-current-submenu wp-menu-separator"><div
				class="separator"></div></li>

	</ul>
</div>
<!-- 左侧菜单 结束 -->