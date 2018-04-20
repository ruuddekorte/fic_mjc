<?php get_header();
	  get_sidebar(); ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

		<?php
		// Start the loop.
		while ( have_posts() ) : the_post(); ?>

			<h2> <?php the_title(); ?> </h2>
			<?php the_content(); ?>

		<?php endwhile; ?>

		</main>  <!-- .site-main -->
	</div> <!-- .content-area -->

<?php get_footer(); ?>

