<?php
// Configuración de la base de datos
$servidor = "localhost"; 
$clientes = "root";       
$contraseña = "";        
$base_datos = "supermercado"; 

// Crear la conexión
$conexion = new mysqli($servidor, $clientes, $contraseña, $base_datos);

// Verificar la conexión
if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}
echo "Conexión exitosa";

// Cierra la conexión
$conexion->close();

//insertando un nuevo usuario
$correo = 'perrito@gmail.com';
$contrasena = 'jiminpark';

// Hash de la contraseña
$hashed_password = password_hash($contrasena, PASSWORD_DEFAULT);

//insertar el usuario con la contraseña hasheada
$sql = "INSERT INTO clientes (correo, contrasena) VALUES (?, ?)";
$stmt = $mysqli->prepare($sql);
$stmt->bind_param("ss", $correo, $hashed_password);
$stmt->execute();

?>
