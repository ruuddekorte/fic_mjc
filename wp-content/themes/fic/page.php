<?php get_header(); ?>
	<main id="contenu">
		<?php if (have_posts()){
			while (have_posts()) {
			 the_post();
			?>
			<article class="initiative_page">			
				<h2><?php the_title();?></h2>
				<?php the_content();?>
			</article>
			<?php 
			} 
		}
		?>
	</main>
<?php get_footer(); ?>
