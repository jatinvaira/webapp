<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%

    String Email = request.getParameter("Email");
    String Password = request.getParameter("Password");
    /* String User = request.getParameter("User"); */
    
    
    
        Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;

    try 
    {
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coffeee", "root", "");
    
    String query = "SELECT User FROM register WHERE Email=? AND Password=? ";
    PreparedStatement ps = con.prepareStatement(query);
    ps.setString(1, Email);
    ps.setString(2, Password);
    
    
    /* ResultSet rs = ps.executeQuery();
    if (rs.next()) 
    {
        response.sendRedirect("http://localhost:8080/Coffeee/NITTTR/index.jsp");
    }
    else if (rs.next()) 
    {
        response.sendRedirect("http://localhost:8080/Coffeee/NITTTR/admin.jsp");
    } */
    ResultSet rs = ps.executeQuery();

    if (rs.next()) 
    {
    	String User = rs.getString("User");
    	
    	HttpSession Session = request.getSession();
        Session.setAttribute("Email", Email);
        Session.setAttribute("User", User);
    	
    	
        
        if (User.equals("Admin")) {
            response.sendRedirect("admin.jsp");
        } else if (User.equals("Customer")) {
            response.sendRedirect("customer.jsp");
        }
    } else {
        
        
        %><script>
            alert("Login failed. Please check your credentials.");
            window.location.href = "./Login.jsp"; // Redirect back to the login page
        </script><%
        
        

    }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (resultSet != null) resultSet.close();
        if (statement != null) statement.close();
        if (connection != null) connection.close();
    }
%>
</body>
</html>
