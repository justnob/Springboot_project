<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css" integrity="sha512-ZnR2wlLbSbr8/c9AgLg3jQPAattCUImNsae6NHYnS9KrIwRdcY9DxFotXhNAKIKbAXlRnujIqUWoXXwqyFOeIQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
<title>Todo's Page</title>

<style>
	
	body
	{
	background: #4f4f4f;
	}
	.container .header
	{
		margin-top: 5%;
		margin-left: 40%;
		margin-right: auto;
		margin-down: auto;
	}
	
	.container .header h5
	{
		color: white;
	}
	
	.container .username
	{
		color: white;
	}
	.container hr
	{
		border: 10px solid black;
		border-radius: 5px
	}

</style>


</head>

<body class="d-flex flex-column min-vh-100">

<%@ include file="common/navigation.jspf" %>

	<div class="container">
		<div class="header">
			<h5>The List Of Todos</h5>
		</div>
		
		<div class="username">
			Welcome Back:${name} 
		</div>
		<hr>
		
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>Description</th>
					<th>Target Date</th>
					<th>Progress</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.descripition}</td>
						<td>${todo.targetdate}</td>
						<td>${todo.done}</td>
						<td><a href="edit-todo?id=${todo.id}" class="btn btn-success">Edit</a></td>
						<td><a href="delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
	
	
</body>


	<%@ include file="common/footer.jspf" %>

</html>