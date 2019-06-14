<?php
if (isset($_GET['key2']) && $_GET['key2'] == 'edit') {
	$res = q("
		SELECT * FROM `posts`
		WHERE `id` = '".(int)$_GET['key3']."'
		LIMIT 1
	");

	if(!$res->num_rows){
		$_SESSION['notice'] = 'Материал не найден!';
		header('Location: /admin/posts/main');
		exit();
	}

	$row = $res->fetch_assoc();
	$res->close();
}

if (isset($_POST['title'], $_POST['description'], $_POST['text'], $_POST['author'])) {
	$errors = [];

	if(empty($_POST['title'])){
		$errors['title'] = true;
	}

	if(empty($_POST['description'])){
		$errors['description'] = true;
	}

	if(empty($_POST['text'])){
		$errors['text'] = true;
	}

	if(empty($_POST['author'])){
		$errors['author'] = true;
	}

	if(count($errors) == 0){
		q("
			UPDATE `posts` SET 
			`title` = '".es($_POST['title'])."',
			`description` = '".es($_POST['description'])."',
			`text` = '".es($_POST['text'])."',
			`author` = '".es($_POST['author'])."'
			WHERE `id` = ".(int)$_GET['key3']
		) or die(mysqli_error());

		$_SESSION['notice'] = 'Материал был успешно отредактирован';
		header('Location: /admin/posts');
		exit();
	}
}


