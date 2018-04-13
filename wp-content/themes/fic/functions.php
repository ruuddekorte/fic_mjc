<?php
define('fic_version', '1.0.0');
//  ######### chargement des scripts

function fic_scripts() {

	wp_enqueue_style( 'css_custom', get_template_directory_uri().'/style.css', array(), 'fic_version' , 'all' );
    wp_enqueue_script('fic_script', get_template_directory_uri().'/js/fic.js',array('jquery'),'fic_version',true);
}  // fin function lgmac_scripts() 

add_action('wp_enqueue_scripts', 'fic_scripts'); 