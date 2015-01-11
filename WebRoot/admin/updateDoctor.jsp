<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/z_style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js">

</script>

 <title>背景</title>    
 <style type="text/css">    
 body{    
      background-image: url(picture/xiangrikui.jpg);    
      background-repeat: repeat;    
 }    
  
 </style> 


</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="admin/top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="50" scrolling="no"></iframe>
<table width="100%" border="1" cellpadding="1" cellspacing="1" >
  
</table>
<table width="100%" border="1" cellpadding="1" cellspacing="1" class="main">
<tr valign="top">

    </tr>
    <tr>
      <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;修改医生信息</font></td>
    </tr>
    <tr>
      <td>
          <form action="DoctorAction?method=updateDoctor" method="post" name="form1" onSubmit="return teamform()">
       <table width="100%" border="0" cellpadding="1" cellspacing="1" class="inputbox">
          <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">医生姓名：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="name" onFocus="nextfield='password'" value="${map.name}" maxlength="25">        
               <input type="hidden" class="text width100" name="id" onFocus="nextfield='password'" value="${map.id}" maxlength="25">           </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
    <tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>


<tr>
            <td class="inputHeader">&nbsp;</td>
           <td width="11%" class="inputHeader">类型：</td>
            <td width="40%" class="inputContent">
          <select name="type">  
		   <option>${map.type}</option>
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
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>	
          
          
          
          
          <tr>
            <td class="inputHeader">&nbsp;</td>
           <td width="11%" class="inputHeader">性别：</td>
            <td width="40%" class="inputContent">
          <select name="sex">  
          <option>${map.sex}</option>
		   <option>男</option>
           <option>女</option>
 </select> 
            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>	
          
  <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">年龄：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="age" onFocus="nextfield='password'" value="${map.age}" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>

             
             
   <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">工作经验：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="workyear" onFocus="nextfield='password'" value="${map.workyear}" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>     
          
          
 <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">联系方式：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="phone" onFocus="nextfield='password'" value="${map.phone}" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>
         


          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">医生简介：</td>
            <td class="inputContent">
              <textarea name="introduction" rows="6" cols="50">${map.introduction}</textarea>           </td>
            <td class="inputContent">&nbsp;</td>
          </tr>
      <tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>
           

   
 <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputContent">&nbsp;</td>
            <td class="inputContent">&nbsp;</td>
          </tr>
          <tr>
           <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader"> </td>
            <td width="40%" class="inputContent">
            <input type="submit" class="bt2" name="button2" value="修改">&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="Reset" class="bt2" name="button1" value="重填" onClick="clear()"> </td>
            <td width="45%" class="inputContent">&nbsp;</td>
         
         </tr>
          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputContent">&nbsp;</td>
            <td class="inputContent">&nbsp;</td>
          </tr>
		   <tr>
            <td class="inputHeader">&nbsp;</td>
            
            <td class="inputHeader">&nbsp;</td>            
            <td class="inputContent">&nbsp;</td>
            
            <td class="inputContent">&nbsp;</td>
          </tr>
          
        </table>
        </form>
        <table width="100%" border="0" cellspacing="1" cellpadding="0">
          <tr>
            <td width="4%" class="inputContent">&nbsp;</td>
            <td width="17%" class="inputHeader">&nbsp;</td>
            <td width="39%" class="inputContent">
         </td>
            <td width="40%" class="inputContent">&nbsp;</td>
          </tr>
        </table></td>
    </tr>
  </table>


<table width="100%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
     <td class="inputTitle"><font size="3" >&nbsp;&nbsp;请确定所修改的医生已经注册！！！</font></td>
</tr>
</table>
</body>
</html>
