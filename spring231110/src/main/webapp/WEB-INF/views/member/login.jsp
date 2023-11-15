<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/login.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<<<<<<< HEAD
<jsp:include page="../common/header.jsp"/>






<div class="container">
	<form action="/member/login" method="post">
		<h4>로그인하려고 누르면 보이는 페이지입니다.</h4>
		<h4>로그인JSP입니다.</h4>
		<h4 class="mb-3">Custom Login Page</h4>
		<div class="mb-3">
		  <label for="e" class="form-label">ID</label>
		  <input type="text" class="form-control" name="id" id="e">
		</div>
		<div class="mb-3">
		  <label for="p" class="form-label">PASSWORD</label>
		  <input type="password" class="form-control" name="pw" id="p">
		</div>
<%-- 		${param.errMsg} --%>
		<c:if test="${not empty param.errMsg }">
			    <script type="text/javascript">
    			    console.log("errMsg메시지가 들어온듯");
    			</script>
			<div class="text-danger mb-3">
				
				<c:choose>
					<c:when test="${param.errMsg eq 'Bad credentials'}">  <!-- BadCredentialsException 관련 231030-->
						<c:set var="errText" value="이메일 & 비밀번호가 일치하지 않습니다."/>
					</c:when>
					<c:otherwise>
						<c:set var="errText" value="관리자에게 문의해주세요. "/>
					</c:otherwise>
				</c:choose>
				${errText}
=======
	<div class="jb-container">
		<form action="/member/login" method="post">
			<div class="mb-3">
				<input type="text" class="form-control inputCss" name="id" id="e" placeholder="아이디">
>>>>>>> origin/main
			</div>
			<div class="mb-3">
				<input type="password" class="form-control inputCss" name="pw"
					id="p" placeholder="비밀번호">
			</div>
			<%-- 		${param.errMsg} --%>
			<c:if test="${not empty param.errMsg }">
				<script type="text/javascript">
					console.log("errMsg메시지가 들어온듯");
				</script>
				<div class="text-danger mb-3">

					<c:choose>
						<c:when test="${param.errMsg eq 'Bad credentials'}">
							<!-- BadCredentialsException 관련 231030-->
							<c:set var="errText" value="이메일 & 비밀번호가 일치하지 않습니다." />
						</c:when>
						<c:otherwise>
							<c:set var="errText" value="관리자에게 문의해주세요. " />
						</c:otherwise>
					</c:choose>
					${errText}
				</div>
			</c:if>
			<div class="btnContainer">
				<button class="w-100 btn btn-primary btn-lg my-5 loginBtn"
					type="submit">로그인</button>
			</div>
		</form>
		<!-- 회원가입 창으로 넘어가기 -->
		<a href="/member/register">가입된 아이디가 없으신가요?</a>
		<div class="explanation">
			<p>회원가입 페이지로 넘어가기</p>
		</div>
	</div>
</body>
</html>