<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
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
	String message = request.getParameter("message");
	String image = request.getParameter("image");
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prashanth", "root", "jdbc");
	String sql = "INSERT INTO PHOTO VALUES(?,?,?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, message);
	File image1 = new File(image);
	InputStream f1 = new FileInputStream(image1);
	pstmt.setBinaryStream(3, f1);
	int i = pstmt.executeUpdate();
	if (i > 0) {
		out.println("successfully inserted");
	} else {
		out.println("Failed to insert");
	}
%>
