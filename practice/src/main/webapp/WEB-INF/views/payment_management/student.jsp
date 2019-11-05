<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--   col divide -->
<div class="row" style="margin-top: 50px;">
	<div class="col-md-10">


		<!-- Standard button -->
		<button type="button" class="btn btn-default" id="schoolBtn">SCHOOL</button>
		<button type="button" class="btn btn-default" id="studentBtn">STUDENT</button>
		<button type="button" class="btn btn-default" id="teacherBtn">TEACHER</button>

		<table class="table table-hover">


			<thead>
				<tr>
					<th width="200px"></th>
					<th width="200px">Number</th>
					<th width="200px"></th>
					<th width="200px">Title</th>
					<th width="200px"></th>
					<th width="200px">Writer</th>
					<th width="200px"></th>
					<th width="200px">Amount Used</th>
					<th width="200px"></th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td><input type="checkbox" /></td>
					<td width="200px">1</td>
					<td width="200px"></td>
					<td width="200px">장학금</td>
					<td width="200px"></td>
					<td width="200px">교장</td>
					<td width="200px"></td>
					<td width="200px">500만원</td>
					<td width="200px"></td>

				</tr>

				<tr>
					<td><input type="checkbox" /></td>
					<td width="200px">2</td>
					<td width="200px"></td>
					<td width="200px">수학 감상문 대회</td>
					<td width="200px"></td>
					<td width="200px">교장</td>
					<td width="200px"></td>
					<td width="200px">9만원</td>
					<td width="200px"></td>
				</tr>

				<tr>
					<td><input type="checkbox" /></td>
					<td width="200px">3</td>
					<td width="200px"></td>
					<td width="200px">학생 검진 비용</td>
					<td width="200px"></td>
					<td width="200px">교장</td>
					<td width="200px"></td>
					<td width="200px">300만원</td>
					<td width="200px"></td>
				</tr>
			<tbody>
				<c:forEach items="${paymentList }" var="payment">
					<tr>
						<td>${payment.name }</td>
						<td>${payment.mgr }</td>
						<td>${payment.money }</td>
				</c:forEach>
			</tbody>


		</table>

		<div class="col-md-2"></div>
		<button type="button" class="btn btn-info">결재</button>
		<button type="button" class="btn btn-danger">거부</button>

	</div>



</div>
<!-- row END -->

<script>
	const school = document.getElementById("schoolBtn");
	const teacher = document.getElementById("teacherBtn");
	const student = document.getElementById("studentBtn");

	function moveSchool() {
		location.href = "/payment/paymentPage";
	}

	function moveTeacher() {
		location.href = "/payment/teacherPage";
	}

	function moveStudent() {
		location.href = "/payment/studentPage";
	}

	
	school.addEventListener("click", moveSchool);
	student.addEventListener("click", moveStudent);
	teacher.addEventListener("click", moveTeacher);
	
</script>

