<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/skins/admin/css/admin.css">
	<script src="https://kit.fontawesome.com/26e1b359c4.js"></script>
	<title><?php echo hc(Core::$META['title']); ?></title>
</head>
<body>
<nav class="navbar">
	<div class="title">
		панель администратора
	</div>
	<div>
		<a href="/">сайт</a>
	</div>
</nav>
<div class="container-fluid">
	<div class="row">
		<div class="col-2 sidebar">
		<?php
		if(isset($_SESSION['user']) && $_SESSION['user']['role'] == 'admin') {?>
				<div class="menu-item">
					<i class="fas fa-list-ul glyph"></i>
					<a class="menu-link" href="/admin/posts">публикации</a>
				</div>
			  <div class="menu-item">
					<i class="fas fa-user glyph"></i>
					<a class="menu-link" href="/admin/users">пользователи</a>
				</div>
				<div class="menu-item">
					<i class="fas fa-sign-out-alt glyph"></i>
					<a class="menu-link" href="/account/exit">выход</a>
				</div>
			<?php
		}
		?>
		</div>
		<main class="col-10 offset-2">
			<?php
			echo $content;
			?>
		</main>
	</div>
</div>
</body>
</html>