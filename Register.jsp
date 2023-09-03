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
        <title>Register-Coffee</title>
    
        <!-- Script  -->
    
        <script type="text/javascript">
          function check() {
            if (document.reg.Name.value === "") {
              alert("Name must be filled out.");
              return false;
            }
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
            if (document.reg.Phone.value === "") {
              alert("Phone must be filled out");
              return false;
            }
            var mob = document.reg.Phone.value;
            var digit = /^[0-9]+$/;
            if (!mob.match(digit)) {
              alert("Enter only digits in phone number");
              return false;
            }
            var dig = /^\d{10}$/;
            if (!mob.match(dig)) {
              alert("Enter 10 digit phone number");
              return false;
            }
    
            if (document.reg.Password.value === "") {
              alert("Password must be filled out");
              return false;
            }
    
            if (document.reg.CPass.value === "") {
              alert("Please confirm the Password");
              return false;
            }
            if (document.reg.Password.value != document.reg.CPass.value) {
              alert(" Password  doesnot match");
              return false;
            }
    
            const checkbox = document.getElementById("Check");
            if (!checkbox.checked) {
              alert("Agree to terms and conditions");
              return false;
            }
          }
        </script>
    
        
    
        <!-- Font Awesome CDN Link  -->
        <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        />
    
        <!-- Custom CSS File Link  -->
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/register.css" />
        <link rel="stylesheet" href="css/login.css" />
        <link rel="stylesheet" href="Style.css" />
      </head>
    
      <body>
            <!-- header -->
	
	<jsp:include page="./header.jsp" />


        <!-- Home -->
    
        <section class="home" id="meso"></section>
    
        <!-- RegistrationForm -->
    
        <section class="book">
          <div class="form">
            <form
              onsubmit="return check()"
              name="reg"
              action="Insert.jsp"
              method="post"
            >
              >
              <div class="signup-t">SignUp</div>
              <br /><br />
              	<input type="text" placeholder="Name" id="Name" name="Name" class="box" />
				<input type="email" placeholder="Email" id="Email" name="Email" class="box" />
				<input type="text" placeholder="Phone" id="Phone" name="Phone" class="box" />
				<input type="Password" placeholder="Password" id="Password" name="Password" class="box" />
				<input type="Password" placeholder="Confirm Password" id="CPass" name="CPass" class="box" />
<div class="tac">
                <input type="checkbox" class="tac1" id="Check" name="Check" />
                <br />
                <div></div>
                <label for="Check">I agree to the terms and conditions</label>
              </div>
              <button type="submit" class="btn">SignUp</button><br />
            </form>
          </div>
        </section>
    
        <!-- FOOTER -->

		<section><jsp:include page="./footer_index.jsp" /></section>

    
      </body>
    </html>
    