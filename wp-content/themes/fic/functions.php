<?php
//========================================================
//					START HEADER MENU
//========================================================
function register_my_menu() {
  register_nav_menu('header-menu',__( 'Header Menu' ));
}
add_action( 'init', 'register_my_menu' );






define('FIC_VERSION', '1.0.0');
// front-end
function fic_styles() {
//styles	
	wp_enqueue_style('css_bootstrap', get_template_directory_uri().'/css/bootstrap.min.css', array(), 'FIC_VERSION', 'all');
	wp_enqueue_style('css_custom', get_template_directory_uri().'/style.css', array(), 'FIC_VERSION', 'all');
//script	
	wp_enqueue_script('bootstrap-js', get_template_directory_uri().'/js/bootstrap.min.js', array('jquery'), 'FIC_VERSION', true);
	wp_enqueue_script('js_admin_script', get_template_directory_uri().'/js/fic.js', array('jquery', 'bootstrap-js'), 'fic_VERSION', true);
}
/*Add style*/
add_action('wp_enqueue_scripts','fic_styles');


//admin
function fic_admin_scripts() {
	//styles
	wp_enqueue_style('bootstrap-adm', get_template_directory_uri().'/css/bootstrap.min.css', array(), 'FIC_VERSION', 'all');
}

add_action('admin_init', 'fic_admin_scripts');	

//=========================================================
//               UTILITIES
//=========================================================
function fic_setup(){
	add_theme_support('post-thumbnails');

//subtract version wordpress
	remove_action('wp_head', 'wp_generator');
//subtract french quotation marks
	remove_filter('the_content', 'wptexturize');
//title tag by wordpress
	add_theme_support('title-tag');	
// active gestion menu
	register_nav_menu( array( 'primary' => 'principal') );			

}

add_action('after_setup_theme', 'fic_setup');

