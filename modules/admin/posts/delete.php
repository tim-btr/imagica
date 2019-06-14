<?php
if(isset($_GET['key2']) && $_GET['key2'] == 'del') {
	q("
		DELETE FROM `posts`  
		WHERE `id` = ".(int)$_GET['key3']
	);

	$_SESSION['notice'] = 'Публикация была удалена';
	header('Location: /admin/posts');
	exit();
}