<%@ page contentType="text/html;charset=UTF-8" language="java"
         session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <title>Librería de componentes - PAW 2026b</title>
    <%-- c:url antepone el context path, asi el link no se rompe si cambia --%>
    <link rel="stylesheet" href="<c:url value='/css/components.css'/>">
</head>
<body>

<h1>Librería de componentes</h1>

<section class="demo-section">
    <h2>button.tag</h2>

    <div class="demo-row">
        <paw:button text="Primary" />
        <paw:button text="Danger" variant="danger" />
        <paw:button text="Large" size="lg" />
        <paw:button text="Deshabilitado" disabled="true" />
    </div>

    <div class="demo-row">
        <span class="demo-label">Escape XSS</span>
        <paw:button text="${textoPeligroso}" variant="outline" />
    </div>
</section>

<section class="demo-section">
    <h2>productCard.tag</h2>

    <div class="demo-grid">
        <paw:productCard
                name="Whey Protein Gold"
                brand="Star Nutrition"
                price="$42.000"
                servings="30"
                pricePerServing="$1.400"
                protein="24g por porcion"
                date="19/08/2026"
                actionText="Comparar" />

        <paw:productCard
                name="${textoPeligroso}"
                brand="Demo de escape"
                price="$0"
                servings="1"
                pricePerServing="$0"
                protein="0g"
                date="19/08/2026"
                actionText="Ver detalle" />
    </div>
</section>

<section class="demo-section">
    <h2>input.tag</h2>

    <div class="demo-form">
        <paw:input
                label="Nombre del producto"
                name="productName"
                value="Creatina monohidratada"
                placeholder="Ej: Whey protein"
                helpText="Este texto se usaria en formularios de alta o edicion." />

        <paw:input
                label="Precio"
                name="price"
                type="number"
                value="0"
                min="1"
                step="1"
                required="true"
                error="El precio debe ser mayor a cero." />
    </div>
</section>

</body>
</html>
