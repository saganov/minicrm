<?php

require 'Controller.php';

class CorespondenceController extends Controller
{
    public function index()
    {
        F3::set('content','corespondence.htm');
        echo Template::serve('index.htm');
    }


}