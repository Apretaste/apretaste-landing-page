<!-- HEADER -->

<section id="home" class="wrapper style1">
	<div class="inner">
		<h1>Juega a la bolita de Cuba, consulta la charada</h1>
		<p>Apretaste es la red de amistad más grande de Cuba, donde te mantienes al tanto de los resultados de la bolita, revisas la charada, consultas tus números de la suerte y te diviertes de lo lindo.</p>
	</div>
</section>

<!-- SCREENSHOTS -->

<section id="screenshots" class="gallery style2 small">
	<?php foreach ($getBolitaScreenshots as $item) { ?>
		<article>
			<div class="image">
				<img src="/images/bolita/<?= $item->image ?>" alt="" />
			</div>
			<div class="caption">
				<h3><?= $item->title ?></h3>
			</div>
		</article>
	<?php } ?>
</section>

<!-- DOWNLOAD -->

<section id="download" class="spotlight style3 android invert orient-right content-align-left image-position-center">
	<div class="content">
		<h2>Descarga Apretaste</h2>
		<p>Descarga la app de Apretaste, haz amig@os y mantente al tanto de los resultados de la bolita.</p>
		<ul class="actions">
			<li><a onclick="sendAnalyticsEvent('download_btn', 'android')" href="<?= getDownloadLink('android') ?>" target="_blank" class="button primary icon brands fa-android">Android</a></li>
			<li><a onclick="sendAnalyticsEvent('download_btn', 'ios')" href="<?= getDownloadLink('ios') ?>" target="_blank" class="button primary icon brands fa-apple">iPhone</a></li>
		</ul>
	</div>
	<div class="image">
		<img src="/images/apretin_pointing.jpg" alt="" />
	</div>
</section>
