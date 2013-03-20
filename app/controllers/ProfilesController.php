<?php

//require_once dirname(__DIR__).'/models/Profile.php';
require_once dirname(__DIR__).'/models/JosProfile.php';
require_once 'AuthController.php';

class ProfilesController extends AuthController
{

    public function index()
    {
        F3::set('profile_page_title','Profiles list');
        F3::set('profile_page','profiles/list.htm');
        F3::set('content','profiles/index.htm');
        $view = new Template;
        echo $view->render('index.htm');
    }

    public function get()
    {
        $persone = JosProfile::getInstance($this->user_id);

        F3::set('persone', $persone->getById(F3::get('PARAMS.item')));
        F3::set('profile_page_title','Edit Profile');
        F3::set('profile_page','profiles/get.htm');
        F3::set('content','profiles/index.htm');
        $view = new Template;
        echo $view->render('index.htm');        
    }

    public function add()
    {
        // @todo set agent_id according to the real ID from DataBase
        F3::set('persone.agent_id', $this->user_id);
        F3::set('profile_page_title','Add new Profile');
        F3::set('profile_page','profiles/add.htm');
        F3::set('content','profiles/index.htm');
        $view = new Template;                               
        echo $view->render('index.htm');  
    }

    public function statistics()
    {
        F3::set('profile_page_title','Statistics');
        F3::set('profile_page','profiles/statistics.htm');
        F3::set('content','profiles/index.htm');
        $view = new Template;                               
        echo $view->render('index.htm');  
    }

    public function search()
    {
        F3::set('profile_page_title','Search');
        F3::set('profile_page','profiles/search.htm');
        F3::set('content','profiles/index.htm');
        $view = new Template;                               
        echo $view->render('index.htm');  
    }

    


}