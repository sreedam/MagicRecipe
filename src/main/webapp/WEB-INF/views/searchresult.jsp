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


<title>Search Result</title>
<script type="text/javascript">
var express = require('express');
var app = module.exports = express();

// Using swagger-parser to validate swagger spec
var swaggerParser = require('swagger-parser');

var specLocation = 'petstore.yaml';
var swaggerSpec = null;
var parser = new swaggerParser();


parser.validate(specLocation,function(err, api) {
  if (!err) {
    debug('Success validating swagger file!');
    swaggerSpec = api;

    // Enable swagger-stats middleware with all options
    app.use(swStats.getMiddleware({
      name: 'swagger-stats-authtest',
      version: '0.94.0',
      hostname: "localhost",
      ip: "127.0.0.1",
      timelineBucketDuration: 60000,
      swaggerSpec:swaggerSpec,
      uriPath: '/swagger-stats',
      durationBuckets: [50, 100, 200, 500, 1000, 5000],
      requestSizeBuckets: [500, 5000, 15000, 50000],
      responseSizeBuckets: [600, 6000, 6000, 60000],
      // Make sure both 50 and 50*4 are buckets in durationBuckets, 
      // so Apdex could be calculated in Prometheus 
      apdexThreshold: 50,    
      onResponseFinish: function(req,res,rrr){
        debug('onResponseFinish: %s', JSON.stringify(rrr));
      },
      authentication: true,
      sessionMaxAge: maxAge,
      elasticsearch: 'http://127.0.0.1:9200',
      onAuthenticate: function(req,username,password){
        // simple check for username and password
        return((username==='swagger-stats') 
            && (password==='swagger-stats'));
      }

    }));
    
    // . . . . . . . . 

  }
});
</script>
</head>
<body>
<nav class="navbar navbar-light bg-light"> <a
		class="navbar-brand" href="#"> <img
		src='<spring:url value="/resource/images/logo.png"></spring:url>'
		width="30" height="30" class="d-inline-block align-top" alt="">
		Magic Recipe
	</a> </nav>
	
	
	
	<section class="wrapper">



                    <div class="col-md-12">
                    
              
               <div class="col-md-12 ">
                   <div class="">
                 <ul class="pagination">
  
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=1"></spring:url>'>1</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=2"></spring:url>'>2</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=3"></spring:url>'>3</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=4"></spring:url>'>4</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=5"></spring:url>'>5</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=6"></spring:url>'>6</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=7"></spring:url>'>7</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=8"></spring:url>'>8</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=9"></spring:url>'>9</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=10"></spring:url>'>10</a></li>
 
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=11"></spring:url>'>11</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=12"></spring:url>'>12</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=13"></spring:url>'>13</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=14"></spring:url>'>14</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=15"></spring:url>'>15</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=16"></spring:url>'>16</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=17"></spring:url>'>17</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=18"></spring:url>'>18</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=19"></spring:url>'>19</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=20"></spring:url>'>20</a></li>
 <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=21"></spring:url>'>21</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=22"></spring:url>'>22</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=23"></spring:url>'>23</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=24"></spring:url>'>24</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=25"></spring:url>'>25</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=26"></spring:url>'>26</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=27"></spring:url>'>27</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=28"></spring:url>'>28</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=29"></spring:url>'>29</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=30"></spring:url>'>30</a></li>
 
  
</ul>
                                     
                                                 </div>
                                                 
                                                 </div>
	
	
	 
             
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
                                                                   
                              <img  width="30%"  onerror="this.src='<spring:url value="/resource/images/profile.jpg" />'"
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
     <div class="col-md-12 ">
                   <div class="">
                 <ul class="pagination">
  
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=1"></spring:url>'>1</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=2"></spring:url>'>2</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=3"></spring:url>'>3</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=4"></spring:url>'>4</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=5"></spring:url>'>5</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=6"></spring:url>'>6</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=7"></spring:url>'>7</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=8"></spring:url>'>8</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=9"></spring:url>'>9</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=10"></spring:url>'>10</a></li>
 
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=11"></spring:url>'>11</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=12"></spring:url>'>12</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=13"></spring:url>'>13</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=14"></spring:url>'>14</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=15"></spring:url>'>15</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=16"></spring:url>'>16</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=17"></spring:url>'>17</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=18"></spring:url>'>18</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=19"></spring:url>'>19</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=20"></spring:url>'>20</a></li>
 <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=21"></spring:url>'>21</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=22"></spring:url>'>22</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=23"></spring:url>'>23</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=24"></spring:url>'>24</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=25"></spring:url>'>25</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=26"></spring:url>'>26</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=27"></spring:url>'>27</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=28"></spring:url>'>28</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=29"></spring:url>'>29</a></li>
  <li class="page-item"><a class="page-link" href='<spring:url value="/search?ingredients=${ingredients}&p=30"></spring:url>'>30</a></li>
 
  
</ul>
                                     
                                                 </div>
                                                 
                                                 </div>
  </div>
  
 </section>
 
  



</body>
</html>