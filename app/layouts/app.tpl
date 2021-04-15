<!DOCTYPE HTML>
<html>
	<head>
		<!-- Metas -->
		<title><?= empty($title) ? "Apretaste" : "$title" ?></title>
		<link rel="canonical" href="https://www.apretaste.org">
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
		<meta name="description" content="<?= empty($description) ? '' : $description ?>">
		<meta name="keywords" content="<?= empty($keywords) ? '' : $keywords ?>">
		<meta name="author" content="Salvi Pascual">

		<!-- Icons -->
		<link rel="icon" href="<?= HTTP_BASE_PATH ?>/images/apretaste_icon_16x16.png" sizes="16x16" type="image/png"/>
		<link rel="icon" href="<?= HTTP_BASE_PATH ?>/images/apretaste_icon_32x32.png" sizes="32x32" type="image/png"/>
		<link rel="icon" href="<?= HTTP_BASE_PATH ?>/images/apretaste_icon_64x64.png" sizes="64x64" type="image/png"/>

		<!-- Twitter Card data -->
		<meta name="twitter:card" content="summary">
		<meta name="twitter:site" content="@apretaste">
		<meta name="twitter:title" content="<?= empty($title) ? 'Apretaste' : "$title" ?>">
		<meta name="twitter:description" content="<?= empty($description) ? '' : $description ?>">
		<meta name="twitter:creator" content="@apretaste">
		<meta name="twitter:image" content="<?= empty($feature) ? HTTP_BASE_PATH . '/images/feature/apretaste.png' : $feature ?>">

		<!-- Open Graph data -->
		<meta property="fb:app_id" content="285099284865702"/>
		<meta property="og:url" content="<?= HTTP_FULL_PATH ?>"/>
		<meta property="og:type" content="website"/>
		<meta property="og:locale" content="es_ES"/>
		<meta property="og:site_name" content="Apretaste: La red de amistad de Cuba"/>
		<meta property="og:title" content="<?= empty($title) ? "Apretaste" : "$title" ?>"/>
		<meta property="og:description" content="<?= empty($description) ? "" : $description ?>"/>
		<meta property="og:image" content="<?= empty($feature) ? HTTP_BASE_PATH . '/images/feature/apretaste.png' : $feature ?>"/>
		<meta property="og:image:alt" content="<?= empty($title) ? "Apretaste" : "$title" ?>"/>

		<!-- Styles -->
		<link rel="stylesheet" href="/css/main.css"/>
		<link rel="stylesheet" href="/css/custom.css"/>
		<noscript><link rel="stylesheet" href="/css/noscript.css"/></noscript>
	</head>
	<body class="is-preload">
		<!-- Header -->
		<section class="wrapper style1">
			<div class="inner align-center" style="padding-top:0px; padding-bottom:0px;">
				<img style="width:200px; margin-top:30px;" src="/images/apretaste_logo_300x108.png" alt="Apretaste">
			</div>
		</section>

		<!-- Content -->
		{TEMPLATE}

		<!-- Footer -->
		<footer id="download" class="wrapper style1 align-center-phone">
			<div class="inner">
				<h2>Descarga Apretaste</h2>
				<p>Apretaste es la red de amistad más divertida, libre y segura; hecha con ❤ para todos los cubanos.</p>

				<ul class="actions">
					<li><a onclick="sendAnalyticsEvent('download_btn', 'android')" href="<?= getDownloadLink('android') ?>" target="_blank" class="button primary icon brands fa-android">Android</a></li>
					<li><a onclick="sendAnalyticsEvent('download_btn', 'ios')" href="<?= getDownloadLink('ios') ?>" target="_blank" class="button primary icon brands fa-apple">iPhone</a></li>
					<li><a onclick="sendAnalyticsEvent('download_btn', 'apk')" href="<?= getDownloadLink('apk') ?>" target="_blank" class="button secondary icon solid fa-download">APK (14MB)</a></li>
				</ul>
			</div>
		</footer>

		<!-- Scripts -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdn.tutorialjinni.com/jquery.scrollex/0.2.1/jquery.scrollex.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery.scrolly/jquery.scrolly.min.js"></script>
		<script src="/js/browser.min.js"></script>
		<script src="/js/breakpoints.min.js"></script>
		<script src="/js/main.js"></script>

		<!-- Include Google Analytics, Facebook and Zendesk -->
		<?php include APP_PATH . "layouts/analytics.php" ?>
	</body>
</html>
