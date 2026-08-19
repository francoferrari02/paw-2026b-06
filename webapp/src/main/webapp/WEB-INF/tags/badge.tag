<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>

<%@ attribute name="text" required="true" %>
<%@ attribute name="variant" required="false" %>
<%@ attribute name="cssClass" required="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="badgeCssClass" value="${not empty cssClass ? cssClass : ''}" />

<c:choose>
    <c:when test="${variant == 'primary' or variant == 'success' or variant == 'warning' or variant == 'danger'}">
        <c:set var="badgeVariant" value="${variant}" />
    </c:when>
    <c:otherwise>
        <c:set var="badgeVariant" value="neutral" />
    </c:otherwise>
</c:choose>

<span class="badge badge-${badgeVariant} ${badgeCssClass}">
    <c:out value="${text}" />
</span>
