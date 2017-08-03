/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * JavaScript - Class
 * 共通
 *---------------------------------------------------------------------------*/
// if(!a) alert("a=null/undefined/0/''/false");

/*---------------------------------------------------------------------------*
 * Initialize
 *---------------------------------------------------------------------------*/
//if(typeof Object.create !== "function"){
	Object.create = function(o){
		var F = function(){};
		F.prototype = o;
		var f = new F();
		if($.isFunction(f.init)){
			f.init((arguments.length > 1) ? arguments[1] : undefined);
		}
		return f;
	};
//}

// デバッガ
var PRDebug = {
	level_: 0, // 0:No display 1:display

	setLevel: function(level){
		this.level_ = level;
	},

	alert: function(exp){
		if(this.level_ == 1) pr_alert(exp.message);
	}
};

// onload
var PROnload = {
	methods_: null,

	init: function(){
		this.methods_ = new Array();
		//throw "error occured.";
		//$("#foo").bind("click", {obj: this}, this.show);
	},

	add: function(func){
		this.methods_.push(func);
	},

	dos: function(){
		$(document).ready($.proxy(this._dos,this));
	},

	_dos: function(){
		//this.methods_.forEach(function(func,i){
		//	if($.isFunction(func)){
		//		new func();
		//	}
		//});
		for(var i=0; i<this.methods_.length; i++){
			var func = this.methods_[i];
			if($.isFunction(func)) new func();
		}
	}
};

// 初期化関数
function pr_init(){
	// fade mask
	$(".dfade").click(function(e){
		//if($(this).attr("data-toggle")) this.collapse("hidden");
		return false;
	});
	$(".dfade2").click(function(e){
		//if($(this).attr("data-toggle")) this.collapse("hidden");
		return false;
	});

	// blur click focus
	$("a").focus(function(e){
		if(this.blur) this.blur();
	});
}

// 初期処理
var prdebug = Object.create(PRDebug);
try{
	var pronload = Object.create(PROnload)
	pronload.add(pr_init);
	pronload.dos();

}catch(exp){
	prdebug.alert(exp);
}

/*---------------------------------------------------------------------------*
 * Ajax - class
 *---------------------------------------------------------------------------*/
// インジケータ
var PRIndicator = {
	id_: null,
	message_: null,
	state_: 0, // 0:disabled,1:enabled
	mkstate_: 0, // 0:disabled,1:enabled

	init: function(){
		this.id_ = "prTag_indicator";
		this.message_ = "";
	},

	setId: function(id){
		this.id_ = id;
	},

	setMessage: function(message){
		this.message_ = message;
	},

	// インジケータ表示
	enable: function(){
		if(this.state_ == 1) return;
		this.mask();
		$("#" + this.id_ + "_msg").html(this.message_);
		var ele = $("#" + this.id_);
		var pos = pr_getCoordinates(ele);
		ele.css({"display":"block","left":pos[0]+"px","top":pos[1]+"px","zIndex":"2010"});
		this.state_ = 1;
	},

	// インジケータ非表示
	disable: function(hasMask){
		if(this.state_ == 0) return;
		var ele = $("#" + this.id_);
		ele.css({"display":"none","zIndex":"0"});
		this.state_ = 0;
		if(!hasMask) this.unmask();
	},

	mask: function(){
		if(this.mkstate_ == 1) return;
		var w = document.documentElement.scrollWidth;
		var h = document.documentElement.scrollHeight;
		var ele = $("#prTag_maskAll");
		ele.css({"width":w+"px","height":h+"px","zIndex":"2000","opacity":"0.50","filter":"alpha(opacity=50)"});
		this.mkstate_ = 1;
	},

	unmask: function(){
		if(this.mkstate_ == 0) return;
		var ele = $("#prTag_maskAll");
		ele.css({"width":"0","height":"0","zIndex":"0","opacity":"0.0","filter":"alpha(opacity=0)"});
		this.mkstate_ = 0;
	}
};

// Ajaxクラス
var PRAjax = {
	// variables
	indicator_: null,
	formId_: null, // <form>のID
	isJSONP_: false, // JSONP
	hasFile_: false, // ファイルアップロード

	callback_: null,

	// public methods
	// 初期処理
	init: function(param){
		this.indicator_ = Object.create(PRIndicator);
		this.formId_ = param.formId;
		if(param.isJSONP) this.isJSONP_ = param.isJSONP;
		if(param.hasFile) this.hasFile_ = param.hasFile;
	},

	// インジケータ設定
	setIndicator: function(indicator){
		this.indicator_ = indicator;
	},

	// 非同期コールバック設定
	setCallback: function(cb){
		this.callback_ = cb;
	},

	get: function(){
	},

	post: function(submitId){
		$async = true;
		if(this.callback_ == null) $async = false;
		this.indicator_.enable();
		$form = $("#" + this.formId_);
		var data = $form.serialize();
		if(submitId) data += "&submitId=" + submitId;
		var param = {url:$form.attr("action"),type:$form.attr("method"),async:$async,cache:false,timeout:30000,context:this};
		if(this.isJSONP){
			param = Object.assign(param,{dataType:"jsonp",jsonp:"jcbk"});
		}else{
			param = Object.assign(param,{dataType:"json"});
		}
		if(this.hasFile_){
			var fd = new FormData($form[0]);
			fd.append("submitId",submitId);
			param = Object.assign(param,{contentType:false,processData:false,data:fd});
		}else{
			param = Object.assign(param,{data:data});
		}
		var rvals = new Array(3);
		$.ajax(param).done(function(res,status,xhr){
			this.indicator_.disable(true);
			if(res.message) pr_alert(res.message);
			if(res.confirm){
				if(!window.confirm(res.confirm)) return;
			}
			if(res.location !== undefined){
				window.location.href = res.location;
				return;
			}
			this.indicator_.unmask();
			rvals = [status,res,null];
			if(this.callback_ != null) this.callback_(rvals);

		}).fail(function(xhr,status,error){
			this.indicator_.disable();
			var msg = "システムとの通信中にエラーが発生しました。";
			msg += " (" + xhr.status + " " + status + " " + error.message + ")";
			this._error(-1,msg);
			rvals = [status,null,error];
			if(this.callback_ != null) this.callback_(rvals);

		}).always(function(xhr,status,error){
			this.indicator_.disable();
		});
		if(this.callback_ == null) return rvals;
	},

	// private methods
	// エラー処理
	_error: function(rc,msg){
		pr_alert(msg + " code=" + rc);
		//button.attr("disabled",true);
		//$form = $(this);
		//button.removeAttr("disabled");
	}
};

// Ajaxフォーム基底クラス
var PRFormAjax = {
	// variables
	ajax_: null,
	formId_: null, // <form>のID
	actId_: null, // フォームをActiveにするID
	showId_: null, // Active/InActiveとなるフォームエリアのID
	async_: true, // true:非同期 false:同期
	current_: null, // カレントリスナ
	submitId_: null, // submitされたID
	state_: 0,
	lis_: null,

	// override methods (your implementation)
	// abstract:フォームアクティブ
	active: function(){
		if(!this.showId_) return;
		if($("#"+this.showId_).get(0)){
			$("#"+this.showId_).css({"display":"block"});
			//$("#"+this.showId_).modal("show");
		}
	},

	// abstract:フォームインアクティブ
	inactive: function(){
		if(!this.showId_) return;
		if($("#"+this.showId_).get(0)){
			$("#"+this.showId_).css({"display":"none"});
			//$("#"+this.showId_).modal("none");
		}
	},

	// public methods
	// 初期処理
	init: function(param){
		this.formId_ = param.formId;
		if(param.actId) this.actId_ = param.actId;
		if(param.showId) this.showId_ = param.showId;
		if(param.async) this.async_ = param.async;
		var hasFile = false;
		if(param.hasFile) hasFile = param.hasFile;
		this.ajax_ = Object.create(PRAjax,{"formId":param.formId,"hasFile":hasFile});
		var lis = Object.create(PRFormAjaxListener,{"actId":this.actId_});
		this.addListener(lis);
	},

	// インジケータ設定
	setIndicator: function(indicator){
		this.ajax_.setIndicator(indicator);
	},

	// submitボタンの追加
	addSubmit: function(id,type){
		if(type == 0){ // onClick
			$("#"+id).click({me:this},function(e){
				e.preventDefault();
				var me = e.data.me;
				me.submitId_ = e.target.id;
				$("#"+me.formId_).submit();
			});
		}else{ // onChange
			$("#"+id).change({me:this},function(e){
				e.preventDefault();
				var me = e.data.me;
				me.submitId_ = e.target.id;
				$("#"+me.formId_).submit();
			});
		}
	},

	// リスナの追加
	addListener: function(listener){
		if(listener.actId){
			$("#"+listener.actId).click({me:this},function(e){
				var me = e.data.me;
				var lis = listener;
				if(lis.state == 0) return;

				if(lis.async){ // 非同期
					if(lis.reqId){
						var cb = me.callback.bind(me);
						lis.setCallback(cb);
						lis.request(e);
					}else{
						lis.show();
						me.active();
						me.current_ = lis;
						me.state_ = 1;
					}
					me.lis_ = lis;
				}else{ // 同期
					var res = null;
					if(lis.reqId){
						var rvals = lis.request(e);
						if(rvals[0] != "success"){
							lis.onError(rvals[2]);
							return;
						}
						res = rvals[1];
					}
					lis.show(res);
					me.active();
					me.current_ = lis;
					me.state_ = 1;
				}
				return false; // e.preventDefault() & e.stopPropagation()
			});
			$(document).click({me:this},function(e){
				if(!me) return;
				var me = e.data.me;
				if(me.state_ == 1){
					me.inactive();
					me.state_ = 0;
				}
			});
			$("#"+this.showId_).click(function(e){
				e.stopPropagation();
			});
		}else{
			// actIdがない場合はすぐにフォームに値をセット
			listener.show();
			this.current_ = listener;
			this.state_ = 1;
		}
	},

	// request callback
	callback: function(rvals){
		if(rvals[0] != "success"){
			lis.onError(rvals[2]);
			return;
		}
		var res = rvals[1];
		this.lis_.show(res);
		this.active();
		this.current_ = this.lis_;
		this.state_ = 1;
	},

	// submit処理
	listen: function(){
		$("#"+this.formId_).submit({me:this},function(e){
			e.preventDefault();
			var me = e.data.me;
			var lis = me.current_;
			var submitId = me.submitId_;
			me.submitId_ = null;
			if(lis.state == 0) return;
			if(lis.before(e,submitId) === false) return false;
			var msg = lis.getMessage(submitId);
			if(msg){
				if(!window.confirm(msg)) return false;
			}
			if(lis.state == 2) return;

			if(me.async_){
				var cb = me._callback.bind(me);
				me.ajax_.setCallback(cb);
				me.ajax_.post(submitId);
				me.lis_ = lis;
			}else{
				var rvals = me.ajax_.post(submitId);
				if(rvals[0] == "success"){
					var res = rvals[1];
					lis.after(res);
					if((res.rcode == 0)&&(!res.stay)) me.inactive();
				}else{
					lis.onError(rvals[2]);
				}
			}
		});
	},

	// private methods
	// submit callback
	_callback: function(rvals){
		if(rvals[0] == "success"){
			var res = rvals[1];
			this.lis_.after(res);
			if((res.rcode == 0)&&(!res.stay)) this.inactive();
		}else{
			this.lis_.onError(rvals[2]);
		}
	},

	// エラー処理
	_error: function(rc,msg){
	}
};

// AjaxフォームリスナーInterface
var PRFormAjaxListenerInf = {
	// variables
	actId: null, // フォームをアクティブにするID
	reqId: null, // リクエスト用フォームのID
	state: 1, // 0:inactive（何もしない） 1:active 2:no submit
	async: true, // true:非同期 false:同期
	items: null, // 送信データ（JSON）

	// override methods (your implementation)
	getMessage: function(msg){}, // 確認メッセージの取得
	request: function(event){}, // フォームデータリクエスト
	show: function(event){}, // フォーム表示
	before: function(event,submitId){}, // 送信前処理
	after: function(res){}, // 送信後処理
	onError: function(error){}, // エラー処理

	// public methods
	init: function(param){}, // 初期処理
	setCallback: function(cb){}, // 非同期コールバック

	// private methods
	_show: function(){}, // フォームデータ埋め込み
	_after: function(res){} // DOM編集
};

// Ajaxフォームリスナー基底クラス
var PRFormAjaxListener = {
	// variables
	actId: null,
	reqId: null,
	state: 1,
	async: true,
	dom: null,

	ajax_: null,
	callback_: null,

	// 確認メッセージの取得
	getMessage: function(submitId){
		return null;
	},

	// データリクエスト
	request: function(event){
		var rvals = this._request();
		return rvals;
	},

	// フォーム表示
	show: function(res){
		if(this.dom) this._domUpdate(this.dom);
		if((res)&&(res.dom)) this._domUpdate(res.dom);
	},

	// 送信前処理
	before: function(event,submitId){
		return true;
	},

	// 送信後処理
	after: function(res){
		if(res.dom) this._domUpdate(res.dom);
	},

	// エラー処理
	onError: function(error){
	},

	init: function(param){
		if(param.actId) this.actId = param.actId;
		if(param.reqId) this.reqId = param.reqId;
		if(param.state) this.state = param.state;
		if(param.async) this.async = param.async;
		if(param.dom) this.dom = param.dom;
		if(param.hover){
			$("#"+this.actId).hover(
				function(e){
					$(this).css("cursor","pointer");
				},
				function(e){
					$(this).css("cursor","default");
				}
			);
		}
		if(param.reqId) this.ajax_ = Object.create(PRAjax,{"formId":param.reqId});
	},

	// 非同期コールバック設定
	setCallback: function(cb){
		this.callback_ = cb;
	},

	_request: function(){
		if(this.async){
			var cb = this._callback.bind(this);
			this.ajax_.setCallback(cb);
			this.ajax_.post();
		}else{
			var rvals = this.ajax_.post();
			return rvals;
		}
	},

	_callback: function(rvals){
		this.callback_(rvals);
	},

	// res:{dom:{append:{},prepend:{},after:{},before:{},replace:{},remove:{}}};
	_domUpdate: function(dom){
		if(dom.append){ // idの中にlastIn
			$.each(dom.append,function(id,tag){
				var ele = pr_getElementByIdName(id);
				if(ele){
					ele.append(tag);
					ele.children().slideDown();
				}
			});
		}
		if(dom.prepend){ // idの中にfirstIn
			$.each(dom.prepend,function(id,tag){
				var ele = pr_getElementByIdName(id);
				if(ele){
					ele.prepend(tag);
					ele.children().slideDown();
				}
			});
		}
		if(dom.after){ // idの直下に追加
			$.each(dom.after,function(id,tag){
				var ele = pr_getElementByIdName(id);
				if(ele) ele.after(tag);
			});
		}
		if(dom.before){ // idの直前に追加
			$.each(res.dom.before,function(id,tag){
				var ele = pr_getElementByIdName(id);
				if(ele) ele.before(tag);
			});
		}
		if(dom.replace){ // idの中を更新
			//$.each(dom.replace,function(id,tag){ $("#"+id).replaceWith(tag); });
			$.each(dom.replace,function(id,tag){
				var ele = pr_getElementByIdName(id);
				if(ele){
					if(ele.get(0).tagName == "INPUT"){
						ele.val(tag);
					}else{
						ele.html(tag);
					}
				}
			});
		}
		if(dom.remove){ // idを無効化
			$.each(dom.remove,function(id,tag){
				var ele = pr_getElementByIdName(id);
				if(ele) ele.addClass("dfade");
			});
			this.state = 0;
		}
		if(dom.removef){ // idを削除
			if($("#"+this.actId).get(0)) $("#"+this.actId).unbind();
			$.each(dom.removef,function(id,tag){
				var ele = pr_getElementByIdName(id);
				if(ele) ele.remove();
			});
			this.state = 0;
		}
	}
};
// 継承の例
// var MyListener = $.extend({},PRFormAjaxListener,Template);
// itemsの例
// items:{"post_UserId":"5","post_Name":"test5","post_EMail":"test5@test.co.jp","post_Attr1":""}

function pr_getElementByIdName(id){
	var ele = $("#"+id);
	if(!ele.get(0)){
		ele = $("[name="+id+"]");
		//ele = $("input[name="+id+"]");
		if(!ele.get(0)) return null;
	}
	return ele;
}

/*---------------------------------------------------------------------------*
 * メッセージ - function
 *---------------------------------------------------------------------------*/
// メッセージ表示
function pr_checkMsg(msg,url){
	if(window.confirm(msg)){
		if(url != null){
			window.location.href = url;
		}
		return true;
	}else{
		return false;
	}
}

// メッセージ付サブミット
function pr_checkMsgSubmit(msg,obj,ptype){
	var ele = $("#btn_submit");
	if(ele.size() > 0){
		var cls = ele.attr('class');
		if(cls.indexOf("dfade") != -1) return false;
	}
	if(window.confirm(msg)){
		if(ele.size() > 0) ele.addClass("dfade");
		var ele2 = $("#post_ptype");
		if((ele2.size() > 0)&&(ptype)) ele2.val(ptype);
		obj.submit();
	}
	return false;
}

// サブウィンドウ生成
function pr_subwindow(html,title,width,height){
	if(width == -1) width = 790 + 20;
	if(height == -1) height = 850;
	//var str = ',menubar=no,toolbar=no,scrollbars=yes';
	var str = ',menubar=yes,toolbar=yes,scrollbars=yes';
	window.open(html,title,'width=' + width + ',height=' + height + str);
	return false;
}

// アラート
function pr_alert(msg){
	alert(msg.replace(/[\n\r]/g,"\r\n"));
}

/*---------------------------------------------------------------------------*
 * 日付・時刻関連 - function
 *---------------------------------------------------------------------------*/
function pr_getDate(date,day,month,year){
	if(day === undefined) day = 0;
	if(month === undefined) month = 0;
	if(year === undefined) year = 0;
	var yy = date.getFullYear();
	var mm = date.getMonth();
	var dd = date.getDate();
	date = new Date(yy+year,mm+month,dd+day);
	return date;
}

function pr_getDateOfString(str,day,month,year){
	if(day === undefined) day = 0;
	if(month === undefined) month = 0;
	if(year === undefined) year = 0;
	var date = new Date();
	var yy = date.getFullYear();
	var mm = date.getMonth();
	var dd = date.getDate();
	if(str != null){
		yy = parseInt(str.substr(0,4));
		mm = parseInt(str.substr(5,2));
		dd = parseInt(str.substr(8,2));
		mm = mm - 1;
	}
	date = new Date(yy+year,mm+month,dd+day);
	return date;
}

function pr_getDateString(date,hasTime){
	var sep = "/";
	var yy = date.getFullYear();
	var mm = date.getMonth() + 1;
	var dd = date.getDate();
	if(mm < 10) mm = "0" + mm;
	if(dd < 10) dd = "0" + dd;
	var str = yy + sep + mm + sep + dd;
	if(hasTime) str = str + " " +("0"+date.getMinutes()).slice(-2);
	return str;
}

/*---------------------------------------------------------------------------*
 * 座標 - function
 *---------------------------------------------------------------------------*/
// 画面の中心を取得
function pr_getCoordinates(ele){
	//var sz = Element.getDimensions(ele);
	var szw = ele.width();
	var szh = ele.height();
	var scx = document.body.scrollLeft || document.documentElement.scrollLeft;   
	var scy = document.body.scrollTop || document.documentElement.scrollTop;   
	var cw1 = document.documentElement.clientWidth || document.body.clientWidth || document.body.scrollWidth;
	var ch1 = document.documentElement.clientHeight || document.body.clientHeight || document.body.scrollHeight;
	var pos = new Array();
	pos[0] = Math.round((cw1/2) - (szw/2) + scx);
	pos[1] = Math.round((ch1/2) - (szh/2) + scy);
	if(pos[0] < scx+10) pos[0] = scx+10;
	if(pos[1] < scy+10) pos[1] = scy+10;

	return pos;
}

// マウス座標を取得
function pr_getMouseCoordinates(evt){
	var scx = document.body.scrollLeft || document.documentElement.scrollLeft;   
	var scy = document.body.scrollTop || document.documentElement.scrollTop;   
	var x = 0;
	var y = 0;
	if(window.opera){ // Opera
		x = evt.clientX;
		y = evt.clientY;
	}else if(document.all){ // IE4
		x = event.clientX + scx;
		y = event.clientY + scy;
		e = event;
	}else if(document.layers || document.getElementById){ // IE5,NN4,NN6,Moz
		x = evt.pageX;
		y = evt.pageY;
	}
	var pos = new Array();
	pos[0] = x;
	pos[1] = y;

	return pos;
}

/*---------------------------------------------------------------------------*
 * Misc - function
 *---------------------------------------------------------------------------*/
// htmlspecialchars
function pr_htmlspecialchars(ch){
	ch = ch.replace(/&/g,"&amp;");
	ch = ch.replace(/"/g,"&quot;");
	ch = ch.replace(/'/g,"&#039;");
	ch = ch.replace(/</g,"&lt;");
	ch = ch.replace(/>/g,"&gt;");
	return ch ;
}

function pr_showBlock(id){
	var idc = id + "_contents";
	if(document.getElementById){
		if($("#"+idc).css("display") == "none"){
			$("#"+idc).css({"display":"block"});
			if($("#"+id)) $("#"+id).html("－");
		}else{
			$("#"+idc).css({"display":"none"});
			if($("#"+id)) $("#"+id).html("＋");
		}
	}
}
