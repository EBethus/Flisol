<?php
Load::model('usuario');
class Anuncio extends ActiveRecord{

	protected function initialize(){
		$this->belongs_to('usuario');
	}

	protected function before_validation(){
		$id = Session::get('usuario');
		$this->usuario_id = $id;
	}
}
?>