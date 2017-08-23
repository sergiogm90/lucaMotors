<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>LUCATIC Motos</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/shop-homepage.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/busqueda.css" />
<link
	href="https://fonts.googleapis.com/css?family=Graduate|Jura|Monoton"
	rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Yellowtail"
	rel="stylesheet">
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->


<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Navigation -->
	<nav id="nav" class="navbar navbar-inverse navbar-fixed-top"
		role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse "
			id="bs-example-navbar-collapse-1">

			<a><img class="imagenLogo" src="img/motos/logo2.png"
				width="100px" /></a> <a
				style="font-family: 'Yellowtail', cursive; font-size: 50px;"
				class="navbar-brand lucaticMotorsNombre" href="Principal">Lucatic
				Motors</a>
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

		<div id="contenedor" class="row">

			<div class="col-md-3">
				<div>
					<form id="" action="Buscador" style="display: inline;"
						method="post">
						<div class="input-group">
							<input class="form-control" type="text" id="caja_de_busqueda" name="buscador" placeholder="Introduce tu búsqueda..." />
								<span class="input-group-btn">
							<input class="btn btn-default busc" type="submit" id="boton_de_buscar" value="Buscar" />
							</span>
						</div>
					</form>
				</div>
				<div class="list-group" style="margin-top: 20px">
				
				
					<c:if test="${mostrarYamaha eq true}">							
						<a  href="BuscadorMarcaYamaha" name="yamaha"  class="list-group-item fondoListaMotos" ><img class="logoMotos" src="img/motos/logo_Yamaha.png" width="25px" height="25px" /><strong>Yamaha</strong></a> 
					</c:if>
					<c:if test="${mostrarYamaha ne true}">							
						<a  href="BuscadorMarcaYamaha" name="yamaha"  class="list-group-item" ><img class="logoMotos" src="img/motos/logo_Yamaha.png" width="25px" height="25px" /><strong>Yamaha</strong></a> 
					</c:if>
					
					
					<c:if test="${mostrarHonda eq true}">
						<a href="BuscadorMarcaHonda" class="list-group-item fondoListaMotos"><img class="logoMotos" src="img/motos/logo_honda.png" width="25px" height="25px"/><strong>Honda</strong></a>
					</c:if>
					<c:if test="${mostrarHonda ne true}">
						<a href="BuscadorMarcaHonda" class="list-group-item"><img class="logoMotos" src="img/motos/logo_honda.png" width="25px" height="25px"/><strong>Honda</strong></a>
					</c:if>
					
					
					<c:if test="${mostrarSuzuki eq true}">
						<a href="BuscadorMarcaSuzuki" class="list-group-item fondoListaMotos"><img class="logoMotos" src="img/motos/logo_Suzuki2.png" width="25px" height="25px"/><strong>Suzuki</strong></a>
					</c:if>
					<c:if test="${mostrarSuzuki ne true}">
						<a href="BuscadorMarcaSuzuki" class="list-group-item"><img class="logoMotos" src="img/motos/logo_Suzuki2.png" width="25px" height="25px"/><strong>Suzuki</strong></a>
					</c:if>
					
					
					<c:if test="${mostrarKTM eq true}">
						<a href="BuscadorMarcaKtm" class="list-group-item fondoListaMotos"><img class="logoMotos" src="img/motos/logo_ktm.jpg" height="25px"/><strong>KTM</a>
					</c:if>
					<c:if test="${mostrarKTM ne true}">
						<a href="BuscadorMarcaKtm" class="list-group-item"><img class="logoMotos" src="img/motos/logo_ktm.jpg" height="25px"/><strong>KTM</a>
					</c:if>
					
					
					<c:if test="${mostrarBMW eq true}">
						<a href="BuscadorMarcaBmw" class="list-group-item fondoListaMotos"><img class="logoMotos" src="img/motos/logo_bmw.png" width="25px" height="25px"/><strong>BMW</strong></a>
					</c:if>					
					<c:if test="${mostrarBMW ne true}">
						<a href="BuscadorMarcaBmw" class="list-group-item"><img class="logoMotos" src="img/motos/logo_bmw.png" width="25px" height="25px"/><strong>BMW</strong></a>
					</c:if>
					
					<c:if test="${mostrarDucati eq true}">
						<a href="BuscadorMarcaDucati" class="list-group-item fondoListaMotos"><img class="logoMotos" src="img/motos/logo_ducati.png" width="25px" height="25px"/><strong>Ducati</strong></a>
					</c:if>					
					<c:if test="${mostrarDucati ne true}">
						<a href="BuscadorMarcaDucati" class="list-group-item"><img class="logoMotos" src="img/motos/logo_ducati.png" width="25px" height="25px"/><strong>Ducati</strong></a>
					</c:if>					
					
				</div>
			</div>

			<div class="col-md-9">

				<div class="row carousel-holder">

					<div class="col-md-12">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img class="slide-image" src="img/motos/slider3.jpg" alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="img/motos/slider4.jpg" alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="img/motos/slider5.jpg" alt="">
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-example-generic"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>
				
				</div>
				<hr>
				<!--  Mostramos texto si hay o no Yamaha en la bbdd -->
				<div>
					<c:if test="${mostrarYamaha eq false}">
						<h3 style="font-family: 'Graduate', cursive;">Actualmente
							LUCATIC MOTORS no tiene YAMAHA en stock</h3>
						<hr>
					</c:if>
					<c:if test="${mostrarYamaha eq true}">
						<h3 style="font-family: 'Graduate', cursive;">Lista motos
							YAMAHA</h3>
						<hr>
					</c:if>
				</div>
				<!--  Mostramos texto si hay o no Suzuki en la bbdd -->
				<div>
					<c:if test="${mostrarSuzuki eq false}">
						<h3 style="font-family: 'Graduate', cursive;">Actualmente
							LUCATIC MOTORS no tiene SUZUKI en stock</h3>
						<hr>
					</c:if>
					<c:if test="${mostrarSuzuki eq true}">
						<h3 style="font-family: 'Graduate', cursive;">Lista motos
							SUZUKI</h3>
						<hr>
					</c:if>
				</div>
				<!--  Mostramos texto si hay o no KTM en la bbdd -->
				<div>
					<c:if test="${mostrarKTM eq false}">
						<h3 style="font-family: 'Graduate', cursive;">Actualmente
							LUCATIC MOTORS no tiene KTM en stock</h3>
						<hr>
					</c:if>
					<c:if test="${mostrarKTM eq true}">
						<h3 style="font-family: 'Graduate', cursive;">Lista motos KTM</h3>
						<hr>
					</c:if>
				</div>
				<!--  Mostramos texto si hay o no Honda en la bbdd -->
				<div>
					<c:if test="${mostrarHonda eq false}">
						<h3 style="font-family: 'Graduate', cursive;">Actualmente
							LUCATIC MOTORS no tiene HONDA en stock</h3>
						<hr>
					</c:if>
					<c:if test="${mostrarHonda eq true}">
						<h3 style="font-family: 'Graduate', cursive;">Lista motos
							HONDA</h3>
						<hr>
					</c:if>
				</div>
				<!--  Mostramos texto si hay o no bmws en la bbdd -->
				<div>
					<c:if test="${mostrarBMW eq false}">
						<h3 style="font-family: 'Graduate', cursive;">Actualmente
							LUCATIC MOTORS no tiene BMW en stock</h3>
						<hr>
					</c:if>
					<c:if test="${mostrarBMW eq true}">
						<h3 style="font-family: 'Graduate', cursive;">Lista motos BMW</h3>
						<hr>
					</c:if>
				</div>

				<!--  Mostramos texto si hay o no Ducatis en la bbdd -->
				<div>
					<c:if test="${mostrarDucati eq false}">
						<h3 style="font-family: 'Graduate', cursive;">Actualmente
							LUCATIC MOTORS no tiene DUCATI en stock</h3>
						<hr>
					</c:if>
					<c:if test="${mostrarDucati eq true}">
						<h3 style="font-family: 'Graduate', cursive;">Lista motos
							DUCATI</h3>
						<hr>
					</c:if>
				</div>
				<!--  Mostramos ESTE TEXTO SI NO HAY NINGUNA COINCIDENCIA EN el INPUT BUSQUEDA CON LA BBDD -->
				<div>
					<c:if test="${comp eq true}">
						<h3 style="font-family: 'Graduate', cursive;">Ninguna coincidencia de busqueda</h3>
						<hr>
					</c:if>
					
				</div>



				<!-- Muestra de todas las motos -->
				<div class="row">
					<c:forEach var="moto" items="${listaMotos}" >
						<div class="col-sm-4 col-lg-4 col-md-4 borde">
							<div class="thumbnail ">
								<a href="MostrarMoto?idMoto=${moto.idMoto}" class="card borde">
								<div  class="card">
								<img src="${moto.fotoMoto}" alt="${moto.modelo}" width="500px"/></div>
								</a>
								<div class="caption" style="height:auto">
									<h4 class="pull-right">${moto.precio}0€</h4>
									<p>
										<strong>${moto.marca}</strong>
									</p>
									<h4>
										<a href="MostrarMoto?idMoto=${moto.idMoto}">${moto.modelo}</a>
									</h4>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<nav id="footer" class="">
		<div class="container">
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
				<a style="font-family: 'Yellowtail', cursive; font-size: 50px;" class="navbar-brand nombreFooter" href="Principal">Lucatic Motors</a>
				<div class="nombreNosotrosFooter">
					<span><h5 >Realizado por:</h5></span>
		            <span><h5 style="text-indent: 25pt">Juan Carlos García Pérez</h5></span>
		            <span><h5 style="text-indent: 25pt">José Javier Girón Fortes</h5></span>
		            <span><h5 style="text-indent: 25pt">José Luis Marqués Sánchez</h5></span>
		            <span><h5 style="text-indent: 25pt">Francisco Jesús León Carrasco</h5></span>	
	            </div>            
			</div>	
		</div>
	</nav>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>