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
		<link href="components/calendar/skins/aqua/theme.css"
			rel="stylesheet" type="text/css">
		<script language="javascript" src="components/calendar/calendar.js">
</script>
		<script language="javascript"
			src="components/calendar/calendar-setup.js">
</script>
		<script language="javascript"
			src="components/calendar/lang/calendar-zh_CN.js">
</script>

  
 
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="top2.jsp" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="150" scrolling="no"></iframe>


<table width="100%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
<td><form action="OrderAction?method=order" method="post" name="form1" onSubmit="return checkTime()">
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
    <tr>
    
      <td align="center">ԤԼ��Ϣȷ��</td>
    </tr>
    
    <tr>
      <td class="inputHeader">
      
	   <table width="100%" border="0" cellpadding="0" cellspacing="0" >
          <tr>
            <td width="25%" align="center" class="inputHeader">ԤԼ�ˣ�</td>
            <td width="23%" align="left" class="inputContent"><input type="text" name="tureName" value="<%=session.getAttribute("trueName") %>" readonly/></td>      
          </tr>
         <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>      
          </tr>
            <tr>
            <td width="25%" align="center" class="inputHeader">ԤԼҽ����</td>
            <td width="23%" align="left" class="inputContent"><input type="text" name="name" value="${map.name }"/ readonly></td>      
          </tr>
           <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>      
          </tr>
            <tr>
            <td width="25%" align="center" class="inputHeader">���ͣ�</td>
            <td width="23%" align="left" class="inputContent"><input type="text" name="type" value="${map.type }" readonly/></td>      
          </tr>
           <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>      
          </tr>
          
          
        <tr>
            <td width="25%" align="center" class="inputHeader">ҽ�����䣺</td>
            <td width="23%" align="left" class="inputContent"><input type="text" name="age" value="${map.age}" readonly/></td>      
          </tr>
           <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>      
          </tr>
          
          
          
          
         <tr>
            <td width="25%" align="center" class="inputHeader">ҽ���������飺</td>
            <td width="23%" align="left" class="inputContent"><input type="text" name="workyear" value="${map.workyear}" readonly/></td>      
          </tr>
           <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>      
          </tr>
          
          
         <tr>
            <td width="25%" align="center" class="inputHeader">ҽ����ϵ��ʽ��</td>
            <td width="23%" align="left" class="inputContent"><input type="text" name="phone" value="${map.phone}" readonly/></td>      
          </tr>
           <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>      
          </tr>          
          
          
          
          
          
          
          
          
          
          
            <tr>
            <td width="25%" align="center" class="inputHeader">ʱ�䣺��xxxx-xx-xx)</td>
                        <td width="23%" align="left" class="inputContent"><input type="Text"  name="time" >&nbsp;&nbsp;</td>      
          </tr>
           <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>      
          </tr>
            <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="left" class="inputContent"><input type="submit" value="ȷ��" /> <input type="button" value="ȡ��" onclick="window.location.href='home.jsp';"/> </td>
              
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
     <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;��ѯ�绰��123456789</font></td>
</tr>
</body>
</html>
