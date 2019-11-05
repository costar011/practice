<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    <h2>로그 아웃 되었습니다.</h2>
    
    <%
    		session.invalidate(); // 모든 세션 정보 삭제
    		response.sendRedirect("mainPage");
    		// mainPage로 돌아감
    
    %>
    
    