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

	<main>
		<?php
		define( 'WP_USE_THEMES', false ); get_header(); 
		// <!-- Start the Loop. -->
		if (have_posts()) :
			while (have_posts()) :
		    	the_post();
					// The following template tags get the current post's 
		         	// title, the time it was posted, and who posted it.
		        ?>
					<h2 id="post-<?php the_ID(); ?>">
					<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>">
					<?php the_title(); ?></a></h2>
					<small>
					<?php the_time('F jS, Y') ?> 
					<!-- by <?php the_author() ?> -->
					</small>
		        <div class="entry">
					<?php the_content('Read the rest of this entry &raquo;'); ?>
				</div>
				<p class="postmetadata">
				Posted in <?php the_category(', ') ?> 
				<strong>|</strong>
				<?php edit_post_link('Edit','','<strong>|</strong>'); ?>  
				<?php comments_popup_link('No Comments »', '1 Comment »', '% Comments »'); ?></p>
				<!--
					<?php trackback_rdf(); ?>
				-->
			<?php endwhile; ?>
				<!-- This section, immediately after the end of The Loop, displays navigation controls to move forward and backward by each web page. More information is available in function reference for posts_nav_link(). -->
				<div class="navigation">
					<div class="alignleft"><?php previous_posts_link('&laquo; Previous Entries') ?></div>
					<div class="alignright"><?php next_posts_link('Next Entries &raquo;','') ?></div>
				</div>
			<?php else : ?>  <!--else double point ou point virgule ? -->
				<h2 class="center">Not Found</h2>
				<p class="center">
				<?php _e("Sorry, but you are looking for something that isn't here."); ?></p>
			<?php endif;
		get_sidebar();
		get_footer(); 
		?>
	</main>

	<footer>
		<h2>footer</h2>
	</footer>

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
</body>
</html>
