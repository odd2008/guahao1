
function teamform(){
if(document.form1.name.value===""){
window.alert("������ҽ��������");
document.form1.name.focus();
return false;
}


if(document.form1.type.value==="ѡ��"){
window.alert("��ѡ�����ͣ�");
document.form1.type.focus();
return false;
}
if(document.form1.phone.value===""){
window.alert("��������ϵ������");
document.form1.phone.focus();
return false;
}
else{
  return true;
}
}

function checkTime(){
if(document.form1.time.value===""){
window.alert("������ʱ�䣡");
document.form1.time.focus();
return false;
}
else{
 return true;
}
}

function checkloginform(){
if(document.form1.username.value===""){
window.alert("��������ʵ������");
document.form1.username.focus();
return false;
}if(document.form1.password.value===""){
window.alert("������֤���ţ�");
document.form1.password.focus();
return false;
}else{
window.location.href="home.htm";
} 

}

function teamfor(){
if(document.form1.name.value===""){
window.alert("�������û�����");
document.form1.name.focus();
return false;
}if(document.form1.password.value===""){
window.alert("���������룡");
document.form1.password.focus();
return false;
}else{
window.location.href="order_confirm.htm";
} 

}





function checkregform(){
if (document.form1.trueName.value === "") {
		window.alert("��������ʵ������");
		document.form1.trueName.focus();
		return false;
if (document.form1.number.value === "") {
		window.alert("������֤���ţ�");
		document.form1.number.focus();
		return false;
	}
	if (!checkEmail(document.phone.email.value)) {
		window.alert("��������ϵ��ʽ");
		document.form1.phone.focus();
		return false;
	}
	if (document.form1.address.value === "") {
		window.alert("�����������ַ��");
		document.form1.address.focus();
		return false;
	}
	 else
		return true;
}

function checkinfoeditform(){
if(document.form1.passwordold.value===""){
window.alert("������ԭʼ���룡");
document.form1.passwordold.focus();
return false;
}if(document.form1.passwordnew.value===""){
window.alert("�����������룡");
document.form1.passwordnew.focus();
return false;
}if(document.form1.passwordConfirm.value===""){
window.alert("���ٴ����������룡");
document.form1.passwordConfirm.focus();
return false;
}else{
window.location.href="home.htm";
} 
}



function checkaddressdaohang(){
if(document.form1.name.value===""){
window.alert("�������û�����");
document.form1.name.focus();
return false;
}if(document.form1.address.value===""){
window.alert("�������ַ��");
document.form1.address.focus();
return false;
}if(document.form1.phone.value===""){
window.alert("�������ֻ����룡");
document.form1.phone.focus();
return false;
}if(!checkTel(document.form1.phone.value)){
 window.alert("�ֻ������ʽ���ԣ�");
 document.form1.phone.value="";
document.form1.phone.focus();
return false;
}else{
window.location.href="address_daohang.htm";
} 

}


}