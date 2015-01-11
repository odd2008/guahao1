<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<html>
	<head>
		<style>
a {
	text-transform: none;
}

.content {
	margin: 0;
	width: 1120px;
	height: 500px border : 5px solid #333333;
	text-align: center;
	line-height: 5px;
	a {font-family: verdana;
}

a:link {
	color: Gray;
	text-decoration: none;
}

a:hover {
	text-decoration: underline
}
</style>
		<script language="javascript" src="../js/checkform.js">
</script>


 <title>挂号系统管理界面</title>    
 <style type="text/css">    
 body{    
      background-image: url(picture/11472.jpg);    
      background-repeat: repeat;    
 }    
  
 </style> 


	</head>
	<body >
<iframe src="top3.jsp"  width="100%" height="200"></iframe>
		<div class="content" align="center">

			<table width="100%" border="0" bgcolor=green>
				<tr>


				</tr>
			</table>
			<br>


			
				<table width="100%" border="0">
					<tr>
						<td>
							<p style="font-family: verdana; color: green">
								<big><font color="#000000">登陆医院挂号管理</font>：</big>
							</p>
							
						</td>
					</tr>
				</table>
<form action="AdminAction?method=loginDo" method="post"
				name="form1" onSubmit="return checkloginform()">
				<table width="100%" border="0">
					<tr>
					    <td width="17%" class="inputHeader">&nbsp;</td>
						<td width="100" height="49">
							管理员：
						</td>
						<td colspan="2">
							<input type="text" class="login_addr" name="name"
								style="width: 250px; height: 35px" />
						</td>
						<td width="77">
							&nbsp;
						</td>
					</tr>
					<tr>
					    <td width="17%" class="inputHeader">&nbsp;</td>
						<td height="43">
							密&nbsp;&nbsp;码：
						</td>
						<td colspan="2">
							<input type="password" class="login_addr" name="password"
								style="width: 250px; height: 35px">
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td height="15">
							
						</td>
						<td colspan="2">
							<font color="red">${msg}</font>
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td height="37">
							&nbsp;
						</td>
						<td width="135">
							<input type="submit" value="登录" width: 55px; height: 25px">&nbsp;&nbsp;<input type="reset" value="重置"
								 width: 55px; height: 25px">
						</td>
						<td width="114">
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>
			
			</form>
			</div>
	</body>
</html>