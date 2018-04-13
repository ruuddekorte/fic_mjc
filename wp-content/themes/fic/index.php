<!DOCTYPE html>
<html <?php language_attributes(); ?> >
<head>
	<title>Fabrique d'initiatives citoyennes</title>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<meta name="description" content=" "/>
	<?php wp_head(); ?>
</head>
<body>
<!-- ============================================== -->	
<!-- START BOOTSTRAP NAVBAR TOGGLE EXTERNAL CONTENT -->	
<!-- ============================================== -->		
	<header>
		<div class="pos-f-t">
			<div class="collapse" id="navbarToggleExternalContent">
				<div class="bg-dark p-4">
					<nav class="navbar navbar-dark bg-dark">
					  <a href="#"><img src="<?php echo get_template_directory_uri();?>/img/LOGO-FIC.png" alt="" class="img-responsive"></a>
					</nav>  
					  <!-- <span class="text-muted">Toggleable via the navbar brand.</span> -->
					<nav class="navbar navbar-dark bg-dark">
					  <a class="navbar-brand" href="#">Le Projet Fabrique</a>
					</nav>
					<nav class="navbar navbar-dark bg-dark">
					  <a class="navbar-brand" href="#">Proposez une initiative</a>
					</nav>
					<nav class="navbar navbar-dark bg-dark">
					  <a class="navbar-brand" href="#">Contact</a>
					</nav>  
				</div>
			</div>
			<nav class="navbar navbar-dark bg-dark">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
			 		<span class="navbar-toggler-icon"></span>
				</button>
			</nav>
		</div>
	</header>
<!-- ============================================== -->	
<!--   END BOOTSTRAP NAVBAR TOGGLE EXTERNAL CONTENT -->	
<!-- ============================================== -->			
	<section>
		<div class="container">
			<div class="row justify-content-md-center">
				<div class="col-sm-auto">
					<img src="<?php echo get_template_directory_uri();?>/img/logo_ragt.png" alt="" class="img-responsive">
				</div>
			</div>
		</div>
	<section>

	<main>
		<h2>main</h2>
		<i class="fas fa-street-view"></i>
		<i class="fas fa-users"></i>
		<i class="fas fa-wrench"></i>
		<i class="fas fa-bicycle"></i>
		<i class="fas fa-volleyball-ball"></i>
	</main>

	<p> 
		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
	</p>
	<p> 
		Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 
	</p>

	<footer>
		<h2>footer</h2>
	</footer>

	
	<?php wp_footer(); ?>	
</body>
</html>
