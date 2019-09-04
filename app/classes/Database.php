<?php

class Database
{
	private static $db = null;

	/**
	 * Creates a new connection
	 *
	 * @author salvipascual
	 * @return mysqli object
	 */
	public static function connect()
	{
		// return active connection
		if (!is_null(self::$db)) return self::$db;

		// get the config for the host
		$config = Config::pick('database');
		$host = $config["host"];
		$user = $config['user'];
		$pass = $config['pass'];
		$name = $config['name'];

		// connect to the database
		self::$db = new mysqli($host, $user, $pass, $name);

		// return the connection
		return self::$db;
	}

	/**
	 * Query the database and returs an array of objects
	 * Please use escape() for all texts before creating the $sql
	 *
	 * @author salvipascual
	 * @param string  $sql , sql query
	 * @return mixed list of rows or LAST_ID if insert, false on error
	 */
	public static function query($sql)
	{
		// connect to the database
		$db = self::connect();

		//
		// for selects
		//

		if (stripos(trim($sql), 'select') === 0) {
			// query the database
			$result = $db->query($sql);

			// convert to array of objects
			$rows = [];
			while ($data = $result->fetch_object()) {
				$rows[] = $data;
			}

			return $rows;
		}

		//
		// for insert, update and delete
		// 

		// query the database
		$db->multi_query($sql);
		return $db->insert_id;
	}

	/**
	 * Escape dangerous strings before passing it to mysql
	 *
	 * @author salvipascual
	 * @param String  $str , text to scape
	 * @param Intener $cut , number of chars to truncate the string
	 * @return String, escaped text ready to be sent to mysql
	 */
	public static function escape($str, $cut = false)
	{
		// ensure we have a connection
		$db = self::connect();

		// get the escaped string
		$safeStr = $db->real_escape_string($str);

		// remove the ' at the beginning and end of the string
		$safeStr = trim($safeStr, "'");

		// cut the string if a max number is passed
		if ($cut) $safeStr = trim(mb_strcut($safeStr, 0, $cut, mb_detect_encoding($cut)));

		return rtrim($safeStr, "\\");
	}

	/**
	 * Close the connection
	 *
	 * @author salvipascual
	 */
	public static function close()
	{
		if (!is_null(self::$db)) {
			self::$db->close();
			self::$db = null;
		}
	}
}