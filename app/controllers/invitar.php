<?php 

use Apretaste\Email;
use Framework\Config;
use Framework\Database;

class Invitar 
{
	/**
	 * main action
	 */
	public function main()
	{
		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "Invita a tu gente en Cuba";
		$this->view->data->socialLinks = getSocialLinks();
		$this->view->setTemplate('main');
		$this->view->setLayout('main');
	}

	/**
	 * main action
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
	 * main action
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
