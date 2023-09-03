<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<%
    HttpSession Session = request.getSession();
    String role = (String) session.getAttribute("User");
    
    if (role == null) {
        
        %>
    	<!DOCTYPE html>
    	<html lang="en">

    	<head>
    	    <meta charset="UTF-8" />
    	 
    	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    	    <title>Coffee</title>
    	    <link rel="icon" type="image/x-icon" href="image/favicon.png" />

    	    <!-- SWIPER -->
    	    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    	    <!-- Font Awesome CDN Link  -->
    	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

    	    <!-- Custom CSS File Link  -->
    	    <link rel="stylesheet" href="css/style.css" />
    	</head>

    	<body>
    	        <!-- header -->
    		
    		<%
    		if (role == null) {
    	        %> <jsp:include page="./header.jsp" /> <%
    	    } else if (role.equals("Customer")) {
    	    	%> <jsp:include page="./header_customer.jsp" /> <%
    	    }
    		%>


    	    <!-- HOME -->

    	    <section class="home" id="home">
    	        <div class="row">
    	            <div class="content">
    	                <h3 class="about-heading">Who We Are</h3>
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
    	        <h1 class="heading">Who we Are<span>Origin of Coffeee</span></h1>

    	        <div class="row">
    	            <div class="image">
    	                <img src="image/about-img.png" alt="" />
    	            </div>

    	            <div class="content">
    	                <h3 class="title">About Us</h3>
    	                <p>
    	                    About Us Welcome to the heart and soul of coffee aficionados in
    	                    Bangalore. Our journey began in the bustling streets of this vibrant
    	                    city, where the love for exceptional coffee ignited our passion.
    	                </p>

    	                <h3 class="title">Origin</h3>
    	                <p>
    	                    Nestled amidst the energetic vibes of Bangalore, our coffee shop was
    	                    born out of a desire to create a haven for coffee enthusiasts.
    	                    Drawing inspiration from the city's dynamic spirit, we embarked on a
    	                    mission to craft an unparalleled coffee experience. Our story
    	                    started with a simple dream - to serve the finest coffee, brewed to
    	                    perfection, in a cozy and inviting space.
    	                </p>

    	                <h3 class="title">Our Branches</h3>
    	                <div class="icons-container">
    	                    <div class="icons">
    	                        <img src="image/store-1.png" alt="" />
    	                        <h3>Koramangala</h3>
    	                    </div>
    	                    <div class="icons">
    	                        <img src="image/store-3.png" alt="" />
    	                        <h3>Indiranagar</h3>
    	                    </div>
    	                    <div class="icons">
    	                        <img src="image/store-2.png" alt="" />
    	                        <h3>MG Road</h3>
    	                    </div>
    	                </div>
    	            </div>
    	        </div>
    	    </section>
    	    <h1 class="heading">FIND US<span>MAP</span></h1>

    	    <section class="map">
    	        <section class="maps wow fadeInUp" id="map">
    	            <iframe
    	                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7775.865018435065!2d77.59187629357913!3d12.976168499999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae167b826ffedd%3A0x8aefb6358f083984!2sHard%20Rock%20Cafe!5e0!3m2!1sen!2sin!4v1692010722052!5m2!1sen!2sin"
    	                width="100%" height="450" style="border: 0" allowfullscreen="" loading="fast"
    	                referrerpolicy="no-referrer-when-downgrade"></iframe>
    	        </section>
    	    </section>

    	   <!-- FOOTER -->

    			<jsp:include page="./footer_index.jsp" /></section>


    	    <!-- SWIPER -->
    	    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

    	    <!-- Custom JS File Link  -->
    	    <script src="js/script.js"></script>
    	</body>



    	</html>	
    	
    	<%
    	
    } else if (role.equals("Customer")) {
%>
    
 
    

<html lang="en">

<head>
    <meta charset="UTF-8" />
 
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coffee</title>
    <link rel="icon" type="image/x-icon" href="image/favicon.png" />

    <!-- SWIPER -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- Font Awesome CDN Link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

    <!-- Custom CSS File Link  -->
    <link rel="stylesheet" href="css/style.css" />
</head>

<body>
        <!-- header -->
	
	<%
	if (role == null) {
        %> <jsp:include page="./header.jsp" /> <%
    } else if (role.equals("Customer")) {
    	%> <jsp:include page="./header_customer.jsp" /> <%
    }
	%>


    <!-- HOME -->

    <section class="home" id="home">
        <div class="row">
            <div class="content">
                <h3 class="about-heading">Who We Are</h3>
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
        <h1 class="heading">Who we Are<span>Origin of Coffeee</span></h1>

        <div class="row">
            <div class="image">
                <img src="image/about-img.png" alt="" />
            </div>

            <div class="content">
                <h3 class="title">About Us</h3>
                <p>
                    About Us Welcome to the heart and soul of coffee aficionados in
                    Bangalore. Our journey began in the bustling streets of this vibrant
                    city, where the love for exceptional coffee ignited our passion.
                </p>

                <h3 class="title">Origin</h3>
                <p>
                    Nestled amidst the energetic vibes of Bangalore, our coffee shop was
                    born out of a desire to create a haven for coffee enthusiasts.
                    Drawing inspiration from the city's dynamic spirit, we embarked on a
                    mission to craft an unparalleled coffee experience. Our story
                    started with a simple dream - to serve the finest coffee, brewed to
                    perfection, in a cozy and inviting space.
                </p>

                <h3 class="title">Our Branches</h3>
                <div class="icons-container">
                    <div class="icons">
                        <img src="image/store-1.png" alt="" />
                        <h3>Koramangala</h3>
                    </div>
                    <div class="icons">
                        <img src="image/store-3.png" alt="" />
                        <h3>Indiranagar</h3>
                    </div>
                    <div class="icons">
                        <img src="image/store-2.png" alt="" />
                        <h3>MG Road</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <h1 class="heading">FIND US<span>MAP</span></h1>

    <section class="map">
        <section class="maps wow fadeInUp" id="map">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7775.865018435065!2d77.59187629357913!3d12.976168499999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae167b826ffedd%3A0x8aefb6358f083984!2sHard%20Rock%20Cafe!5e0!3m2!1sen!2sin!4v1692010722052!5m2!1sen!2sin"
                width="100%" height="450" style="border: 0" allowfullscreen="" loading="fast"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </section>
    </section>

   <!-- FOOTER -->

		<jsp:include page="./footer_index.jsp" /></section>


    <!-- SWIPER -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

    <!-- Custom JS File Link  -->
    <script src="js/script.js"></script>
</body>



</html>	


<%
    } else if (role.equals("Admin")) {
	response.sendRedirect("./admin.jsp");
    }
%>
