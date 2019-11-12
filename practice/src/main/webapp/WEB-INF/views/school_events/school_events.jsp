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
					<th width="10%">
					<th width="30%"></th>
					<th width="30%"></th>
					<th width="30%"></th>
					<th width="30%"></th>
					<th width="10%">
				</tr>
			</thead>



		</table>

	</div>
	<div class="col-md-2"></div>
</div>

<div class="row">
	<div class="col-md-10"></div>

	<div class="col-md-2">
	
		<button type="button" class="btn btn-info" id="js-insertBtn">등록</button>
		<button type="button" class="btn btn-danger">삭제</button>

	</div>
</div>
<!-- row END -->

<script type="text/javascript">

	const  but = document.getElementById("js-insertBtn");
	
	function moveBut() {
		location.href = "/school_events/schoolPage";
		
	}
	
	console.log(but);

</script>




   