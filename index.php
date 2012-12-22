<?php

require __DIR__.'/lib/base.php';

F3::set('CACHE',FALSE);
F3::set('DEBUG',2);
F3::set('UI','ui/');

F3::config(__DIR__.'/config/config.ini');

F3::set('modules',
        array(
            'apc'  => 'Cache engine',
            'gd'   => 'Graphics plugin',
            'hash' => 'Framework core',
            'imap' => 'Authentication',
            'json' => 'Various plugins',
            'ldap' => 'Authentication',
            'memcache'=>'Cache engine',
            'mongo'=> 'M2 MongoDB mapper',
            'pcre' => 'Framework core',
            'pdo_mssql'=>'SQL handler, Axon ORM, Authentication',
            'pdo_mysql'=>'SQL handler, Axon ORM, Authentication',
            'pdo_pgsql'=>'SQL handler, Axon ORM, Authentication',
            'pdo_sqlite'=>'SQL handler, Axon ORM, Authentication',
            'session'=>'Framework core',
            'sockets'=>'Network plugin',
            'xcache'=>'Cache engine'
			)
		);

F3::route('GET /',	function() {
        F3::reroute('/news');
	});

F3::route('GET /news',	function() {
        F3::set('content','news.htm');
		echo Template::serve('index.htm');
    });

F3::route('GET /profiles',	function() {
        F3::reroute('/profiles/list');
    });

F3::route('GET /profiles/list',	function() {
        F3::set('profile_page_title','Profiles list');
        F3::set('profile_page','profiles/list.htm');
        F3::set('content','profiles/index.htm');
		echo Template::serve('index.htm');
    });

F3::route('GET /profiles/get',	function() {
        F3::set('profile_page_title','Profile');
        F3::set('profile_page','profiles/get.htm');
        F3::set('content','profiles/index.htm');
		echo Template::serve('index.htm');
    });

F3::route('GET /profiles/add',	function() {
        F3::set('profile_page_title','Add new Profile');
        F3::set('profile_page','profiles/add.htm');
        F3::set('content','profiles/index.htm');
		echo Template::serve('index.htm');
    });

F3::route('GET /profiles/statistics',	function() {
        F3::set('profile_page_title','Statistics');
        F3::set('profile_page','profiles/statistics.htm');
        F3::set('content','profiles/index.htm');
		echo Template::serve('index.htm');
    });

F3::route('GET /profiles/search',	function() {
        F3::set('profile_page_title','Search');
        F3::set('profile_page','profiles/search.htm');
        F3::set('content','profiles/index.htm');
		echo Template::serve('index.htm');
    });

// RESTFull
F3::route('GET|POST /profiles/manage',	function() {
        F3::reroute('/profiles/manage/0');
    });
F3::map('/profiles/manage/@item','item');

F3::route('GET /corespondence',	function() {
        F3::set('content','corespondence.htm');
        echo Template::serve('index.htm');
	});

F3::route('GET /services',	function() {
        F3::set('content','services.htm');
        echo Template::serve('index.htm');
	});

F3::route('GET /todo',	function() {
        F3::set('content','todo.htm');
        echo Template::serve('index.htm');
	});

F3::route('GET /finance',	function() {
        F3::set('content','finance.htm');
        echo Template::serve('index.htm');
	});

F3::route('GET /reports',	function() {
        F3::set('content','reports.htm');
        echo Template::serve('index.htm');
	});

F3::route('GET /help',	function() {
        F3::set('content','help.htm');
        echo Template::serve('index.htm');
	});

F3::route('GET /settings',	function() {
        F3::set('content','settings.htm');
        echo Template::serve('index.htm');
	});

class item
{
    protected $db;

    public function __construct()
    {
        $this->db=new DB(
            'mysql:host='. F3::get('DB.host') .';port='. F3::get('DB.port') .';dbname='. F3::get('DB.name'),
            F3::get('DB.user'),
            F3::get('DB.password'));
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
        
        echo json_encode($this->db->exec('SELECT * FROM profile'));
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



F3::run();

?>
