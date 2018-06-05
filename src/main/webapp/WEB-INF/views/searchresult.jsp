       <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <script src="<spring:url value="/resource/js/jquery-3.3.1.min.js" />" type="text/javascript"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link
	href="<spring:url value="/resource/css/bootstrap.min.css"/>"
	rel="stylesheet" />
	<link
	href="<spring:url value="/resource/css/recipe.css"/>"
	rel="stylesheet" />
	<link
	href="<spring:url value="/resource/css/font-awesome.min.css"/>"
	rel="stylesheet" />
    <script src="<spring:url value="/resource/js/bootstrap.min.js" />" type="text/javascript"></script>
            <script src="<spring:url value="/resource/js/popper.min.js" />" type="text/javascript"></script>
    

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">


</style>

<title>Search Result</title>
</head>
<body>
<nav class="navbar navbar-light bg-light"> <a
		class="navbar-brand" href="#"> <img
		src='<spring:url value="/resource/images/recipe.svg"></spring:url>'
		width="30" height="30" class="d-inline-block align-top" alt="">
		Magic Recipe
	</a> </nav>
	
	
	
	<section class="wrapper">



                    <div class="col-md-12">
                   
              
               <div class="col-md-12 " style="background:rgba(255, 255, 255, 0.5);">
                   <div class="">
                                     
                                                 </div>
                                                 </div>
	
	
	
	
	
	<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>

													<jsp:useBean id="pagedListHolder" scope="request"
														type="org.springframework.beans.support.PagedListHolder" />
													<%-- // create link for pages, "~" will be replaced later on with the proper page number --%>
													<c:url value="/Recruiter/RecruiterLogin/SearchCandidate2"
														var="pagedLink">
														<c:param name="action" value="list" />
														<c:param name="p" value="~" />
													</c:url>


													<%-- // load our paging tag, pass pagedListHolder and the link --%>
													<ul class="">
														<tg:paging pagedListHolder="${pagedListHolder}"
															pagedLink="${pagedLink}" />
													</ul>
             
<c:if test="${!empty results }">
<c:forEach items="${results}" var="items">
	<div class="container-fluid">
	 <div class="col-md-12 " style="background:rgba(255, 255, 255, 0.2);">
                   <div class="panel ">
                                      
                                        <div class="panel-body">
                                            <div class="row ">
                                                <div class="col-md-12 recipe-directory">
                                                    
                                                    <div class="list-group recipe-group">
                                                 
                                           
  
  
  
                                                          <a target="_blank" href="${items.href}" class="list-group-item">
                                                            <div class="media">
                                                                <div class="pull-left">
                                                                   
                              <img  width="30%"  onerror="this.src='<spring:url value="/resources/frontPage/photos/neoremlogo.png" />'"
																		src="${items.thumbnail}"
																		alt="candidateImage">                                         
                                                                    
                                                                    
                                                                </div>
                                                                <div class="media-body">
                                                                    <h4 class="media-heading">${items.title }</h4>
                                                                    <div class="media-content">
                                                                      
                                                                         <ul class="list-unstyled">
                                                                           
                                                                     <li >
                                                               
                                                                    <small>Ingredients : </small>
                                                                     <span class="text-sm">${items.ingredients }</span>
                                                                
                                                            </li>   
                                                           
                                                             
                                                        </ul>
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    </div>
                                                                </div>
                                                            </div><!-- media -->
                                                        </a><!-- list-group -->
  
  
  
  
  
  
  
  
  </div>
  </div>
  </div>
  </div>
  </div>
  </div>
  </div>
  
  
  
  
  
  </c:forEach>
  </c:if>
  </div>
  
 </section>
 
  



</body>
</html>