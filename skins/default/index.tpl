<!DOCTYPE HTML>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="<?php echo toHtm(Core::$META['descrption']); ?>">
  <meta name="keywords" content="<?php echo toHtm(Core::$META['keywords']); ?>">
  <title><?php echo toHtm(Core::$META['title']); ?></title>
  <link rel="stylesheet" href="/css/normalize.css">
  <link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/skins/<?php echo toHtm(Core::$SKIN);?>/css/custom.css">
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

<div class="container">
	<!-- //// ЗАГОЛОВОК //// -->
	<header>
		<h1><a href="/" class="logo">каркасс</a></h1>
		<p class="lead"><span>с</span>тандартный шаблон каркасса для простых сайтов-визиток, интернет-магазинов, посадочных страниц и т.д.</p>
	</header>

	<!-- //// МЕНЮ //// -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<ul class="navbar-nav mr-auto">
			<?php
			foreach ($navigation as $k=>$v) {
				if($k == '') { ?>
					<li class="nav-item">
						<a href="/" class="nav-link <?php echo($_GET['module'] == 'static' && $_GET['page'] == 'main' ? 'active' : '') ?>"><?php echo $v; ?></a>
					</li>
			<?php
				} else { ?>
					  <li class="nav-item">
								<a href="/<?php echo $k; ?>/main" class="nav-link <?php echo($_GET['module'] == $k ? 'active' : '') ?>"><?php echo $v; ?></a>
						</li> <?php
				}
			}
			?>
		</ul>
	</nav>
</div>

<!-- //// ОСНОВНОЕ СОДЕРЖИМОЕ //// -->
<main>
<?php
	echo $content;
?>
</main>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>