<?php
function Conectarse(){
	$Conexion =  mysqli_connect("localhost","root","","super");
	return $Conexion;
}
?>