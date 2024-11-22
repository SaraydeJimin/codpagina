<?php
require_once '../Modelo/Categoria.php';

$gestorCategoria = new Categoria();

$elegirAcciones = isset($_POST['Acciones']) ? $_POST['Acciones'] : "Cargar";

if ($elegirAcciones == 'Crear Categoria') {
    $gestorCategoria->agregarCategoria(
        $_POST['CatID'],
        $_POST['CatNombre'],
        $_POST['Catestado']
    );
} elseif ($elegirAcciones == 'Actualizar Categoria') {
    $CatID = $_POST['CatID'];
    $CatNombre = $_POST['CatNombre'];
    $Catestado = $_POST['Catestado'];

    $gestorCategoria->actualizarCategoria($CatID, $CatNombre, $Catestado);

} elseif ($elegirAcciones == 'Borrar Categoria') {
    $gestorCategoria->borrarCategoria($_POST['CatID'], null, null);

} elseif ($elegirAcciones == 'Buscar Categoria') {
    $resultado = $gestorCategoria->consultarCategoria($_POST['CatID']);
}

$resultado = $gestorCategoria->consultarCategorias();
include "../Vista/vistaCategoria.php";
?>

