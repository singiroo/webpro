<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	h1{
		color : red;
	
	}
	span{
		color : blue;
		font-size : 2.0em;
	}

</style>




</head>
<body>
	<h1>JSP : Java Server Page</h1>
	<h2>서버내에서 실행되는 스크립트 파일</h2>
	<p> html과 java 코드를 혼용하여 사용할 수 있다. </p>
	<p>java코드를 쓸때는 &lt;%   %&gt; 사이에 기술한다.</p>
	<p>java 변수값을 출력할 때는 &lt;%= %&gt; 사이에 기술한다.</p>
	<p> 클라이언트에서 입력한 데이터를 받는 곳</p>
	<p>String 변수명 = request.getParameter("name") </p>
	
	<%
	//java 문장을 기술하는 곳, 클라이언트에서 입력한 데이터를 받는 곳.
	//request는 jsp의 내장된 객체
	request.setCharacterEncoding("UTF-8"); // post방식으로 전송시 한글 인코딩
	
	String userId = request.getParameter("id");			//id
	String userName = request.getParameter("name");		//name
	String userPass = request.getParameter("pass");		//pass
	String userBr = request.getParameter("birth");		//birth
	%>
	
	<span><%= userId %>님 환영합니다.</span><br>
	<span><%= userName %>님 즐거운 하루 보내세요..</span> 
	당신의 생일은 <%= userBr %>입니다.
</body>
</html>