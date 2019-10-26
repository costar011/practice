<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

!-- col divide -->
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
				<c:forEach items="${adminList }" var="admin">
					<tr>
						<td>${admin.uid }</td>
						<td>${admin.name }</td>
						<td>${admin.mobile }</td>
						<td>${admin.sex }</td>
						<td>${admin.job }</td>

						<td>${admin.mgr }</td>
						<td>${admin.address }</td>
						<td>${admin.email }</td>
						<td>${admin.sal }</td>

					</tr>

				</c:forEach>

			</tbody>

		</table>
	</div>
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




