<?php 

class Download 
{
	/**
	 * main action
	 */
	public function main()
	{
		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "Descarga la app de Apretaste";
		$this->view->data->hideFooter = true;
		$this->view->data->ios = getDownloadLink('ios');
		$this->view->data->android = getDownloadLink('android');
		$this->view->setLayout('main');
	}
}
