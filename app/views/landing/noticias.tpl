<!-- HEADER -->

<section id="home" class="wrapper style1">
	<div class="inner">
		<h1>Lee lo último que pasa en Cuba, debate las noticias y haz amigos.</h1>
		<p>Apretaste es la red de información y debate más grande de Cuba; con decenas de fuentes noticiosas, red social, amistad y chat. Lee y debate libremente las noticias de Diario de Cuba, CubaNet, Martí Noticias, Granma, Android4All, TecnoLike y mucho más.</p>
	</div>
</section>

<!-- SCREENSHOTS -->

<section id="screenshots" class="gallery style2 small">
	<?php foreach ($newsScreenshots as $item) { ?>
		<article>
			<div class="image">
				<img src="/images/news/<?= $item->image ?>" alt="" />
			</div>
			<div class="caption">
				<h3><?= $item->title ?></h3>
			</div>
		</article>
	<?php } ?>
</section>

<!-- BRANDS -->

<section id="brands" class="gallery style2 small">
	<?php foreach ($dataSources as $item) { ?>
		<?php if($item->type == "news") { ?>
			<article>
				<div class="image">
					<img src="/images/brands/<?= $item->img ?>" alt="<?= $item->alt ?>" title="<?= $item->alt ?>"/>
				</div>
			</article>
		<?php } ?>
	<?php } ?>
</section>

<!-- DOWNLOAD -->

<section id="download" class="spotlight style3 android invert orient-right content-align-left image-position-center">
	<div class="content">
		<h2>Descarga Apretaste</h2>
		<p>Descarga la app de Apretaste, conéctate con la comunidad más grande de cubanos, lee y debate las últimas noticias de Cuba.</p>
		<ul class="actions">
			<li><a onclick="sendAnalyticsEvent('download_btn', 'android')" href="<?= getDownloadLink('android') ?>" target="_blank" class="button primary icon brands fa-android">Android</a></li>
			<li><a onclick="sendAnalyticsEvent('download_btn', 'ios')" href="<?= getDownloadLink('ios') ?>" target="_blank" class="button primary icon brands fa-apple">iPhone</a></li>
		</ul>
	</div>
	<div class="image">
		<img src="/images/apretin_pointing.jpg" alt="" />
	</div>
</section>
