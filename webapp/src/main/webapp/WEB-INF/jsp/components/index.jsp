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
</section>

</body>
</html>
