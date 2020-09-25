<!-- MAIN SECTION -->

<section id="main" class="banner style4 android orient-right content-align-left image-position-center fullscreen onload-image-fade-in onload-content-fade-right">
	<div class="content">
		<img class="logo" src="images/apretaste_logo_500x180.png" alt="Apretaste Logo"/>
		<p class="major">Apretaste es la red social y de amistad más divertida, libre, asequible y segura; hecha con ❤ para todos los cubanos.</p>
		<p>Un espacio para conocer e intercambiar entre miles de cubanos, decir lo que piensas libremente, ganar premios especiales y siempre mantenerte entretenido e informado. Todo gratuitamente, seguro, y con mínimo consumo de datos móviles.</p>
		<ul class="actions">
			<li><a href="#download" class="button primary big wide icon solid fa-download smooth-scroll-middle">Descargar</a></li>
			<li><a href="#first" class="button big wide smooth-scroll-middle">Ver más</a></li>
		</ul>
	</div>
	<div class="image">
		<img src="images/banner.jpg" alt="" />
	</div>
</section>

<!-- SCREENSHOTS -->

<section class="wrapper style1 align-center">
	<div class="inner">
		<h2>¡Bienvenido a Apretaste!</h2>
		<p>Conoce la plataforma social que está cambiando la vida de miles de cubanos, ya sea ayudándoles a propagar su voz, ofreciéndoles decenas de servicios útiles e información a tiempo real, o trayendo con sorteos, concursos y entretenimiento sin igual.</p>
	</div>

	<div class="gallery style1 medium onscroll-fade-in">
		<?php foreach ($screenshots as $item) { ?>
			<article>
				<div class="image">
					<img src="images/gallery/thumbs/<?= $item->image ?>" alt="" />
				</div>
				<div class="caption">
					<h3><?= $item->title ?></h3>
					<p><?= $item->text ?></p>
				</div>
			</article>
		<?php } ?>
	</div>
</section>

<!-- FEATURES -->

<section class="wrapper style1 align-center">
	<div class="inner">
		<h2>Características</h2>
		<p>¿Sabes qué hace a Apretaste especial? Nuestra app está hecha con 15% más de ❤ que el resto, pero más importante: nos preocupamos por entender las prioridades del cubano para ofrecer un producto acorde a sus necesidades.</p>

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
</section>

<!-- DATA SOURCES -->

<section class="wrapper style1 align-center">
	<div class="inner">
		<h2>Fuentes de Datos</h2>
		<p>Además de conectarte con miles de usuarios, te traemos lo último de la internet para que estés al tanto de todo lo que ocurre, a tiempo real. Entre otras, estas son algunas de las fuentes principales que usamos.</p>
	</div>

	<div class="gallery style2 medium onscroll-fade-in">
		<?php foreach ($dataSources as $item) { ?>
			<article>
				<div class="image">
					<img src="images/sources/<?= $item->img ?>" alt="<?= $item->alt ?>" title="<?= $item->alt ?>"/>
				</div>
				<div class="caption">
					<h3><?= $item->alt ?></h3>
				</div>
			</article>
		<?php } ?>
	</div>
</section>

<!-- APRETIN -->

<section class="spotlight style2 invert orient-left content-align-left image-position-center onscroll-image-fade-in">
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
		<img src="images/spotlight02.jpg" alt="" />
	</div>
</section>

<!-- WHAT DO PEOPLE SAY -->

<section class="wrapper style1 align-center">
	<div class="inner">
		<h2>¿Qué dice la gente?</h2>
		<p>Desde que nació nuestra app varios años atrás, tenemos miles de usuarios satisfechos y cuantiosa prensa positiva. Estamos orgullosos de ofrecerte una mirada a los que otros hablan de Apretaste.</p>

		<!-- reviews -->
		<div class="items style1 small onscroll-fade-in">
			<section>
				<h4>@maria</h4>
				<span class="image fit"><img src="images/pic01.jpg" alt="" /></span>
				<p>Lorem ipsum dolor sit accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibusa</p>
			</section>
			<section>
				<h4>@pepito</h4>
				<span class="image fit"><img src="images/pic01.jpg" alt="" /></span>
				<p>Lorem ipsum dolor sit accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibusa</p>
			</section>
			<section>
				<h4>@joseito</h4>
				<span class="image fit"><img src="images/pic01.jpg" alt="" /></span>
				<p>Lorem ipsum dolor sit accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibusa</p>
			</section>
		</div>
	</div>

	<!-- press -->
	<div class="gallery style2 medium onscroll-fade-in">
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

<section class="wrapper style1 align-center">
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
							<li><a href="<?= $item->linkedin ?>" target="_blank" class="icon brands style1 fa-linkedin"><span class="label">LinkedIn</span></a></li>
						</ul>
					</section>
				<?php } ?>
			</div>
		</div>
	</div>
</section>

<!-- DOWNLOAD APP -->

<section id="download" class="spotlight style3 invert orient-right content-align-left image-position-center">
	<div class="content">
		<h2>Descarga Apretaste</h2>
		<p>¡Al fin llegó la hora! Descarga la app de Apretaste desde el Play Store o desde el Apple Market, o bien conéctate por la web y sé parte directa de la comunidad. Es todo un placer tenerte con nosotros.</p>

		<ul class="actions">
			<li><a href="https://play.google.com/store/apps/details?id=com.apretaste.apretaste" target="_blank" class="button primary icon brands fa-android">Play Store</a></li>
			<li><a href="https://apps.apple.com/us/app/apretaste-navega-libremente/id1488232603" target="_blank" class="button primary icon brands fa-apple">Apple Store</a></li>
			<li><a href="https://app.apretaste.org/" target="_blank" class="button primary icon solid fa-globe">Versión Web</a></li>
		</ul>
	</div>
	<div class="image">
		<img src="images/spotlight02.jpg" alt="" />
	</div>
</section>

<!-- FOOTER -->

<footer class="wrapper style1 align-center">
	<div class="inner">
		<div class="items style1 medium">
			<!-- contact -->
			<section>
				<h3>¿Necesitas ayuda?</h3>
				<ul class="actions stacked">
					<li>
						<span class="icon solid style1 fa-phone"></span>
						<span class="label">(305) 457-1656
					</li>
					<li>
						<span class="icon solid style1 fa-envelope"></span>
						<a href="mailto:salvi@apretaste.org" target="_blank">
							<span class="label">salvi@apretaste.org</span>
						</a>
					</li>
				</ul>
			</section>

			<!-- Links -->
			<section>
				<ul class="actions stacked">
					<li>
						<span class="icon solid style1 fa-user-secret"></span>
						<a href="/privacy">
							<span class="label">Póliza de seguridad</span>
						</a>
					</li>
					<li>
						<span class="icon solid style1 fa-hand-holding-usd"></span>
						<a href="https://www.paypal.com/paypalme/apretaste" target="_blank">
							<span class="label">Ayúdanos donando</span>
						</a>
					</li>
					<li>
						<span class="icon solid style1 fa-code"></span>
						<a href="http://cubacrece.com" target="_blank">
							<span class="label">Nuestro grupo en Cuba Crece</span>
						</a>
					</li>
					<li>
						<span class="icon solid style1 fa-ad"></span>
						<a href="https://ads.apretaste.org" target="_blank">
							<span class="label">Anúnciate en Apretaste</span>
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
