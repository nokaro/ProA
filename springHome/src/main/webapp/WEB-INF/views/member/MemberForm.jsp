<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<script type="text/javascript">
	function goBack(){
    	window.history.back();
 }
</script>

<body>
	
	<jsp:include page="/WEB-INF/views/Header.jsp" />
	
	<h1>회원등록</h1>
	
	<form action="./addCtr.do" method="post">
		이름:   <input type="text" name="name" required><br/>
		이메일:  <input type="text" name="email" required><br/>
		암호:	   <input type="password" name="password" required><br/>
			   <input type="submit" value="회원추가">
			   <input type="reset" value="취소">
			   <input type="button" value="뒤로가기" onclick="goBack();">
			   
	</form>

	<jsp:include page="/WEB-INF/views/Tail.jsp" />
	
</body>
</html>