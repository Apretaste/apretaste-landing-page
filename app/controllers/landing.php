<?php 

use Framework\Database;

class Landing 
{
	/**
	 * main action
	 */
	public function main()
	{
		header("Location: /");
	}

	/**
	 * recargas landing page
	 */
	public function recargas()
	{
		// send data to the view
		$this->view->data->title = "Invita a tu gente a ganar Recargas";
		$this->view->data->hideFooter = true;
		$this->view->setLayout('main');
	}

	/**
	 * noticias landing page
	 */
	public function noticias()
	{
		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "Lee las Noticias de Cuba";
		$this->view->data->navigation = ["download"];
		$this->view->data->hideFooter = true;
		$this->view->data->newsScreenshots = getNewsScreenshots();
		$this->view->data->dataSources = getDataSources();
		$this->view->setLayout('main');
	}
}
