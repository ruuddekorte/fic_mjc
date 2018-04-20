
		<?php
		define( 'WP_USE_THEMES', false ); get_header(); 
		?>
		<?php get_sidebar(); ?>

		<main>

		<!-- Start the Loop. -->
		<?php
		if (have_posts()) :
			while (have_posts()) :
		    	the_post();
				// The following template tags get the current post's 
	         	// title, the time it was posted, and who posted it.
	       		?>

				<h2 id="post-<?php the_ID(); ?>">
				<figure class="img_intro">
					<!-- ilham -->
				<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>">
				</figure>
					<?php the_title(); ?>
				</a></h2>
						
				 <!--ip  -->
					<p><em> Ecrit par <?php the_author() ?> le<?php the_time(get_option('date_format')); ?> </em></p>
				<!-- ip -->
				
		        <div class="entry">
					<?php the_content('lire la suite ...'); ?>
					<!-- ip -->
				</div>
				<p class="postmetadata">
					Posted in <?php the_category(', ') ?> 
					<strong>|</strong>
					<?php edit_post_link('Edit','','<strong>|</strong>'); ?>  
					<?php comments_popup_link('No Comments »', '1 Comment »', '% Comments »'); ?>
				</p>
				<!--
					<?php trackback_rdf(); ?>
				-->
			<?php endwhile; ?>
				<!-- This section, immediately after the end of The Loop, displays navigation controls to move forward and backward by each web page. More information is available in function reference for posts_nav_link(). -->
				<div class="navigation">
					<div class="alignleft"><?php previous_posts_link('&laquo; Previous Entries') ?>
					</div>
					<div class="alignright"><?php next_posts_link('Next Entries &raquo;','') ?>
					</div>
				</div>
		<?php else: ?> 
			<h2 class="center">Not Found</h2>
			<p class="center">
				<?php _e("Sorry, but you are looking for something that isn't here."); ?>
			</p>
		<?php endif; ?>

	</main>
	<!-- charger le sidebar   ilham -->
	
	<!-- fin -->

	<?php get_footer(); ?>	