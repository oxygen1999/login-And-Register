<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>���û�ע��</title>
		<script language="javascript">
		//�ж�������û����������Ƿ�Ϸ�
		function check()
		{
			if(reg_form.username.value == "")
			{//�ж��û����Ƿ�Ϊ��
				alert("�û�������Ϊ�գ�");
				reg_form.userName.focus();
			}
			else if(reg_form.userPassword.value == "")
			{//�ж������Ƿ�Ϊ��
				alert("�û����벻��Ϊ�գ�");
				reg_form.userPassword.focus();
			}
			else if(reg_form.userPassword.value != reg_form.confirm_UserPassword.value)
			{//�ж���������������Ƿ�һ��
				alert("������������벻һ�£�");
				reg_form.userPassword.focus();				
			}
			else
			{
				//������תĿ��ҳ��
				reg_form.action="login_conf.jsp";
			}
		}
		</script>
	</head>
	<body>
		<p align="center"><font size="5">���û�ע��</font></p>
		<div align="center">
		<form name="reg_form" method="post" onSubmit="check()">
		<table width="60%" border="0">
			<tr>
			<td width="50%" align="right">�������û�����</td>
			<td width="50%" align="left"><input type="text" name="username"></td>
			</tr>
			<tr>
			<td width="50%" align="right">���������룺</td>
			<td width="50%" align="left"><input type="password" name="userPassword"></td>
			</tr>
			<tr>
			<td width="50%" align="right">������ȷ�����룺</td>
			<td width="50%" align="left"><input type="password" name="confirm_UserPassword"></td>
			</tr>
			<tr>
			<td width="50%" align="center" colspan="2">
			<br>
			<input type="submit" name="sub" value="ע��">&nbsp;&nbsp;
			<input type="reset" name="res" value="����">
			</td>			
			</tr>
		</table>
		</form>
		</div>
	</body>
</html>