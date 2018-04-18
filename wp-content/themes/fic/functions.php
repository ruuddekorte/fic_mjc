<?php


//========================================================
//					START HEADER MENU
//========================================================
function register_my_menu() {
  register_nav_menu('header-menu',__( 'Header Menu' ));
}
add_action( 'init', 'register_my_menu' );
// ============ activation sidebar   =========

 
  register_sidebar(1);


define('FIC_VERSION', '1.0.0');

// ###### front-end
function fic_styles() {
	// ###### styles === show in header attribute 'all'	
		wp_enqueue_style('css_bootstrap', get_template_directory_uri().'/css/bootstrap.min.css', array(), 'FIC_VERSION', 'all');
		wp_enqueue_style('css_custom', get_template_directory_uri().'/style.css', array(), 'FIC_VERSION', 'all');
	// ###### scripts  === show in footer attribute 'true'	
		wp_enqueue_script('bootstrap-js', get_template_directory_uri().'/js/bootstrap.min.js', array('jquery'), 'FIC_VERSION', true);
		wp_enqueue_script('js_admin_script', get_template_directory_uri().'/js/fic.js', array('jquery', 'bootstrap-js'), 'fic_VERSION', true);
}

// ###### Add style
	add_action('wp_enqueue_scripts','fic_styles');

// ###### admin
function fic_admin_scripts() {
	// ###### styles
		wp_enqueue_style('bootstrap-adm', get_template_directory_uri().'/css/bootstrap.min.css', array(), 'FIC_VERSION', 'all');
}

	add_action('admin_init', 'fic_admin_scripts');	




//=========================================================
//               ACF
//=========================================================

if(function_exists("register_field_group"))
{
	register_field_group(array (
		'id' => 'acf_initiative',
		'title' => 'initiative',
		'fields' => array (
			array (
				'key' => 'field_5ad5b664f431d',
				'label' => 'Partenaire',
				'name' => 'partenaire',
				'type' => 'text',
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'formatting' => 'none',
				'maxlength' => 50,
			),
			array (
				'key' => 'field_5ad5b6c1f431e',
				'label' => 'Téléphone',
				'name' => 'telephone',
				'type' => 'text',
				'instructions' => '05 65 00 00 00',
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'formatting' => 'none',
				'maxlength' => 14,
			),
			array (
				'key' => 'field_5ad5b712f431f',
				'label' => 'Besoins',
				'name' => 'besoins',
				'type' => 'text',
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'formatting' => 'none',
				'maxlength' => 150,
			),
			array (
				'key' => 'field_5ad5b739f4320',
				'label' => 'Lieu',
				'name' => 'lieu',
				'type' => 'text',
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'formatting' => 'none',
				'maxlength' => 50,
			),
			array (
				'key' => 'field_5ad5b75bf4321',
				'label' => 'Moderateur',
				'name' => 'moderateur',
				'type' => 'true_false',
				'message' => '',
				'default_value' => 0,
			),
			array (
				'key' => 'field_5ad5b788f4322',
				'label' => 'Date Début',
				'name' => 'date_debut',
				'type' => 'date_picker',
				'date_format' => 'yymmdd',
				'display_format' => 'dd/mm/yy',
				'first_day' => 1,
			),
			array (
				'key' => 'field_5ad5b7e3f4323',
				'label' => 'Date Fin',
				'name' => 'date_fin',
				'type' => 'date_picker',
				'date_format' => 'yymmdd',
				'display_format' => 'dd/mm/yy',
				'first_day' => 1,
			),
			array (
				'key' => 'field_5ad5b7f7f4324',
				'label' => 'GeoLocation',
				'name' => 'geolocation',
				'type' => 'text',
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'formatting' => 'none',
				'maxlength' => 30,
			),
		),
		'location' => array (
			array (
				array (
					'param' => 'post_type',
					'operator' => '==',
					'value' => 'post',
					'order_no' => 0,
					'group_no' => 0,
				),
			),
			array (
				array (
					'param' => 'post_type',
					'operator' => '==',
					'value' => 'wpcf7_contact_form',
					'order_no' => 0,
					'group_no' => 1,
				),
			),
		),
		'options' => array (
			'position' => 'normal',
			'layout' => 'no_box',
			'hide_on_screen' => array (
			),
		),
		'menu_order' => 0,
	));
}


//=========================================================
//               UTILITIES
//=========================================================
function fic_setup(){
	add_theme_support('post-thumbnails');
	// ###### subtract version wordpress
	remove_action('wp_head', 'wp_generator');
	// ###### subtract french quotation marks
	remove_filter('the_content', 'wptexturize');
	// ###### title tag by wordpress
	add_theme_support('title-tag');	
	
}

	add_action('after_setup_theme', 'fic_setup');


// );


