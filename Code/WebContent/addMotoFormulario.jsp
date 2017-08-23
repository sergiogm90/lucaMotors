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

    <title>A�adir Moto</title>

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
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a style="color:#777!important;"><strong>A�ade Moto</strong></a></li>
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a href="BuscarMoto " style="color:#ffffff!important;">Buscar Moto</a></li>
                    <li class="pull-right" style="font-family: 'Graduate', cursive;"><a href="AgregarUsuarioAdmin " style="color:#ffffff!important;">A�ade Usuario</a></li>
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
                        <h2>Insertar nueva Moto</h2>
                        <hr class="sep">
                        <div class="col-md-6 col-md-offset-3 wow fadeInUp" data-wow-delay=".3s">
                            <form metodo="get" action="AddMotoPost">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="marca" placeholder="Marca" name="marca">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="modelo" placeholder="Modelo" name="modelo">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="color" placeholder="Color" name="color">
                                </div>
                                <div class="form-group">
                                    <input type="double" class="form-control" id="largo" placeholder="Largo en metros" name="largo">
                                </div>
                                <div class="form-group">
                                    <input type="double" class="form-control" id="ancho" placeholder="Ancho en metros" name="ancho">
                                </div>
                                <div class="form-group">
                                    <input type="double" class="form-control" id="alto" placeholder="Alto en metros" name="alto">
                                </div>
                                <div class="form-group">
                                    <input type="double" class="form-control" id="peso" placeholder="Peso en Kg" name="peso">
                                </div>
                                <div class="form-group">
                                    <input type="double" class="form-control" id="capacidadDeposito" placeholder="Capacidad del deposito en litros" name="capacidadDeposito">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="modeloMotor" placeholder="Modelo del motor" name="modeloMotor">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="modeloChasis" placeholder="Modelo del chasis" name="modeloChasis">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="modeloSuspension" placeholder="Modelo de la suspension" name="modeloSuspension">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="modeloRuedas" placeholder="Modelo de las ruedas" name="modeloRuedas">
                                </div>
                                <div class="form-group">
                                    <input type="double" class="form-control" id="precio" placeholder="Precio" name="precio">
                                </div>
                                <div class="form-group">
                                    <input type="String" class="form-control" id="fotoMoto" placeholder="Introduzca la url de la foto" name="fotoMoto">
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
		            <h5 style="color: #ffffff!important; text-indent: -50pt">Juan Carlos Garc�a P�rez</h5>
		            <h5 style="color: #ffffff!important; text-indent: -50pt">Jos� Javier Gir�n Fortes</h5>
		            <h5 style="color: #ffffff!important; text-indent: -50pt">Jos� Luis Marqu�s S�nchez</h5>
		            <h5 style="color: #ffffff!important; text-indent: -50pt">Francisco Jes�s Le�n Carrasco</h5>	
	            </div>            
			</div>	
		</div>
	</nav>
		<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


</body>
</html>