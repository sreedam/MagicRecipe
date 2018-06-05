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

<style type="text/css">

 .recipe-directory .recipe-group .media-heading {
    font-size: 20px !important;
    font-weight: 500;
}
.recipe-directory .recipe-group {
        margin-top: 5px !important;
    }
     .recipe-directory .recipe-group .media-content ul {
        margin-top: 5px !important;
        margin-bottom: 0;
    }
      .recipe-directory .recipe-group .media-content ul > li {
        display: inline-block !important;
        min-width: 150px !important;
        margin-bottom: 5px !important;
    }
    .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9  {
    padding-right: 80px !important;
    padding-left: 50px !important;
    padding-top: 1px !important;
}
.list-group {
	
    margin-bottom: 3px !important;
	}
	.panel .panel-body {
    padding: 1px !important;
}

html {
    text-rendering: optimizeLegibility !important;
    -webkit-font-smoothing: antialiased !important;
}
body {
    color:#767676;
    background:#F1F2F2;
    font-family:'Open Sans',sans-serif;
    padding:0px !important;
    margin:0px !important;
    font-size:13px;
    text-rendering:optimizeLegibility;
    overflow-x:hidden;
}

ul, .list-unstyled {
    padding-left: 30px;
}
ul li {
    /*list-style:none;*/
}

a,a:hover,a:focus {
    text-decoration:none;
    outline:none;
}

/*Headings*/
h1 {
  font-size: 28px;
  line-height: 35px;
}
h2 {
  font-size: 24px;
  line-height: 33px;
}
h3 {
  font-size: 20px;
  line-height: 27px;
}
h4 {
  /* line-height: 25px; */
}
h5 {
  line-height: 20px;
}
h6 {
  line-height: 18px;
}

h1, h2, h3, h4, h5, h6 {
  color: #555;    
  margin-top: 5px;
  text-shadow: none; 
  font-weight: normal; 
  font-family: "Open Sans", Arial, sans-serif;
} 

h1 i, h2 i, h3 i, h4 i, h5 i, h6 i {
   margin-right: 5px;
}

/*.row {
    margin-right: -18px;
    margin-left: -18px;
}
*/
.h1,
.h2,
.h3 {
    margin-top: 10px;
    margin-bottom: 10px;
}
.event a img {
    margin-left: -1px;
}

.event .media-body a.title {
    font-weight: bold;
}

.event .media-body p {
    margin-bottom: 0;
}


a.thumbnail {
    padding: 0;
    border: none;
    margin-bottom: 15px;
}

.thumbnail-style { 
    padding: 7px;
    margin-bottom: 20px; 
}
.thumbnail-style:hover { 
    box-shadow: 0 0 8px #ddd; 
    -webkit-transition: box-shadow 0.2s ease-in-out;
    -moz-transition: box-shadow 0.2s ease-in-out;
    -o-transition: box-shadow 0.2s ease-in-out;
    transition: box-shadow 0.2s ease-in-out;
}

.thumbnail h3,
.thumbnail-style h3 {
    margin: 6px 0 8px 0;
}

.thumbnail h3 a,
.thumbnail-style h3 a {
    color: #585f69;
    font-size: 18px;
}

.thumbnail h3 a:hover,
.thumbnail-style h3 a:hover {
    color: #72c02c;
    text-decoration: none;
}

.thumbnail-style .thumbnail-img {
    position: relative;
    margin-bottom: 11px;
}

.thumbnail-style a.btn-more {
    right: -10px;
    bottom: 10px;
    color: #fff;
    padding: 1px 6px;
    position: absolute;
    background: #72c02c;
    display: inline-block; 
}
.thumbnail-style a.btn-more:hover {
    text-decoration: none;
    box-shadow: 0 0 0 2px #5fb611;
}
.thumbnail-style:hover a.btn-more {
    right: 10px;
}

.thumbnail-hover img {
    position: relative;
   -webkit-transition: all 0.8s ease-in-out;
   -moz-transition: all 0.8s ease-in-out;
   -o-transition: all 0.8s ease-in-out;
   -ms-transition: all 0.8s ease-in-out;
   transition: all 0.8s ease-in-out;
}
.thumbnail-hover:hover img {
   -webkit-transform: scale(1.2) rotate(2deg);
   -moz-transform: scale(1.2) rotate(2deg);
   -o-transform: scale(1.2) rotate(2deg);
   -ms-transform: scale(1.2) rotate(2deg);
   transform: scale(1.2) rotate(2deg);
}
   .recipe-directory .people-group .media img {
        width: 45px;
    }

    .recipe-directory .people-group .list-group-item {
        -moz-transition: all 0.2s ease-out 0s;
        -webkit-transition: all 0.2s ease-out 0s;
        transition: all 0.2s ease-out 0s;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
        border-radius: 3px;
        margin: 0;
        border-width: 0;
    }

    .recipe-directory .people-group .media-heading {
        margin-top: 5px;
    }

    .recipe-directory .people-group .media-heading,
    .recipe-directory .people-group .media-body {
        line-height: normal;
    }

    .recipe-directory .pagination-contact {
        margin-top: -3px;
    }

    .recipe-directory .recipe-group {
        margin-top: 10px;
    }

    .recipe-directory .recipe-group .media img {
        width: 80px;
    }

    .recipe-directory .recipe-group .list-group-item {

    }

    .recipe-directory .recipe-group .media-heading {
        font-size: 16px;
        font-weight: 500;
    }

    .recipe-directory .recipe-group .media-heading small {
        margin-left: 5px;
        font-size: 13px;
        font-weight: 400;
        color: #999;
    }

    .recipe-directory .recipe-group .list-group-item {
        border: none;
        margin-top: 5px;
    }

    .recipe-directory .recipe-group .list-group-item:hover {
        background-color: #fcfcfc;
    }

    .recipe-directory .recipe-group .media-content {
        margin-top: 5px;
    }

    .recipe-directory .recipe-group .fa:before {
        font-size: 20px;
        color:gray;
    }

    .recipe-directory .recipe-group .media-content ul {
        margin-top: 15px;
        margin-bottom: 0;
    }

    .recipe-directory .recipe-group .media-content ul > li {
        display: inline-block;
        min-width: 200px;
        margin-bottom: 5px;
    }

    .recipe-directory .well {
        border-radius: 0px;
        border: none;
    }

    .recipe-directory .list-group-item:first-child {
        border-top-left-radius: 0px;
        border-top-right-radius: 0px;
    }

    .recipe-directory .page-title {
        text-transform: uppercase;
    }

    .recipe-directory .btn-add-new-contact {
        float: right;
    }

    @media (max-width: 992px) { 
        .recipe-directory .btn-add-new-contact {
            float: left;
        }
    }
    .fixed-width-unfixed-header section.wrapper {
    display:inline-block;
    margin-top:0px;
    padding:27px;
    width:100%;
}

.wrapper {
    display:inline-block;
    margin-top:0px;
    padding:27px;
    width:100%;
}
.media .profile_thumb {
    border: 1px solid;
    width: 50px;
    height: 50px;
    margin: 5px 10px 5px 0;
    border-radius: 50%;
    padding: 9px 12px;
}

.media .profile_thumb i {
    font-size: 30px;
}

.media .date {
    background: #ccc;
    width: 52px;
    margin-right: 10px;
    border-radius: 10px;
    padding: 5px;
}

.event .media-body a.title {
    font-weight: bold;
}

.event .media-body p {
    margin-bottom: 0;
}

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