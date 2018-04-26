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
<!-- Placeholder for google map image -->
<div id="my-map"></div>

<script>
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

							$location = get_field('map');

							if(!empty($location)) :

// $type = get_field('type');

// if($type == "autre") {
// 	$labeltype = get_field('othe_type');
// } else {
// 	$labeltype = $specimens[$type];
// }

// if(get_field('image')) {
// 	$image = wp_get_attachment_image(get_field('image'), 'specimen')

// } else {

// 	$image = '<img src="' . get_bloginfo('stylesheet_directory') . '/static/build/img/specimens/' . $type . '_default.jpg">';

// }

							echo "{";
// echo "'pictos':'" . $type . "',";
// echo "'type':'" . $labeltype . "',";
									echo "'lat':" . $location['lat'] . ",";
									echo "'lng':" . $location['lng'] . ",";
// echo "'date':'" . get_field('observer_date') . "',";
// echo "'observer':'" . get_field('observer') . "',";
// echo "'image':'" . $image . "',";
								echo "},\n";
							endif;
						endwhile;
					endif;
					/* Restore original Post Data */
					wp_reset_postdata();
				?>
			];

		/* Init map, must be public for callback  */
			initMap = function() {
				var center = {lat: 44.362621, lng: 2.580576},
					marker = null,
					markers = [];
				/* Init map */
				var map = new google.maps.Map($('#my-map')[0], {
						zoom: 13,
						center: center
					}),
					geocoder = new google.maps.Geocoder,
					infowindow = new google.maps.InfoWindow;

				/* Init markers */
				function toggleBounce() {
					if (marker.getAnimation() !== null) {
						marker.setAnimation(null);
					} else {
						marker.setAnimation(google.maps.Animation.BOUNCE);
					}
					}
				for(var i = 0; i < specimens.length; i++) {
					var marker = new google.maps.Marker({
	  					    map: map,
							position: {lat: specimens[i].lat, lng: specimens[i].lng},
							icon: {
								size: new google.maps.Size(55, 73),
								scaledSize: new google.maps.Size(55, 73),
								url : '<?php bloginfo('stylesheet_directory'); ?>/static/build/img/specimens/'+specimens[i].pictos+'_marker.svg'
							},
							type: specimens[i].type,
							date: specimens[i].date,
			                observer: specimens[i].observer,
			                image: specimens[i].image,
	  					    animation: google.maps.Animation.DROP
	  					});

					markers.push(marker);

					marker.addListener('click', toggleBounce);

					google.maps.event.addListener(marker, 'click', function() {
						var html = '';
						html += '<div class="specimens-tooltip">';
							html += this.image;
							html += '<p>';
								html += '<strong>' + this.type + '</strong>';
								html += '<?php _e('Observée le', $theme['slug']); ?> : ' + this.date + '<br>';
								html += '<?php _e('Par ', $theme['slug']); ?> : ' + this.observer;
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
	<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
</script>
	<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB_geB4hpknOVuZyGDNTmsvTwnUx7B_UeM&callback=initMap"></script>

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