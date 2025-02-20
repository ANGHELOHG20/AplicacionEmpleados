<%@ include file="comunes/cabecero.jsp"%>

<%@ include file="comunes/navegacion.jsp"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sistema de Empleados</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="<KEY>" crossorigin="anonymous">
</head>
<body></body>



<div class="container">
    <div class="text-center table" style="margin-top: 100px;">
        <h3>Sistema de Empleados</h3>
        <p>Bienvenido</p>
        <a href="/empleados" class="btn btn-primary">Empleados</a>
    </div>
    <div class="container">
        <table class="table table-striped table-hover table-bordered align-middle">
            <thead class="table-danger text-center">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Nombre</th>
                <th scope="col">Departamento</th>
                <th scope="col">Puesto</th>
                <th scope="col">Telefono</th>
                <th scope="col">Email</th>
                <th scope="col">Sueldo</th>
                <th scope="col">Opciones</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="empleado" items="${empleados}">
            <thead class="text-center">
                <tr>
                    <td>${empleado.id}</td>
                    <td>${empleado.nombre}</td>
                    <td>${empleado.departamento}</td>
                    <td>${empleado.puesto}</td>
                    <td>${empleado.telefono}</td>
                    <td>${empleado.correo}</td>
                    <td>${empleado.sueldo}</td>
                    <td class="text-center">
                            <c:set var="urlEditar">
                                <c:url value="${application.contextPath}/editar">
                                    <c:param name="id"
                                             value="${empleado.id}"/>
                                </c:url>
                            </c:set>
                            <a href="${urlEditar}"
                               class="btn btn-warning btn-sm me-3">Editar</a>

                        <c:set var="urlEliminar">
                                 <c:url value="${application.contextPath}/eliminar">
                                    <c:param name="id"
                                         value="${empleado.id}"/>
                                </c:url>
                            </c:set>
                        <a href="${urlEliminar}"
                           class="btn btn-danger btn-sm me-3">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="comunes/pie-pagina.jsp"%>
