<?php 

class Privacy 
{
	/**
	 * main action
	 */
	public function main()
	{
		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "Póliza de seguridad";
		$this->view->data->navigation = ["back"];
		$this->view->data->socialLinks = getSocialLinks();
		$this->view->setTemplate('main');
		$this->view->setLayout('main');
	}
}
