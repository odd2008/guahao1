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
      background-image: url(picture/2.jpg);    
      background-repeat: repeat;    
 }    
  
 </style> 
</head>
<body  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="../admin/top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="50" scrolling="no"></iframe>

<table width="100%" border="1" cellpadding="1" cellspacing="1" >
<tr valign="top">

    </tr>
    <tr>
      <td ><font size="3" >&nbsp;&nbsp;添加医生信息</font></td>
    </tr>
    <tr>
      <td>
      <form action="../DoctorAction?method=addDoctor" method="post" name="form1"  onSubmit="return teamform()">
        <table width="100%" border="0" cellpadding="1" cellspacing="1" >
          <tr>
            <td width="4%" >&nbsp;</td>
            <td width="11%" >医生姓名：</td>
            <td width="40%" >
              <input type="Text" class="text width100" name="name" onFocus="nextfield='password'" maxlength="25">            </td>
            <td width="45%" >&nbsp;</td>
          </tr>
    <tr>
            <td >&nbsp;</td>
           
            <td >&nbsp;</td>
          </tr>




<tr>
            <td >&nbsp;</td>
           <td width="11%" >性别：</td>
            <td width="40%" >
             <select name="sex">
<option value="选择">- - - - 请选择性别- - - - </option>
           <option>男</option>
           <option>女</option>
  
</select>
            </td>
            <td width="45%" >&nbsp;</td>
          </tr>	
           <tr>
            <td >&nbsp;</td>
           
            <td >&nbsp;</td>
          </tr>


<tr>
            <td width="4%" >&nbsp;</td>
            <td width="11%" >年龄：</td>
            <td width="40%" >
              <input type="Text" class="text width100" name="age" onFocus="nextfield='password'" maxlength="25">岁          </td>
            <td width="45%" >&nbsp;</td>
          </tr>
<tr>
            <td >&nbsp;</td>
           
            <td >&nbsp;</td>
          </tr>
          
          
          <tr>
            <td width="4%" >&nbsp;</td>
            <td width="11%" >工作经验：</td>
            <td width="40%" >
              <input type="Text" class="text width100" name="workyear" onFocus="nextfield='password'" maxlength="25">年            </td>
            <td width="45%" >&nbsp;</td>
          </tr>
<tr>
            <td >&nbsp;</td>
           
            <td >&nbsp;</td>
          </tr>





<tr>
            <td >&nbsp;</td>
           <td width="11%" >类型：</td>
            <td width="40%" >
             <select name="type">
<option value="选择">- - - - 请选择一种类型- - - - </option>
           <option>妇科</option>
           <option>外科</option>
           <option>内科</option>
           <option>儿科</option>
           <option>传染科</option>
           <option>五官科</option>
           <option>皮肤性病科</option>
           <option>精神科</option>
           <option>神经内科</option>
           <option>中医科</option>
           <option>烧伤科</option>
           <option>放射科</option>
</select>
            </td>
            <td width="45%" >&nbsp;</td>
          </tr>	
           <tr>
            <td >&nbsp;</td>
           
            <td >&nbsp;</td>
          </tr>
          
          
          
          
          
          
          
          
          
          
          
          
<tr>
            <td width="4%" >&nbsp;</td>
            <td width="11%" >联系方式：</td>
            <td width="40%" >
              <input type="Text" class="text width100" name="phone" onFocus="nextfield='password'" maxlength="25">            </td>
            <td width="45%" >&nbsp;</td>
          </tr>
<tr>
            <td >&nbsp;</td>
           
            <td >&nbsp;</td>
          </tr>
         


          <tr>
            <td >&nbsp;</td>
            <td >医生简介：</td>
            <td >
              <textarea name="introduction" rows="6" cols="50"></textarea>           </td>
            <td >&nbsp;</td>
          </tr>
      <tr>
            <td >&nbsp;</td>
           
            <td >&nbsp;</td>
          </tr>
           







   
 <tr>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
          </tr>
          <tr>
           <td width="4%" >&nbsp;</td>
            <td width="11%" > </td>
            <td width="40%" >
            <input type="submit" class="bt2" name="button2" value="添加">&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="Reset" class="bt2" name="button1" value="重填" onClick="clear()"> </td>
            <td width="45%" >&nbsp;</td>
         
         </tr>
          <tr>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
          </tr>
		   <tr>
            <td >&nbsp;</td>
            
            <td >&nbsp;</td>            
            <td >&nbsp;</td>
            
            <td >&nbsp;</td>
          </tr>
          
        </table>
        </form>
        <table width="100%" border="0" cellspacing="1" cellpadding="0">
          <tr>
            <td width="4%" >&nbsp;</td>
            <td width="17%" >&nbsp;</td>
            <td width="39%" >
         </td>
            <td width="40%" >&nbsp;</td>
          </tr>
        </table></td>
    </tr>
  </table>


<table  width="100%" border="0" cellpadding="0" cellspacing="0" >
<tr valign="top">
     <td class="inputTitle"><font size="3" >&nbsp;&nbsp;请务必核实所填信息是否正确！！！</font></td>
</tr>
</table>
</body>
</html>
