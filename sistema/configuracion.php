<?php if (!isset($_SESSION)) session_start();


/**
 |-------------------------------------------
 |	CONFIGURACION BASE DE DATOS
 |-------------------------------------------
 */
define('HOST',		'127.0.0.1');
define('USER',		'root');
define('PASSWORD',	'1234');
define('PORT',		'3306');
define('DB',		'stockapp');

/**
 |-------------------------------------------
 |	CONFIGURACION IDIOMA
 |-------------------------------------------
 */
define('LANGUAGE',	'es');

/**
 |-------------------------------------------
 |	Datos de la Aplicación
 |-------------------------------------------
 */
define('TITULO',	'StockApp');
 
/**
 |-------------------------------------------
 |	CONFIGURACION DIRECCIONES
 |-------------------------------------------
 */
define('URLBASE', '');
define('URLNOTIFICARVENTA', '#');

/**
 |-------------------------------------------
 |	Estado Mantenimiento
 |-------------------------------------------
 */
 define('MANTENIMIENTO', false);

/**
 |-------------------------------------------
 | ESTABLECER LA ZONA HORARIA PREDETERMINADA
 |-------------------------------------------
 */
define('HORARIO', 'America/Costa_Rica');
define('GOOGLEANALYTICS',		'');

/**
 |--------------------------------------------
 | CARGA NUCLEO DE LA APLICACION
 |--------------------------------------------
 */
require_once ('Qualtiva.php');
