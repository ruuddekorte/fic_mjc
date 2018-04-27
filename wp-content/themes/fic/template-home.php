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

<?php
/*	########################################
	##        Start the Loop (boucle)
*/	########################################

if (have_posts()) :
	while (have_posts()) :
    	the_post(); 

    	// Map
    	$terms = get_field('map');

    	if( $terms ):
    	?>
    	<div id="my-map"></div>

		<script>
		(function($) {
			var initiatives = [
				<?php foreach( $terms as $term ):
				$args = [
					'post_type' => 'initiatives',
					'tax_query' => array(
						array(
							'taxonomy' => 'initiative_groups',
							'field'    => 'term_id',
							'terms'    =>  $term,
						),
					),
					'orderby' => 'menu_order',
					'order' => 'DESC',
					'posts_per_page' => '-1'
				];

				$term_query = new WP_Query( $args );

				// The Loop
				if ( $term_query->have_posts() ) :

					while ( $term_query->have_posts() ) :
						$term_query->the_post();

						$location = get_field('localisation');

						if (!empty($location)) :

							echo "{";
								echo "'lat':" . $location['lat'] . ",";
								echo "'lng':" . $location['lng'] . ",";
								echo "'name':'" . get_the_title() . "',";
							echo "},\n";
						endif;
							
					endwhile;
				endif;
				/* Restore original Post Data */
				wp_reset_postdata();
				endforeach; ?>
			];


			/* Init map, must be public for callback  */
			initMap = function() {
				var center = {lat: 44.362621, lng: 2.580576},
					marker = null,
					markers = [];
				/* Init map */
				var map = new google.maps.Map($('#my-map')[0], {
						zoom: 12,
						center: center
					}),
					geocoder = new google.maps.Geocoder,
					infowindow = new google.maps.InfoWindow;

				/* Init markers */
				function toggleBounce() {
					if (marker.getAnimation() !== null) {
						marker.setAnimation(null);
					} else {
						marker.setAnimation(null)
						// marker.setAnimation(google.maps.Animation.BOUNCE);
					}
					}
				for(var i = 0; i < initiatives.length; i++) {
					var marker = new google.maps.Marker({
	  					    map: map,
							position: {lat: initiatives[i].lat, lng: initiatives[i].lng},
							name: initiatives[i].name,
	  					    animation: google.maps.Animation.DROP
	  					});

					markers.push(marker);

					marker.addListener('click', toggleBounce);

					google.maps.event.addListener(marker, 'click', function() {
						var html = '';
						html += '<div class="initiatives-tooltip">';
							html += '<p>';
								html += '<strong>' + this.name + '</strong>';
							html += '</p>';
						html += '</div>';

		                infowindow.setContent(html);
		                infowindow.open(map,this);
		            });
				}
				var markerCluster = new MarkerClusterer(map, markers, {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
			}
		})(jQuery);
			</script>

			<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>

			<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB_geB4hpknOVuZyGDNTmsvTwnUx7B_UeM&callback=initMap"></script>
		
		<?php endif; ?>

		
    	<?php // Intro
    		the_field('intro'); 
    	?>

    	<?php // Ideas

		$terms = get_field('idea');

		if( $terms ): ?>

			<section>

			<?php foreach( $terms as $term ): ?>

				<?php
				$args = [
					'post_type' => 'initiatives',
					'tax_query' => array(
						array(
							'taxonomy' => 'initiative_groups',
							'field'    => 'term_id',
							'terms'    =>  $term,
						),
					),
					'orderby' => 'menu_order',
					'order' => 'DESC',
					'posts_per_page' => '-1'
				];

				$term_query = new WP_Query( $args );

				// The Loop
				if ( $term_query->have_posts() ) :
					?>
					<div class="row  text-center"><div class="col-lg-1 col-sm-0"> </div><div class="col-lg-10 col-sm-12 cadre">
					<h2>Liste des idées proposées pour les initiatives :</h2>
					<?php while ( $term_query->have_posts() ) :
						$term_query->the_post(); ?>
							<article>
								<h3><?php the_title();?> <a href="<?php the_permalink();?>" class="little_text"><?php _e("...voir l'idée"); ?></a></h3>

							</article>
					<?php endwhile; ?>
					</div><div class="col-lg-1 col-sm-0"> </div></div>
				<?php endif;
				/* Restore original Post Data */
				wp_reset_postdata();
				?>

			<?php endforeach; ?>

			</section>

		<?php endif; ?>
			<div class="form_links">
		    	<?php // Purpose 
		    	if(get_field('propose_link')) : ?>

			    		<a href="<?php the_field('propose_link'); ?>" class="fabrique fic_red"><?php _e("Je propose une initiative"); ?></a>
		    	<?php endif; ?>
		    	<?php // Organize 
		    	if(get_field('organize_link')) : ?>

		    			<a href="<?php the_field('organize_link'); ?>" class="fabrique fic_blue"><?php _e("J'organise une initiative"); ?></a>

		    	<?php endif; ?>
		    </div>

	<?php endwhile; 
else: ?>
	<h1><?php _e("Page non trouvée"); ?></h1>
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