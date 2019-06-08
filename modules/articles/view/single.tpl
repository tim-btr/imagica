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
	<section class="single-article">
		<p class="h3"><?php echo hc($row['title']);?></p>
		<p class="full-text"><?php echo hc($row['text']);?></p>
		<div>
			<small class="text-muted"><?php echo hc($row['author']);?></small>

			<small class="text-muted float-lg-right"><?php echo hc($row['date']);?></small>
		</div>
	</section>
</div>