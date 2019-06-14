<?php
if(isset($_POST['post-search'])) {
	$res = q("
		SELECT * FROM `posts` 
		WHERE `title` LIKE '%".es($_POST['post-search'])."%'
	");
} else {
	$res = q("
		SELECT * FROM `posts`
		ORDER BY `id` ASC
	");
}

if(isset($_SESSION['notice'])){
	$notice = $_SESSION['notice'];
	unset($_SESSION['notice']);
}