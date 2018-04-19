<?php

add_action('init', 'my_custom_posts');
function my_custom_posts() 
{
	register_post_type(
		'initiatives',
		array(
			'label' => 'Initiatives',
			'labels' => array(
				'singular_name' => 'Initiative',
				'menu_name' => 'Initiatives',
				'all_items' => 'Toutes les initiatives',
				'add_new_item' => 'Ajouter une initiative',
				'view_item' => 'Voir l\'initiative'
			),
			'public' => true,
			'show_in_menu' => true,
			'hierarchical' => true,
			'capability_type' => 'post',
			'menu_icon' => 'dashicons-location',
			'has_archive' => true,
			'supports' => array(
				'title',
				'revisions',
				'editor',
				'thumbnail',
				'page-attributes'
			)
		)
	);

	register_taxonomy(
		'initiative_groups',
		'initiatives',
		array(
			'label' => __( 'Groupe d\'initiatives' ),
			'labels' => array(
				'view_item' => __('Voir le groupe')
			),
			'hierarchical' => true,
			'sort' => true
		)
	);
}