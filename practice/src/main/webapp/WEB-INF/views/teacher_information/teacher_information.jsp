<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--   col divide -->
<div class="row">
	<div class="col-md-8">
		<h2>Teacher</h2>

		<!-- Standard button -->
		<button type="button" class="btn btn-default">Teacher</button>
		<button type="button" class="btn btn-default">AdministrativeStaff</button>
		<button type="button" class="btn btn-default">Cafeteria</button>
		<button type="button" class="btn btn-default">OtherStaff</button>
	</div>
	<div class="">
		<table class="table">
			<thead>
				<tr>
					<th>NO</th>
					<th>NAME</th>
					<th>MOBILE</th>
					<th>SEX</th>
					<th>JOB</th>
					
					<th>MGR</th>
					<th>ADDRESS</th>
					<th>EMAIL</th>
					<th>SAL</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${teacherList }" var="teacher">
				<tr>
					<td>${teacher.uid }</td>
					<td>${teacher.name }</td>
					<td>${teacher.mobile }</td>
					<td>${teacher.sex }</td>
					<td>${teacher.job }</td>
					
					<td>${teacher.mgr }</td>
					<td>${teacher.address }</td>
					<td>${teacher.email }</td>
					<td>${teacher.sal }</td>
				<tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<!-- row END -->

