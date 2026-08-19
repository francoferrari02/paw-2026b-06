<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>

<%@ attribute name="label" required="true" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="id" required="false" %>
<%@ attribute name="value" required="false" %>
<%@ attribute name="type" required="false" %>
<%@ attribute name="placeholder" required="false" %>
<%@ attribute name="helpText" required="false" %>
<%@ attribute name="error" required="false" %>
<%@ attribute name="required" required="false" type="java.lang.Boolean" %>
<%@ attribute name="disabled" required="false" type="java.lang.Boolean" %>
<%@ attribute name="min" required="false" %>
<%@ attribute name="max" required="false" %>
<%@ attribute name="step" required="false" %>
<%@ attribute name="cssClass" required="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="fieldId" value="${not empty id ? id : name}" />
<c:set var="fieldCssClass" value="${not empty cssClass ? cssClass : ''}" />
<c:set var="fieldRequired" value="${required ne null ? required : false}" />
<c:set var="fieldDisabled" value="${disabled ne null ? disabled : false}" />
<c:set var="hasError" value="${not empty error}" />
<c:set var="helpId" value="${fieldId}-help" />
<c:set var="errorId" value="${fieldId}-error" />

<c:choose>
    <c:when test="${type == 'email' or type == 'number' or type == 'password' or type == 'search' or type == 'tel' or type == 'url'}">
        <c:set var="fieldType" value="${type}" />
    </c:when>
    <c:otherwise>
        <c:set var="fieldType" value="text" />
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${hasError and not empty helpText}">
        <c:set var="describedBy" value="${helpId} ${errorId}" />
    </c:when>
    <c:when test="${hasError}">
        <c:set var="describedBy" value="${errorId}" />
    </c:when>
    <c:when test="${not empty helpText}">
        <c:set var="describedBy" value="${helpId}" />
    </c:when>
    <c:otherwise>
        <c:set var="describedBy" value="" />
    </c:otherwise>
</c:choose>

<c:set var="safeValue"><c:out value="${value}" /></c:set>
<c:set var="safePlaceholder"><c:out value="${placeholder}" /></c:set>

<div class="form-field ${fieldCssClass}">
    <label class="form-field__label" for="${fieldId}">
        <c:out value="${label}" />
        <c:if test="${fieldRequired}">
            <span class="form-field__required" aria-hidden="true">*</span>
        </c:if>
    </label>

    <input class="form-field__input ${hasError ? 'form-field__input--error' : ''}"
           id="${fieldId}"
           name="${name}"
           type="${fieldType}"
           value="${safeValue}"
           <c:if test="${not empty placeholder}"> placeholder="${safePlaceholder}"</c:if>
           <c:if test="${not empty describedBy}"> aria-describedby="${describedBy}"</c:if>
           aria-invalid="${hasError}"
           <c:if test="${fieldRequired}"> required</c:if>
           <c:if test="${fieldDisabled}"> disabled</c:if>
           <c:if test="${not empty min}"> min="${min}"</c:if>
           <c:if test="${not empty max}"> max="${max}"</c:if>
           <c:if test="${not empty step}"> step="${step}"</c:if>
    >

    <c:if test="${not empty helpText}">
        <p class="form-field__help" id="${helpId}"><c:out value="${helpText}" /></p>
    </c:if>

    <c:if test="${hasError}">
        <p class="form-field__error" id="${errorId}"><c:out value="${error}" /></p>
    </c:if>
</div>
