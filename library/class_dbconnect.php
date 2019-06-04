<?php
/*
ALIAS:
q(); Запрос
es(); mysqli_real_escape_string

РАБОТА С ОБЪЕКТОМ ВЫБОРКИ
$res = q(); // Запрос с возвратом результата
$res->num_rows; // Количество возвращенных строк - mysqli_num_rows();
$res->fetch_assoc(); // достаём запись - mysqli_fetch_assoc();
$res->close(); // Очищаем результат выборки

РАБОТА С ПОДКЛЮЧЕННОЙ MYSQL
\DB::_()->affected_rows; // Количество изменённых записей
\DB::_()->insert_id; // Последний ID вставки
\DB::_()->real_escape_string(); // аналог es();
\DB::_()->query(); // аналог q
\DB::_()->multi_ query(); // Множественные запросы

\DB::close(); // Закрываем соединение с БД
*/

class dbConnect {
	static public $mysqli  = []; //наши соединения
	static public $connect = []; //идентификаторы
	
	static public function _($key = 0){
		//если отсутствует дефаултное соединение, то создаем его 
		if(!isset(self::$mysqli[$key])){
			//подтягиваем идентификаторы из Core, если специально не прописаны
			if(!isset(self::$connect['dbhost'])){
				self::$connect['dbhost'] = Core::$dbhost;
			} 
			if(!isset(self::$connect['dbuser'])){
				self::$connect['dbuser'] = Core::$dbuser;
			} 
			if(!isset(self::$connect['dbpass'])){
				self::$connect['dbpass'] = Core::$dbpass;
			} 
			if(!isset(self::$connect['db'])){
				self::$connect['db'] = Core::$db;
			} 
		
			//здесь создается соединение 
			//эта функция генерирует warning, поэтому нужно поглотить его используя @ 
			self::$mysqli[$key] = @new mysqli(self::$connect['dbhost'], self::$connect['dbuser'], self::$connect['dbpass'], self::$connect['db']);
			
			//обрабатываются ошибка соединения 
			if(mysqli_connect_errno()){
				echo 'Не удалось подключиться к базе данных';
				exit;
			}
			
			//обрабатываются ошибка кодировки
			if(!self::$mysqli[$key]->set_charset("utf8")){
				echo 'Ошибка при загрузке символов utf8: '.self::$mysqli[$key]->error;
				exit;
			}
		}
		return 	self::$mysqli[$key];
	}
	
	static public function close($key = 0) {
		self::$mysqli[$key]->close();
		unset(self::$mysqli[$key]);
	}
}