<?php
if(!isset($notice) ) { ?>
<table class="adm-comm-edit-table">
<form action="" method="post">
	<tr>
		<td>Заголовок: <span>*</span></td>
		<td>
			<input type="text" name="title" value="<?php if(isset($_POST['title'])) {echo hc($_POST['title']);} else {echo hc($row['title']);} ?>">
		</td>
		<td><?php if(isset($errors['title'])) {echo hc($errors['title']);} ?></td>
	</tr>

	<tr>
		<td>Краткое описание: <span>*</span></td>
		<td>
			<textarea name="description" id="" cols="30" rows="10"><?php if(isset($_POST['description'])) {echo hc($_POST['description']);} else {echo hc($row['description']);} ?></textarea>
		</td>
		<td><?php if(isset($errors['description'])) {echo hc($errors['description']);} ?></td>
	</tr>

	<tr>
		<td>Полный текст: <span>*</span></td>
		<td>
			<textarea name="text" text id="" cols="50" rows="20">
				<?php if(isset($_POST['text'])) {echo hc($_POST['text']);} else {echo hc($row['text']);} ?>
			</textarea>
		</td>
		<td><?php if(isset($errors['text'])) {echo hc($errors['text']);} ?></td>
	</tr>

	<tr>
		<td>Автор: <span>*</span></td>
		<td><input type="text" name="author" value="<?php if(isset($_POST['author'])) {echo hc($_POST['author']);} else {echo hc($row['author']);} ?>"></td>
		<td><?php if(isset($errors['author'])) {echo hc($errors['author']);} ?></td>
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








