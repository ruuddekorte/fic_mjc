
		<?php
		define( 'WP_USE_THEMES', false ); get_header(); 
		?>

		<main>

		<!-- Start the Loop. -->
		<?php
		if (have_posts()) :
			while (have_posts()) :
		    	the_post();
				// The following template tags get the current post's 
	         	// title, the time it was posted, and who posted it.
	       		?>
	       		<div class="row">
					<div class="col-lg-8 col-sm-12">
						<h2 id="post-<?php the_ID(); ?>">Initiative Citoyenne : <a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>">
							<?php the_title(); ?></a>
						</h2>
						<?php if( get_field('lieu') ): ?>
							<h3>Lieu : <?php the_field('lieu'); ?></h3>
						<?php endif; ?>
					</div>

					<div class="col-lg-4 col-sm-12">
						<h3><?php if( get_field('date_debut') ): 
							$dateDebut = get_field('date_debut', false, false);
							$dateDebut = new DateTime($dateDebut);
							echo $dateDebut->format('j M Y'); ?>
						<?php endif; ?>	
						</h3>
					</div>


					<div class="col-lg-8 col-sm-12">
				        <p class="entry"><strong>Description : </strong><?php the_content(); ?></p>
						<?php if( get_field('partenaire') ): ?>
							<p><strong>Partenaire : </strong><?php the_field('partenaire'); ?></p>
						<?php endif; ?>
							<p><strong>Contact : </strong>
						<?php if( get_field('email') ): ?>
							<?php the_field('email'); ?><br/>
						<?php endif; ?>						
						<?php if( get_field('telephone') ): ?>
							<?php the_field('telephone'); ?>
						<?php endif; ?></p>


						<p><strong>Date : </strong>
						<?php if( get_field('date_debut') ): ?> de
							<?php 
							$dateDebut = get_field('date_debut', false, false);
							$dateDebut = new DateTime($dateDebut);
							echo $dateDebut->format('j M Y'); ?>  à
						<?php endif; ?>	

						<?php if( get_field('date_fin') ): 
							$dateFin = get_field('date_fin', false, false);
							$dateFin = new DateTime($dateFin);
							echo $dateFin->format('j M Y'); 
						endif; ?>
						</p>
					</div>

					<div class="col-lg-4 col-sm-12">
						<?php if( get_field('besoins') ): ?>
							<p><strong>Besoin(s) : </strong><?php the_field('besoins'); ?></h3>
						<?php endif; ?>
					</div>

	       		</div>

				<small>Cette Initiative Citoyenne est deposé le :
					<?php the_time('j F Y') ?> 
					<!-- by <?php the_author() ?> -->
				</small>
				<p class="postmetadata">
					Categorie : <?php the_category(', ') ?> 
					<strong>|</strong>
					<?php edit_post_link('Edit','','<strong>|</strong>'); ?>  
					<?php comments_popup_link('No Comments »', '1 Comment »', '% Comments »'); ?>
				</p>
					<?php trackback_rdf(); ?>
				<!--
				-->
			<?php endwhile; ?>
				<!-- This section, immediately after the end of The Loop, displays navigation controls to move forward and backward by each web page. More information is available in function reference for posts_nav_link(). -->
				<div class="navigation">
					<div class="alignleft"><?php previous_posts_link('&laquo; Previous Entries') ?>
					</div>
					<div class="alignright"><?php next_posts_link('Next Entries &raquo;','') ?>
					</div>
				</div>
		<?php else: ?> 
			<h2 class="center">Not Found</h2>
			<p class="center">
				<?php _e("Sorry, but you are looking for something that isn't here."); ?>
			</p>
		<?php endif; ?>

	</main>

	<?php get_footer(); ?>	