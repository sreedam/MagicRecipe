
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<spring:url value="/resource/js/jquery-3.3.1.min.js" />"
	type="text/javascript"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="<spring:url value="/resource/css/bootstrap.min.css"/>"
	rel="stylesheet" />
<link href="<spring:url value="/resource/css/font-awesome.min.css"/>"
	rel="stylesheet" />
<script src="<spring:url value="/resource/js/bootstrap.min.js" />"
	type="text/javascript"></script>
<script src="<spring:url value="/resource/js/popper.min.js" />"
	type="text/javascript"></script>


<title>Magic Recipe</title>



<script type="text/javascript">

</script>




</head>
<body>
	<nav class="navbar navbar-light bg-light"> <a
		class="navbar-brand" href="#"> <img
		src='<spring:url value="/resource/images/recipe.svg"></spring:url>'
		width="30" height="30" class="d-inline-block align-top" alt="">
		Magic Recipe
	</a> </nav>
	<div class="container">
		<div class="w3-display-container  " style="height: 700px;">

			<div class="w3-padding w3-display-middle">

				<div class="form-group">
					<form method="post"
						action='<spring:url value="/search"></spring:url>'>
						<div class="row">
							<label>Search Recipes(comma separated)</label> <input type="text"
								name="ingredients" id="ingredients" class="form-control">

						</div>
						<div class="row">
							<input type="submit" value="search" id="search"
								class="btn btn-default btn-sm pull-right">
						</div>
					</form>
				</div>



			</div>
		</div>


	</div>
</body>
</html>