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

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="top2.jsp" frameborder="0" marginheight="0" marginwidth="0" width="70%" height="150" scrolling="no"></iframe>
<table width="100%" border="1" cellpadding="1" cellspacing="1" class="yrh">
  
</table>
<table width="100%" border="1" cellpadding="1" cellspacing="1" class="main">
<tr valign="top">

    </tr>
    <tr>
      <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;修改您的个人信息</font></td>
    </tr>
    <tr>
      <td>
          <form action="UserAction?method=updateUser" method="post" name="form1" onSubmit="return teamform()">
       <table width="100%" border="0" cellpadding="1" cellspacing="1" class="inputbox">
          <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">您的姓名：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="trueName" onFocus="nextfield='password'" value="${map.truename}" maxlength="25">        
               <input type="hidden" class="text width100" name="id" onFocus="nextfield='password'" value="${map.id}" maxlength="25">           </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
    <tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
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
            <td width="11%" class="inputHeader">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="number" onFocus="nextfield='password'" value="${map.number}" maxlength="25">            </td>
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
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">邮箱地址：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="address" onFocus="nextfield='password'" value="${map.address}" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td class="inputHeader">&nbsp;</td>
           
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
     <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;请确定所修改的医生已经注册！！！</font></td>
</tr>
</table>
</body>
</html>
