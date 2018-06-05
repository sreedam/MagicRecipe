        	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <script src="<spring:url value="/resource/js/jquery-3.3.1.min.js" />" type="text/javascript"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link
	href="<spring:url value="/resource/css/bootstrap.min.css"/>"
	rel="stylesheet" />
	<link
	href="<spring:url value="/resource/css/font-awesome.min.css"/>"
	rel="stylesheet" />
    <script src="<spring:url value="/resource/js/bootstrap.min.js" />" type="text/javascript"></script>
            <script src="<spring:url value="/resource/js/popper.min.js" />" type="text/javascript"></script>
    

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Result</title>
</head>
<body>
<nav class="navbar navbar-light bg-light"> <a
		class="navbar-brand" href="#"> <img
		src='<spring:url value="/resource/images/recipe.svg"></spring:url>'
		width="30" height="30" class="d-inline-block align-top" alt="">
		Magic Recipe
	</a> </nav>
	<div class="container-fluid">
	

<c:if test="${!empty results }">
<c:forEach items="${results }" var="items">
<div class="row">
<div class="card-group">
  <div class="card">
    <img width="40%" class="card-img-top" src="${items.thumbnail}" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">${items.title }</h5>
      <p class="card-text">${items.ingredients }</p>
<!--       <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
 -->    </div>
   </div>
  </div>
  </div>
  </c:forEach>
  </c:if>
  

  </div>
  



</body>
</html>