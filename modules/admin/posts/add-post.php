<?php
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
			INSERT INTO `posts` SET 
			`title` = '".es($_POST['title'])."',
			`text` = '".es($_POST['text'])."',
			`description` = '".es($_POST['description'])."',
			`author` = '".es($_POST['author'])."',
			`date` = CURDATE()
		") or die(mysqli_error());

		$_SESSION['notice'] = 'Материал был успешно добавлен';
		header('Location: /admin/posts');
		exit();
	}
}


