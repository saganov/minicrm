<?php

class ProfilesRestController
{
    protected $db;

    public function __construct()
    {
        $this->db=new DB(
            'mysql:host='. F3::get('DB.host') .';port='. F3::get('DB.port') .';dbname='. F3::get('DB.name'),
            F3::get('DB.user'),
            F3::get('DB.password'));
    }

    function getAll()
    {
        echo json_encode($this->db->exec('SELECT * FROM profile'));
    }

    function get()
    {
        $item = (int)F3::get('PARAMS.item');
        if($item > 0)
        {
            $profile = $this->db->exec("SELECT * FROM profile WHERE id=$item");
            if(count($profile))
            {
                echo json_encode($profile[0]);
                return;
            }
        }
        
        echo json_encode(array());
    }

    function post()
    {
        $form = F3::get('POST.profile');
        /*
        foreach($form as $label=>$value)
        {
            F3::input(
                $label,
                $funcs = NULL,
                $tags = NULL,
                $filter = FILTER_UNSAFE_RAW,
                $opt = array()
                      )
                }
        */

        array_walk($form, function(&$value,$label) {$value = "`". trim($label, "'") ."`='$value'";});
        $sql = "INSERT INTO profile SET ". implode(" ,", $form);
        $res = $this->db->exec($sql);
        echo json_encode(array('res' => $res, 'sql'=>$sql));
    }

    function put()
    {
        // same as updateitem.php 
        echo "Update profile";
    }

    function delete()
    {
        // same as deleteitem.php
        echo "Delete profile";
    }
}

?>
