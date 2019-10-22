<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<div class="row">


	<div class="col-md-2"></div>


	<div class="col-md-8">

		<form action="${pageContext.request.contextPath }/signup/joinuser">
		
			<br> <br> 
			<input type="text" class="form-control" id="name"name="name" placeholder="NAME">
		    <br> <br> 
		    <input type="text" class="form-control" id="mobile" name="mobile" placeholder="MOBIL">
		    <br> <br> 
		    <input type="text" class="form-control" id="hp" name="hp" placeholder="HP"> <br>
			<br> 
			<input type="text" class="form-control" id="zip" name="zip" placeholder="ZIP_CODE" readonly> 
			<br> <br>
			<input type="text" class="form-control" id="add" name="add" placeholder="ADDRESS" readonly> 
			<br> <br> 
			<input type="text" class="form-control" id="add2" name="add2" placeholder="ADDRESS2"> 
		    <br> <br> 
		    <input type="text" class="form-control" id="sex" name="sex" placeholder="SEX"> 
		    <br> <br> 
		    <input type="text" class="form-control" id="id" name="id" placeholder="ID"> 
		    <br> <br> 
		    <input type="password" class="form-control" id="pass" name="pass" placeholder="PASSWORD"> 
		    <br> <br> 
		    <input type="password" class="form-control" id="pass2" name="pass2" placeholder="PASSWORD CHECK"> 
		    <br> <br> 
		    <input type="email" class="form-control" id="email" name="email" placeholder="EMAIL"> 
		    <br> <br> 
		    <input type="submit" value="JOIN" class="btn btn-success" />


		</form>

	</div>

	<div class="col-md-2">

		<br><br><br><br><br><br><br><br><br><br><br><br><br>
		<button type="button" class="btn btn-success" id="search">Search</button>
		
	</div>


</div>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

	const searchBtn = document.getElementById("search");
	const zip_input = document.getElementById("zip");
	const add_input = document.getElementById("add");
	const add2_input = document.getElementById("add2");
	
	function openTap(){
		
		new daum.Postcode({
			
	        oncomplete: function(data) {
	        	
	        	zip_input.value = data.zonecode;
	   			add_input.value = data.address;
	   			add2_input.focus();
	        }
        }).open();
	}
	
	searchBtn.addEventListener("click", openTap);
	
</script>