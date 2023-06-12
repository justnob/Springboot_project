<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css" integrity="sha512-ZnR2wlLbSbr8/c9AgLg3jQPAattCUImNsae6NHYnS9KrIwRdcY9DxFotXhNAKIKbAXlRnujIqUWoXXwqyFOeIQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>

	body
	{
		background: #4f4f4f;
	}
	
	.container
	{
		margin-top: 3%;
	}
	
	.container h3
	{
		color: white;
	}
	.container h1
	{
		color: white;
	}

</style>



<title>Welcome Page</title>
</head>
<body class="d-flex flex-column min-vh-100">
	<%@ include file="common/navigation.jspf" %>
	<div class="container">
		<h3>Hello there bro to my welcome page</h3>
		<h1>welcome ${name}</h1>
		
	</div>
	
	
	
</body >

	<%@ include file="common/footer.jspf" %>

</html>