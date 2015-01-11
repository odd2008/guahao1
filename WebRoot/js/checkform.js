
function teamform(){
if(document.form1.name.value===""){
window.alert("请输入医生姓名！");
document.form1.name.focus();
return false;
}


if(document.form1.type.value==="选择"){
window.alert("请选择类型！");
document.form1.type.focus();
return false;
}
if(document.form1.phone.value===""){
window.alert("请输入联系方法！");
document.form1.phone.focus();
return false;
}
else{
  return true;
}
}

function checkTime(){
if(document.form1.time.value===""){
window.alert("请输入时间！");
document.form1.time.focus();
return false;
}
else{
 return true;
}
}

function checkloginform(){
if(document.form1.username.value===""){
window.alert("请输入真实姓名！");
document.form1.username.focus();
return false;
}if(document.form1.password.value===""){
window.alert("请输入证件号！");
document.form1.password.focus();
return false;
}else{
window.location.href="home.htm";
} 

}

function teamfor(){
if(document.form1.name.value===""){
window.alert("请输入用户名！");
document.form1.name.focus();
return false;
}if(document.form1.password.value===""){
window.alert("请输入密码！");
document.form1.password.focus();
return false;
}else{
window.location.href="order_confirm.htm";
} 

}





function checkregform(){
if (document.form1.trueName.value === "") {
		window.alert("请输入真实姓名！");
		document.form1.trueName.focus();
		return false;
if (document.form1.number.value === "") {
		window.alert("请输入证件号！");
		document.form1.number.focus();
		return false;
	}
	if (!checkEmail(document.phone.email.value)) {
		window.alert("请输入联系方式");
		document.form1.phone.focus();
		return false;
	}
	if (document.form1.address.value === "") {
		window.alert("请输入邮箱地址！");
		document.form1.address.focus();
		return false;
	}
	 else
		return true;
}

function checkinfoeditform(){
if(document.form1.passwordold.value===""){
window.alert("请输入原始密码！");
document.form1.passwordold.focus();
return false;
}if(document.form1.passwordnew.value===""){
window.alert("请输入新密码！");
document.form1.passwordnew.focus();
return false;
}if(document.form1.passwordConfirm.value===""){
window.alert("请再次输入新密码！");
document.form1.passwordConfirm.focus();
return false;
}else{
window.location.href="home.htm";
} 
}



function checkaddressdaohang(){
if(document.form1.name.value===""){
window.alert("请输入用户名！");
document.form1.name.focus();
return false;
}if(document.form1.address.value===""){
window.alert("请输入地址！");
document.form1.address.focus();
return false;
}if(document.form1.phone.value===""){
window.alert("请输入手机号码！");
document.form1.phone.focus();
return false;
}if(!checkTel(document.form1.phone.value)){
 window.alert("手机号码格式不对！");
 document.form1.phone.value="";
document.form1.phone.focus();
return false;
}else{
window.location.href="address_daohang.htm";
} 

}


}