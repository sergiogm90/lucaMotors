<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>BackOffice</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/shop-homepage.css" rel="stylesheet">

<link href="plugins/Lightbox/dist/css/lightbox.css" rel="stylesheet">
<link href="plugins/Icons/et-line-font/style.css" rel="stylesheet">
<link href="plugins/animate.css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/Ajuste.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/busqueda.css" />
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
                <a ><img class="imagenLogo" src="img/motos/logo2.png"  width="100px"/></a> 
			<a   style="font-family: 'Yellowtail', cursive;	font-size: 50px; " class="navbar-brand lucaticMotorsNombre">Lucatic Motors</a>
			
                <ul class="nav navbar-nav">
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a href="AddMoto " style="color:#ffffff!important;">Añade Moto</a></li>
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a href="BuscarMoto " style="color:#ffffff!important;">Buscar Moto</a></li>
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a href="AgregarUsuarioAdmin " style="color:#ffffff!important;">Añade Usuario</a></li>
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a href="BuscarUsuario " style="color:#ffffff!important;">Buscar Usuario</a></li>
                    
                </ul>
                <ul class="nav navbar-nav pull-right imagenDesloguear" >
				
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
			<div style="margin-top: 200px" class="text-center">
				<h3>Eres el administrador de la empresa Lucatic Motors y puedes
					añadir motos borrarlas y actualizarlas</h3>
			</div>
			<!--      <div class="col-md-3">
                <p class="lead">Shop Name</p>
                <div class="list-group">
                    <a href="#" class="list-group-item">Añade Moto</a>
                    <a href="#" class="list-group-item">Category 2</a>
                    <a href="#" class="list-group-item">Category 3</a>
                    <a href="#" class="list-group-item">Category 3</a>
                    <a href="#" class="list-group-item">Category 3</a>
                    <a href="#" class="list-group-item">Category 3</a>
                    <a href="#" class="list-group-item">Category 3</a>
                </div>
            </div> -->

			<div class="col-md-12"></div>
		</div>

	</div>
	<!-- /.container -->

	 <nav id="footer" style="height: 200px; margin-top:23% !important; ">
		<div class="container">
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
				<a style="font-family: 'Yellowtail', cursive; font-size: 50px; text-indent: 300t;" class="navbar-brand nombreFooter" href="Principal">Lucatic Motors</a>
				<div class="nombreNosotrosFooter">
					<h5 style="color: #ffffff!important; text-indent: -100pt">Realizado por:</h5>
		            <h5 style="color: #ffffff!important; text-indent: -50pt">Juan Carlos García Pérez</h5>
		            <h5 style="color: #ffffff!important; text-indent: -50pt">José Javier Girón Fortes</h5>
		            <h5 style="color: #ffffff!important; text-indent: -50pt">José Luis Marqués Sánchez</h5>
		            <h5 style="color: #ffffff!important; text-indent: -50pt">Francisco Jesús León Carrasco</h5>	
	            </div>            
			</div>	
		</div>
	</nav>
		<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
<body>

</body>
</html>