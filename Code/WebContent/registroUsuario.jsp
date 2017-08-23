<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <title>Registrar Usuario</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">

    <!-- Bootstrap Css -->
    <link href="bootstrap-assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Style -->
    <link href="plugins/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="plugins/owl-carousel/owl.theme.css" rel="stylesheet">
    <link href="plugins/owl-carousel/owl.transitions.css" rel="stylesheet">
    <link href="plugins/Lightbox/dist/css/lightbox.css" rel="stylesheet">
    <link href="plugins/Icons/et-line-font/style.css" rel="stylesheet">
    <link href="plugins/animate.css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <!-- Icons Font -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <!-- Preloader
	============================================= -->
	 
    <div class="preloader"><i class="fa fa-circle-o-notch fa-spin fa-2x"></i></div>
    <!-- Header
	============================================= -->
    <section class="main-header">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <h3 class="">LUCATIC MOTORS</h3>
                     <!-- <a class="navbar-brand" href="#"><img src="img/logo/logo.png" class="img-responsive" alt="logo"></a> -->
                </div>
                <div class="collapse navbar-collapse text-center" id="bs-example-navbar-collapse-1">
                    <div class="col-md-8 col-xs-12 nav-wrap">
                        <ul class="nav navbar-nav">
                            <li><a href="#owl-hero" class="page-scroll">Home</a></li>
                            <li><a href="#services" class="page-scroll">Services</a></li>
                            <li><a href="#portfolio" class="page-scroll">Works</a></li>
                            <li><a href="#team" class="page-scroll">About</a></li>
                            <li><a href="#contact" class="page-scroll">Contact</a></li>
                        </ul>
                    </div>
                    <div class="social-media hidden-sm hidden-xs">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        
    </section>

  
   
    <!-- Registro nuevo usuario
	============================================= -->
    <section id="contact">
        <div class="container">
           <br/>
            <h2>Registro nuevo Usuario</h2>
            <hr class="sep">
            <div class="col-md-6 col-md-offset-3 wow fadeInUp" data-wow-delay=".3s">
                <form action="RegistrarUsuarioPost" method="get">
                    <div class="form-group">
                        <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="apellido1" placeholder="1º Apellido" name="apellido1">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="apellido2" placeholder="2º Apellido" name="apellido2">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="dni" placeholder="DNI" name="dni">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="direccion" placeholder="Direccion" name="direccion">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="telefono" placeholder="Telefono" name="telefono">
                    </div>  
                    <div class="form-group">
                        <input type="text" class="form-control" id="email" placeholder="Email" name="email">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="pass" placeholder="Password" name="pass">
                    </div>  
                    <div class="form-group">
                        <input type="date" class="form-control" id="fecha" placeholder="Fecha Nacimiento" name="fecha">
                    </div>       
                    <input type="submit" class="btn-block"/>         

                </form>
            </div>
        </div>
    </section>
    <!-- Google Map
	============================================= -->
    
    <!-- Footer
	============================================= -->
    <footer>
        <div class="container">
            <h1>LUCATIC Motors <small>&reg;</small></h1>
            <div class="social">
                <a href="#"><i class="fa fa-facebook fa-2x"></i></a>
                <a href="#"><i class="fa fa-twitter fa-2x"></i></a>
                <a href="#"><i class="fa fa-dribbble fa-2x"></i></a>
            </div>
            <h6>Realizado por:</h6>
            <h6>Juan Carlos</h6>
            <h6>Jose Javier</h6>
            <h6>Jose Luis</h6>
            <h6>Francisco Jesus</h6>
            
        </div>
    </footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap-assets/js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- JS PLUGINS -->
    <script src="plugins/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="plugins/waypoints/jquery.waypoints.min.js"></script>
    <script src="plugins/countTo/jquery.countTo.js"></script>
    <script src="plugins/inview/jquery.inview.min.js"></script>
    <script src="plugins/Lightbox/dist/js/lightbox.min.js"></script>
    <script src="plugins/WOW/dist/wow.min.js"></script>
    <!-- GOOGLE MAP -->
    <script src="https://maps.googleapis.com/maps/api/js"></script>

</body>
</html>