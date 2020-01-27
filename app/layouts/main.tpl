<!DOCTYPE html>
<html lang="en">
<head>
	<title><?= $title ?></title>
	<link rel="icon" href="/images/apretaste_icon_16x16.png" sizes="16x16" type="image/png"/>
	<link rel="icon" href="/images/apretaste_icon_32x32.png" sizes="32x32" type="image/png"/>
	<link rel="icon" href="/images/apretaste_icon_64x64.png" sizes="64x64" type="image/png"/>
	<link rel="canonical" href="https://apretaste.com">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Conéctate a la internet por Nauta. Redes Sociales, Noticias, Web, Entretenimiento y mucho más.">
	<meta name="author" content="Salvi Pascual">

	<!-- Twitter Card data -->
	<meta name="twitter:card" content="summary">
	<meta name="twitter:site" content="@apretaste">
	<meta name="twitter:title" content="Conéctate a la internet por Nauta">
	<meta name="twitter:description" content="Revisa las Redes Sociales, Noticias, Web, Entretenimiento y mucho más. Todo desde la comodidad de tu casa, y gratuitamente.">
	<meta name="twitter:creator" content="@apretaste">
	<meta name="twitter:image" content="/images/FeatureGraphic.png">

	<!-- Open Graph data -->
	<meta name="fb:app_id" content="285099284865702" />
	<meta name="og:url" content="https://apretaste.com" />
	<meta name="og:type" content="website" />
	<meta name="og:locale" content="es_ES" />
	<meta name="og:locale:alternate" content="en_US" />
	<meta name="og:site_name" content="Apretaste" />
	<meta name="og:title" content="Conéctate a la internet por Nauta." />
	<meta name="og:description" content="Revisa las Redes Sociales, Noticias, Web, Entretenimiento y mucho más. Todo desde la comodidad de tu casa, y gratuitamente." />
	<meta name="og:image" content="/images/FeatureGraphic.png" />

	<!-- Bootstrap Core CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

	<!-- Custom CSS -->
	<link href="/css/welcome.css" rel="stylesheet">

	<!-- Custom Fonts -->
	<link rel="stylesheet" href="https://use.fontawesome.com/ce30911281.css">
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- jquery & boostrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Navigation -->
	<a id="menu-download" href="/#download" class="btn btn-dark btn-lg toggle">Descargar</a>
	<a id="menu-donate" href="/donate" class="btn btn-dark btn-lg toggle">Donar</a>
	<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>

	<nav id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
			<li class="sidebar-brand"><a href="/#top">Apretaste</a></li>

			<li><a href="/#problem">Problema</a></li>
			<li><a href="/#idea">Solución</a></li>
			<li><a href="/#mission">Misión</a></li>
			<li><a href="/#services">Servicios</a></li>
			<li><a href="/#testimonials">Testimonios</a></li>
			<li><a href="/#team">Conózcanos</a></li>
			<li><a href="/#download">Descargar</a></li>
			<li><a href="/#contact">Contáctanos</a></li>
			<li><a href="http://cubacrece.com" target="_blank">Eventos <i class="fa fa-external-link"></i></i></a></li>
			<li><a href="http://apretaste.blog" target="_blank">Blog <i class="fa fa-bullhorn"></i></a></li>
		</ul>
	</nav>

	{TEMPLATE}

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-xs-12 text-center">
					<hr class="small">
					<p class="small">A COPY OF THE OFFICIAL REGISTRATION AND FINANCIAL INFORMATION MAY BE OBTAINED FROM THE DIVISION OF CONSUMER SERVICES BY CALLING TOLL-FREE WITHIN THE STATE 1-800-HELPFLA, OR VIA THE INTERNET AT WWW.800HELPFLA.COM. REGISTRATION DOES NOT IMPLY ENDORSEMENT, APPROVAL, OR RECOMMENDATION BY THE STATE.</p>
					<p><a href="/privacy" title="Póliza de Privacidad">Póliza de Privacidad</a></p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Go to www.addthis.com/dashboard to customize your tools -->
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-55b53cc3acee4add" async="async"></script>

	<!-- google graph -->
	<script type='text/javascript' src='https://www.google.com/jsapi'></script>

	<script type='text/javascript'>
		// Closes the sidebar menu
		$("#menu-close").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});

		// Opens the sidebar menu
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});
	</script>

	<!-- google analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-49715278-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', 'UA-49715278-1');
	</script>
</body>
</html>
