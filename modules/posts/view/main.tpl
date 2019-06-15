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
				<p class="h3"><?php echo $i.'. '.hc($row['title']);?></p>
				<p><?php echo hc($row['description']);?></p>
				<a href="/posts/single/<?php echo hc($row['id']) ?>" class="btn btn-primary">Подробнее &rarr;</a>
			</section>
			<?php
		++$i;
	}	?>
</div>