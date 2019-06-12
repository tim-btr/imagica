<?php
if(isset($_GET['key1'])) {
	$result = q("
		SELECT * FROM `articles` WHERE `id` = ".(int)$_GET['key1']
	);

	if(!mysqli_num_rows($result)) {
		$_SESSION['info'] = 'Данной записи не существует';
		header('Location: /articles/main');
		exit;
	} else {
		$row = $result->fetch_assoc();
	}
}