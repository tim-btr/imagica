<div class="admin-users-notice">
	<?php
	if(isset($notice) ) {
		echo toHtm($notice);
	}
	?>
</div>
<p class="adm-us-search">Поиск статьи по заголовку</p>
<form action="/admin/articles/main" method="post" class="user-search-form">
	<input type="text" name="user-search" placeholder="Часть заголовка">
	<input type="submit" value="Найти">
</form>
<div class="admin-users-notice"></div>
<div>
	<table class="all-users-table">
		<?php
		if(isset($res)){
			while($row = $res->fetch_assoc()){?>
				<div class="admin-showall">
				<?php echo '<span>Материал: </span>'.$row['title'];?>
				<div class="edits">
					<a class="admin-edit-button aeb-edt" href="/admin/articles/edit-article/edit/<?php echo (int)$row['id']; ?>">Редактировать</a>
				</div>
				</div><?php
			}
		}?>
	</table>
</div>