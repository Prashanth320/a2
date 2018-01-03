package com.prilor;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/FileUploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		// String id=request.getParameter("id");
		String message = request.getParameter("message");
		Part part = request.getPart("file");
		String fileName = extractFileName(part);
		String savePath = "E:\\Innu\\PostingMessage\\WebContent\\images" + File.separator + fileName;
		File fileSaveDir = new File(savePath);
		//part.write(savePath + File.separator);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prashanth", "root", "jdbc");
			PreparedStatement pstmt = con.prepareStatement("insert into photo values(?,?,?)");
			pstmt.setString(1, message);
			pstmt.setString(2, fileName);
			pstmt.setString(3, savePath);
			int x = pstmt.executeUpdate();
			if (x > 0) {
				out.println("done");
			} else {
				out.println("fail");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private String extractFileName(Part part) {

		/*String contentDisp = part.getHeader("content-disposistion");
		String[] items = contentDisp.split("");
		for (String s : items) {
			if (s.trim().startsWith("fileName")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}*/
		return "";
	}

}
