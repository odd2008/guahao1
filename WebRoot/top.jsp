<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>

  </head>
  

  
  



  <div align="center">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center"><h3>欢迎使用电子科技大学医院网上挂号系统</h3></td>
    </tr>
  </table>
     <table width="100%" border="0" cellspacing="0" cellpadding="0" height="110">
    <tr>
      <td><img src="picture/yybz.jpg" width="148" height="119"></td>
      <td><img src="picture/yygh.jpg" width="128" height="124"></td>
    </tr>
  </table>
  </div>

</html>
