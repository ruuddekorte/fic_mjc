<?php get_header(); ?>

<section id="contenu">
	<main>
		<!-- lister les article/page wordpress -->
		<?php if (have_posts()) { 
			while (have_posts() ) {
		    	the_post(); ?>
				<article class="initiative_page">
					<h2><?php the_title();?></h2>
					<?php the_content();?>
				</article>
			<?php	    	
			}
		} ?>
	</main>
</section>

<?php get_footer(); ?>