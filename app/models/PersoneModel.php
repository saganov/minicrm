<?php

class PersoneModel
{
    protected $data;

    protected $mandatory = array(
        //'id',
        'agent_id',
        'first_name',
        'last_name',
        'birthday',
        'height',
        'weight',
                                 );

    protected $agent_id;

    public function __construct($agent_id)
    {
        $this->data = new \DB\SQL\Mapper(F3::get('DB'),'persone');
        $this->agent_id = $agent_id;
    }

    public function get($id)
    {
        return $this->data->findone('id='. $id .' AND agent_id='. $this->agent_id);
    }

    public function getAll()
    {
        return array_map(function($persone){return $persone->cast();},
                         $this->data->find('agent_id='. $this->agent_id));
    }

    public function save()
    {
        if (!$this->validate())
        {
            return FALSE;
        }
        
        if(F3::exists('POST.id') && F3::get('POST.id') !== '')
        {
            F3::set('model.operation', 'update');
            return $this->update(F3::get('POST.id'));
        }
        else
        {
            $this->data->id = 0;
            F3::set('model.operation', 'insert');
            return $this->insert();
        }
    }

    public function insert()
    {
        $this->data->copyFrom('POST');

        $this->data->show  = 0;
        $this->data->click = 0;
        $this->data->agent_id = $this->agent_id;

        $this->data->save();
        return $this->data->_id;
    }

    public function update($id)
    {
        $this->data->load('id='.$id);
        $this->data->copyFrom('POST');

        $this->data->show  = 0;
        $this->data->click = 0;
        $this->data->agent_id = $this->agent_id;

        $this->data->save($id);
        return $id;
    }

    public function delete($id)
    {
        
    }

    protected function fieldHandlerBirthday()
    {
        F3::input('birthday',
                  function($value, $field) {
                      if(empty($value))
                      {
                          F3::push('invalid.form.field', $field);
                      }
                      else
                      {
                          list($year, $month, $day) = explode('-', $value);
                          if(!checkdate($month , $day, $year))
                          {
                              F3::push('invalid.form.field', $field);
                          }
                          else
                          {
                              F3::push('valid.form.field', $field);
                          }
                      }
                  },
                  NULL,
                  FILTER_VALIDATE_REGEXP,
                  array('options' => array('regexp' => '/^(19|20)\d\d-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/'))
                  );
    }

    protected function fieldHandlerHeight()
    {
        F3::input('height',
                  function($value, $field) {
                      if(empty($value))
                      {
                          F3::push('invalid.form.field', $field);
                      }
                      else
                      {
                          F3::push('valid.form.field', $field);
                      }
                  },
                  NULL,
                  FILTER_VALIDATE_INT,
                  array('options' => array('min_range' => 50, 'max_range' => 250))
                  );
    }

    protected function fieldHandlerWeight()
    {
        F3::input('weight',
                  function($value, $field) {
                      if(empty($value))
                      {
                          F3::push('invalid.form.field', $field);
                      }
                      else
                      {
                          F3::push('valid.form.field', $field);
                      }
                  },
                  NULL,
                  FILTER_VALIDATE_INT,
                  array('options' => array('min_range' => 30, 'max_range' => 200))
                  );
    }

    /** @todo replace them into some base class */
    public function validate()
    {
        F3::clear('invalid.form.field');
        F3::clear('valid.form.field');
        F3::clear('absent.form.field');

        foreach(F3::get('POST') as $key=>$value)
        {
            $handler = array($this, 'fieldHandler'. ucfirst($key));
            if(in_array($key, $this->mandatory) && empty($value))
            {
                F3::push('absent.form.field', $key);
            }
            elseif(is_callable($handler))
            {
                call_user_func($handler);
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
        $uploaddir = dirname(dirname(__DIR__)).'/files/';
        foreach(F3::get('FILES') as $key=>$file)
        {
            $handler = array($this, 'fileHandler'. ucfirst($key));
            if(in_array($key, $this->mandatory) && empty($file['name']))
            {
                F3::push('absent.form.field', $key);
            }
            elseif($file['name'])
            {
                $uploadfile = $uploaddir . basename($file['name']);
                
                if($file['error'] > 0)
                {
                    F3::push('invalid.form.field', $key);
                }
                elseif(move_uploaded_file($file['tmp_name'], $uploadfile))
                {
                    F3::push('valid.form.field', $key);
                    F3::set('POST.'.$key, '/files/'.$file['name']);
                }
                else
                {
                    F3::push('invalid.form.field', $key);
                }
            }
            else
            {
                F3::set('POST.'.$key, '');
            }
        }
       

        return (!F3::exists('invalid.form.field') && !F3::exists('absent.form.field'));
    }
}