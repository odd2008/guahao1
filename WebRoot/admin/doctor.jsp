<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>医院挂号网</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/z_style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js">
</script>
 <title>背景</title>    
 <style type="text/css">    
 body{    
      background-image: url(picture/lantian.jpg);    
      background-repeat: repeat;    
 }    
  
 </style> 
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="admin/top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="50" scrolling="no"></iframe>
<table width="100%" border="1" cellpadding="1" cellspacing="1" >
  <tr>
    <td height="10"><font size="4">医生信息列表</font></td>
  </tr>
</table>
<table width="100%" border="1" cellpadding="1" cellspacing="1" class="main">
<tr valign="top">
<td>
  <table width="100%" border="1" cellpadding="1" cellspacing="1" class="inputTable">
 
    <tr>

     <td width="5%" align="center" class="inputHeader">编号</td>
            <td width="5%" align="center" class="inputHeader">姓名</td>
            <td width="8%" align="center" class="inputHeader">性别</td>
            <td width="5%" align="center" class="inputHeader">年龄（岁）</td>
            <td width="5%" align="center" class="inputHeader">工作经验（年）</td>
            <td width="15%" align="center" class="inputHeader">类型</td>
			<td width="15%" align="center" class="inputHeader">联系方式</td>
            <td width="12%" align="center" class="inputContent">操作</td>           
        </tr>
        <c:forEach items="${list}" var="list">
        <tr>
            <td width="5%" align="center" class="inputHeader">${list.id}</td>
            <td width="8%" align="center" class="inputHeader">${list.name}</td>
            <td width="5%" align="center" class="inputHeader">${list.sex}</td>
            <td width="5%" align="center" class="inputHeader">${list.age}</td>
            <td width="5%" align="center" class="inputHeader">${list.workyear}</td>

			<td width="15%" align="center" class="inputHeader">${list.type}</td>
            <td width="15%" align="center" class="inputHeader">${list.phone}</td>
            <td width="12%" align="center" class="inputContent"><p><a href="DoctorAction?method=editDoctor&id=${list.id}"><img src="picture/edit.gif" alt="修改" width="45" height="17" border="1"></a>&nbsp;&nbsp;<a href="DoctorAction?method=deleteDoctor&id=${list.id}" onClick="window.confirm('确定删除？')"><img src="picture/delete_item.gif" alt="删除" width="45" height="17" border="0"></a></p></td>
            
        </tr>
        </c:forEach> 
      </table>
</td>
    </tr>

      </table>



</body>
</html>
