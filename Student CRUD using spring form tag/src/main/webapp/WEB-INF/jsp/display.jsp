<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Data Table</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	
	<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>" ></script>
	
</head>
<body>

	<!--<jsp:include page="${request.contextPath}/open"></jsp:include>-->
	<div class="container">
		<h1 class="my-4">Student Data Table</h1>
		<!-- <a href="open" class="btn btn-primary mb-3">ADD STUDENT</a> -->
		<button class="btn btn-primary mb-3" onclick="openForm()">Open
			Form</button>
		
<div class="form-popup" id="myForm">
  <form action="save" class="form-container">
    

    <label for="email"><b>Id</b></label>
    <input type="text" placeholder="Enter Id 	" name="id" required>

    <label for="psw"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" required>
    
    <label for="psw"><b>Marks</b></label>
    <input type="text" placeholder="Enter Marks" name="marks" required>
    

    <button type="submit" class="btn">Submit</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>
		

		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>Marks</th>
					<th>DELETE</th>
					<th>UPDATE</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="stud" items="${list}">
					<tr>
						<td>${stud.id}</td>
						<td>${stud.name}</td>
						<td>${stud.marks}</td>
						<td><a href="delete?id=${stud.id}" class="btn btn-danger">DELETE</a></td>
						<td><a href="updateform?id=${stud.id}"
							class="btn btn-warning">UPDATE</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
