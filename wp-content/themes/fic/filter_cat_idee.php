<?php

/*	########################################
	##         Template Name: FilterIdee
*/	########################################
		
		define( 'WP_USE_THEMES', false ); get_header(); 

/*	########################################
	##                MAIN
*/	########################################

?>
		<main>
			<h1>Initiatives Citoyennes : Idées</h1>
	
			<?php
			// set up taxonomies
			$tax_one = 'idee';
			$post_type = 'Initiatives';

			$categories = get_categories( array(
			    'type'                     => $post_type,
			    'orderby'                  => 'name',
			    'order'                    => 'ASC',
			    'hide_empty'               => 0,
			    'hierarchical'             => 1,
			    'taxonomy'                 => $tax_one ));

		    foreach ( $categories as $category ) : // list all categories

		        echo '<li><a href="'.get_term_link( $category->slug, $tax_one ).'">'.$category->name.'</a><ul>'?>

	                <?php $the_posts = new WP_Query($myquery);

                        if ( $the_posts->have_posts() ) : // if there are posts in the current category then display it

                            foreach($the_posts as $post) :
                                echo '<li>Your Post stuff here</li>';
                            endforeach;                                    

                        endif;

		        echo '</ul></li>';

		    endforeach; ?>

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