<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.80.0">
<title>Supermercado · Cosmos</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/checkout/">



<!-- Bootstrap core CSS -->
<link
	href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="https://getbootstrap.com/docs/5.0/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon"
	href="https://getbootstrap.com/docs/5.0/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon"
	href="https://getbootstrap.com/docs/5.0/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest"
	href="https://getbootstrap.com/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="https://getbootstrap.com/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" />
<link rel="icon"
	href="https://getbootstrap.com/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">

 <!-- link PARA LOS ICONOS DE EDITAR Y ELIMINAR -->
    <script src="https://kit.fontawesome.com/8d20d6c8c4.js"
	crossorigin="anonymous"></script>
     <!-- Bootstrap CSS PARA DATATABLE-->
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
     <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
     <script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
     <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.16/css/jquery.dataTables.min.css' />

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link
	href="https://getbootstrap.com/docs/5.0/examples/checkout/form-validation.css"
	rel="stylesheet">
</head>
<body class="bg-light">
	<%@ include file="header.html" %>
	
	
	<div class="container">
		<main>
			<div class="py-5 text-center">
				<img class="d-block mx-auto mb-4"
					src="https://w7.pngwing.com/pngs/727/430/png-transparent-shopping-cart-supermarket-shopping-cart-text-service-logo.png"
					alt="" width="100" height="100">
			</div>

			<div class="row g-3">

				<div class="col-md-12 col-lg-12">
					<h4 class="mb-3">Listado de Productos</h4>
					<form class="needs-validation" action="verlistado" method="post" novalidate>
						<div class="row g-3">

							<div class="col-12">
								<label for="slcategoria" class="form-label">Categoria:</label> 
								<select name="slcategoria" id="slcategoria" 
									class="form-control" required>
									<option value="">Selecciona una opción</option>
									<c:forEach items="${lcategoria}" var="lesp">
										<option value='<c:out value="${lesp.getIdcategoria()}" />'><c:out value="${lesp.getDescripcion()}" /></option>
									</c:forEach>
								</select>
								<div class="invalid-feedback">Selecciona una Categoria</div>
							</div>

						</div>

						<hr class="my-4">

						<button class="w-100 btn btn-primary btn-lg" type="submit">Buscar</button>
					</form>
				</div>

				<div class="col-md-12 col-lg-12">
						<div class="row g-3">
							<div class="col-12">

						      <div class="table-responsive">
						      
						       <!-- cuerpo de trabajo  -->
						      <!--   <table class="table table-striped table-sm"> -->
						      <table id="example" class="table table-striped" style="width:100%">
						          <thead>
						            <tr>
										<th>Id Producto</th>
										<th>Nombre Producto</th>
										<th>Precio</th>
										<th>Descuento</th>
										<th>Categoria</th>
										<th>Imagen Producto</th>
										
						            </tr>
						          </thead>
						          <tbody>
									<c:forEach items="${lreporte}" var="lrep" >	
									<tr>
										<td><c:out value="${lrep.getId()}" /></td>
										<td><c:out value="${lrep.getNombre()}" /></td>
										<td><c:out value="${lrep.getPrecio()}" /></td>
										<td><c:out value="${lrep.getDescuento()}" /></td>
                                        <td><c:out value="${lrep.getDescripcion()}" /></td>
                                        <td>
					                    
					                    <img class="d-flex ml-3 rounded" alt="${lrep.getNombre()}" src="${lrep.getUrl_imagen()}" width="100">
				                      	</td> 
									</tr>
									</c:forEach>
						          </tbody>
						        </table>
						      </div>
      
							</div>
						</div>
						
						<hr class="my-4">
				</div>

			</div>
		</main>

		<%@ include file="footer.html" %>

	</div>
<!-- LIBRERIAS DATATABLES -->
 <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    
<!-- LIBRERIAS DATATABLES -->
<script src="${pageContext.request.contextPath}/resources/JS/tabla.js"></script>
    <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.js"></script>
	<script
		src="https://getbootstrap.com/docs/5.0/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://getbootstrap.com/docs/5.0/examples/checkout/form-validation.js"></script>
</body>
</html>
