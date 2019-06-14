<?php
if(isset($_GET['key2']) && $_GET['key2'] == 'del') {
	q("
		DELETE FROM `users`  
		WHERE `id` = ".(int)$_GET['key3']
	);

	$_SESSION['notice'] = 'Пользователь был удалён';
	header('Location: /admin/users');
	exit();
}