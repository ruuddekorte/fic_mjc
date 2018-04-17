<!DOCTYPE html>
<html lang="fr">
<head>
	<title>ficmjc theme and templates</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome-4.7.0/css/font-awesome.css">
	<?php wp_head(); ?>
</head>
<body>
	
	<header>
		<h1> ficmjc theme and templates  </h1>
	</header>
	
	<nav>
		<ul>
			<li>A</li>
			<li>B</li>
			<li>C</li>
		</ul>
	</nav>

	<main>
		<?php get_header(); ?>
			<div id="content" class="narrowcolumn">
				<p>
				<strong>
					<?php single_cat_title('Currently browsing '); ?>
					</strong><br />
				<?php echo category_description(); ?>
				</p>
				<?php if (have_posts()) : ?>
					<?php while (have_posts()) : the_post(); ?>
					<div class="post">
					<h2 id="post-<?php the_ID(); ?>">
						<!-- ip -->
						<figure class="img_intro">
				<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>">
				<?php the_title(); ?></a></h2>
				 <!--ip  -->
					<p><em> Ecrit par <?php the_author() ?> le<?php the_time(get_option('date_format')); ?> </em></p>
				<!-- ip -->
					
			</div>
		<?php endwhile; ?>
			<div class="navigation">
				<div class="alignleft">
					<?php posts_nav_link('','','&laquo; Previous Entries') ?>
				</div>
				<div class="alignright">
					<?php posts_nav_link('','Next Entries &raquo;','') ?>
				</div>
			</div>
		<?php else : ?>
			<h2 class="center">Not Found</h2>
			<p class="center"><?php _e("Sorry, but you are looking for something that isn't here."); ?></p>
		<?php endif; ?>
		</div>
		<?php get_sidebar(); ?>
		<?php get_footer(); ?>
	</main>


	<footer>
		<h2>footer</h2>
	</footer>

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
</body>
</html>
