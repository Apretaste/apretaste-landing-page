<?php 

class Privacy 
{
	/**
	 * main action
	 */
	public function main()
	{
		// send data to the view
		$this->view->data->title = "Nuestro equipo";
		$this->view->setTemplate('main');
		$this->view->setLayout('main');
	}
}