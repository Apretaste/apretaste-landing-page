<?php

class Config
{
	private static $cnf = null;

	/**
	 * Get all the configs
	 *
	 * @author salvipascual
	 * @return Array
	 */
	public static function all()
	{
		if (is_null(self::$cnf)) self::$cnf = parse_ini_file(BASE_PATH . "configs/config.ini", true);
		return self::$cnf;
	}

	/**
	 * Get the config for a category
	 *
	 * @author salvipascual
	 * @param String: config name
	 * @return Array
	 */
	public static function pick($name)
	{
		return self::all()[$name];
	}
}