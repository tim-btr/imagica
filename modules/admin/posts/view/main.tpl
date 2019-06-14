<div class="bg-info info">
	<?php
	if(isset($notice) ) {
		echo hc($notice);
	}
	?>
</div>
<div class="container-fluid no-padd">
	<div class="row">
		<div class="col">
			<form action="/admin/posts/main" method="post" class="search-form form-inline">
				<div class="form-group mb-2">
					<input type="text" name="post-search" class="form-control" placeholder="Поиск публикации">
				</div>
				<button type="submit" class="btn btn-primary mb-2">Найти</button>
			</form>
		</div>
		<div class="col text-right">
			<a href="/admin/posts/add-post" class="add-post btn btn-primary">
				<i class="fas fa-plus"></i>
				Добавить публикацию
			</a>
		</div>
	</div>
</div>

<table class="table table-hover">
	<thead>
		<tr>
			<th colspan="3" scope="col" class="text-center">Управление публикациями</th>
		</tr>
	</thead>
	<tbody>
		<?php
		if(isset($res)){
				$i = 1;
				while($row = $res->fetch_assoc()){?>
						<tr>
							<td colspan="2">
							<?php echo '<b>'.$i.'.</b> '.$row['title'];?>
							</td>
							<td class="text-right">
								<a href="/admin/posts/edit-post/edit/<?php echo (int)$row['id']; ?>" class="btn btn-primary">Редактировать</a>
								<a href="/admin/posts/delete/del/<?php echo (int)$row['id'];?>" class="btn btn-danger">Удалить</a>
							</td>
						</tr>
				<?php
						++$i;
				}
		}?>
	</tbody>
</table>