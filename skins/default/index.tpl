<!DOCTYPE HTML>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="<?php echo toHtm(Core::$META['descrption']); ?>">
  <meta name="keywords" content="<?php echo toHtm(Core::$META['keywords']); ?>">
  <title><?php echo toHtm(Core::$META['title']); ?></title>
  <link rel="stylesheet" href="/css/normalize.css">
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <?php 
    if(count(Core::$CSS)) {
        echo implode('<br>', Core::$CSS);
    }
  ?>
  <?php
   if(count(Core::$JS)) {
        echo implode('<br>', Core::$JS);
    }
  ?>

</head>
<body>
<?php
	echo $content;
?>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>