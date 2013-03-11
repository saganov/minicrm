<?php

/*
namespace 'Controller';
use 'F3';
use 'Template';
*/
class AuthController
{
    private $_siteKey;

    protected $user_id;

    public function __construct()
    {
        $this->siteKey = '123456qwertyasdfg';

        // Don't rerout if we run inself
        if(__CLASS__ != get_class($this))
        {
            //F3::set('AUTH',array('db'=>F3::get('DB'), 'table'=>'logged','id'=>'user_id','pw'=>'token'));
            $auth = new Auth(new \DB\SQL\Mapper(F3::get('DB'), 'logged'), array('id'=>'user_id', 'pw'=>'token'));
            //$auth = Auth::sql(F3::get('SESSION.id'), F3::get('SESSION.token'));
            if (!$auth->login(F3::get('SESSION.id'), F3::get('SESSION.token')))
            {
                F3::reroute('/auth');
            }
            else
            {
                $this->user_id = F3::get('SESSION.id');
            }
        }
    }

    public function auth()
    {
        F3::set('content', 'auth.htm');
        F3::set('message', F3::get('GET.message'));
        F3::set('email',   F3::get('GET.email'));
        $view = new Template;                               
        echo $view->render('index.htm');  
    }

    public function login()
    {
        $email    = F3::get('GET.email');
        $password = F3::get('GET.password');

        //F3::set('AUTH',array('db'=>F3::get('DB'), 'table'=>'user','id'=>'email','pw'=>'password'));
         $auth = new Auth(new \DB\SQL\Mapper(F3::get('DB'), 'user'), array('id'=>'email', 'pw'=>'password'));

        //$auth = Auth::sql($email, $password);
        //$auth = Auth::sql('SESSION.user', 'test');
        if ($auth->login($email, $password))
        {
            //set the session so user stays logged in
            F3::set('SESSION.id', $auth->id);
            //Build the token
            $token = $this->hashData($_SERVER['HTTP_USER_AGENT']
                                     . $this->randomString());
            F3::set('SESSION.token', $token);

            $logged = new \DB\SQL\Mapper(F3::get('DB'), 'logged');
            $logged->id      = 0;
            $logged->user_id = $auth->id;
            $logged->token   = $token;
            
            $logged->save();
            
            /** @todo how to get the url from which the user came */
            F3::reroute('/news');
        }
        else
        {
            F3::set('message', 'Login or password incorrect');
            F3::reroute('/auth?message='. F3::get('message') .'&email='. $email);
        }
    }

    public function register()
    {
        $user = new \DB\SQL\Mapper(F3::get('DB'), 'user');
        //overwrite with values just submitted
        $user->copyFrom('POST');
        //create a timestamp in MySQL format
        $user->timestamp=date("Y-m-d H:i:s");
        $user->role_id=1;
        $user->id=0;

        if(!isset($user->name))
        {
            $user->name='--';
        }
        if(!isset($user->phone))
        {
            $user->phone='--';
        }
        if(!isset($user->address))
        {
            $user->address='--';
        }

        $user->save();
        // Return to admin home page, new blog entry should now be there
        //F3::reroute("/login?email={$user->email}&password={$user->password}");
        F3::set('message', 'Successfully registered. Please login');
        F3::reroute('/auth?message='. F3::get('message') .'&email='. $user->email);
    }


    private function randomString($length = 50)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
        $string = '';    
		
        for ($p = 0; $p < $length; $p++)
        {
            $string .= $characters[mt_rand(0, strlen($characters)-1)];
        }
		
      	return $string;
    }

    protected function hashData($data)
    {
		return hash_hmac('sha512', $data, $this->_siteKey);
	}


}