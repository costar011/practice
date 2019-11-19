<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--   col divide -->
<div class="row" style="margin-top: 50px;">

	<div class="col-md-2"></div>
	<div class="col-md-8">

		<!-- Standard button -->
		<button type="button" class="btn btn-default" id="teachBtn">Teacher</button>
		<button type="button" class="btn btn-default" id="adminBtn">AdministrativeStaff</button>
		<button type="button" class="btn btn-default" id="cafeBtn">Cafeteria</button>
		<button type="button" class="btn btn-default" id="otherBtn">OtherStaff</button>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th width="200px">NO</th>
					<th width="200px">NAME</th>
					<th width="200px">MOBILE</th>
					<th width="200px">SEX</th>
					<th width="200px">JOB</th>

					<th width="200px">MGR</th>
					<th width="200px">ADDRESS</th>
					<th width="200px">EMAIL</th>
					<th width="200px">SAL</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${teacherList }" var="teacher">
					<tr>
						<td>${teacher.uid }</td>
						<td>${teacher.name }</td>
						<td>${teacher.mobile }</td>
						<td>${teacher.sex }</td>
						<td>${teacher.job }</td>

						<td>${teacher.mgr }</td>
						<td>${teacher.address }</td>
						<td>${teacher.email }</td>
						<td>${teacher.sal }</td>
					<tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<div class="col-md-2"> </div>

	
</div>
<!-- row END -->
<script>
	const cafe = document.getElementById("cafeBtn");
	const admin = document.getElementById("adminBtn");
	const teacher = document.getElementById("teachBtn");
	const other = document.getElementById("otherBtn");

	function moveOther() {
		location.href = "/other_staff/otherstaffPage";
	}

	function moveTeacher() {
		location.href = "/teacher/teacherPage";
	}

	function moveAdmin() {
		location.href = "/administration_staff/administrationPage";
	}

	function moveCafe() {
		location.href = "/cafeteria/cafeteriaPage";
	}

	cafe.addEventListener("click", moveCafe);
	admin.addEventListener("click", moveAdmin);
	teacher.addEventListener("click", moveTeacher);
	other.addEventListener("click", moveOther);
</script>