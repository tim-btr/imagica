<div class="container">
<?php
if(isset($_SESSION['code'])) {
		echo $_SESSION['code'];
		unset($_SESSION['code']);
}

if (isset($_SESSION['register']) && 'ok' == $_SESSION['register']) {
		echo '<p class="h3">Проверьте электронную почту для подтверждения регистрации</p>';
		unset($_SESSION['register']);
} else { ?>
	<form action="/account/register" method="post" class="add-form">
	  <table>

		<tr>
		  <td><?php if(isset($errors['login'])) {echo toHtm($errors['login']);} ?></td>
		  <td>
		  	Логин<span style="color:red;">*</span><br>
		  	<input type="text" name="login" id="regLog" value="<?php if(isset($_POST['login'])) {echo toHtm($_POST['login']);}?>">
		  </td>
		</tr>

		<tr>
		  <td><?php if(isset($errors['pass'])) {echo toHtm($errors['pass']);} ?></td>
		  <td>
		  	Пароль<span style="color:red;">*</span><br>
		  	<input type="password" id="regPass" name="pass" value="<?php if(isset($_POST['pass'])) {echo toHtm($_POST['pass']);}?>">
		  </td>
		</tr>

		<tr>
		  <td><?php if(isset($errors['email'])) {echo toHtm($errors['email']);} ?></td>
		  <td>
		  	Электронная почта<span style="color:red;">*</span><br>
		  	<input type="text" name="email" id="regMail" value="<?php if(isset($_POST['email'])) {echo toHtm($_POST['email']);}?>">	
		  </td>
		</tr>

		<tr>
			<td><?php if(isset($errors['name'])) {echo toHtm($errors['name']);} ?></td>
			<td>
				Имя<span style="color:red;">*</span><br>
				<input type="text" name="name" value="<?php if(isset($_POST['name'])) {echo toHtm($_POST['name']);}?>">
			</td>
		</tr>

		<tr>
			<td><?php if(isset($errors['age'])) {echo toHtm($errors['age']);} ?></td>
			<td>
				Возраст<br>
				<input type="text" name="age" value="<?php if(isset($_POST['age'])) {echo toHtm($_POST['age']);}?>">
			</td>
		</tr>

		<tr>
		  <td></td>
		  <td>
		  	Пол<br>
		  	<label><input type="radio" name="sex" value="f" align="left" <?php if(isset($_POST['sex']) && $_POST['sex'] == 'f') {echo 'checked';} ?>>Ж</label> <label><input type="radio" name="sex" value="m" <?php if(!isset($_POST['sex']) || (isset($_POST['sex']) && $_POST['sex'] == 'm')) {echo 'checked';} ?>>М</label>
		  </td>
		</tr>
		<tr>
		  <td>&nbsp;</td>
		  <td><input type="submit" value="Регистрация"></td>
		  <td>&nbsp;</td>
		</tr>
		<tr>
		  <td colspan="2" align="center"><span style="color:red;">*</span> - поле обязательно для заполнения</td>
		</tr>
	  </table>	  
	</form>
<?php 
}?>
</div>



