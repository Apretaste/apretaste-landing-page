<!-- MAIN SECTION -->

<section id="main" class="banner style4 android orient-right content-align-left image-position-center fullscreen onload-image-fade-in onload-content-fade-right">
	<div class="content">
		<img class="logo" src="images/apretaste_logo_300x108.png" alt="Apretaste Logo"/>
		<p class="major">Apretaste es la red social y de amistad más divertida, libre, asequible y segura; hecha con ❤ para todos los cubanos.</p>
		<p>Un espacio para conocer e intercambiar entre miles de cubanos, decir lo que piensas, ganar premios geniales y mantenerte entretenido e informado. Todo gratuitamente, seguro, y con mínimo consumo de datos.</p>
		<ul class="actions">
			<li><a href="#download" class="button primary big wide icon solid fa-download smooth-scroll-middle">Descargar</a></li>
			<li><a href="#invite" class="button big wide smooth-scroll-middle">Compartir con Cuba</a></li>
		</ul>
	</div>
	<div class="image">
		<img src="images/home.jpg" alt="" />
	</div>
</section>

<!-- SCREENSHOTS -->

<section id="screenshots" class="wrapper style1 align-center">
	<div class="inner">
		<h2>¡Bienvenido a Apretaste!</h2>
		<p>Conoce la plataforma social que está cambiando la vida de miles de cubanos, ya sea ayudándoles a propagar su voz, ofreciéndoles decenas de servicios útiles e información a tiempo real, o trayendo con sorteos, concursos y entretenimiento sin igual.</p>
	</div>

	<div class="gallery style2 big">
		<?php foreach ($screenshots as $item) { ?>
			<article>
				<div class="image">
					<img src="images/screens/<?= $item->image ?>" alt="" />
				</div>
				<div class="caption">
					<h3><?= $item->title ?></h3>
					<p><?= $item->text ?></p>
				</div>
			</article>
		<?php } ?>
	</div>
</section>

<!-- FEATURES & BRANDS -->

<section id="features" class="wrapper style1 align-center">
	<div class="inner no-padding-bottom">
		<h2>Características</h2>
		<p>¿Sabes qué nos hace especial? Nos preocupamos por entender las prioridades del cubano para ofrecer un producto acorde a sus necesidades, y te traemos lo mejor de la internet siempre arriba de la bola.</p>

		<div class="items style1 medium onscroll-fade-in">
			<?php foreach ($features as $item) { ?>
				<section>
					<span class="icon solid style2 major <?= $item->icon ?>"></span>
					<h3><?= $item->title ?></h3>
					<p><?= $item->text ?></p>
				</section>
			<?php } ?>
		</div>
	</div>

	<!-- brands -->
	<div id="brands" class="gallery style2 small onscroll-fade-in">
		<?php foreach ($dataSources as $item) { ?>
			<article>
				<div class="image">
					<img src="images/brands/<?= $item->img ?>" alt="<?= $item->alt ?>" title="<?= $item->alt ?>"/>
				</div>
			</article>
		<?php } ?>
	</div>
</section>

<!-- APRETIN -->

<section id="apretin" class="spotlight style2 invert orient-left content-align-left image-position-center onscroll-image-fade-in">
	<div class="content">
		<h2>¡Hola! Soy Apretín</h2>
		<p>Mi nombre es Apretín y soy el robot mascota de Apretaste. Mi trabajo es guiar a nuevos usuarios a encontrar su camino y mejorar la experiencia social en Pizarra, nuestra red social. Si me aceptas, puedo ser tu primer amigo, y si tienes alguna pregunta, abre el servicio "Ayuda" desde la app y estaré listo para ayudarte.</p>

		<ul class="icons">
			<?php foreach ($socialLinks as $item) { ?>
				<li><a href="<?= $item->link ?>" target="_blank" class="icon brands style2 <?= $item->icon ?>">
					<span class="label"><?= $item->caption ?></span></a>
				</li>
			<?php } ?>
		</ul>

	</div>
	<div class="image">
		<img src="images/apretin.png" alt="" />
	</div>
</section>

<!-- INVITE -->

<section id="invite" class="spotlight style2 invert content-align-center">
	<div class="content">
		<h2>¡Invita a tu gente en Cuba!</h2>
		<p>Invita a tu familia y amigos a nuestra comunidad de miles de cubanos, manténlos informados y dales el chance de disfrutar decenas de servicios útiles y entrenidos y ganar premios especiales.</p>

		<ul class="actions">
			<li style="margin:auto;"><a href="/invitar" class="button primary fit big wide icon solid fa-envelope">Invitar</a></li>
		</ul>
	</div>
</section>

<!-- WHAT DO PEOPLE SAY -->

<section id="reviews" class="wrapper style1 align-center">
	<div class="inner">
		<h2>¿Qué dice la gente?</h2>
		<p>Desde que nació nuestra app varios años atrás, tenemos miles de usuarios satisfechos y cuantiosa prensa positiva. Estamos orgullosos de ofrecerte una mirada a los que otros hablan de Apretaste.</p>

		<!-- random review -->
		<div class="review align-left">
			<span class="image left" style="background-color:<?= $userReview->avatarColor ?>">
				<img src="images/avatars/<?= $userReview->avatar ?>.png" alt="">
			</span>
			<h2><?= $userReview->username ?></h2>
			<p><?= $userReview->text ?></p>
		</div>
	</div>

	<!-- press -->
	<div class="gallery style2 medium">
		<?php foreach ($mediaMentions as $item) { ?>
			<article>
				<div class="image">
					<a href="<?= $item->link ?>" target="_blank">
						<img src="images/media/<?= $item->img ?>" alt="<?= $item->img ?>"/>
					</a>
				</div>
			</article>
		<?php } ?>
	</div>
</section>

<!-- TEAM -->

<section id="team" class="wrapper style1 align-center">
	<div class="inner">
		<h2>Es un placer conocerte</h2>
		<p>Somos un equipo pequeño, bien comprometido, y estamos orgullosos del trabajo que hacemos. En esta sección nos presentamos y nos ponemos a tu servicio. ¿En qué te podemos ayudar?</p>

		<div class="content">
			<div class="items style3 small onscroll-fade-in">
				<?php foreach ($teamMembers as $item) { ?>
					<section>
						<span class="image fit"><img src="/images/team/<?= $item->img ?>" alt="<?= $item->name ?>" /></span>
						<h3 class="no-margin-bottom"><?= $item->name ?></h3>
						<p class="no-margin-bottom"><?= $item->position ?></p>
						<ul class="icons">
							<li><a href="mailto:<?= $item->email ?>" target="_blank" class="icon solid style1 fa-envelope"><span class="label">Twitter</span></a></li>
							<?php if($item->linkedin) { ?>
								<li><a href="<?= $item->linkedin ?>" target="_blank" class="icon brands style1 fa-linkedin"><span class="label">LinkedIn</span></a></li>
							<?php } ?>
						</ul>
					</section>
				<?php } ?>
			</div>
		</div>
	</div>
</section>

<!-- DOWNLOAD APP -->

<section id="download" class="spotlight style3 android invert orient-right content-align-left image-position-center">
	<div class="content">
		<h2>Descarga Apretaste</h2>
		<p>¡Al fin llegó la hora! Descarga la app de Apretaste desde el Play Store o desde el Apple Store, o bien conéctate por la web y sé parte directa de la comunidad. Es todo un placer tenerte con nosotros.</p>

		<ul class="actions">
			<li><a href="<?= getDownloadLink('android') ?>" target="_blank" class="button primary icon brands fa-android">Android</a></li>
			<li><a href="<?= getDownloadLink('ios') ?>" target="_blank" class="button primary icon brands fa-apple">iPhone</a></li>
			<li><a href="https://app.apretaste.org/" target="_blank" class="button primary icon solid fa-globe">Versión Web</a></li>
		</ul>
	</div>
	<div class="image">
		<img src="images/download.jpg" alt="" />
	</div>
</section>
