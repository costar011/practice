<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.LoginArea {
	display: flex;
	margin-left: 80%;
	list-style-type: none;
	font-size: 14px;
	justify-self: 10%;
}

.LoginArea__list {
	margin-left: 40px;
}
</style>

<div class="container">

	<div class="masthead">
		<h3 class="text-muted">School Administration System</h3>
		<div>
			
			<ul class="LoginArea">
				<c:if test="${!empty login_id}">
					<li class="LoginArea__list"><a
						href="${pageContext.request.contextPath }/signin/signinPage">MyPAGE</a></li>
					<li class="LoginArea__list"><a
						href="${pageContext.request.contextPath }/logout/logoutPage">LOGOUT</a></li>
					<li class="LoginArea__list"><a
						href="${login.name }/main/mainPage"> 환영합니다.</a></li>
				</c:if>

				<c:if test="${empty login_id }">
					<li class="LoginArea__list"><a
						href="${pageContext.request.contextPath }/signin/signinPage">Login</a></li>
					<li class="LoginArea__list"><a
						href="${pageContext.request.contextPath }/signup/signupPage">Sign
							Up</a></li>
				</c:if>
			</ul>

			<!-- <h4 style="margin-left: 85%;"><a href="#">Login</a></h4>
	        <h4 style="margRin-left: 90%;"><a href="#">Sign Up</a></h4> -->
		</div>
		<nav>
			<ul class="nav nav-justified">
				<li><a href="${pageContext.request.contextPath }/main/mainPage">Home
						Page</a></li>
				<li><a
					href="${pageContext.request.contextPath }/studentt/studentPage">Student
						Information</a></li>
				<li><a
					href="${pageContext.request.contextPath }/teacher/teacherPage">Teacher
						Information</a></li>
				<li><a
					href="${pageContext.request.contextPath }/payment/paymentPage">Payment
						Management</a></li>
				<li><a
					href="${pageContext.request.contextPath }/events/schoolPage">School
						Events</a></li>
				<li><a
					href="${pageContext.request.contextPath }/community/communityPage">Community
						Place</a></li>
				<li><a
					href="${pageContext.request.contextPath }/student/studentPage">Student
						Activities</a></li>
				<li><a
					href="${pageContext.request.contextPath }/school/schoolPage">School
						Document</a></li>
			</ul>
		</nav>
	</div>
</div>


