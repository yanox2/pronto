<?php
/* Copyright 2013 dodat */
/*---------------------------------------------------------------------------*
 * Definition
 *      システムメッセージ
 *---------------------------------------------------------------------------*/
namespace PR;

$sfx = '_'.Locale::SUFFIX_JA;

// 処理の続行が不能な例外のメッセージ

define('PR_E001'.$sfx,'E001:クラスが見つかりません。 class=%s');
define('PR_E002'.$sfx,'E002:メッセージIDが存在しません。 msgid=%s');
define('PR_E003'.$sfx,'E003:メッセージファイルが見つかりません。 path=%s');
define('PR_E004'.$sfx,'E004:SysEnvを変更できません。 env=%s');
define('PR_E005'.$sfx,'E005:C_PR_YOUR_DOCROOT外のリクエストです。 path=%s docroot=%s');
define('PR_E006'.$sfx,'E006:C_PR_SUBSYS_URIROOT外のリクエストです。 path=%s uriroot=%s');
define('PR_E007'.$sfx,'E007:ディスパッチ先スクリプトが見つかりません。 path=%s');
define('PR_E008'.$sfx,'E008:定義ファイルに定義された項目が見つかりません。 def=%s');
define('PR_E009'.$sfx,'E009:データベースに接続していません。 section=%s');
define('PR_E010'.$sfx,'E010:データベースへのアクセスに失敗しました。時間をおいて再度実行してください。 section=%s');
define('PR_E011'.$sfx,'E011:パラメーターに誤りがあります。 params:%s');
define('PR_E012'.$sfx,'E012:URLよりサブシステムを抽出できませんでした。 url=%s');
define('PR_E013'.$sfx,'E013:URLよりディスパッチ先メソッドを抽出できませんでした。 method=%s');
define('PR_E014'.$sfx,'E014:内部エラーが発生しました。 section=%s');
define('PR_E015'.$sfx,'E015:ファイルが見つかりません。 path=%s');
define('PR_E016'.$sfx,'E016:ディレクトリもしくはファイルが見つかりません。 path=%s');
define('PR_E017'.$sfx,'E017:ファイルのアクセスに失敗しました。 kind=%s path=%s');
define('PR_E018'.$sfx,'E018:エンティティが存在しません。 section=%s');
define('PR_E019'.$sfx,'E019:無許可なメソッドをバインドしようとしています。 method=%s');
define('PR_E020'.$sfx,'E020:ターゲットの指定に誤りがあります。 section=%s');

// 画面用のエラーメッセージ

define('PR_E100'.$sfx,'ログインID、もしくはパスワードを入力してください。');
define('PR_E101'.$sfx,'ログインID、もしくはパスワードに誤りがあります。');
define('PR_E102'.$sfx,'ログイン認証に３回以上失敗したため、このログインIDはロックされました。ロックの解除については、管理者にご連絡ください。');
define('PR_E103'.$sfx,'%s を入力してください。');
define('PR_E104'.$sfx,'%s の書式（%s）に誤りがあります。');
define('PR_E105'.$sfx,'%s は半角英数字のみが使用可能です。');
define('PR_E106'.$sfx,'%s は %s 文字以上を入力してください。');
define('PR_E107'.$sfx,'%s は %s 文字以内の文字列です。');
define('PR_E108'.$sfx,'%s は英字、数字、記号の少なくとも %s 種類以上を組み合わせて入力してください。');
define('PR_E109'.$sfx,'フリーのメールアドレスはご利用になれません。');

// データタイプ

define('PR_D000'.$sfx,'数字');
define('PR_D001'.$sfx,'小数');
define('PR_D002'.$sfx,'英字');
define('PR_D003'.$sfx,'英数字');
define('PR_D004'.$sfx,'文字');
define('PR_D005'.$sfx,'パスワード');
define('PR_D006'.$sfx,'URL');
define('PR_D007'.$sfx,'メールアドレス');
define('PR_D008'.$sfx,'郵便番号');
define('PR_D009'.$sfx,'電話番号');
define('PR_D010'.$sfx,'日付');
define('PR_D011'.$sfx,'ドメイン名');

// 単語

define('PR_W000'.$sfx,'ページ目');
define('PR_W001'.$sfx,'件');

?>
