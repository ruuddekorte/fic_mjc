-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 18 Avril 2018 à 10:43
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fic`
--

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_commentmeta`
--

CREATE TABLE `ficmjc12_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_comments`
--

CREATE TABLE `ficmjc12_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ficmjc12_comments`
--

INSERT INTO `ficmjc12_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-13 11:37:50', '2018-04-13 09:37:51', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_initiatives`
--

CREATE TABLE `ficmjc12_initiatives` (
  `id` int(4) NOT NULL,
  `titre` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `partenaire` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(10) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `besoins` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ville` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datedebut` date NOT NULL,
  `datefin` date NOT NULL,
  `geolocation` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `moderateur` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_links`
--

CREATE TABLE `ficmjc12_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_options`
--

CREATE TABLE `ficmjc12_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ficmjc12_options`
--

INSERT INTO `ficmjc12_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'Fabrique Initiatives Citoyennes', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dekorte.tsrit@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%postname%/', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:107:"/home/simplon/Documents/projets-pédago/projet2/fic/wp-content/plugins/contact-form-7/wp-contact-form-7.php";i:1;s:98:"/home/simplon/Documents/projets-pédago/projet2/fic/wp-content/plugins/contact-form-7/settings.php";i:3;s:0:"";}', 'no'),
(40, 'template', 'fic', 'yes'),
(41, 'stylesheet', 'fic', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'ficmjc12_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1524041657;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1524044282;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1524044377;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(125, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:23:"dekorte.tsrit@gmail.com";s:7:"version";s:5:"4.9.5";s:9:"timestamp";i:1523612360;}', 'no'),
(127, '_site_transient_timeout_browser_7fdceadd67296297d9099981ebd325e0', '1524217178', 'no'),
(128, '_site_transient_browser_7fdceadd67296297d9099981ebd325e0', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.181";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(142, 'can_compress_scripts', '1', 'no'),
(147, 'theme_mods_twentyseventeen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1523616634;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(148, 'current_theme', 'ficmjc', 'yes'),
(149, 'theme_mods_fic', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(156, 'category_children', 'a:0:{}', 'yes'),
(158, 'recently_activated', 'a:1:{s:35:"wp-latest-posts/wp-latest-posts.php";i:1523969070;}', 'yes'),
(165, 'category_children', 'a:0:{}', 'yes'),
(178, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(186, '_transient_timeout_plugin_slugs', '1524120603', 'no'),
(187, '_transient_plugin_slugs', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:33:"slide-anything/slide-anything.php";i:3;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(195, '_transient_timeout_plugin_slugs', '1524040959', 'no'),
(196, '_transient_plugin_slugs', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";}', 'no'),
(197, 'recently_activated', 'a:0:{}', 'yes'),
(198, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1523895533;s:7:"version";s:5:"5.0.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(201, 'new_admin_email', 'dekorte.tsrit@gmail.com', 'yes'),
(220, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1523965210', 'no'),
(221, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4452;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2726;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2551;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2421;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1867;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1647;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1637;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1452;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1386;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1386;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1382;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1310;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1282;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1196;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1096;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1057;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1021;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1003;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:882;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:873;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:825;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:799;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:796;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:703;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:690;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:683;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:679;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:672;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:654;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:654;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:642;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:639;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:633;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:620;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:610;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:603;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:601;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:593;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:588;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:584;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:561;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:545;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:535;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:531;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:520;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:519;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:511;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:504;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:491;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:489;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:489;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:483;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:479;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:476;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:468;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:466;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:455;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:454;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:437;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:432;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:424;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:423;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:419;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:415;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:413;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:412;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:403;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:403;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:390;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:387;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:385;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:363;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:360;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:356;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:354;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:345;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:344;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:343;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:342;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:338;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:337;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:336;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:335;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:333;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:330;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:329;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:320;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:311;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:304;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:304;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:303;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:300;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:296;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:294;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:292;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:292;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:290;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:289;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:288;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:285;}}', 'no'),
(226, 'acf_version', '4.4.12', 'yes'),
(237, '_site_transient_timeout_available_translations', '1523978479', 'no');
INSERT INTO `ficmjc12_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(238, '_site_transient_available_translations', 'a:113:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-06 13:56:09";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.4/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-24 19:38:49";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-04 08:43:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 13:41:14";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 03:44:52";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-16 18:12:49";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-04 05:10:07";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-11 09:40:36";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-19 17:34:31";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-16 20:11:12";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.5/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-16 20:08:33";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-22 15:43:53";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.9.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-02-12 10:10:36";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-05 12:41:56";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 08:59:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-15 20:17:27";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 09:54:30";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-29 16:28:34";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-17 05:20:05";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-18 17:06:15";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-02-27 05:22:44";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-23 18:34:33";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.4/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 23:17:08";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 15:03:42";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-07-31 15:12:02";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-01 17:54:52";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-26 19:32:51";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-19 14:11:29";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 21:12:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-30 07:44:25";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-06 10:09:56";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-21 22:04:16";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-15 03:45:18";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-01-31 11:16:06";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-10 18:19:59";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-02-14 06:16:04";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-15 08:49:46";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-31 18:09:34";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-26 21:01:10";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-02 12:51:15";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-13 11:16:25";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 07:00:24";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-16 18:46:39";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-24 13:53:29";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Nerusaké";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-08 06:01:48";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 22:24:38";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.5/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-12 08:08:32";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-15 02:27:09";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 19:40:23";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-02-13 07:38:55";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-02-28 10:55:13";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 10:26:07";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-27 10:30:26";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-26 08:04:00";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.5/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-05 12:59:55";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-23 12:42:00";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 09:27:50";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-11 18:05:33";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 18:30:41";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 09:30:48";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-05 17:29:06";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 15:10:20";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 15:56:45";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 08:50:10";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 13:33:13";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-25 10:30:04";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-25 20:12:50";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 12:42:33";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-02 17:08:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-04 21:51:10";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 12:31:53";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-06 20:34:06";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-13 08:24:25";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 10:37:43";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-11 05:09:29";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-09 00:56:52";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-13 02:41:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-17 22:20:52";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(240, '_site_transient_timeout_browser_55d0b8cd8b38c66e779c44349abd068c', '1524578535', 'no'),
(241, '_site_transient_browser_55d0b8cd8b38c66e779c44349abd068c', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.181";s:8:"platform";s:7:"Android";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:1;}', 'no'),
(248, '_site_transient_timeout_theme_roots', '1524035823', 'no'),
(249, '_site_transient_theme_roots', 'a:4:{s:3:"fic";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(251, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1524034025;s:15:"version_checked";s:5:"4.9.5";s:12:"translations";a:0:{}}', 'no'),
(252, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1524034026;s:7:"checked";a:4:{s:3:"fic";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.5";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(253, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1524034027;s:7:"checked";a:4:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.1";s:33:"slide-anything/slide-anything.php";s:5:"2.1.5";s:24:"wordpress-seo/wp-seo.php";s:3:"7.2";}s:8:"response";a:1:{s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":12:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:3:"7.3";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wordpress-seo.7.3.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347";s:2:"1x";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435";}s:11:"banners_rtl";a:2:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435";}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:13:"wordpress-seo";s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"7.2";s:7:"updated";s:19:"2018-04-03 11:08:54";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/wordpress-seo/7.2/fr_FR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:33:"slide-anything/slide-anything.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/slide-anything";s:4:"slug";s:14:"slide-anything";s:6:"plugin";s:33:"slide-anything/slide-anything.php";s:11:"new_version";s:5:"2.1.5";s:3:"url";s:45:"https://wordpress.org/plugins/slide-anything/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/slide-anything.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/slide-anything/assets/icon-256x256.png?rev=1322628";s:2:"1x";s:67:"https://ps.w.org/slide-anything/assets/icon-128x128.png?rev=1322628";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/slide-anything/assets/banner-1544x500.png?rev=1322628";s:2:"1x";s:69:"https://ps.w.org/slide-anything/assets/banner-772x250.png?rev=1322628";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(254, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1524080562', 'no'),
(255, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:0:{}}', 'no'),
(256, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1524080562', 'no');
INSERT INTO `ficmjc12_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(257, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 18 Apr 2018 07:15:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Résultats des élections du bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/resultats-elections-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Mar 2018 08:00:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2107099";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1521:"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/resultats-elections-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"13";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wpfr.net/resultats-elections-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Liste des candidats au bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/liste-candidats-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Feb 2018 11:45:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2092699";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/liste-candidats-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/liste-candidats-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WPFR sponsor du WP Tech Lyon !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Feb 2018 07:00:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2082223";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1507:"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpfr.net/wpfr-sponsor-wptech-lyon/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"Loi anti-fraude et l’e-commerce : les informations officielles";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Jan 2018 14:51:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:10:"Extensions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Loi anti-fraude";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2072415";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1503:"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"39";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"L’élection du bureau WPFR 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/election-bureau-wpfr-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 15 Jan 2018 11:30:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2041252";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1530:"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/election-bureau-wpfr-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:43:"https://wpfr.net/election-bureau-wpfr-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"PHP Tour Montpellier 2018 : WPFR est partenaire !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Jan 2018 10:12:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2035309";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1489:"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Le point sur les certifications WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/point-certifications-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 11 Dec 2017 17:15:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2001761";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1552:"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wpfr.net/point-certifications-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"11";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/point-certifications-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"Certification WordPress par WPFR, appel à contributions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 19 Oct 2017 06:46:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1931227";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"Le 30 septembre, c’est le WordPress Translation Day 2017 !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 12 Sep 2017 12:03:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:11:"communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:10:"traduction";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1883236";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1488:"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Jb Audras";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 05 Sep 2017 11:59:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1860285";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1488:"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/gen5-evenement-numerique-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"5KZXcHMmyqfO9jxEaZhDwE+lMNE";s:13:"last-modified";s:29:"Wed, 18 Apr 2018 07:20:51 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Wed, 18 Apr 2018 07:42:42 GMT";s:7:"expires";s:29:"Wed, 18 Apr 2018 07:42:42 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:140:"hq=":443"; ma=2592000; quic=51303433; quic=51303432; quic=51303431; quic=51303339; quic=51303335,quic=":443"; ma=2592000; v="43,42,41,39,35"";}}s:5:"build";s:14:"20130911020210";}', 'no'),
(258, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1524080562', 'no'),
(259, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1524037362', 'no'),
(260, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1524080563', 'no');
INSERT INTO `ficmjc12_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(261, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:5:"\n		\n	";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:79:"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Planète WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:17:"https://wpfr.net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Toute l’actualité de WordPress en français !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:8:{i:0;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"Comment ajouter des messages sur la page d’inscription/connexion de WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/9HkirTqyzMo/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:181:"https://wpmarmite.com/snippet/personnaliser-inscription-connexion-woocommerce/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=personnaliser-inscription-connexion-woocommerce";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 17 Apr 2018 07:38:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:362:"\n		        \nPour personnaliser une peu la page de connexion à votre boutique en ligne WooCommerce, nous allons voir comment afficher un texte informatif au dessus du formulaire de connexion ou d&rsquo;inscription...\nL’article Comment ajouter des messages sur la page d&rsquo;inscription/connexion de WooCommerce est apparu en premier sur WP Marmite.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Marmite";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:797:"<p><img width="640" height="220" src="https://wpmarmite.com/wp-content/uploads/2017/06/woocommerce-snippet.jpg" class="attachment-full size-full wp-post-image" alt="woocommerce snippet" /></p>\n<p>Pour personnaliser une peu la page de connexion à votre boutique en ligne WooCommerce, nous allons voir comment afficher un texte informatif au dessus du formulaire de connexion ou d&rsquo;inscription...</p>\n<p>L’article <a rel="nofollow" href="https://wpmarmite.com/snippet/personnaliser-inscription-connexion-woocommerce/">Comment ajouter des messages sur la page d&rsquo;inscription/connexion de WooCommerce</a> est apparu en premier sur <a rel="nofollow" href="https://wpmarmite.com">WP Marmite</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/9HkirTqyzMo" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:181:"https://wpmarmite.com/snippet/personnaliser-inscription-connexion-woocommerce/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=personnaliser-inscription-connexion-woocommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:93:"Comment importer un contenu oEmbed (tweet, article Facebook, vidéo YouTube) sous WordPress ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/t5ZukUlBY1w/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:126:"https://wpchannel.com/wordpress/tutoriels-wordpress/importer-un-contenu-oembed-tweet-article-facebook-video-youtube-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 Apr 2018 07:00:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:464:"\n		        Embarquer des contenus tiers comme des tweets, des vidéos YouTube ou Vimeo, des posts Facebook ou même des articles issus d&#8217;un autre WordPress est un véritable jeu d&#8217;enfant sous WordPress à condition d&#8217;utiliser correctement les oEmbeds. Ce tutoriel fait suite à la lecture du billet Comment centrer un Tweet sur wordpress paru sur le Siècle Digital qui m&#8217;a paru fort compliqué dans l&#8217;approche. En [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Channel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:736:"<div class="post-thumbnail"><img width="450" height="300" src="https://wpchannel.com/images/2018/04/twitter-wordpress-embed-450x300.jpg" class="attachment-large size-large wp-post-image" alt="" /></div>Embarquer des contenus tiers comme des tweets, des vidéos YouTube ou Vimeo, des posts Facebook ou même des articles issus d&#8217;un autre WordPress est un véritable jeu d&#8217;enfant sous WordPress à condition d&#8217;utiliser correctement les oEmbeds. Ce tutoriel fait suite à la lecture du billet Comment centrer un Tweet sur wordpress paru sur le Siècle Digital qui m&#8217;a paru fort compliqué dans l&#8217;approche. En [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/t5ZukUlBY1w" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:126:"https://wpchannel.com/wordpress/tutoriels-wordpress/importer-un-contenu-oembed-tweet-article-facebook-video-youtube-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/AOf32FFpTck/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wpformation.com/wordpress-ou-wix/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 Apr 2018 06:35:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:628:"\n		        Choisir une plateforme pour créer votre site web peut être difficile, et beaucoup d’utilisateurs en viennent à comparer WordPress et Wix. L’un comme l’autre sont des solutions populaires et appréciées qui vous permettront de construire un très bon site. Mais alors, quelle est la meilleure solution pour votre projet ? Dans ce guide comparatif entre WordPress [&#8230;]\n\nL’article WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ? est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1443:"<p><img width="1500" height="562" src="https://wpformation.com/wp-content/uploads/2018/04/WordPress-vs-Wix.jpg" class="attachment-Large size-Large wp-post-image" alt="WordPress-vs-Wix" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Choisir une plateforme pour créer votre site web peut être difficile, et beaucoup d’utilisateurs en viennent à comparer WordPress et Wix. L’un comme l’autre sont des solutions populaires et appréciées qui vous permettront de construire un très bon site. Mais alors, quelle est la meilleure solution pour votre projet ? Dans ce guide comparatif entre WordPress [&#8230;]</p>\n<hr />\nL’article <a rel="nofollow" href="https://wpformation.com/wordpress-ou-wix/">WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ?</a> est apparu en premier sur <a href="https://wpformation.com/">WPFormation</a>.<br /> <a href="https://wpformation.com/wordpress/">Tutoriels WordPress</a>, <a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-woocommerce-e-commerce/">Woocommerce</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a>. <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src="http://feeds.feedburner.com/~r/wpfr/~4/AOf32FFpTck" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wpformation.com/wordpress-ou-wix/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"Le CNRS lance un nouveau kit Web fait avec WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/bWFWwkEmt2I/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:80:"https://www.wpnormandie.fr/le-cnrs-lance-un-nouveau-kit-web-fait-avec-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 15 Apr 2018 16:37:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:392:"\n		        On le sait WordPress représente 30% des sites web au monde. Cela bon nombre d&#8217;entreprises l&#8217;on compris et fabriquent leur site internet avec cet outil. Ce que l&#8217;on sait moins, c&#8217;est que de grands noms en dehors du monde de l&#8217;entreprise le font de manière à inclure WordPress dans leur stratégie informatique. C&#8217;est le cas [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:462:"On le sait WordPress représente 30% des sites web au monde. Cela bon nombre d&#8217;entreprises l&#8217;on compris et fabriquent leur site internet avec cet outil. Ce que l&#8217;on sait moins, c&#8217;est que de grands noms en dehors du monde de l&#8217;entreprise le font de manière à inclure WordPress dans leur stratégie informatique. C&#8217;est le cas [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/bWFWwkEmt2I" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:80:"https://www.wpnormandie.fr/le-cnrs-lance-un-nouveau-kit-web-fait-avec-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Composer : Make Stable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"http://feedproxy.google.com/~r/wpfr/~3/PAUiXgcYcBI/composer-make-stable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"https://blog.beapi.fr/composer-make-stable";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 Apr 2018 08:03:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:185:"\n		        Voici un petit script pour rendre stable les versions des dépendances dans composer.\nCet article Composer : Make Stable est apparu en premier sur Be API Tech blog.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4743:"<p>Voici un <a href="https://github.com/BeAPI/composer-make-stable">petit script</a> pour rendre les versions des dépendances dans <a href="https://getcomposer.org/"><strong>composer</strong></a> stables. Vous allez gagner un temps précieux !</p>\n<p><span id="more-560"></span></p>\n<p>Quelques explications avant de se lancer dans le <a href="#la-naissance-d-un-script-composer">vif du sujet</a>.</p>\n<h2>En phase de production</h2>\n<p>Lorsque votre projet est en production, il est recommandé de gérer les versions de WP et plugins de manière figée. Un composer update n&rsquo;aura plus d&rsquo;effet sur les versions des dépendances. Nous allons donc chercher à tout transformer en version stable dans un but de faciliter la maintenance et le suivi des mises à jour.</p>\n<figure id="attachment_522" style="width: 635px" class="wp-caption aligncenter"><a href="https://i2.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-prod.png?ssl=1"><img class="wp-image-522 size-full" src="https://i2.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-prod.png?resize=635%2C951&#038;ssl=1" alt="composer.json de prod" width="635" height="951" /></a><figcaption class="wp-caption-text">composer.json de prod</figcaption></figure>\n<h2>En phase de développement</h2>\n<p>Lorsque vous utilisez composer pour gérer les dépendances de votre projet durant la phase de développement, les versions sont généralement « dev-master » ou « stable ». Comme ceci, à chaque <em>composer update</em>, vous forcer les mises à jour et êtes à la page. Utile pour détecter rapidement un bug mais également bénéficier de toutes les nouvelles mises à jour.</p>\n<figure id="attachment_521" style="width: 592px" class="wp-caption aligncenter"><a href="https://i0.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-dev.png?ssl=1"><img class="wp-image-521 size-full" src="https://i0.wp.com/blog.beapi.fr/wp-content/uploads/2018/03/composer-json-dev.png?resize=592%2C842&#038;ssl=1" alt="composer.json de dev" width="592" height="842" /></a><figcaption class="wp-caption-text">composer.json de dev</figcaption></figure>\n<h2 id="la-naissance-d-un-script-composer">La naissance d&rsquo;un script</h2>\n<p>Durant la R&amp;D de vendredi dernier, <a href="https://twitter.com/TweetPressFr">Julien Maury</a> nous a concocté un petit script ( <a href="https://github.com/BeAPI/composer-make-stable"><em><strong>composer make stable</strong></em></a> ) pour figer les versions dans le composer.json. Ce dernier va transformer les versions du composer.json pour les rendre stable. Pratique pour faire un composer update lors d&rsquo;un audit de mise à jour.<br />\nCeci fonctionne pour toutes les dépendances : thèmes, mu-plugins, plugins et cœur de WordPress.</p>\n<p>Ce script nous a fait gagner énormément de temps ! Et comme il n&rsquo;existait pas encore sur les internets, nous avons jugé intéressant de le <strong>partager avec vous en open source</strong>.</p>\n<h3>1. Ajouter le script à votre projet</h3>\n<p>Il suffit d&rsquo;ajouter le script comme une dépendance de votre projet :</p>\n<div class="code-embed-wrapper"> <pre class="language-php code-embed-pre"><code class="language-php code-embed-code"># Ajouter le repository de les source :\n{ &quot;type&quot;: &quot;vcs&quot;, &quot;url&quot;: &quot;https://github.com/BeAPI/composer-make-stable&quot; }\n# Require en require-dev dans votre composer.json\n&quot;bea/composer/make-stable&quot;: &quot;dev-master&quot; \n# Puis avant usage un :\ncomposer update </code></pre> <div class="code-embed-infos"> </div> </div>\n<h3>2. Utiliser le script</h3>\n<p>Easy as pie !</p>\n<div class="code-embed-wrapper"> <pre class="language-bash code-embed-pre"><code class="language-bash code-embed-code">composer make-stable</code></pre> <div class="code-embed-infos"> </div> </div>\n<h3>3. Le petit plus</h3>\n<p>Pour refaire la manipulation dans l&rsquo;autre sens :</p>\n<blockquote class="wp-embedded-content"><p><a href="https://blog.beapi.fr/composer-freeze-versions">Composer : Freeze Versions</a></p></blockquote>\n<p></p>\n<hr />\n<p><em>Avez-vous facilement réussi à le mètre en place ? Est-il simple d&rsquo;utilisation ? Avez-vous gagné du temps ?</em><br />\n<em>Dites-nous tout dans les commentaires.</em></p>\n<p>Enjoy ! <img src="https://s.w.org/images/core/emoji/2.4/72x72/1f917.png" alt="🤗" class="wp-smiley" style="height: 1em;max-height: 1em" /></p>\n<p>Cet article <a rel="nofollow" href="https://blog.beapi.fr/composer-make-stable">Composer : Make Stable</a> est apparu en premier sur <a rel="nofollow" href="https://blog.beapi.fr">Be API Tech blog</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/PAUiXgcYcBI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://blog.beapi.fr/composer-make-stable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"Beaver Builder : un constructeur de page au poil ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/hl-l5OEKpdc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:107:"https://wpmarmite.com/beaver-builder/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=beaver-builder";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 Apr 2018 06:35:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:341:"\n		        \n“Un gros rongeur” aux “pattes palmées” avec “une belle fourrure”. Voilà comment le dictionnaire Larousse présente l’objet de notre nouvel article. Ne fermez pas votre navigateur. Vous êtes bien sur...\nL’article Beaver Builder : un constructeur de page au poil ? est apparu en premier sur WP Marmite.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Marmite";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:711:"<p><img width="640" height="220" src="https://wpmarmite.com/wp-content/uploads/2018/04/beaver-builder.jpg" class="attachment-full size-full wp-post-image" alt="" /></p>\n<p>“Un gros rongeur” aux “pattes palmées” avec “une belle fourrure”. Voilà comment le dictionnaire Larousse présente l’objet de notre nouvel article. Ne fermez pas votre navigateur. Vous êtes bien sur...</p>\n<p>L’article <a rel="nofollow" href="https://wpmarmite.com/beaver-builder/">Beaver Builder : un constructeur de page au poil ?</a> est apparu en premier sur <a rel="nofollow" href="https://wpmarmite.com">WP Marmite</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/hl-l5OEKpdc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:107:"https://wpmarmite.com/beaver-builder/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=beaver-builder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"Pourquoi développer un thème WordPress sur-mesure ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/khB-RNT1QZI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:87:"https://wpchannel.com/wordpress/themes-wordpress/developper-theme-wordpress-sur-mesure/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 10 Apr 2018 07:00:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:464:"\n		        Quels sont les avantages apportés par un thème WordPress codé de A à Z alors même que des milliers de thèmes premium sont disponibles au téléchargement ? Au travers d&#8217;une décennie d&#8217;observations comme passionné et professionnel de cette technologie devenue leader, je vous livre mon point de vue sur la réalité du marché des thèmes WordPress. C&#8217;est en 2007 que j&#8217;ai découvert WordPress, à une [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Channel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:742:"<div class="post-thumbnail"><img width="659" height="300" src="https://wpchannel.com/images/2018/04/wordpress-theme-professionnel-659x300.jpg" class="attachment-large size-large wp-post-image" alt="" /></div>Quels sont les avantages apportés par un thème WordPress codé de A à Z alors même que des milliers de thèmes premium sont disponibles au téléchargement ? Au travers d&#8217;une décennie d&#8217;observations comme passionné et professionnel de cette technologie devenue leader, je vous livre mon point de vue sur la réalité du marché des thèmes WordPress. C&#8217;est en 2007 que j&#8217;ai découvert WordPress, à une [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/khB-RNT1QZI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:87:"https://wpchannel.com/wordpress/themes-wordpress/developper-theme-wordpress-sur-mesure/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"Pourquoi et comment créer un plugin WordPress ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/_Y5Scdo-WME/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpformation.com/creer-plugin-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Apr 2018 06:40:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:571:"\n		        Ce n&#8217;est pas faute de le répéter, les plugins sont l&#8217;essence même de WordPress. Il en existe des tonnes, qu&#8217;ils soient premiums, freemiums ou gratuits, si vous utilisez WordPress, vous savez de quoi je parle. Selon la finalité de votre utilisation de ce fabuleux CMS, vous allez un jour vous trouver face à une question [&#8230;]\n\nL’article Pourquoi et comment créer un plugin WordPress ? est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1408:"<p><img width="1200" height="800" src="https://wpformation.com/wp-content/uploads/2018/03/creer-plugin-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="Créer un plugin WordPress" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Ce n&#8217;est pas faute de le répéter, les plugins sont l&#8217;essence même de WordPress. Il en existe des tonnes, qu&#8217;ils soient premiums, freemiums ou gratuits, si vous utilisez WordPress, vous savez de quoi je parle. Selon la finalité de votre utilisation de ce fabuleux CMS, vous allez un jour vous trouver face à une question [&#8230;]</p>\n<hr />\nL’article <a rel="nofollow" href="https://wpformation.com/creer-plugin-wordpress/">Pourquoi et comment créer un plugin WordPress ?</a> est apparu en premier sur <a href="https://wpformation.com/">WPFormation</a>.<br /> <a href="https://wpformation.com/wordpress/">Tutoriels WordPress</a>, <a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-woocommerce-e-commerce/">Woocommerce</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a>. <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src="http://feeds.feedburner.com/~r/wpfr/~4/_Y5Scdo-WME" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpformation.com/creer-plugin-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:32:"http://feeds.feedburner.com/wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:4:"wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"YQj1RSKZx4ODD5+vmIper85Pn/o";s:13:"last-modified";s:29:"Wed, 18 Apr 2018 07:42:40 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Wed, 18 Apr 2018 07:42:43 GMT";s:7:"expires";s:29:"Wed, 18 Apr 2018 07:42:43 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:140:"hq=":443"; ma=2592000; quic=51303433; quic=51303432; quic=51303431; quic=51303339; quic=51303335,quic=":443"; ma=2592000; v="43,42,41,39,35"";}}s:5:"build";s:14:"20130911020210";}', 'no'),
(262, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1524080563', 'no'),
(263, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1524037363', 'no'),
(264, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1524080563', 'no'),
(265, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\'>Résultats des élections du bureau 2018</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/9HkirTqyzMo/\'>Comment ajouter des messages sur la page d’inscription/connexion de WooCommerce</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/t5ZukUlBY1w/\'>Comment importer un contenu oEmbed (tweet, article Facebook, vidéo YouTube) sous WordPress ?</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/AOf32FFpTck/\'>WordPress vs Wix – Quelle est la meilleure plateforme pour votre projet ?</a></li></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_postmeta`
--

CREATE TABLE `ficmjc12_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ficmjc12_postmeta`
--

INSERT INTO `ficmjc12_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_form', '<label> Votre nom (required)\n    [text* your-name] </label>\n\n<label> Votre adresse mail (required)\n    [email* your-email] </label>\n\n<label> Sujet\n    [text your-subject] </label>\n\n<label> Votre Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(3, 4, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:48:"Fabrique Initiatives Citoyennes "[your-subject]"";s:6:"sender";s:37:"[your-name] <dekorte.tsrit@gmail.com>";s:9:"recipient";s:23:"dekorte.tsrit@gmail.com";s:4:"body";s:191:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Fabrique Initiatives Citoyennes (http://localhost:8888)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:48:"Fabrique Initiatives Citoyennes "[your-subject]"";s:6:"sender";s:57:"Fabrique Initiatives Citoyennes <dekorte.tsrit@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:133:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Fabrique Initiatives Citoyennes (http://localhost:8888)";s:18:"additional_headers";s:33:"Reply-To: dekorte.tsrit@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(5, 4, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:32:"Le format de date est incorrect.";s:14:"date_too_early";s:47:"La date précède la première date autorisée.";s:13:"date_too_late";s:57:"La date est postérieure à la dernière date autorisée.";s:13:"upload_failed";s:72:"Une erreur inconnue s’est produite lors du téléversement du fichier.";s:24:"upload_file_type_invalid";s:79:"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.";s:21:"upload_file_too_large";s:31:"Le fichier est trop volumineux.";s:23:"upload_failed_php_error";s:63:"Une erreur s’est produite lors du téléversement du fichier.";s:14:"invalid_number";s:33:"Le format du nombre est invalide.";s:16:"number_too_small";s:50:"Le nombre est plus petit que le minimum autorisé.";s:16:"number_too_large";s:50:"Le nombre est plus grand que le maximum autorisé.";s:23:"quiz_answer_not_correct";s:42:"La réponse à la question est incorrecte.";s:17:"captcha_not_match";s:29:"Le code entré est incorrect.";s:13:"invalid_email";s:38:"L’adresse e-mail n’est pas valide.";s:11:"invalid_url";s:27:"L’URL n’est pas valide.";s:11:"invalid_tel";s:45:"Le numéro de téléphone n’est pas valide.";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'fr_FR'),
(8, 1, '_edit_lock', '1523973145:1'),
(9, 2, '_edit_lock', '1524040645:1'),
(10, 5, '_edit_lock', '1523959742:1'),
(11, 5, '_edit_last', '1'),
(12, 5, 'field_5ad5b664f431d', 'a:14:{s:3:"key";s:19:"field_5ad5b664f431d";s:5:"label";s:10:"Partenaire";s:4:"name";s:10:"partenaire";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:2:"50";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5ad5b75bf4321";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(13, 5, 'field_5ad5b6c1f431e', 'a:14:{s:3:"key";s:19:"field_5ad5b6c1f431e";s:5:"label";s:11:"Téléphone";s:4:"name";s:9:"telephone";s:4:"type";s:4:"text";s:12:"instructions";s:14:"05 65 00 00 00";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:2:"14";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5ad5b75bf4321";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(14, 5, 'field_5ad5b712f431f', 'a:14:{s:3:"key";s:19:"field_5ad5b712f431f";s:5:"label";s:7:"Besoins";s:4:"name";s:7:"besoins";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:3:"150";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5ad5b75bf4321";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(15, 5, 'field_5ad5b739f4320', 'a:14:{s:3:"key";s:19:"field_5ad5b739f4320";s:5:"label";s:4:"Lieu";s:4:"name";s:4:"lieu";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:2:"50";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5ad5b75bf4321";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(16, 5, 'field_5ad5b75bf4321', 'a:10:{s:3:"key";s:19:"field_5ad5b75bf4321";s:5:"label";s:10:"Moderateur";s:4:"name";s:10:"moderateur";s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"message";s:0:"";s:13:"default_value";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(17, 5, 'field_5ad5b788f4322', 'a:11:{s:3:"key";s:19:"field_5ad5b788f4322";s:5:"label";s:11:"Date Début";s:4:"name";s:10:"date_debut";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5ad5b75bf4321";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(18, 5, 'field_5ad5b7e3f4323', 'a:11:{s:3:"key";s:19:"field_5ad5b7e3f4323";s:5:"label";s:8:"Date Fin";s:4:"name";s:8:"date_fin";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5ad5b75bf4321";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(19, 5, 'field_5ad5b7f7f4324', 'a:14:{s:3:"key";s:19:"field_5ad5b7f7f4324";s:5:"label";s:11:"GeoLocation";s:4:"name";s:11:"geolocation";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:2:"30";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_5ad5b75bf4321";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(21, 5, 'position', 'normal'),
(22, 5, 'layout', 'no_box'),
(23, 5, 'hide_on_screen', ''),
(24, 6, '_edit_lock', '1523955943:1'),
(26, 7, '_edit_lock', '1523957119:1'),
(27, 5, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(28, 5, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:18:"wpcf7_contact_form";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(29, 1, '_edit_last', '1'),
(32, 8, 'partenaire', 'MJC Onet'),
(33, 8, '_partenaire', 'field_5ad5b664f431d'),
(34, 8, 'telephone', '05 65 12 34 56'),
(35, 8, '_telephone', 'field_5ad5b6c1f431e'),
(36, 8, 'besoins', 'SOUS BOISSONS '),
(37, 8, '_besoins', 'field_5ad5b712f431f'),
(38, 8, 'lieu', 'Cafe CR'),
(39, 8, '_lieu', 'field_5ad5b739f4320'),
(40, 8, 'moderateur', '0'),
(41, 8, '_moderateur', 'field_5ad5b75bf4321'),
(42, 8, 'date_debut', '20180419'),
(43, 8, '_date_debut', 'field_5ad5b788f4322'),
(44, 8, 'date_fin', '20180427'),
(45, 8, '_date_fin', 'field_5ad5b7e3f4323'),
(46, 8, 'geolocation', ''),
(47, 8, '_geolocation', 'field_5ad5b7f7f4324'),
(48, 1, 'partenaire', 'MJC Onet'),
(49, 1, '_partenaire', 'field_5ad5b664f431d'),
(50, 1, 'telephone', '05 65 12 34 56'),
(51, 1, '_telephone', 'field_5ad5b6c1f431e'),
(52, 1, 'besoins', 'SOUS BOISSONS '),
(53, 1, '_besoins', 'field_5ad5b712f431f'),
(54, 1, 'lieu', 'Cafe CR'),
(55, 1, '_lieu', 'field_5ad5b739f4320'),
(56, 1, 'moderateur', '0'),
(57, 1, '_moderateur', 'field_5ad5b75bf4321'),
(58, 1, 'date_debut', '20180419'),
(59, 1, '_date_debut', 'field_5ad5b788f4322'),
(60, 1, 'date_fin', '20180427'),
(61, 1, '_date_fin', 'field_5ad5b7e3f4323'),
(62, 1, 'geolocation', ''),
(63, 1, '_geolocation', 'field_5ad5b7f7f4324'),
(66, 11, 'partenaire', 'MJC Onet'),
(67, 11, '_partenaire', 'field_5ad5b664f431d'),
(68, 11, 'telephone', '05 65 12 34 56'),
(69, 11, '_telephone', 'field_5ad5b6c1f431e'),
(70, 11, 'besoins', 'SOUS BOISSONS '),
(71, 11, '_besoins', 'field_5ad5b712f431f'),
(72, 11, 'lieu', 'Cafe CR'),
(73, 11, '_lieu', 'field_5ad5b739f4320'),
(74, 11, 'moderateur', '0'),
(75, 11, '_moderateur', 'field_5ad5b75bf4321'),
(76, 11, 'date_debut', '20180419'),
(77, 11, '_date_debut', 'field_5ad5b788f4322'),
(78, 11, 'date_fin', '20180427'),
(79, 11, '_date_fin', 'field_5ad5b7e3f4323'),
(80, 11, 'geolocation', ''),
(81, 11, '_geolocation', 'field_5ad5b7f7f4324'),
(82, 12, '_edit_lock', '1523974371:1'),
(83, 12, '_edit_last', '1'),
(86, 13, 'partenaire', 'Café associatif des Costes Rouges'),
(87, 13, '_partenaire', 'field_5ad5b664f431d'),
(88, 13, 'telephone', ''),
(89, 13, '_telephone', 'field_5ad5b6c1f431e'),
(90, 13, 'besoins', 'beaucoup de public du quartier de costes rouges, viens nombreux'),
(91, 13, '_besoins', 'field_5ad5b712f431f'),
(92, 13, 'lieu', 'Café associatif des Costes Rouges'),
(93, 13, '_lieu', 'field_5ad5b739f4320'),
(94, 13, 'moderateur', '0'),
(95, 13, '_moderateur', 'field_5ad5b75bf4321'),
(96, 13, 'date_debut', '20181031'),
(97, 13, '_date_debut', 'field_5ad5b788f4322'),
(98, 13, 'date_fin', '20181031'),
(99, 13, '_date_fin', 'field_5ad5b7e3f4323'),
(100, 13, 'geolocation', ''),
(101, 13, '_geolocation', 'field_5ad5b7f7f4324'),
(102, 12, 'partenaire', 'Café associatif des Costes Rouges'),
(103, 12, '_partenaire', 'field_5ad5b664f431d'),
(104, 12, 'telephone', ''),
(105, 12, '_telephone', 'field_5ad5b6c1f431e'),
(106, 12, 'besoins', 'beaucoup de public du quartier de costes rouges, viens nombreux'),
(107, 12, '_besoins', 'field_5ad5b712f431f'),
(108, 12, 'lieu', 'Café associatif des Costes Rouges'),
(109, 12, '_lieu', 'field_5ad5b739f4320'),
(110, 12, 'moderateur', '0'),
(111, 12, '_moderateur', 'field_5ad5b75bf4321'),
(112, 12, 'date_debut', '20181031'),
(113, 12, '_date_debut', 'field_5ad5b788f4322'),
(114, 12, 'date_fin', '20181031'),
(115, 12, '_date_fin', 'field_5ad5b7e3f4323'),
(116, 12, 'geolocation', ''),
(117, 12, '_geolocation', 'field_5ad5b7f7f4324'),
(118, 14, '_edit_lock', '1523974563:1'),
(119, 14, '_edit_last', '1'),
(122, 15, 'partenaire', 'café associatif des Costes Rouges'),
(123, 15, '_partenaire', 'field_5ad5b664f431d'),
(124, 15, 'telephone', ''),
(125, 15, '_telephone', 'field_5ad5b6c1f431e'),
(126, 15, 'besoins', ''),
(127, 15, '_besoins', 'field_5ad5b712f431f'),
(128, 15, 'lieu', 'café associatif des Costes Rouges'),
(129, 15, '_lieu', 'field_5ad5b739f4320'),
(130, 15, 'moderateur', '0'),
(131, 15, '_moderateur', 'field_5ad5b75bf4321'),
(132, 15, 'date_debut', '20180505'),
(133, 15, '_date_debut', 'field_5ad5b788f4322'),
(134, 15, 'date_fin', '20180505'),
(135, 15, '_date_fin', 'field_5ad5b7e3f4323'),
(136, 15, 'geolocation', ''),
(137, 15, '_geolocation', 'field_5ad5b7f7f4324'),
(138, 14, 'partenaire', 'café associatif des Costes Rouges'),
(139, 14, '_partenaire', 'field_5ad5b664f431d'),
(140, 14, 'telephone', ''),
(141, 14, '_telephone', 'field_5ad5b6c1f431e'),
(142, 14, 'besoins', ''),
(143, 14, '_besoins', 'field_5ad5b712f431f'),
(144, 14, 'lieu', 'café associatif des Costes Rouges'),
(145, 14, '_lieu', 'field_5ad5b739f4320'),
(146, 14, 'moderateur', '0'),
(147, 14, '_moderateur', 'field_5ad5b75bf4321'),
(148, 14, 'date_debut', '20180505'),
(149, 14, '_date_debut', 'field_5ad5b788f4322'),
(150, 14, 'date_fin', '20180505'),
(151, 14, '_date_fin', 'field_5ad5b7e3f4323'),
(152, 14, 'geolocation', ''),
(153, 14, '_geolocation', 'field_5ad5b7f7f4324'),
(154, 16, '_edit_lock', '1523975186:1'),
(155, 16, '_edit_last', '1'),
(158, 17, 'partenaire', 'MJC / Le Krill'),
(159, 17, '_partenaire', 'field_5ad5b664f431d'),
(160, 17, 'telephone', ''),
(161, 17, '_telephone', 'field_5ad5b6c1f431e'),
(162, 17, 'besoins', ''),
(163, 17, '_besoins', 'field_5ad5b712f431f'),
(164, 17, 'lieu', 'Voir les détails des evenements'),
(165, 17, '_lieu', 'field_5ad5b739f4320'),
(166, 17, 'moderateur', '0'),
(167, 17, '_moderateur', 'field_5ad5b75bf4321'),
(168, 17, 'date_debut', '20180504'),
(169, 17, '_date_debut', 'field_5ad5b788f4322'),
(170, 17, 'date_fin', '20180525'),
(171, 17, '_date_fin', 'field_5ad5b7e3f4323'),
(172, 17, 'geolocation', ''),
(173, 17, '_geolocation', 'field_5ad5b7f7f4324'),
(174, 16, 'partenaire', 'MJC / Le Krill'),
(175, 16, '_partenaire', 'field_5ad5b664f431d'),
(176, 16, 'telephone', ''),
(177, 16, '_telephone', 'field_5ad5b6c1f431e'),
(178, 16, 'besoins', ''),
(179, 16, '_besoins', 'field_5ad5b712f431f'),
(180, 16, 'lieu', 'Voir les détails des evenements'),
(181, 16, '_lieu', 'field_5ad5b739f4320'),
(182, 16, 'moderateur', '0'),
(183, 16, '_moderateur', 'field_5ad5b75bf4321'),
(184, 16, 'date_debut', '20180504'),
(185, 16, '_date_debut', 'field_5ad5b788f4322'),
(186, 16, 'date_fin', '20180525'),
(187, 16, '_date_fin', 'field_5ad5b7e3f4323'),
(188, 16, 'geolocation', ''),
(189, 16, '_geolocation', 'field_5ad5b7f7f4324'),
(190, 18, '_edit_lock', '1524033929:1'),
(191, 18, '_edit_last', '1'),
(194, 19, 'partenaire', 'café associatif des Costes-Rouges'),
(195, 19, '_partenaire', 'field_5ad5b664f431d'),
(196, 19, 'telephone', ''),
(197, 19, '_telephone', 'field_5ad5b6c1f431e'),
(198, 19, 'besoins', ''),
(199, 19, '_besoins', 'field_5ad5b712f431f'),
(200, 19, 'lieu', 'café associatif des Costes-Rouges'),
(201, 19, '_lieu', 'field_5ad5b739f4320'),
(202, 19, 'moderateur', '0'),
(203, 19, '_moderateur', 'field_5ad5b75bf4321'),
(204, 19, 'date_debut', '20180608'),
(205, 19, '_date_debut', 'field_5ad5b788f4322'),
(206, 19, 'date_fin', '20180608'),
(207, 19, '_date_fin', 'field_5ad5b7e3f4323'),
(208, 19, 'geolocation', ''),
(209, 19, '_geolocation', 'field_5ad5b7f7f4324'),
(210, 18, 'partenaire', 'café associatif des Costes-Rouges'),
(211, 18, '_partenaire', 'field_5ad5b664f431d'),
(212, 18, 'telephone', ''),
(213, 18, '_telephone', 'field_5ad5b6c1f431e'),
(214, 18, 'besoins', ''),
(215, 18, '_besoins', 'field_5ad5b712f431f'),
(216, 18, 'lieu', 'café associatif des Costes-Rouges'),
(217, 18, '_lieu', 'field_5ad5b739f4320'),
(218, 18, 'moderateur', '0'),
(219, 18, '_moderateur', 'field_5ad5b75bf4321'),
(220, 18, 'date_debut', '20180608'),
(221, 18, '_date_debut', 'field_5ad5b788f4322'),
(222, 18, 'date_fin', '20180608'),
(223, 18, '_date_fin', 'field_5ad5b7e3f4323'),
(224, 18, 'geolocation', ''),
(225, 18, '_geolocation', 'field_5ad5b7f7f4324'),
(226, 20, '_wp_attached_file', '2018/04/plan.jpeg'),
(227, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:955;s:6:"height";i:482;s:4:"file";s:17:"2018/04/plan.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"plan-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"plan-300x151.jpeg";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"plan-768x388.jpeg";s:5:"width";i:768;s:6:"height";i:388;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
(2, 2, '_edit_lock', '1524039343:2'),
(3, 5, '_edit_lock', '1523622866:2'),
(4, 6, '_menu_item_type', 'custom'),
(5, 6, '_menu_item_menu_item_parent', '0'),
(6, 6, '_menu_item_object_id', '6'),
(7, 6, '_menu_item_object', 'custom'),
(8, 6, '_menu_item_target', ''),
(9, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(10, 6, '_menu_item_xfn', ''),
(11, 6, '_menu_item_url', 'http://localhost:8888/'),
(12, 6, '_menu_item_orphaned', '1523866191'),
(13, 7, '_menu_item_type', 'post_type'),
(14, 7, '_menu_item_menu_item_parent', '0'),
(15, 7, '_menu_item_object_id', '2'),
(16, 7, '_menu_item_object', 'page'),
(17, 7, '_menu_item_target', ''),
(18, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(19, 7, '_menu_item_xfn', ''),
(20, 7, '_menu_item_url', ''),
(21, 7, '_menu_item_orphaned', '1523866191'),
(22, 8, '_menu_item_type', 'custom'),
(23, 8, '_menu_item_menu_item_parent', '0'),
(24, 8, '_menu_item_object_id', '8'),
(25, 8, '_menu_item_object', 'custom'),
(26, 8, '_menu_item_target', ''),
(27, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 8, '_menu_item_xfn', ''),
(29, 8, '_menu_item_url', 'http://localhost:8888/'),
(30, 8, '_menu_item_orphaned', '1523866236'),
(31, 9, '_menu_item_type', 'post_type'),
(32, 9, '_menu_item_menu_item_parent', '0'),
(33, 9, '_menu_item_object_id', '2'),
(34, 9, '_menu_item_object', 'page'),
(35, 9, '_menu_item_target', ''),
(36, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 9, '_menu_item_xfn', ''),
(38, 9, '_menu_item_url', ''),
(39, 9, '_menu_item_orphaned', '1523866237'),
(40, 10, '_menu_item_type', 'custom'),
(41, 10, '_menu_item_menu_item_parent', '0'),
(42, 10, '_menu_item_object_id', '10'),
(43, 10, '_menu_item_object', 'custom'),
(44, 10, '_menu_item_target', ''),
(45, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 10, '_menu_item_xfn', ''),
(47, 10, '_menu_item_url', 'http://localhost:8888/'),
(49, 11, '_menu_item_type', 'post_type'),
(50, 11, '_menu_item_menu_item_parent', '0'),
(51, 11, '_menu_item_object_id', '2'),
(52, 11, '_menu_item_object', 'page'),
(53, 11, '_menu_item_target', ''),
(54, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 11, '_menu_item_xfn', ''),
(56, 11, '_menu_item_url', ''),
(58, 12, '_edit_last', '2'),
(67, 12, '_edit_lock', '1523884286:2'),
(68, 16, '_edit_lock', '1524036657:2'),
(69, 16, '_edit_last', '2'),
(70, 17, '_menu_item_type', 'post_type'),
(71, 17, '_menu_item_menu_item_parent', '0'),
(72, 17, '_menu_item_object_id', '16'),
(73, 17, '_menu_item_object', 'page'),
(74, 17, '_menu_item_target', ''),
(75, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(76, 17, '_menu_item_xfn', ''),
(77, 17, '_menu_item_url', ''),
(78, 19, '_menu_item_type', 'post_type'),
(79, 19, '_menu_item_menu_item_parent', '0'),
(80, 19, '_menu_item_object_id', '16'),
(81, 19, '_menu_item_object', 'page'),
(82, 19, '_menu_item_target', ''),
(83, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 19, '_menu_item_xfn', ''),
(85, 19, '_menu_item_url', ''),
(86, 19, '_menu_item_orphaned', '1523870632'),
(87, 20, '_menu_item_type', 'post_type'),
(88, 20, '_menu_item_menu_item_parent', '0'),
(89, 20, '_menu_item_object_id', '12'),
(90, 20, '_menu_item_object', 'page'),
(91, 20, '_menu_item_target', ''),
(92, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 20, '_menu_item_xfn', ''),
(94, 20, '_menu_item_url', ''),
(95, 20, '_menu_item_orphaned', '1523870633'),
(96, 21, '_menu_item_type', 'post_type'),
(97, 21, '_menu_item_menu_item_parent', '0'),
(98, 21, '_menu_item_object_id', '2'),
(99, 21, '_menu_item_object', 'page'),
(100, 21, '_menu_item_target', ''),
(101, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(102, 21, '_menu_item_xfn', ''),
(103, 21, '_menu_item_url', ''),
(104, 21, '_menu_item_orphaned', '1523870633'),
(112, 12, '_wp_trash_meta_status', 'publish'),
(113, 12, '_wp_trash_meta_time', '1523884290'),
(114, 12, '_wp_desired_post_slug', 'contact'),
(115, 26, '_edit_lock', '1524036646:2'),
(116, 26, '_edit_last', '2'),
(117, 28, '_menu_item_type', 'post_type'),
(118, 28, '_menu_item_menu_item_parent', '0'),
(119, 28, '_menu_item_object_id', '26'),
(120, 28, '_menu_item_object', 'page'),
(121, 28, '_menu_item_target', ''),
(122, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 28, '_menu_item_xfn', ''),
(124, 28, '_menu_item_url', ''),
(131, 31, '_form', '<h3>Pour nous contacter, merci de bien vouloir remplir ce formulaire</h3>\n<label> Nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Email (obligatoire)\n    [email* your-email] </label>\n\n<label> Object\n    [text your-subject] </label>\n\n<label> Message\n    [textarea your-message] </label>\n\n[submit "Envoyer"]'),
(132, 31, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:48:"Fabrique Initiatives Citoyennes "[your-subject]"";s:6:"sender";s:37:"[your-name] <dekorte.tsrit@gmail.com>";s:9:"recipient";s:23:"dekorte.tsrit@gmail.com";s:4:"body";s:191:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Fabrique Initiatives Citoyennes (http://localhost:8888)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(133, 31, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:48:"Fabrique Initiatives Citoyennes "[your-subject]"";s:6:"sender";s:57:"Fabrique Initiatives Citoyennes <dekorte.tsrit@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:133:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Fabrique Initiatives Citoyennes (http://localhost:8888)";s:18:"additional_headers";s:33:"Reply-To: dekorte.tsrit@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(134, 31, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:32:"Le format de date est incorrect.";s:14:"date_too_early";s:47:"La date précède la première date autorisée.";s:13:"date_too_late";s:57:"La date est postérieure à la dernière date autorisée.";s:13:"upload_failed";s:72:"Une erreur inconnue s’est produite lors du téléversement du fichier.";s:24:"upload_file_type_invalid";s:79:"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.";s:21:"upload_file_too_large";s:31:"Le fichier est trop volumineux.";s:23:"upload_failed_php_error";s:63:"Une erreur s’est produite lors du téléversement du fichier.";s:14:"invalid_number";s:33:"Le format du nombre est invalide.";s:16:"number_too_small";s:50:"Le nombre est plus petit que le minimum autorisé.";s:16:"number_too_large";s:50:"Le nombre est plus grand que le maximum autorisé.";s:23:"quiz_answer_not_correct";s:42:"La réponse à la question est incorrecte.";s:17:"captcha_not_match";s:29:"Le code entré est incorrect.";s:13:"invalid_email";s:38:"L’adresse e-mail n’est pas valide.";s:11:"invalid_url";s:27:"L’URL n’est pas valide.";s:11:"invalid_tel";s:45:"Le numéro de téléphone n’est pas valide.";}'),
(135, 31, '_additional_settings', ''),
(136, 31, '_locale', 'fr_FR'),
(137, 16, '_yoast_wpseo_content_score', '30'),
(138, 26, '_yoast_wpseo_metadesc', 'Pour nous contacter, merci de remplir ce formulaire: Formulaire de contact de la MJC d\'Onet le Château et de son modérateur'),
(139, 26, '_yoast_wpseo_content_score', '60'),
(140, 16, '_yoast_wpseo_metadesc', 'Merci de remplir ce formulaire pour nous soumettre votre idée d\'initiative: Proposez une Initiative Citoyenne au modérateur'),
(141, 40, '_form', '<h3>Merci de remplir ce formulaire pour nous soumettre votre initiative citoyenne</h3>\n\n<label> Nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Téléphone\n[tel tel-643]</label>\n\n<label>Choisissez une catégorie:\n[select menu-299 "intergénérationnel" "numérique"\n"culture"\n"social"\n"environnement"\n"vie de la cité"]</label>\n\n<label> Lieu envisagé\n[text text-68]</label>\n\n<label> Date de début envisagée\n[date date-262]</label>\n\n<label> Date de fin envisagée\n[date date-262]</label>\n\n<label> Les besoins, les moyens\n[textarea textarea-414 placeholder "Besoins que vous avez identifié où moyens dont vous disposez"]</label>\n\n<label> Votre message (obligatoire)\n    [textarea* your-message placeholder "Descriptif de votre initiative"] </label>\n\n[submit "Soumettre"]'),
(142, 40, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:48:"Fabrique Initiatives Citoyennes "[your-subject]"";s:6:"sender";s:37:"[your-name] <dekorte.tsrit@gmail.com>";s:9:"recipient";s:23:"dekorte.tsrit@gmail.com";s:4:"body";s:212:"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Fabrique Initiatives Citoyennes (http://localhost:8888)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(143, 40, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:48:"Fabrique Initiatives Citoyennes "[your-subject]"";s:6:"sender";s:57:"Fabrique Initiatives Citoyennes <dekorte.tsrit@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:154:"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Fabrique Initiatives Citoyennes (http://localhost:8888)";s:18:"additional_headers";s:33:"Reply-To: dekorte.tsrit@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(144, 40, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Merci pour votre message. Il a été envoyé.";s:12:"mail_sent_ng";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:16:"validation_error";s:88:"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.";s:4:"spam";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:12:"accept_terms";s:77:"Vous devez accepter les termes et conditions avant d’envoyer votre message.";s:16:"invalid_required";s:25:"Ce champ est obligatoire.";s:16:"invalid_too_long";s:23:"Le champ est trop long.";s:17:"invalid_too_short";s:24:"Le champ est trop court.";s:12:"invalid_date";s:32:"Le format de date est incorrect.";s:14:"date_too_early";s:47:"La date précède la première date autorisée.";s:13:"date_too_late";s:57:"La date est postérieure à la dernière date autorisée.";s:13:"upload_failed";s:72:"Une erreur inconnue s’est produite lors du téléversement du fichier.";s:24:"upload_file_type_invalid";s:79:"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.";s:21:"upload_file_too_large";s:31:"Le fichier est trop volumineux.";s:23:"upload_failed_php_error";s:63:"Une erreur s’est produite lors du téléversement du fichier.";s:14:"invalid_number";s:33:"Le format du nombre est invalide.";s:16:"number_too_small";s:50:"Le nombre est plus petit que le minimum autorisé.";s:16:"number_too_large";s:50:"Le nombre est plus grand que le maximum autorisé.";s:23:"quiz_answer_not_correct";s:42:"La réponse à la question est incorrecte.";s:17:"captcha_not_match";s:29:"Le code entré est incorrect.";s:13:"invalid_email";s:38:"L’adresse e-mail n’est pas valide.";s:11:"invalid_url";s:27:"L’URL n’est pas valide.";s:11:"invalid_tel";s:45:"Le numéro de téléphone n’est pas valide.";}'),
(145, 40, '_additional_settings', ''),
(146, 40, '_locale', 'fr_FR'),
(151, 2, '_edit_last', '2'),
(152, 2, '_yoast_wpseo_content_score', '60'),
(153, 44, '_edit_lock', '1523967168:2'),
(154, 45, '_edit_lock', '1523968921:2'),
(155, 45, '_edit_last', '2'),
(156, 45, '_wplp_settings', 'a:73:{s:11:"source_type";s:8:"src_page";s:21:"cat_post_source_order";s:4:"date";s:19:"cat_post_source_asc";s:4:"desc";s:16:"cat_source_order";s:4:"date";s:14:"cat_source_asc";s:4:"desc";s:15:"pg_source_order";s:5:"title";s:13:"pg_source_asc";s:3:"asc";s:10:"show_title";s:1:"1";s:12:"amount_pages";i:1;s:11:"amount_cols";i:3;s:10:"pagination";s:1:"2";s:8:"max_elts";i:5;s:7:"off_set";s:1:"0";s:11:"total_width";s:3:"100";s:16:"total_width_unit";s:1:"0";s:10:"crop_title";i:2;s:14:"crop_title_len";i:1;s:9:"crop_text";i:2;s:13:"crop_text_len";i:2;s:13:"autoanimation";i:0;s:19:"autoanimation_trans";i:1;s:5:"theme";s:7:"default";s:7:"box_top";a:0:{}s:8:"box_left";a:1:{i:0;s:9:"Thumbnail";}s:9:"box_right";a:3:{i:0;s:5:"Title";i:1;s:4:"Date";i:2;s:4:"Text";}s:10:"box_bottom";a:0:{}s:9:"thumb_img";s:1:"1";s:10:"image_size";s:10:"mediumSize";s:11:"thumb_width";i:150;s:12:"thumb_height";i:150;s:8:"crop_img";i:0;s:11:"margin_left";s:1:"0";s:10:"margin_top";s:1:"0";s:12:"margin_right";s:1:"4";s:10:"custom_css";s:0:"";s:13:"margin_bottom";s:1:"4";s:8:"date_fmt";s:0:"";s:12:"no_post_text";s:0:"";s:9:"read_more";s:0:"";s:20:"default_img_previous";s:83:"http://localhost:8888/wp-content/plugins/wp-latest-posts/img/default-image-fpnp.png";s:11:"default_img";s:83:"http://localhost:8888/wp-content/plugins/wp-latest-posts/img/default-image-fpnp.png";s:11:"dfThumbnail";s:9:"Thumbnail";s:7:"dfTitle";s:0:"";s:6:"dfText";s:4:"Text";s:6:"dfDate";s:0:"";s:10:"dfCategory";s:8:"Category";s:20:"image_position_width";s:2:"50";s:16:"content_language";s:2:"en";s:15:"content_include";i:1;s:17:"editor_tabs_nonce";s:10:"da4c6f2df0";s:20:"source_category_list";a:1:{i:0;s:4:"_all";}s:21:"cat_list_source_order";s:2:"id";s:19:"cat_list_source_asc";s:3:"asc";s:15:"source_category";a:1:{i:0;s:4:"_all";}s:11:"amount_rows";i:1;s:17:"layzyload_default";s:1:"0";s:17:"readmore_bg_color";s:11:"transparent";s:19:"readmore_text_color";s:7:"#0c0c0c";s:13:"readmore_size";s:1:"0";s:15:"readmore_border";s:1:"0";s:13:"overlay_color";s:11:"transparent";s:19:"overlay_transparent";s:1:"0";s:21:"overlay_icon_selected";s:4:"f109";s:15:"over_icon_color";s:7:"#ff0000";s:18:"over_bg_icon_color";s:7:"#2C8FC7";s:11:"arrow_color";s:15:"rgb(51, 51, 51)";s:17:"arrow_hover_color";s:15:"rgb(54, 54, 54)";s:19:"dfThumbnailPosition";s:3:"top";s:8:"dfAuthor";s:0:"";s:10:"dfReadMore";s:0:"";s:11:"full_height";s:1:"1";s:12:"text_content";s:1:"0";s:13:"phpCodeInsert";s:64:"echo do_shortcode(\'[frontpage_news widget="45" name="Photos"]\');";}'),
(159, 50, '_wp_attached_file', '2018/04/drapeau-1.jpeg'),
(160, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:183;s:4:"file";s:22:"2018/04/drapeau-1.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"drapeau-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(161, 51, '_wp_attached_file', '2018/04/img_7.jpg'),
(162, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2016;s:6:"height";i:1512;s:4:"file";s:17:"2018/04/img_7.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img_7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"img_7-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"img_7-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"img_7-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(163, 52, '_wp_attached_file', '2018/04/img_6.jpg'),
(164, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2253;s:6:"height";i:1501;s:4:"file";s:17:"2018/04/img_6.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img_6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"img_6-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"img_6-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"img_6-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(165, 53, '_wp_attached_file', '2018/04/img_5.jpg'),
(166, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2592;s:6:"height";i:1728;s:4:"file";s:17:"2018/04/img_5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img_5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"img_5-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"img_5-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"img_5-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(167, 54, '_wp_attached_file', '2018/04/img_4.jpg'),
(168, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2592;s:6:"height";i:1728;s:4:"file";s:17:"2018/04/img_4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img_4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"img_4-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"img_4-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"img_4-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(169, 55, '_wp_attached_file', '2018/04/img_3.jpg'),
(170, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2128;s:6:"height";i:1416;s:4:"file";s:17:"2018/04/img_3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"img_3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"img_3-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"img_3-1024x681.jpg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(171, 56, '_wp_attached_file', '2018/04/img_2.jpg'),
(172, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1830;s:6:"height";i:1248;s:4:"file";s:17:"2018/04/img_2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"img_2-300x205.jpg";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"img_2-768x524.jpg";s:5:"width";i:768;s:6:"height";i:524;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"img_2-1024x698.jpg";s:5:"width";i:1024;s:6:"height";i:698;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(173, 57, '_wp_attached_file', '2018/04/img_1.jpg'),
(174, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2449;s:6:"height";i:1633;s:4:"file";s:17:"2018/04/img_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"img_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"img_1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"img_1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(175, 58, 'sa_slide1_content', ''),
(176, 58, 'sa_slide1_image_id', '50'),
(177, 58, 'sa_slide1_image_pos', 'center center'),
(178, 58, 'sa_slide1_image_size', 'cover'),
(179, 58, 'sa_slide1_image_repeat', 'no-repeat'),
(180, 58, 'sa_slide1_image_color', 'rgb(238, 238, 238)'),
(181, 58, 'sa_slide1_link_url', ''),
(182, 58, 'sa_slide1_link_target', '_self'),
(183, 58, 'sa_slide1_popup_type', 'NONE'),
(184, 58, 'sa_slide1_popup_imageid', ''),
(185, 58, 'sa_slide1_popup_imagetitle', ''),
(186, 58, 'sa_slide1_popup_video_id', ''),
(187, 58, 'sa_slide1_popup_video_type', ''),
(188, 58, 'sa_slide1_popup_background', 'no'),
(189, 58, 'sa_slide1_popup_html', ''),
(190, 58, 'sa_slide1_popup_shortcode', '0'),
(191, 58, 'sa_slide1_popup_bgcol', '#ffffff'),
(192, 58, 'sa_slide1_popup_width', '600'),
(193, 58, 'sa_slide2_content', ''),
(194, 58, 'sa_slide2_image_id', '51'),
(195, 58, 'sa_slide2_image_pos', 'center center'),
(196, 58, 'sa_slide2_image_size', 'cover'),
(197, 58, 'sa_slide2_image_repeat', 'no-repeat'),
(198, 58, 'sa_slide2_image_color', '#d9ead3'),
(199, 58, 'sa_slide2_link_url', ''),
(200, 58, 'sa_slide2_link_target', '_self'),
(201, 58, 'sa_slide2_popup_type', 'NONE'),
(202, 58, 'sa_slide2_popup_imageid', ''),
(203, 58, 'sa_slide2_popup_imagetitle', ''),
(204, 58, 'sa_slide2_popup_video_id', ''),
(205, 58, 'sa_slide2_popup_video_type', ''),
(206, 58, 'sa_slide2_popup_background', 'no'),
(207, 58, 'sa_slide2_popup_html', ''),
(208, 58, 'sa_slide2_popup_shortcode', '0'),
(209, 58, 'sa_slide2_popup_bgcol', '#ffffff'),
(210, 58, 'sa_slide2_popup_width', '600'),
(211, 58, 'sa_slide3_content', ''),
(212, 58, 'sa_slide3_image_id', '57'),
(213, 58, 'sa_slide3_image_pos', 'center top'),
(214, 58, 'sa_slide3_image_size', 'cover'),
(215, 58, 'sa_slide3_image_repeat', 'no-repeat'),
(216, 58, 'sa_slide3_image_color', 'rgb(243, 243, 243)'),
(217, 58, 'sa_slide3_link_url', ''),
(218, 58, 'sa_slide3_link_target', '_self'),
(219, 58, 'sa_slide3_popup_type', 'NONE'),
(220, 58, 'sa_slide3_popup_imageid', ''),
(221, 58, 'sa_slide3_popup_imagetitle', ''),
(222, 58, 'sa_slide3_popup_video_id', ''),
(223, 58, 'sa_slide3_popup_video_type', ''),
(224, 58, 'sa_slide3_popup_background', 'no'),
(225, 58, 'sa_slide3_popup_html', ''),
(226, 58, 'sa_slide3_popup_shortcode', '0'),
(227, 58, 'sa_slide3_popup_bgcol', '#ffffff'),
(228, 58, 'sa_slide3_popup_width', '600'),
(229, 58, 'sa_slide4_content', ''),
(230, 58, 'sa_slide4_image_id', '56'),
(231, 58, 'sa_slide4_image_pos', 'center top'),
(232, 58, 'sa_slide4_image_size', 'cover'),
(233, 58, 'sa_slide4_image_repeat', 'no-repeat'),
(234, 58, 'sa_slide4_image_color', 'rgb(238, 238, 238)'),
(235, 58, 'sa_slide4_link_url', ''),
(236, 58, 'sa_slide4_link_target', '_self'),
(237, 58, 'sa_slide4_popup_type', 'NONE'),
(238, 58, 'sa_slide4_popup_imageid', ''),
(239, 58, 'sa_slide4_popup_imagetitle', ''),
(240, 58, 'sa_slide4_popup_video_id', ''),
(241, 58, 'sa_slide4_popup_video_type', ''),
(242, 58, 'sa_slide4_popup_background', 'no'),
(243, 58, 'sa_slide4_popup_html', ''),
(244, 58, 'sa_slide4_popup_shortcode', '0'),
(245, 58, 'sa_slide4_popup_bgcol', '#ffffff'),
(246, 58, 'sa_slide4_popup_width', '600'),
(247, 58, 'sa_slide5_content', ''),
(248, 58, 'sa_slide5_image_id', '55'),
(249, 58, 'sa_slide5_image_pos', 'center top'),
(250, 58, 'sa_slide5_image_size', 'cover'),
(251, 58, 'sa_slide5_image_repeat', 'no-repeat'),
(252, 58, 'sa_slide5_image_color', 'rgb(238, 238, 238)'),
(253, 58, 'sa_slide5_link_url', ''),
(254, 58, 'sa_slide5_link_target', '_self'),
(255, 58, 'sa_slide5_popup_type', 'NONE'),
(256, 58, 'sa_slide5_popup_imageid', ''),
(257, 58, 'sa_slide5_popup_imagetitle', ''),
(258, 58, 'sa_slide5_popup_video_id', ''),
(259, 58, 'sa_slide5_popup_video_type', ''),
(260, 58, 'sa_slide5_popup_background', 'no'),
(261, 58, 'sa_slide5_popup_html', ''),
(262, 58, 'sa_slide5_popup_shortcode', '0'),
(263, 58, 'sa_slide5_popup_bgcol', '#ffffff'),
(264, 58, 'sa_slide5_popup_width', '600'),
(265, 58, 'sa_slide6_content', ''),
(266, 58, 'sa_slide6_image_id', '54'),
(267, 58, 'sa_slide6_image_pos', 'center top'),
(268, 58, 'sa_slide6_image_size', 'cover'),
(269, 58, 'sa_slide6_image_repeat', 'no-repeat'),
(270, 58, 'sa_slide6_image_color', 'rgb(238, 238, 238)'),
(271, 58, 'sa_slide6_link_url', ''),
(272, 58, 'sa_slide6_link_target', '_self'),
(273, 58, 'sa_slide6_popup_type', 'NONE'),
(274, 58, 'sa_slide6_popup_imageid', ''),
(275, 58, 'sa_slide6_popup_imagetitle', ''),
(276, 58, 'sa_slide6_popup_video_id', ''),
(277, 58, 'sa_slide6_popup_video_type', ''),
(278, 58, 'sa_slide6_popup_background', 'no'),
(279, 58, 'sa_slide6_popup_html', ''),
(280, 58, 'sa_slide6_popup_shortcode', '0'),
(281, 58, 'sa_slide6_popup_bgcol', '#ffffff'),
(282, 58, 'sa_slide6_popup_width', '600'),
(283, 58, 'sa_slide7_content', ''),
(284, 58, 'sa_slide7_image_id', '53'),
(285, 58, 'sa_slide7_image_pos', 'center top'),
(286, 58, 'sa_slide7_image_size', 'cover'),
(287, 58, 'sa_slide7_image_repeat', 'no-repeat'),
(288, 58, 'sa_slide7_image_color', 'rgb(238, 238, 238)'),
(289, 58, 'sa_slide7_link_url', ''),
(290, 58, 'sa_slide7_link_target', '_self'),
(291, 58, 'sa_slide7_popup_type', 'NONE'),
(292, 58, 'sa_slide7_popup_imageid', ''),
(293, 58, 'sa_slide7_popup_imagetitle', ''),
(294, 58, 'sa_slide7_popup_video_id', ''),
(295, 58, 'sa_slide7_popup_video_type', ''),
(296, 58, 'sa_slide7_popup_background', 'no'),
(297, 58, 'sa_slide7_popup_html', ''),
(298, 58, 'sa_slide7_popup_shortcode', '0'),
(299, 58, 'sa_slide7_popup_bgcol', '#ffffff'),
(300, 58, 'sa_slide7_popup_width', '600'),
(301, 58, 'sa_slide8_content', ''),
(302, 58, 'sa_slide8_image_id', '52'),
(303, 58, 'sa_slide8_image_pos', 'center top'),
(304, 58, 'sa_slide8_image_size', 'cover'),
(305, 58, 'sa_slide8_image_repeat', 'no-repeat'),
(306, 58, 'sa_slide8_image_color', 'rgb(238, 238, 238)'),
(307, 58, 'sa_slide8_link_url', ''),
(308, 58, 'sa_slide8_link_target', '_self'),
(309, 58, 'sa_slide8_popup_type', 'NONE'),
(310, 58, 'sa_slide8_popup_imageid', ''),
(311, 58, 'sa_slide8_popup_imagetitle', ''),
(312, 58, 'sa_slide8_popup_video_id', ''),
(313, 58, 'sa_slide8_popup_video_type', ''),
(314, 58, 'sa_slide8_popup_background', 'no'),
(315, 58, 'sa_slide8_popup_html', ''),
(316, 58, 'sa_slide8_popup_shortcode', '0'),
(317, 58, 'sa_slide8_popup_bgcol', '#ffffff'),
(318, 58, 'sa_slide8_popup_width', '600'),
(319, 58, 'sa_disable_visual_editor', '0'),
(320, 58, 'sa_num_slides', '9'),
(321, 58, 'sa_slide_duration', '4'),
(322, 58, 'sa_slide_transition', '0.3'),
(323, 58, 'sa_slide_by', '1'),
(324, 58, 'sa_loop_slider', '1'),
(325, 58, 'sa_stop_hover', '1'),
(326, 58, 'sa_nav_arrows', '0'),
(327, 58, 'sa_pagination', '0'),
(328, 58, 'sa_shortcodes', '0'),
(329, 58, 'sa_random_order', '1'),
(330, 58, 'sa_reverse_order', '0'),
(331, 58, 'sa_mouse_drag', '1'),
(332, 58, 'sa_touch_drag', '1'),
(333, 58, 'sa_items_width1', '1'),
(334, 58, 'sa_items_width2', '2'),
(335, 58, 'sa_items_width3', '3'),
(336, 58, 'sa_items_width4', '4'),
(337, 58, 'sa_items_width5', '4'),
(338, 58, 'sa_items_width6', '4'),
(339, 58, 'sa_transition', 'Slide'),
(340, 58, 'sa_css_id', 'sample_slider'),
(341, 58, 'sa_background_color', '#fafafa'),
(342, 58, 'sa_border_width', '0'),
(343, 58, 'sa_border_color', '#f0f0f0'),
(344, 58, 'sa_border_radius', '5'),
(345, 58, 'sa_wrapper_padd_top', '0'),
(346, 58, 'sa_wrapper_padd_right', '0'),
(347, 58, 'sa_wrapper_padd_bottom', '0'),
(348, 58, 'sa_wrapper_padd_left', '0'),
(349, 58, 'sa_slide_min_height_perc', '50'),
(350, 58, 'sa_slide_padding_tb', '5'),
(351, 58, 'sa_slide_padding_lr', '5'),
(352, 58, 'sa_slide_margin_lr', '0'),
(353, 58, 'sa_autohide_arrows', '1'),
(354, 58, 'sa_slide_icons_location', 'Center Center'),
(355, 58, 'sa_slide_icons_visible', '0'),
(356, 58, 'sa_slide_icons_color', 'white selected'),
(357, 58, '_edit_lock', '1524040129:2'),
(358, 58, '_edit_last', '2'),
(359, 58, 'sa_slide1_char_count', '0'),
(360, 58, 'sa_slide2_char_count', '0'),
(361, 58, 'sa_slide3_char_count', '0'),
(362, 58, 'sa_slide4_char_count', '0'),
(363, 58, 'sa_slide5_char_count', '0'),
(364, 58, 'sa_slide6_char_count', '0'),
(365, 58, 'sa_slide7_char_count', '0'),
(366, 58, 'sa_slide8_char_count', '0'),
(367, 58, 'sa_info_added', '0'),
(368, 58, 'sa_info_deleted', '0'),
(369, 58, 'sa_duplicate_slide', '0'),
(370, 58, 'sa_info_duplicated', '0'),
(371, 58, 'sa_move_slide_up', '0'),
(372, 58, 'sa_info_moved', '0'),
(373, 58, 'sa_slide9_content', ''),
(374, 58, 'sa_slide9_image_id', '61'),
(375, 58, 'sa_slide9_image_pos', 'center center'),
(376, 58, 'sa_slide9_image_size', '100% auto'),
(377, 58, 'sa_slide9_image_repeat', 'no-repeat'),
(378, 58, 'sa_slide9_image_color', 'rgb(238, 238, 238)'),
(379, 58, 'sa_slide9_link_url', ''),
(380, 58, 'sa_slide9_link_target', '_self'),
(381, 61, '_wp_attached_file', '2018/04/img_9.jpg'),
(382, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4149;s:6:"height";i:2334;s:4:"file";s:17:"2018/04/img_9.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img_9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"img_9-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"img_9-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"img_9-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(383, 58, 'sa_slide9_char_count', '0'),
(384, 64, '_wp_attached_file', '2018/04/charte-FIC.pdf'),
(385, 2, '_yoast_wpseo_metadesc', 'Le projet Fabrique Initiatives Citoyennes - FIC MJC d\'Onet le Château Charte d\'engagement des Fabrique Initiatives Citoyennes'),
(386, 26, '_yoast_wpseo_focuskw_text_input', 'contact'),
(387, 26, '_yoast_wpseo_focuskw', 'contact'),
(388, 26, '_yoast_wpseo_linkdex', '48'),
(389, 2, '_yoast_wpseo_focuskw_text_input', 'Le projet Fabrique'),
(390, 2, '_yoast_wpseo_focuskw', 'Le projet Fabrique'),
(391, 2, '_yoast_wpseo_linkdex', '65'),
(392, 16, '_yoast_wpseo_focuskw_text_input', 'Proposez une initiative'),
(393, 16, '_yoast_wpseo_focuskw', 'Proposez une initiative'),
(394, 16, '_yoast_wpseo_linkdex', '46'),
(395, 72, '_edit_lock', '1524041073:2'),
(396, 73, '_wp_attached_file', '2018/04/logoRodezAgglo.jpg'),
(397, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:363;s:4:"file";s:26:"2018/04/logoRodezAgglo.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"logoRodezAgglo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"logoRodezAgglo-289x300.jpg";s:5:"width";i:289;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(398, 74, '_wp_attached_file', '2018/04/2018-Education.jpg'),
(399, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:193;s:6:"height";i:60;s:4:"file";s:26:"2018/04/2018-Education.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"2018-Education-150x60.jpg";s:5:"width";i:150;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(400, 75, '_wp_attached_file', '2018/04/logo_pour_mail_seul1.gif'),
(401, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:157;s:6:"height";i:96;s:4:"file";s:32:"2018/04/logo_pour_mail_seul1.gif";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"logo_pour_mail_seul1-150x96.gif";s:5:"width";i:150;s:6:"height";i:96;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(402, 76, '_wp_attached_file', '2018/04/Onet_le_Chateau-.png'),
(403, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1890;s:6:"height";i:1039;s:4:"file";s:28:"2018/04/Onet_le_Chateau-.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Onet_le_Chateau--150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"Onet_le_Chateau--300x165.png";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:28:"Onet_le_Chateau--768x422.png";s:5:"width";i:768;s:6:"height";i:422;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:29:"Onet_le_Chateau--1024x563.png";s:5:"width";i:1024;s:6:"height";i:563;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(404, 77, '_wp_attached_file', '2018/04/CGET.jpg'),
(405, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:900;s:4:"file";s:16:"2018/04/CGET.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"CGET-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"CGET-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"CGET-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(406, 78, '_wp_attached_file', '2018/04/logo-MJC-onet-_noir.png'),
(407, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3311;s:6:"height";i:2363;s:4:"file";s:31:"2018/04/logo-MJC-onet-_noir.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"logo-MJC-onet-_noir-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"logo-MJC-onet-_noir-300x214.png";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:31:"logo-MJC-onet-_noir-768x548.png";s:5:"width";i:768;s:6:"height";i:548;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:32:"logo-MJC-onet-_noir-1024x731.png";s:5:"width";i:1024;s:6:"height";i:731;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(408, 72, '_edit_last', '2'),
(409, 72, 'sa_slide1_content', ''),
(410, 72, 'sa_slide1_image_id', '78'),
(411, 72, 'sa_slide1_image_pos', 'center center'),
(412, 72, 'sa_slide1_image_size', 'contain'),
(413, 72, 'sa_slide1_image_repeat', 'no-repeat'),
(414, 72, 'sa_slide1_image_color', 'rgb(255, 255, 255)'),
(415, 72, 'sa_slide1_link_url', ''),
(416, 72, 'sa_slide1_link_target', '_self'),
(417, 72, 'sa_slide2_content', ''),
(418, 72, 'sa_slide2_image_id', '77'),
(419, 72, 'sa_slide2_image_pos', 'center center'),
(420, 72, 'sa_slide2_image_size', 'contain'),
(421, 72, 'sa_slide2_image_repeat', 'no-repeat'),
(422, 72, 'sa_slide2_image_color', 'rgb(255, 255, 255)'),
(423, 72, 'sa_slide2_link_url', ''),
(424, 72, 'sa_slide2_link_target', '_self'),
(425, 72, 'sa_slide3_content', ''),
(426, 72, 'sa_slide3_image_id', '76'),
(427, 72, 'sa_slide3_image_pos', 'center center'),
(428, 72, 'sa_slide3_image_size', 'contain'),
(429, 72, 'sa_slide3_image_repeat', 'no-repeat'),
(430, 72, 'sa_slide3_image_color', 'rgb(255, 255, 255)'),
(431, 72, 'sa_slide3_link_url', ''),
(432, 72, 'sa_slide3_link_target', '_self'),
(433, 72, 'sa_slide4_content', ''),
(434, 72, 'sa_slide4_image_id', '73'),
(435, 72, 'sa_slide4_image_pos', 'center center'),
(436, 72, 'sa_slide4_image_size', 'contain'),
(437, 72, 'sa_slide4_image_repeat', 'no-repeat'),
(438, 72, 'sa_slide4_image_color', 'rgb(255, 255, 255)'),
(439, 72, 'sa_slide4_link_url', ''),
(440, 72, 'sa_slide4_link_target', '_self'),
(441, 72, 'sa_num_slides', '6'),
(442, 72, 'sa_disable_visual_editor', '0'),
(443, 72, 'sa_info_added', '0'),
(444, 72, 'sa_info_deleted', '0'),
(445, 72, 'sa_duplicate_slide', '0'),
(446, 72, 'sa_info_duplicated', '0'),
(447, 72, 'sa_move_slide_up', '0'),
(448, 72, 'sa_info_moved', '0'),
(449, 72, 'sa_slide_duration', '5'),
(450, 72, 'sa_slide_transition', '0.2'),
(451, 72, 'sa_slide_by', '1'),
(452, 72, 'sa_loop_slider', '1'),
(453, 72, 'sa_stop_hover', '1'),
(454, 72, 'sa_nav_arrows', '0'),
(455, 72, 'sa_pagination', '0'),
(456, 72, 'sa_random_order', '0'),
(457, 72, 'sa_reverse_order', '0'),
(458, 72, 'sa_shortcodes', '0'),
(459, 72, 'sa_mouse_drag', '1'),
(460, 72, 'sa_touch_drag', '1'),
(461, 72, 'sa_items_width1', '1'),
(462, 72, 'sa_items_width2', '2'),
(463, 72, 'sa_items_width3', '3'),
(464, 72, 'sa_items_width4', '4'),
(465, 72, 'sa_items_width5', '4'),
(466, 72, 'sa_items_width6', '4'),
(467, 72, 'sa_transition', 'Slide'),
(468, 72, 'sa_css_id', 'slider_72'),
(469, 72, 'sa_background_color', 'rgb(255, 255, 255)'),
(470, 72, 'sa_border_width', '0'),
(471, 72, 'sa_border_color', 'rgba(0,0,0,0)'),
(472, 72, 'sa_border_radius', '0'),
(473, 72, 'sa_wrapper_padd_top', '0'),
(474, 72, 'sa_wrapper_padd_right', '0'),
(475, 72, 'sa_wrapper_padd_bottom', '0'),
(476, 72, 'sa_wrapper_padd_left', '0'),
(477, 72, 'sa_slide_min_height_perc', '50'),
(478, 72, 'sa_slide_padding_tb', '5'),
(479, 72, 'sa_slide_padding_lr', '5'),
(480, 72, 'sa_slide_margin_lr', '0'),
(481, 72, 'sa_slide_icons_location', 'Center Center'),
(482, 72, 'sa_slide_icons_color', 'white selected'),
(483, 72, 'sa_autohide_arrows', '1'),
(484, 72, 'sa_slide_icons_visible', '0'),
(485, 72, 'sa_slide5_content', ''),
(486, 72, 'sa_slide5_image_id', '74'),
(487, 72, 'sa_slide5_image_pos', 'center center'),
(488, 72, 'sa_slide5_image_size', 'contain'),
(489, 72, 'sa_slide5_image_repeat', 'no-repeat'),
(490, 72, 'sa_slide5_image_color', 'rgb(255, 255, 255)'),
(491, 72, 'sa_slide5_link_url', ''),
(492, 72, 'sa_slide5_link_target', '_self'),
(493, 72, 'sa_slide1_char_count', '0'),
(494, 72, 'sa_slide2_char_count', '0'),
(495, 72, 'sa_slide3_char_count', '0'),
(496, 72, 'sa_slide4_char_count', '0'),
(497, 72, 'sa_slide6_content', ''),
(498, 72, 'sa_slide6_image_id', '75'),
(499, 72, 'sa_slide6_image_pos', 'center center'),
(500, 72, 'sa_slide6_image_size', 'contain'),
(501, 72, 'sa_slide6_image_repeat', 'no-repeat'),
(502, 72, 'sa_slide6_image_color', 'rgb(255, 255, 255)'),
(503, 72, 'sa_slide6_link_url', ''),
(504, 72, 'sa_slide6_link_target', '_self'),
(505, 72, 'sa_slide5_char_count', '0'),
(506, 72, 'sa_slide6_char_count', '0');
-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_posts`
--

CREATE TABLE `ficmjc12_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ficmjc12_posts`
--

INSERT INTO `ficmjc12_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-13 11:37:50', '2018-04-13 09:37:51', 'Bienvenue sur WordPress. Ceci est votre premier Initiative Citoyenne. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-04-17 15:54:17', '2018-04-17 13:54:17', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-13 11:37:50', '2018-04-13 09:37:51', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://localhost:8888/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-04-13 11:37:50', '2018-04-13 09:37:51', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-13 11:39:38', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-13 11:39:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=3', 0, 'post', '', 0),
(4, 1, '2018-04-16 16:18:53', '2018-04-16 14:18:53', '<label> Votre nom (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Votre adresse mail (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Sujet\r\n    [text your-subject] </label>\r\n\r\n<label> Votre Message\r\n    [textarea your-message] </label>\r\n\r\n[submit "Send"]\n1\nFabrique Initiatives Citoyennes "[your-subject]"\n[your-name] <dekorte.tsrit@gmail.com>\ndekorte.tsrit@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Fabrique Initiatives Citoyennes (http://localhost:8888)\nReply-To: [your-email]\n\n\n\n\nFabrique Initiatives Citoyennes "[your-subject]"\nFabrique Initiatives Citoyennes <dekorte.tsrit@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Fabrique Initiatives Citoyennes (http://localhost:8888)\nReply-To: dekorte.tsrit@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-04-17 09:09:26', '2018-04-17 07:09:26', '', 0, 'http://localhost:8888/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2018-04-17 11:04:56', '2018-04-17 09:04:56', '', 'initiative', '', 'publish', 'closed', 'closed', '', 'acf_initiative', '', '', '2018-04-17 11:26:56', '2018-04-17 09:26:56', '', 0, 'http://localhost:8888/?post_type=acf&#038;p=5', 0, 'acf', '', 0),
(6, 1, '2018-04-17 11:05:13', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-17 11:05:13', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=6', 0, 'post', '', 0),
(7, 1, '2018-04-17 11:06:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-17 11:06:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=7', 0, 'post', '', 0),
(8, 1, '2018-04-17 11:51:05', '2018-04-17 09:51:05', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-17 11:51:05', '2018-04-17 09:51:05', '', 1, 'http://localhost:8888/?p=8', 0, 'revision', '', 0),
(9, 1, '2018-04-17 15:53:28', '2018-04-17 13:53:28', 'Bienvenue sur WordPress. Ceci est votre premier Initiative Citoyenne. Lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-04-17 15:53:28', '2018-04-17 13:53:28', '', 1, 'http://localhost:8888/?p=9', 0, 'revision', '', 0),
(10, 1, '2018-04-17 15:53:47', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-17 15:53:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=10', 0, 'post', '', 0),
(11, 1, '2018-04-17 15:54:17', '2018-04-17 13:54:17', 'Bienvenue sur WordPress. Ceci est votre premier Initiative Citoyenne. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-17 15:54:17', '2018-04-17 13:54:17', '', 1, 'http://localhost:8888/?p=11', 0, 'revision', '', 0),
(12, 1, '2018-04-17 16:14:41', '2018-04-17 14:14:41', 'Animation Hallowen au <span class="highlightNode">Café</span> associatif des <span class="highlightNode">Costes Rouges</span>...\r\nIl y en a qui ont des têtes à faire peur ! <span class="_5mfr _47e3"><img class="img" role="presentation" src="https://static.xx.fbcdn.net/images/emoji.php/v9/fd3/1/16/1f924.png" alt="" width="16" height="16" /><span class="_7oe">🤤</span></span>\r\nBonne soirée.', 'Animation Halloween', '', 'publish', 'open', 'open', '', 'animation-halloween', '', '', '2018-04-17 16:14:41', '2018-04-17 14:14:41', '', 0, 'http://localhost:8888/?p=12', 0, 'post', '', 0),
(13, 1, '2018-04-17 16:14:41', '2018-04-17 14:14:41', 'Animation Hallowen au <span class="highlightNode">Café</span> associatif des <span class="highlightNode">Costes Rouges</span>...\r\nIl y en a qui ont des têtes à faire peur ! <span class="_5mfr _47e3"><img class="img" role="presentation" src="https://static.xx.fbcdn.net/images/emoji.php/v9/fd3/1/16/1f924.png" alt="" width="16" height="16" /><span class="_7oe">🤤</span></span>\r\nBonne soirée.', 'Animation Halloween', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-17 16:14:41', '2018-04-17 14:14:41', '', 12, 'http://localhost:8888/?p=13', 0, 'revision', '', 0),
(14, 1, '2018-04-17 16:17:53', '2018-04-17 14:17:53', 'Prochaine animation du <span class="highlightNode">café</span> associatif des <span class="highlightNode">Costes Rouges Rencontre des Jardiniers avec bourse aux plantes &amp; brocante de jardinage. C</span>e samedi 14 avril de 14 à 18h, venez nombreux.', 'Rencontre des Jardiniers', '', 'publish', 'open', 'open', '', 'rencontre-des-jardiniers', '', '', '2018-04-17 16:17:53', '2018-04-17 14:17:53', '', 0, 'http://localhost:8888/?p=14', 0, 'post', '', 0),
(15, 1, '2018-04-17 16:17:53', '2018-04-17 14:17:53', 'Prochaine animation du <span class="highlightNode">café</span> associatif des <span class="highlightNode">Costes Rouges Rencontre des Jardiniers avec bourse aux plantes &amp; brocante de jardinage. C</span>e samedi 14 avril de 14 à 18h, venez nombreux.', 'Rencontre des Jardiniers', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-04-17 16:17:53', '2018-04-17 14:17:53', '', 14, 'http://localhost:8888/?p=15', 0, 'revision', '', 0),
(16, 1, '2018-04-17 16:23:20', '2018-04-17 14:23:20', 'ONET TOUS VOISINS #2 <span class="_5mfr _47e3"><img class="img" role="presentation" src="https://static.xx.fbcdn.net/images/emoji.php/v9/fd/1/16/1f468_200d_1f467_200d_1f466.png" alt="" width="16" height="16" /><span class="_7oe">👨‍👧‍👦</span></span>\r\n\r\nTous les vendredis du mois de mai, 4 rendez-vous hors-les-murs avec des repas partagés, un mur de petites annonces, des animations <span class="text_exposed_show">musicales, des échanges de services entre voisins, du troc d’objets, un crieur public et bien plus encore... !</span>\r\n<div class="text_exposed_show">\r\n\r\n<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://static.xx.fbcdn.net/images/emoji.php/v9/fac/1/16/1f4cc.png" alt="" width="16" height="16" /><span class="_7oe">📌</span></span> Tout le programme détaillé à venir sur <a href="https://l.facebook.com/l.php?u=http%3A%2F%2Fwww.lekrill.com%2F&amp;h=ATM0BnoEwohM4bh9ezBkB4QIK7aT3XH1JXsE-ZjBVKC81wt7u3f3mVxZFwEYMHyD3wugAVQNWGvEyu_DNHDwN22riVQUN_eBZZS9T-_ApAcGJZoEq5M5XcYd3M58arCl" target="_blank" rel="noopener nofollow" data-ft="{&quot;tn&quot;:&quot;-U&quot;}" data-lynx-mode="asynclazy">www.lekrill.com</a> et sur les évènements facebook dédiés :\r\nVendredi 4 Mai : <a class="profileLink" href="https://www.facebook.com/events/1673665839339704/?acontext=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%7D&amp;source=3&amp;source_newsfeed_story_type=regular&amp;action_history=%5B%7B%22surface%22%3A%22newsfeed%22%2C%22mechanism%22%3A%22feed_story%22%2C%22extra_data%22%3A%5B%5D%7D%5D&amp;has_source=1&amp;fref=mentions" data-hovercard="/ajax/hovercard/event.php?id=1673665839339704&amp;extragetparams=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%2C%22fref%22%3A%22mentions%22%7D" data-hovercard-prefer-more-content-show="1">Onet Tous Voisins #02 - Espace vert @ Salle des Fêtes</a>\r\nVendredi 11 Mai : <a class="profileLink" href="https://www.facebook.com/events/1470996303023397/?acontext=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%7D&amp;source=3&amp;source_newsfeed_story_type=regular&amp;action_history=%5B%7B%22surface%22%3A%22newsfeed%22%2C%22mechanism%22%3A%22feed_story%22%2C%22extra_data%22%3A%5B%5D%7D%5D&amp;has_source=1&amp;fref=mentions" data-hovercard="/ajax/hovercard/event.php?id=1470996303023397&amp;extragetparams=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%2C%22fref%22%3A%22mentions%22%7D" data-hovercard-prefer-more-content-show="1">Onet Tous Voisins #02 @ Café Les Costes Rouges</a>\r\nVendredi 18 Mai : <a class="profileLink" href="https://www.facebook.com/events/260638387804398/?acontext=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%7D&amp;source=3&amp;source_newsfeed_story_type=regular&amp;action_history=%5B%7B%22surface%22%3A%22newsfeed%22%2C%22mechanism%22%3A%22feed_story%22%2C%22extra_data%22%3A%5B%5D%7D%5D&amp;has_source=1&amp;fref=mentions" data-hovercard="/ajax/hovercard/event.php?id=260638387804398&amp;extragetparams=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%2C%22fref%22%3A%22mentions%22%7D" data-hovercard-prefer-more-content-show="1">Onet Tous Voisins #02 - @ Parc Stegaurach MJC FJT</a>\r\nVendredi 25 Mai : <a class="profileLink" href="https://www.facebook.com/events/157610181554979/?acontext=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%7D&amp;source=3&amp;source_newsfeed_story_type=regular&amp;action_history=%5B%7B%22surface%22%3A%22newsfeed%22%2C%22mechanism%22%3A%22feed_story%22%2C%22extra_data%22%3A%5B%5D%7D%5D&amp;has_source=1&amp;fref=mentions" data-hovercard="/ajax/hovercard/event.php?id=157610181554979&amp;extragetparams=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%2C%22fref%22%3A%22mentions%22%7D" data-hovercard-prefer-more-content-show="1">Grande fête des voisins - Place des Artistes @  LeKrill12</a>\r\n\r\n</div>', 'Onet tous voisins #2', '', 'publish', 'open', 'open', '', 'onet-tous-voisins-2', '', '', '2018-04-17 16:23:20', '2018-04-17 14:23:20', '', 0, 'http://localhost:8888/?p=16', 0, 'post', '', 0),
(17, 1, '2018-04-17 16:23:20', '2018-04-17 14:23:20', 'ONET TOUS VOISINS #2 <span class="_5mfr _47e3"><img class="img" role="presentation" src="https://static.xx.fbcdn.net/images/emoji.php/v9/fd/1/16/1f468_200d_1f467_200d_1f466.png" alt="" width="16" height="16" /><span class="_7oe">👨‍👧‍👦</span></span>\r\n\r\nTous les vendredis du mois de mai, 4 rendez-vous hors-les-murs avec des repas partagés, un mur de petites annonces, des animations <span class="text_exposed_show">musicales, des échanges de services entre voisins, du troc d’objets, un crieur public et bien plus encore... !</span>\r\n<div class="text_exposed_show">\r\n\r\n<span class="_5mfr _47e3"><img class="img" role="presentation" src="https://static.xx.fbcdn.net/images/emoji.php/v9/fac/1/16/1f4cc.png" alt="" width="16" height="16" /><span class="_7oe">📌</span></span> Tout le programme détaillé à venir sur <a href="https://l.facebook.com/l.php?u=http%3A%2F%2Fwww.lekrill.com%2F&amp;h=ATM0BnoEwohM4bh9ezBkB4QIK7aT3XH1JXsE-ZjBVKC81wt7u3f3mVxZFwEYMHyD3wugAVQNWGvEyu_DNHDwN22riVQUN_eBZZS9T-_ApAcGJZoEq5M5XcYd3M58arCl" target="_blank" rel="noopener nofollow" data-ft="{&quot;tn&quot;:&quot;-U&quot;}" data-lynx-mode="asynclazy">www.lekrill.com</a> et sur les évènements facebook dédiés :\r\nVendredi 4 Mai : <a class="profileLink" href="https://www.facebook.com/events/1673665839339704/?acontext=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%7D&amp;source=3&amp;source_newsfeed_story_type=regular&amp;action_history=%5B%7B%22surface%22%3A%22newsfeed%22%2C%22mechanism%22%3A%22feed_story%22%2C%22extra_data%22%3A%5B%5D%7D%5D&amp;has_source=1&amp;fref=mentions" data-hovercard="/ajax/hovercard/event.php?id=1673665839339704&amp;extragetparams=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%2C%22fref%22%3A%22mentions%22%7D" data-hovercard-prefer-more-content-show="1">Onet Tous Voisins #02 - Espace vert @ Salle des Fêtes</a>\r\nVendredi 11 Mai : <a class="profileLink" href="https://www.facebook.com/events/1470996303023397/?acontext=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%7D&amp;source=3&amp;source_newsfeed_story_type=regular&amp;action_history=%5B%7B%22surface%22%3A%22newsfeed%22%2C%22mechanism%22%3A%22feed_story%22%2C%22extra_data%22%3A%5B%5D%7D%5D&amp;has_source=1&amp;fref=mentions" data-hovercard="/ajax/hovercard/event.php?id=1470996303023397&amp;extragetparams=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%2C%22fref%22%3A%22mentions%22%7D" data-hovercard-prefer-more-content-show="1">Onet Tous Voisins #02 @ Café Les Costes Rouges</a>\r\nVendredi 18 Mai : <a class="profileLink" href="https://www.facebook.com/events/260638387804398/?acontext=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%7D&amp;source=3&amp;source_newsfeed_story_type=regular&amp;action_history=%5B%7B%22surface%22%3A%22newsfeed%22%2C%22mechanism%22%3A%22feed_story%22%2C%22extra_data%22%3A%5B%5D%7D%5D&amp;has_source=1&amp;fref=mentions" data-hovercard="/ajax/hovercard/event.php?id=260638387804398&amp;extragetparams=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%2C%22fref%22%3A%22mentions%22%7D" data-hovercard-prefer-more-content-show="1">Onet Tous Voisins #02 - @ Parc Stegaurach MJC FJT</a>\r\nVendredi 25 Mai : <a class="profileLink" href="https://www.facebook.com/events/157610181554979/?acontext=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%7D&amp;source=3&amp;source_newsfeed_story_type=regular&amp;action_history=%5B%7B%22surface%22%3A%22newsfeed%22%2C%22mechanism%22%3A%22feed_story%22%2C%22extra_data%22%3A%5B%5D%7D%5D&amp;has_source=1&amp;fref=mentions" data-hovercard="/ajax/hovercard/event.php?id=157610181554979&amp;extragetparams=%7B%22source%22%3A3%2C%22source_newsfeed_story_type%22%3A%22regular%22%2C%22action_history%22%3A%22%5B%7B%5C%22surface%5C%22%3A%5C%22newsfeed%5C%22%2C%5C%22mechanism%5C%22%3A%5C%22feed_story%5C%22%2C%5C%22extra_data%5C%22%3A%5B%5D%7D%5D%22%2C%22has_source%22%3Atrue%2C%22fref%22%3A%22mentions%22%7D" data-hovercard-prefer-more-content-show="1">Grande fête des voisins - Place des Artistes @  LeKrill12</a>\r\n\r\n</div>', 'Onet tous voisins #2', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-17 16:23:20', '2018-04-17 14:23:20', '', 16, 'http://localhost:8888/?p=17', 0, 'revision', '', 0),
(18, 1, '2018-04-17 16:59:30', '2018-04-17 14:59:30', '<h3>Lutte contre les discriminations autour d\'un café</h3>\r\nCe premier débat, organisé au sein du café associatif des Costes-Rouges, faisait suite à la semaine d\'actions «pour dire non au racisme». Il a été riche d\'échanges et de partage d\'idées, dans le respect et la convivialité. Il est sans aucun doute le premier d\'une longue série, à en croire le sentiment partagé des organisateurs et participants, à l\'heure de la restitution des deux ateliers qui s\'étaient constitués.\r\n<div id="pub_dfp_article" class="pub " data-google-query-id="CPK3kuTIwdoCFa0S0wodf5gF_A">\r\n<div id="google_ads_iframe_/31755961/ldi_ladepeche.fr/grand-sud/aveyron/article/article_0__container__">Un constat unanime a été effectué dans les deux groupes sur le fait que les discriminations sont partout, peuvent prendre des formes multiples et peuvent toucher tout le monde. Un réel problème d\'une société trop individualiste, qui renvoie souvent des images négatives, au lieu de ne voir que l\'individu et de favoriser le droit à la différence et à la tolérance qui ne peuvent que nous enrichir.</div>\r\n</div>', 'Lutte contre les discriminations', 'Ce premier débat, organisé au sein du café associatif des Costes-Rouges, faisait suite à la semaine d\'actions «pour dire non au racisme». Il a été riche d\'échanges et de partage d\'idées, dans le respect et la convivialité.', 'publish', 'open', 'open', '', 'lutte-contre-les-discriminations', '', '', '2018-04-17 16:59:30', '2018-04-17 14:59:30', '', 0, 'http://localhost:8888/?p=18', 0, 'post', '', 0),
(19, 1, '2018-04-17 16:59:30', '2018-04-17 14:59:30', '<h3>Lutte contre les discriminations autour d\'un café</h3>\r\nCe premier débat, organisé au sein du café associatif des Costes-Rouges, faisait suite à la semaine d\'actions «pour dire non au racisme». Il a été riche d\'échanges et de partage d\'idées, dans le respect et la convivialité. Il est sans aucun doute le premier d\'une longue série, à en croire le sentiment partagé des organisateurs et participants, à l\'heure de la restitution des deux ateliers qui s\'étaient constitués.\r\n<div id="pub_dfp_article" class="pub " data-google-query-id="CPK3kuTIwdoCFa0S0wodf5gF_A">\r\n<div id="google_ads_iframe_/31755961/ldi_ladepeche.fr/grand-sud/aveyron/article/article_0__container__">Un constat unanime a été effectué dans les deux groupes sur le fait que les discriminations sont partout, peuvent prendre des formes multiples et peuvent toucher tout le monde. Un réel problème d\'une société trop individualiste, qui renvoie souvent des images négatives, au lieu de ne voir que l\'individu et de favoriser le droit à la différence et à la tolérance qui ne peuvent que nous enrichir.</div>\r\n</div>', 'Lutte contre les discriminations', 'Ce premier débat, organisé au sein du café associatif des Costes-Rouges, faisait suite à la semaine d\'actions «pour dire non au racisme». Il a été riche d\'échanges et de partage d\'idées, dans le respect et la convivialité.', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-04-17 16:59:30', '2018-04-17 14:59:30', '', 18, 'http://localhost:8888/?p=19', 0, 'revision', '', 0),
(20, 1, '2018-04-18 09:45:28', '2018-04-18 07:45:28', '', 'plan', '', 'inherit', 'open', 'closed', '', 'plan', '', '', '2018-04-18 09:46:22', '2018-04-18 07:46:22', '', 2, 'http://localhost:8888/wp-content/uploads/2018/04/plan.jpeg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-04-18 09:46:50', '2018-04-18 07:46:50', '<img class="alignnone size-full wp-image-20" src="http://localhost:8888/wp-content/uploads/2018/04/plan.jpeg" alt="" width="955" height="482" />\n\nVoici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n...ou bien quelque chose comme cela :\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://localhost:8888/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-04-18 09:46:50', '2018-04-18 07:46:50', '', 2, 'http://localhost:8888/?p=21', 0, 'revision', '', 0);
(24, 2, '2018-04-16 14:55:20', '2018-04-16 12:55:20', '[contact-form-7 id="22" title="Contact form 1"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-16 14:55:20', '2018-04-16 12:55:20', '', 12, 'http://localhost:8888/?p=24', 0, 'revision', '', 0),
(26, 2, '2018-04-16 15:13:06', '2018-04-16 13:13:06', '[contact-form-7 id="31" title="Contact form 1"]', 'Contact FIC', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-04-17 20:51:32', '2018-04-17 18:51:32', '', 0, 'http://localhost:8888/?page_id=26', 0, 'page', '', 0),
(27, 2, '2018-04-16 15:12:18', '2018-04-16 13:12:18', '[contact-form-7 id="22" title="Contact form 1"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-16 15:12:18', '2018-04-16 13:12:18', '', 26, 'http://localhost:8888/index.php/26-revision-v1/', 0, 'revision', '', 0),
(28, 2, '2018-04-16 15:13:07', '2018-04-16 13:13:07', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-04-17 09:14:50', '2018-04-17 07:14:50', '', 0, 'http://localhost:8888/index.php/28/', 4, 'nav_menu_item', '', 0),
(30, 2, '2018-04-16 15:17:33', '2018-04-16 13:17:33', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-16 15:17:33', '2018-04-16 13:17:33', '', 26, 'http://localhost:8888/index.php/26-revision-v1/', 0, 'revision', '', 0),
(31, 2, '2018-04-16 15:18:15', '2018-04-16 13:18:15', '<h3>Pour nous contacter, merci de bien vouloir remplir ce formulaire</h3>\r\n<label> Nom (obligatoire)\r\n    [text* your-name] </label>\r\n\r\n<label> Email (obligatoire)\r\n    [email* your-email] </label>\r\n\r\n<label> Object\r\n    [text your-subject] </label>\r\n\r\n<label> Message\r\n    [textarea your-message] </label>\r\n\r\n[submit "Envoyer"]\n1\nFabrique Initiatives Citoyennes "[your-subject]"\n[your-name] <dekorte.tsrit@gmail.com>\ndekorte.tsrit@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Fabrique Initiatives Citoyennes (http://localhost:8888)\nReply-To: [your-email]\n\n\n\n\nFabrique Initiatives Citoyennes "[your-subject]"\nFabrique Initiatives Citoyennes <dekorte.tsrit@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Fabrique Initiatives Citoyennes (http://localhost:8888)\nReply-To: dekorte.tsrit@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-04-17 20:48:10', '2018-04-17 18:48:10', '', 0, 'http://localhost:8888/?post_type=wpcf7_contact_form&#038;p=31', 0, 'wpcf7_contact_form', '', 0),
(32, 2, '2018-04-17 20:38:31', '2018-04-17 18:38:31', '[contact-form-7 id="31" title="Contact form 1"]', 'Contact Fabrique Initiatives Citoyennes', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2018-04-17 20:38:31', '2018-04-17 18:38:31', '', 26, 'http://localhost:8888/index.php/26-autosave-v1/', 0, 'revision', '', 0),
(33, 2, '2018-04-16 15:23:35', '2018-04-16 13:23:35', '[contact-form-7 id="31" title="Contact form 1"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-16 15:23:35', '2018-04-16 13:23:35', '', 26, 'http://localhost:8888/index.php/26-revision-v1/', 0, 'revision', '', 0),
(35, 2, '2018-04-17 09:24:12', '2018-04-17 07:24:12', '', 'Proposez une initiative', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-17 09:24:12', '2018-04-17 07:24:12', '', 16, 'http://localhost:8888/index.php/16-revision-v1/', 0, 'revision', '', 0),
(36, 2, '2018-04-17 10:36:27', '2018-04-17 08:36:27', '[contact-form-7 id="31" title="Contact form 1"]', 'Proposez une initiative', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-17 10:36:27', '2018-04-17 08:36:27', '', 16, 'http://localhost:8888/index.php/16-revision-v1/', 0, 'revision', '', 0),
(37, 2, '2018-04-17 10:40:06', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-17 10:40:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=37', 0, 'page', '', 0),
(38, 2, '2018-04-17 10:55:30', '2018-04-17 08:55:30', 'Merci de remplir ce formulaire pour nous soumettre votre idée d\'initiative:\r\n\r\n[contact-form-7 id="31" title="Contact form 1"]', 'Proposez une initiative', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-17 10:55:30', '2018-04-17 08:55:30', '', 16, 'http://localhost:8888/index.php/16-revision-v1/', 0, 'revision', '', 0),
(39, 2, '2018-04-17 10:56:33', '2018-04-17 08:56:33', '[contact-form-7 id="31" title="Contact form 1"]', 'Proposez une initiative', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-17 10:56:33', '2018-04-17 08:56:33', '', 16, 'http://localhost:8888/index.php/16-revision-v1/', 0, 'revision', '', 0),
(40, 2, '2018-04-17 11:11:48', '2018-04-17 09:11:48', '<h3>Merci de remplir ce formulaire pour nous soumettre votre initiative citoyenne</h3>\r\n\r\n<label> Nom (obligatoire)\r\n    [text* your-name] </label>\r\n\r\n<label> Adresse de messagerie (obligatoire)\r\n    [email* your-email] </label>\r\n\r\n<label> Téléphone\r\n[tel tel-643]</label>\r\n\r\n<label>Choisissez une catégorie:\r\n[select menu-299 "intergénérationnel" "numérique"\r\n"culture"\r\n"social"\r\n"environnement"\r\n"vie de la cité"]</label>\r\n\r\n<label> Lieu envisagé\r\n[text text-68]</label>\r\n\r\n<label> Date de début envisagée\r\n[date date-262]</label>\r\n\r\n<label> Date de fin envisagée\r\n[date date-262]</label>\r\n\r\n<label> Les besoins, les moyens\r\n[textarea textarea-414 placeholder "Besoins que vous avez identifié où moyens dont vous disposez"]</label>\r\n\r\n<label> Votre message (obligatoire)\r\n    [textarea* your-message placeholder "Descriptif de votre initiative"] </label>\r\n\r\n[submit "Soumettre"]\n1\nFabrique Initiatives Citoyennes "[your-subject]"\n[your-name] <dekorte.tsrit@gmail.com>\ndekorte.tsrit@gmail.com\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de Fabrique Initiatives Citoyennes (http://localhost:8888)\nReply-To: [your-email]\n\n\n\n\nFabrique Initiatives Citoyennes "[your-subject]"\nFabrique Initiatives Citoyennes <dekorte.tsrit@gmail.com>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de Fabrique Initiatives Citoyennes (http://localhost:8888)\nReply-To: dekorte.tsrit@gmail.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'formulaire initiatives', '', 'publish', 'closed', 'closed', '', 'formulaire-initiatives', '', '', '2018-04-17 20:49:06', '2018-04-17 18:49:06', '', 0, 'http://localhost:8888/?post_type=wpcf7_contact_form&#038;p=40', 0, 'wpcf7_contact_form', '', 0),
(41, 2, '2018-04-17 11:17:42', '2018-04-17 09:17:42', '[contact-form-7 id="40" title="formulaire initiatives"]', 'Proposez une initiative', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-17 11:17:42', '2018-04-17 09:17:42', '', 16, 'http://localhost:8888/index.php/16-revision-v1/', 0, 'revision', '', 0),
(43, 2, '2018-04-17 12:50:18', '2018-04-17 10:50:18', '\r\n\r\n', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-17 12:50:18', '2018-04-17 10:50:18', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0),
(44, 2, '2018-04-17 12:54:04', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-17 12:54:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=wplp-news-widget&p=44', 0, 'wplp-news-widget', '', 0),
(45, 2, '2018-04-17 12:57:43', '2018-04-17 10:57:43', '', 'Photos', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-04-17 14:28:43', '2018-04-17 12:28:43', '', 0, 'http://localhost:8888/?post_type=wplp-news-widget&#038;p=45', 0, 'wplp-news-widget', '', 0),
(46, 2, '2018-04-17 12:57:51', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-17 12:57:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=wplp-news-widget&p=46', 0, 'wplp-news-widget', '', 0),
(47, 2, '2018-04-17 12:59:33', '2018-04-17 10:59:33', 'echo do_shortcode(\'[frontpage_news widget="45" name="Photos"]\');\r\n', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-17 12:59:33', '2018-04-17 10:59:33', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0),
(48, 2, '2018-04-17 13:00:27', '2018-04-17 11:00:27', '[frontpage_news widget="45" name="Photos"]\r\n', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-17 13:00:27', '2018-04-17 11:00:27', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0),
(50, 2, '2018-04-17 14:30:41', '2018-04-17 12:30:41', '', 'drapeau', '', 'inherit', 'open', 'closed', '', 'drapeau-2', '', '', '2018-04-17 14:30:41', '2018-04-17 12:30:41', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/drapeau-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(51, 2, '2018-04-17 14:39:16', '2018-04-17 12:39:16', '', 'img_7', '', 'inherit', 'open', 'closed', '', 'img_7', '', '', '2018-04-17 14:39:16', '2018-04-17 12:39:16', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/img_7.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 2, '2018-04-17 14:39:17', '2018-04-17 12:39:17', '', 'img_6', '', 'inherit', 'open', 'closed', '', 'img_6', '', '', '2018-04-17 14:39:17', '2018-04-17 12:39:17', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/img_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 2, '2018-04-17 14:39:18', '2018-04-17 12:39:18', '', 'img_5', '', 'inherit', 'open', 'closed', '', 'img_5', '', '', '2018-04-17 14:39:18', '2018-04-17 12:39:18', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/img_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 2, '2018-04-17 14:39:19', '2018-04-17 12:39:19', '', 'img_4', '', 'inherit', 'open', 'closed', '', 'img_4', '', '', '2018-04-17 14:39:19', '2018-04-17 12:39:19', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/img_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 2, '2018-04-17 14:39:19', '2018-04-17 12:39:19', '', 'img_3', '', 'inherit', 'open', 'closed', '', 'img_3', '', '', '2018-04-17 14:39:19', '2018-04-17 12:39:19', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/img_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 2, '2018-04-17 14:39:20', '2018-04-17 12:39:20', '', 'img_2', '', 'inherit', 'open', 'closed', '', 'img_2', '', '', '2018-04-17 14:39:20', '2018-04-17 12:39:20', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/img_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 2, '2018-04-17 14:39:21', '2018-04-17 12:39:21', '', 'img_1', '', 'inherit', 'open', 'closed', '', 'img_1', '', '', '2018-04-17 14:39:21', '2018-04-17 12:39:21', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/img_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 2, '2018-04-17 14:45:25', '2018-04-17 12:45:25', '', 'slider_photo', '', 'publish', 'closed', 'closed', '', 'sample-slider', '', '', '2018-04-18 10:31:08', '2018-04-18 08:31:08', '', 0, 'http://localhost:8888/index.php/sample-slider/', 0, 'sa_slider', '', 0),
(59, 2, '2018-04-17 14:56:39', '2018-04-17 12:56:39', '[frontpage_news widget="45" name="Photos"]\r\n<h2 style="text-align: center;">La Fabrique d\'Initiatives Citoyennes</h2>\r\n&nbsp;\r\n<div class="colDroite">\r\n<h3>La MJC devient Fabrique d\'Initiatives Citoyennes</h3>\r\nJuin 2016, la MJC d\'Onet-le-château, suite au dépôt de son projet, est labellisée Fabrique d\'Initiatives Citoyennes (FIC) pour le département de l\'Aveyron.\r\n\r\nAujourd\'hui, il existe 50 FIC en France et nous en faisons partie. Le ministère de la Jeunesse, des Sports et de la Vie Associative nous a reconnu en tant qu\'acteur d\'éducation populaire.\r\n<h3>Un projet et 6 vecteurs d\'actions</h3>\r\nLe projet FIC consiste à développer les partenariats ainsi que les actions favorisant les initiatives citoyennes. L\'objectif est de construire ensemble des espaces propice à l\'expression et l\'action des citoyens.\r\n\r\nLa MJC a appuyé son projet sur 6 vecteurs d\'actions:\r\n<ol>\r\n   <li>Encourager l\'engagement bénévole et favoriser l\'accès à la vie associative</li>\r\n   <li>Développer des actions de sensibilisation, de prévention et de formation autour de thématiques sociales</li>\r\n  <li>Accompagner et valoriser la pratique artistique amateur</li>\r\n  <li>Développer l\'animation locale et culturelle des quartiers</li>\r\n   <li>Permettre l\'orientation et l\'information des jeunes</li>\r\n  <li>Développer l\'outil numérique au service de l\'innovation sociale</li>\r\n</ol>\r\n</div>', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-17 14:56:39', '2018-04-17 12:56:39', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0),
(60, 2, '2018-04-17 15:05:56', '2018-04-17 13:05:56', '[slide-anything id="58"]\r\n[frontpage_news widget="45" name="Photos"]\r\n<h2 style="text-align: center;">La Fabrique d\'Initiatives Citoyennes</h2>\r\n&nbsp;\r\n<div class="colDroite">\r\n<h3>La MJC devient Fabrique d\'Initiatives Citoyennes</h3>\r\nJuin 2016, la MJC d\'Onet-le-château, suite au dépôt de son projet, est labellisée Fabrique d\'Initiatives Citoyennes (FIC) pour le département de l\'Aveyron.\r\n\r\nAujourd\'hui, il existe 50 FIC en France et nous en faisons partie. Le ministère de la Jeunesse, des Sports et de la Vie Associative nous a reconnu en tant qu\'acteur d\'éducation populaire.\r\n<h3>Un projet et 6 vecteurs d\'actions</h3>\r\nLe projet FIC consiste à développer les partenariats ainsi que les actions favorisant les initiatives citoyennes. L\'objectif est de construire ensemble des espaces propice à l\'expression et l\'action des citoyens.\r\n\r\nLa MJC a appuyé son projet sur 6 vecteurs d\'actions:\r\n<ol>\r\n   <li>Encourager l\'engagement bénévole et favoriser l\'accès à la vie associative</li>\r\n   <li>Développer des actions de sensibilisation, de prévention et de formation autour de thématiques sociales</li>\r\n  <li>Accompagner et valoriser la pratique artistique amateur</li>\r\n  <li>Développer l\'animation locale et culturelle des quartiers</li>\r\n   <li>Permettre l\'orientation et l\'information des jeunes</li>\r\n  <li>Développer l\'outil numérique au service de l\'innovation sociale</li>\r\n</ol>\r\n</div>', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-17 15:05:56', '2018-04-17 13:05:56', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0),
(61, 2, '2018-04-17 15:16:28', '2018-04-17 13:16:28', '', 'img_9', '', 'inherit', 'open', 'closed', '', 'img_9', '', '', '2018-04-17 15:16:28', '2018-04-17 13:16:28', '', 58, 'http://localhost:8888/wp-content/uploads/2018/04/img_9.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 2, '2018-04-17 15:22:34', '2018-04-17 13:22:34', '\r\n<h2 style="text-align: center;">La Fabrique d\'Initiatives Citoyennes</h2>\r\n&nbsp;\r\n<div class="colDroite">\r\n<h3>La MJC devient Fabrique d\'Initiatives Citoyennes</h3>\r\nJuin 2016, la MJC d\'Onet-le-château, suite au dépôt de son projet, est labellisée Fabrique d\'Initiatives Citoyennes (FIC) pour le département de l\'Aveyron.\r\n\r\nAujourd\'hui, il existe 50 FIC en France et nous en faisons partie. Le ministère de la Jeunesse, des Sports et de la Vie Associative nous a reconnu en tant qu\'acteur d\'éducation populaire.\r\n<h3>Un projet et 6 vecteurs d\'actions</h3>\r\nLe projet FIC consiste à développer les partenariats ainsi que les actions favorisant les initiatives citoyennes. L\'objectif est de construire ensemble des espaces propice à l\'expression et l\'action des citoyens.\r\n\r\nLa MJC a appuyé son projet sur 6 vecteurs d\'actions:\r\n<ol>\r\n   <li>Encourager l\'engagement bénévole et favoriser l\'accès à la vie associative</li>\r\n   <li>Développer des actions de sensibilisation, de prévention et de formation autour de thématiques sociales</li>\r\n  <li>Accompagner et valoriser la pratique artistique amateur</li>\r\n  <li>Développer l\'animation locale et culturelle des quartiers</li>\r\n   <li>Permettre l\'orientation et l\'information des jeunes</li>\r\n  <li>Développer l\'outil numérique au service de l\'innovation sociale</li>\r\n</ol>\r\n</div>\r\n\r\n[slide-anything id="58"]\r\n[frontpage_news widget="45" name="Photos"]', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-17 15:22:34', '2018-04-17 13:22:34', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0),
(63, 2, '2018-04-17 15:23:58', '2018-04-17 13:23:58', '[slide-anything id="58"]\r\n<h2 style="text-align: center;">La Fabrique d\'Initiatives Citoyennes</h2>\r\n&nbsp;\r\n<div class="colDroite">\r\n<h3>La MJC devient Fabrique d\'Initiatives Citoyennes</h3>\r\nJuin 2016, la MJC d\'Onet-le-château, suite au dépôt de son projet, est labellisée Fabrique d\'Initiatives Citoyennes (FIC) pour le département de l\'Aveyron.\r\n\r\nAujourd\'hui, il existe 50 FIC en France et nous en faisons partie. Le ministère de la Jeunesse, des Sports et de la Vie Associative nous a reconnu en tant qu\'acteur d\'éducation populaire.\r\n<h3>Un projet et 6 vecteurs d\'actions</h3>\r\nLe projet FIC consiste à développer les partenariats ainsi que les actions favorisant les initiatives citoyennes. L\'objectif est de construire ensemble des espaces propice à l\'expression et l\'action des citoyens.\r\n\r\nLa MJC a appuyé son projet sur 6 vecteurs d\'actions:\r\n<ol>\r\n   <li>Encourager l\'engagement bénévole et favoriser l\'accès à la vie associative</li>\r\n   <li>Développer des actions de sensibilisation, de prévention et de formation autour de thématiques sociales</li>\r\n  <li>Accompagner et valoriser la pratique artistique amateur</li>\r\n  <li>Développer l\'animation locale et culturelle des quartiers</li>\r\n   <li>Permettre l\'orientation et l\'information des jeunes</li>\r\n  <li>Développer l\'outil numérique au service de l\'innovation sociale</li>\r\n</ol>\r\n</div>\r\n\r\n\r\n', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-17 15:23:58', '2018-04-17 13:23:58', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0),
(64, 2, '2018-04-17 20:27:38', '2018-04-17 18:27:38', '', 'charte FIC', '', 'inherit', 'open', 'closed', '', 'charte-fic', '', '', '2018-04-17 20:29:07', '2018-04-17 18:29:07', '', 2, 'http://localhost:8888/wp-content/uploads/2018/04/charte-FIC.pdf', 0, 'attachment', 'application/pdf', 0),
(65, 2, '2018-04-18 10:12:55', '2018-04-18 08:12:55', '[slide-anything id="58"]\n<h2 style="text-align: center;">Le projet Fabrique d\'Initiatives Citoyennes</h2>\n&nbsp;\n<div class="colDroite">\n<h3>La MJC devient Fabrique d\'Initiatives Citoyennes</h3>\nJuin 2016, la MJC d\'Onet-le-château, suite au dépôt de son projet, est labellisée Fabrique d\'Initiatives Citoyennes (FIC) pour le département de l\'Aveyron.\n\nAujourd\'hui, il existe 50 FIC en France et nous en faisons partie. Le ministère de la Jeunesse, des Sports et de la Vie Associative nous a reconnu en tant qu\'acteur d\'éducation populaire.\n<h3>Un projet et 6 vecteurs d\'actions</h3>\nLe projet FIC consiste à développer les partenariats ainsi que les actions favorisant les initiatives citoyennes. L\'objectif est de construire ensemble des espaces propice à l\'expression et l\'action des citoyens.\n\nLa MJC a appuyé son projet sur 6 vecteurs d\'actions:\n<ol>\n  <li>Encourager l\'engagement bénévole et favoriser l\'accès à la vie associative</li>\n   <li>Développer des actions de sensibilisation, de prévention et de formation autour de thématiques sociales</li>\n  <li>Accompagner et valoriser la pratique artistique amateur</li>\n  <li>Développer l\'animation locale et culturelle des quartiers</li>\n   <li>Permettre l\'orientation et l\'information des jeunes</li>\n  <li>Développer l\'outil numérique au service de l\'innovation sociale</li>\n</ol>\n</div>\nPour plus d\'information, cliquez ici <a href="http://localhost:8888/wp-content/uploads/2018/04/charte-FIC.pdf">charte FIC</a>\n\n<h2 style="text-align: center;">Les pa</h2>', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-04-18 10:12:55', '2018-04-18 08:12:55', '', 2, 'http://localhost:8888/index.php/2-autosave-v1/', 0, 'revision', '', 0),
(66, 2, '2018-04-17 20:32:14', '2018-04-17 18:32:14', '[slide-anything id="58"]\r\n<h2 style="text-align: center;">La Fabrique d\'Initiatives Citoyennes</h2>\r\n&nbsp;\r\n<div class="colDroite">\r\n<h3>La MJC devient Fabrique d\'Initiatives Citoyennes</h3>\r\nJuin 2016, la MJC d\'Onet-le-château, suite au dépôt de son projet, est labellisée Fabrique d\'Initiatives Citoyennes (FIC) pour le département de l\'Aveyron.\r\n\r\nAujourd\'hui, il existe 50 FIC en France et nous en faisons partie. Le ministère de la Jeunesse, des Sports et de la Vie Associative nous a reconnu en tant qu\'acteur d\'éducation populaire.\r\n<h3>Un projet et 6 vecteurs d\'actions</h3>\r\nLe projet FIC consiste à développer les partenariats ainsi que les actions favorisant les initiatives citoyennes. L\'objectif est de construire ensemble des espaces propice à l\'expression et l\'action des citoyens.\r\n\r\nLa MJC a appuyé son projet sur 6 vecteurs d\'actions:\r\n<ol>\r\n   <li>Encourager l\'engagement bénévole et favoriser l\'accès à la vie associative</li>\r\n   <li>Développer des actions de sensibilisation, de prévention et de formation autour de thématiques sociales</li>\r\n  <li>Accompagner et valoriser la pratique artistique amateur</li>\r\n  <li>Développer l\'animation locale et culturelle des quartiers</li>\r\n   <li>Permettre l\'orientation et l\'information des jeunes</li>\r\n  <li>Développer l\'outil numérique au service de l\'innovation sociale</li>\r\n</ol>\r\n</div>\r\nPour plus d\'information, cliquez ici <a href="http://localhost:8888/wp-content/uploads/2018/04/charte-FIC.pdf">charte FIC</a>', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-17 20:32:14', '2018-04-17 18:32:14', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0),
(67, 2, '2018-04-17 20:38:57', '2018-04-17 18:38:57', '[contact-form-7 id="31" title="Contact form 1"]', 'Contact Fabrique Initiatives Citoyennes', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-17 20:38:57', '2018-04-17 18:38:57', '', 26, 'http://localhost:8888/index.php/26-revision-v1/', 0, 'revision', '', 0),
(69, 2, '2018-04-17 20:51:32', '2018-04-17 18:51:32', '[contact-form-7 id="31" title="Contact form 1"]', 'Contact FIC', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-17 20:51:32', '2018-04-17 18:51:32', '', 26, 'http://localhost:8888/index.php/26-revision-v1/', 0, 'revision', '', 0),
(70, 2, '2018-04-17 20:53:17', '2018-04-17 18:53:17', '[slide-anything id="58"]\r\n<h2 style="text-align: center;">Le projet Fabrique d\'Initiatives Citoyennes</h2>\r\n&nbsp;\r\n<div class="colDroite">\r\n<h3>La MJC devient Fabrique d\'Initiatives Citoyennes</h3>\r\nJuin 2016, la MJC d\'Onet-le-château, suite au dépôt de son projet, est labellisée Fabrique d\'Initiatives Citoyennes (FIC) pour le département de l\'Aveyron.\r\n\r\nAujourd\'hui, il existe 50 FIC en France et nous en faisons partie. Le ministère de la Jeunesse, des Sports et de la Vie Associative nous a reconnu en tant qu\'acteur d\'éducation populaire.\r\n<h3>Un projet et 6 vecteurs d\'actions</h3>\r\nLe projet FIC consiste à développer les partenariats ainsi que les actions favorisant les initiatives citoyennes. L\'objectif est de construire ensemble des espaces propice à l\'expression et l\'action des citoyens.\r\n\r\nLa MJC a appuyé son projet sur 6 vecteurs d\'actions:\r\n<ol>\r\n  <li>Encourager l\'engagement bénévole et favoriser l\'accès à la vie associative</li>\r\n   <li>Développer des actions de sensibilisation, de prévention et de formation autour de thématiques sociales</li>\r\n  <li>Accompagner et valoriser la pratique artistique amateur</li>\r\n  <li>Développer l\'animation locale et culturelle des quartiers</li>\r\n   <li>Permettre l\'orientation et l\'information des jeunes</li>\r\n  <li>Développer l\'outil numérique au service de l\'innovation sociale</li>\r\n</ol>\r\n</div>\r\nPour plus d\'information, cliquez ici <a href="http://localhost:8888/wp-content/uploads/2018/04/charte-FIC.pdf">charte FIC</a>', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-17 20:53:17', '2018-04-17 18:53:17', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0),
(71, 2, '2018-04-18 10:13:04', '2018-04-18 08:13:04', '[slide-anything id="58"]\r\n<h2 style="text-align: center;">Le projet Fabrique d\'Initiatives Citoyennes</h2>\r\n&nbsp;\r\n<div class="colDroite">\r\n<h3>La MJC devient Fabrique d\'Initiatives Citoyennes</h3>\r\nJuin 2016, la MJC d\'Onet-le-château, suite au dépôt de son projet, est labellisée Fabrique d\'Initiatives Citoyennes (FIC) pour le département de l\'Aveyron.\r\n\r\nAujourd\'hui, il existe 50 FIC en France et nous en faisons partie. Le ministère de la Jeunesse, des Sports et de la Vie Associative nous a reconnu en tant qu\'acteur d\'éducation populaire.\r\n<h3>Un projet et 6 vecteurs d\'actions</h3>\r\nLe projet FIC consiste à développer les partenariats ainsi que les actions favorisant les initiatives citoyennes. L\'objectif est de construire ensemble des espaces propice à l\'expression et l\'action des citoyens.\r\n\r\nLa MJC a appuyé son projet sur 6 vecteurs d\'actions:\r\n<ol>\r\n  <li>Encourager l\'engagement bénévole et favoriser l\'accès à la vie associative</li>\r\n   <li>Développer des actions de sensibilisation, de prévention et de formation autour de thématiques sociales</li>\r\n  <li>Accompagner et valoriser la pratique artistique amateur</li>\r\n  <li>Développer l\'animation locale et culturelle des quartiers</li>\r\n   <li>Permettre l\'orientation et l\'information des jeunes</li>\r\n  <li>Développer l\'outil numérique au service de l\'innovation sociale</li>\r\n</ol>\r\n</div>\r\nPour plus d\'information, cliquez ici <a href="http://localhost:8888/wp-content/uploads/2018/04/charte-FIC.pdf">charte FIC</a>\r\n\r\n<h2 style="text-align: center;">Les partenaires</h2>', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-18 10:13:04', '2018-04-18 08:13:04', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0),
(72, 2, '2018-04-18 10:15:35', '2018-04-18 08:15:35', '', 'slide_partenaires', '', 'publish', 'closed', 'closed', '', 'slide_partenaires', '', '', '2018-04-18 10:32:09', '2018-04-18 08:32:09', '', 0, 'http://localhost:8888/?post_type=sa_slider&#038;p=72', 0, 'sa_slider', '', 0),
(73, 2, '2018-04-18 10:14:03', '2018-04-18 08:14:03', '', 'logoRodezAgglo', '', 'inherit', 'open', 'closed', '', 'logorodezagglo', '', '', '2018-04-18 10:14:03', '2018-04-18 08:14:03', '', 72, 'http://localhost:8888/wp-content/uploads/2018/04/logoRodezAgglo.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 2, '2018-04-18 10:14:03', '2018-04-18 08:14:03', '', '2018-Education', '', 'inherit', 'open', 'closed', '', '2018-education', '', '', '2018-04-18 10:14:03', '2018-04-18 08:14:03', '', 72, 'http://localhost:8888/wp-content/uploads/2018/04/2018-Education.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 2, '2018-04-18 10:14:03', '2018-04-18 08:14:03', '', 'logo_pour_mail_seul[1]', '', 'inherit', 'open', 'closed', '', 'logo_pour_mail_seul1', '', '', '2018-04-18 10:14:03', '2018-04-18 08:14:03', '', 72, 'http://localhost:8888/wp-content/uploads/2018/04/logo_pour_mail_seul1.gif', 0, 'attachment', 'image/gif', 0),
(76, 2, '2018-04-18 10:14:04', '2018-04-18 08:14:04', '', 'Onet_le_Chateau', '', 'inherit', 'open', 'closed', '', 'onet_le_chateau', '', '', '2018-04-18 10:14:04', '2018-04-18 08:14:04', '', 72, 'http://localhost:8888/wp-content/uploads/2018/04/Onet_le_Chateau-.png', 0, 'attachment', 'image/png', 0),
(77, 2, '2018-04-18 10:14:05', '2018-04-18 08:14:05', '', 'CGET', '', 'inherit', 'open', 'closed', '', 'cget', '', '', '2018-04-18 10:14:05', '2018-04-18 08:14:05', '', 72, 'http://localhost:8888/wp-content/uploads/2018/04/CGET.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 2, '2018-04-18 10:14:05', '2018-04-18 08:14:05', '', 'logo MJC onet _noir', '', 'inherit', 'open', 'closed', '', 'logo-mjc-onet-_noir', '', '', '2018-04-18 10:14:05', '2018-04-18 08:14:05', '', 72, 'http://localhost:8888/wp-content/uploads/2018/04/logo-MJC-onet-_noir.png', 0, 'attachment', 'image/png', 0),
(79, 2, '2018-04-18 10:18:03', '2018-04-18 08:18:03', '[slide-anything id="58"]\r\n<h2 style="text-align: center;">Le projet Fabrique d\'Initiatives Citoyennes</h2>\r\n&nbsp;\r\n<div class="colDroite">\r\n<h3>La MJC devient Fabrique d\'Initiatives Citoyennes</h3>\r\nJuin 2016, la MJC d\'Onet-le-château, suite au dépôt de son projet, est labellisée Fabrique d\'Initiatives Citoyennes (FIC) pour le département de l\'Aveyron.\r\n\r\nAujourd\'hui, il existe 50 FIC en France et nous en faisons partie. Le ministère de la Jeunesse, des Sports et de la Vie Associative nous a reconnu en tant qu\'acteur d\'éducation populaire.\r\n<h3>Un projet et 6 vecteurs d\'actions</h3>\r\nLe projet FIC consiste à développer les partenariats ainsi que les actions favorisant les initiatives citoyennes. L\'objectif est de construire ensemble des espaces propice à l\'expression et l\'action des citoyens.\r\n\r\nLa MJC a appuyé son projet sur 6 vecteurs d\'actions:\r\n<ol>\r\n  <li>Encourager l\'engagement bénévole et favoriser l\'accès à la vie associative</li>\r\n   <li>Développer des actions de sensibilisation, de prévention et de formation autour de thématiques sociales</li>\r\n  <li>Accompagner et valoriser la pratique artistique amateur</li>\r\n  <li>Développer l\'animation locale et culturelle des quartiers</li>\r\n   <li>Permettre l\'orientation et l\'information des jeunes</li>\r\n  <li>Développer l\'outil numérique au service de l\'innovation sociale</li>\r\n</ol>\r\n</div>\r\nPour plus d\'information, cliquez ici <a href="http://localhost:8888/wp-content/uploads/2018/04/charte-FIC.pdf">charte FIC</a>\r\n\r\n<h2 style="text-align: center;">Les partenaires</h2>\r\n[slide-anything id="72"]', 'Le projet Fabrique', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-18 10:18:03', '2018-04-18 08:18:03', '', 2, 'http://localhost:8888/index.php/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_termmeta`
--

CREATE TABLE `ficmjc12_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_terms`
--

CREATE TABLE `ficmjc12_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ficmjc12_terms`
--

INSERT INTO `ficmjc12_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);
(2, 'Menu principal', 'menu-principal', 0);
-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_term_relationships`
--

CREATE TABLE `ficmjc12_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ficmjc12_term_relationships`
--

INSERT INTO `ficmjc12_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 1, 0),
(14, 1, 0),
(16, 1, 0),
(18, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_term_taxonomy`
--

CREATE TABLE `ficmjc12_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ficmjc12_term_taxonomy`
--

INSERT INTO `ficmjc12_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5);
(2, 2, 'nav_menu', '', 0, 4);
-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_usermeta`
--

CREATE TABLE `ficmjc12_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ficmjc12_usermeta`
--

INSERT INTO `ficmjc12_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', 'Ruud'),
(3, 1, 'last_name', 'De Korte'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', 'fr_FR'),
(12, 1, 'ficmjc12_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'ficmjc12_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"8731238211a53c4c2e36e26c46e324bf614904a968a5150115e655d8e65d2106";a:4:{s:10:"expiration";i:1524058584;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1523885784;}s:64:"602dbefb08f24c0df37f8a0d4c247f20c77110f5ad320f0e0b71c8416797d559";a:4:{s:10:"expiration";i:1524121244;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1523948444;}}'),
(17, 1, 'ficmjc12_user-settings', 'libraryContent=browse&imgsize=full&editor=html&hidetb=1&cats=pop&mfold=o&unfold=1'),
(18, 1, 'ficmjc12_user-settings-time', '1524039866'),
(19, 1, 'ficmjc12_dashboard_quick_press_last_post_id', '3'),
(20, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(21, 2, 'nickname', 'vanessa'),
(22, 2, 'first_name', 'Vanessa'),
(23, 2, 'last_name', 'Chaillou'),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'ficmjc12_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(33, 2, 'ficmjc12_user_level', '10'),
(34, 2, 'dismissed_wp_pointers', ''),
(35, 3, 'nickname', 'Ilham'),
(36, 3, 'first_name', 'Ilham'),
(37, 3, 'last_name', 'Parfait'),
(38, 3, 'description', ''),
(39, 3, 'rich_editing', 'true'),
(40, 3, 'syntax_highlighting', 'true'),
(41, 3, 'comment_shortcuts', 'false'),
(42, 3, 'admin_color', 'fresh'),
(43, 3, 'use_ssl', '0'),
(44, 3, 'show_admin_bar_front', 'true'),
(45, 3, 'locale', ''),
(46, 3, 'ficmjc12_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(47, 3, 'ficmjc12_user_level', '10'),
(48, 3, 'dismissed_wp_pointers', ''),
(49, 1, 'closedpostboxes_post', 'a:0:{}'),
(50, 1, 'metaboxhidden_post', 'a:6:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(51, 1, 'closedpostboxes_page', 'a:0:{}'),
(52, 1, 'metaboxhidden_page', 'a:6:{i:0;s:5:"acf_5";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');
(54, 2, 'nav_menu_recently_edited', '2'),
(55, 2, 'ficmjc12_user-settings', 'mfold=o&editor=html&advImgDetails=hide&libraryContent=browse'),
(56, 2, 'ficmjc12_user-settings-time', '1523990844'),
(57, 2, 'ficmjc12_yoast_notifications', 'a:4:{i:0;a:2:{s:7:"message";s:588:"<p>You\'re using WordPress in French (France). While Yoast SEO has been translated to French (France) for 100%, it\'s not been shipped with the plugin yet. You can help! Register at <a href="https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/">Translating WordPress</a> to help complete the translation to French (France)!</p><p><a href="https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/">Register now &raquo;</a></p><a class="button" href="/wp-admin/admin.php?page=wpseo_dashboard&#038;remove_i18n_promo=1">Please don\'t show me this notification anymore</a>";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:31:"i18nModuleTranslationAssistance";s:5:"nonce";s:10:"d21311e087";s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";a:1:{i:0;s:20:"wpseo_manage_options";}s:16:"capability_check";s:3:"all";}}i:1;a:2:{s:7:"message";s:529:"Yoast SEO and Advanced Custom Fields can work together a lot better by adding a helper plugin. Please install <a href="http://localhost:8888/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=81f3661a52">ACF Content Analysis for Yoast SEO</a> to make your life better. <a href="https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/" aria-label="More information about ACF Content Analysis for Yoast SEO" target="_blank" rel="noopener noreferrer">More information</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:41:"wpseo-suggested-plugin-yoast-acf-analysis";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";a:1:{i:0;s:15:"install_plugins";}s:16:"capability_check";s:3:"all";}}i:2;a:2:{s:7:"message";s:164:"Don\'t miss your crawl errors: <a href="http://localhost:8888/wp-admin/admin.php?page=wpseo_search_console&tab=settings">connect with Google Search Console here</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";}}i:3;a:2:{s:7:"message";s:269:"You still have the default WordPress tagline, even an empty one is probably better. <a href="http://localhost:8888/wp-admin/customize.php?url=http%3A%2F%2Flocalhost%2Fwp-admin%2Fpost.php%3Fpost%3D72%26action%3Dedit%26message%3D1">You can fix this in the customizer</a>.";s:7:"options";a:8:{s:4:"type";s:5:"error";s:2:"id";s:28:"wpseo-dismiss-tagline-notice";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";}}}'),

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_users`
--

CREATE TABLE `ficmjc12_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `ficmjc12_users`
--

INSERT INTO `ficmjc12_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$B9aOKjeBJLUaM9ONDBYkMEHrYws7cr.', 'root', 'dekorte.tsrit@gmail.com', '', '2018-04-13 09:37:50', '', 0, 'root'),
(2, 'vanessa', '$P$BSQbxlI1JTZAw/FzjhYT0JSM6qrLut1', 'vanessa', 'vanessa.chaillou@orange.fr', '', '2018-04-13 09:40:52', '1523612453:$P$BjFP4hoEKPIyx/zHiEgpzxy9q5UiZy.', 0, 'Vanessa Chaillou'),
(3, 'Ilham', '$P$BCVhnE6gaQ.Sp1FyqWbGobvztXJaWR.', 'ilham', 'hima1400@gmail.com', '', '2018-04-13 09:41:41', '1523612502:$P$B73Z3/ccUBB1y1jQgUqTkqJdgxUACq0', 0, 'Ilham Parfait');

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_yoast_seo_links`
--

CREATE TABLE `ficmjc12_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `ficmjc12_yoast_seo_links`
--

INSERT INTO `ficmjc12_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(22, 'http://localhost:8888/wp-content/uploads/2018/04/charte-FIC.pdf', 2, 0, 'internal');

-- --------------------------------------------------------

--
-- Structure de la table `ficmjc12_yoast_seo_meta`
--

CREATE TABLE `ficmjc12_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `ficmjc12_yoast_seo_meta`
--

INSERT INTO `ficmjc12_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(2, 1, 0),
(13, 0, 0),
(16, 0, 0),
(26, 0, 0),
(34, 0, 0),
(42, 0, 0),
(49, 0, 0),
(68, 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ficmjc12_commentmeta`
--
ALTER TABLE `ficmjc12_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ficmjc12_comments`
--
ALTER TABLE `ficmjc12_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `ficmjc12_links`
--
ALTER TABLE `ficmjc12_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `ficmjc12_options`
--
ALTER TABLE `ficmjc12_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `ficmjc12_postmeta`
--
ALTER TABLE `ficmjc12_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ficmjc12_posts`
--
ALTER TABLE `ficmjc12_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `ficmjc12_termmeta`
--
ALTER TABLE `ficmjc12_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ficmjc12_terms`
--
ALTER TABLE `ficmjc12_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `ficmjc12_term_relationships`
--
ALTER TABLE `ficmjc12_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `ficmjc12_term_taxonomy`
--
ALTER TABLE `ficmjc12_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `ficmjc12_usermeta`
--
ALTER TABLE `ficmjc12_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ficmjc12_users`
--
ALTER TABLE `ficmjc12_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);


--
-- Index pour la table `ficmjc12_yoast_seo_links`
--
ALTER TABLE `ficmjc12_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Index pour la table `ficmjc12_yoast_seo_meta`
--
ALTER TABLE `ficmjc12_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ficmjc12_commentmeta`
--
ALTER TABLE `ficmjc12_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ficmjc12_comments`
--
ALTER TABLE `ficmjc12_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ficmjc12_links`
--
ALTER TABLE `ficmjc12_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ficmjc12_options`
--
ALTER TABLE `ficmjc12_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT pour la table `ficmjc12_postmeta`
--
ALTER TABLE `ficmjc12_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT pour la table `ficmjc12_posts`
--
ALTER TABLE `ficmjc12_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `ficmjc12_termmeta`
--
ALTER TABLE `ficmjc12_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ficmjc12_terms`
--
ALTER TABLE `ficmjc12_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ficmjc12_term_taxonomy`
--
ALTER TABLE `ficmjc12_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `ficmjc12_usermeta`
--
ALTER TABLE `ficmjc12_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `ficmjc12_users`
--
ALTER TABLE `ficmjc12_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
