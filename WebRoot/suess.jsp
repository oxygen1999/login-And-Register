<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��¼�ɹ�</title>
</head>
<body>
<%
    		String username = request.getParameter("username") ;
    		String password = request.getParameter("password") ;
    		
    		final String DBDRRIVER = "com.mysql.jdbc.Driver" ;
    		/* ?useUnicode=true&characterEncoding=gb2312 */
    		final String DBURL = "jdbc:mysql://localhost:3306/test2" ;
    		final String DBUSERNAME = "root" ;
    		final String DBPASSWORD = "123" ;
    		Connection conn = null ;
    		PreparedStatement pstmt = null ;
    		String sql = null ;
    		out.print(username);
    		if(username!=null&&password!=null){
    			try{
    				Class.forName(DBDRRIVER) ;
    				conn = DriverManager.getConnection(DBURL,DBUSERNAME,DBPASSWORD) ;
    				sql = "select * from users where username=? and userpassword=?;" ;
    				pstmt = conn.prepareStatement(sql) ;
    				pstmt.setString(1,username) ;
    				pstmt.setString(2,password) ;
    				ResultSet aa=pstmt.executeQuery();
    				if(!aa.next())response.sendRedirect("login.jsp?please login again!");
    				else out.println("��¼�ɹ�");
    				pstmt.close() ;
    				conn.close() ;
    	
    			}catch(Exception e){
    	%>
    				<h3>��¼ʧ��!!!</h3>
    				<h3><%=e%></h3>
    	<%    	
    			}
    		}
    	%>
</body>
</html>