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

 <title>����</title>    
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
      <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;�޸�ҽ����Ϣ</font></td>
    </tr>
    <tr>
      <td>
          <form action="DoctorAction?method=updateDoctor" method="post" name="form1" onSubmit="return teamform()">
       <table width="100%" border="0" cellpadding="1" cellspacing="1" class="inputbox">
          <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">ҽ��������</td>
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
           <td width="11%" class="inputHeader">���ͣ�</td>
            <td width="40%" class="inputContent">
          <select name="type">  
		   <option>${map.type}</option>
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
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>	
          
          
          
          
          <tr>
            <td class="inputHeader">&nbsp;</td>
           <td width="11%" class="inputHeader">�Ա�</td>
            <td width="40%" class="inputContent">
          <select name="sex">  
          <option>${map.sex}</option>
		   <option>��</option>
           <option>Ů</option>
 </select> 
            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>	
          
  <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">���䣺</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="age" onFocus="nextfield='password'" value="${map.age}" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>

             
             
   <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">�������飺</td>
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
            <td width="11%" class="inputHeader">��ϵ��ʽ��</td>
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
            <td class="inputHeader">ҽ����飺</td>
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
            <input type="submit" class="bt2" name="button2" value="�޸�">&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="Reset" class="bt2" name="button1" value="����" onClick="clear()"> </td>
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
     <td class="inputTitle"><font size="3" >&nbsp;&nbsp;��ȷ�����޸ĵ�ҽ���Ѿ�ע�ᣡ����</font></td>
</tr>
</table>
</body>
</html>
