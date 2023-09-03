<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="javax.servlet.http.HttpSession" %>



<%
    HttpSession Session = request.getSession();
    String role = (String) session.getAttribute("User");
    
    if (role == null) {
        response.sendRedirect("./Login.jsp");
    } else if (role.equals("Admin")) {
%>





<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Product - Coffeee</title>
    <link rel="icon" type="image/x-icon" href="image/favicon.png" />

   
    <!-- Font Awesome CDN Link  -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    />

    <!-- Custom CSS File Link  -->
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/login.css" />

   
  </head>

  <body>
        <!-- header -->
	
	<jsp:include page="./header_admin.jsp" />

    <!-- HERO -->

    <section class="home" id="meso"></section>

  <section class="book" id="meso2">

        <div class="form">
        <form action="add.jsp" method="post">
        
        	<div class="signup-t">Add Product</div>
            
            <input type="text" placeholder="Product Name" id="product_name" name="product_name" class="box" />
            <input type="text" placeholder="Description" id="description" name="description" class="box" />
		  	<input type="text" placeholder="Price" id="price" name="price" class="box" />
            <button type="submit" class="btn">Add</button>
          
        </form>
        </div>
</section>


<jsp:include page="./footer_index.jsp" />
	
	
	</body>
</html>




<%
    } else if (role.equals("Customer")) {
	response.sendRedirect("./customer.jsp");
    }
%>

