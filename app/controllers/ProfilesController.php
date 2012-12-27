<?php

require_once 'AuthController.php';

class ProfilesController extends AuthController
{

    public function index()
    {
        F3::set('profile_page_title','Profiles list');
        F3::set('profile_page','profiles/list.htm');
        F3::set('content','profiles/index.htm');
        echo Template::serve('index.htm');
    }

    public function get()
    {
        F3::set('profile_page_title','Profile');
        F3::set('profile_page','profiles/get.htm');
        F3::set('content','profiles/index.htm');
        echo Template::serve('index.htm');        
    }

    public function add()
    {
        F3::set('profile_page_title','Add new Profile');
        F3::set('profile_page','profiles/add.htm');
        F3::set('content','profiles/index.htm');
       echo Template::serve('index.htm');
    }

    public function statistics()
    {
        F3::set('profile_page_title','Statistics');
        F3::set('profile_page','profiles/statistics.htm');
        F3::set('content','profiles/index.htm');
        echo Template::serve('index.htm');
    }

    public function search()
    {
        F3::set('profile_page_title','Search');
        F3::set('profile_page','profiles/search.htm');
        F3::set('content','profiles/index.htm');
        echo Template::serve('index.htm');
    }

    


}