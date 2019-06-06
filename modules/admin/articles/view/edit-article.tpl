<?php
if(!isset($notice) ) { ?>
<table class="adm-comm-edit-table">
<form action="" method="post">
	<tr>
		<td>Заголовок: <span>*</span></td>
		<td>
			<input type="text" name="title" value="<?php if(isset($_POST['title'])) {echo toHtm($_POST['title']);} else {echo toHtm($row['title']);} ?>">
		</td>
		<td><?php if(isset($errors['title'])) {echo toHtm($errors['title']);} ?></td>
	</tr>

	<tr>
		<td>Краткое описание: <span>*</span></td>
		<td>
			<textarea name="description" id="" cols="30" rows="10"><?php if(isset($_POST['description'])) {echo toHtm($_POST['description']);} else {echo toHtm($row['description']);} ?></textarea>
		</td>
		<td><?php if(isset($errors['description'])) {echo toHtm($errors['description']);} ?></td>
	</tr>

	<tr>
		<td>Полный текст: <span>*</span></td>
		<td>
			<textarea name="text" text id="" cols="50" rows="20">
				<?php if(isset($_POST['text'])) {echo toHtm($_POST['text']);} else {echo toHtm($row['text']);} ?>
			</textarea>
		</td>
		<td><?php if(isset($errors['text'])) {echo toHtm($errors['text']);} ?></td>
	</tr>

	<tr>
		<td>Автор: <span>*</span></td>
		<td><input type="text" name="author" value="<?php if(isset($_POST['author'])) {echo toHtm($_POST['author']);} else {echo toHtm($row['author']);} ?>"></td>
		<td><?php if(isset($errors['author'])) {echo toHtm($errors['author']);} ?></td>
	</tr>

	<tr>
		<td colspan="2" align="center"><input type="submit" value="Редактировать"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><span>*</span> - поле обязательно для заполнения</td>
	</tr>
</form>
</table>
<?php
} else {
	echo $notice;
}








