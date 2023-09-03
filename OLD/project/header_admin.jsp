<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- HEADER -->
    
    <header class="header">
        <div id="menu-btn" class="fas fa-bars"></div>
  
        <a href="./admin.jsp" class="logo">coffeee <i class="fas fa-mug-hot"></i></a>
  
        <nav class="navbar">
            <a href="./admin.jsp">Home</a>
            <a href="./GetProductDetails.jsp">Add Product</a>
            <a href="./GetId.jsp">Delete Product</a>
            <a href="./NewData.jsp">Update Product</a>
            <a href="./admin.jsp#about">About Us</a>
            <a href="./admin.jsp#menu">View product</a>
            
        </nav>
        <div>
            <a href="./sessionend.jsp" class="btn">Logout</a>
        </div>
      </header>
	
</body>
</html>