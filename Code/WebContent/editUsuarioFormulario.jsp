<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <title>Editar Usuario</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">

    <!-- Bootstrap Css -->
    <link href="bootstrap-assets/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <!-- Style -->
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
			<a   style="font-family: 'Yellowtail', cursive;	font-size: 50px; " class="navbar-brand lucaticMotorsNombre" href="AdministrarWeb">Lucatic Motors</a>
			
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

           

            <div class="col-md-12">
                <section id="contact">
                    <div class="container thumbnail col-md-12" >
           <br/>
            <h2>Actualizar Usuario</h2>
            <hr class="sep">
                        <div class="col-md-6 col-md-offset-3 wow fadeInUp" data-wow-delay=".3s">
                <form method="post"action="editUsuarioGet">
                               
                	<div class="form-group" hidden>
                        <input type="text" class="form-control" id="idUsuarios" placeholder="idUsuarios" value="${usuario.idUsuarios}"name="idUsuarios">
                    </div>
                    <div class="form-group" >
                        <input type="text" readonly="readonly" class="form-control" id="dni" placeholder="DNI" value="${usuario.dni}"name="dni">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="nombre" placeholder="Nombre" value="${usuario.nombre}" name="nombre">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="apellido1" value="${usuario.apellido1}" placeholder="1º Apellido" name="apellido1">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="apellido2" placeholder="2º Apellido" value="${usuario.apellido2}"name="apellido2">
                    </div>
                   
                    <div class="form-group">
                        <input type="text" class="form-control" id="direccion" placeholder="Direccion" value="${usuario.direccion}"name="direccion">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="telefono" placeholder="Telefono"value="${usuario.telefono}" name="telefono">
                    </div>  
                    <div class="form-group">
                        <input type="text" class="form-control" id="email" placeholder="Email" value="${usuario.email}"name="email">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="pass" placeholder="Password" value="${usuario.password}"name="pass">
                    </div>  
                    <div class="form-group">
                        <input type="date" class="form-control" id="fecha" placeholder="Fecha Nacimiento" value="${usuario.fechaNac}"name="fecha">
                    </div>       
                    <input type="submit" class="btn-block"/>         
                </form>
                        </div>
                    </div>
                </section>
            </div>
        </div>

    </div>
    <!-- /.container -->
   <nav id="footer" style="height: 200px ">
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

</body>
</html>