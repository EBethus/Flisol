<?php
/**
 * @see Controller nuevo controller
 */
require_once CORE_PATH . 'kumbia/controller.php';

/**
 * Controlador para proteger los controladores que heredan
 * Para empezar a crear una convención de seguridad y módulos
 *
 * Todas las controladores heredan de esta clase en un nivel superior
 * por lo tanto los metodos aqui definidos estan disponibles para
 * cualquier controlador.
 *
 * @category Kumbia
 * @package Controller
 */
Load::model('usuario');
class AdminController extends Controller
{

    final protected function initialize()
    {
        if(Auth::is_valid()){
        	return true;
        }elseif(Input::hasPost('usuario') && Input::hasPost('hash')){
            $user = Input::post('usuario');
            $hash = hash('sha512', Input::post('hash'));
            $auth = new Auth('class: usuario',
                        'nombre: ' . $user,
                        'hash: ' . $hash);
            $auth->authenticate();
            if(Auth::is_valid()){
                return TRUE;
        	}else{
        		Flash::error('Datos no válido');
        	}
        }
        View::select(NULL, 'login');
        return true;
        
    }

    function logout(){
    	Session::delete('login');
    	Session::delete('user');
    	Router::redirect();
    }

    final protected function finalize()
    {
        
    }

}
