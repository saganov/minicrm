<?php

class Profile extends \DB\SQL\Mapper
{
    protected static $_instance;
    protected static $_table  = 'persone';
    protected static $_key    = 'id';
    protected static $_map    = array();
    protected static $_filesDir = '/files/';
    protected static $_filter = array(
        'birthday' => array(
            'filter'  => FILTER_VALIDATE_REGEXP,
            'options' => array(
                'regexp' => '/^(19|20)\d\d-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/')),
        'height'   => array(
            'filter' => FILTER_VALIDATE_INT,
            'options' => array('min_range' => 50, 'max_range' => 250)),
        'weight'   => array(
            'filter' => FILTER_VALIDATE_INT,
            'options' => array('min_range' => 30, 'max_range' => 200)),
                                      );

    protected static $_default = array(
        'show'  => 0,
        'click' => 0,
                             );

    protected static $_mandatory = array(
        //'id',
        'agent_id',
        'first_name',
        'last_name',
        'birthday',
        'height',
        'weight',
                                 );

    public static function getInstance($agent_id)
    {
        if(!isset(static::$_instance))
        {
            static::$_instance = new static(F3::get('DB'), static::$_table);
            static::$_instance->agent_id = $agent_id;
            static::fieldsMapping(static::$_instance);
        }
        
        return static::$_instance;
    }

    protected static function fieldsMapping($instance)
    {
        foreach (static::$_map as $field=>$map) $instance->{$field} = $map;
    }

    public function getById($id)
    {
        return $this->findone(static::$_key .'='. $id .' AND agent_id='. $this->agent_id);
    }

    public function getAll()
    {
        return array_map(function($profile){return $profile->cast();},
                         $this->find('agent_id='. $this->agent_id));
    }

    public function save()
    {
        if (!$this->validate())
        {
            return FALSE;
        }
        
        if(F3::exists('POST.id') && F3::get('POST.id') !== '')
        {
            $this->load(array(static::$_key.'=?', F3::get('POST.id'))); //array('userID=?','tarzan')
            F3::set('model.operation', 'update');
        }
        else
        {
            F3::set('model.operation', 'insert');
        }

        $this->copyFrom('POST');
        $this->setDefault();
        return (FALSE !== parent::save() ? $this->user_id : FALSE);
    }

    private function setDefault()
    {
        foreach(static::$_default as $key=>$value)
        {
            if(!isset($this->{$key}))
            {
                $this->{$key} = $value;
            }
        }
    }

    public function validate()
    {
        F3::set('field.invalid', array());
        F3::set('field.valid', array());
        F3::set('field.absent', array());
        //F3::clear('field.invalid');
        //F3::clear('field.valid');
        //F3::clear('field.absent');

        foreach(filter_input_array(INPUT_POST, self::$_filter) as $field=>$res)
        {
            if(FALSE === $res) F3::push('field.invalid', $field);
        }

        foreach(F3::get('POST') as $key=>$value)
        {
            $handler = array($this, 'fieldHandler'. ucfirst($key));
            if(in_array($key, static::$_mandatory) && empty($value))
            {
                F3::push('field.absent', $key);
            }
            elseif(is_callable($handler))
            {
                if(FALSE === call_user_func($handler, $value)) F3::push('field.invalid', $key);
            }
        }

        $error_types = array(
            1=>'The uploaded file exceeds the upload_max_filesize directive in php.ini.',
            'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form.',
            'The uploaded file was only partially uploaded.',
            'No file was uploaded.',
            6=>'Missing a temporary folder.',
            'Failed to write file to disk.',
            'A PHP extension stopped the file upload.'
                             ); 

        foreach(F3::get('FILES') as $key=>$file)
        {
            //$handler = array($this, 'fileHandler'. ucfirst($key));
            if(in_array($key, static::$_mandatory) && empty($file['name']))
            {
                F3::push('field.absent', $key);
            }
            elseif($file['name'])
            {
                if($file['error'] > 0)
                {
                    F3::push('field.invalid', $key);
                }
                elseif($this->savePhoto($file['tmp_name'], $file['name']))
                {
                    F3::push('field.valid', $key);
                    F3::set('POST.'.$key, $file['name']); // @todo base (current) class doesn't work 
                }
                else
                {
                    F3::push('field.invalid', $key);
                }
            }
            else
            {
                F3::set('POST.'.$key, '');
            }
        }
       

        //return (!F3::exists('field.invalid') && !F3::exists('field.absent'));
        $field = F3::get('field');
        return (empty($field['invalid']) && empty($field['absent']));
    }

    protected function savePhoto($temporary, $name)
    {
        $dir = $this->uploadDir();
        if(!file_exists($dir) && FALSE === @mkdir($dir, 0777, TRUE)) return FALSE;
        elseif(FALSE === @move_uploaded_file($temporary, $dir . $name)) return FALSE;
        else return TRUE;
    }

    protected function uploadDir()
    {
        return F3::get('ROOT') . self::$_filesDir;
    }
}