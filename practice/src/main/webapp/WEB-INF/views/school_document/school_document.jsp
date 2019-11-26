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
					<th width="200px">WRITTIN</th>
				</tr>
			</thead>


			<tbody>
			
			<c:forEach items="${DocumentList }" var="school_document">
			
				<tr>
					<td>${school_document.uid }</td>
					<td>${school_document.title }</td>
					<td>${school_document.writtin }</td>
	
				</tr>

			</c:forEach>

			</tbody>

		</table>

	</div>
	<div class="col-md-2"></div>
</div>


<!-- row END -->
