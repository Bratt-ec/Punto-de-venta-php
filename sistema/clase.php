<?php

/*
|--------------------------------------------------------------------------|
| Carga autom�tica Clases
|--------------------------------------------------------------------------|
*/
function __autoload($NombreClase) {
	if (file_exists(SISTEMA.'clase' . DS . strtolower($NombreClase) . '.clase.php')) {
		require_once(SISTEMA.'clase' . DS . strtolower($NombreClase) . '.clase.php');
	}
}

//Instanciar Clases
$db				= new Conexion();
$usuario		= new Usuario();
$enlace			= new Enlace();
$sistema		= new Sistema();
$Vendedor		= new Vendedor();
$notificacion	= new Notificacion();
$EstadoCuenta	= new EstadoCuenta();
$ProductosClase	= new Productos();
$CajaDeVenta	= new Venta();

// Ejecutar Algunas Clases
$sistema->ReportarError();
?>