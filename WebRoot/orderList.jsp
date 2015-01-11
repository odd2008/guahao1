<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>医院网上挂号系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js"></script>
 <title>背景</title>    
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
    
      <td align="center">你的挂号清单</td>
    </tr>
    
    <tr>
      <td class="inputHeader">
	   <table width="100%" border="1" cellpadding="1" cellspacing="1" >
          <tr>
            <td width="15%" align="center" class="inputHeader">医生姓名</td>
                       
            <td width="15%" align="center" class="inputContent">类型</td>
            <td width="15%" align="center" class="inputContent">年龄</td>
            <td width="15%" align="center" class="inputContent">工作经验</td>
            <td width="15%" align="center" class="inputContent">联系方式</td>
             <td width="15%" align="center" class="inputContent">时间</td>
            <td width="15%" align="center" class="inputContent">操作</td>        
          </tr>
          <c:forEach items="${list}" var="list">
		     <tr>
            <td width="15%" align="center" class="inputHeader">${list.name}</td>
            <td width="15%" align="center" class="inputContent">${list.type}</td>
            <td width="15%" align="center" class="inputContent">${list.age}岁</td>
            <td width="15%" align="center" class="inputContent">${list.workyear}年</td>
            <td width="15%" align="center" class="inputContent">${list.phone}</td>
              <td width="15%" align="center" class="inputContent">${list.time}</td>
            <td width="15%" align="center" class="inputContent"><a href="OrderAction?method=cancel&id=${list.id}">取消</a></td>        
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
     <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;咨询电话：123456789</font></td>
</tr>
</table>

</body>
</html>
