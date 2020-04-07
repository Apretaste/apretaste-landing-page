<?php 

use Framework\Database;

class Index 
{
	public function main()
	{
		// get visitors
		$currentMonth = date("Y-m");
		$visits = Database::queryCache("
			SELECT value, dated
			FROM summary 
			WHERE label = 'monthly_gross_traffic'
			AND dated < '$currentMonth'
			ORDER BY dated DESC
			LIMIT 5", Database::CACHE_DAY);

		// format data for the chart
		$visitors = [];
		$visitorsPerMonth = 0;
		foreach($visits as $visit) {
			if($visitorsPerMonth < $visit->value) $visitorsPerMonth = $visit->value;
			$visitors[] = ["date"=>$visit->dated, "emails"=>$visit->value];
		}

		// send data to the view
		$this->view->data->title = "Bienvenido a Apretaste";
		$this->view->data->visitors = array_reverse($visitors);
		$this->view->data->visitorsPerMonth = $visitorsPerMonth;
		$this->view->setTemplate('main');
		$this->view->setLayout('main');
	}
}