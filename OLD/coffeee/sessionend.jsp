<%@ page language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
// Get the current session
HttpSession session1 = request.getSession(false); // Pass 'false' to prevent the creation of a new session if one doesn't exist

if (session != null) {
    // Invalidate the session to end it
    session.invalidate();
}

response.sendRedirect("./index.jsp");
%>
