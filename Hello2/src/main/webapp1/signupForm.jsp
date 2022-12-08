<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script  type="text/javascript">

// 아이디 중복체크 화면open
function openIdChk(id){

	if(id == "")
		{
			alert("ID를 입력하세요!");
			return;
		}
	url = "IdCheckForm.jsp?id="+id;
    window.open(url,"confirm", "width=500, height=300,left=500,top=300");    
}

function inputIdChk()
{
	var joinForm = document.joinForm;
	var dbCheckId = document.joinForm.dbCheckId;
	document.joinForm.inDuplication.value = "idUncheck";
	dbCheckId.disabled = false;
	dbCheckId.style.opacity = 1;
	dbCheckId.style.cursor = "pointer";
	}

</script>
		

</head>
<body>
<form action="signup1.jsp" method="post">
<link rel="stylesheet" href="./css/style.css">
<table align=center>
<tr><td colspan=2 align=center  height=40><b>회원가입</b><td></tr>
<tr>
    <td align=right>아이디&nbsp;</td>
    <td><input type="text" name="id" placeholder="Email address" required onkeydown = "inputIdChk()"/>     
    	<input type="button" class="top" name="check" value="중복확인" onclick="openIdChk(this.form.id.value)">
    	<input type="hidden" name = "idDuplication" value = "idUncheck">    	
    </td>
</tr>
<tr>
    <td align=right>패스워드&nbsp;</td>
    <td><input type="password" name="ps" required></td>
</tr>
<tr> 
    <td align=right>패스워드(확인)&nbsp;</td>
    <td><input type="password" name="ps2" required></td>
</tr>
<tr>
    <td align=right>이름&nbsp;</td>
    <td><input type="text" name="name" required></td> 
</tr>
<tr>
    <td colspan=2 align=center height=50>
        <input type="submit" onclick="check_ok(this.form.check.value)" class="top" value="회원가입하기"> 
   		
    </td>
</tr>
</table>
</form>
</body>
</html>