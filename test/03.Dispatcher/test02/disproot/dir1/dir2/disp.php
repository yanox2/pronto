<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      ディスパッチ先アクションメソッド
 *---------------------------------------------------------------------------*/

class ClassA{

	public function methodA(){
		print '<div style="margin:10px 0; font-size:14px; background-color:aliceblue;">ClassA - methodA</div>'."\n";
		$this->_method();
	}

	public function methodB(){
		print '<div style="margin:10px 0; font-size:14px; background-color:aliceblue;">ClassA - methodB</div>'."\n";
		$this->_method();
	}

	public function _method(){
		print '<div>・Dispatcher設定</div>'."\n";
		print '<div>C_PR_YOUR_DOCROOT="'.\PR\SysEnv::getYourDocRoot().'"</div>'."\n";
		print '<div>C_PR_YOUR_DISPROOT="'.\PR\SysEnv::getYourDispRoot().'</div>'."\n";
		$str  = '<table>'."\n";
		$str .= '<tr><td style="font-weight:bold;">path</td><td>'.\PR\Request::$sPATH.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">file</td><td>'.\PR\Request::$sFILE.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">query</td><td>'.\PR\Request::$sQUERY.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">fragment</td><td>'.\PR\Request::$sFRAGMENT.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">method</td><td>'.\PR\Request::$sMETHOD.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">subdir</td><td>'.\PR\Request::$sSUBDIR.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">subdir2</td><td>'.\PR\Request::$sSUBDIR2.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">subsystem</td><td>'.\PR\Request::$sSUBSYSTEM.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">dest_class</td><td>'.\PR\Request::$sDEST_CLASS.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">dest_method</td><td>'.\PR\Request::$sDEST_METHOD.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">dest_path</td><td>'.\PR\Request::$sDEST_PATH.'</td></tr>'."\n";
		$str .= '</table>'."\n";
		print '<div style="margin-top:10px;">'.$str.'</div>'."\n";
	}
}

class ClassB{

	public function methodA(){
		print '<div style="margin:10px 0; font-size:14px; background-color:aliceblue;">ClassB - methodA</div>'."\n";
		$this->_method();
	}

	public function methodB(){
		print '<div style="margin:10px 0; font-size:14px; background-color:aliceblue;">ClassB - methodB</div>'."\n";
		$this->_method();
	}

	public function _method(){
		print '<div>・Dispatcher設定</div>'."\n";
		print '<div>C_PR_YOUR_DOCROOT="'.C_PR_YOUR_DOCROOT.'"</div>'."\n";
		print '<div>C_PR_YOUR_DISPROOT="'.C_PR_YOUR_DISPROOT.'</div>'."\n";
		$str  = '<table>'."\n";
		$str .= '<tr><td style="font-weight:bold;">path</td><td>'.\PR\Request::$sPATH.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">file</td><td>'.\PR\Request::$sFILE.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">query</td><td>'.\PR\Request::$sQUERY.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">fragment</td><td>'.\PR\Request::$sFRAGMENT.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">method</td><td>'.\PR\Request::$sMETHOD.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">subdir</td><td>'.\PR\Request::$sSUBDIR.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">subdir2</td><td>'.\PR\Request::$sSUBDIR2.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">subsystem</td><td>'.\PR\Request::$sSUBSYSTEM.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">dest_class</td><td>'.\PR\Request::$sDEST_CLASS.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">dest_method</td><td>'.\PR\Request::$sDEST_METHOD.'</td></tr>'."\n";
		$str .= '<tr><td style="font-weight:bold;">dest_path</td><td>'.\PR\Request::$sDEST_PATH.'</td></tr>'."\n";
		$str .= '</table>'."\n";
		print '<div style="margin-top:10px;">'.$str.'</div>'."\n";
	}
}

if($_GET['st'] == 1){
	$a = new ClassA();
	$a->methodB();
}else{
	$b = new ClassB();
	$b->methodA();
}

?>
