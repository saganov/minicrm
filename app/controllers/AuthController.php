<?php

/*
namespace 'Controller';
use 'F3';
use 'Template';
*/
class AuthController
{
    private $_siteKey;


    public function __construct()
    {
        $this->siteKey = '123456qwertyasdfg';
    }

    public function auth()
    {
        F3::set('content','auth.htm');
        echo Template::serve('index.htm');
    }

    public function login()
    {
        $email    = F3::get('GET.email');
        $password = F3::get('GET.password');

        F3::set('AUTH',array('db'=>F3::get('DB'), 'table'=>'user','id'=>'email','pw'=>'password'));
        $auth = Auth::sql($email, $password);
        //$auth = Auth::sql('SESSION.user', 'test');
        if ($auth)
        {
            //set the session so user stays logged in
            F3::set('SESSION.id', $auth->id);
            //Build the token
            $token = $this->hashData($_SERVER['HTTP_USER_AGENT']
                                     . $this->randomString());
            F3::set('SESSION.token', $token);

            $logged = new Axon('logged');
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
            F3::reroute('/');
        }
    }

    public function register()
    {
        $user = new Axon('user');
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
        F3::reroute('/');

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