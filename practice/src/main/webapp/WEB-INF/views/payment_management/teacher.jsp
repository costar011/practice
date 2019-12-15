<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>


<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
.modal-input {
	border-radius: 20px;
	width: 400px;
	outline: none;
	margin: 20px 40px;
}

.modal_btn {
	border-radius: 20px;
	background-color: #0b0b0b;
	color: #ffffff;
	padding: 0px 30px;
	font-size: 14px;
	outline: none;
	margin-left: 50px;
}

.modal-btn:hover {
	background-color: #ffffff;
	color: #0b0b0b;
}
</style>



<!--   col divide -->
<div class="row" style="margin-top: 50px;">
	<div class="col-md-1"></div>
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
					<td width="200px">학급 모임 비용</td>
					<td width="200px"></td>
					<td width="200px">교장</td>
					<td width="200px"></td>
					<td width="200px">10만원</td>
					<td width="200px"></td>

				</tr>

				<tr>
					<td><input type="checkbox" /></td>
					<td width="200px">2</td>
					<td width="200px"></td>
					<td width="200px">품위 유지비</td>
					<td width="200px"></td>
					<td width="200px">교장</td>
					<td width="200px"></td>
					<td width="200px">15만원</td>
					<td width="200px"></td>
				</tr>

				<tr>
					<td><input type="checkbox" /></td>
					<td width="200px">3</td>
					<td width="200px"></td>
					<td width="200px">차감 유지비</td>
					<td width="200px"></td>
					<td width="200px">교장</td>
					<td width="200px"></td>
					<td width="200px">150만원</td>
					<td width="200px"></td>
				</tr>
			<tbody>
				<c:forEach items="${paymentList }" var="payment">
					<tr>
						<td>${payment.uid }</td>
						<td>${payment.name }</td>
						<td>${payment.mgr }</td>
						<td>${payment.money }</td>
				</c:forEach>
			</tbody>


		</table>


		<div class="col-md-2"></div>
		<button type="button" class="btn btn-info" data-toggle="modal"
			data-target="#myModal">승인</button>
		<button type="button" class="btn btn-danger" data-toggle="modal"
			data-target="#myModal">거부</button>

		<!-- Trigger the modal with a button -->

		<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Would you like to register?</h4>
					</div>

					<div class="modal-body">
						<input class="form-control" id="modal_NAME" type="text"
							placeholder="NAME" /> <br> <input class="form-control"
							id="modal_writtin" type="text" placeholder="MGR" /> <br> <input
							class="form-control" id="modal_writtin" type="text"
							placeholder="MONEY" /> <br>
						<button type="button" class="modal_btn" id="js-updateBtn">승인하기</button>
						<button type="button" class="modal_btn" id="js-updateBtn">거부하기</button>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>


	</div>



</div>
<!-- row END -->

<script>


	const school = document.getElementById("schoolBtn");
	const teacher = document.getElementById("teacherBtn");
	const student = document.getElementById("studentBtn");
	const modal_btn = document.getElementById("modal_btn");
	

	function moveSchool() {
		location.href = "/payment/paymentPage";
	}

	function moveTeacher() {
		location.href = "/payment/teachPage";
	}

	function moveStudent() {
		location.href = "/payment/studentPage";
	}

	
	school.addEventListener("click", moveSchool);
	student.addEventListener("click", moveStudent);
	teacher.addEventListener("click", moveTeacher);
</script>
