<!DOCTYPE HTML>
<html>
	<head>
		<!-- Metas -->
		<title>Apretaste: <?= $title ?></title>
		<link rel="canonical" href="https://www.apretaste.org">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="Apretaste es la app social de todos los cubanos, para conocer e intercambiar con miles de personas, decir lo que piensas libremente, participar en sorteos, concursos y entretenimiento constante, buscar pareja, leer las noticias diariamente y más. Todo gratuitamente y con mínimo consumo de datos móviles.">
		<meta name="keywords" content="apretaste, cuba, red social cuba, chat cuba, apretaste cuba, ">
		<meta name="author" content="Salvi Pascual">

		<!-- Icons -->
		<link rel="icon" href="/images/apretaste_icon_16x16.png" sizes="16x16" type="image/png"/>
		<link rel="icon" href="/images/apretaste_icon_32x32.png" sizes="32x32" type="image/png"/>
		<link rel="icon" href="/images/apretaste_icon_64x64.png" sizes="64x64" type="image/png"/>

		<!-- Twitter Card data -->
		<meta name="twitter:card" content="summary">
		<meta name="twitter:site" content="@apretaste">
		<meta name="twitter:title" content="Apretaste: Haz amigos, habla libremente.">
		<meta name="twitter:description" content="Apretaste es la app social de todos los cubanos, para conocer e intercambiar con miles de personas, decir lo que piensas libremente, participar en sorteos, concursos y entretenimiento constante, buscar pareja, leer las noticias diariamente y más. Todo gratuitamente y con mínimo consumo de datos móviles.">
		<meta name="twitter:creator" content="@apretaste">
		<meta name="twitter:image" content="/images/social.png">

		<!-- Open Graph data -->
		<meta name="fb:app_id" content="285099284865702" />
		<meta name="og:url" content="https://www.apretaste.org" />
		<meta name="og:type" content="website" />
		<meta name="og:locale" content="es_ES" />
		<meta name="og:locale:alternate" content="en_US" />
		<meta name="og:site_name" content="Apretaste" />
		<meta name="og:title" content="Apretaste: Haz amigos, habla libremente." />
		<meta name="og:description" content="Apretaste es la app social de todos los cubanos, para conocer e intercambiar con miles de personas, decir lo que piensas libremente, participar en sorteos, concursos y entretenimiento constante, buscar pareja, leer las noticias diariamente y más. Todo gratuitamente y con mínimo consumo de datos móviles." />
		<meta name="og:image" content="/images/social.png" />

		<!-- Styles -->
		<link rel="stylesheet" href="css/main.css" />
		<link rel="stylesheet" href="css/custom.css" />
		<noscript><link rel="stylesheet" href="css/noscript.css" /></noscript>

		<!-- Facebook Pixel Code -->
		<script nonce="WVogQPRe">
		!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
		n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
		n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
		t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
		document,'script','https://connect.facebook.net/en_US/fbevents.js');

		fbq('init', '371172900887647');
		fbq('set','agent','tmgoogletagmanager', '371172900887647');
		fbq('track', "PageView");
		</script>
		<noscript><img height="1" width="1" style="display:none"
		src="https://www.facebook.com/tr?id=371172900887647&ev=PageView&noscript=1"
		/></noscript>
		<!-- End Facebook Pixel Code -->
	</head>
	<body class="is-preload">
		<!-- Floating -->
		<div id="floating-menu">
			<ul class="icons">
				<li><a href="#download" class="icon solid style2 fa-download smooth-scroll-middle"><span class="label">Descargar</span></a></li>
				<li><a href="/donate" target="_blank" class="icon solid style2 fa-hand-holding-usd"><span class="label">Donar</span></a></li>
			</ul>
		</div>

		<!-- Content -->
		<div id="wrapper" class="divided">
			{TEMPLATE}

			<!-- Footer -->
			<footer class="wrapper style1 align-center">
				<div class="inner">
					<div class="items style1 medium">
						<!-- contact -->
						<section>
							<h3>¿Necesitas ayuda?</h3>
							<ul class="actions stacked">
								<li>
									<span class="icon brands style1 fa-whatsapp"></span>
									<span class="icon solid style1 fa-phone"></span>
									<span class="label padding-left-tiny">+1 (305) 457-1656
								</li>
								<li>
									<span class="icon solid style1 fa-envelope"></span>
									<a href="mailto:salvi@apretaste.org" target="_blank">
										<span class="label padding-left-tiny">salvi@apretaste.org</span>
									</a>
								</li>
							</ul>
						</section>

						<!-- Links -->
						<section>
							<ul class="actions stacked">
								<li>
									<span class="icon solid style1 fa-hand-holding-usd"></span>
									<a href="/donate" target="_blank">
										<span class="label padding-left-tiny">Ayúdanos donando</span>
									</a>
								</li>
								<li>
									<span class="icon solid style1 fa-code"></span>
									<a href="http://cubacrece.com" target="_blank">
										<span class="label padding-left-tiny">Únete a Cuba Crece</span>
									</a>
								</li>
								<li>
									<span class="icon solid style1 fa-ad"></span>
									<a href="https://anuncios.apretaste.org" target="_blank">
										<span class="label padding-left-tiny">Anúnciate en Apretaste</span>
									</a>
								</li>
								<li>
									<span class="icon solid style1 fa-user-secret"></span>
									<a href="/privacy">
										<span class="label padding-left-tiny">Póliza de seguridad</span>
									</a>
								</li>
							</ul>
						</section>

						<!-- social -->
						<section>
							<h3>¡Búscanos en las redes!</h3>
							<ul class="icons">
								<?php foreach ($socialLinks as $item) { ?>
									<li class="fix-items-alignment">
										<a href="<?= $item->link ?>" target="_blank" class="icon brands style2 <?= $item->icon ?>">
											<span class="label"><?= $item->caption ?></span>
										</a>
									</li>
								<?php } ?>
							</ul>
						</section>
					</div>
					<p class="small">A COPY OF THE OFFICIAL REGISTRATION AND FINANCIAL INFORMATION MAY BE OBTAINED FROM THE DIVISION OF CONSUMER SERVICES BY CALLING TOLL-FREE WITHIN THE STATE 1-800-HELPFLA, OR VIA THE INTERNET AT WWW.800HELPFLA.COM. REGISTRATION DOES NOT IMPLY ENDORSEMENT, APPROVAL, OR RECOMMENDATION BY THE STATE.</p>
					<p>&copy; <?= date('Y')?>. Agora Cuba Inc.</p>
				</div>
			</footer>
		</div>

		<!-- Scripts -->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.scrollex.min.js"></script>
		<script src="js/jquery.scrolly.min.js"></script>
		<script src="js/browser.min.js"></script>
		<script src="js/breakpoints.min.js"></script>
		<script src="js/util.js"></script>
		<script src="js/main.js"></script>

		<!-- google analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-49715278-1"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag(){dataLayer.push(arguments);}
			gtag('js', new Date());
			gtag('config', 'UA-49715278-1');
		</script>

		<!-- Zendesk Widget -->
		<script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=e21187ac-4d56-4c8a-85f3-89d824515b57"></script>
	</body>
</html>
