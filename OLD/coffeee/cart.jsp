<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <!-- Add your CSS and other head elements here -->
</head>
<body>
    <h1>Your Shopping Cart</h1>

    <% 
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/coffeee", "root", "");
            
            String query = "SELECT * FROM cart_items";
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            
            while (resultSet.next()) {
                String productName = resultSet.getString("product_name");
                double price = resultSet.getDouble("price");
                int quantity = resultSet.getInt("quantity");
    %>
    <div>
        <p><strong><%= productName %></strong></p>
        <p>Price: ₹<%= price %></p>
        <p>Quantity: <%= quantity %></p>
    </div>
    <% 
            }
        } catch (Exception e) { 
            e.printStackTrace(); 
        } finally { 
            if (resultSet != null) resultSet.close(); 
            if (statement != null) statement.close(); 
            if (connection != null) connection.close(); 
        } 
    %>

    <!-- Add a button to proceed to checkout or continue shopping -->
    <a href="./customer.jsp">Continue Shopping</a>
    <a href="./checkout.jsp">Proceed to Checkout</a>
</body>
</html>
 --%>