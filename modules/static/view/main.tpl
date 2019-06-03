<div class="container">

	<!-- //// ЗАГОЛОВОК //// -->
	<header>
		<h1><a href="/">каркасс</a></h1>
		<p class="lead">стандартный шаблон каркасса для простых сайтов-визиток, интернет-магазинов, посадочных страниц и т.д.</p>
	</header>

	<!-- //// МЕНЮ //// -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<a href="#" class="nav-link">главная</a>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link">инфо</a>
			</li>
			<li class="nav-item">
				<a href="#" class="nav-link">отзывы</a>
			</li>
		</ul>
	</nav>

	<!-- //// КАРУСЕЛЬ //// -->
	<div class="carousel slide" id="carouselExampleIndicators">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>

		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="http://lorempixel.com/1170/300/people" alt="slides">
				<div class="carousel-caption">Стандартный каркасс</div>
			</div>
			<div class="carousel-item">
				<img src="http://lorempixel.com/1170/300/nature" alt="slides">
				<div class="carousel-caption">Сделан на Bootstrap4</div>
			</div>
			<div class="carousel-item">
				<img src="http://lorempixel.com/1170/300/animals" alt="slides">
				<div class="carousel-caption">Очень просто</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<!-- //// ПОДРОБНОСТИ //// -->
	<section id="features">
		<h3>особенности работы</h3>
		<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit. A ab, accusamus, aspernatur blanditiis dolor nulla placeat possimus rem repudiandae temporibus totam veritatis voluptatem! Aspernatur dignissimos dolore minus omnis possimus velit!
		</p>
		<hr>

		<div class="row">
			<div class="col-lg-4">
				<div class="media">
					<a href="#">
						<img src="http://lorempixel.com/80/80/nature" alt="medias">
					</a>
					<div class="media-body">
						<h5 class="media-heading">Хорошие плюшки</h5>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, perferendis?
						</p>
					</div>
				</div>
			</div>

			<div class="col-lg-4">
				<div class="media">
					<a href="#">
						<img src="http://lorempixel.com/80/80/nature" alt="medias">
					</a>
					<div class="media-body">
						<h5 class="media-heading">Хорошие плюшки</h5>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, perferendis?
						</p>
					</div>
				</div>
			</div>

			<div class="col-lg-4">
				<div class="media">
					<a href="#">
						<img src="http://lorempixel.com/80/80/nature" alt="medias">
					</a>
					<div class="media-body">
						<h5 class="media-heading">Хорошие плюшки</h5>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, perferendis?
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr>

	<!-- //// ОТЗЫВЫ //// -->
	<section id="testimonials">
		<div class="panel">
			<div class="panel-heading">несколько отзывов от заказчиков</div>
			<div class="row">
				<div class="col-lg-6">
					<blockquote>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet, temporibus.
						<small>
							Tim BTR
							<cite>source</cite>
						</small>
					</blockquote>
				</div>
				<div class="col-lg-6">
					<blockquote>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet, temporibus.
						<small>
							Tim BTR
							<cite>source</cite>
						</small>
					</blockquote>
				</div>
			</div>
		</div>
	</section>


	<!-- //// ЗАКАЗ //// -->
	<section id="order">
		<div class="well well-lg">
			<h3 class="text-center">Order</h3>
			<p class="text-center">Здесь вы можете оформить заказ</p>
			<p class="text-center">
				<a href="" class="btn btn-primary">Get It!</a>
			</p>
		</div>
	</section>
</div>