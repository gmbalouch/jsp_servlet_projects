<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBOOK REGISTERATION</title>

<%@include file="allComponents/allCss.jsp" %>
</head>

<body style="background-color:LightGray">
<%@include file="allComponents/navbar.jsp" %>

	<div class="container mt-3 mb-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					
							<h3 class="text-center">Register here</h3>
							<form action="register" method="post">
								<c:if test="${not empty successmsg}">
    								<p class="text-center text-success">${successmsg}</p>	
    								<c:remove var="successmsg" scope="session"/>
								</c:if>
									
								<c:if test="${not empty failledmsg}">
    								<p class="text-center text-danger">${failledmsg}</p>	
									<c:remove var="failledmsg" scope="session"/>
								</c:if>	
							
								
								
  								<div class="mb-3">
    								<label for="exampleInputEmail1" class="form-label">Enter Full Name</label>
    								<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Full Name" required="required" name="fullname">
    								
  								</div>
  								<div class="mb-3">
    								<label for="exampleInputEmail1" class="form-label">Email address</label>
    								<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email address" required="required" name="email">
    								
  								</div>
  								<div class="mb-3">
    								<label for="exampleInputEmail1" class="form-label">Phone No</label>
    								<input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Phone number"  required="required" name="phoneNo">
    								
  								</div>
  								<div class="mb-3">
    								<label for="exampleInputPassword1" class="form-label">Password</label>
    								<input type="password" class="form-control" id="exampleInputPassword1"  placeholder="Password" required="required" name="password">
  								</div>
  								<div class="mb-3 form-check">
   		 							<input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
    								<label class="form-check-label" for="exampleCheck1">Agree terms & conditions</label>
  								</div>
  								
  								<div class="text-center">
  									<button type="submit" class="btn btn-primary ">Register</button>
  								</div>
  									
							</form>
					
					</div>
				
				</div>
			</div>
		
		</div>
	</div>	

<%@ include file="allComponents/footer.jsp" %>
</body>
</html>