<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
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
		border-radius : 20px;
		width : 400px;
		outline : none;
		margin : 20px 40px;
	}
	
	.modal-btn {
		border-radius : 20px;
		background-color: #0b0b0b;
		color : #ffffff;
		padding : 0px 30px;
		font-size: 14px;
		outline: none;
		margin-left : 50px;
	}
	
	.modal-btn:hover {
		background-color: #ffffff;
		color : #0b0b0b;
	}
</style>


<div class="row" style="margin-top: 50px;">
	
	<div class = "col-md-10">
	
	<table class="table table-hover">


			<thead>
				<tr>
					<th width="200px">NO</th>
					<th width="200px">NAME</th>
					<th width="200px">MOBILE</th>
					<th width="200px">MOBILE2</th>
					<th width="200px">ADDERSS</th>
				</tr>
			</thead>
		
			<tbody>

					<c:forEach items="${studentList }" var="student">
						<tr>
							<td>${student.uid }</td>
							<td>${student.name }</td>
							<td>${student.moblile }</td>
							<td>${student.moblile2 }</td>
							<td>${student.address }</td>
							<td><button type="button" class="del-btn" onclick="moveDe(${student.uid })">삭제</button></td>
							<td><button type="button" onclick="sendData('${student.uid }', '${student.name }', '${student.moblile }', '${student.moblile2 }', '${student.address }')" 
							class="btn btn-info" data-toggle="modal" data-target="#myModal">수정</button></td>
						</tr>

					</c:forEach>

			</tbody>
	
	</table>
	
	
	
	
	</div>
	
		<div class="col-md-2">
		<br><br>
		<button type="button" class="btn btn-info" id="js-insertBtn">등록</button>
	
		
		</div>

</div>

<div id="myModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Modal Header</h4>
			</div>
			<div class="modal-body">
				<input class="form-control" id="modal_name" type="text" placeholder="NAME"/>
				<br>
				<input class="form-control" id="modal_moblile" type="text" placeholder="MOBILE"/>
				<br>
				<input class="form-control" id="modal_moblile2" type="text" placeholder="MOBILE2"/>
				<br>
				<input class="form-control" id="modal_address" type="text" placeholder="ADDERSS"/>
				<br>
				<button type="button" id="js-updateBtn"> 저장하기 </button>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>

<!— row END —>

		
		
<script>

	const insert1 = document.getElementById("js-insertBtn");
	const delete1 = document.getElementById("js-deleteBtn");
	const update1 = document.getElementById("js-updateBtn");
	
	/* const upBtn = document.getElementById("js-upBtn"); */
	
	var updateUid = '';
	

	function moveIn() {
			
		location.href = "/studentt/insertPage";
	};
	
	function moveDe(uid) {
		location.href = "/studentt/deleteStudent?uid=" + uid;
	};

	function moveUp() {
		
		console.log(updateUid);
		
		const modalName = document.getElementById("modal_name");
		const modalMoblile = document.getElementById("modal_moblile");
		const modalMoblile2 = document.getElementById("modal_moblile2");
		const modalAddress = document.getElementById("modal_address");
		
		location.href = "/studentt/studenupdate?uid="+ updateUid + "&name=" + modalName.value + "&moblile=" + modalMoblile.value + "&moblile2=" + modalMoblile2.value + "&address=" + modalAddress.value;
		
		updateUid = '';
	}
	
	function sendData(uid, name, moblile, moblile2, address){
		
		updateUid = uid;
		
		const modalName = document.getElementById("modal_name");
		modalName.value = name;
		
		const modalMoblile = document.getElementById("modal_moblile");
		modalMoblile.value = moblile;
		
		const modalMoblile2 = document.getElementById("modal_moblile2");
		modalMoblile2.value = moblile2;
		
		const modalAddress = document.getElementById("modal_address");
		modalAddress.value = address;
		
		
	}
	
	insert1.addEventListener("click", moveIn);
	update1.addEventListener("click", moveUp);
	/* upBtn.addEventListener("click", sendData); */

</script>




