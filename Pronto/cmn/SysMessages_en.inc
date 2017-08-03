<?php
/* Copyright 2013 dodat */
/*---------------------------------------------------------------------------*
 * Definition
 *      システムメッセージ
 *---------------------------------------------------------------------------*/
namespace PR;

return array(
	// 処理の続行が不能な例外のメッセージ。
	'PR_E001' => 'E001:Class not found. class=%s',
	'PR_E002' => 'E002:Message-ID not found. msgid=%s',
	'PR_E003' => 'E003:Message file not found. path=%s',
	'PR_E004' => 'E004:You can not access SysEnv. env=%s',
	'PR_E005' => 'E005:It is a request outside C_PR_YOUR_DOCROOT. path=%s docroot=%s',
	'PR_E006' => 'E006:It is a request outside C_PR_SUBSYS_URIROOT. path=%s uriroot=%s',
	'PR_E007' => 'E007:Dispatch file not found. url=%s',
	'PR_E008' => 'E008:There is no define item. def=%s',
	'PR_E009' => 'E009:Unable to connect to the database. section=%s',
	'PR_E010' => 'E010:Access to database denied. Please try again later. section=%s',
	'PR_E011' => 'E011:Wrong parameters. section=%s',
	'PR_E012' => 'E012:Cannot find subsystem for URL. url=%s',
	'PR_E013' => 'E013:Cannot find dispatch method for URL. method=%s',
	'PR_E014' => 'E014:An internal error occurred. section=%s',
	'PR_E015' => 'E015:File not found. path=%s',
	'PR_E016' => 'E016:Directory or file not found. path=%s',
	'PR_E017' => 'E017:Failed to open file. kind=%s path=%s',
	'PR_E018' => 'E018:Entity does not exist. section=%s',
	'PR_E019' => 'E019:Binding unauthorized method. method=%s',
	'PR_E020' => 'E020:Target attribute is not declared. section=%s',
	'PR_E021' => 'E021:Property not found. class=%s property=%s',

	// 画面用のメッセージ。
	'PR_E100' => 'Please enter login-ID or password.',
	'PR_E101' => 'Login-ID or password is wrong.',
	'PR_E102' => 'Login blocked after %s failed login attemps. To unlock your account, please contact the administrator.',
	'PR_E103' => 'Please enter %s.',
	'PR_E104' => 'A Format of %s (%s) has an error.',
	'PR_E105' => 'In %s, only an alphanumeric character.',
	'PR_E106' => '%s must be at least %s characters in length.',
	'PR_E107' => '%s must be %s characters or less in length.',
	'PR_E108' => '%s must contain at least %s or more kinds of 1 upper case, numeric, and special character.',
	'PR_E109' => 'You cannot register a free e-mail account.',
	'PR_E110' => 'Login is needed.',
	'PR_E111' => '%s not found. It may have been deleted.',

	// 画面用のインフォメーション
	'PR_I100' => 'Logout.',

	// データタイプ
	'PR_D000' => 'numeric',
	'PR_D001' => 'float',
	'PR_D002' => 'alphabet',
	'PR_D003' => 'alphanumeric',
	'PR_D004' => 'text',
	'PR_D005' => 'password',
	'PR_D006' => 'URL',
	'PR_D007' => 'e-mail',
	'PR_D008' => 'post code',
	'PR_D009' => 'phone number',
	'PR_D010' => 'date',
	'PR_D011' => 'domain',
	'PR_D012' => 'loginID',
	'PR_D013' => 'URI',

	// 単語
	'PR_W000' => 'page',
	'PR_W001' => '',


);
?>
