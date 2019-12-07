<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class = row>
    
    
    <div class = "col-md-2"></div>
    
    <div class = "col-md-8">
    
    <form action = "${pageContext.request.contextPath }/events/eventInsertAction">
    
    	<br><br>
    	<input type = "text" class = "form-control" id = "title" name = "title" placeholder = "TITLE">
    	<br><br>
    	<input type = "text" class = "form-control" id = "writtin" name = "writtin" placeholder = "WRITTIN">
    	<br><br> 
	    <button type="submit" class="btn btn-info" id="js-insertBtn">등록</button>

    </form>

    </div>
    
    <div class = "col-md-2"></div>
    
    </div>
    