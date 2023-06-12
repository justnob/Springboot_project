<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>



	<link href=
	"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link
      href=
	"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css"
      rel="stylesheet"
    />
    <script src=
	"https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js">
    </script>
    <script src=
    "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous">
    </script>
    <script src=
	"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js">
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css" integrity="sha512-ZnR2wlLbSbr8/c9AgLg3jQPAattCUImNsae6NHYnS9KrIwRdcY9DxFotXhNAKIKbAXlRnujIqUWoXXwqyFOeIQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    

<title>Add Todo's Page</title>

<style>
	
	body
	{
	background: #4f4f4f;
	}
	
	.container
	{
		margin-top: 3%;
	}
	.container h2
	{
		color: white;
	}
	
	.container .form .row p
	{
		color: white;
	}

	

</style>


</head>

<body class="d-flex flex-column min-vh-100">

<%@ include file="common/navigation.jspf" %>

	<div class="container">
		<h2>Add A New Todo Here</h2>
		<div class="form">
			<form:form method="post" modelAttribute="todo">
			<fieldset>
				<div class="row mb-3">
    				<label class="col-sm-1 col-form-label"><p>Description:</p></label>
    			<div class="col-sm-10">
      				<form:input type="text" path="descripition" class="form-control" required="required"/>
      				<form:errors class="text-warning"  path="descripition"/>
      			</div>
    			</div>
    		</fieldset>
    		
    		<fieldset>
				<div class="row mb-3">
    				<label class="col-sm-1 col-form-label"><p>Target Date:</p></label>
    			<div class="col-sm-10">
      				<form:input type="text" path="targetdate" class="form-control" required="required"/>
      				<form:errors class="text-warning"  path="targetdate"/>
      			</div>
    			</div>
    		</fieldset>
    		
      				<form:input type="hidden" path="id" class="form-control" />
      				
      				<form:input type="hidden" path="done" class="form-control" />
    			
   				<div class="submit-btn">
   					<input type="submit" class="btn btn-success"/>
   				</div>
  				
			</form:form>
		
		</div>
		
	</div>
	<script type="text/javascript">
	$('#targetdate').datepicker({
	    format: 'yyyy/mm/dd',
	    todayHighlight: true
	});
	</script>
	
</body>

	<%@ include file="common/footer.jspf" %>

</html>