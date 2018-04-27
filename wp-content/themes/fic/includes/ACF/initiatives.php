<?php

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
					'value' => 'initiatives',
					'order_no' => 0,
					'group_no' => 0,
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

if(function_exists("register_field_group"))
{
	register_field_group(array (
		'id' => 'acf_googlemaps',
		'title' => 'GoogleMaps',
		'fields' => array (
			array (
				'key' => 'field_5ae09773ebfe6',
				'label' => 'localisation',
				'name' => 'localisation',
				'type' => 'google_map',
				'center_lat' => '44.3545532',
				'center_lng' => '2.5602832',
				'zoom' => 13,
				'height' => '',
			),
		),
		'location' => array (
			array (
				array (
					'param' => 'post_type',
					'operator' => '==',
					'value' => 'initiatives',
					'order_no' => 0,
					'group_no' => 0,
				),
				array (
					'param' => 'taxonomy',
					'operator' => '!=',
					'value' => '3',
					'order_no' => 1,
					'group_no' => 0,
				),
				array (
					'param' => 'taxonomy',
					'operator' => '!=',
					'value' => '1',
					'order_no' => 2,
					'group_no' => 0,
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
