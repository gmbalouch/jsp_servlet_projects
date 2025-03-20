<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBOOK Login</title>

<%@include file="allComponents/allCss.jsp" %>
</head>

<body style="background-color:LightGray">
<%@include file="allComponents/navbar.jsp" %>

	<div class="container mt-3 mb-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					
							<h3 class="text-center">Login here</h3>
							<form action="Login" method="post">
  								<c:if test="${not empty failedmsg}">
    								<p class="text-center text-danger">${failedmsg}</p>	
    								<c:remove var="failedmsg" scope="session"/>
								</c:if>
								
  								<div class="mb-3">
    								<label for="exampleInputEmail1" class="form-label">Email address</label>
    								<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email address" required="required" name="email">
    								
  								</div>
  								<div class="mb-3">
    								<label for="exampleInputPassword1" class="form-label">Password</label>
    								<input type="password" class="form-control" id="exampleInputPassword1"  required="required" placeholder="Password" name="password">
  								</div>
  								
  								
  								<div class="text-center">
  									<button type="submit" class="btn btn-primary ">Login</button><br><br>
  									<a href="Register.jsp">Sign Up</a>
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