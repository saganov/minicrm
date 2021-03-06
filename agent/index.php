<?php

require __DIR__.'/lib/base.php';

F3::set('CACHE',FALSE);
F3::set('DEBUG',3);
F3::set('UI',__DIR__.'/app/views/');
F3::set('TEMP',dirname(dirname(__DIR__)).'/tmp');
F3::set('LOGS',dirname(dirname(__DIR__)).'/logs/');

F3::config(__DIR__.'/config/config.ini');

F3::set('classes',
        array(
            'Base'=> array(
                'hash',
                'json',
                'session'
                           ),
            'Cache'=> array(
                //'apc',
                //'memcache',
                //'wincache',
                //'xcache'
                            ),
            'DB\SQL'=> array(
                'pdo',
                'pdo_dblib',
                //'pdo_mssql',
                'pdo_mysql',
                //'pdo_odbc',
                //'pdo_pgsql',
                //'pdo_sqlite',
                //'pdo_sqlsrv'
                             ),
            //'DB\Jig'=> array('json'),
            //'DB\Mongo'=> array('json','mongo'),
            'Auth'=> array('ldap','pdo'),
            //'Image'=> array('gd'),
            //'Lexicon'=> array('iconv'),
            //'SMTP'=> array('openssl'),
            //'Web'=> array('curl','openssl','simplexml'),
            //'Web\Geo'=> array('geoip','json'),
            //'Web\OpenID'=> array('json','simplexml'),
            //'Web\Pingback'=> array('dom','xmlrpc')
              ));

if($services_json = json_decode(getenv("VCAP_SERVICES"),true))
{
    $mysql_config = $services_json["mysql-5.1"][0]["credentials"];
    F3::set('DB.user', $mysql_config["username"]);
    F3::set('DB.password', $mysql_config["password"]);
    F3::set('DB.host', $mysql_config["hostname"]);
    F3::set('DB.port', $mysql_config["port"]);
    F3::set('DB.name', $mysql_config["name"]);
}

F3::set('DB', new \DB\SQL('mysql:host='. F3::get('DB.host') .';port='. F3::get('DB.port') .';dbname='. F3::get('DB.name'),
                     F3::get('DB.user'),
                     F3::get('DB.password')));

F3::set('AUTOLOAD','app/controllers/');
F3::run();
