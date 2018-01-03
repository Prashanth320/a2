<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	Connection con = null;
	PreparedStatement pstmt = null;
%>
<%
	String id = request.getParameter("id");
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prashanth", "root", "jdbc");
	String sql = "select image from photo where id=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		byte barray[] = rs.getBytes("image");
		response.setContentType("image/jpg");
		OutputStream img = response.getOutputStream();
		img.write(barray);
		img.flush();
		img.close();
	} else {
		out.println("Not Retrieve");
	}
%>