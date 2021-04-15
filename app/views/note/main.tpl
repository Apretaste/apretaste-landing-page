<section class="spotlight style1 orient-left content-align-center">
	<div class="content">
		<ul class="icons large">
			<li class="<?= $note->gender ?>" style="margin-right:10px">
				<a class="username" href="/profile/<?= $note->username ?>">
					<img class="avatar" src="<?= $note->avatar ?>" alt="Avatar del usuario" />
					@<?= $note->username ?></span>
				</a>
			</li>
			<li><span class="icon solid fa-calendar"> <?= date('d/m/Y g:i a', strtotime($note->inserted)) ?></span></li>
		</ul>

		<ul class="icons large">
			<?php foreach ($reactions as $item) { ?>
				<li style="color:<?= $reactionsColors[$item->reaction] ?>"><span class="icon solid <?= $reactionsIcons[$item->reaction] ?>"> <?= $item->cnt ?></span></li>
			<?php } ?>
			<?php if($note->reposts) { ?>
				<li><span class="icon solid fa-sync-alt"></span> <?= $note->reposts ?></li>
			<?php } ?>
		</ul>

		<?php if($note->text) { ?>
			<p><b><?= $note->text ?></b></p>
		<?php } ?>

		<?php if($note->article) { ?>
			<span class="article">
				<?= $note->article ?>
			</span>
		<?php } ?>
	</div>
	<?php if($note->image) { ?>
		<div class="image">
			<img src="<?= $note->image ?>" alt="Imagen de la nota" />
		</div>
	<?php } ?>
</section>

<style type="text/css">
	.avatar {
		background-color: <?= $note->avatarColor ?>; 
		border-radius: 50%; 
		width: 30px; 
		border: 1px solid black;
		margin-bottom: -10px;
		margin-right: 10px;
	}

	.username {
		color: inherit;
		text-decoration: none;
	}

	.spotlight.style1 .image img {
		position: initial;
		height: auto;
	}

	.spotlight .image {
		background-color: white;
	}

	.article div {
		margin-bottom: 10px;
	}
</style>
