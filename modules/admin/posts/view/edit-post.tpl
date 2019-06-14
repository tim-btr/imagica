<div class="text-center warning">
	<span>*</span>
	- поле обязательно для заполнения
</div>
<form action="" method="post">
	<div class="form-row">
		<div class="form-group col-md-6">
			<label for="inputTitle">Заголовок <span>*</span></label>
			<input name="title" type="text"
						 class="form-control <?php if(isset($errors['title']) && $errors['title'] === true) {echo 'is-invalid';}?>"
						 id="inputTitle"
						 placeholder="Заголовок" value="<?php if(isset($_POST['title']) && !empty($_POST['title'])) {echo hc($_POST['title']);} else {echo hc($row['title']);} ?>">
		</div>

		<div class="form-group col-md-6">
			<label for="inputAuth">Автор <span>*</span></label>
			<input name="author" type="text"
						 class="form-control <?php if(isset($errors['author']) && $errors['author'] === true) {echo 'is-invalid';}?>"
						 id="inputAuth"
						 placeholder="Автор"
						 value="<?php if(isset($_POST['author']) && !empty($_POST['author'])) {echo hc($_POST['author']);} else {echo hc($row['author']);} ?>">
		</div>
	</div>

	<div class="form-group">
		<label for="inputDescr">Краткое описание <span>*</span></label>
		<textarea name="description" placeholder="Краткое описание" class="form-control<?php if(isset($errors['description']) && $errors['description'] === true){echo ' is-invalid';}?>"><?php if(isset($_POST['description'])){echo hc($_POST['description']);}else{echo hc($row['description']);}?></textarea>
	</div>

	<div class="form-group">
		<label for="inputFullText">Полный текст <span>*</span></label>
		<textarea rows="10" name="text" id="inputFullText" class="form-control<?php if(isset($errors['text']) && $errors['text'] === true) {echo ' is-invalid';}?>"
							placeholder="Полный текст"><?php if(isset($_POST['text'])) {echo hc($_POST['text']);} else {echo hc($row['text']);} ?>
		</textarea>
	</div>

	<button type="submit" class="btn btn-primary">Редактировать</button>
</form>



