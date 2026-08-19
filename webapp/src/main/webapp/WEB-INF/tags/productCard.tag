<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" trimDirectiveWhitespaces="true" %>

<%@ attribute name="name" required="true" %>
<%@ attribute name="price" required="true" %>
<%@ attribute name="date" required="true" %>
<%@ attribute name="brand" required="false" %>
<%@ attribute name="servings" required="false" %>
<%@ attribute name="pricePerServing" required="false" %>
<%@ attribute name="protein" required="false" %>
<%@ attribute name="actionText" required="false" %>
<%@ attribute name="cssClass" required="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>

<c:set var="cardCssClass" value="${not empty cssClass ? cssClass : ''}" />
<c:set var="cardActionText" value="${not empty actionText ? actionText : 'Ver producto'}" />

<article class="product-card ${cardCssClass}">
    <div class="product-card__content">
        <c:if test="${not empty brand}">
            <p class="product-card__brand"><c:out value="${brand}" /></p>
        </c:if>

        <h3 class="product-card__name"><c:out value="${name}" /></h3>

        <dl class="product-card__metrics">
            <div class="product-card__metric product-card__metric--price">
                <dt>Precio</dt>
                <dd><c:out value="${price}" /></dd>
            </div>

            <c:if test="${not empty servings}">
                <div class="product-card__metric">
                    <dt>Porciones</dt>
                    <dd><c:out value="${servings}" /></dd>
                </div>
            </c:if>

            <c:if test="${not empty pricePerServing}">
                <div class="product-card__metric">
                    <dt>Precio por porcion</dt>
                    <dd><c:out value="${pricePerServing}" /></dd>
                </div>
            </c:if>

            <c:if test="${not empty protein}">
                <div class="product-card__metric">
                    <dt>Proteina</dt>
                    <dd><c:out value="${protein}" /></dd>
                </div>
            </c:if>
        </dl>

        <p class="product-card__date">Actualizado: <c:out value="${date}" /></p>
    </div>

    <div class="product-card__actions">
        <paw:button text="${cardActionText}" size="sm" />
    </div>
</article>
