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
/*
        F3::input('birthday',
                  function($value, $field) { Code::dump($field ."=". $value); },
                  NULL,
                  FILTER_VALIDATE_REGEXP,
                  array('options' => array('regexp' => '/^(19|20)\d\d-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/'))
                  );
*/

        $profile = new Axon('persone');
        //overwrite with values just submitted
        $profile->copyFrom('POST');

        if(!isset($profile->id))
        {
            $profile->id = 0;
            $pkey = NULL;
        }
        else
        {
            $pkey = $profile->id;
            $profile->load('id='.$pkey);
            $profile->copyFrom('POST');
        }
        
        
        /** @todo there should be validatio */

        list($valid, $invalid) = $this->persone->validate(F3::get('POST'));
        if(count($invalid))
        {
            echo json_encode(array('invalid' => $invalid, 'debug'=>F3::get('POST')));
        }
        else
        {
            
            // `portrait`,`photo1`,`photo2`,`photo3`,`photo4`,`photo5`,`passport`,`show`,`click`
            foreach(array('portrait','photo1','photo2','photo3','photo4','photo5','passport') as $label)
            {
                $profile->$label = '';
            }
            $profile->show  = 0;
            $profile->click = 0;
            
            $res = $profile->save($pkey);
            
            echo json_encode(array('res'=>$pkey ? $pkey : $profile->_id, 'debug'=>F3::get('POST')));
        }
        return;
        
        /*
        list($valid, $invalid) = $this->persone->validate(F3::get('POST.profile'));
        if(count($invalid))
        {
            echo json_encode(array('invalid' => $invalid, 'debug'=>F3::get('POST.profile')));
        }
        else
        {
            echo json_encode(array('res' => $this->persone->insert($valid), 'debug'=>F3::get('POST.profile')));
        }
        */
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
