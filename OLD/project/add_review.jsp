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
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String star=request.getParameter("star");
	String review=request.getParameter("review");

	try
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
	     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coffeee","root","");
	     String query = "INSERT INTO review ( name, email, star, review) VALUES ( ?, ?, ?, ?)";
	       
				PreparedStatement ps= con.prepareStatement(query);
				ps.setString(1,name);
				ps.setString(2,email);
				ps.setString(3,star);
				ps.setString(4,review);

				int r=ps.executeUpdate();
				if(r>0){
					response.sendRedirect("./customer.jsp");

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