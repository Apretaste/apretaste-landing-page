<?php

use Apretaste\Person;
use Framework\Database;

class Join 
{
	/**
	 * redirect to download
	 */
	public function main()
	{
		header("Location: /download");
		exit;
	}

	/**
	 * claim an invite
	 */
	public function user()
	{
		// get the person
		$person = Person::find($this->request->params);

		// send to download if inviter cannot be found
		if(empty($person)) {
			header("Location: /download");
			exit;
		}

		// make sure we have a name
		$person->fullName = empty($person->fullName) ? $person->username : $person->fullName;

		// send data to the view
		$this->view->data->title = "Te han invitado a usar la app";
		$this->view->data->description = "Apretaste es la red de amistad más divertida y segura; hecha con amor para los cubanos. Mantente entretenido e informado con miles de usuarios y decenas de servicios útiles.";
		$this->view->data->keywords = "apretaste,cuba,red social cuba,chat cuba,apretaste cuba,chatear con amigos,buscar amigos por internet,buscar gente,hacer amigos online,instagram en cuba,redes sociales para conocer gente,facebook cuba,facebook en cuba,paginas para conocer gente gratis,amistades por internet,twitter en cuba,twitter cuba,instagram para cuba,paginas para conocer gente,hacer amigos por internet,quiero conocer gente,chat conocer gente,twitter para cuba,buscar personas para amistad,paginas conocer gente,chatear con gente,paginas para conseguir amigos,amigos en cuba,apps para conocer gente,hacer amigos en cuba,red social cubanos,conocer cubanos,conocer personas,amigos por internet,red social cuba,paginas para hacer amigos,como conocer amigos,hacer amigos,paginas de amistad,redes sociales para hacer amigos,instagram cuba,facebook para cuba";
		$this->view->data->feature = "apretaste";
		$this->view->data->person = $person;
		$this->view->data->hideFooter = true;
		$this->view->setTemplate('user');
		$this->view->setLayout('main');
	}

	/**
	 * save invite email
	 */
	public function submit()
	{
		// get the params
		$id = $this->request->get('id');
		$username = $this->request->get('username');
		$email = $this->request->get('email');

		// check if the email is not linked to an existing account
		$emailAlreadyExist = Database::query("SELECT COUNT(id) AS cnt FROM person WHERE email = '$email'")[0]->cnt > 0;

		// get back if invalid email or inviter data
		if(empty($id) || empty($username) || !filter_var($email, FILTER_VALIDATE_EMAIL) || $emailAlreadyExist) {
			header("Location: /join/$username");
			exit;
		}

		// add invitation to the database
		Database::query("INSERT IGNORE INTO _email_invitations (id_from, email_to) VALUES ($id, '$email')");

		// send the user to download the app
		header("Location: /download");
	}
}
