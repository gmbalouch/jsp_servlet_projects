<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User: Home page</title>
</head>
<body>
<h1>User: Home Page</h1>
<c:if test="${not empty userobj}">
    <h1>Name:${userobj.name }</h1>
	<h1>Name: ${userobj.email }</h1>
</c:if>

</body>
</html>