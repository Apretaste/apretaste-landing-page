<?php 

use Framework\Database;

class Index 
{
	public function main()
	{
		// include the data
		require APP_PATH . 'models/data.php';

		// get a random review
		$userReviews = getUserReviews();
		$userReview = $userReviews[array_rand($userReviews)];

		// send data to the view
		$this->view->data->title = "Haz amigos, habla libremente.";
		$this->view->data->screenshots = getScreenshots();
		$this->view->data->features = getFeatures();
		$this->view->data->dataSources = getDataSources();
		$this->view->data->socialLinks = getSocialLinks();
		$this->view->data->userReview = $userReview;
		$this->view->data->mediaMentions = getMediaMentions();
		$this->view->data->teamMembers = getTeamMembers();
		$this->view->setTemplate('main');
		$this->view->setLayout('main');
	}
}
