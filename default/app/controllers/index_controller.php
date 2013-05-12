<?php

/**
 * Controller por defecto si no se usa el routes
 * 
 */
Load::model('anuncio');
class IndexController extends AppController
{

    public function index()
    {
    	$anuncio = new Anuncio();
        $this->ultimos = $anuncio->find('order: creado_at DESC');
    }

}
