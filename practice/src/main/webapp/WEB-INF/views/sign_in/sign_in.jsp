<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>

<div class="row">
	<div class="col-md-2"></div>
	
	<div class="col-md-8">
	<br /> <br /> <br />
		<form action="${pageContext.request.contextPath }/signin/loginUser" method="post">
			<!-- ID AREA -->
			<div>
				<label class="col-sm-2 control-label" >ID</label>
				<input class="form-control" type="text" id="inputId" name="inputId" />
			</div>
			
			<br />
			
			<!-- PASSWORD AREA -->
			<div>
				<label class="col-sm-2 control-label" >PASSWORD</label>
				<input class="form-control" type="password" id="inputPassword" name="inputPassword" />
			</div>
			
			<br />
			
			<!-- BTN AREA -->
			<div>
				<input class="btn btn-primary" type="submit" value="LOGIN" />
			</div>
		</form>
	</div> <!-- col-md-8 END -->
	
	
	<div class="col-md-2"></div>

</div>