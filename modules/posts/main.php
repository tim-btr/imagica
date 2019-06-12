<?php

$result = q("
	SELECT * FROM `articles` ORDER BY `id` ASC
");

if(!mysqli_num_rows($result)) {
	$_SESSION['info'] = 'Нет записей';
	header('Location: /articles/main');
	exit;
}

