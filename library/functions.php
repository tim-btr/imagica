<?php
/**
 * @param $el
 * @param bool $stop
 * Отладочная функция
 */
function wtf($el, $stop = false) {
	echo '<pre>'.htmlspecialchars(print_r($el, 1)).'</pre>';
	if(!$stop) {
		exit();
	}
}

/*
 * Функции - оболочки для обработки массивов
 * intAll
 * floatAll
 * hc
 * es
 */
function intAll($el) {
	if(!is_array($el)) {
		$el = (int)($el);
	} else {
		$el = array_map('intAll',$el);
	}
	return $el;
}

function floatAll($el) {
	if(!is_array($el)) {
		$el = (float)($el);
	} else {
		$el = array_map('floatAll',$el);
	}
	return $el;
}

function hc($el) {
	if(!is_array($el)) {
		$el = htmlspecialchars($el);
	} else {
		$el = array_map('hc',$el);
	}
	return $el;
}

function es($el,$key = 0) {
	return \dbconnect::_($key)->real_escape_string($el);
}


function __autoload($class_name) {
	include './library/class_'.$class_name.'.php';
} 

//запрос к базе данных и логирование ошибок. 
function q($query, $key = 0) {
	$res = dbconnect::_($key)->query($query);
	if($res === false) {
		$info = debug_backtrace();	
		$date = date("Y-m-d h:m:i");
		
		$error = "Запрос не был выполнен.\r\n
		ЗАПРОС: ".$query."\r\n".dbconnect::_($key)->error."\r\n
		Выявлена ошибка в файле: ".$info[0]['file']."\r\n
		Строка: ".$info[0]['line'].', текст запроса: '.$info[0]['args'][0]."\r\n
		Время: ".$date."\r\n
		Ошибка: ".mysqli_error($con)."\r\n
		=================================";
		
		file_put_contents('./logs/mysql.log', $error."\r\n \r\n", FILE_APPEND);
		echo '<div style="color:#A5A5A5;">'.nl2br(htmlspecialchars($error)).'</div>'; 
	} 
	return $res;
}

/*
 * Хэширование (для паролей гл. образом)
 */
function myHash($var, $salt = 'mmorpg', $salt2 = 'wtfiamdhere') {
	return crypt(md5($var.$salt),$salt2);
}

/*
function isAdmin() {
	if(!empty(User::$role) && User::$role == 'admin') {
		return true;
	}
	return false;
}



 */

