<?php
/* Copyright 2017 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      Ajax
 *---------------------------------------------------------------------------*/
namespace sample;

class TestData{

	public $aData = array();

	public function __construct(){
		$this->aData[5454] = array('prCol_SysId'=>12,'prCol_UserId'=>5454,'s_prCol_LoginId'=>'user12','s_prCol_Passwd'=>'passwd12',
			's_prCol_Name'=>'山田太郎','prCol_EMail'=>'yamada@test.co.jp','prCol_Locale'=>1,
			's_prCol_Note'=>'総務部','prCol_Auth'=>1,'prCol_State'=>1,'prCol_LastLogin'=>1478922247,
			'prCol_ChangeDate'=>1478922247,'prCol_Fail'=>0,'prCol_Date'=>1478922247); 
		$this->aData[2344] = array('prCol_SysId'=>5,'prCol_UserId'=>2344,'s_prCol_LoginId'=>'user5','s_prCol_Passwd'=>'passwd5',
			's_prCol_Name'=>'芦屋次郎','prCol_EMail'=>'ashiya@test.co.jp','prCol_Locale'=>1,
			's_prCol_Note'=>'業務部','prCol_Auth'=>2,'prCol_State'=>2,'prCol_LastLogin'=>1474922247,
			'prCol_ChangeDate'=>1475922222,'prCol_Fail'=>0,'prCol_Date'=>1478922247); 
		$this->aData[3222] = array('prCol_SysId'=>11,'prCol_UserId'=>3222,'s_prCol_LoginId'=>'user8','s_prCol_Passwd'=>'passwd8',
			's_prCol_Name'=>'吉住三郎','prCol_EMail'=>'yoshizumi@test.co.jp','prCol_Locale'=>1,
			's_prCol_Note'=>'営業部','prCol_Auth'=>1,'prCol_State'=>1,'prCol_LastLogin'=>1472322256,
			'prCol_ChangeDate'=>1478922256,'prCol_Fail'=>0,'prCol_Date'=>1478922247); 
		$this->aData[126] = array('prCol_SysId'=>33,'prCol_UserId'=>126,'s_prCol_LoginId'=>'user4','s_prCol_Passwd'=>'passwd4',
			's_prCol_Name'=>'夏川四郎','prCol_EMail'=>'natsukawa@test.co.jp','prCol_Locale'=>2,
			's_prCol_Note'=>'開発部','prCol_Auth'=>3,'prCol_State'=>0,'prCol_LastLogin'=>1465322244,
			'prCol_ChangeDate'=>1478922244,'prCol_Fail'=>8,'prCol_Date'=>1478922288); 
		$this->aData[4552] = array('prCol_SysId'=>7,'prCol_UserId'=>4552,'s_prCol_LoginId'=>'user7','s_prCol_Passwd'=>'passwd7',
			's_prCol_Name'=>'稲垣五郎','prCol_EMail'=>'inagaki@test.co.jp','prCol_Locale'=>1,
			's_prCol_Note'=>'人事部','prCol_Auth'=>1,'prCol_State'=>1,'prCol_LastLogin'=>1476522234,
			'prCol_ChangeDate'=>1478943234,'prCol_Fail'=>0,'prCol_Date'=>1478922244); 
	}

	public function getData($no){
		return $this->aData[$no];
	}
}
?>