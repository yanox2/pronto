<?php

$path = __DIR__.'/xx_path.inc';
if(is_readable($path)) include($path);
if(defined('C_TEST')) return;

define('C_INSTALL_PATH_PRONTO','/usr/share'); // Prontoインストール先
define('C_INSTALL_PATH_TEST','/var/www/html'); // testインストール先

define('C_BACKUP_PATH',''); // バックアップディレクトリ
define('C_USER',''); // ディレクトリの所有者を変更する
define('C_GROUP',''); // ディレクトリのグループを変更する

?>
