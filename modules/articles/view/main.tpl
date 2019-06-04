<div class="container">
	<p class="h3 info">
		<?php
		if(isset($_SESSION['info'])) {
			  $info = $_SESSION['info'];
			  echo $info;
			  unset($_SESSION['info']);
		}
		?>
	</p>
	<?php
	$i = 1;
	while ($row = $result->fetch_assoc()) { ?>
		  <section class="article-preview">
				<p class="h3"><?php echo $i.'. '.toHtm($row['title']);?></p>
				<p><?php echo toHtm($row['description']);?></p>
				<a href="/articles/single/<?php echo toHtm($row['id']) ?>" class="btn btn-primary">Подробнее &rarr;</a>
			</section>
		<hr>
			<?php
		++$i;
	}	?>
</div>