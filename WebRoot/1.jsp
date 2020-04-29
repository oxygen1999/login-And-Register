<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'testconnection.jsp' starting page</title>
  </head>
  
  <body>
    <%
    
        String url = "jdbc:mysql://localhost:3306/ch08";
		String userName = "root";
		String password = "123";
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {

			System.out.println("加载驱动器类时出现异常");
		}
		try {
			conn = null;
			conn = DriverManager.getConnection(url, userName, password);
		} catch (SQLException e) {
			System.out.println("连接数据库的过程中出现SQL异常");
		}
		if (conn == null)
			System.out.println("连接数据库失败");
		else
			System.out.println("连接数据库成功");
    
    
     %>
  </body>
  
<html>
