<div class="text-center warning">
	<span>*</span>
	- поле обязательно для заполнения
</div>

<form action="" method="post">

	<div class="form-group row">
		<label for="inputName" class="col-sm-2 col-form-label">
			Имя пользователя
			<span>*</span>
		</label>
		<div class="col-sm-10">
			<input type="text" name="name" class="form-control <?php if(isset($errors['name'])) {echo 'is-invalid';}?>" id="inputName" placeholder="<?php if(isset($errors['name'])) {echo hc($errors['name']);}else{echo 'Имя пользователя';}?>" value="<?php if(isset($_POST['name'])) {echo hc($_POST['name']);} else {echo hc($row['name']);} ?>">
		</div>
	</div>

	<div class="form-group row">
		<label for="inputLogin" class="col-sm-2 col-form-label">
			Логин
			<span>*</span>
		</label>
		<div class="col-sm-10">
			<input type="text" name="login" class="form-control <?php if(isset($errors['login'])) {echo 'is-invalid';}?>" id="inputLogin" placeholder="<?php if(isset($errors['login'])) {echo hc($errors['login']);}else{echo 'Логин';}?>" value="<?php if(isset($_POST['login'])){echo hc($_POST['login']);} else{echo hc($row['login']);}?>">
		</div>
	</div>

	<div class="form-group row">
		<label for="inputPassword" class="col-sm-2 col-form-label">
			Пароль
			<span>*</span>
		</label>
		<div class="col-sm-10">
			<input type="password" name="pass" class="form-control <?php if(isset($errors['pass'])) {echo 'is-invalid';}?>" placeholder="<?php if(isset($errors['pass'])) {echo hc($errors['pass']);}else{echo 'Пароль';}?>">
		</div>
	</div>

	<div class="form-group row">
		<label for="inputEmail" class="col-sm-2 col-form-label">
			Эл. почта
			<span>*</span>
		</label>
		<div class="col-sm-10">
			<input type="email" name="email" class="form-control <?php if(isset($errors['email'])) {echo 'is-invalid';}?>" id="inputEmail" placeholder="<?php if(isset($errors['email'])) {echo hc($errors['email']);}else{echo 'Эл. почта';}?>" value="<?php if(isset($_POST['email'])) {echo hc($_POST['email']);}else{echo hc($row['email']);}?>">
		</div>
	</div>

	<div class="form-group row">
		<label for="inputAge" class="col-sm-2 col-form-label">Возраст</label>
		<div class="col-sm-10">
			<input type="text" name="age" class="form-control" id="inputAge" placeholder="Возрасты" value="<?php if(isset($row['age'])) {echo hc($row['age']);} ?>">
		</div>
	</div>

	<fieldset class="form-group">
		<div class="row">
			<legend class="col-form-label col-sm-2 pt-0">Пол</legend>
			<div class="col-sm-10">

				<div class="form-check">
					<input class="form-check-input" type="radio" value="m" name="sex" <?php if(isset($row['sex']) && $row['sex'] == 'm') {echo 'checked';} ?>>
					<label class="form-check-label">
						Муж.
					</label>
				</div>

				<div class="form-check">
					<input class="form-check-input" type="radio" name="sex" value="f" <?php if(isset($row['sex']) && $row['sex'] == 'f') {echo 'checked';} ?>>
					<label class="form-check-label">
						Жен.
					</label>
				</div>

			</div>
		</div>
	</fieldset>

	<div class="form-group row">
		<div class="col-sm-10">
			<button type="submit" class="btn btn-primary">Редактировать</button>
		</div>
	</div>
</form>
<?php
if(isset($row['role']) && $row['role'] != 'banned') { ?>
	<a href="/admin/users/edit-user/ban/<?php echo (int)$row['id']; ?>" class="btn btn-danger">Забанить</a>
<?php
} elseif(isset($row['role']) && $row['role'] == 'banned') { ?>
	<a href="/admin/users/edit-user/unban/<?php echo (int)$row['id']; ?>" class="btn btn-info">Разбанить</a>
	<?php
}

	
	
