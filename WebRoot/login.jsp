<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <title>starting page</title>
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	<!--
	
	.STYLE2 {
		font-family: "Courier New", Courier, monospace;
		font-size: 16px;
		font-weight: bold;
		color: red;
	}
	-->
	</style>
</head>

<body>

<p align="center" class="STYLE2"> �û���¼ҳ��</p>
<%
    if(request.getAttribute("error") != null){
    %>
       <center>
         <h3> <font color="red" ><%=request.getAttribute("error") %></font></h3>
       </center>
  <%  }
 %>
 <%String info=request.getParameter("info");
 if(info==null)info="";%>
 <font color=red><%=info %></font>
<form id="form1" name="form1" method="post" action="suess.jsp">
  <table width="337" height="124" border="1" align="center">
    <tr>
      <td width="77">�û�����</td>
      <td width="107"><label>
        <input name="username" type="text" id="id" size="20" maxlength="20" />
      </label></td>
    </tr>
    <tr>
      <td>��&nbsp;&nbsp;&nbsp;�룺</td>
      <td><label>
        <input name="password" type="password" id="password" size="20" maxlength="20" />
      </label></td>
    </tr>
    <tr>
      <td><label>
        <input type="submit" name="submit" id="submit" value="��¼" />
      </label></td>
      <td><label>
        <input type="reset" name="reset" id="reset" value="����" />
      </label></td>
    </tr>
  </table>
</form>
<a href=register.jsp>ע���û�</a>
  </body>
</html>
