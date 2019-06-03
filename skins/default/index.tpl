<!DOCTYPE HTML>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="<?php echo toHtm(Core::$META['descrption']); ?>">
  <meta name="keywords" content="<?php echo toHtm(Core::$META['keywords']); ?>">
  <title><?php echo toHtm(Core::$META['title']); ?></title>
  <link rel="stylesheet" href="/css/normalize.css">
  <link rel="stylesheet" href="/css/custom.css">
  <?php 
    if(count(Core::$CSS)) {
        echo implode('<br>', Core::$CSS);
    }
  ?>
  <script src="/js/jquery.min.js"></script>
  <script src="/js/script.js"></script>
  <?php
   if(count(Core::$JS)) {
        echo implode('<br>', Core::$JS);
    }
  ?>

</head>
<body>
<?php
if(!isset($_SESSION['user'])) {
	echo '<a href="/account/register">регистрация</a>';
} ?>

<?php
	echo $ob_content;
?>
</body>
</html>