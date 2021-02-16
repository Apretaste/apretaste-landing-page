<!DOCTYPE HTML>
<html>
	<head>
		<!-- Metas -->
		<title><?= empty($title) ? "Apretaste" : "Apretaste: $title" ?></title>
		<link rel="canonical" href="https://www.apretaste.org">
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
		<meta name="description" content="<?= empty($description) ? "" : $description ?>">
		<meta name="keywords" content="<?= empty($keywords) ? "" : $keywords ?>">
		<meta name="author" content="Salvi Pascual">

		<!-- Icons -->
		<link rel="icon" href="/images/apretaste_icon_16x16.png" sizes="16x16" type="image/png"/>
		<link rel="icon" href="/images/apretaste_icon_32x32.png" sizes="32x32" type="image/png"/>
		<link rel="icon" href="/images/apretaste_icon_64x64.png" sizes="64x64" type="image/png"/>

		<!-- Twitter Card data -->
		<meta name="twitter:card" content="summary">
		<meta name="twitter:site" content="@apretaste">
		<meta name="twitter:title" content="<?= empty($title) ? "Apretaste" : "Apretaste: $title" ?>">
		<meta name="twitter:description" content="<?= empty($description) ? "" : $description ?>">
		<meta name="twitter:creator" content="@apretaste">
		<meta name="twitter:image" content="/images/feature/<?= empty($feature) ? "apretaste" : $feature ?>.png">

		<!-- Open Graph data -->
		<meta property="fb:app_id" content="285099284865702"/>
		<meta property="og:url" content="<?= HTTP_FULL_PATH ?>"/>
		<meta property="og:type" content="website"/>
		<meta property="og:locale" content="es_ES"/>
		<meta property="og:site_name" content="Apretaste: La red de amistad de Cuba"/>
		<meta property="og:title" content="<?= empty($title) ? "Apretaste" : "Apretaste: $title" ?>"/>
		<meta property="og:description" content="<?= empty($description) ? "" : $description ?>"/>
		<meta property="og:image" content="<?= HTTP_BASE_PATH ?>/images/feature/<?= empty($feature) ? "apretaste" : $feature ?>.png"/>
		<meta property="og:image:alt" content="<?= empty($title) ? "Apretaste" : "$title" ?>"/>

		<!-- Styles -->
		<link rel="stylesheet" href="/css/main.css"/>
		<link rel="stylesheet" href="/css/custom.css"/>
		<noscript><link rel="stylesheet" href="/css/noscript.css"/></noscript>

		<!-- Facebook Pixel Code -->
		<?php if(IS_PRODUCTION) { ?>
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
			<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=371172900887647&ev=PageView&noscript=1"/></noscript>
		<?php } ?>
		<!-- End Facebook Pixel Code -->
	</head>
	<body class="is-preload">
		<!-- Floating Menu -->
		<?php if (!empty($navigation)) { ?>
			<div id="floating-menu">
				<ul class="icons">
					<?php if(in_array("back", $navigation)) { ?>
						<li><a href="/" class="icon solid style2 fa-arrow-left"><span class="label">Atrás</span></a></li>
					<?php } ?>
					<?php if(in_array("download", $navigation)) { ?>
						<li><a href="#download" class="icon solid style2 fa-download smooth-scroll-middle"><span class="label">Descargar</span></a></li>
					<?php } ?>
					<?php if(in_array("donate", $navigation)) { ?>
						<li><a onclick="sendAnalyticsEvent('donate_btn', 'donate')" href="/donate" target="_blank" class="icon solid style2 fa-hand-holding-usd"><span class="label">Donar</span></a></li>
					<?php } ?>
				</ul>
			</div>
		<?php } ?>

		<!-- Content -->
		<div id="wrapper" class="divided">
			{TEMPLATE}

			<!-- Footer -->
			<?php if (empty($hideFooter)) { ?>
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
										<span class="label padding-left-tiny">+1 (510) 457-1656
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
										<a onclick="sendAnalyticsEvent('donate_btn', 'donate')" href="/donate" target="_blank">
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
											<a onclick="sendAnalyticsEvent('social_btn', '<?= $item->caption ?>')" href="<?= $item->link ?>" target="_blank" class="icon brands style2 <?= $item->icon ?>">
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
			<?php } ?>
		</div>

		<!-- Scripts -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdn.tutorialjinni.com/jquery.scrollex/0.2.1/jquery.scrollex.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery.scrolly/jquery.scrolly.min.js"></script>
		<script src="/js/browser.min.js"></script>
		<script src="/js/breakpoints.min.js"></script>
		<script src="/js/main.js"></script>
<!--
		<script src="/js/jquery.min.js"></script>
		<script src="/js/jquery.scrollex.min.js"></script>
		<script src="/js/jquery.scrolly.min.js"></script>
		<script src="/js/util.js"></script>
-->

		<!-- google analytics -->
		<?php if(IS_PRODUCTION) { ?>
			<script async src="https://www.googletagmanager.com/gtag/js?id=UA-49715278-1"></script>
			<script>
				window.dataLayer = window.dataLayer || [];
				function gtag(){dataLayer.push(arguments);}
				gtag('js', new Date());
				gtag('config', 'UA-49715278-1');
			</script>
		<?php } ?>

		<!-- google analytics events -->
		<script>
			function sendAnalyticsEvent (category, action) {
				<?php if(IS_PRODUCTION) { ?>
					gtag('event', action, {'event_category': category});
				<?php } else { ?>
					console.log('category: ' + category + ', action: ' + action);
				<?php } ?>
			}
		</script>

		<!-- zendesk widget -->
		<?php if(IS_PRODUCTION) { ?>
			<script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=e21187ac-4d56-4c8a-85f3-89d824515b57"></script>
		<?php } ?>
	</body>
</html>
