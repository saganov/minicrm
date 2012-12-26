<?php

class PersoneModel
{
    /** @todo replace them into some base class */
    const BOOL   = FILTER_VALIDATE_BOOLEAN;
    const INT    = FILTER_VALIDATE_INT;
    const FLOAT  = FILTER_VALIDATE_FLOAT;
    const STRING = FILTER_DEFAULT;
    const DATE   = 5;
    const REGEXP = FILTER_VALIDATE_REGEXP;
    const EMAIL  = FILTER_VALIDATE_EMAIL;
    const IP     = FILTER_VALIDATE_IP;
    const URL    = FILTER_VALIDATE_URL;
    

    const READONLY  = 100;
    const WRITE     = 101;
    const MANDATORY = 102;
    
    protected $db;

    protected $persone = array(
        /** label => array(type, access = readonly) */
        'id'         => array(self::INT),
        'agent_id'   => array(self::INT,    self::MANDATORY),
        'first_name' => array(self::STRING, self::MANDATORY),
        'last_name'  => array(self::STRING, self::MANDATORY),
        /** @todo the data format should be specified */
        'birthday'   => array(self::DATE,   self::MANDATORY),
        'height'     => array(self::INT,    self::MANDATORY),
        'weight'     => array(self::INT,    self::MANDATORY),
                               );

    public function __construct()
    {
        $this->db=F3::get('DB');
    }

    public function get($id)
    {
        $persone = $this->db->exec("SELECT * FROM `persone` WHERE `id`=$id");
        return (count($profile) ? $profile[0] : array());
    }

    public function getAll()
    {
        return $this->db->exec("SELECT * FROM `persone");
    }

    public function insert(array $data)
    {
        array_walk($data, function(&$value,$label) {$value = "`". trim($label, "'") ."`='$value'";});
        $sql = "INSERT INTO `persone` SET ". implode(" ,", $data);
        return $this->db->exec($sql);
    }

    public function update(array $data)
    {
        
    }

    public function delete($id)
    {
        
    }

    /** @todo replace them into some base class */
    public function validate(array $data)
    {
        file_put_contents('/tmp/validate.dump', var_export($data, TRUE));

       $valid = $invalid = array();
        
        /** Redundant fields are skipped */
        foreach($this->persone as $label=>$desc)
        {
            /** ReadOnly fields are skipped */
            if (!isset($desc[1]) || self::READONLY === $desc[1]) continue;

            /** @todo redesign because some values may by as empty */
            if(self::MANDATORY === $desc[1] && empty($data[$label]))
            {
                $invalid[$label] = "Mandatory value not specified";
                continue;
            }
            
            $filter  = $desc[0];
            $options = NULL;
            switch ($filter)
            {
                case self::DATE:
                    $filter  = FILTER_VALIDATE_REGEXP;
                    $options = array('options' => array('regexp' => '/^(19|20)\d\d-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/'));
                    break;
                default:
                    break;
            }

            if(FALSE === $res = filter_var($data[$label], $filter, $options))
            {
                $invalid[$label] = "{$data[$label]} are invalid value";
            }
            else
            {
                $valid[$label] = $res;
            }
        }
        
        return array($valid, $invalid);
    }

}