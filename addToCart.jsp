<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
    // Retrieve the cart item data from the AJAX request
    String productIdStr = request.getParameter("productId");
    String productName = request.getParameter("productName");
    String priceStr = request.getParameter("price");

    // Convert the string parameters to appropriate data types
    int productId = Integer.parseInt(productIdStr);
    double price = Double.parseDouble(priceStr);

    // Insert the cart item into the "cart_items" table
    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/coffeee", "root", "");

        String insertQuery = "INSERT INTO cart_items (product_id, product_name, price, quantity) VALUES (?, ?, ?, 1)";
        preparedStatement = connection.prepareStatement(insertQuery);
        preparedStatement.setInt(1, productId);
        preparedStatement.setString(2, productName);
        preparedStatement.setDouble(3, price);
        preparedStatement.executeUpdate();

        response.getWriter().write("Item added to cart successfully"); // Send a success response
    } catch (Exception e) {
        response.getWriter().write("Error adding item to cart"); // Send an error response
    } finally {
        if (preparedStatement != null) preparedStatement.close();
        if (connection != null) connection.close();
    }
%>
 --%>