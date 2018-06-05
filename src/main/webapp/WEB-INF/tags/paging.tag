<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ tag import="org.springframework.util.StringUtils" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="pagedListHolder" required="true" type="org.springframework.beans.support.PagedListHolder" %>
<%@ attribute name="pagedLink" required="true" type="java.lang.String" %>


<c:if test="${pagedListHolder.pageCount > 1}">
    <c:if test="${!pagedListHolder.firstPage}">
        <li><a href="<%= StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPage()-1)) %>">&laquo;</a></li>
    </c:if>
    <c:if test="${pagedListHolder.firstLinkedPage > 0}">
       <li><a href="<%= StringUtils.replace(pagedLink, "~", "0") %>">1</a></li>
    </c:if>
  
    <c:forEach begin="${pagedListHolder.firstLinkedPage}" end="${pagedListHolder.lastLinkedPage}" var="i">
       
               <li><a href="<%= StringUtils.replace(pagedLink, "~", String.valueOf(jspContext.getAttribute("i"))) %>">${i+1}</a></li>
       
    </c:forEach>
   
    <c:if test="${pagedListHolder.lastLinkedPage < pagedListHolder.pageCount - 1}">
        <li><a href="<%= StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPageCount()-1)) %>">${pagedListHolder.pageCount}</a></li>
    </c:if>
    <c:if test="${!pagedListHolder.lastPage}">
        <li><a href="<%= StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPage()+1)) %>">&raquo;</a></li>
    </c:if>
</c:if>
