<?php

require_once dirname(__DIR__).'/models/PersoneModel.php';

class ProfilesRestController
{
    protected $persone;

    public function __construct()
    {
        $this->persone=new PersoneModel();
    }

    public function get()
    {
        $item = (int)F3::get('PARAMS.item');
        if($item > 0)
        {
            $profile = $this->persone->get();
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
        list($valid, $invalid) = $this->persone->validate(F3::get('POST.profile'));
        if(count($invalid))
        {
            echo json_encode(array('invalid' => $invalid, 'debug'=>F3::get('POST.profile')));
        }
        else
        {
            echo json_encode(array('res' => $this->persone->insert($valid), 'debug'=>F3::get('POST.profile')));
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
