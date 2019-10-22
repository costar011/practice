<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <div class = "row" style="margin-top:50px;">
    
    	<div class = "col-md-8">
    	
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
				<c:forEach items="${cafeteriaList }" var="cafeteria">
				<tr>
					<td>${cafeteria.uid }</td>
					<td>${cafeteria.name }</td>
					<td>${cafeteria.mobile }</td>
					<td>${cafeteria.sex }</td>
					<td>${cafeteria.job }</td>
					
					<td>${cafeteria.mgr }</td>
					<td>${cafeteria.address }</td>
					<td>${cafeteria.email }</td>
					<td>${cafeteria.sal }</td>
				<tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
   
    </div>