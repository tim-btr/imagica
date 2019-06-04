<div class="adm-empty">
	<?php
	if((!isset($_SESSION['user']) || $_SESSION['user']['access'] != 2) && Core::$SKIN == 'admin') {
		include './'.Core::$MODEL.'/account/view/login.tpl';
	}
	?>
</div>