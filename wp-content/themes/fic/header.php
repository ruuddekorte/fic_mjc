<!DOCTYPE html>
<html <?php language_attributes();?>>
<head>
	<meta charset="<?php bloginfo('charset');?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<?php wp_head()?>
	
</head>
<body>

<!-- ============================================== -->	
<!-- START BOOTSTRAP NAVBAR TOGGLE EXTERNAL CONTENT -->	
<!-- ============================================== -->		
	<header>
		<div class="pos-f-t">
			<div class="collapse" id="navbarToggleExternalContent">
				<div class="bg-dark p-4">
					<div class="row">
						<div class="col-sm-12 col-lg-3 menu">
							<a class="navbar-brand" href="http://localhost:8888/"><img src="<?php echo get_template_directory_uri();?>/img/logos/LOGO-FIC.png" alt="" class="img-responsive img_menu"/></a>
						</div>
						<div class="col-sm-12 col-lg-3 menu">
							<a class="navbar-text" href="#">Le Projet Fabrique</a>
						</div>
						<div class="col-sm-12 col-lg-3 menu">
							<a class="navbar-text" href="#">Proposez une initiative</a>
						</div>	
						<div class="col-sm-12 col-lg-3 menu">
							<a class="navbar-text" href="http://localhost:8888/index.php/contact/">Contact</a>
						</div>
					</div>			
				</div>
			</div>
			<nav class="navbar navbar-dark bg-dark">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
			 		<span class="navbar-toggler-icon"></span>
				</button>
			</nav>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-lg-4">
						<a href="#"><img src="<?php echo get_template_directory_uri();?>/img/logos/logo-mjc-onet.png" alt="" class="img-responsive img_section"></a>
					</div>
					<div class="col-sm-12 col-lg-4">
						<img src="<?php echo get_template_directory_uri();?>/img/logos/LOGO-FIC.png" alt="" class="img-responsive img_section">
					</div>
					<div class="col-sm-12 col-lg-4">
						<img src="<?php echo get_template_directory_uri();?>/img/logos/LOGO-CIEC.png" alt="" class="img-responsive img_section">
					</div>
				</div>
			</div>
		</div>
	</header>
<!-- ============================================== -->	
<!--   END BOOTSTRAP NAVBAR TOGGLE EXTERNAL CONTENT -->	
<!-- ============================================== -->	