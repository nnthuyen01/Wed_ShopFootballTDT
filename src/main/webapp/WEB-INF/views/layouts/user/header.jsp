<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="index.html"><span>Twitter Bootstrap
						ecommerce template</span> <img
					src="<c:url value="/assets/user/img/logo_chot.png"/> "
					alt="bootstrap sexy shop"> </a>
			</h1>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i> Twitter Bootstrap shopping cart HTML
					template is available @ $14
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Support (24/7) : 0800 1234 678 </strong><br>
				<br>
			</p>
			<span class="btn btn-mini">[ ${ TotalQuantyCart } ] <span
				class="icon-shopping-cart"></span></span> <span
				class="btn btn-warning btn-mini">₫</span> <span class="btn btn-mini">&pound;</span>
			<span class="btn btn-mini">&euro;</span>
		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
					<c:forEach var="item" items="${ menu }" varStatus="index">
						<c:if test="${ index.first }">
								<li class="active">
								<a href="<c:url value="/trang-chu"/>"> ${ item.name } </a></li>
						</c:if>
						<c:if test="${ not index.first }">
								<li class="">
								<a href="<c:url value="/san-pham"/>"> ${ item.name } </a></li>
						</c:if>
						
					</c:forEach>
				</ul>
				<form action="tim-kiem" class="navbar-search pull-left">
					<input value="${nameS}" type="text" placeholder="Tìm kiếm" name="name" class="search-query span2">
				</form>
				<ul class="nav pull-right">
				<c:if test="${ empty LoginInfo }">
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"><span class="icon-lock"></span>
							Đăng nhập <b class="caret"></b></a>
						<div class="dropdown-menu">
							<form class="form-horizontal loginFrm">
								<div class="control-group">
									<input type="text" class="span2" id="inputEmail"
										placeholder="Email">
								</div>
								<div class="control-group">
									<input type="password" class="span2" id="inputPassword"
										placeholder="Password">
								</div>
								<div class="control-group">
									<label class="checkbox"> <input type="checkbox">
										Remember me
									</label>
									<button type="submit" class="shopBtn btn-block">Sign
										in</button>
								</div>
							</form>
						</div></li>
					</c:if>
					<c:if test="${ not empty LoginInfo }">
						<li><a href="#">${ LoginInfo.display_name }<b class ="caret"></b></a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>