<section class="wrapper style1">
	<div class="inner">
		<h1>¡Gracias por regar la voz!</h1>
		<p>Gracias por invitar a su familia y amigos a usar la app de Apretaste, unirlos a nuestra comunidad de miles de cubanos y dales el chance de disfrutar decenas de servicios útiles y entrenidos y ganar recargas.</p>

		<ul class="actions">
			<li><a href="/invitar" class="button primary">Invitar más gente</a></li>
		</ul>

		<h2>Síguenos en las redes</h2>
		<p>Únete a la diversión en las redes, con memes, noticias y entretenimiento; sé parte de nuestra comunidad y entérate de las últimas novedades que trae Apretaste.</p>

		<ul class="icons">
			<?php foreach ($socialLinks as $item) { ?>
				<li><a href="<?= $item->link ?>" target="_blank" class="icon brands style2 <?= $item->icon ?>">
					<span class="label"><?= $item->caption ?></span></a>
				</li>
			<?php } ?>
		</ul>

		<h2>Instálate la app</h2>
		<p>Descarga la app de Apretaste y mantente en sintonía con los tuyos en Cuba.</p>

		<ul class="actions">
			<li><a href="<?= getDownloadLink('android') ?>" target="_blank" class="button icon brands fa-android">Android</a></li>
			<li><a href="<?= getDownloadLink('ios') ?>" target="_blank" class="button icon brands fa-apple">iPhone</a></li>
		</ul>
	</div>
</section>
