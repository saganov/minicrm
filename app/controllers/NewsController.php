<?php


class NewsController
{

    public function index()
    {
        F3::set('content','news.htm');
        echo Template::serve('index.htm');
    }


}