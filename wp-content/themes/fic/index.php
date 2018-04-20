<?php
/**
 * The main template file
 *
 */


define( 'WP_USE_THEMES', false ); get_header(); 
?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<?php if ( have_posts() ) : ?>
				<?php if ( is_home() && ! is_front_page() ) : ?>
					<header>
						<h1 class="page-title screen-reader-text"><?php single_post_title(); ?></h1>
					</header>
				<?php endif; 
				while ( have_posts() ) : the_post();
				// Start the loop.
					get_template_part( 'content', get_post_format() );
				// End the loop.
				endwhile;

			// Previous/next page navigation.
			the_posts_pagination( array(
				'prev_text'          => __( 'Première page', 'fic' ),
				'next_text'          => __( '| Page suivante', 'fic' ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( '| Page', 'fic' ) . ' </span>',
			) );
			// If no content, show "No posts found".
			else : ?> 
				<h2 class="center">Not Found</h2>
				<p class="center">
				<?php _e("Sorry, but you are looking for something that isn't here."); ?>
				</p>
			<?php endif; ?>
		</main><!-- .site-main -->
	</div><!-- .content-area -->

<?php get_footer(); ?>	