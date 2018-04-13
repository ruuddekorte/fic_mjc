<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'fic');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'simplonco');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '6(8mv$yae]8|GhM5.o)ObUui%)>D$[MiG``}H+*HU-os?Hkh{S`~7o?}^5);YHcx');
define('SECURE_AUTH_KEY',  'fhwJsGc?ov4;(44l{JpQT9&rn(apesBaP/{/s2~kx4_f`[^_85ms(*e{+|te4PKr');
define('LOGGED_IN_KEY',    ')/1isZeWD^9NH:347XX[Pz=TL7+Do*FVTtU7^s}ks:at4BHG@hb?i9qY]3dXC%lT');
define('NONCE_KEY',        'dp.tc>Pybqm/*Nbqdenx}=N-lU+{M.xBqX< 11=I9T:H:;,~gK[ilI@Z0v<W#UL0');
define('AUTH_SALT',        '/84J+wsK@ev?. )D]Y,RS/K`ey%(.~1h6H-]jS$>+Redt;%D{$:Wrtt+~3/OF+iE');
define('SECURE_AUTH_SALT', 'ogx.wKpH4(xz{AM_{al-}<C;Fh|[:)+bevbBc [/,rh1|-Y6B3bSbadaRQ}yrj=$');
define('LOGGED_IN_SALT',   'H]/YzVx6]/j^Ha>ly{q|*`h=>13y$24JiB%?mLM2#K(@BUIqwEG5u_QUf|D1M+#l');
define('NONCE_SALT',       '<U7kS#..^2adcGEG0j*LTt0(uA8(EYs4hUi-Cbb#&KZcT*&.99r9Vy5uSp8omSZM');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'ficmjc12_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');