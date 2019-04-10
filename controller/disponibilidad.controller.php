<?php
include('Login/config.php');
include('Login/session.php');

require_once 'model/disponibilidad.php';

class DisponibilidadController{
    
    private $model;
    
    public function __CONSTRUCT(){
        $this->model = new Disponibilidad();
    }
    
    public function Index(){
        require_once 'view/header.php';
        require_once 'view/disponibilidad/disponibilidad.php';
        require_once 'view/footer.php';
    }
    
    public function Crud(){
        $alm = new Disponibilidad();
        
        require_once 'view/header.php';
        require_once 'view/disponibilidad/disponibilidad-editar.php';
        require_once 'view/footer.php';
    }
    public function Update(){
        $alm = new Disponibilidad();
        
        if(isset($_REQUEST['id'])){
            $alm = $this->model->Obtener($_REQUEST['id']);
        }
        
        require_once 'view/header.php';
        require_once 'view/disponibilidad/disponibilidad-actualizar.php';
        require_once 'view/footer.php';
    }
    
    public function Guardar(){
        $alm = new Disponibilidad();
        
        $alm->IdLugar = $_REQUEST['IdLugar'];
        $alm->Fila = $_REQUEST['Fila'];
        $alm->Columna = $_REQUEST['Columna'];
        $alm->Disponibilidad = $_REQUEST['Disponibilidad'];
        $alm->Placas = $_REQUEST['Placas'];
        
        
            $this->model->Registrar($alm);
        
        header('Location: disponibles.php');
    }
    public function Modificar(){
        $alm = new Disponibilidad();
    		$alm->IdLugar = $_REQUEST['IdLugar'];
        $alm->Fila = $_REQUEST['Fila'];
        $alm->Columna = $_REQUEST['Columna'];
        $alm->Disponibilidad = $_REQUEST['Disponibilidad'];
        $alm->Placas = $_REQUEST['Placas'];
	
        	
            $this->model->Actualizar($alm);
     
	header('Location: disponibles.php');
    }
    public function Eliminar(){
        $this->model->Eliminar($_REQUEST['id']);
        header('Location: disponibles.php');
    }
}