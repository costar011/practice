<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	.LoginArea {
		display: flex;
		margin-left: 70%;
    list-style-type: none;
    font-size : 14px;
    justify-self: 10%;
	}
	
	.LoginArea__list {
		margin-left : 20px;
	}
</style>

    <div class="container">

      <div class="masthead">
        <h3 class="text-muted">School Administration System</h3> 
        <div>
        	<ul class="LoginArea">
        		<li class="LoginArea__list"><a href="/sginin/sginPage">Login</a></li>
        		<li class="LoginArea__list"><a href="https://www.google.com">Sign Up</a></li>
        	</ul>
        
	        <!-- <h4 style="margin-left: 85%;"><a href="#">Login</a></h4>
	        <h4 style="margin-left: 90%;"><a href="#">Sign Up</a></h4> -->
        </div>
        <nav>
          <ul class="nav nav-justified">
            <li><a href="${pageContext.request.contextPath }/main/mainPage">Home Page</a></li>
            <li><a href="${pageContext.request.contextPath }/student/sudentPage">Student Information</a></li>
            <li><a href="${pageContext.request.contextPath }/">Teacher Information</a></li>
            <li><a href="${pageContext.request.contextPath }/payment/paymentPage">Payment Management</a></li>
            <li><a href="${pageContext.request.contextPath }/events/schoolPage">School Events</a></li>
            <li><a href="${pageContext.request.contextPath }/community/communityPage">Community Place</a></li>
            <li><a href="${pageContext.request.contextPath }/">Student Activities</a></li>
            <li><a href="${pageContext.request.contextPath }/school/schoolPage">School Document</a></li>
            <li><a href="${pageContext.request.contextPath }/">Work Schedule</a></li>
            
            
          </ul>
        </nav>
      </div>

     