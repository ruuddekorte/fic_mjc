
		<?php
		define( 'WP_USE_THEMES', false ); get_header(); 
		?>

		<main>
			<h1>Initiatives Citoyennes</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <a href="#">[...]</a><p>
			<img class="alignnone size-full wp-image-20 img_google" src="http://localhost:8888/wp-content/uploads/2018/04/plan.jpeg" alt="" width="955" height="482" />
			
		<!-- Start the Loop. -->
		<?php
		if (have_posts()) :
			while (have_posts()) :
		    	the_post();
				// The following template tags get the current post's 
	         	// title, the time it was posted, and who posted it.
	       		?>
				<h2 id="post-<?php the_ID(); ?>">
				<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>">
				<?php if( get_field('date_debut') ): 
					$dateDebut = get_field('date_debut', false, false);
					$dateDebut = new DateTime($dateDebut);
					echo $dateDebut->format('j M Y'); ?>
				<?php endif; ?>	
					<?php the_title(); ?>
				</a></h2>
<!-- 				<small>
					<?php the_time('F jS, Y') ?> 
					by <?php the_author() ?>
				</small> -->
		        <div class="entry">
					<?php the_excerpt('Read the rest of this entry &raquo;'); ?>
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

	<?php get_footer(); ?>	