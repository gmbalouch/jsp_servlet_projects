<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, com.DB.DBConnect" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e-Book Project</title>

<%@include file="allComponents/allCss.jsp" %>

<style type="text/css">

.back-img{
background:url("img/bg.png");	
height: 50vh;
width:100%;
background-size: cover;
background-repeat:no-repeat;

}

h2 {
    color: #FFFFFF;  /* Change this to one of the above colors */
    font-weight: bold;
    text-shadow: 2px 2px 5px rgba(0,0,0,0.5); /* Adds a soft shadow for better visibility */
}

.crd-ho {
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth transition */
    border-radius: 10px;
}

.crd-ho:hover {
    transform: scale(1.05); /* Slightly enlarges the card */
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2); /* Adds a shadow for depth */
}
</style>

</head>
<body>
	
	<%@include file="allComponents/navbar.jsp" %>

<!-- Header image -->		
	<div class="container-fluid back-img">
		<h2 class="text-center ">EBOOK MANAGEMENT SYSTEM</h2>
	</div>	
	
	
	<%
        try {
            Connection conn = DBConnect.getConn();
            if (conn != null) {
                out.print("<p style='color:green;'>Connection Successful!</p>");
            } else {
                out.print("<p style='color:red;'>Connection Failed!</p>");
            }
        } catch (Exception e) {
            out.print("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
            e.printStackTrace();
        }
    %>
<!-- RECENT BOOK -->	
	<div class="container">
		<h3 class="text-center ">RECENT BOOKS</h3>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/python.jpg" width="200px" height="270px" class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : Recent</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i>Add cart </a>
							<a href="" class="btn btn-success btn-sm">View Details </a>
							<a href="" class="btn btn-danger btn-sm">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/python.jpg" width="200px" height="270px" class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : Recent</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i>Add cart </a>
							<a href="" class="btn btn-success btn-sm">View Details </a>
							<a href="" class="btn btn-danger btn-sm">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/python.jpg" width="200px"; height="270px"; class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : Recent</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i>Add cart </a>
							<a href="" class="btn btn-success btn-sm">View Details </a>
							<a href="" class="btn btn-danger btn-sm">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/python.jpg" width="200px"; height="270px"; class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : Recent</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i>Add cart </a>
							<a href="" class="btn btn-success btn-sm">View Details </a>
							<a href="" class="btn btn-danger btn-sm">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			<div	class="text-center mt-2">
				<a href="" class="btn btn-primary btn-sm text-write  w-25">View All</a>
			</div>
		</div>
		
		</div>
<!--ENDED RECENT BOOK -->
<hr>
<!-- NEW BOOK -->	
	<div class="container">
		<h3 class="text-center ">NEW BOOKS</h3>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/computer.jpg" width="200px"; height="270px"; class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : NEW</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i>Add cart </a>
							<a href="" class="btn btn-success btn-sm">View Details </a>
							<a href="" class="btn btn-danger btn-sm">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/computer.jpg" width="200px"; height="270px"; class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : NEW</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i>Add cart </a>
							<a href="" class="btn btn-success btn-sm">View Details </a>
							<a href="" class="btn btn-danger btn-sm">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/computer.jpg" width="200px"; height="270px"; class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : NEW</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i>Add cart </a>
							<a href="" class="btn btn-success btn-sm">View Details </a>
							<a href="" class="btn btn-danger btn-sm">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/computer.jpg" width="200px"; height="270px"; class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : NEW</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i>Add cart </a>
							<a href="" class="btn btn-success btn-sm">View Details </a>
							<a href="" class="btn btn-danger btn-sm">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			
			<div	class="text-center mt-2">
				<a href="" class="btn btn-primary btn-sm text-write w-25">View All</a>
			</div>
	
		</div>
		</div>
<!--ENDED New BOOK -->
<hr>
<!-- OLD BOOK -->	
	<div class="container">
		<h3 class="text-center ">OLD BOOKS</h3>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/software.jpg" width="200px"; height="270px"; class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : NEW</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-success">View Details </a>
							<a href="" class="btn btn-danger">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/software.jpg" width="200px"; height="270px"; class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : NEW</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-success">View Details </a>
							<a href="" class="btn btn-danger">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/software.jpg" width="200px"; height="270px"; class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : NEW</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-success">View Details </a>
							<a href="" class="btn btn-danger">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<image alt="" src="books/software.jpg" width="200px"; height="270px"; class="img-thumblin">
						<p>Python programming for beginners</p>
						<p>Publishers</p>
						<p>Category : NEW</p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="" class="btn btn-success">View Details </a>
							<a href="" class="btn btn-danger ">RS: 2000 </a>
						</div>
					</div>
			 	</div>
		
			</div>
	
			<div	class="text-center mt-2">
				<a href="" class="btn btn-primary btn-sm text-write w-25">View All</a>
			</div>
			
		</div>
		
<!--ENDED OLD BOOK -->
</div>
<hr>

	<%@ include file="allComponents/footer.jsp" %>

	
</body>
</html>