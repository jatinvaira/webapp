<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Delete Product - Coffeee</title>
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

    <!-- BOOK -->
    <section class="book" id="meso2">

	<div class="form">
    <form action="delete1.jsp" method="post">
    	<div class="signup-t">Delete Product</div><br>
        <input type="number" placeholder="Product Id to Delete" id="product_id" name="product_id" class="box" required>
        <button type="submit" class="btn">Delete</button>
    	</form>
    	</div>t
     </section> 
    
    
    <!-- FOOTER -->

	<section>	<jsp:include page="./footer_index.jsp" /></section>
    
    

</body>
</html>