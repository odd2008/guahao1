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
<link href="../css/z_style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" >
<tr>
<td><table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
  <tr>
    <td><img src="../picture/space.gif" width="1" height="1"></td>
  </tr>
</table><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
 
<tr>	
<td width="124"></td>
<td align="right" valign="top" ><font size="3">管理员 已登录|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |<a href="../UserAction?method=adminexit" target="_parent" >安全退出  <br></a></font></td>
</tr>
</table>
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="25" class="menuMain">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td class="menuMain1"><table width="560" height="16" border="0" cellpadding="0" cellspacing="0">
              <tr align="center">
                
                 <td width="25%" class="menuLinkbg" ><font size="3"><a href="../DoctorAction?method=doctorShow"  target="_parent">查看医生信息</a></font></td>
               <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
       
                <td width="25%" class="menuLinkbg"><font size="3"><a href="../UserAction?method=userShow" target="_parent">查看用户信息</a></font></td>
                <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
				 <td width="25%" class="menuLinkbg"><font size="3"><a href="../OrderAction?method=orderShow"  target="_parent">查看挂号信息</a></font></td>
				 <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
                 <td width="25%" class="menuLinkbg" ><font size="3"><a href="../admin/modify.jsp"  target="_parent">添加医生信息</a></font></td>
               <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
                 <td width="25%" align="left">&nbsp;</td>
              </tr>
            </table>            
            </td>
          </tr>
    </table></td>
    </tr>
</table>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">

  </table><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="3" background="../picture/whole_line.gif"><img src="../pictures/space.gif" width="1" height="1"></td>
          </tr>
  </table></td>
</tr>
</table>

</body>
</html>