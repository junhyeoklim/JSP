<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dao.*" %>
<%
    String uid = (String) session.getAttribute("id");
    if (uid == null) {
        response.sendRedirect("loginForm.jsp");
        return;
    }
    
    session.setAttribute("id", uid);
    %>
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
   <body>
<span id="counter"> </span> 후 자동로그아웃 <input type="button" value="연장" onclick="counter_reset()">
</body>
</html>

<script>
counter_init();
</script>
   	<%
    ArrayList<FeedObj> feeds = (new FeedDAO()).getList();
    
    String str = "";       
    str += "<a href='feedAddForm.jsp'><button>글쓰기</button></a> ";   
    str += "<a href='withdrawForm.jsp'><button>회원탈퇴</button></a> ";
    str += "<a href='logout.jsp'><button>로그아웃</button></a>";        
	str += "<a href='welcome2.jsp'><button>메인페이지</button></a><br>";   
    str += "<table border=1>";
    for (FeedObj feed : feeds) {
        String img = feed.getImages(), imgstr = "";
        if (img != null) {
            imgstr = "<img src='images/" + img + "' width=100>";
        }
        str += "<tr>";
        str += "<td>" + feed.getId() + "</td>";
        str += "<td>" + feed.getContent() + "</td>";
        str += "<td>" + feed.getTs() + "</td>";
        str += "<td>" + imgstr + "</td>";
        str += "</tr>";
    }
    str += "</table>";
    out.print(str);    
%>
