<section class="spotlight style3 android orient-left content-align-left image-position-center onload-content-fade-down">
	<div class="content">
		<h1><b><?= $person->fullName ?></b> te ha invitado a Apretaste, la red de amistad de todos los cubanos</h1>

		<p>Instala Apretaste, conoce la red de todos los cubanos, y recibe §3 como regalo de bienvenida.</p>

		<!-- Form -->
		<form method="post" action="/join/submit">
			<input type="hidden" name="id" value="<?= $person->id ?>" />
			<input type="hidden" name="username" value="<?= $person->username ?>" />

			<div class="fields">
				<div class="field">
					<label for="email">Inserta tu correo electrónico</label>
					<input type="email" name="email" id="email" value="" required />
				</div>
			</div>
			<ul class="actions">
				<li><input type="submit" class="button primary" value="Aceptar invitación" /></li>
			</ul>
		</form>
	</div>
	<div class="image">
		<img src="/images/phone/apretin_waving.jpg" alt="Apretín" />
	</div>
</section>
