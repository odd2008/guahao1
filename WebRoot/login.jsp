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
      background-image: url(picture/liantian.jpg);    
      background-repeat: repeat;    
 }    
 </style>  

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="200" scrolling="no"></iframe>


<table width="100%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
<td><form action="UserAction?method=login" method="post" name="form1" onSubmit="return checkloginform()">
  <table width="100%" border="1" cellpadding="0" cellspacing="0">
    <tr>
    
      <td align="center"></td>
    </tr>
    <tr>
      <td class="inputHeader">
	   <table width="100%" border="0" cellpadding="0" cellspacing="0" >
          <tr>
            <td width="17%" class="inputHeader">&nbsp;</td>
            <td width="25%" align="center" class="inputHeader">真实姓名：</td>
            <td width="23%" align="center" class="inputContent"><input type="Text" class="text width100" name="username" onFocus="nextfield='name'" value="" maxlength="25"></td>
            <td width="25%" align="center" class="inputContent">&nbsp;</td>
            <td width="20%" align="center" class="inputContent">&nbsp;</td>
          </tr>
		       <tr>
            <td class="inputHeader">&nbsp;</td>
            <td align="center" class="inputHeader">&nbsp;</td>
           
            <td align="center" class="inputContent"><font color="red"></font>&nbsp;</td>
            <td align="center" class="inputContent">&nbsp;</td>
          </tr>
          <tr>
            <td class="inputHeader"><label></label></td>
            <td align="center" class="inputHeader">证件号码：</td>
            <td align="center" class="inputContent"><input type="password" class="text width100" name="password"  maxlength="25"></td>
            <td align="center" class="inputContent">&nbsp;</td>
            <td align="center" class="inputContent">&nbsp;</td>
          </tr>
          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td align="center" class="inputHeader">&nbsp;</td>
           
            <td align="center" class="inputContent"><font color="red"></font>&nbsp;</td>
            <td align="center" class="inputContent">&nbsp;</td>
          </tr>
          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td align="center" class="inputHeader">&nbsp;</td>
            <td align="center" class="inputContent">
             <input type="submit"  value="登录">	&nbsp;&nbsp;            &nbsp;&nbsp;
             <input type="Reset"  value="重填">

           		</td>
            <td class="inputContent"><a href="UserAction?method=register">注册</a></td>
            <td align="center" class="inputContent">&nbsp;</td>
          </tr>
          
          <tr>
            <td colspan="2" class="inputHeader">&nbsp;
            <td colspan="3" align="center" class="inputContent">&nbsp;</td>
          </tr>
        </table>
        
	  </td>
    </tr>
   
  </table>
  </form>  
</td>
</tr>
</table>
<table color="#CC0000 width="100%" class="main">
<tr valign="top">
     <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;咨询电话：123456789</font></td>
</tr>
</body>
</html>
