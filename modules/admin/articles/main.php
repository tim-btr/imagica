<?php
if(isset($_POST['article-search'])) {
	$res = q("
		SELECT * FROM `articles` 
		WHERE `title` LIKE '%".escStr($_POST['article-search'])."%'
	");
} else {
	$res = q("
		SELECT * FROM `articles`
		ORDER BY `id` ASC
	");
}

if(isset($_SESSION['notice'])){
	$notice = $_SESSION['notice'];
	unset($_SESSION['notice']);
}