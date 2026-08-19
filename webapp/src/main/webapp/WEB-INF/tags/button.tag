<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>

<%@ attribute name="text" required="true" %>
<%@ attribute name="variant" required="false" %>
<%@ attribute name="size" required="false" %>
<%@ attribute name="type" required="false" %>
<%@ attribute name="cssClass" required="false" %>
<%@ attribute name="disabled" required="false" type="java.lang.Boolean" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="btnVariant" value="${not empty variant ? variant : 'primary'}" />
<c:set var="btnSize" value="${not empty size ? size : 'md'}" />
<c:set var="btnType" value="${not empty type ? type : 'button'}" />
<c:set var="btnCssClass" value="${not empty cssClass ? cssClass : ''}" />
<c:set var="btnDisabled" value="${disabled ne null ? disabled : false}" />

<c:set var="classes" value="btn btn-${btnVariant} btn-${btnSize} ${btnCssClass}" />

<button type="${btnType}"
        class="${classes}"
        <c:if test="${btnDisabled}">disabled</c:if>
>
    <c:out value="${text}" />
</button>
