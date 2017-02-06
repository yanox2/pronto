<?php
/* Copyright 2013 dodat */
/*---------------------------------------------------------------------------*
 * Definition
 *      システムメッセージ
 *---------------------------------------------------------------------------*/
namespace PR;

$sfx = '_'.Locale::SUFFIX_EN;

// 処理の続行が不能な例外のメッセージ。

define('PR_E001'.$sfx,'There is no sub system. url=%s');
define('PR_E002'.$sfx,'There is no sysdef file. subsys=%s');
define('PR_E003'.$sfx,'There is no Pronto source path. me=%s');
define('PR_E004'.$sfx,'There is no your source path. your=%s');
define('PR_E005'.$sfx,'There is no dest script. path=%s');
define('PR_E006'.$sfx,'SysEnv not access. env=%s');
define('PR_E007'.$sfx,'URL is wrong. url=%s');
define('PR_E008'.$sfx,'There is no define item. def=%s');
define('PR_E009'.$sfx,'There is no connect database. section=%s');
define('PR_E010'.$sfx,'Database access error occured. section=%s');
define('PR_E011'.$sfx,'Prameter error. section=%s');
define('PR_E012'.$sfx,'');
define('PR_E013'.$sfx,'Program error occured. section=%s');
define('PR_E014'.$sfx,'File does not exists. path=%s');
define('PR_E015'.$sfx,'Path does not exists. path=%s');

// 画面用のメッセージ。

define('PR_E100'.$sfx,'Please enter loginID or password.');
define('PR_E101'.$sfx,'LoginID or password was wrong.');
define('PR_E102'.$sfx,'Because I failed in the login certification more than %s times, this ID was locked. Please inform a manager of the cancellation of the lock.');
define('PR_E103'.$sfx,'Please input %s.');
define('PR_E104'.$sfx,'A Format of %s%s has an error.');
define('PR_E105'.$sfx,'In %s, only an alphanumeric character.');
define('PR_E106'.$sfx,'%s, please input higher than %s characters.');
define('PR_E107'.$sfx,'%s, please input in combination alphabet,number,mark at least %s kinds or more.');
define('PR_E108'.$sfx,'not free');

?>
