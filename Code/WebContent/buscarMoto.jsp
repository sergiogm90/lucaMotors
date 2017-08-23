<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Listado de Motos</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">

    <link href="plugins/Lightbox/dist/css/lightbox.css" rel="stylesheet">
    <link href="plugins/Icons/et-line-font/style.css" rel="stylesheet">
    <link href="plugins/animate.css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/busqueda.css" />
    <link href="css/tablas.css" rel="stylesheet">
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
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <a ><img style="margin-left: 400px" class="imagenLogo" src="img/motos/logo2.png"  width="100px"/></a> 
			<a   style="font-family: 'Yellowtail', cursive;	font-size: 50px; " class="navbar-brand lucaticMotorsNombre" href="AdministrarWeb">Lucatic Motors</a>
			
                <ul class="nav navbar-nav">
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a href="AddMoto " style="color:#ffffff!important;">Añade Moto</a></li>
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a style="color:#777!important;"><strong>Buscar Moto</strong></a></li>
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a href="AgregarUsuarioAdmin " style="color:#ffffff!important;">Añade Usuario</a></li>
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a href="BuscarUsuario " style="color:#ffffff!important;">Buscar Usuario</a></li>
                    
                </ul>
                <ul style="margin-right: 300px" class="nav navbar-nav pull-right imagenDesloguear" >
				
	 			<li class="pull-right " >
					<a href="DesloguearAdmin " style="color:#ffffff!important;">
							<div>
								<span class="glyphicon glyphicon-off"></span>
							</div>
					</a> 
				</li >
				<c:if test="${admin.nombre ne null }">
					<li style="color:#ffffff!important;" class="pull-right" style="font-family: 'Graduate', cursive;"><a href="# " style="color:#ffffff!important;">${admin.nombre}</a></li>
				</c:if>
				
			</ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
		<h1 class="info text-center " ><font color=black>Motos Registradas</font></h1>
		

				
				<hr class="sep"></hr>
				<table id="text-center col-md-12 col-xs-12 table-responsive">
					
					
						<tr id="firstrow">
							
							<th> <h3 class="info text-center "><font color=white>Marca</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Modelo</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Color</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Largo</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Ancho</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Alto</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Peso</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Deposito</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Motor</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Chasis</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Suspension</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Ruedas</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Precio</font></h3></th>
							<th> <h3 class="info text-center "><font color=white>Foto</font></h3></th>
							<th> <h3 class="text-center "><font color=white>Acciones</h3></th></font>
						</tr>
					

					

						<c:forEach var="moto" items="${arrayMotos}">
							
							<tr>
								<td>${moto.marca}</td>
								<td>${moto.modelo}</td>
								<td>${moto.color}</td>
								<td>${moto.largo}</td>
								<td>${moto.ancho}</td>
								<td>${moto.alto}</td>
								<td>${moto.peso}</td>
								<td>${moto.capacidadDeposito}</td>
								<td>${moto.modeloMotor}</td>
								<td>${moto.modeloChasis}</td>
								<td>${moto.modeloSuspension}</td>
								<td>${moto.modeloRuedas}</td>
								<td>${moto.precio}</td>
								<td><img src="${moto.fotoMoto}" width="200px" /></td>

								<td>
									<div
										style="-ms-display: flex; display: flex; align-items: center; justify-content: center">
										<div>
											<a href="/Proyecto_motos_def/EditMoto?idMoto=${moto.idMoto} "
												class="btn btn-default" style="margin: 0px 0px 10px 0"
												role="button">Actualizar</a> <br> <a
												href="/Proyecto_motos_def/EliminarMoto?idMoto=${moto.idMoto}"
												class="btn btn-danger"
												onclick="return confirm('¿Estás seguro que desea eliminar este usuario de forma permanente?');">Borrar</a>

										</div>
									</div>
								</td>


							</tr>
							
						</c:forEach>
					</tbody>
				</table>
			
		</div>
	</div>
	<!-- /.container -->


	<nav id="footer" style="height: 200px ">
		<div class="container">
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
				<a style="font-family: 'Yellowtail', cursive; font-size: 50px; text-indent: 300pt;" class="navbar-brand nombreFooter" href="Principal">Lucatic Motors</a>
				<div class="nombreNosotrosFooter">
					<h5 style="color: #ffffff!important; text-indent: -500pt">Realizado por:</h5>
		            <h5 style="color: #ffffff!important; text-indent: -450pt">Juan Carlos García Pérez</h5>
		            <h5 style="color: #ffffff!important; text-indent: -450pt">José Javier Girón Fortes</h5>
		            <h5 style="color: #ffffff!important; text-indent: -450pt">José Luis Marqués Sánchez</h5>
		            <h5 style="color: #ffffff!important; text-indent: -450pt">Francisco Jesús León Carrasco</h5>	
	            </div>            
			</div>	
		</div>
	</nav>
		<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>

</body>
</html>