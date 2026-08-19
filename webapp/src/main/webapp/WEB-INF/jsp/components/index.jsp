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
        <paw:button text="Outline" variant="outline" />
        <paw:button text="Large" size="lg" />
        <paw:button text="Deshabilitado" disabled="true" />
    </div>
</section>

<section class="demo-section">
    <h2>productCard.tag</h2>

    <div class="demo-row">
        <paw:badge text="Proteina" variant="primary" />
        <paw:badge text="Oferta" variant="success" />
        <paw:badge text="Stock limitado" variant="warning" />
        <paw:badge text="Sin stock" variant="danger" />
    </div>

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
                name="Creatina Monohidratada Micronizada"
                brand="ENA Sport"
                price="$18.500"
                servings="60"
                pricePerServing="$308"
                protein="0g por porcion"
                date="19/08/2026"
                actionText="Ver detalle" />
    </div>
</section>

<section class="demo-section">
    <h2>alert.tag</h2>

    <div class="demo-stack">
        <paw:alert
                variant="success"
                title="Producto publicado"
                message="La publicacion ya esta visible para compradores." />

        <paw:alert
                variant="warning"
                title="Stock limitado"
                message="Quedan pocas unidades disponibles para este suplemento." />

        <paw:alert
                variant="danger"
                title="No se pudo publicar"
                message="Revisa los datos del formulario e intenta nuevamente." />
    </div>
</section>

<section class="demo-section">
    <h2>badge.tag</h2>

    <div class="demo-row">
        <paw:badge text="Creatina" />
        <paw:badge text="Proteina" variant="primary" />
        <paw:badge text="Vendedor verificado" variant="success" />
        <paw:badge text="Precio alto" variant="warning" />
        <paw:badge text="Sin stock" variant="danger" />
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
