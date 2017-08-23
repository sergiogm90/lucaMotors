<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Inicio</title>

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
    <link href="https://fonts.googleapis.com/css?family=Yellowtail" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/busqueda.css" />
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

                     <!-- <a class="navbar-brand" href="#"><img src="img/logo/logo.png" class="img-responsive" alt="logo"></a> -->
                </div>
                <div class="collapse navbar-collapse text-center" id="bs-example-navbar-collapse-1">

                        <a style="font-family: 'Yellowtail', cursive;	font-size: 50px; " class="navbar-brand   lucaNombre " href="Principal">Lucatic Motors</a>

                </div>
            </div>
        </nav>
        <div id="owl-hero" >
            <div class="item" style="background-image: url(img/sliders/moto.jpg)">
                <div class="caption">
                    <h6>La exclusividad hecha moto</h6>
                    <h1>Vendemos<span>LIBERTAD</span></h1>
                    <a class="btn btn-transparent" href="#contact">Login</a>
                    <a class="btn btn-light" href="Principal">Acceder</a>
                </div>
            </div>  
            <div class="item" style="background-image: url(img/sliders/moto2.jpg)">
                <div class="caption">
                    <h6>La exclusividad hecha moto</h6>
                    <h1>Vendemos<span>LIBERTAD</span></h1>
                    <a class="btn btn-transparent" href="#contact">Login</a>
                    <a class="btn btn-light" href="Principal">Acceder</a>
                </div>
            </div>  
            <div class="item" style="background-image: url(img/sliders/moto3.jpg)">
                <div class="caption">
                    <h6>La exclusividad hecha moto</h6>
                    <h1>Vendemos<span>LIBERTAD</span></h1>
                    <a class="btn btn-transparent" href="#contact">Login</a>
                    <a class="btn btn-light" href="Principal">Acceder</a>
                </div>
            </div>                       
        </div>
    </section>

    <!-- Welcome
	============================================= -->
   

    <!-- Services
	============================================= -->
    

    <!-- Portfolio
	============================================= -->
    
    <!-- Work Process
	
    <!-- Some Fune Facts
	============================================= -->
   
    <!-- Some Fune Facts
	============================================= -->
   
    <!-- Testimonials
	============================================= -->
   
    <!-- Contact Us
	============================================= -->
    <section id="contact">
        <div class="container">
            <h2>login</h2>
            <hr class="sep">
            <div class="col-md-6 col-md-offset-3 wow fadeInUp" data-wow-delay=".3s">
                <form action="UserLogged" method="get">
                    <div class="form-group">
                        <input type="text" class="form-control" id="email" placeholder="Email" name="email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="password" placeholder="Password" name="password">
                    </div>
                    <input type="submit" class="btn-block"/>                   

                </form>
                <a href="AgregarUsuario">¿Todavia no tienes cuenta? REGISTRATE</a>
            </div>
        </div>
    </section>
    <!-- Google Map
	============================================= -->
    
    <!-- Footer
	============================================= -->
    <footer class="footer">
        <div class="container">
            <h1 class="footer">LUCATIC Motors <small>&reg;</small></h1>
            <h6 class="footer">Realizado por:</h6>
            <h6 class="footer">Juan Carlos</h6>
            <h6 class="footer">Jose Javier</h6>
            <h6 class="footer">Jose Luis</h6>
            <h6 class="footer">Francisco Jesus</h6>
            
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