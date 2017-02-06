#/* Copyright 2013 dodat */
#---------------------------------------------------------------------------*
# データベース定義ファイル
#---------------------------------------------------------------------------*/
# create database pronto_resource_manager character set utf8;
# grant select,insert,update,delete,create,drop on pront_resource_manager.* to daouser@localhost identified by 'daouser';
# mysql -uroot -p --force pronto_resource_manager < createDB.sql

# namespace sample

# --------------------------------------------------------------------
# PRSystems table
# --------------------------------------------------------------------
# Container: SubSystem,サブシステム

create table PRSubSystems(
  prCol_SysId         int unsigned not null, # var=iSysId,post=prReq_SysId,name=サブシステムID,type=1,ins=Serial
  s_prCol_SysName     varchar(20) not null, # var=sName,post=prReq_SysName,,name=サブシステム名,type=4
  prCol_Date          int not null, # var=iDate,post=prReq_Date,,name=日時,type=11
  primary key(prCol_SysId),
  index(s_prCol_SysName)
)engine=InnoDB;

# --------------------------------------------------------------------
# PRUserProfiles table
# --------------------------------------------------------------------
# Container: UserProfile,ユーザプロファイル

create table PRUserProfiles(
  prCol_SysId         int unsigned not null, # var=iSysId,post=prReq_SysId,name=サブシステムID,type=1
  prCol_UserId        int unsigned not null, # var=iUserId,post=prReq_UserId,name=ユーザーID,type=1,ins=Serial
  s_prCol_LoginId     varchar(50) not null, # var=sLoginId,post=prReq_LoginId,name=ログインID,type=4
  s_prCol_Passwd      varchar(50) not null, # var=sPasswd,post=prReq_Passwd,name=パスワード,type=4
  s_prCol_Name        varchar(50) not null, # var=sName,post=prReq_Name,name=氏名,type=5
  prCol_EMail         varchar(50) not null, # var=sEMail,post=prReq_EMail,name=メールアドレス,type=8
  prCol_Locale        int not null, # var=iLocale,post=prReq_Locale,name=言語,type=1
  s_prCol_Note        text not null, # var=sNote,post=prReq_Note,name=備考,type=5
  prCol_Auth          int not null, # var=iAuth,post=prReq_Auth,name=権限,type=1
  prCol_State         int not null, # var=iState,post=prReq_State,name=ステータス,type=1
  prCol_LastLogin     int not null, # var=iLastLogin,post=prReq_LastLogin,name=最終ログイン,type=1
  prCol_ChangeDate    int not null, # var=iChangeDate,post=prReq_ChangeDate,name=パスワード変更日時,type=1
  prCol_Fail          int not null, # var=iFail,post=prReq_Fail,name=ログイン失敗回数,type=1
  prCol_Date          int not null, # var=iDate,post=prReq_Date,name=日時,type=11
  primary key(prCol_SysId,prCol_UserId),
  index(prCol_SysId,s_prCol_LoginId)
)engine=InnoDB;

/* --- ins ---
	// ユーザ種別
	const AUTH_ADMIN = 1;
	const AUTH_MANAGER = 2;
	const AUTH_USER = 3;

	// ステータス
	const ST_LIVE = 1;
	const ST_DEAD = 2;

	public $aStrs_iLocale = array('','日本語','英語');
	public $aStrs_iAuth = array('','Administrator','管理者','利用者');
	public $aStrs_iState = array('','生存','死亡');
--- ins --- */

# --------------------------------------------------------------------
# PRAllDataTypes table
# --------------------------------------------------------------------
# Container: AllDataType,データタイプ

create table PRAllDataTypes(
  prCol_Numeric         int not null, # var=iNumeric,post=prReq_Numeric,name=数字A,type=1,ins=Serial
  prCol_Float           double not null, # var=fFloat,post=prReq_Float,name=小数A,type=2
  prCol_Alphabet        varchar(255) not null, # var=sAlphabet,post=prReq_Alphabet,name=英字A,type=3
  s_prCol_AlphaNumeric  varchar(255) not null, # var=sAlphaNumeric,post=prReq_AlphaNumeric,name=英数字A,type=4
  s_prCol_Text          text not null, # var=sText,post=prReq_Text,name=テキストA,type=5
  s_prCol_Password      varchar(255) not null, # var=sPassword,post=prReq_Password,name=パスワードA,type=6
  s_prCol_Url           varchar(255) not null, # var=sUrl,post=prReq_Url,name=URL-A,type=7
  prCol_EMail           varchar(255) not null, # var=sEMail,post=prReq_EMail,name=メールアドレスA,type=8
  prCol_PostCode        varchar(8) not null, # var=sPostCode,post=prReq_PostCode,name=郵便番号A,type=9
  s_prCol_Tel           varchar(12) not null, # var=sTel,post=prReq_Tel,name=電話番号A,type=10
  prCol_Date            int not null, # var=iDate,post=prReq_Date,name=日時A,type=11
  prCol_Domain          varchar(255) not null, # var=sDomain,post=prReq_Domain,name=ドメインA,type=12
  primary key(prCol_Alphabet,prCol_Numeric)
)engine=InnoDB;

# --------------------------------------------------------------------
# Test Data
# --------------------------------------------------------------------
insert into PRSubSystems values(35,'demotest',1475247600);
insert into PRSubSystems values(1300,'demotest2',1477926000);

insert into PRUserProfiles values(35,1,'user1','abc','山田太郎','yamada@co.jp',1,'小笠原支店',10,1,1475247600,0,0,1475247600);
insert into PRUserProfiles values(1300,1,'user2','abc','片岡次郎','kataoka@co.jp',2,'三島支店',1,2,1475247600,0,0,1475247600);
