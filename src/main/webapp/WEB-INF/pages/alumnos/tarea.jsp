<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Detalle de ${alumnoEnDetalle.nombreCompleto}" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />

<section class="container py-3">
    <div class="row">
        <h1 class="h3">Viste en detalle</h1>
        
    </div>

    <div class="row align-items-center px-4 mt-3">
        <div class="col-md-5 col-lg-4" >
            <div class="card h-100">
                <jsp:include page="partes/dataCardAlumno.jsp">
                    <jsp:param name="fotoAlumno" value="${alumnoEnDetalle.foto}" />
                    <jsp:param name="nombreCompletoAlumno" value="${alumnoEnDetalle.nombreCompleto}" />
                </jsp:include>
            </div>
        </div>
        <div class="col-md-7 col-lg-8" >
            <form id="formVerAlumno" action="${pageContext.request.contextPath}/app?accion=view&id=${alumnoEnDetalle.id}"
                  method="get" class="was-validated border p-4 rounded-3 bg-light">
                <div class="row">
                    <div class="col-sm-6 mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value="${alumnoEnDetalle.nombre}" Disabled readonly>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" value="${alumnoEnDetalle.apellido}" Disabled readonly>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="mail" class="form-label">Mail</label>
                        <input type="text" class="form-control" id="mail" name="mail" value="${alumnoEnDetalle.mail}" Disabled readonly>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="fechaNac" class="form-label">Fecha de nacimiento</label>
                        <input type="date" class="form-control" id="fechaNac" name="fechaNac" value="${alumnoEnDetalle.fechaNacimiento}" Disabled readonly>
                    </div>

                <div class="row justify-content-end mt-2">
                    <div class="col-12">
                        <div class="float-end">
                            <a href="${pageContext.request.contextPath}/app" class="btn btn-secondary">Volver atrás</a>
                            <a class="btn btn-warning" href="${pageContext.request.contextPath}/app?accion=edit&id=${alumnoEnDetalle.id}" method="get">Editar alumno</a>
                            <a class="btn btn-danger" href="${pageContext.request.contextPath}/app?accion=remove&id=${alumnoEnDetalle.id}" method="get">Borrar alumno</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</section>


<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>