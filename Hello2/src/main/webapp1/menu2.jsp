<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201707079 임준혁</title>
<link rel="stylesheet" href="./css/style.css">
<script>
var tid;
var cnt = parseInt(6);//초기값(초단위)
function counter_init() {
	tid = setInterval("counter_run()", 1000);
}

function counter_reset() {
	clearInterval(tid);
	cnt = parseInt(300);
	counter_init();
}

function counter_run() {
	document.all.counter.innerText = time_format(cnt);
	cnt--;
	if(cnt < 0) {
		clearInterval(tid);
		self.location = "logout.jsp";
	}
}
function time_format(s) {
	var nHour=0;
	var nMin=0;
	var nSec=0;
	if(s>0) {
		nMin = parseInt(s/60);
		nSec = s%60;

		if(nMin>60) {
			nHour = parseInt(nMin/60);
			nMin = nMin%60;
		}
	} 
	if(nSec<10) nSec = "0"+nSec;
	if(nMin<10) nMin = "0"+nMin;

	return ""+nHour+":"+nMin+":"+nSec;
}
</script>

</head>
<body align=right>


<a href="./welcome2.jsp"><button type="button" class="top" >Home</button></a>
<a href='updateForm.jsp'><button type="button" class="top">회원정보수정</button></a> 
<a href="./main.jsp"><button type="button" class="top" >게시판</button></a>
<a href="./logout.jsp"><button type="button" class="top" >로그아웃</button></a>
<span id="counter"> </span> 후 자동로그아웃 <input type="button" value="연장" onclick="counter_reset()">
<br>
</form>

</body>
</html>
<script>
counter_init();
</script>