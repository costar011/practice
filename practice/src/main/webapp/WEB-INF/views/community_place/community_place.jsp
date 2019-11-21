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
					<th width="200px">NO</th>
					<th width="200px">TITLE</th>
					<th width="200px">AUTHOR</th>
					<th width="200px">WRITTIN</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach items="${commList }" var="comm">

					<tr>
						<td>${comm.uid }</td>
						<td>${comm.title }</td>
						<td>${comm.name }</td>
						<td>${comm.written }</td>

						<td><button type="button" class="del-btn"
								onclick="moveDe(${comm.uid })">ªË¡¶</button></td>
					</tr>

				</c:forEach>

			</tbody>

		</table>

	</div>

	<div class="col-md-2"></div>

</div>
<!-- row END -->


<script>

	const delete1 = document.getElementById("js-deleteBtn");
	const insert1 = document.getElementById("js-insertBtn");

	function moveDe(uid) {
		
		location.href = "/community/deleteCommuntiy?uid=" + uid;
	};

	
	
	

</script>














