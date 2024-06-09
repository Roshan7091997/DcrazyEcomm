<%@page import="dcraz.pro1.db.DatabaseConnection"%>
<%@page import="dcraz.pro1.model.*"%>
<%@page import="dcraz.pro1.dao.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
Product_Dao pd = new Product_Dao(DatabaseConnection.getConnection());
List<Product> products = pd.getAllProducts();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Shopping cart</title>
<%@ include file="includes/head.jsp"%>
</head>
<body>
	<%@ include file="includes/navbar.jsp"%>

	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">
			<%
            if (!products.isEmpty()) {
                for (Product p : products) {
            %>
			<div class="col-md-3 my-3">
				<div class="card w-100" style="width: 18rem;">
					<img class="card-img-top" src="product-images/<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%= p.getName() %></h5>
						<h6 class="price"><%=p.getPrice() %></h6>
						<h6 class="category"><%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="#" class="btn btn-dark	">Add to Cart</a> <a href="#"
								class="btn btn-primary">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%
                }
            } 
			%>

		</div>
	</div>

	<%@ include file="includes/footer.jsp"%>
</body>
</html>
