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

.modal-btn {
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

	<div class="col-md-2"></div>
	<div class="col-md-8">

		<table class="table table-hover">

			<thead>
				<tr>
					<th width="200px">NO</th>
					<th width="200px">TITLE</th>
					<th width="200px">WRITTIN</th>
					<th width="200px"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${eventList }" var="event">
					<tr>
						<td>${event.uid }</td>
						<td>${event.title }</td>
						<td>${event.writtin }</td>

						<td><button type="button" class="del-btn"
								onclick="moveDe(${event.uid })">삭제</button></td>

						<td><button type="button"
								onclick="sendData('${event.uid}', '${event.title}', '${event.writtin}')"
								class="btn btn-info" data-toggle="modal"
								data-target="#myModal">수정</button></td>
					<tr>
				</c:forEach>

			</tbody>

		</table>

	</div>
	<div class="col-md-2"></div>
</div>

<div class="row">
	<div class="col-md-10"></div>

	<div class="col-md-2">

		<button type="button" class="btn btn-info" id="js-insertBtn">등록</button>

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
					  
					
						<input class="form-control" id="modal_title" type="text"
							placeholder="TITLE" /> <br> 
							
						<input class="form-control"
						id="modal_writtin" type="text" placeholder="WRITTIN" /> <br>
						<button type="button" id="js-updateBtn">저장</button>
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



<script type="text/javascript">

	//global Variable
	
	var updateUid = '';
	var globalTitle = '';
	var globalWrittin = '';
	


	const insert1 = document.getElementById("js-insertBtn");
	const delect1 = document.getElementById("js-deleteBtn");
	const update1 = document.getElementById("js-updateBtn");
	const buttt = document.getElementById("js-modal-insert");
	
	
	function clickDeleteBtn(uid){
		console.log(uid);

		location.href = "/events/deleteschoolevents?uid="+uid;
	}

	function moveDe(uid) {
		location.href = "/events/deleteschoolevents?uid=" + uid;
		
		console.log(uid);
		console.log(uid);
		cosole.log(uid);

	}
	
	function moveUp() {
		
		console.log(updateUid);
		
		const modalTitle = document.getElementById("modal_title");
		const modalWrittin= document.getElementById("modal_writtin");
		
		location.href = "/events/schooleventupdate?uid=" + updateUid + "&title=" + modalTitle.value + "&writtin=" + modalWrittin.value;
		
		updateUid = '';
		
	}
	
	function sendData(uid, title, writtin) {
		
		updateUid = uid;

		const modalTitle = document.getElementById("modal_title");
		modalTitle.value = title;
		
		const modalWrittin = document.getElementById("modal_writtin");
		modalWrittin.value = writtin;
		
	}
	
	
	function change()
	{
			
	}
	
	

	function moveButtt() {

		const modalTitle = document.getElementById("modal-title");
		const modalAuthor = document.getElementById("modal-author");
		
		const uid		=	modelUid.value;

		
	}
	
	function moveIn() {
	
		location.href = "/events/eventInsert";
	
	};

	// butt.addEventListener("click", moveButt);
	
	insert1.addEventListener("click", moveIn);
	update1.addEventListener("click", moveUp);

	/*
		if(confirm("등록하시겠습니까?")) 
		{
			// 확인 버튼 클릭 시 동작
			alert("등록 완료.");
		} 
		else
		{
		// 취소 버튼 클릭시
		alert("등록 취소");
		}
	
	 */
	 
	 
</script>