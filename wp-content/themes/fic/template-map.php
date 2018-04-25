<?php

/*	########################################
	##         Template Name: Map
*/	########################################
		
		define( 'WP_USE_THEMES', false ); get_header(); 

/*	########################################
	##                MAIN
*/	########################################

?>

		<main>
		<!-- <h1>Initiatives Citoyennes</h1> -->

		<!-- <div class="acf-map"></div>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBP6fX0jfKXq-LrlmQUMb-9hAKrmnWHKX4"></script>
		<script type="text/javascript">
			
		</script> -->

		<div id="my-map" style="height:500px"></div>
		<script>
				(function($) {
					var specimens = [
						<?php
							/* Get initiatives */
							$args = [
								'post_type' => 'initiative',

 	
				(function($) {
					var specimens = [
						<?php
							/* Get amphibians */
							$args = [
								'post_type' => 'amphibian',

								'orderby' => 'menu_order',
								'order' => 'DESC',
								'posts_per_page' => '-1'
							];

							$specimens_query = new WP_Query( $args );

							// The Loop
							if ( $specimens_query->have_posts() ) :

								while ( $specimens_query->have_posts() ) :
									$specimens_query->the_post();


								while ( $specimens_query->have_posts() ) :
									$specimens_query->the_post();


									$location = get_field('map');

									if(!empty($location)) :


										echo "{";
											echo "'lat':" . $location['lat'] . ",";
											echo "'lng':" . $location['lng'] . ",";
										echo "},\n";
									endif;
								endwhile;
							endif;
							/* Restore original Post Data */
							wp_reset_postdata();
						?>
					];

										echo "{";
											echo "'lat':" . $location['lat'] . ",";
											echo "'lng':" . $location['lng'] . ",";

										echo "},\n";
									endif;
								endwhile;

							endif;

							/* Restore original Post Data */

							wp_reset_postdata();

						?>

					];

				})(jQuery);

			</script>

			<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>

			<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB_geB4hpknOVuZyGDNTmsvTwnUx7B_UeM&callback=initMap"></script>



		<!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCE8DYaxzXQCSSt4-0P-AlKYyijurLpV8&callback=initMap"
  type="text/javascript"></script> -->

		<?php

			$term = get_field('initiative');

			if( $term ):
			 ?>
			 <h2>
				<?php echo $term->name; ?>
				</h2>
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

 <!-- add map on the page -->
<?php 

/*$location = get_field('location');

if( !empty($location) ):
?>
<div class="acf-map">
	<div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
</div>
<?php endif; */ ?>


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