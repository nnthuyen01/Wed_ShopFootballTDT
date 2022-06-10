<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %> 
<head>
<meta charset="UTF-8">
<title>Chi tiết Sản phẩm</title>
<style>
	.product-content{
		overflow-x: hidden; 
	}
</style>
</head>

<body>
<!-- 
Body Section 
-->
	<div class="row product-content">
<div id="sidebar" class="span3">
<div class="well well-small">
	<ul class="nav nav-list">
		<li><a href="products.html"><span class="icon-chevron-right"></span>Fashion</a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span>Watches</a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span>Fine Jewelry</a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span>Fashion Jewelry</a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span>Engagement & Wedding</a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span>Men's Jewelry</a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span>Vintage & Antique</a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span>Loose Diamonds </a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span>Loose Beads</a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span>See All Jewelry & Watches</a></li>
		<li style="border:0"> &nbsp;</li>
		<li> <a class="totalInCart" href="cart.html"><strong>Total Amount  <span class="badge badge-warning pull-right" style="line-height:18px;">$448.42</span></strong></a></li>
	</ul>
</div>

			  <div class="well well-small alert alert-warning cntr">
				  <h2>50% Discount</h2>
				  <p> 
					 only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a>
				  </p>
			  </div>
			  <div class="well well-small" ><a href="#"><img src="assets/img/paypal.jpg" alt="payment method paypal"></a></div>
			
			<a class="shopBtn btn-block" href="#">Upcoming products <br><small>Click to view</small></a>
			<br>
			<br>
			<ul class="nav nav-list promowrapper">
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="assets/img/bootstrap-ecommerce-templates.png" alt="bootstrap ecommerce templates">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="assets/img/shopping-cart-template.png" alt="shopping cart template">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="assets/img/bootstrap-template.png" alt="bootstrap template">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
		  </ul>

	</div>
	<div class="span9">
    <ul class="breadcrumb">
    <li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
    <li><a href="products.html">Sản phẩm</a> <span class="divider">/</span></li>
    <li class="active">Chi tiết sản phẩm</li>
    </ul>	
	<div class="well well-small">
	<div class="row-fluid">
			<div class="span5">
			<div id="myCarousel" class="carousel slide cntr">
                <div class="carousel-inner">
                  <div class="item active">
                   <a href="#"> <img src='<c:url value="${ product.img }"/>' alt="" style="width:100%"></a>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
            </div>
			</div>
			<div class="span7">
				<h3> ${ product.name } </h3>
				<hr class="soft"/>
				
				<form class="form-horizontal qtyFrm" method="get" action="<c:url value="/AddCart/${ product.id_product }"/>">
				  <div class="control-group">
					<label class="control-label">
						<span><fmt:formatNumber type="number" groupingUsed="true" value="${ product.price }" />	 ₫</span>
					</label>
					<div class="controls">
					<input type="number" min="0" value ="1" class="span6">
					</div>
				  </div>
				
				  <div class="control-group">
					<label class="control-label"><span>Giải đấu</span></label>
					<div class="controls">
						<select class="span11">
						  <option>${ product.category_name }</option>
						</select>
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label"><span>Nhà sản xuất</span></label>
					<div class="controls">
					  <select class="span11">
						  <option>${ product.brand_name }</option>
						</select>
					</div>
				  </div>
				  <h4>Số lượng hiện có: 10</h4>
				  <p>Sản phẩm được cam kết nhập khẩu chính hãng
				  <p>
				  <button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span> Thêm vào giỏ hàng</button>
				</form>
			</div>
			</div>
				<hr class="softn clr"/>


            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Chi tiết sản phẩm</a></li>
              <li class=""><a href="#profile" data-toggle="tab">Sản phẩm liên quan </a></li>
            </ul>
            <div id="myTabContent" class="tab-content tabWrapper">
            <div class="tab-pane fade active in" id="home">
			  <h4> ${ product.name }</h4>
                <table class="table table-striped">
				<tbody>
				<tr class="techSpecRow"><td class="techSpecTD1">Năm sản xuất:</td><td class="techSpecTD2">${ product.year }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Gải đấu:</td><td class="techSpecTD2">${ product.category_name }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Nhà sản xuất:</td><td class="techSpecTD2">${ product.brand_name }</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Bảo hành:</td><td class="techSpecTD2">7 ngày (chỉ bảo hành in ấn)</td></tr>
				</tbody>
				</table>
				
			</div>
			<div class="tab-pane fade" id="profile">
				<c:forEach var="item" items="${ productByCid }">
					<div class="row-fluid">	  
			<div class="span2">
				<img src="${ item.img }" alt="">
			</div>
			<div class="span6">
				<h5>${ item.name }</h5>
				<p>
				Sản phẩm được sản xuất bới ${ item.brand_name }
				</p>
			</div>
			<div class="span4 alignR">
			<form class="form-horizontal qtyFrm">
			<h3><fmt:formatNumber type="number" groupingUsed="true" value="${ product.price }" />	 ₫</h3>
			<div class="btn-group">
			  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
			  <a href="product_details.html" class="shopBtn">VIEW</a>
			 </div>
				</form>
			</div>
	</div>
			<hr class="soft"/>
				</c:forEach>
			
			</div>
              
            </div>

</div>
</div>
</div> <!-- Body wrapper -->
</body>