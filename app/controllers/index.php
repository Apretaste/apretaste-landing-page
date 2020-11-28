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
		$this->view->data->description = "Apretaste es la red de amistad más divertida y segura; hecha con amor para los cubanos. Mantente entretenido e informado con miles de usuarios y decenas de servicios útiles.";
		$this->view->data->keywords = "apretaste,cuba,red social cuba,chat cuba,apretaste cuba,chatear con amigos,buscar amigos por internet,buscar gente,hacer amigos online,instagram en cuba,redes sociales para conocer gente,facebook cuba,facebook en cuba,paginas para conocer gente gratis,amistades por internet,twitter en cuba,twitter cuba,instagram para cuba,paginas para conocer gente,hacer amigos por internet,quiero conocer gente,chat conocer gente,twitter para cuba,buscar personas para amistad,paginas conocer gente,chatear con gente,paginas para conseguir amigos,amigos en cuba,apps para conocer gente,hacer amigos en cuba,red social cubanos,conocer cubanos,conocer personas,amigos por internet,red social cuba,paginas para hacer amigos,como conocer amigos,hacer amigos,paginas de amistad,redes sociales para hacer amigos,instagram cuba,facebook para cuba";
		$this->view->data->feature = "apretaste";
		$this->view->data->navigation = ["download", "donate"];
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
