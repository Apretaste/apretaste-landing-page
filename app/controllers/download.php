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

		// get the user agend 
		$useragent = $_SERVER['HTTP_USER_AGENT']; 
		
		// device rules
		$iPod = stripos($useragent, "iPod"); 
		$iPad = stripos($useragent, "iPad"); 
		$iPhone = stripos($useragent, "iPhone");
		$iOS = stripos($useragent, "iOS");
		$Android = stripos($useragent, "Android"); 

		// get the phone links
		$linkApple = getDownloadLink('android');
		$linkAndroid = getDownloadLink('ios');

		// redirect for iPhone
		if($iPod || $iPad || $iPhone || $iOS) {
			header("Location: $linkApple");
			exit;
		}

		// redirect for Android
		if($Android) {
			header("Location: $linkAndroid");
			exit;
		}

		// send data to the view
		$this->view->data->title = "Descarga la app";
		$this->view->data->hideFooter = true;
		$this->view->data->linkApple = $linkApple;
		$this->view->data->linkAndroid = $linkAndroid;
		$this->view->setLayout('main');
	}
}
