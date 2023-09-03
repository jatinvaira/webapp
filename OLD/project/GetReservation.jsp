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
	String Date=request.getParameter("Date");
	String ATime=request.getParameter("ATime");
	String DTime=request.getParameter("DTime");
	String Guests=request.getParameter("Guests");
	String Info=request.getParameter("Info");
	try
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
	     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coffeee","root","");
	     
	     String query = "INSERT INTO `reservation` (`Name`, `Email`, `Phone`, `Date`, `ATime`, `DTime`, `Guests`, `Message`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
	     
				PreparedStatement ps= con.prepareStatement(query);
				ps.setString(1,Name);
				ps.setString(2,Email);
				ps.setString(3,Phone);
				ps.setString(4,Date);
				ps.setString(5,ATime);
				ps.setString(6,DTime);
				ps.setString(7,Guests);
				ps.setString(8,Info);
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