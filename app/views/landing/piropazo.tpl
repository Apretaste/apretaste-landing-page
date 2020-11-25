<!-- HEADER -->

<section id="home" class="wrapper style1">
	<div class="inner">
		<h1>La red de parejas más grande de Cuba.</h1>
		<p>¿Estás buscando a tu media naranja? Entra a Piropazo: la red de parejas más divertida, interactiva y con mayor cantidad de cuban@s.</p>
	</div>
</section>

<!-- SCREENSHOTS -->

<section id="screenshots" class="gallery style2 small">
	<?php foreach ($getPiropazoScreenshots as $item) { ?>
		<article>
			<div class="image">
				<img src="/images/piropazo/<?= $item->image ?>" alt="<?= $item->title ?>" />
			</div>
			<div class="caption">
				<h3><?= $item->title ?></h3>
			</div>
		</article>
	<?php } ?>
</section>

<!-- FEATURES -->

<section id="features" class="wrapper style1 align-center">
	<div class="inner">
		<h2>Características</h2>
		<p>Hay otras apps para citas en Cuba. ¿Sabes que nos hace especial?</p>

		<div class="items style1 small onscroll-fade-in">
			<section>
				<span class="icon style2 major fa-thumbs-up"></span>
				<h3>Fácil de usar</h3>
				<p>Dale "Sí" cuando alguien te guste, o "No" para seguir buscando.</p>
			</section>
			<section>
				<span class="icon solid style2 major fa-fan"></span>
				<h3>Envía Flores</h3>
				<p>Envía flores a tus citas y asegúrate que nunca pasas desapercibido.</p>
			</section>
			<section>
				<span class="icon solid style2 major fa-comment-slash"></span>
				<h3>Nada de SPAM</h3>
				<p>Habla con tus parejas solo cuando ambos digan "Sí".</p>
			</section>
			<section>
				<span class="icon solid style2 major fa-users"></span>
				<h3>250K+ Cubanos</h3>
				<p>Accede a la app social con mayor cantidad de cubanos en línea.</p>
			</section>
		</div>
	</div>
</section>

<!-- DOWNLOAD -->

<section id="download" class="spotlight style3 android invert orient-right content-align-left image-position-center">
	<div class="content">
		<h2>¡Descarga la App!</h2>
		<p>Descarga la app de Apretaste, entra al servicio Piropazo y comienza a buscar a tu media naranja.</p>
		<ul class="actions">
			<li><a onclick="sendAnalyticsEvent('download_btn', 'android')" href="<?= getDownloadLink('android') ?>" target="_blank" class="button primary icon brands fa-android">Android</a></li>
			<li><a onclick="sendAnalyticsEvent('download_btn', 'ios')" href="<?= getDownloadLink('ios') ?>" target="_blank" class="button primary icon brands fa-apple">iPhone</a></li>
		</ul>
	</div>
	<div class="image">
		<img src="/images/apretin_pointing.jpg" alt="" />
	</div>
</section>
