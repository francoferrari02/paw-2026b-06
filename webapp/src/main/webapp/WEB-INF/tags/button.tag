<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>

<%@ attribute name="text" required="true" %>
<%@ attribute name="variant" required="false" %>
<%@ attribute name="size" required="false" %>
<%@ attribute name="type" required="false" %>
<%@ attribute name="cssClass" required="false" %>
<%@ attribute name="disabled" required="false" type="java.lang.Boolean" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="btnCssClass" value="${not empty cssClass ? cssClass : ''}" />
<c:set var="btnDisabled" value="${disabled ne null ? disabled : false}" />

<c:choose>
    <c:when test="${variant == 'secondary' or variant == 'danger' or variant == 'outline'}">
        <c:set var="btnVariant" value="${variant}" />
    </c:when>
    <c:otherwise>
        <c:set var="btnVariant" value="primary" />
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${size == 'sm' or size == 'lg'}">
        <c:set var="btnSize" value="${size}" />
    </c:when>
    <c:otherwise>
        <c:set var="btnSize" value="md" />
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${type == 'submit' or type == 'reset'}">
        <c:set var="btnType" value="${type}" />
    </c:when>
    <c:otherwise>
        <c:set var="btnType" value="button" />
    </c:otherwise>
</c:choose>

<c:set var="classes" value="btn btn-${btnVariant} btn-${btnSize} ${btnCssClass}" />

<button type="${btnType}"
        class="${classes}"
        <c:if test="${btnDisabled}">disabled</c:if>
>
    <c:out value="${text}" />
</button>
