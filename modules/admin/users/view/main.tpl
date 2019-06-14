<div class="bg-info info">
  <?php 
  if(isset($notice) ) {
	  echo hc($notice);
  }
  ?>
</div>
<form action="/admin/users/main" method="post" class="search-form form-inline">
	<div class="form-group mb-2">
		<input type="text" name="user-search" class="form-control" placeholder="Поиск пользователя">
	</div>
	<button type="submit" class="btn btn-primary mb-2">Найти</button>
</form>

<table class="table table-hover">
	<thead>
	<tr>
		<th colspan="3" scope="col" class="text-center">Управление пользователями</th>
	</tr>
	</thead>
	<tbody>
	<?php
	  if(isset($res)) {
			$i = 1;
			while($row = $res->fetch_assoc()) { ?>
				<tr>
					<td colspan="2">
						<?php echo '<b>'.$i.'.</b> Пользователь: '.$row['login'].'<br>('.$row['email'].')';?>
					</td>
					<td class="text-right">
						<a href="/admin/users/edit-user/edit/<?php echo (int)$row['id']; ?>" class="btn btn-primary">Редактировать</a>
						<a href="/admin/users/delete/del/<?php echo (int)$row['id'];?>" class="btn btn-danger">Удалить</a>
					</td>
				</tr>
				<?php
				++$i;
			}
		}
	?>
	</tbody>
</table>