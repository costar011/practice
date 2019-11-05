<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

   <div class = row>
   
   	<div class = cal-md-2>
   	</div>
   
    <div class = cal-md-8>
   	
  	<table class="table">
  	
  	<br><br>
  	
  	<thead>
				<th>NO</th>
				<th>TITLE</th>			
				<th>AUTHOR</th>	
				<th>WRITTIN</th>
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
   
    <div class = cal-md-2>
   	</div>
   
   </div>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   