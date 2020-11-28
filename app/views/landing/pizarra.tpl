<!-- HEADER -->

<section id="home" class="wrapper style1">
	<div class="inner">
		<h1>La red social y de amistad de Cuba.</h1>
		<p>Haz amigos, entérate de las #tendencias, gana reputación, y habla lo que quieras, como quieras, y con quien quieras, de manera anónima y segura.</p>
	</div>
</section>

<!-- SCREENSHOTS -->

<section id="screenshots" class="gallery style2 small">
	<?php foreach ($getPizarraScreenshots as $item) { ?>
		<article>
			<div class="image">
				<img src="/images/screens/pizarra/<?= $item->image ?>" alt="<?= $item->title ?>" />
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
		<p>¿Sabes que nos hace especial?</p>

		<div class="items style1 small">
			<section>
				<span class="icon solid style2 major fa-bullhorn"></span>
				<h3>Habla libremente</h3>
				<p>Exprésate anónimamente. Dí lo que piensas y conoce gente como tú.</p>
			</section>
			<section>
				<span class="icon solid style2 major fa-fire"></span>
				<h3>Hazte popular</h3>
				<p>Propón un tema, busca seguidores, crea debate y gana reputación.</p>
			</section>
			<section>
				<span class="icon solid style2 major fa-address-card"></span>
				<h3>Créate un perfil</h3>
				<p>Coloca un perfil privado y ponte un avatar que te represente.</p>
			</section>
			<section>
				<span class="icon solid style2 major fa-shield-alt"></span>
				<h3>Navega seguro</h3>
				<p>Todas tus peticiones y tu data viajan encriptadas y seguras.</p>
			</section>
		</div>
	</div>
</section>

<!-- DOWNLOAD -->

<section id="download" class="spotlight style3 android invert orient-right content-align-left image-position-center">
	<div class="content">
		<h2>¡Descarga la App!</h2>
		<p>Descarga la app de Apretaste y comienza a hacer amigos, generar segidores y hablar como te dé la gana.</p>
		<ul class="actions">
			<li><a onclick="sendAnalyticsEvent('download_btn', 'android')" href="<?= getDownloadLink('android') ?>" target="_blank" class="button primary icon brands fa-android">Android</a></li>
			<li><a onclick="sendAnalyticsEvent('download_btn', 'ios')" href="<?= getDownloadLink('ios') ?>" target="_blank" class="button primary icon brands fa-apple">iPhone</a></li>
		</ul>
	</div>
	<div class="image">
		<img src="/images/phone/apretin_pointing.jpg" alt="Apretín" />
	</div>
</section>
