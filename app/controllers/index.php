<?php 

class Index 
{
	/**
	 * main action
	 */
	public function main()
	{
		// get list of people
		$people = Database::query("SELECT * FROM person LIMIT 10");

		// send values to the view
		$this->view->data->title = "People";
		$this->view->data->name = "Salvi";
		$this->view->data->age = 33;
		$this->view->data->people = $people;
		$this->view->setLayout('global');
	}

	/**
	 * submit action
	 */
	public function submit()
	{
		echo "my submit page";
	}
}