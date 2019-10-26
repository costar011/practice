<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

!--   col divide -->
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
				
				<tr>
					<td>${Administration.uid }</td>
					<td>${Administration.name }</td>
					<td>${Administration.mobile }</td>
					<td>${Administration.sex }</td>
					<td>${Administration.job }</td>
					
					<td>${Administration.mgr }</td>
					<td>${Administration.address }</td>
					<td>${Administration.email }</td>
					<td>${Administration.sal }</td>
					
				</tr>
				
			</tbody>
			
		</table>
	</div>
</div>
<!-- row END -->






