
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    HttpSession session1 = request.getSession(false); 
    if (session != null) {
        String userRole = (String) session.getAttribute("User"); 
        
        if ("Customer".equals(userRole)) {
            response.sendRedirect("customer.jsp");
            return; // Stop further execution
        } else if ("Admin".equals(userRole)) {
            response.sendRedirect("admin.jsp");
            return; // Stop further execution
        }
    }
%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login-Cofeee</title>
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
	
	<jsp:include page="./header.jsp" />



    <!-- HERO -->

    <section class="home" id="meso"></section>

    <!-- login -->

    <section class="book" id="meso2">
      <div class="form">
        <form
          onsubmit="return check()"
          name="reg"
          method="post"
          action="CheckInfo.jsp"
        >
          <div class="signup-t">Login</div>
          <br /><br />
          <input type="email" placeholder="Email" id="Email" name="Email" class="box" />
		  <input type="Password" placeholder="Password" id="Password" name="Password" class="box" />
		  <button type="submit" class="btn">Sign In</button><br />
          <!-- <a href="ForgotPass.jsp">Forgot Pass?</a> -->
        </form>
      </div>
    </section>

    <!-- FOOTER -->

	<section>	<jsp:include page="./footer_index.jsp" /></section>

      </body>
</html>
