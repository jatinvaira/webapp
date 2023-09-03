<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String num = request.getParameter("product_id"); // Change parameter name to "Name"
    int product_id = Integer.parseInt(num);
	String product_name=request.getParameter("product_name");
	String description=request.getParameter("description");
	String price=request.getParameter("price");
	try
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
	     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coffeee","root","");
	     
	     String query = "UPDATE product SET product_name = ?,description = ?, price = ? WHERE product_id = ?";

				PreparedStatement ps= con.prepareStatement(query);
				ps.setString(1,product_name);
				ps.setString(2,description);
				ps.setString(3,price);
				ps.setInt(4,product_id);
				int r=ps.executeUpdate();
				if(r>0){
					response.sendRedirect("NewData.jsp");
				}
				else
				{
					out.print("record not updated");
				}
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
	%>
</body>
</html>