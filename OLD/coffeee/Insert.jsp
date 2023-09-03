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
	String Name=request.getParameter("Name");
	String Email=request.getParameter("Email");
	String Phone=request.getParameter("Phone");
	String Password=request.getParameter("Password");
	try
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
	     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Coffeee","root","");
	     
	     String query = "INSERT INTO `register` (`Name`, `Email`, `Phone`, `Password`) VALUES (?, ?, ?, ?);";
	     
				PreparedStatement ps= con.prepareStatement(query);
				ps.setString(1,Name);
				ps.setString(2,Email);
				ps.setString(3,Phone);
				ps.setString(4,Password);
				int r=ps.executeUpdate();
				if(r>0){
					response.sendRedirect("./Login.jsp");
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
