<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	


<h1>HELLO TILES!</h1>

<c:forEach items="${name }" var="n">

	<h4>${n.name }</h4>


</c:forEach>

<a href="${pageContext.request.contextPath }/test/test"> 메인으로 가기</a>



