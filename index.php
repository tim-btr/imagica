<?php
error_reporting(-1);
ini_set('display_errors', 1);
header('Content-type: text/html; charset=utf-8');

session_start();
ob_start();

include './library/functions.php';
include './config/config.php';
include './FrontController.php';

$frontContr = new FrontController;
if(!$frontContr->init()) {
	header('Location: /404');
	exit;
}

include './'.Core::$MODEL.'/allpages.php';

if(!file_exists('./'.Core::$MODEL.'/'.$_GET['module'].'/'.$_GET['page'].'.php') || !file_exists('./'.Core::$MODEL.'/'.$_GET['module'].'/view/'.$_GET['page'].'.tpl')) {
	header('Location: /404');
	exit;
}

include './'.Core::$MODEL.'/'.$_GET['module'].'/'.$_GET['page'].'.php';
include './'.Core::$MODEL.'/'.$_GET['module'].'/view/'.$_GET['page'].'.tpl';

$content = ob_get_contents();
ob_end_clean();

include './skins/'.Core::$SKIN.'/index.tpl';
