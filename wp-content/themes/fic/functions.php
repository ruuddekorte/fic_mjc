<?php


//========================================================
//					START HEADER MENU
//========================================================
function register_my_menu() {
  register_nav_menu('header-menu',__( 'Header Menu' ));
}
add_action( 'init', 'register_my_menu' );
// ============ activation sidebar   =========

  add_action('init','register_my_menu');
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

// ###### Theme setup
// ###### add_action( 'after_setup_theme', 'wpt_setup' );
// ######	if ( ! function_exists( 'wpt_setup' ) ):
// ######	function wpt_setup() {  
// ###### 		register_nav_menu( 'primary', __( 'Primary navigation', 'wptuts' ) );
// ###### } endif;
// ###### Register custom navigation walker
// ###### require_once('wp_bootstrap_navwalker.php');

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
	// ###### active gestion menu
	// ###### register_nav_menu( array( 'primary' => 'principal') );
	// ###### register menu external content
	// ###### require_once('includes/wp_external-content.php');
}

	add_action('after_setup_theme', 'fic_setup');


// active gestion menu
// function register_my_menu() {
//   register_nav_menu( 'primary', __( 'Primary Menu', 'theme-slug' ) );
// }		
// add_action( 'after_setup_theme', 'register_my_menu'
	// active gestion menu
	

// add_action( 'after_setup_theme', 'register_my_menu' );


