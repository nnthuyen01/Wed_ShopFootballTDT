<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>  
<title>Tất cả sản phẩm</title>
<body>
	<!--Body Section -->
	
			<!--
New Products
-->
		
			<!--
	Featured Products
	-->
			<div class="well well-small">
				<h3>
					<a class="btn btn-mini pull-right" href="products.html"
						title="View more">VIew More<span class="icon-plus"></span></a>
					Sản phẩm
				</h3>
				<hr class="soften" />
				<div class="row-fluid">
				
					<c:if test="${ allProduct.size() > 0 }">
						<ul class="thumbnails">
						<c:forEach var="item" items="${ allProduct }" varStatus="loop">
							<li class="span4">
								<div class="thumbnail">
									<a class="zoomTool" href="product_details.html"
										title="add to cart"><span class="icon-search"></span> QUICK
										VIEW</a> <a href="chi-tiet-san-pham/${ item.id_product }"><img
										src="${ item.img }" alt=""></a>
									<div class="caption">
										<h5>${ item.name }</h5>
										<h4>
											<a class="defaultBtn" href="product_details.html"
												title="Click to view"><span class="icon-zoom-in"></span></a>
											<a class="shopBtn" href="<c:url value="/AddCart/${ item.id_product }"/>" title="add to cart"><span
												class="icon-plus"></span></a> <span class="pull-right"><fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" />	 ₫</span>
										</h4>
									</div>
								</div>
							</li>
							
							<c:if test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == product.size() }">
								</ul>
								<c:if test="${ (loop.index + 1) < product.size() }">
									<ul class="thumbnails">
								</c:if>
							</c:if>
						</c:forEach>
					</c:if>
					
				</div>
			</div>
			<hr>
			<div class="well well-small">
				<a class="btn btn-mini pull-right" href="#">Xem thêm <span
					class="icon-plus"></span></a> Tất cả sản phẩm
			</div>
		</div>
	</div>

</body>