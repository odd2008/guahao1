<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>ҽԺ�Һ���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/z_style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js">
</script>
 <title>����</title>    
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
      <td ><font size="3" >&nbsp;&nbsp;���ҽ����Ϣ</font></td>
    </tr>
    <tr>
      <td>
      <form action="../DoctorAction?method=addDoctor" method="post" name="form1"  onSubmit="return teamform()">
        <table width="100%" border="0" cellpadding="1" cellspacing="1" >
          <tr>
            <td width="4%" >&nbsp;</td>
            <td width="11%" >ҽ��������</td>
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
           <td width="11%" >�Ա�</td>
            <td width="40%" >
             <select name="sex">
<option value="ѡ��">- - - - ��ѡ���Ա�- - - - </option>
           <option>��</option>
           <option>Ů</option>
  
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
            <td width="11%" >���䣺</td>
            <td width="40%" >
              <input type="Text" class="text width100" name="age" onFocus="nextfield='password'" maxlength="25">��          </td>
            <td width="45%" >&nbsp;</td>
          </tr>
<tr>
            <td >&nbsp;</td>
           
            <td >&nbsp;</td>
          </tr>
          
          
          <tr>
            <td width="4%" >&nbsp;</td>
            <td width="11%" >�������飺</td>
            <td width="40%" >
              <input type="Text" class="text width100" name="workyear" onFocus="nextfield='password'" maxlength="25">��            </td>
            <td width="45%" >&nbsp;</td>
          </tr>
<tr>
            <td >&nbsp;</td>
           
            <td >&nbsp;</td>
          </tr>





<tr>
            <td >&nbsp;</td>
           <td width="11%" >���ͣ�</td>
            <td width="40%" >
             <select name="type">
<option value="ѡ��">- - - - ��ѡ��һ������- - - - </option>
           <option>����</option>
           <option>���</option>
           <option>�ڿ�</option>
           <option>����</option>
           <option>��Ⱦ��</option>
           <option>��ٿ�</option>
           <option>Ƥ���Բ���</option>
           <option>�����</option>
           <option>���ڿ�</option>
           <option>��ҽ��</option>
           <option>���˿�</option>
           <option>�����</option>
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
            <td width="11%" >��ϵ��ʽ��</td>
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
            <td >ҽ����飺</td>
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
            <input type="submit" class="bt2" name="button2" value="���">&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="Reset" class="bt2" name="button1" value="����" onClick="clear()"> </td>
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
     <td class="inputTitle"><font size="3" >&nbsp;&nbsp;����غ�ʵ������Ϣ�Ƿ���ȷ������</font></td>
</tr>
</table>
</body>
</html>
