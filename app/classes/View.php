<?php

class View
{
	private $template = null;
	private $layout = null;

	public $data = null;

	public function __construct($controller, $action)
	{
		$this->data = new stdClass();
		$this->setTemplate("$controller/$action");
	}

	/**
	 * Set the template
	 *
	 * @author salvipascual
	 * @param String: view name
	 */
	public function setTemplate($name)
	{
		$file = APP_PATH . "views/$name.tpl";
		if(file_exists($file)) $this->template = $file;
	}

	/**
	 * Set the layout
	 *
	 * @author salvipascual
	 * @param String: view name
	 */
	public function setLayout($name)
	{
		$file = APP_PATH . "layouts/$name.tpl";
		if(file_exists($file)) $this->layout = $file;
	}

	/**
	 * Render the view
	 *
	 * @author salvipascual
	 * @return String: HTML code
	 */
	public function render()
	{
		// do not work if template is empty
		if(is_null($this->template)) return false;

		// separate all variables
		extract((array) $this->data);

		// render the template
		ob_start();
		include($this->template);
		$content = ob_get_contents();
		ob_end_clean();

		if(!is_null($this->layout)) {
			// render the layout
			ob_start();
			include($this->layout);
			$layout = ob_get_contents();
			ob_end_clean();

			// insert the template in the layout
			$content = str_replace("{TEMPLATE}", $content, $layout);
		}

		// echo HTML text
		echo $content;
	}
}