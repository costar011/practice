<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--   col divide -->
<div class="row" style="margin-top: 50px;">
	<div class="col-md-12">

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
						</tr>

					</c:forEach>

			</tbody>

		</table>

	</div>


</div>
<!-- row END -->

















