<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>ҽԺ���ϹҺ�ϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js"></script>
 <title>����</title>    
 <style type="text/css">    
 body{    
      background-image: url(picture/taohua.jpg);    
      background-repeat: repeat;    
 }    
  
 </style> 

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="top2.jsp" frameborder="0" marginheight="0" marginwidth="0" width="70%" height="150" scrolling="no"></iframe>


<table width="100%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
<td><form action="DoctorAction?method=select" method="post" name="form1" onSubmit="return checkuser()">
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
    <tr>
    
      <td align="center">��ĹҺ��嵥</td>
    </tr>
    
    <tr>
      <td class="inputHeader">
	   <table width="100%" border="1" cellpadding="1" cellspacing="1" >
          <tr>
            <td width="15%" align="center" class="inputHeader">ҽ������</td>
                       
            <td width="15%" align="center" class="inputContent">����</td>
            <td width="15%" align="center" class="inputContent">����</td>
            <td width="15%" align="center" class="inputContent">��������</td>
            <td width="15%" align="center" class="inputContent">��ϵ��ʽ</td>
             <td width="15%" align="center" class="inputContent">ʱ��</td>
            <td width="15%" align="center" class="inputContent">����</td>        
          </tr>
          <c:forEach items="${list}" var="list">
		     <tr>
            <td width="15%" align="center" class="inputHeader">${list.name}</td>
            <td width="15%" align="center" class="inputContent">${list.type}</td>
            <td width="15%" align="center" class="inputContent">${list.age}��</td>
            <td width="15%" align="center" class="inputContent">${list.workyear}��</td>
            <td width="15%" align="center" class="inputContent">${list.phone}</td>
              <td width="15%" align="center" class="inputContent">${list.time}</td>
            <td width="15%" align="center" class="inputContent"><a href="OrderAction?method=cancel&id=${list.id}">ȡ��</a></td>        
          </tr>  
          </c:forEach>
        </table>
        
	  </td>
    </tr>
   
  </table>
  </form>  
</td>
</tr>
</table>

<table color="#CC0000 width="100%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
     <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;��ѯ�绰��123456789</font></td>
</tr>
</table>

</body>
</html>