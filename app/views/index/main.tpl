<h1>Hello world!</h1>
<p>My name is <?= $name ?> and my age is <?= $age ?></p>

<table class="table">
	<?php foreach($people as $p) { ?>
	<tr>
		<td><?= $p->username ?></td>
		<td><?= $p->email ?></td>
		<td><?= $p->year_of_birth ?></td>
	</tr>
	<?php } ?>
</table>