<?php
if (isset($_GET['key2']) && $_GET['key2'] == 'edit') {
	$res = q("
		SELECT * FROM `users`
		WHERE `id` = '".(int)$_GET['key3']."'
		LIMIT 1
	");
 
	if(!$res->num_rows){
		$_SESSION['notice'] = 'Такого пользователя не существует!';
		header('Location: /admin/users/main');
		exit();
	}

	$row = $res->fetch_assoc();
	$res->close();
}

if (isset($_POST['name'], $_POST['login'], $_POST['pass'], $_POST['email'])) {
	$errors = [];

	if(empty($_POST['name'])){
		$errors['name'] = 'Не заполнено имя';
	}

	if(empty($_POST['login'])) {
		$errors['login'] = 'Не заполнен логин';
	} elseif(mb_strlen($_POST['login']) < 3) {
		$errors['login'] = 'Логин слишком короткий';
	} elseif(mb_strlen($_POST['login']) > 10) {
		$errors['login'] = 'Логин слишком длинный';
	}

	if(empty($_POST['pass'])) {
		$password = $row['password'];
	} elseif (mb_strlen($_POST['pass']) > 8) {
		$errors['pass'] = 'Пароль слишком длинный';
	} elseif (mb_strlen($_POST['pass']) < 3) {
		$errors['pass'] = 'Пароль слишком короткий';
	} else{
		$password = myHash($_POST['pass']);
	}

	if(empty($_POST['email']) || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
		$errors['email'] = 'Не заполнен емейл или он некорректен';
	}

	if(count($errors) == 0){
		$res = q("
			SELECT * FROM `users` 
			WHERE `id`       <> ".(int)$_GET['key3']."
			AND   `login`    = '".escStr($_POST['login'])."'
			LIMIT 1
		");

		if($res->num_rows ){
			$errors['login'] = 'Пользователь с таким логином уже существует';
		}

		$res = q("
			SELECT * FROM `users` 
			WHERE `id`       <> ".(int)$_GET['key3']."
			AND   `email`    = '".escStr($_POST['email'])."'
			LIMIT 1
		");

		if($res->num_rows ){
			$errors['email'] = 'Пользователь с такой эл. почтой уже существует';
		}		
	}

	if(isset($_POST['ban'])){
		if($_POST['ban'] == 'ban') {
			$role = 'banned';
		} else {
			$role = 'user';
		}
	} else {
		$role = $row['role'];
	}

	if(isset($_POST['age'])){
		$age = (int)$_POST['age'];
	} else {
		$age = (int)$row['age'];
	}

	if(isset($_POST['sex'])){
		$sex = $_POST['sex'];
	} else {
		$sex = $row['sex'];
	}

	if(count($errors) == 0){
		q("
			UPDATE `users` SET 
			`name` = '".escStr($_POST['name'])."',
			`login` = '".escStr($_POST['login'])."',
			`password` = '".escStr($password)."',
			`email` = '".escStr($_POST['email'])."',
			`age` = ".$age.",
			`sex` = '".$sex."',
			`role` = '".$role."'
			WHERE `id` = ".(int)$_GET['key3']
		);

		$_SESSION['notice'] = 'Данные пользователя были успешно отредактированы';
		header('Location: /admin/users/main');
		exit();
	}
} 

if(isset($_SESSION['notice'])){
	$notice = $_SESSION['notice'];
	unset($_SESSION['notice']);
}

