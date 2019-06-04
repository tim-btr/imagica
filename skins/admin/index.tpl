<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="description" content="<?php echo toHtm(Core::$META['descrption']); ?>">
    <meta name="keywords" content="<?php echo toHtm(Core::$META['keywords']); ?>">
    <link rel="stylesheet" href="/skins/admin/css/style-admin.css">
	<title></title>
</head>
<body>
  <div class="adm-top-banner">
	<a href="/admin/static/main"><img src="/img/logo2.png" alt="logo"></a>
    <a href="/account/login?exit=1" class="admin-top-link">выход</a>
	<a class="admin-top-link" href="/">на сайт</a><div class="clear"></div>
  </div>
  <div class="adm-menu-div">
	<?php 
	if(isset($_SESSION['user']) && $_SESSION['user']['access'] == 2) {
	?>
	<a class="admin-menu-link" href="/admin/articles">материалы</a>
  <a class="admin-menu-link" href="/admin/users">пользователи</a>
	<?php }?>
  </div>
  <div class="adm-inner">
  <?php
  echo $content;
  ?>
  </div>
  
  <div class="adm-footer">
    <a class="admin-foot-link" href="/">softlex</a>
  </div>
</body>
</html>