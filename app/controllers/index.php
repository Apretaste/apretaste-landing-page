<?php 

use Framework\Database;

class Index 
{
	public function main()
	{
		// get the visitors
		$summary = Database::queryCache("
			SELECT DATE_FORMAT(inserted, '%Y-%m') AS month, SUM(visitors) AS visits
			FROM delivery_summary 
			WHERE inserted < CURRENT_DATE
			GROUP BY month
			LIMIT 5", Database::CACHE_YEAR);

		// format data for the chart
		$visitors = [];
		$visitorsPerMonth = 0;
		foreach($summary as $sm) {
			if($visitorsPerMonth < $sm->visits) $visitorsPerMonth = $sm->visits;
			$visitors[] = ["date"=> strftime('%B %Y', strtotime($sm->month)), "emails"=>$sm->visits];
		}

		// send data to the view
		$this->view->data->title = "Bienvenido a Apretaste";
		$this->view->data->visitors = array_reverse($visitors);
		$this->view->data->visitorsPerMonth = $visitorsPerMonth;
		$this->view->setTemplate('main');
		$this->view->setLayout('main');
	}
}