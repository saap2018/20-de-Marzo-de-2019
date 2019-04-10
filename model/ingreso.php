<?php
class Ingreso
{
	private $pdo;
    
	public $IdControlIngreso;
	public $fecha; 
	public $tiempo; 
    public $TipoTarifa; 
	public $PlacasVehiculo; 
    public $NombreEmpleado;
	public $Lugar;
   
	public function __CONSTRUCT()
	{
		try
		{
			$this->pdo = Database::StartUp();     
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Listar()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT * FROM ingresos");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Obtener($id)
	{
		try 
		{
			$stm = $this->pdo
			          ->prepare("SELECT * FROM ingresos WHERE IdControlIngreso = ?");
			          

			$stm->execute(array($id));
			return $stm->fetch(PDO::FETCH_OBJ);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Eliminar($id)
	{
		try 
		{
			$stm = $this->pdo
			            ->prepare("DELETE FROM ingresos WHERE IdControlIngreso = ?");			          

			$stm->execute(array($id));
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Actualizar($data)
	{
		try 
		{
			$sql = "UPDATE ingresos SET
			    fecha= ?, 
				tiempo= ?, 
    			TipoTarifa= ?, 
				PlacasVehiculo= ?, 
    			NombreEmpleado = ?, 
				Lugar = ? 
				WHERE IdControlIngreso = ?";

			$this->pdo->prepare($sql)
			     ->execute(
				    array(
					
					
	$data->tiempo, 
    $data->TipoTarifa, 
	$data->PlacasVehiculo, 
    $data->NombreEmpleado,
	$data->IdControlIngreso   
					)
				);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Registrar(Ingreso $data)
	{
		try 
		{
		$sql = "INSERT INTO ingresos (fecha,tiempo, TipoTarifa, PlacasVehiculo, NombreEmpleado,Lugar)
		        VALUES (?,?,?,?,?,?)";

		$this->pdo->prepare($sql)
		     ->execute(
				array(
				$data->fecha,
                $data->tiempo,
   				$data->TipoTarifa, 
				$data->PlacasVehiculo, 
    			$data->NombreEmpleado,
				$data->Lugar
                )
			);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}
	public function CambiarEstado($data)
	{
		try 
		{
			$sql = "UPDATE disponibilidad SET
			    Disponibilidad = 'Falso'
				WHERE Lugar = ?";

			$this->pdo->prepare($sql)
			     ->execute(
				    array(
					
					
	$data->Lugar
 
					)
				);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

}