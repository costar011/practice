<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
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
					<th></th>
				</tr>
			</thead>


			<tbody>

				<c:forEach items="${DocumentList }" var="school_document">

					<tr>
						<td>${school_document.uid }</td>
						<td>${school_document.title }</td>
						<td>${school_document.writtin }</td>
						<td><button type="button" class="del-btn"
								onclick="moveDe(${school_document.uid})">삭제</button></td>
						<td><button type="button"
								onclick="sendData('${school_document.title }', '${school_document.writtin }')"
								class="btn btn-primary" data-toggle="modal"
								data-target="#youModal">수정</button></td>
					</tr>

				</c:forEach>

			</tbody>

		</table>

	</div>
	<div class="col-md-2"></div>

	<button type="button" class="btn btn-info" data-toggle="modal"
		data-target="#myModal">등록</button>

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
					<input type="text" class="modal-input" id="modal-title"
						placeholder="title" /> <br /> <input type="text"
						class="modal-input" id="modal-author" placeholder="author" /> <br />
					<button type="button" class="modal-btn" id="js-modal-insert">등록하기</button>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<!-- Modal -->
	<div id="youModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Would you like to register?</h4>
				</div>
				<div class="modal-body">
					<input class="form-control" id="modal_title" type="text"
						placeholder="TITLE" /> <br> <input class="form-control"
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
<!-- row END -->

<script>


	//global Variable

	var updateUid = '';
	var globalTitle = '';
	var globalWrittin = '';

	const moveInsert = document.getElementById("js-modal-insert");
	const moveDelete = document.getElementById("js-del-btn");

	function moveIn() {
		
		const title = document.getElementById("modal-title").value;
		const author = document.getElementById("modal-author").value;
		
		console.log(title);
		console.log(author);
		
		location.href = "/school/documentInsert?title=" + title + "&author=" + author;
		
	}

	
	function clickDeleteBtn(uid) {
		console.log(uid)
		location.href = "/school/deleteschool_document?uid="+uid;
	}
	
	function moveDe(uid) {
		
		console.log(uid);
		console.log(uid); 
		console.log(uid);
		console.log(uid);
		console.log(uid);
		
		location.href = "/school/documentDelete?uid="+uid;
		
	}
	
	moveInsert.addEventListener("click",moveIn);
	
	
</script>
