<?php
class Usuario extends ActiveRecord{
	/*Este método se ejecuta antes de guarda cualquier usuario*/
	protected  function before_save(){
		$this->hash = hash('sha512', $this->hash);
	}
}
?>