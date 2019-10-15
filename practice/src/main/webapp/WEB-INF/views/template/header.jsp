<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="container">

      <div class="masthead">
        <h3 class="text-muted">School Administration System</h3>
        <nav>
          <ul class="nav nav-justified">
            <li><a href="${pageContext.request.contextPath }/main/mainPage">Home Page</a></li>
            <li><a href="${pageContext.request.contextPath }/student/sudentPage">Student Information</a></li>
            <li><a href="${pageContext.request.contextPath }/main/mainPage">Teacher Information</a></li>
            <li><a href="${pageContext.request.contextPath }/payment/paymentPage">Payment Management</a></li>
            <li><a href="${pageContext.request.contextPath }/main/mainPage">School Events</a></li>
            <li><a href="${pageContext.request.contextPath }/community/communityPage">Community Place</a></li>
            <li><a href="${pageContext.request.contextPath }/">Student Activities</a></li>
            <li><a href="${pageContext.request.contextPath }/">School Document</a></li>
            <li><a href="${pageContext.request.contextPath }/">Work Schedule</a></li>
            
          </ul>
        </nav>
      </div>

     
