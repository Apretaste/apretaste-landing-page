<?php 

use Apretaste\Database;

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
	 * recargas landing page (deleted)
	 */
	public function recargas()
	{
		header("Location: /invitar");
		exit;
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
		$this->view->data->description = "Diario de Cuba, CubaNet, Marti Noticias, Granma, Cuba Debate, Android4All, TecnoLike y más. Apretaste es la red de información y debate; con decenas de fuentes noticiosas y chat.";
		$this->view->data->keywords = "noticias de cuba recientes,cuba noticias,cuba covid,cuba noticias vuelos,cuba noticias diario de cuba,noticias diario de cuba,noticias cuba vuelos,noticias sobre cuba,noticias sobre cuba hoy,radio marti noticias,ultimas noticias de cuba,noticias cuba hoy granma,noticias cuba coronavirus,noticias de cuba ultima hora,cubanet,diario de cuba noticias,cuba hoy,cubadebate noticias hoy,noticias cuba en miami,radio marti,noticias de cuba actuales,cuba noticias granma,cuba noticias cubadebate,noticias cuba covid,cuba noticias de ultima hora,ver ultimas noticias de cuba,martinoticias noticias,cuba noticias covid,cubadebate noticias,cubanet noticias,noticias marti,cuba noticias viajes,noticias cuba miami herald,noticias cuba vuelos internacionales,cuba noticias cubanet,rubiera cuba,granma cuba,cubadebate,ultimas noticias cuba,noticias radio marti,el diario de cuba,noticias cuba viajes,cuba noticias en vivo,cuba noticias vuelos internacionales,noticias de cuba,noticias cuba,noticias de cuba 2020,cuba hoy en dia,diario de cuba,noticias cubanet,noticias cuba hoy,ultimas noticias sobre cuba,ver noticias de cuba,granma,cuba noticias del tiempo,diario cuba noticias,ultima hora cuba,granma noticias,cuba noticias coronavirus,ultimas noticias de cuba hoy,noticias cubadebate,noticias granma";
		$this->view->data->feature = "noticias";
		$this->view->data->navigation = ["download"];
		$this->view->data->hideFooter = true;
		$this->view->data->newsScreenshots = getNewsScreenshots();
		$this->view->data->dataSources = getDataSources();
		$this->view->setLayout('main');
	}

	/**
	 * bolita landing page
	 */
	public function bolita()
	{
		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "Juega la bolita de Cuba, consulta la charada";
		$this->view->data->description = "Revisa los resultados de la bolita, leéte la charada, consulta tus números de la suerte. Apretaste es la red de amistad más grande de Cuba; con decenas de servicios entretenidos.";
		$this->view->data->keywords = "bolita cubana numeros,bolita cuba apk,bolita cuba significado de los numeros,charada cubana numeros,numeros de la charada,bolita cuba tirada hoy noche,la charada de cuba,charadas juego,charada cuba numeros,bolita cuba tirada ayer,charada de cuba,bolita cuba,la charada cubana,numeros de la charada cubana,bolita de cuba tirada hoy,charada china cubana,charada cubana bolita,charada cuba apk,bolita florida,charada numeros,charada cubana,charada cubana completa,bolita cuba adivinanza,charada cuba,numeros de la charada de cuba,charada cuba luyano,bolita cubana,bolita cuba tirada hoy dia,bolita cuba tirada hoy tarde";
		$this->view->data->feature = "bolita";
		$this->view->data->navigation = ["download"];
		$this->view->data->hideFooter = true;
		$this->view->data->getBolitaScreenshots = getBolitaScreenshots();
		$this->view->setLayout('main');
	}

	/**
	 * piropazo landing page
	 */
	public function piropazo()
	{
		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "La red de parejas más grande de Cuba";
		$this->view->data->description = "Navega nuestra red de más de miles de cubanos, llena de entretenimiento y diversión. Accede a la mayor red de citas y amistad de Cuba, chatea con otros, y encuentra el amor.";
		$this->view->data->keywords = "conocer cubanos,buscando mujeres solteras en cuba,cuba dating app,cubanas solteras en cuba,mujeres solteras cuba,cuba dating site,cuba online dating,cubana telefono,cubanos solteros en cuba,solteros en cuba,ligar en cuba,cubanas en linea,solteras en cuba,cubanas solteras,cuba dating,apps para conocer cubanas,conocer cubanas,sitos para conocer cubanas,citas cuba,como ligar en cuba";
		$this->view->data->feature = "piropazo";
		$this->view->data->navigation = ["download"];
		$this->view->data->hideFooter = true;
		$this->view->data->getPiropazoScreenshots = getPiropazoScreenshots();
		$this->view->setLayout('main');
	}

	/**
	 * pizarra landing page
	 */
	public function pizarra()
	{
		// include the data
		require APP_PATH . 'models/data.php';

		// send data to the view
		$this->view->data->title = "La red social y de amistad de Cuba";
		$this->view->data->description = "Haz amigos, debate las #tendencias y gana reputación; siempre de manera anónima y segura. Accede a la mayor red social de amistad, información y debate de Cuba, y habla libremente.";
		$this->view->data->keywords = "whatsapp cubano,chatear en linea cuba,red social cuba entrar,chat cubano infotele,salas de chat online,libertad de expresion cuba,chatear con cubanos,chat en linea gratis,red social cuba chat,chat de amigos cuba,chat cubano gratis,chat online cuba,cuba chatear,facebook cubano,cuba chat,red social en Cuba,red social facebook cubano,chat cuba,amigos en cuba,twitter cubano";
		$this->view->data->feature = "pizarra";
		$this->view->data->navigation = ["download"];
		$this->view->data->hideFooter = true;
		$this->view->data->getPizarraScreenshots = getPizarraScreenshots();
		$this->view->setLayout('main');
	}
}
