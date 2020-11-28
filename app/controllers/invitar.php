<?php 

use Apretaste\Email;
use Framework\Config;
use Framework\Database;

class Invitar 
{
	/**
	 * display the invitation form
	 */
	public function main()
	{
		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "Invita a tu gente a usar la app";
		$this->view->data->description = "Apretaste es la red de amistad más divertida y segura; hecha con amor para los cubanos. Mantente entretenido e informado con miles de usuarios y decenas de servicios útiles.";
		$this->view->data->keywords = "apretaste,cuba,red social cuba,chat cuba,apretaste cuba,chatear con amigos,buscar amigos por internet,buscar gente,hacer amigos online,instagram en cuba,redes sociales para conocer gente,facebook cuba,facebook en cuba,paginas para conocer gente gratis,amistades por internet,twitter en cuba,twitter cuba,instagram para cuba,paginas para conocer gente,hacer amigos por internet,quiero conocer gente,chat conocer gente,twitter para cuba,buscar personas para amistad,paginas conocer gente,chatear con gente,paginas para conseguir amigos,amigos en cuba,apps para conocer gente,hacer amigos en cuba,red social cubanos,conocer cubanos,conocer personas,amigos por internet,red social cuba,paginas para hacer amigos,como conocer amigos,hacer amigos,paginas de amistad,redes sociales para hacer amigos,instagram cuba,facebook para cuba";
		$this->view->data->feature = "apretaste";
		$this->view->data->navigation = ["back"];
		$this->view->data->socialLinks = getSocialLinks();
		$this->view->setTemplate('main');
		$this->view->setLayout('main');
	}

	/**
	 * send the invitation email
	 */
	public function submit()
	{
		// get elements
		$name = $this->request->get('name');
		$email = $this->request->get('email');

		// validate
		if (empty($name) || empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
			header("Location: /invitar");
			die("Error en la data");
		}

		// clean and escape data
		$name = Database::escape($name, 30);

		// record invitation into the database
		Database::query("
			INSERT INTO _web_invitations(from_name, to_email) 
			VALUES ('$name', '$email')");

		// send the email
		$sender = new Email();
		$sender->to = $email;
		$sender->subject = "$name te ha invitado al grupo";
		$sender->sendFromTemplate(['name' => $name], 'invite');

		// redirect to thank you page
		header("Location: /invitar/thankyou");
	}

	/**
	 * display the thank you page
	 */
	public function thankyou()
	{
		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "Gracias por regar la voz";
		$this->view->data->socialLinks = getSocialLinks();
		$this->view->setTemplate('thankyou');
		$this->view->setLayout('main');
	}
}
