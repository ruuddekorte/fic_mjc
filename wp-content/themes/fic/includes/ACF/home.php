<?php
if(function_exists("register_field_group"))
{
	register_field_group(array (
		'id' => 'acf_home',
		'title' => 'Home',
		'fields' => array (
			array (
				'key' => 'field_5ae2e58b18656',
				'label' => 'Carte',
				'name' => 'map',
				'type' => 'taxonomy',
				'taxonomy' => 'initiative_groups',
				'field_type' => 'checkbox',
				'allow_null' => 0,
				'load_save_terms' => 0,
				'return_format' => 'id',
				'multiple' => 0,
			),
			array (
				'key' => 'field_5ae2e60618657',
				'label' => 'Introduction',
				'name' => 'intro',
				'type' => 'wysiwyg',
				'default_value' => '',
				'toolbar' => 'full',
				'media_upload' => 'yes',
			),
			array (
				'key' => 'field_5ae2e62518658',
				'label' => 'Les idées',
				'name' => 'idea',
				'type' => 'taxonomy',
				'taxonomy' => 'initiative_groups',
				'field_type' => 'checkbox',
				'allow_null' => 0,
				'load_save_terms' => 0,
				'return_format' => 'id',
				'multiple' => 0,
			),
			array (
				'key' => 'field_5ae2e66f18659',
				'label' => 'Liens "Je propose"',
				'name' => 'propose_link',
				'type' => 'page_link',
				'post_type' => array (
					0 => 'page',
				),
				'allow_null' => 0,
				'multiple' => 0,
			),
			array (
				'key' => 'field_5ae2e6b91865a',
				'label' => 'Liens "J\'organise"',
				'name' => 'organize_link',
				'type' => 'page_link',
				'post_type' => array (
					0 => 'page',
				),
				'allow_null' => 0,
				'multiple' => 0,
			),
		),
		'location' => array (
			array (
				array (
					'param' => 'page_template',
					'operator' => '==',
					'value' => 'template-home.php',
					'order_no' => 0,
					'group_no' => 0,
				),
			),
		),
		'options' => array (
			'position' => 'normal',
			'layout' => 'no_box',
			'hide_on_screen' => array (
				0 => 'the_content',
			),
		),
		'menu_order' => 0,
	));
}
