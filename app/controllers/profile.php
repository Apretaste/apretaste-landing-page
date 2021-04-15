<?php

use Apretaste\Core;
use Apretaste\Bucket;
use Apretaste\Person;

class Profile
{
	public function main()
	{
		// get the person's profile
		$id = $this->request->get('a');

		// get the person
		$person = Person::find($id);

		// if no person was passed, redirect to main page
		if(empty($person)) {
			header("Location: /");
			exit;
		}

		// get the person's avatar
		$person->avatar = Bucket::path('avatars', "{$person->avatar}.png");
		$person->avatarColor = Core::$avatarColors[$person->avatarColor];

		// get the gallery
		$gallery = [];
		foreach ($person->gallery as $item) {
			$gallery[] = Bucket::path('perfil', "{$item->file}.jpg");
		}

		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "Perfil de @{$person->username}";
		$this->view->data->description = $person->aboutMe;
		$this->view->data->keywords = "apretaste,cuba,red social cuba,chat cuba,apretaste cuba,chatear con amigos,buscar amigos por internet,buscar gente,hacer amigos online,instagram en cuba,redes sociales para conocer gente,facebook cuba,facebook en cuba,paginas para conocer gente gratis,amistades por internet,twitter en cuba,twitter cuba,instagram para cuba,paginas para conocer gente,hacer amigos por internet,quiero conocer gente,chat conocer gente,twitter para cuba,buscar personas para amistad,paginas conocer gente,chatear con gente,paginas para conseguir amigos,amigos en cuba,apps para conocer gente,hacer amigos en cuba,red social cubanos,conocer cubanos,conocer personas,amigos por internet,red social cuba,paginas para hacer amigos,como conocer amigos,hacer amigos,paginas de amistad,redes sociales para hacer amigos,instagram cuba,facebook para cuba";
		$this->view->data->feature = empty($gallery) ? false : $gallery[0];
		$this->view->data->person = $person;
		$this->view->data->gallery = $gallery;
		$this->view->setTemplate('main');
		$this->view->setLayout('app');
	}
}
