<%@ include file="comunes/cabecero.jsp"%>

<%@ include file="comunes/navegacion.jsp"%>

<div class="container">
    <div class="text-center"
         style="margin: 30px;">
        <h3>Agregar Empleado</h3>
    </div>
    <form>
        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombre"">
        </div>
        <div class="mb-3">
            <label for="departamento" class="form-label">Departamento</label>
            <input type="text" class="form-control" id="departamento">
        </div>
        <div class="mb-3">
            <label for="puesto" class="form-label">Puesto</label>
            <input type="text" class="form-control" id="puesto">
        </div>
        <div class="mb-3">
            <label for="telefono" class="form-label">Telefono</label>
            <input type="text" class="form-control" id="telefono">
        </div>
        <div class="mb-3">
            <label for="correo" class="form-label">Correo</label>
            <input type="text" class="form-control" id="correo">
        </div>
        <div class="mb-3">
            <label for="sueldo" class="form-label">Sueldo</label>
            <input type="number" step="any" class="form-control" id="sueldo">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Agregar</button>
            <a href="/empleados" class="btn btn-danger btn-sm">Regresar</a>
        </div>
    </form>
</div>

<%@ include file="comunes/pie-pagina.jsp"%>