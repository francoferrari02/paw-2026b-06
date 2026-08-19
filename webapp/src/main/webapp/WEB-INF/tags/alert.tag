<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>

<%@ attribute name="message" required="true" %>
<%@ attribute name="title" required="false" %>
<%@ attribute name="variant" required="false" %>
<%@ attribute name="cssClass" required="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="alertCssClass" value="${not empty cssClass ? cssClass : ''}" />

<c:choose>
    <c:when test="${variant == 'success' or variant == 'warning' or variant == 'danger'}">
        <c:set var="alertVariant" value="${variant}" />
    </c:when>
    <c:otherwise>
        <c:set var="alertVariant" value="info" />
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${alertVariant == 'danger' or alertVariant == 'warning'}">
        <c:set var="alertRole" value="alert" />
    </c:when>
    <c:otherwise>
        <c:set var="alertRole" value="status" />
    </c:otherwise>
</c:choose>

<div class="alert alert-${alertVariant} ${alertCssClass}" role="${alertRole}">
    <c:if test="${not empty title}">
        <strong class="alert__title"><c:out value="${title}" /></strong>
    </c:if>
    <span class="alert__message"><c:out value="${message}" /></span>
</div>
