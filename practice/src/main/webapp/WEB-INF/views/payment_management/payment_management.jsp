<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--   col divide -->
<div class="row"  style="margin-top: 50px;">
		<div class="col-md-10">


			<!-- Standard button -->
			<button type="button" class="btn btn-default" id="schoolBtn">SCHOOL</button>
			<button type="button" class="btn btn-default" id="studentBtn">STUDENT</button>
			<button type="button" class="btn btn-default" id="teacherBtn">TEACHER</button>

			<table class="table table-hover">


				<thead>
					<tr>
						<th width="200px"></th>
						<th width="200px">Number</th>
						<th width="200px"></th>
						<th width="200px">Title</th>
						<th width="200px"></th>
						<th width="200px">Writer</th>
						<th width="200px"></th>
						<th width="200px">Amount Used</th>
						<th width="200px"></th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td><input type="checkbox" /></td>
						<td width="200px">1</td>
						<td width="200px"></td>
						<td width="200px">수련회</td>
						<td width="200px"></td>
						<td width="200px">교장</td>
						<td width="200px"></td>
						<td width="200px">100만원</td>
						<td width="200px"></td>

					</tr>

					<tr>
						<td><input type="checkbox" /></td>
						<td width="200px">2</td>
						<td width="200px"></td>
						<td width="200px">수학여행</td>
						<td width="200px"></td>
						<td width="200px">교장</td>
						<td width="200px"></td>
						<td width="200px">120만원</td>
						<td width="200px"></td>
					</tr>

					<tr>
						<td><input type="checkbox" /></td>
						<td width="200px">3</td>
						<td width="200px"></td>
						<td width="200px">대학교 강의</td>
						<td width="200px"></td>
						<td width="200px">교장</td>
						<td width="200px"></td>
						<td width="200px">105만원</td>
						<td width="200px"></td>
					</tr>
			</table>

			<div class="col-md-2"></div>
			<button type="button" class="btn btn-info">결재</button>
			<button type="button" class="btn btn-danger">거부</button>

		</div>



	</div>
	<!-- row END -->