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
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Book - Table</title>
    <link rel="icon" type="image/x-icon" href="image/favicon.png" />

    
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

        if (document.reg.Password.value === "") {
          alert("Password must be filled out");
          return false;
        }
      }
    </script>
  </head>

  <body>
        <!-- header -->
	
	<jsp:include page="./header_customer.jsp" />



    <!-- HERO -->

    <section class="home" id="meso4"></section>

    <!-- BOOK -->
    <section class="book" id="book">
      <h1 class="heading">booking <span>reserve a table</span></h1>

      
    <jsp:include page="./booking.jsp" />
    </section> 
    
    
    <!-- FOOTER -->

		<jsp:include page="./footer_index.jsp" /></section>

    
  </body>
</html>
<%
    } else if (role.equals("Admin")) {
	response.sendRedirect("./admin.jsp");
    }
%>