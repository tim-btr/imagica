<?php
if (isset($_GET['key2']) && $_GET['key2'] == 'edit') {
	$res = q("
		SELECT * FROM `articles`
		WHERE `id` = '".(int)$_GET['key3']."'
		LIMIT 1
	");

	if(!$res->num_rows){
		$_SESSION['notice'] = 'Материал не найден!';
		header('Location: /admin/articles/main');
		exit();
	}

	$row = $res->fetch_assoc();
	$res->close();
}

if (isset($_POST['title'], $_POST['description'], $_POST['text'], $_POST['author'])) {
	$errors = [];

	if(empty($_POST['title'])){
		$errors['title'] = 'Пустой заголовок';
	}

	if(empty($_POST['description'])){
		$errors['description'] = 'Пустое описание';
	}

	if(empty($_POST['text'])){
		$errors['text'] = 'Пустой текст';
	}

	if(empty($_POST['author'])){
		$errors['author'] = 'Не указан автор';
	}


	if(count($errors) == 0){
		q("
			UPDATE `articles` SET 
			`title` = '".escStr($_POST['title'])."',
			`description` = '".escStr($_POST['description'])."',
			`text` = '".escStr($_POST['text'])."',
			`author` = '".escStr($_POST['author'])."'
			WHERE `id` = ".(int)$_GET['key3']
		) or die(mysqli_error());

		$_SESSION['notice'] = 'Материал был успешно отредактирован';
		header('Location: /admin/articles/main');
		exit();
	}
}

if(isset($_SESSION['notice'])){
	$notice = $_SESSION['notice'];
	unset($_SESSION['notice']);
}

