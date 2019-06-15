<?php
if((!isset($_SESSION['user']) || $_SESSION['user']['role'] != 'admin') && Core::$SKIN == 'admin') {
	include './modules/admin/account/login.php';
}