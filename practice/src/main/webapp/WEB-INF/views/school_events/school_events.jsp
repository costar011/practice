<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--   col divide -->
<div class="row" style="margin-top: 50px;">

	<div class="col-md-2"></div>
	<div class="col-md-8">

		<table class="table table-hover">

			<thead>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>WRITTIN</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="" var="event">
					<tr>
					
					
					
					
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
		<button type="button" class="btn btn-danger" id="js-deleteBtn">삭제</button>

	</div>
</div>
<!-- row END -->

<script type="text/javascript">
	const but = document.getElementById("js-insertBtn");
	const butt = document.getElementById("js-deleteBtn");

	function moveBut() {
		location.href = "/events/schoolPage";

	}

	function moveButt() {
		location.href = "/events/schoolPage";

	}

	but.addEventListener("click", moveBut);
	butt.addEventListener("click", moveButt);

	console.log(but);
	console.log(butt);

	if (confirm("등록하시겠습니까?")) {
		// 확인 버튼 클릭 시 동작
		alert("등록 완료.");
	} else
		// 취소 버튼 클릭시
		alert("등록 취소");
</script>




