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
				<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>">
				<?php the_title(); ?></a></h2>
				<small>
				 <?php the_time('F jS, Y') ?> 
				    <!-- by <?php the_author() ?> -->
				</small>
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
			<!-- Different Formats for Different Categories
			As explained in the Template Hierarchy, it is possible to create separate template files for each category. Simply name the file category-X.php, where X is the numerical ID of the category. Consider carefully whether you need a whole new template for a specific category.

			Let's look at two categories, "Plants" and "Flowers", with category IDs 3 and 4, respectively. Next to each post title in the output you want to have picture of either a plant, or a flower, depending on which category is being displayed. You could:

			Use two separate files, category-3.php and category-4.php, each with a different img tag for each post title.
			Use a conditional test inside your default category.php file to check whether the current category is "Plants" or "Flowers" (or neither), and display the appropriate image: -->
		<?php if (is_category('3') ):
			// we're in the Plants category, so show a plant ?>
			<img src='/images/plant.png' alt='a plant' />
		<?php } elseif (is_category('4') ):
			// we're in the Flowers category, so show a flower ?>
			<img src='/images/flower.png' alt='a pretty flower' />
		<?php endif; // end the if, no images for other other categories ?>
			<!-- If you added another category, "Cars", which you wanted to display in a significantly different way, then a separate category-X.php would be more appropriate. -->

			<!-- Different CSS For Different Categories
			Many users want to create separate CSS files for a specific category. This, too, can be easily accomplished. It is important to remember that stylesheets are defined and loaded in the <head> section of the HTML document. WordPress uses the header.php file for this. In the default header.php, find this line: -->

		<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen" />
			<!-- And change it to something like this: -->

		<?php if ( is_category('5') ) { // Load special CSS for "Cars" category ?>
			<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/category-5.css" type="text/css" media="screen" />;
		<?php } else { ?>
			<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen" />
		<?php } ?>
			<!-- Note: The Cars template uses the category-5.css file to override the default layout. In this example the CSS file is named after the category template file to which it will be applied, rather than the actual name of the category. Thus, you know that category-5.css goes with category-5.php.

			Different Single Post Format
			When viewing any single post (or permalink), WordPress will use single.php, if present.

			This portion, from the WordPress default single.php, provides the post meta data information about the current post: -->

		<p class="postmetadata alt">
		<small>
			This entry was posted on <?php the_time('l, F jS, Y') ?> at <?php the_time() ?> 
			and is filed under <?php the_category(', ') ?>.
			You can follow any responses to this entry through 
			the <?php comments_rss_link('RSS 2.0'); ?> feed.
			<?php if ( comments_open() && pings_open() ) {
				// Both Comments and Pings are open
				?>
				You can <a href="#respond">leave a response</a>, or 
				<a href="<?php trackback_url(display); ?>">trackback</a> 
				from your own site.
			<?php } elseif ( !comments_open() && pings_open() ) {
				// Only Pings are Open 
				?>
				Responses are currently closed, but you can 
				<a href="<?php trackback_url(display); ?> ">trackback</a> 
				from your own site.
			<?php } elseif ( comments_open() && !pings_open() ) { ?>
				// Comments are open, Pings are not 
				You can skip to the end and leave a response. Pinging is currently not allowed.
			<?php } else { // Neither Comments, nor Pings are open ?>
				<!-- Both comments and pings are currently closed. -->
				<?php 
			} 
			edit_post_link('Edit this entry.','',''); ?>
		</small>
		</p>
	</main>


	<footer>
		<h2>footer</h2>
	</footer>

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
</body>
</html>
