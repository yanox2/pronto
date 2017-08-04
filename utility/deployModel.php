<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Utility
 *      Model生成
 *---------------------------------------------------------------------------*/
require_once('./path.inc');
require_once(C_INSTALL_PATH_PRONTO.'/Pronto/sysdef_org.inc');

$sch = new \PR\TaskScheduler();
$gen = new \PR\ModelGenerator();
$sch->addTask($gen);
$sch->run();

