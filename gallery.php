<!DOCTYPE html>
<html lang="et">
	<!-- <html lang="{{ page.language_code }}"> -->
<head>
	<?php require("components/html-head.php") ?>
		<!-- {% include "html-head" %} -->
</head>

<body>
	<main class="site-content cfx" role="main">
		<?php require("components/site-header.php") ?>
			<!-- {% include "site-header" %} -->

		<main class="page-content cfx" role="main">
			<header class="content-header">
				<h1>Here's a good place for your slogan.</h1>
				<!-- <h1>{% contentblock name="slogan" %}{{ "title_goes_here" | lc }}{% endcontentblock %}</h1> -->
			</header>

				<!-- THIS IS THE STRUCTURE OF A GALLERY THAT IS GENERATED BY EDICY -->
				<div class="photo_gallery_area edys-gallery-area cfx">
					<style type="text/css" scoped="scoped">.edys-gallery a { padding-right: 5px; }</style>
					<div class="edys-gallery cfx">
						<a href="photos/gallery-1.jpg" class="edys-gallery-item" data-original-url="photos/gallery-1.jpg" rel="">
							<img src="photos/gallery-1.jpg" border="0" class="edys-gallery-image" alt="">
						</a>
						<a href="photos/gallery-2.jpg" class="edys-gallery-item" data-original-url="photos/gallery-2.jpg" rel="">
							<img src="photos/gallery-2.jpg" border="0" class="edys-gallery-image" alt="">
						</a>
						<a href="photos/gallery-3.jpg" class="edys-gallery-item" data-original-url="photos/gallery-3.jpg" rel="">
							<img src="photos/gallery-3.jpg" border="0" class="edys-gallery-image" alt="">
						</a>
						<a href="photos/gallery-4.jpg" class="edys-gallery-item" data-original-url="photos/gallery-4.jpg" rel="">
							<img src="photos/gallery-4.jpg" border="0" class="edys-gallery-image" alt="">
						</a>
						<a href="photos/gallery-5.jpg" class="edys-gallery-item" data-original-url="photos/gallery-5.jpg" rel="">
							<img src="photos/gallery-5.jpg" border="0" class="edys-gallery-image" alt="">
						</a>
						<a href="photos/gallery-6.jpg" class="edys-gallery-item" data-original-url="photos/gallery-6.jpg" rel="">
							<img src="photos/gallery-6.jpg" border="0" class="edys-gallery-image" alt="">
						</a>
					</div>
				</div>
				<link href="http://static.edicy.com/libs/edicy-gallery/3.0/edicy-gallery.css?1" media="screen" rel="stylesheet" type="text/css">
				<script type="text/javascript" src="http://static.edicy.com/libs/edicy-gallery/3.0/edicy-gallery.min.js?1"></script>
					<!-- CONTENT AREA THAT DISABLES TEXT AND FORM AREAS -->
					<!-- {% content only="gallery" %} -->
		</main>

		<?php require("components/site-footer.php") ?>
			<!-- {% include "site-footer" %} -->

	</section>
	<script>project.initCommonPage();</script>
</body>
</html>