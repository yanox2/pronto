<?php
/* Copyright 2013 dodat */
/*---------------------------------------------------------------------------*
 * Definition
 *      システム定義
 *---------------------------------------------------------------------------*/
namespace PR;

if(defined('C_PR_SYSDEF')) return;
define('C_PR_SYSDEF',1);

// Pronto
define('C_PR_ROOT',C_INSTALL_PATH_PRONTO.'/Pronto');
define('C_PR_SYSLOCALE',1); // system locale 1:japanese 2:english

// Sub System
define('C_PR_SUBSYS_MODE',0); // 0:no sub system 1:sub domain 2:URI
define('C_PR_SUBSYS_MAINDOMAIN',''); // for distinguishing sub domain
define('C_PR_SUBSYS_URIROOT',''); // for distinguishing sub directory

// Your Environment
define('C_PR_YOUR_VERSION','0.00');
define('C_PR_YOUR_DIRECTORYINDEX',''); // directory index
define('C_PR_YOUR_DOCROOT','/testPronto'); // your document root path
define('C_PR_YOUR_DISPROOT',''); // your dispatching file path
define('C_PR_YOUR_ENTITYFILE_PATH',''); // no use

// Maintenance
define('C_PR_MAINTE_MODE',0); // 1:mainte mode 2:mainte mode promptly
define('C_PR_MAINTE_PATH','/var/www/html/Caution.php');

// Trace
define('C_PR_TRACE_LEVEL',2); // 0:no trace 1:stdout 2:error_log 3:user file
define('C_PR_TRACE_PATH','/tmp/pronto.trc');

// Dao
define('C_PR_DAO_TYPE',1);
define('C_PR_DAO_HOST','localhost');
define('C_PR_DAO_USER','user');
define('C_PR_DAO_PASSWORD','pass');
define('C_PR_DAO_NAME','rdbms');

define('C_PR_DAO_TYPE_DB1',1);
define('C_PR_DAO_HOST_DB1','localhost');
define('C_PR_DAO_USER_DB1','user');
define('C_PR_DAO_PASSWORD_DB1','pass');
define('C_PR_DAO_NAME_DB1','pronto_resource_manager');

// Include
require_once(C_PR_ROOT.'/def.inc');
?>
