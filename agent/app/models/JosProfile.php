<?php

require_once 'Profile.php';

class JosProfile extends Profile
{
    protected static $_table = 'jos_lovefactory_profiles';
    protected static $_key   = 'user_id';
    protected static $_agent_field = 'field_33';

    protected static $_photos_order = array('portrait', 'photo1', 'photo2', 'photo3', 'photo4', 'photo5', 'passport');

    protected static $_map   = array(
        'id'         => 'user_id',
        'agent_id'   => 'field_33',
        'first_name' => 'field_16',
        'last_name'  => 'field_17',
        'about'      => 'field_18',
        
        'city'       => 'field_21',
        'country'    => 'field_22',
        
        'hair'       => 'field_31',
        'eyes'       => 'field_32',

	'portrait'   => 'main_photo',
                                     );

    protected static $_filesDir = '/components/com_lovefactory/storage/photos/';

    public function get($key)
    {
        $val = parent::get($key);
        $encoder = array($this, 'josEncode'. ucfirst($key));
        return (is_callable($encoder) ? call_user_func($encoder, $val) : $val);
    }

    public function set($key, $val)
    {
        $decoder = array($this, 'josDecode'. ucfirst($key));
        $val = (is_callable($decoder) ? call_user_func($decoder, $val) : $val);
        return parent::set($key, $val);
    }

    protected static function fieldsMapping($instance)
    {
        parent::fieldsMapping($instance);
        
        $instance->email      = 'SELECT `email` FROM `jos_users`'
            .' WHERE `'. self::$_table .'`.`user_id` = `jos_users`.`id`';

        // Not mapped fields
        $instance->birthday   = '"1988-12-12"';
        $instance->height     = '120';
        $instance->weight     = '120';
        $instance->occupation = '"occupation"';
        $instance->education  = '"high school"';
        $instance->religion   = '"Christianity"';
        $instance->martial_status = '"divorced"';
        $instance->children   = '2';
        $instance->language_spoken = '"english"';
        $instance->english_proficiency = '"basic"';
        $instance->smoking    = '"no"';
        $instance->looking_for_age = '20';
        $instance->phone      = '+380661234567';
        $instance->post_address = '"Post Address"';
        $instance->hobbies    = '"Hobbies"';
        $instance->ideal_relationship = '"Ideal Relationship"';

        // photo
/*
        $instance->portrait   = 'SELECT `filename` FROM `jos_lovefactory_photos`'
            .' WHERE `'. self::$_table .'`.`user_id` = `jos_lovefactory_photos`.`user_id`'
	    .' AND `jos_lovefactory_photos`.`ordering` = 0 LIMIT 1';
            //.' ORDER BY `jos_lovefactory_photos`.`ordering` LIMIT 1'; // @todo there should be different adhoc
*/
        $instance->photo1     = 'SELECT `filename` FROM `jos_lovefactory_photos`'
            .' WHERE `'. self::$_table .'`.`user_id` = `jos_lovefactory_photos`.`user_id`'
	    .' AND `jos_lovefactory_photos`.`ordering` = 1 LIMIT 1';
            //.' ORDER BY `jos_lovefactory_photos`.`ordering` LIMIT 1,1';
        $instance->photo2     = 'SELECT `filename` FROM `jos_lovefactory_photos`'
            .' WHERE `'. self::$_table .'`.`user_id` = `jos_lovefactory_photos`.`user_id`'
	    .' AND `jos_lovefactory_photos`.`ordering` = 2 LIMIT 1';
            //.' ORDER BY `jos_lovefactory_photos`.`ordering` LIMIT 2,1';
        $instance->photo3     = 'SELECT `filename` FROM `jos_lovefactory_photos`'
            .' WHERE `'. self::$_table .'`.`user_id` = `jos_lovefactory_photos`.`user_id`'
	    .' AND `jos_lovefactory_photos`.`ordering` = 3 LIMIT 1';
            //.' ORDER BY `jos_lovefactory_photos`.`ordering` LIMIT 3,1';
        $instance->photo4     = 'SELECT `filename` FROM `jos_lovefactory_photos`'
            .' WHERE `'. self::$_table .'`.`user_id` = `jos_lovefactory_photos`.`user_id`'
	    .' AND `jos_lovefactory_photos`.`ordering` = 4 LIMIT 1';
            //.' ORDER BY `jos_lovefactory_photos`.`ordering` LIMIT 4,1';
        $instance->photo5     = 'SELECT `filename` FROM `jos_lovefactory_photos`'
            .' WHERE `'. self::$_table .'`.`user_id` = `jos_lovefactory_photos`.`user_id`'
 	    .' AND `jos_lovefactory_photos`.`ordering` = 5 LIMIT 1';
            //.' ORDER BY `jos_lovefactory_photos`.`ordering` LIMIT 5,1';
        $instance->passport   = 'SELECT `filename` FROM `jos_lovefactory_photos`'
            .' WHERE `'. self::$_table .'`.`user_id` = `jos_lovefactory_photos`.`user_id`'
	    .' AND `jos_lovefactory_photos`.`ordering` = 6 LIMIT 1';
            //.' ORDER BY `jos_lovefactory_photos`.`ordering` LIMIT 6,1'; // @todo there should be different adhoc
    }


    public function insert()
    {
        $users = new \DB\SQL\Mapper(F3::get('DB'), 'jos_users');
        foreach(array('name'     => F3::get('POST.first_name'),
                      'username' => F3::get('POST.email'),
                      'email'    => F3::get('POST.email'),
                      'password' => md5('1'),
                      'usertype' => 'Registered',
                      ) as $key=>$val) $users->{$key} = $val;
        if(FALSE === $users->save())
        {
            return FALSE;
        }
        
        $this->user_id = $users->_id;
        
        if(FALSE === $this->saveFiles(self::$_photos_order)) return FALSE;
        foreach(self::$_photos_order as $order=>$field)
        {
            $file = F3::get('POST.'. $field);
            if(!empty($file))
            {
                $photo = new \DB\SQL\Mapper(F3::get('DB'), 'jos_lovefactory_photos');
                foreach(array('user_id'  => $users->_id,
                              'filename' => $file,
                              'ordering' => $order,
                              'is_main'  => (int)(0 === $order),
                              'date_added'=> gmdate('Y-m-d H:i:s'),
                              'status'   => 0,
                              ) as $key=>$val) $photo->{$key} = $val;
                $photo->save();
            }
        }
        $this->main_photo = F3::get('POST.portrait');
        return parent::insert();
    }

    public function update()
    {
        $users = new \DB\SQL\Mapper(F3::get('DB'), 'jos_users');
        $users->load(array('id=?', F3::get('POST.id')));
        foreach(array('id'       => F3::get('POST.id'),
                      'name'     => F3::get('POST.first_name'),
                      'username' => F3::get('POST.email'),
                      'email'    => F3::get('POST.email'),
                      ) as $key=>$val) $users->{$key} = $val;

        $users->save();
        $this->user_id = F3::get('POST.id');
        if (FALSE === $this->saveFiles(self::$_photos_order)) return FALSE;
        foreach(self::$_photos_order as $order=>$field)
        {
            $file = F3::get('POST.'. $field);
            if(!empty($file))
            {
                $photo = new \DB\SQL\Mapper(F3::get('DB'), 'jos_lovefactory_photos');
                $photo->load(array('user_id=? AND ordering=?', F3::get('POST.id'), $order));
                $data_row = array('filename' => $file,
                                  'date_added'=> gmdate('Y-m-d H:i:s'));
                if(!$photo->filename)
                {
                    $data_row['user_id']  = F3::get('POST.id');
                    $data_row['ordering'] = $order;
                    $data_row['is_main']  = (int)(0 === $order);
                    $data_row['status']   = 0;
                }

                if($file !== $photo->filename){
                    foreach($data_row as $key=>$val) $photo->{$key} = $val;
                    $photo->save();
                }
            }
        }
        if(F3::get('POST.portrait') && $this->main_photo !== F3::get('POST.portrait')) $this->main_photo = F3::get('POST.portrait');
        return parent::update();
    }

    /**
       Hydrate mapper object using hive array variable
       @return NULL
       @param $key string
    **/
    public function copyfrom($key){
        parent::copyfrom($key);
        // @todo it would be better replace
        //       such functionality into setter
        foreach (\Base::instance()->get($key) as $key=>$val)
            if (in_array($key,array_keys(self::$_map))) {
                $field=&$this->fields[self::$_map[$key]];
                if ($field['value']!==$val) {
                    $field['value']=$val;
                    $field['changed']=TRUE;
                }
                unset($field);
            }
    }

    /**
       Return fields of mapper object as an associative array
       @return array
       @param $obj object
    **/
    function cast($obj=NULL) {
        if (!$obj)
            $obj=$this;
        // @todo this is bad solution
        // it should be suggested another one
        $res = array();
        foreach($obj->fields+$obj->adhoc as $key=>$row)
        {
            $res[$key] = $this->{$key};
        }
        return $res;
        /*
        return array_map(
            function($row) {
                return $row['value'];
            },
            $obj->fields+$obj->adhoc
                         );
        */
    }
    
    protected function josEncodePhoto($val)
    {
        return (!empty($val) ? static::$_filesDir . $this->id .'/'. $val : $val);
    }

    protected function josDecodePhoto($val)
    {
        // trim the prefix /files/
        return $val;
    }

    protected function josEncodePortrait($val)
    {
        return $this->josEncodePhoto($val);
    }
    protected function josDecodePortrait($val)
    {
        return $this->josDecodePhoto($val);
    }

    protected function josEncodePassport($val)
    {
        return $this->josEncodePhoto($val);
    }
    protected function josDecodePassport($val)
    {
        return $this->josDecodePhoto($val);
    }

    protected function josEncodePhoto1($val)
    {
        return $this->josEncodePhoto($val);
    }
    protected function josDecodePhoto1($val)
    {
        return $this->josDecodePhoto($val);
    }

    protected function josEncodePhoto2($val)
    {
        return $this->josEncodePhoto($val);
    }
    protected function josDecodePhoto2($val)
    {
        return $this->josDecodePhoto($val);
    }

    protected function josEncodePhoto3($val)
    {
        return $this->josEncodePhoto($val);
    }
    protected function josDecodePhoto3($val)
    {
        return $this->josDecodePhoto($val);
    }

    protected function josEncodePhoto4($val)
    {
        return $this->josEncodePhoto($val);
    }
    protected function josDecodePhoto4($val)
    {
        return $this->josDecodePhoto($val);
    }

    protected function josEncodePhoto5($val)
    {
        return $this->josEncodePhoto($val);
    }
    protected function josDecodePhoto5($val)
    {
        return $this->josDecodePhoto($val);
    }

    protected function josEncodeEyes($val)
    {
        return strtolower($val);
    }

    protected function josDecodeEyes($val)
    {
        return ucfirst($val);
    }

    protected function josEncodeHair($val)
    {
        return strtolower($val);
    }

    protected function josDecodeHair($val)
    {
        return ucfirst($val);
    }

    protected function uploadDir()
    {
        return F3::get('ROOT') . self::$_filesDir . ($this->user_id ? $this->user_id : F3::get('POST.id')) .'/';
    }

}