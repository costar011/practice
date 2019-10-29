<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--   col divide -->
<div class="row" style="margin-top: 50px;">

	<div class="col-md-8">

		<!-- Standard button -->
		<button type="button" class="btn btn-default" id="teachBtn">Teacher</button>
		<button type="button" class="btn btn-default" id="adminBtn">AdministrativeStaff</button>
		<button type="button" class="btn btn-default" id="cafeBtn">Cafeteria</button>
		<button type="button" class="btn btn-default" id="otherBtn">OtherStaff</button>

	</div>

	<div class="">
		<table class="table">
			<thead>
				<tr>
					<th>NO</th>
					<th>NAME</th>
					<th>MOBILE</th>
					<th>SEX</th>
					<th>JOB</th>

					<th>MGR</th>
					<th>ADDRESS</th>
					<th>EMAIL</th>
					<th>SAL</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${cafeteriaList }" var="cafeteria">
					<tr>
						<td>${cafeteria.uid }</td>
						<td>${cafeteria.name }</td>
						<td>${cafeteria.mobile }</td>
						<td>${cafeteria.sex }</td>
						<td>${cafeteria.job }</td>

						<td>${cafeteria.mgr }</td>
						<td>${cafeteria.address }</td>
						<td>${cafeteria.email }</td>
						<td>${cafeteria.sal }</td>
					<tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</div>


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


