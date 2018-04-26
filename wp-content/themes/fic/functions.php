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
require_once locate_template('/includes/ACF/_acf.php');
add_filter('wpseo_metabox_prio', function() { return 'low'; });

//=========================================================
//               CUSTOM POST TYPE
//=========================================================
require_once locate_template('/includes/custom-posts.php');


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


//========================================================
//				MAPS GOOGLE
//========================================================
/*function my_theme_add_scripts() {
	wp_enqueue_script( 'google-map', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyBP6fX0jfKXq-LrlmQUMb-9hAKrmnWHKX4', array(), '3', true );
	wp_enqueue_script( 'google-map-init', get_template_directory_uri() . '/js/gmap.js', array('google-map', 'jquery'), '0.1', true );
}

add_action( 'wp_enqueue_scripts', 'my_theme_add_scripts' );*/

function my_acf_google_map_api( $api ){
	
	$api['key'] = 'AIzaSyBP6fX0jfKXq-LrlmQUMb-9hAKrmnWHKX4';
	
	return $api;
	
}

add_filter('acf/fields/google_map/api', 'my_acf_google_map_api');
	
