<?php

require_once 'AuthController.php';

class CorespondenceController extends AuthController
{
    public function index()
    {
        F3::set('content','corespondence.htm');
        $view = new Template;
        echo $view->render('index.htm');
    }


}