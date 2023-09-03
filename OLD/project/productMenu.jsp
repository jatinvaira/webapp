<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ page import="java.sql.*" %>


<%!
        // Method to generate a random number between 1 and 6
        public int generateRandomNumber() {
            java.util.Random random = new java.util.Random();
            return random.nextInt(6) + 1;
        }
    %>
    
   

<!DOCTYPE html>
<html>
<head>
    <title>Product Menu</title>
     <link rel="stylesheet" type="text/css" href="css/style.css" />
      <link rel="stylesheet" type="text/css" href="Style.css" />


    </head>
<body>
    <div class="product-menu">
        <%
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/coffeee", "root", "");
                
                String query = "SELECT * FROM product";
                statement = connection.createStatement();
                resultSet = statement.executeQuery(query);
                
                while (resultSet.next()) {
                    int productId = resultSet.getInt("product_id");
                    String productName = resultSet.getString("product_name");
                    String description = resultSet.getString("description");
                    double price = resultSet.getDouble("price");
        %>
      <a class="box">
        <img src="image/menu-<%= generateRandomNumber() %>.png" alt="" />
        <div class="content">
          <h3
            class="font-size: 2.2rem; color: var(--main-color); line-height: 1.8;"
          >
            <%= productName %>
          </h3>
          <p
            style="
              font-size: 1.6rem;
              color: var(--main-color);
              line-height: 1.8;
              padding: 1rem 0;
            "
          >
            <%= description %>
          </p>
          <span
            style="font-size: 2rem; color: var(--main-color); line-height: 1.8"
            >₹<%= price %>
            </span
          > 
          
        </div>
      </a>
      <% } } catch (Exception e) { e.printStackTrace(); } finally { if
      (resultSet != null) resultSet.close(); if (statement != null)
      statement.close(); if (connection != null) connection.close(); } %>
      

    </div>
        
  </body>
</html>
