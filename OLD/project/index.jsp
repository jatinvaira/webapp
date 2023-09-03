<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
 <%@ page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession Session = request.getSession();
    String role = (String) session.getAttribute("User");
    
    if (role == null) {
       %>
        
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link rel="icon" type="image/x-icon" href="image/favicon.png">
    <title>Coffee</title>

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
  </head>

  <body>
    
    
<!-- HEADER -->
    
    <!-- header -->
	<jsp:include page="./header.jsp" />

	
	
    <!-- HOME -->
    <section class="home" id="home">
      <div class="row">
        <div class="content">
          <h3>Caffinated with Coffeee</h3>
          <a href="#menu" class="btn">buy one now</a>
        </div>

        <div class="image">
          <img src="image/home-img-1.png" class="main-home-image" alt="" />
        </div>
      </div>

      <div class="image-slider">
        <img src="image/home-img-1.png" alt="" />
        <img src="image/home-img-2.png" alt="" />
        <img src="image/home-img-3.png" alt="" />
      </div>
    </section>

    <!-- ABOUT -->
    <section class="about" id="about">
      <h1 class="heading">about us <span>why choose us</span></h1>

      <div class="row">
        <div class="image">
          <img src="image/about-img.png" alt="" />
        </div>

        <div class="content">
          <h3 class="title">what's make our coffee special!</h3>
          <p>
            Experience the journey from bean to brew. Immerse in a realm where
            passion meets perfection. Ethical beans, handpicked,
            precision-roasted, and brewed with care, offer flavors that dance on
            your palate. Explore sustainable farming, roasting alchemy, and the
            bliss of a perfect cup. Join us to celebrate exceptional coffee that
            awakens your senses, supports communities, and cherishes the
            environment.
          </p>
          <a href="#" class="btn">read more</a>
          <div class="icons-container">
            <div class="icons">
              <img src="image/about-icon-1.png" alt="" />
              <h3>quality coffee</h3>
            </div>
            <div class="icons">
              <img src="image/about-icon-2.png" alt="" />
              <h3>our branches</h3>
            </div>
            <div class="icons">
              <img src="image/about-icon-3.png" alt="" />
              <h3>free delivery</h3>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- MENU -->
    <jsp:include page="./menu.jsp" />

    <!-- REVIEW -->
    <section class="review" id="review">
        <h1 class="heading">reviews <span>what people say</span></h1>

        <div class="swiper review-slider">
            <div class="swiper-wrapper">
                <!-- Fetch data from the database and loop through reviews -->
                <%
                    Connection conn = null;
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/coffeee", "root", "");

                        String sql = "SELECT * FROM review";
                        PreparedStatement preparedStatement = conn.prepareStatement(sql);
                        ResultSet resultSet = preparedStatement.executeQuery();

                        while (resultSet.next()) {
                            String name = resultSet.getString("name");
                            String reviewText = resultSet.getString("review");
                            String starRating = resultSet.getString("star");
                %>
                <div class="swiper-slide box">
                    <i class="fas fa-quote-left"></i>
                    <i class="fas fa-quote-right"></i>
                    <img src="image/pic-<%= resultSet.getRow() %>.png" alt="" />
                    <div class="stars">
                        <!-- Use a loop to display star rating based on the 'starRating' variable -->
                        <%
                            for (int i = 0; i < Integer.parseInt(starRating); i++) {
                        %>
                        <i class="fas fa-star"></i>
                        <%
                            }
                        %>
                    </div>
                    <p><%= reviewText %></p>
                    <h3><%= name %></h3>
                    <span>satisfied client</span>
                </div>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        // Close the database connection
                        if (conn != null) {
                            try {
                                conn.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                %>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </section>



	<!-- footer -->
	
	<jsp:include page="./footer_index.jsp" />
	

    <!-- SWIPER -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

    <!-- Custom JS File Link  -->
    <script src="js/script.js"></script>
    
  </body>
</html>

<%
    } else if (role.equals("Customer")) {
    	 response.sendRedirect("./Login.jsp");
    	   
    } else if (role.equals("Admin")) {
	response.sendRedirect("./admin.jsp");
    }
%>
