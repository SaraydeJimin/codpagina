<?php
include 'Conexion.php';

class Categoria
{
    private $CatID;
    private $CatNombre;
    private $Catestado;
    private $Conexion;

    public function __construct($CatID = null, $CatNombre = null, $Catestado = null)
    {
        $this->CatID = $CatID;
        $this->CatNombre = $CatNombre;
        $this->Catestado = $Catestado;
        $this->Conexion = Conectarse();
    }

    public function agregarCategoria($CatID = null, $CatNombre = null, $Catestado = null)
    {
        $this->Conexion = Conectarse();
    
        $sql = "INSERT INTO categoria (CatID, CatNombre, Catestado) VALUES (?, ?, ?)";
        $stmt = $this->Conexion->prepare($sql);
        $stmt->bind_param("sss", $CatID, $CatNombre, $Catestado);
        $stmt->execute();
        $stmt->close();
        $this->Conexion->close();
    }

    public function consultarCategoria($CatID)
    {
        $this->Conexion = Conectarse();

        $sql = "SELECT * FROM categoria WHERE CatID = ?";
        $stmt = $this->Conexion->prepare($sql);
        $stmt->bind_param("s", $CatID);
        $stmt->execute();
        $resultado = $stmt->get_result();
        $this->Conexion->close();
        return $resultado;
    }

    public function consultarCategorias()
    {
        $this->Conexion = Conectarse();

        $sql = "SELECT * FROM categoria";
        $resultado = $this->Conexion->query($sql);
        $this->Conexion->close();
        return $resultado;
    }

    public function borrarCategoria($CatID, $CatNombre, $Catestado)
    {
        $this->Conexion = Conectarse();
    
        $sql = "DELETE FROM categoria WHERE CatID = ?";
        $stmt = $this->Conexion->prepare($sql);
        $stmt->bind_param("s", $CatID);
        $resultado = $stmt->execute();
        $stmt->close();
        $this->Conexion->close();
    
        return $resultado;
    }

    public function EstadoCategoria($CatID, $CatNombre,$Catestado)
    {        
        $this->Conexion = Conectarse();
        $sql = "UPDATE categoria SET Catestado = ? WHERE CatID = ?";
        $stmt = $this->Conexion->prepare($sql);
        $stmt->bind_param("ss", $Catestado, $CatID);
        $stmt->execute();
        $stmt->close();
        $this->Conexion->close();
    }

    public function actualizarCategoria($CatID, $CatNombre, $Catestado)
    {
        $this->Conexion = Conectarse();
    
        $sql = "UPDATE categoria SET CatNombre = ?, Catestado = ? WHERE CatID = ?";
        $stmt = $this->Conexion->prepare($sql);
        $stmt->bind_param("sss", $CatNombre, $Catestado, $CatID);
        $resultado = $stmt->execute();
        $stmt->close();
        $this->Conexion->close();
    
        return $resultado;
    }
}
?>
