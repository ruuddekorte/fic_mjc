<?php

/*	########################################
	##         Template Name: Home
*/	########################################
		
		define( 'WP_USE_THEMES', false ); get_header(); 

/*	########################################
	##                MAIN
*/	########################################

?>

		<main>
			<h1>Initiatives Citoyennes</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <a href="#">[...]</a><p>
			<img class="alignnone size-full wp-image-20 img_google" src="http://localhost:8888/wp-content/uploads/2018/04/plan.jpeg" alt="" width="955" height="482" />

		<?php

$term = get_field('initiative');

if( $term ): ?>

	<h2><?php echo $term->name; ?></h2>
	<p><?php echo $term->description; ?></p>

<?php endif; 

/*	########################################
	##        Start the Loop (boucle)
*/	########################################

		if (have_posts()) :
			while (have_posts()) :
		    	the_post(); ?>
				<h2 id="post-<?php the_ID(); ?>">
				<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"> 
					<?php if( get_field('date_debut') ): 
						$dateDebut = get_field('date_debut', false, false);
						$dateDebut = new DateTime($dateDebut);
						echo $dateDebut->format('j M Y'); ?>
					<?php endif; ?>	
						<?php the_title(); ?>
				</a></h2>
		        <div class="entry">
					<?php the_excerpt('Read the rest of this entry &raquo;'); ?>
				</div>
			<?php endwhile; 
			// Previous/next page navigation.
			the_posts_pagination( array(
				'prev_text'          => __( 'Previous page', 'fic' ),
				'next_text'          => __( 'Next page', 'fic' ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'fic' ) . ' </span>',
			) );

			else: ?> 
			<h2 class="center">Not Found</h2>
			<p class="center">
				<?php _e("Sorry, but you are looking for something that isn't here."); ?>
			</p>
		<?php endif; 

/*	########################################
	##        END OF Loop (le boucle)
*/	########################################

?>

	</main>

<?php 	

/*	########################################
	##            END OF MAIN
*/	########################################

	get_footer();	

/*	########################################
	##     END OF Template Name: Home
*/	########################################
		
 ?>