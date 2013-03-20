<?php

//require_once dirname(__DIR__).'/models/Profile.php';
require_once dirname(__DIR__).'/models/JosProfile.php';
require_once __DIR__.'/AuthController.php';

class ProfilesRestController extends AuthController
{
    protected $persone;

    public function __construct()
    {
        parent::__construct();
        //$this->persone=new Profiles($this->user_id);
        $this->persone = JosProfile::getInstance($this->user_id);
    }

    public function get()
    {
        $item = (int)F3::get('PARAMS.item');
        if($item > 0)
        {
            $profile = $this->persone->getById($item);
            if(!empty($profile))
            {
                echo json_encode($profile);
                return;
            }
        }
        
        echo json_encode($this->persone->getAll());
    }

    public function post()
    {
        if(FALSE !== $pkey = $this->persone->save())
        {
            echo json_encode(array('res'=>$pkey,
                                   'operation'=>F3::get('model.operation'),
                                   'debug'=>F3::get('POST')));
        }
        else
        {
            echo json_encode(array('res'=>$pkey,
                                   'invalid' => F3::get('field.invalid'),
                                   'absent' => F3::get('field.absent'),
                                   'debug'=>F3::get('POST')));
        }
    }

    public function put()
    {
        // same as updateitem.php 
        echo "Update profile";
    }

    public function delete()
    {
        // same as deleteitem.php
        echo "Delete profile";
    }
}

?>
