<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Actualizar Usuario</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/shop-homepage.css" rel="stylesheet">

<link href="plugins/Lightbox/dist/css/lightbox.css" rel="stylesheet">
<link href="plugins/Icons/et-line-font/style.css" rel="stylesheet">
<link href="plugins/animate.css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/busqueda.css" />
<link href="css/Ajuste.css" rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Graduate|Jura|Monoton"
	rel="stylesheet">
	
<link href="https://fonts.googleapis.com/css?family=Yellowtail" rel="stylesheet">

</head>

<body>

    <!-- Navigation -->
    <nav id="nav" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<a><img class="imagenLogo" src="img/motos/logo2.png"
				width="100px" /></a> <a
				style="font-family: 'Yellowtail', cursive; font-size: 50px;"
				class="navbar-brand lucaticMotorsNombre" href="AdministrarWeb">Lucatic
				Motors</a>

			<ul class="nav navbar-nav">
				<li class="pull-right" style="font-family: 'Graduate', cursive;"><a
					style="color: #ffffff !important;">Añade Moto</a></li>
				<li class="pull-right" style="font-family: 'Graduate', cursive;"><a
					href="BuscarMoto " style="color: #ffffff !important;">Buscar
						Moto</a></li>
				<li class="pull-right" style="font-family: 'Graduate', cursive;"><a
					href="AgregarUsuarioAdmin " style="color: #ffffff !important;">Añade
						Usuario</a></li>
				<li class="pull-right" style="font-family: 'Graduate', cursive;"><a
					href="BuscarUsuario " style="color: #ffffff !important;">Buscar
						Usuario</a></li>

			</ul>
			<ul class="nav navbar-nav pull-right imagenDesloguear">

				<li class="pull-right "><a href="Desloguear "
					style="color: #ffffff !important;">
						<div>
							<span class="glyphicon glyphicon-off"></span>
						</div>
				</a></li>
				<c:if test="${cliente.nombre ne null }">
					<li style="color: #ffffff !important;" class="pull-right"
						style="font-family: 'Graduate', cursive;"><a href="# "
						style="color: #ffffff !important;">${cliente.nombre}</a></li>
				</c:if>
				<c:if test="${cliente.nombre eq null}">
					<li class="pull-right" style="font-family: 'Graduate', cursive;"><a
						href="Desloguear " style="color: #ffffff !important;">Login</a></li>
				</c:if>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section id="contact">
				<div class="container thumbnail col-md-12">
					<br />
					<h2>Actualizar Usuario</h2>
					<hr class="sep">
					<div class="col-md-6 col-md-offset-3 wow fadeInUp"
						data-wow-delay=".3s">
						<form metodo="get" action="AddMotoPost">
							<div class="form-group">
								<input type="text" class="form-control" id="nombre"
									placeholder="Nombre" value="" name="nombre">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="apellido1"
									placeholder="1º Apellido" value="" name="apellido1">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="apellido2"
									placeholder="2º Apellido" value="" name="apellido2">
							</div>
							<div class="form-group">
								<input type="double" class="form-control" id="dni"
									placeholder="DNI" value="" name="dni">
							</div>
							<div class="form-group">
								<input type="double" class="form-control" id="direccion"
									placeholder="Dirección" value="" name="direccion">
							</div>
							<div class="form-group">
								<input type="double" class="form-control" id="telefono"
									placeholder="Telefono" value="" name="telefono">
							</div>
							<div class="form-group">
								<input type="double" class="form-control" id="email"
									placeholder="e-Mail" value="" name="email">
							</div>
							<div class="form-group">
								<input type="double" class="form-control" id="password"
									placeholder="Password" value="" name="password">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="fechaNac"
									placeholder="Fecha de nacimiento" value="" name="fechaNac">
									</div>

							<input type="submit" class="btn-block" value="Actualizar" />
						</form>
					</div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<!-- /.container -->

	<div class="container">

		<hr>

		<!-- Footer -->
		<footer>
		<div class="row">
			<div class="col-lg-12">
				<p>Copyright &copy; Your Website 2014</p>
			</div>
		</div>
		</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>


</body>
</html>