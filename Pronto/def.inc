<?php
/* Copyright 2013 dodat */
/*---------------------------------------------------------------------------*
 * Definition
 *      定義一覧
 *---------------------------------------------------------------------------*/
namespace PR;

if(defined('C_PR_DEF')) return;
define('C_PR_DEF',1);

// Version
define('C_PR_VERSION','ver1.12');

// Source Path
define('C_PR_SRCPATH',dirname(__FILE__));
define('C_PR_SRCFILE',__FILE__);

// Cookie Name
define('C_PR_COOKIE_LOCALE','pr_cpclocale');

// Prefix
define('C_PR_PREFIX','pr_');
define('C_PR_PREFIX_SESSION','prSes_');
define('C_PR_PREFIX_COOKIE','prCk_');
define('C_PR_PREFIX_COLUMN','prCol_');
define('C_PR_PREFIX_REQUEST','prReq_');
define('C_PR_PREFIX_STYLE','prSt_');
define('C_PR_PREFIX_TAG','prTag_');

// Error Number
define('C_PR_ERR_EPERM',-1);
define('C_PR_ERR_ENOENT',-2);
define('C_PR_ERR_EEXIST',-3);
define('C_PR_ERR_EDBACS',-4);
define('C_PR_ERR_ESYSTEM',-5);
define('C_PR_ERR_EPARAM',-6);
define('C_PR_ERR_ECONNECT',-7);
define('C_PR_ERR_EOVER',-8);
define('C_PR_ERR_EINVAL',-9);
define('C_PR_ERR_ESHORT',-10);
define('C_PR_ERR_EACCESS',-403);
define('C_PR_ERR_ENODEST',-404);
define('C_PR_ERR_EINTERNAL',-500);
define('C_PR_ERR_ETEMP',-503);

// Trace
require_once(C_PR_SRCPATH.'/util/Trace.class');
Trace::init();

// Locale
require_once(C_PR_SRCPATH.'/util/Locale.class');
Locale::setSysLocale(C_PR_SYSLOCALE);
Locale::setLocale();

// Class Loader
require_once(C_PR_SRCPATH.'/cp/ClassLoader.class');
$loader = ClassLoader::getInstance();
$loader->setSysRoot(C_PR_SRCPATH);

// Environment
SysEnv::setenv();
Request::generate(C_PR_YOUR_DIRECTORYINDEX);
if(!empty(C_PR_YOUR_DISPROOT)) $loader->setYourDispRoot(C_PR_YOUR_DISPROOT);

if(C_PR_MAINTE_MODE == 2){
	require_once(C_PR_MAINTE_PATH);
	exit();
}

?>
