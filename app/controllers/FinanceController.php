<?php

require_once 'AuthController.php';

class FinanceController extends AuthController
{
    public function index()
    {
        F3::set('content','finance.htm');
        echo Template::serve('index.htm');
    }


}