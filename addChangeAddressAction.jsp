<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");

try
{
Connection con=ConnectionProvider.getCon();
PreparedStatement ps=con.prepareStatement("update users set address=?,city=?,state=?,country=? where email=?");
ps.setString(1,address);
}
catch(Exception e)
{}
%>