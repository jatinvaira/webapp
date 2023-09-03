<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Record</title>
</head>
<body>

<%
try 
{
    String num = request.getParameter("product_id"); // Change parameter name to "Name"
    int product_id = Integer.parseInt(num);
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coffeee", "root", "");
    
    String query = "delete from product where product_id=?";
    PreparedStatement ps = con.prepareStatement(query);
    ps.setInt(1, product_id);
    int r = ps.executeUpdate();
    if (r > 0) 
    {
    	response.sendRedirect("GetId.jsp");
    } else 
    {
        out.print("No records deleted or error occurred");
    }
    
}
catch (Exception e) 
{
    out.println("Error: " + e.getMessage());
}
%>

</body>
</html>
