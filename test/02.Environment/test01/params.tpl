<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * View
 *      sysdef_org.incのパラメタ
 *---------------------------------------------------------------------------*/
?>
<div style="margin-top:20px; font-size:12px;">
<table>
<tr>
<th>sysdef_org.inc</th>
<th>SysEnv</th>
<th>Description</th>
</tr>
<tr>
<td>(C_PR_VERSION)</td>
<td>SysEnv::getVersion()</td>
<td>Pronto バージョン</td>
</tr>
<tr>
<td>C_PR_ROOT</td>
<td>SysEnv::getRoot(), SysEnv::setRoot($rsRoot)</td>
<td>Pronto インストール先ディレクトリ</td>
</tr>
<tr>
<td>C_PR_SYSLOCALE</td>
<td>SysEnv::getSysLocale(), SysEnv::setSysLocale($riLocale)</td>
<td>システムロケール 1:Japanese 2:English</td>
</tr>
<tr>
<td>C_PR_SUBSYS_MODE</td>
<td>SysEnv::getSubSysMode(), SysEnv::setSubSysMode($riMode)</td>
<td>サブシステムモード 0:なし 1:Sub Domain 2:URI</td>
</tr>
<tr>
<td>C_PR_SUBSYS_MAINDOMAIN</td>
<td>SysEnv::getSubSysMainDomain(), SysEnv::setSubSysMainDomain($rsDomain)</td>
<td>サブシステム判定用（mode=1）メインドメイン</td>
</tr>
<tr>
<td>C_PR_SUBSYS_URIROOT</td>
<td>SysEnv::getSubSysURIRoot(), SysEnv::setSubSysURIRoot($rsURIRoot)</td>
<td>サブシステム判定用（mode=2）URIルート</td>
</tr>
<tr>
<td>C_PR_YOUR_VERSION</td>
<td>SysEnv::getYourVersion(), SysEnv::setYourVersion($rsVersion)</td>
<td>ユーザシステムのバージョン</td>
</tr>
<tr>
<td>C_PR_YOUR_DIRECTORYINDEX</td>
<td>SysEnv::getYourDIndex(), SysEnv::setYourDIndex($rsDIndex)</td>
<td>ディレクトリインデックス</td>
</tr>
<tr>
<td>C_PR_YOUR_DOCROOT</td>
<td>SysEnv::getYourDocRoot(), SysEnv::setYourDocRoot($rsDocRoot)</td>
<td>ユーザシステムのドキュメントルート</td>
</tr>
<tr>
<td>C_PR_YOUR_DISPROOT</td>
<td>SysEnv::getYourDispRoot(), SysEnv::setYourDispRoot($rsDispRoot)</td>
<td>ユーザシステムのディスパッチ先ルート</td>
</tr>
<tr>
<td>C_PR_MAINTE_MODE</td>
<td>SysEnv::getMainteMode(), SysEnv::setMainteMode($riMode)</td>
<td>メンテナンスモード 0:なし 1:メンテナンス画面</td>
</tr>
<tr>
<td>C_PR_MAINTE_PATH</td>
<td>SysEnv::getMaintePath(), SysEnv::setMaintePath($rsPath)</td>
<td>メンテナンス画面出力ファイル</td>
</tr>
<tr>
<td>C_PR_TRACE_LEVEL</td>
<td>SysEnv::getTraceLevel(), SysEnv::setTraceLevel($riLevel)</td>
<td>トレースモード 0:なし 1:標準出力 2:エラーログ 3:ファイル出力</td>
</tr>
<tr>
<td>C_PR_TRACE_PATH</td>
<td>SysEnv::getTracePath(), SysEnv::setTracePath($rsPath)</td>
<td>トレース出力ファイル（level=3）</td>
</tr>
<tr>
<td>C_PR_DAO_NAME</td>
<td>SysEnv::getDaoName(), SysEnv::setDaoName($rsName)</td>
<td>Data Access Object名</td>
</tr>
</table>
</div>
