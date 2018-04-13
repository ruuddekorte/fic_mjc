<?php

//  ######### chargement des scripts

function lgmac_scripts() {

	wp_enqueue_style( 'lgmac_custom', get_template_directory_uri().'/style.css', array(), '1.0.0' , 'all' );

}  // fin function lgmac_scripts() 

add_action('wp_enqueue_scripts', 'lgmac_scripts'); 