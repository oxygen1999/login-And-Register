<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
</head>
<body>
<%
    		String username = request.getParameter("username") ;
    		String password = request.getParameter("userPassword") ;
    		
    		final String DBDRRIVER = "com.mysql.jdbc.Driver" ;
    		/*  ?useUnicode=true&characterEncoding=gb2312*/
    		final String DBURL = "jdbc:mysql://localhost:3306/test2";
    		final String DBUSERNAME = "root" ;
    		final String DBPASSWORD = "123" ;
    		Connection conn = null ;
    		PreparedStatement pstmt = null ;
    		String sql = null ;
    	
    		if(username!=null&&password!=null){
    			try{
    				Class.forName(DBDRRIVER) ;
    				conn = DriverManager.getConnection(DBURL,DBUSERNAME,DBPASSWORD) ;
    				sql = "insert into users (username,userpassword) values (?,?)" ;
    				pstmt = conn.prepareStatement(sql) ;
    				pstmt.setString(1,username) ;
    				pstmt.setString(2,password) ;
    				pstmt.executeUpdate() ;
    				pstmt.close() ;
    				conn.close() ;
    	%>
    				<h3>ע��ɹ�!!!</h3>
    				<h3>�����Ӻ��Զ�ת����¼ҳ��!!!</h3>
    				<h3>���û����ת������<a href="login.jsp">����</a>!!!</h3>
    	<%
    				response.setHeader("refresh","3;url=login.jsp") ;
    			}catch(Exception e){
    	%>
    				<h3>ע��ʧ��!!!</h3>
    				<h3><%=e%></h3>
    	<%    	
    			}
    		}
    	%>

</body>
</html>