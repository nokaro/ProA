<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세정보</title>
<script type="text/javascript">
	function pageMoveListFnc() {
		location.href = './list.do';
	}
	
	function pageMoveUpdateFnc(){
		location.href = './update.do?no=${memberVo.no}';
	}
</script>
</head>

<body>
	
	<jsp:include page="/WEB-INF/views/Header.jsp" />
	
	<h1>회원정보</h1>
	
	<table border="1" align="center">
		<tr align="center">
			<td width=20%><b>번호</b></td>
			<td width=20%><b>이름</b></td>
			<td width=20%><b>이메일</b></td>
			<td width=20%><b>암호</b></td>
			<td width=20%><b>가입일</b></td>
		</tr>
		<tr align="center">
			<td>${memberVo.no}</td>
			<td>${memberVo.name}</td>
			<td>${memberVo.email}</td>
			<td>${memberVo.password}</td>
			<td><fmt:formatDate value="${requestScope.memberVo.createDate}"
						pattern="YYYY-MM-dd hh:mm" /></td>
		</tr>	
	</table>
			   <input type="button" value="수정"
			   		onclick="pageMoveUpdateFnc()">
			   <input type="button" value="뒤로가기" 
			   		onclick="pageMoveListFnc();">
	
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
	
</body>
</html>