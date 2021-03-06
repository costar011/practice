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

		<table class="table">
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
						
						<td><button type="button" class="del-btn" onclick="moveDe(${cafeteria.uid })">����</button></td>
					<tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="col-md-2"></div>
</div>
<!-- row END -->


<script>
	const cafe = document.getElementById("cafeBtn");
	const admin = document.getElementById("adminBtn");
	const teacher = document.getElementById("teachBtn");
	const other = document.getElementById("otherBtn");
	
	const delete1 = document.getElementById("js-deleteBtn");

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
	
	
	function moveDe(uid) {
		location.href = "/cafeteria/deleteCafe?uid=" + uid;
	}
	
	

	cafe.addEventListener("click", moveCafe);
	admin.addEventListener("click", moveAdmin);
	teacher.addEventListener("click", moveTeacher);
	other.addEventListener("click", moveOther);
</script>


