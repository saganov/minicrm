<?php

require __DIR__.'/lib/base.php';

F3::set('CACHE',FALSE);
F3::set('DEBUG',3);
F3::set('UI',__DIR__.'/app/views/');

F3::config(__DIR__.'/config/config.ini');

if($services_json = json_decode(getenv("VCAP_SERVICES"),true))
{
    $mysql_config = $services_json["mysql-5.1"][0]["credentials"];
    F3::set('DB.user', $mysql_config["username"]);
    F3::set('DB.password', $mysql_config["password"]);
    F3::set('DB.host', $mysql_config["hostname"]);
    F3::set('DB.port', $mysql_config["port"]);
    F3::set('DB.name', $mysql_config["name"]);
}

F3::set('DB', new DB('mysql:host='. F3::get('DB.host') .';port='. F3::get('DB.port') .';dbname='. F3::get('DB.name'),
                     F3::get('DB.user'),
                     F3::get('DB.password')));


F3::set('modules',
        array(
            'apc'  => 'Cache engine',
            //'gd'   => 'Graphics plugin',
            //'hash' => 'Framework core',
            //'imap' => 'Authentication',
            //'json' => 'Various plugins',
            //'ldap' => 'Authentication',
            //'memcache'=>'Cache engine',
            //'mongo'=> 'M2 MongoDB mapper',
            //'pcre' => 'Framework core',
            //'pdo_mssql'=>'SQL handler, Axon ORM, Authentication',
            'pdo_mysql'=>'SQL handler, Axon ORM, Authentication',
            //'pdo_pgsql'=>'SQL handler, Axon ORM, Authentication',
            //'pdo_sqlite'=>'SQL handler, Axon ORM, Authentication',
            //'session'=>'Framework core',
            //'sockets'=>'Network plugin',
            //'xcache'=>'Cache engine'
			)
		);

F3::set('AUTOLOAD','app/controllers/');
F3::run();

?>
