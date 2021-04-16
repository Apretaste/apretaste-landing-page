<?php

use Apretaste\Core;
use Apretaste\Bucket;
use Apretaste\Person;
use Apretaste\Database;

class Post
{
	public function main()
	{
		// get the person's profile
		$hash = $this->request->get('a');

		// get the note
		$note = Database::queryFirst("
			SELECT 
				B.username, B.gender, B.avatar, B.avatarColor, 
				A.id, A.text, A.image, A.reactions, A.article, A.inserted
			FROM _pizarra_notes A JOIN person B
			ON A.id_person = B.id
			WHERE A.hash = '$hash'
			AND A.active = 1");

		// if no person was passed, redirect to main page
		if(empty($note)) {
			header("Location: /");
			exit;
		}

		// get the reactions
		$reactions = Database::query("
			SELECT reaction, COUNT(reaction) as cnt
			FROM _pizarra_reactions 
			WHERE note = {$note->id}
			GROUP BY reaction");

		// get the person
		$note->avatar = Bucket::path('avatars', "{$note->avatar}.png");
		$note->avatarColor = Core::$avatarColors[$note->avatarColor];

		// get the image from the bucket
		if($note->image) {
			$note->image = Bucket::path('pizarra', $note->image);
		}

		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "Nota de @{$note->username}";
		$this->view->data->description = $note->text;
		$this->view->data->keywords = "apretaste,cuba,red social cuba,chat cuba,apretaste cuba,chatear con amigos,buscar amigos por internet,buscar gente,hacer amigos online,instagram en cuba,redes sociales para conocer gente,facebook cuba,facebook en cuba,paginas para conocer gente gratis,amistades por internet,twitter en cuba,twitter cuba,instagram para cuba,paginas para conocer gente,hacer amigos por internet,quiero conocer gente,chat conocer gente,twitter para cuba,buscar personas para amistad,paginas conocer gente,chatear con gente,paginas para conseguir amigos,amigos en cuba,apps para conocer gente,hacer amigos en cuba,red social cubanos,conocer cubanos,conocer personas,amigos por internet,red social cuba,paginas para hacer amigos,como conocer amigos,hacer amigos,paginas de amistad,redes sociales para hacer amigos,instagram cuba,facebook para cuba";
		$this->view->data->feature = empty($note->image) ? false : $note->image;
		$this->view->data->note = $note;
		$this->view->data->reactions = $reactions;
		$this->view->data->reactionsColors = ['LIKE'=>'#ef5350', 'LOVE'=>'#4caf50', 'LOL'=>'#e65100', 'ANGRY'=>'#ec407a', 'AMAZE'=>'#b388ff', 'SAD'=>'#795548'];
		$this->view->data->reactionsIcons = ['LIKE'=>'fa-heart', 'LOVE'=>'fa-grin-tears', 'LOL'=>'fa-angry', 'ANGRY'=>'fa-flushed', 'AMAZE'=>'fa-sad-cry', 'SAD'=>'fa-poo'];
		$this->view->setTemplate('main');
		$this->view->setLayout('app');
	}
}
