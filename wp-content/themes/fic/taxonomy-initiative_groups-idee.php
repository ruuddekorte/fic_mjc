<?php
		
		define( 'WP_USE_THEMES', false ); get_header(); 

/*	########################################
	##                MAIN
*/	########################################

?>

		<main>
			<!-- page /initiative_groups/idee/ -->
			<!-- <h1>Initiatives Citoyennes</h1> -->
			<p>Sur cette page vous trouverez les initiatives qui seront organisée. Les plus elles sont 'likes',  plus elles ont de chance d'être réalisée.<p>	

		<?php

$term = get_field('initiative');

if( $term ): ?>

	<h2><?php echo $term->name; ?></h2>
	<p><?php echo $term->description; ?></p>

<?php endif; 

/*	########################################
	##        Start the Loop (le boucle)
*/	########################################

		if (have_posts()) :
			while (have_posts()) :
		    	the_post(); ?>
		    	<div class="cadre">
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
				</div>
			<?php endwhile; 

			// Previous/next page navigation.
			the_posts_pagination( array(
				'prev_text'          => __( 'Première page', 'fic' ),
				'next_text'          => __( '| Page suivante', 'fic' ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( '| Page', 'fic' ) . ' </span>',
			) );


			else: ?> 
			<h2 class="center">Not Found</h2>
			<p class="center">
				<?php _e("Sorry, but you are looking for something that isn't here. [taxonomy-initiative]"); ?>
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
