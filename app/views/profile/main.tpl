<section class="spotlight style2 orient-right content-align-left image-position-center">
	<div class="content">
		<h2 class="<?= $person->gender ?>">@<?= $person->username ?></h2>

		<ul class="icons large">
			<li><span class="icon solid fa-user-friends"> <?= $person->getFriendsCount() ?></span></li>
			<li><span class="icon solid fa-bolt"></span> <?= number_format($person->experience) ?></li>
		</ul>

		<p><?= $person->aboutMe ?></p>

		<ul class="icons small">
			<?php if($person->facebook) { ?>
				<li><a href="https://www.facebook.com/<?= $person->facebook ?>" target="_blank" class="icon brands style2 fa-facebook-f"><span class="label">Facebook</span></a></li>
			<?php } ?>
			<?php if($person->twitter) { ?>
				<li><a href="https://twitter.com/<?= $person->twitter ?>" target="_blank" class="icon brands style2 fa-twitter"><span class="label">Twitter</span></a></li>
			<?php } ?>
			<?php if($person->instagram) { ?>
				<li><a href="https://instagram.com/<?= $person->instagram ?>" target="_blank" class="icon brands style2 fa-instagram"><span class="label">Instagram</span></a></li>
			<?php } ?>
			<?php if($person->telegram) { ?>
				<li><a href="https://t.me/<?= $person->telegram ?>" target="_blank" class="icon brands style2 fa-telegram-plane"><span class="label">Telegram</span></a></li>
			<?php } ?>
			<?php if($person->whatsapp) { ?>
				<li><a href="https://api.whatsapp.com/send?phone=<?= $person->whatsapp ?>" target="_blank" class="icon brands style2 fa-whatsapp"><span class="label">WhatsApp</span></a></li>
			<?php } ?>
			<?php if($person->website) { ?>
				<li><a href="<?= $person->website ?>" target="_blank" class="icon solid style2 fa-globe"><span class="label">WhatsApp</span></a></li>
			<?php } ?>
		</ul>
	</div>
	<div class="image">
		<img style="background-color:<?= $person->avatarColor ?>; border:5px solid black;" src="<?= $person->avatar ?>" alt="Avatar del usuario" />
	</div>
</section>

<?php if($gallery) { ?>
	<div class="gallery style2 small">
		<?php foreach ($gallery as $item) { ?>
			<article class="align-center">
				<img style="height:300px;" src="<?= $item ?>" alt="Foto de perfil" />
			</article>
		<?php } ?>
	</div>
<?php } ?>
