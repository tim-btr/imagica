<?php
$result = q("
	SELECT * FROM `posts` ORDER BY `id` ASC
");

if(!mysqli_num_rows($result)) {
	$_SESSION['info'] = 'Нет записей';
	header('Location: /posts/main');
	exit;
}

