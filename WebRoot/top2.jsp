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
  
   <body>
   <center>
  <div align="center">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center"><h3>����:<%=session.getAttribute("trueName") %>|<a href="UserAction?method=returnIndex" target="_parent">������ҳ</a>|<a href="OrderAction?method=orderList" target="_parent">���˹Һ���Ϣ</a>|<a href="UserAction?method=exit" target="_parent">��ȫ�˳�</a></h3></td>
    </tr>
  </table>
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><img src="picture/yybz.jpg" width="148" height="119"></td>
      <td><img src="picture/yygh.jpg" width="128" height="124"></td>
    </tr>
  </table>
  </div>
  </center>
  </body>
</html>
