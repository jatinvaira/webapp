 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession Session = request.getSession();
    String role = (String) session.getAttribute("User");
    
    if (role == null) {
        response.sendRedirect("./Login.jsp");
    } else if (role.equals("Customer")) {
%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Review - Coffeee</title>
    <link rel="icon" type="image/x-icon" href="image/favicon.png" />

    <!-- SWIPER -->
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper@7/swiper-bundle.min.css"
    />

    <!-- Font Awesome CDN Link  -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    />

    <!-- Custom CSS File Link  -->
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/login.css" />

	<script type="text/javascript">
      function check() {
        if (document.reg.Email.value === "") {
          alert("Email must be filled out.");
          return false;
        }

        var email = document.reg.Email.value;
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (!reg.test(email)) {
          alert("Invalid Email");
          return false;
        }
      }
    </script>
   
  </head>

  <body>
        <!-- header -->
	
	<jsp:include page="./header_customer.jsp" />

    <!-- HERO -->

    <section class="home" id="meso"></section>

  <section class="book" id="meso2">

        <div class="form">
        <form action="add_review.jsp" method="post">
        
        	<div class="signup-t">Add Review</div>
            
            <input type="text" placeholder="Name" id="name" name="name" class="box" />
            <input type="email" placeholder="Email" id="email" name="email" class="box" />
		  	<input type="text" placeholder="Rate (0-5)" id="star" name="star" class="box" />
		  	<textarea
          placeholder="Review"
          class="box"
          id="review"
          name="review"
          cols="30"
          rows="10"
        ></textarea>
            
            <button type="submit" class="btn">Add Review</button>
          
        </form>
        </div>
</section>


<jsp:include page="./footer_index.jsp" />
	
	
	</body>
</html>



<%
    } else if (role.equals("Admin")) {
	response.sendRedirect("./admin.jsp");
    }
%>
 