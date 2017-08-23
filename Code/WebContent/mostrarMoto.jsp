<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>

            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="description" content="">
            <meta name="author" content="">

            <title>${moto.modelo}</title>

            <!-- Bootstrap Core CSS -->
            <link href="css/bootstrap.min.css" rel="stylesheet">

            <!-- Custom CSS -->
            <link href="css/shop-item.css" rel="stylesheet">
            <link rel="stylesheet" type="text/css" href="css/h3_Motos.css" />

            <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
            <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
            <link href="https://fonts.googleapis.com/css?family=Graduate|Jura|Monoton" rel="stylesheet">
            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
            <link rel="stylesheet" type="text/css" href="css/busqueda.css" />
            <link href="https://fonts.googleapis.com/css?family=Graduate|Jura|Monoton" rel="stylesheet">

            <link href="https://fonts.googleapis.com/css?family=Yellowtail" rel="stylesheet">
        </head>

        <body>

            <nav id="nav" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                        <a><img class="imagenLogo" src="img/motos/logo2.png" width="100px" /></a> <a style="font-family: 'Yellowtail', cursive; font-size: 50px;" class="navbar-brand lucaticMotorsNombre" href="Principal">Lucatic
				Motors</a>
                        <ul class="nav navbar-nav pull-right imagenDesloguear">

                            <li class="pull-right ">
                                <a href="Desloguear " style="color: #ffffff !important;">
                                    <div>
                                        <span class="glyphicon glyphicon-off"></span>
                                    </div>
                                </a>
                            </li>
                            <c:if test="${cliente.nombre ne null }">
                                <li style="color: #ffffff !important;" class="pull-right" style="font-family: 'Graduate', cursive;"><a href="# " style="color: #ffffff !important;">${cliente.nombre}</a></li>
                            </c:if>
                            <c:if test="${cliente.nombre eq null}">
                                <li class="pull-right" style="font-family: 'Graduate', cursive;"><a href="Desloguear " style="color: #ffffff !important;">Login</a></li>
                            </c:if>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container -->
            </nav>

            <!-- Page Content -->
            <div class="container" style="margin-top: 80px">

                <div id="contenedor" class="row">

                    <div class="col-md-3">
                        <div>
                            <form id="" action="Buscador" style="display: inline;" method="post">
                                <div class="input-group">
                                    <input class="form-control" type="text" id="caja_de_busqueda" name="buscador" placeholder="Introduce tu búsqueda..." />
                                    <span class="input-group-btn">
							<input class="btn btn-default busc" type="submit" id="boton_de_buscar" value="Buscar" />
							</span>
                                </div>
                            </form>
                        </div>
                        <div class="list-group" style="margin-top: 20px">
                            <a href="BuscadorMarcaYamaha" name="yamaha" class="list-group-item"><img class="logoMotos" src="img/motos/logo_Yamaha.png" width="25px" height="25px" /><strong>Yamaha</strong></a>
                            <a href="BuscadorMarcaHonda" class="list-group-item"><img class="logoMotos" src="img/motos/logo_honda.png" width="25px" height="25px" /><strong>Honda</strong></a>
                            <a href="BuscadorMarcaSuzuki" class="list-group-item"><img class="logoMotos" src="img/motos/logo_Suzuki2.png" width="25px" height="25px" /><strong>Suzuki</strong></a>
                            <a href="BuscadorMarcaKtm" class="list-group-item"><img class="logoMotos" src="img/motos/logo_ktm.jpg" height="25px" /><strong>KTM</strong></a>
					        <a href="BuscadorMarcaBmw" class="list-group-item"><img class="logoMotos" src="img/motos/logo_bmw.png" width="25px" height="25px"/><strong>BMW</strong></a>
                            <a href="BuscadorMarcaDucati" class="list-group-item"><img class="logoMotos" src="img/motos/logo_ducati.png" width="25px" height="25px" /><strong>Ducati</strong></a>
                        </div>
                    </div>

                    <div class="col-md-9">

                        <div class="thumbnail">
                            <img class="img-responsive" src="${moto.fotoMoto }" alt="">
                            <div class="caption-full">
                                <h4 class="pull-right">${moto.precio}0€</h4>
                                <h3>${moto.marca}
                                    <small>${moto.modelo}</small>
						</h3>

					</div>

				</div>

				<div class="well">

					<div class="text-right">
						<h3 class="pull-left"><strong>Características Técnicas</strong></h3>
						<a class="btn btn-success busc">Comprar</a>
					</div>
<br/>
					<hr>

					<div class="row">
						<div class="col-md-12">
							<dl>
								<dt>
									<h4>Dimensiones</h4>
								</dt>
								<dd style="text-indent: 25pt"><u>Largo:</u> ${moto.largo }mm</dd>
								<dd style="text-indent: 25pt"><u>Ancho:</u> ${moto.ancho }mm</dd>
								<dd style="text-indent: 25pt"><u>Alto:</u> ${moto.alto }mm</dd>
								<dt>
									<h4>Aspecto</h4>
								</dt>
								<dd style="text-indent: 25pt"><u>Color:</u> ${moto.color }</dd>
							</dl>
						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-md-12">
							<dl>
								<dt>
									<h4>Motor</h4>
								</dt>
								<dd style="text-indent: 25pt"><u>Modelo de motor:</u> ${moto.modeloMotor }</dd>
								<dd style="text-indent: 25pt"><u>Capacidad del deposito:</u> ${moto.capacidadDeposito }L</dd>
							</dl>
						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-md-12">
							<dl>
								<dt>
									<h4>Parte ciclo</h4>
								</dt>
								<dd style="text-indent: 25pt"><u>Tipo de chasis:</u> ${moto.modeloChasis}</dd>
								<dd style="text-indent: 25pt"><u>Suspensión delantera/trasera:</u> ${moto.modeloSuspension}</dd>
								<dd style="text-indent: 25pt"><u>Neumatico delantero/trasero:</u> ${moto.modeloRuedas}</dd>
								<dd style="text-indent: 25pt"><u>Peso:</u> ${moto.peso}kg</dd>
							</dl>
						</div>
					</div>

				</div>


				<div class="row">
<div >
						<c:if test="${motosRelacionadas eq true}" ><h3  style="font-family: 'Graduate', cursive;">Sugerencias</h3><hr></c:if>
					</div>	
					<c:forEach var="moto" items="${sugerencias}">
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<a href="MostrarMoto?idMoto=${moto.idMoto}"><img src="${moto.fotoMoto}" alt="${moto.modelo}" width="500px" /></a>
								<div class="caption">
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

				<!--<div class="row">
					<div class="col-sm-4 col-lg-4 col-md-4">
						<div class="thumbnail">
							<a href="#"><img src="#" alt="" width="500px" /></a>
							<div class="caption">
								<h4 class="pull-right">dfnfgn</h4>
								<p>
									<strong>fnfgmn</strong>
								</p>
								<h4>
									<a href="#">erdnr</a>
								</h4>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<a href="#"><img src="#" alt="" width="500px" /></a>
								<div class="caption">
									<h4 class="pull-right">dfnfgn</h4>
									<p>
										<strong>fnfgmn</strong>
									</p>
									<h4>
										<a href="#">erdnr</a>
									</h4>
								</div>
							</div>
						</div>


					</div>
				</div>-->
	</div>
			</div>
		</div>
	</div>
	
<!-- /.container -->
	<nav id="footer" >
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
