<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adding details</title>
</head>
<body>
	<%
	String product_name=request.getParameter("product_name");
	String description=request.getParameter("description");
	String price=request.getParameter("price");
	try
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
	     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coffeee","root","");
	     String query = "INSERT INTO Product ( product_name, description, price) VALUES ( ?, ?, ?)";
	       
				PreparedStatement ps= con.prepareStatement(query);
				ps.setString(1,product_name);
				ps.setString(2,description);
				ps.setString(3,price);
				int r=ps.executeUpdate();
				if(r>0){
					response.sendRedirect("index.jsp");

				}
				else
				{
					out.print("record not added");
				}
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
	%>
</body>
</html>