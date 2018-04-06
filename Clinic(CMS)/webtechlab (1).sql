-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 06, 2018 at 05:33 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtechlab`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-22 13:58:58', '2018-03-22 13:58:58', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Maryheights Campus Clinic', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'arvin.dagang09@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=25&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:23:\"ml-slider/ml-slider.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:69:\"C:\\wamp64\\www\\wordpress/wp-content/themes/college-education/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'twentysixteen', 'yes'),
(41, 'stylesheet', 'twentysixteen', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:159:\"<strong>Address\r\n</strong>Saint Louis University\r\nMaryheights Campus, Bakakeng\r\nBaguio City 2600\r\n\r\n<strong>Hours</strong>\r\nTuesday—Saturday: 8:00AM–5:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '25', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-5\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1523023139;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1523023160;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523024434;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521727678;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(363, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"arvin.dagang09@gmail.com\";s:7:\"version\";s:5:\"4.9.5\";s:9:\"timestamp\";i:1522992491;}', 'no'),
(357, '_site_transient_timeout_theme_roots', '1522994271', 'no'),
(358, '_site_transient_theme_roots', 'a:6:{s:5:\"agama\";s:7:\"/themes\";s:17:\"college-education\";s:7:\"/themes\";s:14:\"eightmedi-lite\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(139, 'theme_mods_agama', 'a:7:{s:19:\"agama_nav_top_color\";s:7:\"#fe6663\";s:25:\"agama_nav_top_hover_color\";s:4:\"#000\";s:23:\"agama_nav_primary_color\";s:7:\"#fe6663\";s:29:\"agama_nav_primary_hover_color\";s:4:\"#000\";s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521727874;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:15:\"footer-widget-3\";a:0:{}s:15:\"footer-widget-4\";a:0:{}}}}', 'yes'),
(140, '_agama_1291_migrated', '1', 'yes'),
(147, 'theme_mods_college-education', 'a:13:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521729596;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}s:9:\"preloader\";s:1:\"1\";s:9:\"menustyle\";s:1:\"1\";s:9:\"pagetitle\";s:1:\"1\";s:9:\"animation\";s:1:\"1\";s:12:\"header_image\";s:64:\"http://localhost/wordpress/wp-content/uploads/2018/03/clinic.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:24;s:3:\"url\";s:64:\"http://localhost/wordpress/wp-content/uploads/2018/03/clinic.jpg\";s:13:\"thumbnail_url\";s:64:\"http://localhost/wordpress/wp-content/uploads/2018/03/clinic.jpg\";s:6:\"height\";i:750;s:5:\"width\";i:1920;}s:27:\"CollegeEducationSocialIcon1\";s:0:\"\";s:31:\"CollegeEducationSocialIconLink1\";s:0:\"\";s:17:\"CopyrightAreaText\";s:27:\"○All rights reserved 2018\";s:16:\"theme_header_fix\";b:1;}', 'yes'),
(150, 'current_theme', 'Twenty Sixteen', 'yes'),
(151, 'theme_switched', '', 'yes'),
(165, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(166, 'siteorigin_panels_initial_version', '2.6.3', 'no'),
(167, 'siteorigin_panels_active_version', '2.6.3', 'yes'),
(168, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(169, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(170, 'widget_siteorigin-panels-builder', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'metaslider_tour_cancelled_on', 'step_view_shortcode', 'yes'),
(192, 'category_children', 'a:0:{}', 'yes'),
(305, 'ml-slider_children', 'a:0:{}', 'yes'),
(187, 'theme_mods_twentysixteen', 'a:12:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"social\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:74:\"http://localhost/wordpress/wp-content/uploads/2018/03/cropped-clinic-1.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:54;s:3:\"url\";s:74:\"http://localhost/wordpress/wp-content/uploads/2018/03/cropped-clinic-1.jpg\";s:13:\"thumbnail_url\";s:74:\"http://localhost/wordpress/wp-content/uploads/2018/03/cropped-clinic-1.jpg\";s:6:\"height\";i:280;s:5:\"width\";i:1200;}s:16:\"background_image\";s:81:\"http://localhost/wordpress/wp-content/uploads/2018/03/2015-10-09-11-32-281980.jpg\";s:17:\"background_preset\";s:4:\"fill\";s:15:\"background_size\";s:5:\"cover\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_position_y\";s:3:\"top\";}', 'yes'),
(198, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(199, 'ms_hide_all_ads_until', '1522939874', 'yes'),
(200, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(171, 'widget_sow-button', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(172, 'widget_sow-google-map', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'widget_sow-image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'widget_sow-slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_sow-post-carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'widget_sow-editor', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'siteorigin_widget_bundle_version', '1.11.6', 'yes'),
(178, 'siteorigin_widgets_old_widgets', 'C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/accordion/accordion.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/button/button.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/cta/cta.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/contact/contact.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/editor/editor.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/features/features.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/google-map/google-map.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/headline/headline.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/hero/hero.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/icon/icon.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/image/image.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/image-grid/image-grid.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/slider/slider.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/layout-slider/layout-slider.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/post-carousel/post-carousel.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/price-table/price-table.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/simple-masonry/simple-masonry.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/social-media-buttons/social-media-buttons.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/tabs/tabs.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/taxonomy/taxonomy.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/testimonial/testimonial.php,C:\\wamp64\\www\\wordpress\\wp-content\\plugins\\so-widgets-bundle/widgets/video/video.php', 'yes'),
(181, 'recently_activated', 'a:0:{}', 'yes'),
(183, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(322, '_site_transient_browser_efc56fe28520bcd166ef136f44025003', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(321, '_site_transient_timeout_browser_efc56fe28520bcd166ef136f44025003', '1523100863', 'no'),
(361, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1522992486;s:7:\"checked\";a:6:{s:5:\"agama\";s:5:\"1.3.2\";s:17:\"college-education\";s:5:\"1.0.7\";s:14:\"eightmedi-lite\";s:5:\"2.0.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:2:{s:5:\"agama\";a:4:{s:5:\"theme\";s:5:\"agama\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:35:\"https://wordpress.org/themes/agama/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/agama.1.3.3.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(362, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1522992492;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:9:\"hello.php\";s:3:\"1.6\";s:23:\"ml-slider/ml-slider.php\";s:5:\"3.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.7.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.7.2.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-128x128.png?rev=1837669\";s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:7:\"default\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";s:7:\"default\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(353, '_transient_is_multi_author', '0', 'yes'),
(354, 'ms_ads_first_seen_on', '1522992459', 'yes'),
(360, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1522992484;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(341, 122, 'ml-slider_inherit_image_title', '1'),
(342, 122, 'ml-slider_inherit_image_alt', '1'),
(343, 107, '_wp_attachment_backup_sizes', 'a:1:{s:17:\"resized-1000x1500\";a:5:{s:4:\"path\";s:94:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/14728ce21cae8c9a5a59a53ce41cabf0-1000x1500.jpg\";s:4:\"file\";s:46:\"14728ce21cae8c9a5a59a53ce41cabf0-1000x1500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(344, 122, 'ml-slider_crop_position', 'center-center'),
(345, 122, '_wp_attachment_image_alt', ''),
(346, 123, '_wp_trash_meta_status', 'publish'),
(347, 123, '_wp_trash_meta_time', '1522509459'),
(348, 124, '_wp_trash_meta_status', 'publish'),
(349, 124, '_wp_trash_meta_time', '1522509467'),
(340, 122, 'ml-slider_inherit_image_caption', '1'),
(339, 122, 'ml-slider_type', 'image'),
(338, 122, '_thumbnail_id', '107'),
(337, 119, '_wp_attachment_image_alt', ''),
(336, 119, 'ml-slider_crop_position', 'center-center'),
(335, 118, '_wp_attachment_image_alt', ''),
(333, 117, '_wp_attachment_image_alt', ''),
(334, 118, 'ml-slider_crop_position', 'center-center'),
(331, 116, '_wp_attachment_image_alt', ''),
(332, 117, 'ml-slider_crop_position', 'center-center'),
(330, 116, 'ml-slider_crop_position', 'center-center'),
(328, 115, 'ml-slider_crop_position', 'center-center'),
(329, 115, '_wp_attachment_image_alt', ''),
(299, 115, '_thumbnail_id', '114'),
(300, 115, 'ml-slider_type', 'image'),
(301, 115, 'ml-slider_inherit_image_caption', '1'),
(302, 115, 'ml-slider_inherit_image_title', '1'),
(303, 115, 'ml-slider_inherit_image_alt', '1'),
(304, 112, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1500;s:6:\"height\";i:2318;s:4:\"file\";s:16:\"Health-Facts.jpg\";}s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:87:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/Health-Facts-e1522508963849-700x300.jpg\";s:4:\"file\";s:39:\"Health-Facts-e1522508963849-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"resized-1000x1500\";a:5:{s:4:\"path\";s:89:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/Health-Facts-e1522508963849-1000x1500.jpg\";s:4:\"file\";s:41:\"Health-Facts-e1522508963849-1000x1500.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(305, 116, '_thumbnail_id', '112'),
(306, 116, 'ml-slider_type', 'image'),
(307, 116, 'ml-slider_inherit_image_caption', '1'),
(308, 116, 'ml-slider_inherit_image_title', '1'),
(309, 116, 'ml-slider_inherit_image_alt', '1'),
(310, 111, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:700;s:6:\"height\";i:499;s:4:\"file\";s:21:\"hand-wash-nursing.jpg\";}s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/hand-wash-nursing-e1522508984670-700x300.jpg\";s:4:\"file\";s:44:\"hand-wash-nursing-e1522508984670-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"resized-1000x1500\";a:5:{s:4:\"path\";s:94:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/hand-wash-nursing-e1522508984670-1000x1500.jpg\";s:4:\"file\";s:46:\"hand-wash-nursing-e1522508984670-1000x1500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:499;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(311, 117, '_thumbnail_id', '111'),
(312, 117, 'ml-slider_type', 'image'),
(313, 117, 'ml-slider_inherit_image_caption', '1'),
(314, 117, 'ml-slider_inherit_image_title', '1'),
(315, 117, 'ml-slider_inherit_image_alt', '1'),
(316, 110, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:700;s:6:\"height\";i:300;s:4:\"file\";s:15:\"Dental-Tips.jpg\";}s:17:\"resized-1000x1500\";a:5:{s:4:\"path\";s:88:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/Dental-Tips-e1522509001281-1000x1500.jpg\";s:4:\"file\";s:40:\"Dental-Tips-e1522509001281-1000x1500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(317, 118, '_thumbnail_id', '110'),
(318, 118, 'ml-slider_type', 'image'),
(319, 118, 'ml-slider_inherit_image_caption', '1'),
(320, 118, 'ml-slider_inherit_image_title', '1'),
(321, 118, 'ml-slider_inherit_image_alt', '1'),
(322, 109, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:791;s:6:\"height\";i:960;s:4:\"file\";s:16:\"dental-Facts.jpg\";}s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:87:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/dental-Facts-e1522509015458-700x300.jpg\";s:4:\"file\";s:39:\"dental-Facts-e1522509015458-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"resized-1000x1500\";a:5:{s:4:\"path\";s:89:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/dental-Facts-e1522509015458-1000x1500.jpg\";s:4:\"file\";s:41:\"dental-Facts-e1522509015458-1000x1500.jpg\";s:5:\"width\";i:791;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(323, 119, '_thumbnail_id', '109'),
(324, 119, 'ml-slider_type', 'image'),
(325, 119, 'ml-slider_inherit_image_caption', '1'),
(326, 119, 'ml-slider_inherit_image_title', '1'),
(327, 119, 'ml-slider_inherit_image_alt', '1'),
(296, 114, '_wp_attached_file', '2018/03/Heart-Health-Tips-e1522508935377.jpg'),
(297, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1275;s:4:\"file\";s:44:\"2018/03/Heart-Health-Tips-e1522508935377.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Heart-Health-Tips-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Heart-Health-Tips-235x300.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"Heart-Health-Tips-768x979.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:979;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Heart-Health-Tips-803x1024.jpg\";s:5:\"width\";i:803;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"Heart-Health-Tips-1200x1530.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:44:\"Heart-Health-Tips-e1522508935377-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"meta-slider-resized-1000x1500\";a:4:{s:4:\"file\";s:46:\"Heart-Health-Tips-e1522508935377-1000x1500.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1275;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(279, 89, '_wp_desired_post_slug', 'slider-88-image'),
(280, 90, '_wp_desired_post_slug', 'slider-88-image-2'),
(223, 59, '_wp_attached_file', '2018/03/Connected-Solar-Clinic-Jordanien_Projeht.jpg'),
(221, 58, '_wp_attached_file', '2018/03/ClinicInACanMaternalInfant6meterclinic.jpg'),
(222, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:50:\"2018/03/ClinicInACanMaternalInfant6meterclinic.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"ClinicInACanMaternalInfant6meterclinic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"ClinicInACanMaternalInfant6meterclinic-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"ClinicInACanMaternalInfant6meterclinic-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:50:\"ClinicInACanMaternalInfant6meterclinic-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 57, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.69999999999999996;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(64, 23, '_edit_lock', '1521728369:1'),
(263, 89, 'ml-slider_type', 'image'),
(264, 89, 'ml-slider_inherit_image_caption', '1'),
(265, 89, 'ml-slider_inherit_image_title', '1'),
(266, 89, 'ml-slider_inherit_image_alt', '1'),
(285, 109, '_wp_attached_file', '2018/03/dental-Facts-e1522509015458.jpg'),
(286, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:791;s:6:\"height\";i:960;s:4:\"file\";s:39:\"2018/03/dental-Facts-e1522509015458.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"dental-Facts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"dental-Facts-247x300.jpg\";s:5:\"width\";i:247;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"dental-Facts-768x932.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:932;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:39:\"dental-Facts-e1522509015458-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"meta-slider-resized-1000x1500\";a:4:{s:4:\"file\";s:41:\"dental-Facts-e1522509015458-1000x1500.jpg\";s:5:\"width\";i:791;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 88, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:10:\"responsive\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:4:\"1000\";s:6:\"height\";s:4:\"1500\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";s:2:\"30\";s:7:\"opacity\";s:1:\"0\";s:10:\"titleSpeed\";s:3:\"500\";s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:5:\"false\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:5:\"false\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:5:\"false\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:5:\"false\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(71, 23, '_wp_trash_meta_status', 'publish'),
(70, 25, '_customize_changeset_uuid', 'c7beb18b-e7fb-4a67-bca3-f5a709d10c3f'),
(72, 23, '_wp_trash_meta_time', '1521728423'),
(73, 27, '_edit_last', '1'),
(74, 27, '_edit_lock', '1522130987:1'),
(75, 27, '_wp_page_template', 'default'),
(76, 29, '_edit_last', '1'),
(77, 29, '_edit_lock', '1522507431:1'),
(78, 29, '_wp_page_template', 'default'),
(79, 31, '_edit_last', '1'),
(80, 31, '_edit_lock', '1522508487:1'),
(81, 31, '_wp_page_template', 'default'),
(82, 33, '_menu_item_type', 'post_type'),
(83, 33, '_menu_item_menu_item_parent', '0'),
(84, 33, '_menu_item_object_id', '25'),
(85, 33, '_menu_item_object', 'page'),
(86, 33, '_menu_item_target', ''),
(87, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 33, '_menu_item_xfn', ''),
(89, 33, '_menu_item_url', ''),
(90, 33, '_menu_item_orphaned', '1521728726'),
(91, 34, '_menu_item_type', 'post_type'),
(92, 34, '_menu_item_menu_item_parent', '0'),
(93, 34, '_menu_item_object_id', '31'),
(94, 34, '_menu_item_object', 'page'),
(95, 34, '_menu_item_target', ''),
(96, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 34, '_menu_item_xfn', ''),
(98, 34, '_menu_item_url', ''),
(99, 34, '_menu_item_orphaned', '1521728726'),
(100, 35, '_menu_item_type', 'post_type'),
(101, 35, '_menu_item_menu_item_parent', '0'),
(102, 35, '_menu_item_object_id', '29'),
(103, 35, '_menu_item_object', 'page'),
(104, 35, '_menu_item_target', ''),
(105, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 35, '_menu_item_xfn', ''),
(107, 35, '_menu_item_url', ''),
(108, 35, '_menu_item_orphaned', '1521728726'),
(109, 36, '_menu_item_type', 'post_type'),
(110, 36, '_menu_item_menu_item_parent', '0'),
(111, 36, '_menu_item_object_id', '25'),
(112, 36, '_menu_item_object', 'page'),
(113, 36, '_menu_item_target', ''),
(114, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 36, '_menu_item_xfn', ''),
(116, 36, '_menu_item_url', ''),
(117, 36, '_menu_item_orphaned', '1521728726'),
(118, 37, '_menu_item_type', 'post_type'),
(119, 37, '_menu_item_menu_item_parent', '0'),
(120, 37, '_menu_item_object_id', '27'),
(121, 37, '_menu_item_object', 'page'),
(122, 37, '_menu_item_target', ''),
(123, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(124, 37, '_menu_item_xfn', ''),
(125, 37, '_menu_item_url', ''),
(126, 37, '_menu_item_orphaned', '1521728726'),
(127, 38, '_menu_item_type', 'post_type'),
(128, 38, '_menu_item_menu_item_parent', '0'),
(129, 38, '_menu_item_object_id', '2'),
(130, 38, '_menu_item_object', 'page'),
(131, 38, '_menu_item_target', ''),
(132, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(133, 38, '_menu_item_xfn', ''),
(134, 38, '_menu_item_url', ''),
(135, 38, '_menu_item_orphaned', '1521728726'),
(136, 39, '_menu_item_type', 'post_type'),
(137, 39, '_menu_item_menu_item_parent', '0'),
(138, 39, '_menu_item_object_id', '25'),
(139, 39, '_menu_item_object', 'page'),
(140, 39, '_menu_item_target', ''),
(141, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(142, 39, '_menu_item_xfn', ''),
(143, 39, '_menu_item_url', ''),
(194, 46, '_wp_trash_meta_time', '1521728942'),
(145, 40, '_menu_item_type', 'post_type'),
(146, 40, '_menu_item_menu_item_parent', '0'),
(147, 40, '_menu_item_object_id', '31'),
(148, 40, '_menu_item_object', 'page'),
(149, 40, '_menu_item_target', ''),
(150, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 40, '_menu_item_xfn', ''),
(152, 40, '_menu_item_url', ''),
(191, 45, '_wp_trash_meta_time', '1521728836'),
(154, 41, '_menu_item_type', 'post_type'),
(155, 41, '_menu_item_menu_item_parent', '0'),
(156, 41, '_menu_item_object_id', '29'),
(157, 41, '_menu_item_object', 'page'),
(158, 41, '_menu_item_target', ''),
(159, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 41, '_menu_item_xfn', ''),
(161, 41, '_menu_item_url', ''),
(193, 46, '_wp_trash_meta_status', 'publish'),
(163, 42, '_menu_item_type', 'post_type'),
(164, 42, '_menu_item_menu_item_parent', '0'),
(165, 42, '_menu_item_object_id', '25'),
(166, 42, '_menu_item_object', 'page'),
(167, 42, '_menu_item_target', ''),
(168, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 42, '_menu_item_xfn', ''),
(170, 42, '_menu_item_url', ''),
(171, 42, '_menu_item_orphaned', '1521728757'),
(172, 43, '_menu_item_type', 'post_type'),
(173, 43, '_menu_item_menu_item_parent', '0'),
(174, 43, '_menu_item_object_id', '27'),
(175, 43, '_menu_item_object', 'page'),
(176, 43, '_menu_item_target', ''),
(177, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(178, 43, '_menu_item_xfn', ''),
(179, 43, '_menu_item_url', ''),
(192, 46, '_edit_lock', '1521728914:1'),
(181, 44, '_menu_item_type', 'post_type'),
(182, 44, '_menu_item_menu_item_parent', '0'),
(183, 44, '_menu_item_object_id', '2'),
(184, 44, '_menu_item_object', 'page'),
(185, 44, '_menu_item_target', ''),
(186, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 44, '_menu_item_xfn', ''),
(188, 44, '_menu_item_url', ''),
(190, 45, '_wp_trash_meta_status', 'publish'),
(195, 25, '_edit_lock', '1522508562:1'),
(196, 25, '_edit_last', '1'),
(197, 25, '_wp_page_template', 'default'),
(198, 50, '_wp_trash_meta_status', 'publish'),
(199, 50, '_wp_trash_meta_time', '1521729335'),
(200, 51, '_wp_trash_meta_status', 'publish'),
(201, 51, '_wp_trash_meta_time', '1521729392'),
(203, 53, '_wp_attached_file', '2018/03/cropped-clinic.jpg'),
(204, 53, '_wp_attachment_context', 'custom-header'),
(205, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:468;s:4:\"file\";s:26:\"2018/03/cropped-clinic.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-clinic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-clinic-300x117.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"cropped-clinic-768x300.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"cropped-clinic-1024x399.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-clinic-1200x468.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:468;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:26:\"cropped-clinic-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:24;}'),
(210, 54, '_wp_attachment_context', 'custom-header'),
(209, 54, '_wp_attached_file', '2018/03/cropped-clinic-1.jpg'),
(278, 2, '_edit_last', '1'),
(211, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:280;s:4:\"file\";s:28:\"2018/03/cropped-clinic-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-clinic-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-clinic-1-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-clinic-1-768x179.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-clinic-1-1024x239.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-clinic-1-1200x280.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:28:\"cropped-clinic-1-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:24;}'),
(212, 54, '_wp_attachment_custom_header_last_used_twentysixteen', '1521729765'),
(213, 54, '_wp_attachment_is_custom_header', 'twentysixteen'),
(214, 55, '_wp_attached_file', '2018/03/2015-10-09-11-32-281980.jpg'),
(215, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:660;s:4:\"file\";s:35:\"2018/03/2015-10-09-11-32-281980.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"2015-10-09-11-32-281980-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"2015-10-09-11-32-281980-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"2015-10-09-11-32-281980-768x371.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:371;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"2015-10-09-11-32-281980-1024x495.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:495;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"2015-10-09-11-32-281980-1200x580.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:580;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:35:\"2015-10-09-11-32-281980-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 55, '_wp_attachment_is_custom_background', 'twentysixteen'),
(217, 56, '_edit_lock', '1521729763:1'),
(218, 56, '_wp_trash_meta_status', 'publish'),
(219, 56, '_wp_trash_meta_time', '1521729765'),
(224, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:354;s:4:\"file\";s:52:\"2018/03/Connected-Solar-Clinic-Jordanien_Projeht.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Connected-Solar-Clinic-Jordanien_Projeht-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Connected-Solar-Clinic-Jordanien_Projeht-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:52:\"Connected-Solar-Clinic-Jordanien_Projeht-700x300.jpg\";s:5:\"width\";i:630;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-630x270\";a:4:{s:4:\"file\";s:52:\"Connected-Solar-Clinic-Jordanien_Projeht-630x270.jpg\";s:5:\"width\";i:630;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(225, 60, '_wp_attached_file', '2018/03/WalMartMedicalClinicDesign.jpg'),
(226, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:450;s:4:\"file\";s:38:\"2018/03/WalMartMedicalClinicDesign.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"WalMartMedicalClinicDesign-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"WalMartMedicalClinicDesign-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:38:\"WalMartMedicalClinicDesign-700x300.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-650x278\";a:4:{s:4:\"file\";s:38:\"WalMartMedicalClinicDesign-650x278.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 61, '_thumbnail_id', '58'),
(228, 61, 'ml-slider_type', 'image'),
(229, 61, 'ml-slider_inherit_image_caption', '1'),
(230, 61, 'ml-slider_inherit_image_title', '1'),
(231, 61, 'ml-slider_inherit_image_alt', '1'),
(232, 62, '_thumbnail_id', '59'),
(233, 62, 'ml-slider_type', 'image'),
(234, 62, 'ml-slider_inherit_image_caption', '1'),
(235, 62, 'ml-slider_inherit_image_title', '1'),
(236, 62, 'ml-slider_inherit_image_alt', '1'),
(237, 63, '_thumbnail_id', '60'),
(238, 63, 'ml-slider_type', 'image'),
(239, 63, 'ml-slider_inherit_image_caption', '1'),
(240, 63, 'ml-slider_inherit_image_title', '1'),
(241, 63, 'ml-slider_inherit_image_alt', '1'),
(242, 58, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:98:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/ClinicInACanMaternalInfant6meterclinic-700x300.jpg\";s:4:\"file\";s:50:\"ClinicInACanMaternalInfant6meterclinic-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(243, 59, '_wp_attachment_backup_sizes', 'a:2:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:100:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/Connected-Solar-Clinic-Jordanien_Projeht-700x300.jpg\";s:4:\"file\";s:52:\"Connected-Solar-Clinic-Jordanien_Projeht-700x300.jpg\";s:5:\"width\";i:630;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-630x270\";a:5:{s:4:\"path\";s:100:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/Connected-Solar-Clinic-Jordanien_Projeht-630x270.jpg\";s:4:\"file\";s:52:\"Connected-Solar-Clinic-Jordanien_Projeht-630x270.jpg\";s:5:\"width\";i:630;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(244, 60, '_wp_attachment_backup_sizes', 'a:2:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:86:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/WalMartMedicalClinicDesign-700x300.jpg\";s:4:\"file\";s:38:\"WalMartMedicalClinicDesign-700x300.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-650x278\";a:5:{s:4:\"path\";s:86:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/WalMartMedicalClinicDesign-650x278.jpg\";s:4:\"file\";s:38:\"WalMartMedicalClinicDesign-650x278.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(245, 61, 'ml-slider_crop_position', 'center-center'),
(246, 61, '_wp_attachment_image_alt', ''),
(247, 62, 'ml-slider_crop_position', 'center-center'),
(248, 62, '_wp_attachment_image_alt', ''),
(249, 63, 'ml-slider_crop_position', 'center-center'),
(250, 63, '_wp_attachment_image_alt', ''),
(251, 2, '_edit_lock', '1522509054:1'),
(252, 1, '_edit_lock', '1522128291:1'),
(298, 114, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1254;s:6:\"height\";i:1599;s:4:\"file\";s:21:\"Heart-Health-Tips.jpg\";}s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:92:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/Heart-Health-Tips-e1522508935377-700x300.jpg\";s:4:\"file\";s:44:\"Heart-Health-Tips-e1522508935377-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"resized-1000x1500\";a:5:{s:4:\"path\";s:94:\"C:wamp64wwwwordpress/wp-content/uploads/2018/03/Heart-Health-Tips-e1522508935377-1000x1500.jpg\";s:4:\"file\";s:46:\"Heart-Health-Tips-e1522508935377-1000x1500.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1275;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(287, 110, '_wp_attached_file', '2018/03/Dental-Tips-e1522509001281.jpg'),
(288, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:300;s:4:\"file\";s:38:\"2018/03/Dental-Tips-e1522509001281.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Dental-Tips-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Dental-Tips-300x129.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"meta-slider-resized-1000x1500\";a:4:{s:4:\"file\";s:40:\"Dental-Tips-e1522509001281-1000x1500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(289, 111, '_wp_attached_file', '2018/03/hand-wash-nursing-e1522508984670.jpg'),
(290, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:499;s:4:\"file\";s:44:\"2018/03/hand-wash-nursing-e1522508984670.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"hand-wash-nursing-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"hand-wash-nursing-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:44:\"hand-wash-nursing-e1522508984670-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"meta-slider-resized-1000x1500\";a:4:{s:4:\"file\";s:46:\"hand-wash-nursing-e1522508984670-1000x1500.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:499;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 107, '_wp_attached_file', '2018/03/14728ce21cae8c9a5a59a53ce41cabf0.jpg'),
(282, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:614;s:4:\"file\";s:44:\"2018/03/14728ce21cae8c9a5a59a53ce41cabf0.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"14728ce21cae8c9a5a59a53ce41cabf0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"14728ce21cae8c9a5a59a53ce41cabf0-244x300.jpg\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"meta-slider-resized-1000x1500\";a:4:{s:4:\"file\";s:46:\"14728ce21cae8c9a5a59a53ce41cabf0-1000x1500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 108, '_wp_attached_file', '2018/03/blooddonation-1.jpg'),
(284, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:548;s:4:\"file\";s:27:\"2018/03/blooddonation-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"blooddonation-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"blooddonation-1-300x114.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"blooddonation-1-768x292.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:292;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"blooddonation-1-1024x390.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:390;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"blooddonation-1-1200x457.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:64:\"excited toddler on a swing outdoors, autumn leaves in background\";s:17:\"created_timestamp\";s:10:\"1256476908\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"92\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:22:\"excitement and freedom\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:34:{i:0;s:6:\"active\";i:1;s:8:\"activity\";i:2;s:5:\"alone\";i:3;s:6:\"autumn\";i:4;s:3:\"boy\";i:5;s:8:\"carefree\";i:6;s:9:\"caucasian\";i:7;s:5:\"child\";i:8;s:9:\"childhood\";i:9;s:7:\"dynamic\";i:10;s:9:\"energetic\";i:11;s:6:\"energy\";i:12;s:7:\"excited\";i:13;s:4:\"free\";i:14;s:7:\"freedom\";i:15;s:3:\"fun\";i:16;s:9:\"happiness\";i:17;s:5:\"happy\";i:18;s:3:\"joy\";i:19;s:6:\"joyful\";i:20;s:3:\"kid\";i:21;s:8:\"outdoors\";i:22;s:7:\"outside\";i:23;s:4:\"park\";i:24;s:6:\"person\";i:25;s:4:\"play\";i:26;s:8:\"playtime\";i:27;s:4:\"ride\";i:28;s:9:\"screaming\";i:29;s:5:\"swing\";i:30;s:8:\"swinging\";i:31;s:7:\"toddler\";i:32;s:5:\"young\";i:33;s:5:\"youth\";}}}'),
(269, 90, 'ml-slider_type', 'image'),
(270, 90, 'ml-slider_inherit_image_caption', '1'),
(271, 90, 'ml-slider_inherit_image_title', '1'),
(272, 90, 'ml-slider_inherit_image_alt', '1'),
(291, 112, '_wp_attached_file', '2018/03/Health-Facts-e1522508963849.jpg'),
(292, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1545;s:4:\"file\";s:39:\"2018/03/Health-Facts-e1522508963849.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Health-Facts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Health-Facts-194x300.jpg\";s:5:\"width\";i:194;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Health-Facts-768x1187.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Health-Facts-663x1024.jpg\";s:5:\"width\";i:663;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"Health-Facts-1200x1854.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1854;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:39:\"Health-Facts-e1522508963849-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"meta-slider-resized-1000x1500\";a:4:{s:4:\"file\";s:41:\"Health-Facts-e1522508963849-1000x1500.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:1500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 89, 'ml-slider_crop_position', 'center-center'),
(275, 89, '_wp_attachment_image_alt', ''),
(276, 90, 'ml-slider_crop_position', 'center-center'),
(277, 90, '_wp_attachment_image_alt', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-22 13:58:58', '2018-03-22 13:58:58', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-03-22 13:58:58', '2018-03-22 13:58:58', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-22 13:58:58', '2018-03-22 13:58:58', 'Here are some readable healthy tips for  you and your teeth\r\n\r\n[metaslider id=88]', 'GALLERY', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-03-31 15:12:27', '2018-03-31 15:12:27', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(104, 1, '2018-03-31 14:46:45', '2018-03-31 14:46:45', '', 'GALLERY', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-31 14:46:45', '2018-03-31 14:46:45', '', 2, 'http://localhost/wordpress/2018/03/31/2-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-03-31 15:05:34', '2018-03-31 15:05:34', '', 'excitement and freedom', 'excited toddler on a swing outdoors, autumn leaves in background', 'inherit', 'open', 'closed', '', 'excitement-and-freedom', '', '', '2018-03-31 15:05:34', '2018-03-31 15:05:34', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/blooddonation-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2018-03-31 15:05:35', '2018-03-31 15:05:35', '', 'dental Facts', '', 'inherit', 'open', 'closed', '', 'dental-facts', '', '', '2018-03-31 15:05:35', '2018-03-31 15:05:35', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/dental-Facts.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-03-31 11:34:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-31 11:34:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=98', 0, 'post', '', 0),
(99, 1, '2018-03-31 11:44:30', '2018-03-31 11:44:30', 'You can find our campus clinic in the 8th floor of the Devesse Building.\r\n\r\nThis website helps the students of Saint Louis University to know what are the capabilities of the clinic on each campus and the available resources and services they are providing. The website provides information on both clinics, and some tips for tabs we provide some information, like what are the procedures when you visit those clinics, and some tips for taking care of your teeth, and the events that may occur in the campus.\r\n<h5>Location of the clinic in each campus are as follows:</h5>\r\nMain Campus - the clinic is in the Diego Silang Building, left side of its lobby before entering the canteen.\r\nMaryheights Campus - the clinic is located on the 8th floor of the Devesse Building near the Student Affairs Office\r\n\r\n&nbsp;\r\n\r\nPersonnel working in these facilities are professional and have their own degree to ensure that the resources and services given to each students are reliable and safe.', 'About Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-31 11:44:30', '2018-03-31 11:44:30', '', 31, 'http://localhost/wordpress/2018/03/31/31-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-03-31 11:47:38', '2018-03-31 11:47:38', '<h2></h2>\r\n<pre>\"Saint Louis university is an excellent, missionary, and transformative educational institution that is zealous in developing human resources to be creative, competent, socially involved, and imbued with the Christian Spirit.\"</pre>\r\nThis website helps the students of Saint Louis University to know what are the capabilities of the clinic on each campus and the available resources and services they are providing. The website provides information on both clinics, and some tips for tabs we provide some information, like what are the procedures when you visit those clinics, and some tips for taking care of your teeth, and the events that may occur in the campus.\r\n<h5>Location of the clinic in each campus are as follows:</h5>\r\nMain Campus - the clinic is in the Diego Silang Building, left side of its lobby before entering the canteen.\r\nMaryheights Campus - the clinic is located on the 8th floor of the Devesse Building near the Student Affairs Office\r\n\r\n&nbsp;\r\n\r\nPersonnel working in these facilities are professional and have their own degree to ensure that the resources and services given to each students are reliable and safe.', 'About Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-31 11:47:38', '2018-03-31 11:47:38', '', 31, 'http://localhost/wordpress/2018/03/31/31-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-03-31 11:47:11', '2018-03-31 11:47:11', '<h2>Vision and Mission of Saint Louis University</h2>\r\n<pre>\"Saint Louis university is an excellent, missionary, and transformative educational institution that is zealous in developing human resources to be creative, competent, socially involved, and imbued with the Christian Spirit.\"</pre>\r\nThis website helps the students of Saint Louis University to know what are the capabilities of the clinic on each campus and the available resources and services they are providing. The website provides information on both clinics, and some tips for tabs we provide some information, like what are the procedures when you visit those clinics, and some tips for taking care of your teeth, and the events that may occur in the campus.\r\n<h5>Location of the clinic in each campus are as follows:</h5>\r\nMain Campus - the clinic is in the Diego Silang Building, left side of its lobby before entering the canteen.\r\nMaryheights Campus - the clinic is located on the 8th floor of the Devesse Building near the Student Affairs Office\r\n\r\n&nbsp;\r\n\r\nPersonnel working in these facilities are professional and have their own degree to ensure that the resources and services given to each students are reliable and safe.', 'About Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-31 11:47:11', '2018-03-31 11:47:11', '', 31, 'http://localhost/wordpress/2018/03/31/31-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-03-31 14:36:59', '2018-03-31 14:36:59', '', 'GALLERY', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-03-31 14:36:59', '2018-03-31 14:36:59', '', 2, 'http://localhost/wordpress/2018/03/31/2-autosave-v1/', 0, 'revision', '', 0),
(105, 1, '2018-03-31 15:03:48', '2018-03-31 15:03:48', '<h2></h2>\r\n<pre>\"Saint Louis university is an excellent, missionary, and transformative educational institution that is zealous in developing human resources to be creative, competent, socially involved, and imbued with the Christian Spirit.\"</pre>\r\nThis website helps the students of Saint Louis University to know what are the capabilities of the clinic on each campus and the available resources and services they are providing. The website provides information on both clinics, and some tips for tabs we provide some information, like what are the procedures when you visit those clinics, and some tips for taking care of your teeth, and the events that may occur in the campus.\r\n<h5>Location of the clinic in each campus are as follows:</h5>\r\nMain Campus - the clinic is in the Diego Silang Building, left side of its lobby before entering the canteen.\r\nMaryheights Campus - the clinic is located on the 8th floor of the Devesse Building near the Student Affairs Office\r\n\r\n&nbsp;\r\n\r\nPersonnel working in these facilities are professional and have their own degree to ensure that the resources and services given to each students are reliable and safe.', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-31 15:03:48', '2018-03-31 15:03:48', '', 31, 'http://localhost/wordpress/2018/03/31/31-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-03-31 14:46:12', '2018-03-31 14:46:12', '<h1>Dental Clinic Procedure</h1>\r\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\r\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\r\n\r\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***\r\n<h2>Step 2 Queue up for a check-up:</h2>\r\nAfter getting your form wait for your turn to be checked-up  by the doctor on-duty.\r\n<h2>Step 3 Get a Check up from the doctor:</h2>\r\nInside the dental clinic you will be treated to a dental examination based on your current dental problem.\r\n<h2>Step 4 Get the proper medication and treatment:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n\r\n<h1>Dental Health Tips:</h1>\r\n<ul>\r\n 	<li><strong>Brush and Floss twice a day:</strong>\r\nWhile you should brush at least once a day, twice a day is best! The best time to brush is after you eat a meal, and you should also floss at the same time. You need to brush your teeth for at least 2 minutes, making sure to cover all of your teeth.</li>\r\n 	<li><strong>Drink Lots of Water:\r\n</strong>Water is not only important for your overall health, but it encourages saliva production which is important for healthy teeth. Water is also much healthier and better for your teeth than sugary drinks and sodas. Over time, bacteria on your teeth use sugar to create plaque, which if not dealt with will cause teeth decay!</li>\r\n 	<li><strong>Avoid Sugary Foods:\r\n</strong>You should not only pay attention to sugar in drinks, but also in the foods you eat. Try to avoid eating a lot of sugary foods and candy. If you do eat a lot of sugar, make sure you brush your teeth well after eating. Sugar greatly increases the amount of plaque on your teeth, and if you have a sweet tooth it’s important to be even more conscious about how well you brush your teeth.</li>\r\n 	<li><strong>See a Dentist Every 6 Months:\r\n</strong>Most importantly, make sure you are visiting a dentist regularly! Dentists can thoroughly clean your teeth, and check for cavities, plaque and any other dental issues that need to be addressed.</li>\r\n</ul>\r\n&nbsp;', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-31 14:46:12', '2018-03-31 14:46:12', '', 29, 'http://localhost/wordpress/2018/03/31/29-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-03-31 15:05:36', '2018-03-31 15:05:36', '', 'Dental Tips', '', 'inherit', 'open', 'closed', '', 'dental-tips', '', '', '2018-03-31 15:05:36', '2018-03-31 15:05:36', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/Dental-Tips.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2018-03-31 15:05:36', '2018-03-31 15:05:36', '', 'hand-wash-nursing', '', 'inherit', 'open', 'closed', '', 'hand-wash-nursing', '', '', '2018-03-31 15:05:36', '2018-03-31 15:05:36', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/hand-wash-nursing.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2018-03-31 15:05:37', '2018-03-31 15:05:37', '', 'Health Facts', '', 'inherit', 'open', 'closed', '', 'health-facts', '', '', '2018-03-31 15:05:37', '2018-03-31 15:05:37', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/Health-Facts.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2018-03-31 15:08:08', '2018-03-31 15:08:08', '', 'Heart Health Tips', '', 'inherit', 'open', 'closed', '', 'heart-health-tips', '', '', '2018-03-31 15:08:08', '2018-03-31 15:08:08', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/Heart-Health-Tips.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2018-03-31 15:09:05', '2018-03-31 15:09:05', '', 'Slider 88 - image', '', 'publish', 'closed', 'closed', '', 'slider-88-image', '', '', '2018-03-31 15:19:06', '2018-03-31 15:19:06', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=115', 0, 'ml-slide', '', 0),
(116, 1, '2018-03-31 15:09:31', '2018-03-31 15:09:31', '', 'Slider 88 - image', '', 'publish', 'closed', 'closed', '', 'slider-88-image-2', '', '', '2018-03-31 15:19:06', '2018-03-31 15:19:06', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=116', 1, 'ml-slide', '', 0),
(117, 1, '2018-03-31 15:09:49', '2018-03-31 15:09:49', '', 'Slider 88 - image', '', 'publish', 'closed', 'closed', '', 'slider-88-image-3', '', '', '2018-03-31 15:19:06', '2018-03-31 15:19:06', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=117', 2, 'ml-slide', '', 0),
(118, 1, '2018-03-31 15:10:05', '2018-03-31 15:10:05', '', 'Slider 88 - image', '', 'publish', 'closed', 'closed', '', 'slider-88-image-4', '', '', '2018-03-31 15:19:06', '2018-03-31 15:19:06', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=118', 3, 'ml-slide', '', 0),
(119, 1, '2018-03-31 15:10:20', '2018-03-31 15:10:20', '', 'Slider 88 - image', '', 'publish', 'closed', 'closed', '', 'slider-88-image-5', '', '', '2018-03-31 15:19:06', '2018-03-31 15:19:06', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=119', 4, 'ml-slide', '', 0),
(120, 1, '2018-03-31 15:11:39', '2018-03-31 15:11:39', 'Here some readable healthy tips for  you and your teeth\r\n\r\n[metaslider id=88]', 'GALLERY', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-31 15:11:39', '2018-03-31 15:11:39', '', 2, 'http://localhost/wordpress/2018/03/31/2-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-03-31 15:12:27', '2018-03-31 15:12:27', 'Here are some readable healthy tips for  you and your teeth\r\n\r\n[metaslider id=88]', 'GALLERY', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-31 15:12:27', '2018-03-31 15:12:27', '', 2, 'http://localhost/wordpress/2018/03/31/2-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-03-31 15:13:49', '2018-03-31 15:13:49', '', 'Slider 88 - image', '', 'publish', 'closed', 'closed', '', 'slider-88-image-6', '', '', '2018-03-31 15:19:06', '2018-03-31 15:19:06', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=122', 5, 'ml-slide', '', 0),
(123, 1, '2018-03-31 15:17:39', '2018-03-31 15:17:39', '{\n    \"nav_menu_item[40]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 31,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/about-us/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"ABOUT US\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-31 15:17:39\"\n    },\n    \"nav_menu_item[44]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/sample-page/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"GALLERY\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-31 15:17:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '06c1def6-67a4-4e18-9230-fbe1cc6399f0', '', '', '2018-03-31 15:17:39', '2018-03-31 15:17:39', '', 0, 'http://localhost/wordpress/2018/03/31/06c1def6-67a4-4e18-9230-fbe1cc6399f0/', 0, 'customize_changeset', '', 0),
(124, 1, '2018-03-31 15:17:47', '2018-03-31 15:17:47', '{\n    \"nav_menu_item[43]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 27,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/medical-clinic/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"MEDICAL CLINIC\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-31 15:17:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd84cabed-356d-42c0-bfc1-3aab3804061f', '', '', '2018-03-31 15:17:47', '2018-03-31 15:17:47', '', 0, 'http://localhost/wordpress/2018/03/31/d84cabed-356d-42c0-bfc1-3aab3804061f/', 0, 'customize_changeset', '', 0),
(57, 1, '2018-03-22 14:51:21', '2018-03-22 14:51:21', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2018-03-22 14:55:00', '2018-03-22 14:55:00', '', 0, 'http://localhost/wordpress/?post_type=ml-slider&#038;p=57', 0, 'ml-slider', '', 0),
(58, 1, '2018-03-22 14:53:33', '2018-03-22 14:53:33', '', 'Clinic+In+A+Can+Maternal+Infant+6+meter+clinic', '', 'inherit', 'open', 'closed', '', 'clinicinacanmaternalinfant6meterclinic', '', '', '2018-03-22 14:53:33', '2018-03-22 14:53:33', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/ClinicInACanMaternalInfant6meterclinic.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-03-22 14:53:33', '2018-03-22 14:53:33', '', 'Connected-Solar-Clinic-Jordanien_Projeht', '', 'inherit', 'open', 'closed', '', 'connected-solar-clinic-jordanien_projeht', '', '', '2018-03-27 05:19:45', '2018-03-27 05:19:45', '', 2, 'http://localhost/wordpress/wp-content/uploads/2018/03/Connected-Solar-Clinic-Jordanien_Projeht.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-03-22 14:53:34', '2018-03-22 14:53:34', '', 'WalMartMedicalClinicDesign', '', 'inherit', 'open', 'closed', '', 'walmartmedicalclinicdesign', '', '', '2018-03-22 14:53:34', '2018-03-22 14:53:34', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/WalMartMedicalClinicDesign.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-03-22 14:53:48', '2018-03-22 14:53:48', '', 'Slider 57 - image', '', 'publish', 'closed', 'closed', '', 'slider-57-image', '', '', '2018-03-22 14:55:00', '2018-03-22 14:55:00', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=61', 0, 'ml-slide', '', 0),
(62, 1, '2018-03-22 14:53:48', '2018-03-22 14:53:48', '', 'Slider 57 - image', '', 'publish', 'closed', 'closed', '', 'slider-57-image-2', '', '', '2018-03-22 14:55:00', '2018-03-22 14:55:00', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=62', 1, 'ml-slide', '', 0),
(63, 1, '2018-03-22 14:53:48', '2018-03-22 14:53:48', '', 'Slider 57 - image', '', 'publish', 'closed', 'closed', '', 'slider-57-image-3', '', '', '2018-03-22 14:55:00', '2018-03-22 14:55:00', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=63', 2, 'ml-slide', '', 0),
(23, 1, '2018-03-22 14:20:23', '2018-03-22 14:20:23', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:18:28\"\n    },\n    \"college-education::preloader\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:18:28\"\n    },\n    \"college-education::menustyle\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:19:28\"\n    },\n    \"college-education::pagetitle\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:19:28\"\n    },\n    \"college-education::animation\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:19:28\"\n    },\n    \"college-education::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/03/clinic.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:20:23\"\n    },\n    \"college-education::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2018/03/clinic.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2018/03/clinic.jpg\",\n            \"timestamp\": 1521728373913,\n            \"attachment_id\": 24,\n            \"width\": 1920,\n            \"height\": 750\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:20:23\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:20:23\"\n    },\n    \"page_on_front\": {\n        \"value\": \"25\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:20:23\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            25\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:20:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c7beb18b-e7fb-4a67-bca3-f5a709d10c3f', '', '', '2018-03-22 14:20:23', '2018-03-22 14:20:23', '', 0, 'http://localhost/wordpress/?p=23', 0, 'customize_changeset', '', 0),
(88, 1, '2018-03-27 05:46:18', '2018-03-27 05:46:18', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'new-slideshow-2', '', '', '2018-03-31 15:19:06', '2018-03-31 15:19:06', '', 0, 'http://localhost/wordpress/?post_type=ml-slider&#038;p=88', 0, 'ml-slider', '', 0),
(25, 1, '2018-03-22 14:20:23', '2018-03-22 14:20:23', 'Saint Louis University\'s Maryheights Campus consists of the School of Accountancy and Business Management (SABM) as well as the School of Computer and Information Sciences (SCIS).\r\n\r\nStudents and faculties are working together to make the campus an educational and friendly environment as much as possible.\r\n\r\n[metaslider id=\"57\"]\r\n\r\nWith the help of both medical and dental clinic they create a safer environment for the students, having the appropriate facilities, equipment, and treatment for the students who would feel any medical problems.', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-03-31 15:03:59', '2018-03-31 15:03:59', '', 0, 'http://localhost/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-03-22 14:20:23', '2018-03-22 14:20:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-22 14:20:23', '2018-03-22 14:20:23', '', 25, 'http://localhost/wordpress/2018/03/22/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-03-22 14:22:22', '2018-03-22 14:22:22', '<h1>Medical Clinic Procedure:</h1>\r\n<h3 style=\"text-align: left;\"><strong>Step 1:</strong> Get your medical form</h3>\r\n<p style=\"text-align: left;\">First you need to find your medical form in the alphabetically ranged drawer.</p>\r\n<p style=\"text-align: center;\">***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***</p>\r\n\r\n<h3><strong>Step 2:</strong> Tell your medical problem to the nurse on-duty</h3>\r\nThe nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.\r\n<h3><strong>Step 3:</strong> Get a quick check-up with the doctor on-duty</h3>\r\nInside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.\r\n<h3><strong>Step 4: </strong>Get your medication and treatment from the nurse on-duty</h3>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n&nbsp;\r\n<h1>Events</h1>\r\n<h3>Blood Donation:</h3>\r\nRed Cross will hold a Blood Donation Drive this April 25 - 26, 2018 in Waldo Perfecto Bldg and Devesse Bldg.', 'MEDICAL CLINIC', '', 'publish', 'closed', 'closed', '', 'medical-clinic', '', '', '2018-03-27 06:12:10', '2018-03-27 06:12:10', '', 0, 'http://localhost/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-03-22 14:22:22', '2018-03-22 14:22:22', 'The medical clinic of Saint Louis University provides the best service among any university\r\n\r\nThe medical clinic of Saint Louis University provides the best service among any university\r\n\r\nThe medical clinic of Saint Louis University provides the best service among any university\r\n\r\nThe medical clinic of Saint Louis University provides the best service among any university\r\n\r\nThe medical clinic of Saint Louis University provides the best service among any university\r\n\r\nThe medical clinic of Saint Louis University provides the best service among any university', 'Medical Clinic', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-22 14:22:22', '2018-03-22 14:22:22', '', 27, 'http://localhost/wordpress/2018/03/22/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-03-22 14:23:00', '2018-03-22 14:23:00', '<h1>Dental Clinic Procedure</h1>\r\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\r\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\r\n\r\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***\r\n<h2>Step 2 Queue up for a check-up:</h2>\r\nAfter getting your form wait for your turn to be checked-up  by the doctor on-duty.\r\n<h2>Step 3 Get a Check up from the doctor:</h2>\r\nInside the dental clinic you will be treated to a dental examination based on your current dental problem.\r\n<h2>Step 4 Get the proper medication and treatment:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n\r\n<h1>Dental Health Tips:</h1>\r\n<ul>\r\n 	<li><strong>Brush and Floss twice a day:</strong>\r\nWhile you should brush at least once a day, twice a day is best! The best time to brush is after you eat a meal, and you should also floss at the same time. You need to brush your teeth for at least 2 minutes, making sure to cover all of your teeth.</li>\r\n 	<li><strong>Drink Lots of Water:\r\n</strong>Water is not only important for your overall health, but it encourages saliva production which is important for healthy teeth. Water is also much healthier and better for your teeth than sugary drinks and sodas. Over time, bacteria on your teeth use sugar to create plaque, which if not dealt with will cause teeth decay!</li>\r\n 	<li><strong>Avoid Sugary Foods:\r\n</strong>You should not only pay attention to sugar in drinks, but also in the foods you eat. Try to avoid eating a lot of sugary foods and candy. If you do eat a lot of sugar, make sure you brush your teeth well after eating. Sugar greatly increases the amount of plaque on your teeth, and if you have a sweet tooth it’s important to be even more conscious about how well you brush your teeth.</li>\r\n 	<li><strong>See a Dentist Every 6 Months:\r\n</strong>Most importantly, make sure you are visiting a dentist regularly! Dentists can thoroughly clean your teeth, and check for cavities, plaque and any other dental issues that need to be addressed.</li>\r\n</ul>\r\n&nbsp;', 'DENTAL CLINIC', '', 'publish', 'closed', 'closed', '', 'dental-clinic', '', '', '2018-03-31 14:46:12', '2018-03-31 14:46:12', '', 0, 'http://localhost/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-03-22 14:23:00', '2018-03-22 14:23:00', 'The dental clinic of Saint Louis University provides the best service among any university\r\nThe dental clinic of Saint Louis University provides the best service among any university\r\nThe dental clinic of Saint Louis University provides the best service among any university\r\nThe dental clinic of Saint Louis University provides the best service among any university', 'Dental Clinic', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-22 14:23:00', '2018-03-22 14:23:00', '', 29, 'http://localhost/wordpress/2018/03/22/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-03-22 14:25:07', '2018-03-22 14:25:07', '<h2></h2>\r\n<pre>\"Saint Louis university is an excellent, missionary, and transformative educational institution that is zealous in developing human resources to be creative, competent, socially involved, and imbued with the Christian Spirit.\"</pre>\r\nThis website helps the students of Saint Louis University to know what are the capabilities of the clinic on each campus and the available resources and services they are providing. The website provides information on both clinics, and some tips for tabs we provide some information, like what are the procedures when you visit those clinics, and some tips for taking care of your teeth, and the events that may occur in the campus.\r\n<h5>Location of the clinic in each campus are as follows:</h5>\r\nMain Campus - the clinic is in the Diego Silang Building, left side of its lobby before entering the canteen.\r\nMaryheights Campus - the clinic is located on the 8th floor of the Devesse Building near the Student Affairs Office\r\n\r\n&nbsp;\r\n\r\nPersonnel working in these facilities are professional and have their own degree to ensure that the resources and services given to each students are reliable and safe.', 'ABOUT US', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-03-31 15:03:48', '2018-03-31 15:03:48', '', 0, 'http://localhost/wordpress/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-03-22 14:25:07', '2018-03-22 14:25:07', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-22 14:25:07', '2018-03-22 14:25:07', '', 31, 'http://localhost/wordpress/2018/03/22/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-03-22 14:25:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-03-22 14:25:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-03-22 14:25:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-03-22 14:25:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2018-03-22 14:25:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-03-22 14:25:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-03-22 14:26:18', '2018-03-22 14:26:18', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2018-03-22 14:42:45', '2018-03-22 14:42:45', '', 0, 'http://localhost/wordpress/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-03-22 14:26:18', '2018-03-22 14:26:18', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2018-03-31 15:17:39', '2018-03-31 15:17:39', '', 0, 'http://localhost/wordpress/?p=40', 5, 'nav_menu_item', '', 0),
(41, 1, '2018-03-22 14:26:18', '2018-03-22 14:26:18', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2018-03-22 14:42:45', '2018-03-22 14:42:45', '', 0, 'http://localhost/wordpress/?p=41', 2, 'nav_menu_item', '', 0),
(42, 1, '2018-03-22 14:25:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:25:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2018-03-22 14:26:18', '2018-03-22 14:26:18', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-03-31 15:17:47', '2018-03-31 15:17:47', '', 0, 'http://localhost/wordpress/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2018-03-22 14:26:18', '2018-03-22 14:26:18', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-03-31 15:17:39', '2018-03-31 15:17:39', '', 0, 'http://localhost/wordpress/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2018-03-22 14:27:16', '2018-03-22 14:27:16', '{\n    \"college-education::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:27:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5f68e23a-06f1-4986-ba98-e0c9254f687f', '', '', '2018-03-22 14:27:16', '2018-03-22 14:27:16', '', 0, 'http://localhost/wordpress/2018/03/22/5f68e23a-06f1-4986-ba98-e0c9254f687f/', 0, 'customize_changeset', '', 0),
(46, 1, '2018-03-22 14:29:02', '2018-03-22 14:29:02', '{\n    \"college-education::CollegeEducationSocialIcon1\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:28:06\"\n    },\n    \"college-education::CollegeEducationSocialIconLink1\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:28:06\"\n    },\n    \"college-education::CopyrightAreaText\": {\n        \"value\": \"\\u25cbAll rights reserved 2018\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:29:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3490939c-fde2-404a-a6ab-2b72bf6d6d6e', '', '', '2018-03-22 14:29:02', '2018-03-22 14:29:02', '', 0, 'http://localhost/wordpress/?p=46', 0, 'customize_changeset', '', 0),
(47, 1, '2018-03-22 14:56:33', '2018-03-22 14:56:33', 'Saint Louis University\'s Maryheights Campus consists of the School of Accountancy and Business Management (SABM) as well as the School of Computer and Information Sciences (SCIS).\n\nStudents and faculties are working together to make the campus an educational and friendly environment as much as possible.\n\n[metaslider id=\"57\"]\n\nMoreover, this is just a string of characters combined together to form a word, words together produces sentences. And sentences joined', 'Home', '', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2018-03-22 14:56:33', '2018-03-22 14:56:33', '', 25, 'http://localhost/wordpress/2018/03/22/25-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2018-03-22 14:33:08', '2018-03-22 14:33:08', 'Saint Louis University\'s Maryheights Campus consists of the School of Accountancy and Business Management (SABM) as well as the School of Computer and Information Sciences (SCIS).\r\n\r\nStudents and faculties are working together to make the campus an educational and friendly environment as much as possible.', 'Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-22 14:33:08', '2018-03-22 14:33:08', '', 25, 'http://localhost/wordpress/2018/03/22/25-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-03-22 14:34:18', '2018-03-22 14:34:18', 'You can find our campus clinic in the 8th floor of the Devesse Building.', 'About Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-22 14:34:18', '2018-03-22 14:34:18', '', 31, 'http://localhost/wordpress/2018/03/22/31-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-03-22 14:35:35', '2018-03-22 14:35:35', '{\n    \"college-education::theme_header_fix\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:35:35\"\n    },\n    \"college-education::menustyle\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:35:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '065678b2-d7fd-40af-b301-f910e1c7fad7', '', '', '2018-03-22 14:35:35', '2018-03-22 14:35:35', '', 0, 'http://localhost/wordpress/2018/03/22/065678b2-d7fd-40af-b301-f910e1c7fad7/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-03-22 14:36:32', '2018-03-22 14:36:32', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:36:32\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:36:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e7ea5811-4e5c-4cb7-8547-af7a740b9dfe', '', '', '2018-03-22 14:36:32', '2018-03-22 14:36:32', '', 0, 'http://localhost/wordpress/2018/03/22/e7ea5811-4e5c-4cb7-8547-af7a740b9dfe/', 0, 'customize_changeset', '', 0),
(53, 1, '2018-03-22 14:40:41', '2018-03-22 14:40:41', '', 'cropped-clinic.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-clinic-jpg', '', '', '2018-03-22 14:40:41', '2018-03-22 14:40:41', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/cropped-clinic.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-03-22 14:41:05', '2018-03-22 14:41:05', '', 'cropped-clinic-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-clinic-1-jpg', '', '', '2018-03-22 14:41:05', '2018-03-22 14:41:05', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/cropped-clinic-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-03-22 14:41:28', '2018-03-22 14:41:28', '', '2015-10-09-11-32-281980', '', 'inherit', 'open', 'closed', '', '2015-10-09-11-32-281980', '', '', '2018-03-22 14:41:28', '2018-03-22 14:41:28', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/2015-10-09-11-32-281980.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-03-22 14:42:45', '2018-03-22 14:42:45', '{\n    \"twentysixteen::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/03/cropped-clinic-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:41:42\"\n    },\n    \"twentysixteen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2018/03/cropped-clinic-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2018/03/cropped-clinic-1.jpg\",\n            \"timestamp\": 1521729665854,\n            \"attachment_id\": 54,\n            \"width\": 1200,\n            \"height\": 280\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:41:42\"\n    },\n    \"twentysixteen::background_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/03/2015-10-09-11-32-281980.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:41:42\"\n    },\n    \"twentysixteen::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:41:42\"\n    },\n    \"twentysixteen::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:41:42\"\n    },\n    \"twentysixteen::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:41:42\"\n    },\n    \"twentysixteen::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:41:42\"\n    },\n    \"twentysixteen::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:42:43\"\n    },\n    \"twentysixteen::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:42:43\"\n    },\n    \"twentysixteen::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:42:43\"\n    },\n    \"nav_menu_item[39]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 25,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:42:43\"\n    },\n    \"nav_menu_item[41]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 29,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/dental-clinic/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Dental Clinic\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-22 14:42:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e505ad6-5e38-40a6-9352-38e9098d519f', '', '', '2018-03-22 14:42:45', '2018-03-22 14:42:45', '', 0, 'http://localhost/wordpress/?p=56', 0, 'customize_changeset', '', 0),
(64, 1, '2018-03-22 14:55:12', '2018-03-22 14:55:12', 'Saint Louis University\'s Maryheights Campus consists of the School of Accountancy and Business Management (SABM) as well as the School of Computer and Information Sciences (SCIS).\r\n\r\nStudents and faculties are working together to make the campus an educational and friendly environment as much as possible.\r\n\r\n[metaslider id=\"57\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-22 14:55:12', '2018-03-22 14:55:12', '', 25, 'http://localhost/wordpress/2018/03/22/25-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-03-22 14:56:46', '2018-03-22 14:56:46', 'Saint Louis University\'s Maryheights Campus consists of the School of Accountancy and Business Management (SABM) as well as the School of Computer and Information Sciences (SCIS).\r\n\r\nStudents and faculties are working together to make the campus an educational and friendly environment as much as possible.\r\n\r\n[metaslider id=\"57\"]\r\n\r\nMoreover, this is just a string of characters combined together to form a word, words together produces sentences. And sentences joined becomes a paragraph. Wow', 'Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-22 14:56:46', '2018-03-22 14:56:46', '', 25, 'http://localhost/wordpress/2018/03/22/25-revision-v1/', 0, 'revision', '', 0),
(67, 6, '2018-03-25 14:21:51', '2018-03-25 14:21:51', '<h1>Medical Clinic Procedure</h1>\n<h2 style=\"text-align: left;\"><strong>Step 1</strong> Get your medical form:</h2>\n<p style=\"text-align: left;\">First you need to find your medical form in the alphabetically ranged drawer.</p>\n<p style=\"text-align: center;\">***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***</p>\n\n<h2><strong>Step 2</strong> Tell your medical problem to the nurse on-duty and queue up for a check up:</h2>\nThe nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.\n<h2><strong>Step 3</strong> Get a quick check-up with the doctor on-duty:</h2>\nInside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.\n<h2><strong>Step 4 </strong>Get your medication and treatment from the nurse on-duty:</h2>\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\n&nbsp;\n<h1>Events</h1>\n<h2>Blood Donation:</h2>\nRed Cross will hold a Blood Donation Drive this April 25 - 26 in Waldo Perfecto Bldg and Devesse Bldg.', 'MEDICAL CLINIC', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2018-03-25 14:21:51', '2018-03-25 14:21:51', '', 27, 'http://localhost/wordpress/2018/03/25/27-autosave-v1/', 0, 'revision', '', 0),
(68, 6, '2018-03-25 12:56:37', '2018-03-25 12:56:37', '<h1>Medical Clinic Procedure:<h1>\r\n\r\n<p>Step 1: First you need to find your (medical or dental) form in the drawer.</p>\r\n</br>\r\n***If this is your fist visit to the clinic, the student assistant or the nurse will give you a form to be filled out. ***\r\n<p>Step 2: The nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.</p>\r\n<p>Step 3: Inside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.</p>\r\n<p>Step 4: After the check-up, the doctor will give you the appropriate medication or treatment based on the findings.</p>\r\n</br>\r\n***If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.***\r\n***If more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.***', 'Medical Clinic', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-25 12:56:37', '2018-03-25 12:56:37', '', 27, 'http://localhost/wordpress/2018/03/25/27-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(69, 6, '2018-03-25 12:58:50', '2018-03-25 12:58:50', '<h1>Medical Clinic Procedure:</h1>\r\n\r\n<p>Step 1: First you need to find your (medical or dental) form in the drawer.</p>\r\n</br>\r\n***If this is your fist visit to the clinic, the student assistant or the nurse will give you a form to be filled out. ***\r\n<p>Step 2: The nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.</p>\r\n<p>Step 3: Inside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.</p>\r\n<p>Step 4: After the check-up, the doctor will give you the appropriate medication or treatment based on the findings.</p>\r\n</br>\r\n***If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.***\r\n***If more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.***', 'Medical Clinic', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-25 12:58:50', '2018-03-25 12:58:50', '', 27, 'http://localhost/wordpress/2018/03/25/27-revision-v1/', 0, 'revision', '', 0),
(70, 6, '2018-03-25 12:59:15', '2018-03-25 12:59:15', '<h1>Medical Clinic Procedure:</h1>\r\n\r\n<p>Step 1: First you need to find your (medical or dental) form in the drawer.</br>\r\n***If this is your fist visit to the clinic, the student assistant or the nurse will give you a form to be filled out. ***</p>\r\n<p>Step 2: The nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.</p>\r\n<p>Step 3: Inside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.</p>\r\n<p>Step 4: After the check-up, the doctor will give you the appropriate medication or treatment based on the findings.</p>\r\n</br>\r\n***If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.***\r\n***If more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.***', 'Medical Clinic', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-25 12:59:15', '2018-03-25 12:59:15', '', 27, 'http://localhost/wordpress/2018/03/25/27-revision-v1/', 0, 'revision', '', 0),
(71, 6, '2018-03-25 13:00:13', '2018-03-25 13:00:13', '<h1>Medical Clinic Procedure:</h1>\r\n<p style=\"text-align: left;\">Step 1: First you need to find your (medical or dental) form in the drawer.</p>\r\n<p style=\"text-align: center;\">***If this is your fist visit to the clinic, the student assistant or the nurse will give you a form to be filled out. ***</p>\r\nStep 2: The nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.\r\n\r\nStep 3: Inside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.\r\n\r\nStep 4: After the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">\r\n***If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.***\r\n***If more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.***</p>', 'Medical Clinic', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-25 13:00:13', '2018-03-25 13:00:13', '', 27, 'http://localhost/wordpress/2018/03/25/27-revision-v1/', 0, 'revision', '', 0),
(72, 6, '2018-03-25 13:04:46', '2018-03-25 13:04:46', '<h1>Medical Clinic Procedure:</h1>\r\n<p style=\"text-align: left;\"><strong>Step 1</strong> Get your medical form:\r\nFirst you need to find your medical form in the drawer.</p>\r\n<p style=\"text-align: center;\">***<em>If this is your fist visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***</p>\r\n<strong>Step 2</strong> Tell your medical problem to the nurse on duty:\r\nThe nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.\r\n\r\n<strong>Step 3</strong> Get a quick check-up with the doctor on duty:\r\nInside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.\r\n\r\n<strong>Step 4 </strong>Get your medication and treatment from the nurse:\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>', 'Medical Clinic', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-25 13:04:46', '2018-03-25 13:04:46', '', 27, 'http://localhost/wordpress/2018/03/25/27-revision-v1/', 0, 'revision', '', 0),
(73, 6, '2018-03-25 13:06:16', '2018-03-25 13:06:16', '<h1>Medical Clinic Procedure:</h1>\r\n<h2 style=\"text-align: left;\"><strong>Step 1</strong> Get your medical form:</h2>\r\n<p style=\"text-align: left;\">\r\nFirst you need to find your medical form in the drawer.</p>\r\n<p style=\"text-align: center;\">***<em>If this is your fist visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***</p>\r\n\r\n<h2><strong>Step 2</strong> Tell your medical problem to the nurse on duty:</h2>\r\nThe nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.\r\n<h2><strong>Step 3</strong> Get a quick check-up with the doctor on duty:</h2>\r\nInside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.\r\n<h2><strong>Step 4 </strong>Get your medication and treatment from the nurse:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>', 'Medical Clinic', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-25 13:06:16', '2018-03-25 13:06:16', '', 27, 'http://localhost/wordpress/2018/03/25/27-revision-v1/', 0, 'revision', '', 0),
(74, 6, '2018-03-25 14:07:28', '2018-03-25 14:07:28', '<h1>Medical Clinic Procedure:</h1>\r\n<h2 style=\"text-align: left;\"><strong>Step 1</strong> Get your medical form:</h2>\r\n<p style=\"text-align: left;\">First you need to find your medical form in the alphabetically ranged drawer.</p>\r\n<p style=\"text-align: center;\">***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***</p>\r\n\r\n<h2><strong>Step 2</strong> Tell your medical problem to the nurse on-duty:</h2>\r\nThe nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.\r\n<h2><strong>Step 3</strong> Get a quick check-up with the doctor on-duty:</h2>\r\nInside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.\r\n<h2><strong>Step 4 </strong>Get your medication and treatment from the nurse on-duty:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n&nbsp;\r\n<h1>Events</h1>\r\n<h2>Blood Donation:</h2>\r\nRed Cross will hold a Blood Donation Drive this April 25 - 26 in Waldo Perfecto Bldg and Devesse Bldg.', 'MEDICAL CLINIC', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-25 14:07:28', '2018-03-25 14:07:28', '', 27, 'http://localhost/wordpress/2018/03/25/27-revision-v1/', 0, 'revision', '', 0),
(75, 6, '2018-03-25 14:11:41', '2018-03-25 14:11:41', 'The dental clinic of Saint Louis University provides the best service among any university\r\nThe dental clinic of Saint Louis University provides the best service among any university\r\nThe dental clinic of Saint Louis University provides the best service among any university\r\nThe dental clinic of Saint Louis University provides the best service among any university', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-25 14:11:41', '2018-03-25 14:11:41', '', 29, 'http://localhost/wordpress/2018/03/25/29-revision-v1/', 0, 'revision', '', 0),
(76, 6, '2018-03-25 14:40:21', '2018-03-25 14:40:21', '<h1>Dental Clinic Procedure</h1>\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\n\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***\n<h2>Step 2 Queue up for a check-up:</h2>\nAfter getting your form wait for your turn to be checked-up  by the doctor on-duty.\n<h2>Step 3 Get a Check up from the doctor:</h2>\nInside the dental clinic you will be treated to a dental examination based on your current dental problem.\n<h2>Step 4 Get the proper medication and treatment:</h2>\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\n\n<h1>Dental Health Tips:</h1>\n<ul>\n 	<li><strong>Brush and Floss twice a day:</strong>\nWhile you should brush at least once a day, twice a day is best! The best time to brush is after you eat a meal, and you should also floss at the same time. You need to brush your teeth for at least 2 minutes, making sure to cover all of your teeth.</li>\n 	<li><strong>Drink Lots of Water:\n</strong>Water is not only important for your overall health, but it encourages saliva production which is important for healthy teeth. Water is also much healthier and better for your teeth than sugary drinks and sodas. Over time, bacteria on your teeth use sugar to create plaque, which if not dealt with will cause teeth decay!</li>\n 	<li><strong>Avoid Sugary Foods:\n</strong>You should not only pay attention to sugar in drinks, but also in the foods you eat. Try to avoid eating a lot of sugary foods and candy. If you do eat a lot of sugar, make sure you brush your teeth well after eating. Sugar greatly increases the amount of plaque on your teeth, and if you have a sweet tooth it’s important to be even more conscious about how well you brush your teeth.</li>\n 	<li><strong>See a Dentist Every 6 Months:\n\n</strong></li>\n</ul>', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-autosave-v1', '', '', '2018-03-25 14:40:21', '2018-03-25 14:40:21', '', 29, 'http://localhost/wordpress/2018/03/25/29-autosave-v1/', 0, 'revision', '', 0),
(77, 6, '2018-03-25 14:18:49', '2018-03-25 14:18:49', '<h1>Dental Clinic Procedure</h1>\r\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\r\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\r\n\r\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-25 14:18:49', '2018-03-25 14:18:49', '', 29, 'http://localhost/wordpress/2018/03/25/29-revision-v1/', 0, 'revision', '', 0),
(78, 6, '2018-03-25 14:30:10', '2018-03-25 14:30:10', '<h1>Dental Clinic Procedure</h1>\r\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\r\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\r\n\r\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***\r\n<h2>Step 2 Queue up for a check-up:</h2>\r\nAfter getting your form wait for your turn to be checked-up  by the doctor on-duty.\r\n<h2>Step 3 Get a Check up from the doctor:</h2>\r\nInside the dental clinic you will be treated to a dental examination based on your current dental problem.\r\n<h2>Step 4 Get the proper medication and treatment:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-25 14:30:10', '2018-03-25 14:30:10', '', 29, 'http://localhost/wordpress/2018/03/25/29-revision-v1/', 0, 'revision', '', 0),
(79, 6, '2018-03-25 14:40:54', '2018-03-25 14:40:54', '<h1>Dental Clinic Procedure</h1>\r\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\r\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\r\n\r\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***\r\n<h2>Step 2 Queue up for a check-up:</h2>\r\nAfter getting your form wait for your turn to be checked-up  by the doctor on-duty.\r\n<h2>Step 3 Get a Check up from the doctor:</h2>\r\nInside the dental clinic you will be treated to a dental examination based on your current dental problem.\r\n<h2>Step 4 Get the proper medication and treatment:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n\r\n<h1>Dental Health Tips:</h1>\r\n<ul>\r\n 	<li><strong>Brush and Floss twice a day:</strong>\r\nWhile you should brush at least once a day, twice a day is best! The best time to brush is after you eat a meal, and you should also floss at the same time. You need to brush your teeth for at least 2 minutes, making sure to cover all of your teeth.</li>\r\n 	<li><strong>Drink Lots of Water:\r\n</strong>Water is not only important for your overall health, but it encourages saliva production which is important for healthy teeth. Water is also much healthier and better for your teeth than sugary drinks and sodas. Over time, bacteria on your teeth use sugar to create plaque, which if not dealt with will cause teeth decay!</li>\r\n 	<li><strong>Avoid Sugary Foods:\r\n</strong>You should not only pay attention to sugar in drinks, but also in the foods you eat. Try to avoid eating a lot of sugary foods and candy. If you do eat a lot of sugar, make sure you brush your teeth well after eating. Sugar greatly increases the amount of plaque on your teeth, and if you have a sweet tooth it’s important to be even more conscious about how well you brush your teeth.</li>\r\n 	<li><strong>See a Dentist Every 6 Months:\r\n</strong>Most importantly, make sure you are visiting a dentist regularly! Dentists can thoroughly clean your teeth, and check for cavities, plaque and any other dental issues that need to be addressed.</li>\r\n</ul>', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-25 14:40:54', '2018-03-25 14:40:54', '', 29, 'http://localhost/wordpress/2018/03/25/29-revision-v1/', 0, 'revision', '', 0),
(80, 6, '2018-03-25 17:48:59', '2018-03-25 17:48:59', 'Saint Louis University\'s Maryheights Campus consists of the School of Accountancy and Business Management (SABM) as well as the School of Computer and Information Sciences (SCIS).\n\nStudents and faculties are working together to make the campus an educational and friendly environment as much as possible.\n\n[metaslider id=\"57\"]\n\nWith the help of both medical and dental clinic they create a safer environment for the students, having the appropriate facilities', 'Home', '', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2018-03-25 17:48:59', '2018-03-25 17:48:59', '', 25, 'http://localhost/wordpress/2018/03/25/25-autosave-v1/', 0, 'revision', '', 0),
(81, 6, '2018-03-25 17:49:59', '2018-03-25 17:49:59', 'Saint Louis University\'s Maryheights Campus consists of the School of Accountancy and Business Management (SABM) as well as the School of Computer and Information Sciences (SCIS).\r\n\r\nStudents and faculties are working together to make the campus an educational and friendly environment as much as possible.\r\n\r\n[metaslider id=\"57\"]\r\n\r\nWith the help of both medical and dental clinic they create a safer environment for the students, having the appropriate facilities, equipment, and treatment for the students who would feel any medical problems.', 'Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-25 17:49:59', '2018-03-25 17:49:59', '', 25, 'http://localhost/wordpress/2018/03/25/25-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-03-27 05:26:54', '2018-03-27 05:26:54', '<h1>Medical Clinic Procedure:</h1>\r\n<h2 style=\"text-align: left;\"><strong>Step 1</strong> Get your medical form:</h2>\r\n<p style=\"text-align: left;\">First you need to find your medical form in the alphabetically ranged drawer.</p>\r\n<p style=\"text-align: center;\">***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***</p>\r\n\r\n<h2><strong>Step 2</strong> Tell your medical problem to the nurse on-duty:</h2>\r\nThe nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.\r\n<h2><strong>Step 3</strong> Get a quick check-up with the doctor on-duty:</h2>\r\nInside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.\r\n<h2><strong>Step 4 </strong>Get your medication and treatment from the nurse on-duty:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n&nbsp;\r\n<h1>Events</h1>\r\n<h2>Blood Donation:</h2>\r\nRed Cross will hold a Blood Donation Drive this April 25 - 26, 2018 in Waldo Perfecto Bldg and Devesse Bldg.', 'MEDICAL CLINIC', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-27 05:26:54', '2018-03-27 05:26:54', '', 27, 'http://localhost/wordpress/2018/03/27/27-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-03-31 15:03:59', '2018-03-31 15:03:59', 'Saint Louis University\'s Maryheights Campus consists of the School of Accountancy and Business Management (SABM) as well as the School of Computer and Information Sciences (SCIS).\r\n\r\nStudents and faculties are working together to make the campus an educational and friendly environment as much as possible.\r\n\r\n[metaslider id=\"57\"]\r\n\r\nWith the help of both medical and dental clinic they create a safer environment for the students, having the appropriate facilities, equipment, and treatment for the students who would feel any medical problems.', 'HOME', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-31 15:03:59', '2018-03-31 15:03:59', '', 25, 'http://localhost/wordpress/2018/03/31/25-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-03-31 15:05:34', '2018-03-31 15:05:34', '', 'water', '', 'inherit', 'open', 'closed', '', '14728ce21cae8c9a5a59a53ce41cabf0', '', '', '2018-03-31 15:13:49', '2018-03-31 15:13:49', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/14728ce21cae8c9a5a59a53ce41cabf0.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-03-27 05:46:44', '2018-03-27 05:46:44', '', 'Slider 88 - image', '', 'trash', 'closed', 'closed', '', 'slider-88-image__trashed', '', '', '2018-03-31 15:00:35', '2018-03-31 15:00:35', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=89', 0, 'ml-slide', '', 0),
(90, 1, '2018-03-27 05:47:14', '2018-03-27 05:47:14', '', 'Slider 88 - image', '', 'trash', 'closed', 'closed', '', 'slider-88-image-2__trashed', '', '', '2018-03-31 15:00:35', '2018-03-31 15:00:35', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=90', 1, 'ml-slide', '', 0),
(91, 1, '2018-03-27 05:48:27', '2018-03-27 05:48:27', '<h1>Dental Clinic Procedure</h1>\r\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\r\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\r\n\r\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***\r\n<h2>Step 2 Queue up for a check-up:</h2>\r\nAfter getting your form wait for your turn to be checked-up  by the doctor on-duty.\r\n<h2>Step 3 Get a Check up from the doctor:</h2>\r\nInside the dental clinic you will be treated to a dental examination based on your current dental problem.\r\n<h2>Step 4 Get the proper medication and treatment:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n\r\n<h1>Dental Health Tips:</h1>\r\n<ul>\r\n 	<li><strong>Brush and Floss twice a day:</strong>\r\nWhile you should brush at least once a day, twice a day is best! The best time to brush is after you eat a meal, and you should also floss at the same time. You need to brush your teeth for at least 2 minutes, making sure to cover all of your teeth.</li>\r\n 	<li><strong>Drink Lots of Water:\r\n</strong>Water is not only important for your overall health, but it encourages saliva production which is important for healthy teeth. Water is also much healthier and better for your teeth than sugary drinks and sodas. Over time, bacteria on your teeth use sugar to create plaque, which if not dealt with will cause teeth decay!</li>\r\n 	<li><strong>Avoid Sugary Foods:\r\n</strong>You should not only pay attention to sugar in drinks, but also in the foods you eat. Try to avoid eating a lot of sugary foods and candy. If you do eat a lot of sugar, make sure you brush your teeth well after eating. Sugar greatly increases the amount of plaque on your teeth, and if you have a sweet tooth it’s important to be even more conscious about how well you brush your teeth.</li>\r\n 	<li><strong>See a Dentist Every 6 Months:\r\n</strong>Most importantly, make sure you are visiting a dentist regularly! Dentists can thoroughly clean your teeth, and check for cavities, plaque and any other dental issues that need to be addressed.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n[metaslider id=\"88\"]', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-27 05:48:27', '2018-03-27 05:48:27', '', 29, 'http://localhost/wordpress/2018/03/27/29-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-03-27 06:00:09', '2018-03-27 06:00:09', '<h1>Dental Clinic Procedure</h1>\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\n\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***\n<h2>Step 2 Queue up for a check-up:</h2>\nAfter getting your form wait for your turn to be checked-up  by the doctor on-duty.\n<h2>Step 3 Get a Check up from the doctor:</h2>\nInside the dental clinic you will be treated to a dental examination based on your current dental problem.\n<h2>Step 4 Get the proper medication and treatment:</h2>\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\n\n<h1>Dental Health Tips:</h1>\n<ul>\n 	<li><strong>Brush and Floss twice a day:</strong>\nWhile you should brush at least once a day, twice a day is best! The best time to brush is after you eat a meal, and you should also floss at the same time. You need to brush your teeth for at least 2 minutes, making sure to cover all of your teeth.</li>\n 	<li><strong>Drink Lots of Water:\n</strong>Water is not only important for your overall health, but it encourages saliva production which is important for healthy teeth. Water is also much healthier and better for your teeth than sugary drinks and sodas. Over time, bacteria on your teeth use sugar to create plaque, which if not dealt with will cause teeth decay!</li>\n 	<li><strong>Avoid Sugary Foods:\n</strong>You should not only pay attention to sugar in drinks, but also in the foods you eat. Try to avoid eating a lot of sugary foods and candy. If you do eat a lot of sugar, make sure you brush your teeth well after eating. Sugar greatly increases the amount of plaque on your teeth, and if you have a sweet tooth it’s important to be even more conscious about how well you brush your teeth.</li>\n 	<li><strong>See a Dentist Every 6 Months:\n</strong>Most importantly, make sure you are visiting a dentist regularly! Dentists can thoroughly clean your teeth, and check for cavities, plaque and any other dental issues that need to be addressed.</li>\n</ul>\n&nbsp;\n\n<img class=\"size-medium wp-image-84 alignleft\" src=\"http://localhost/wordpress/wp-content/uploads/2018/03/dental-Facts-247x300.jpg\" alt=\"\" width=\"247\" height=\"300\" />    <img class=\"size-medium wp-image-85 alignright\" src=\"http://localhost/wordpress/wp-content/uploads/2018/03/Dental-Tips-300x212.jpg\" alt=\"\" width=\"300\" height=\"212\" />', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-autosave-v1', '', '', '2018-03-27 06:00:09', '2018-03-27 06:00:09', '', 29, 'http://localhost/wordpress/2018/03/27/29-autosave-v1/', 0, 'revision', '', 0),
(94, 1, '2018-03-27 06:00:55', '2018-03-27 06:00:55', '<h1>Dental Clinic Procedure</h1>\r\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\r\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\r\n\r\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***\r\n<h2>Step 2 Queue up for a check-up:</h2>\r\nAfter getting your form wait for your turn to be checked-up  by the doctor on-duty.\r\n<h2>Step 3 Get a Check up from the doctor:</h2>\r\nInside the dental clinic you will be treated to a dental examination based on your current dental problem.\r\n<h2>Step 4 Get the proper medication and treatment:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n\r\n<h1>Dental Health Tips:</h1>\r\n<ul>\r\n 	<li><strong>Brush and Floss twice a day:</strong>\r\nWhile you should brush at least once a day, twice a day is best! The best time to brush is after you eat a meal, and you should also floss at the same time. You need to brush your teeth for at least 2 minutes, making sure to cover all of your teeth.</li>\r\n 	<li><strong>Drink Lots of Water:\r\n</strong>Water is not only important for your overall health, but it encourages saliva production which is important for healthy teeth. Water is also much healthier and better for your teeth than sugary drinks and sodas. Over time, bacteria on your teeth use sugar to create plaque, which if not dealt with will cause teeth decay!</li>\r\n 	<li><strong>Avoid Sugary Foods:\r\n</strong>You should not only pay attention to sugar in drinks, but also in the foods you eat. Try to avoid eating a lot of sugary foods and candy. If you do eat a lot of sugar, make sure you brush your teeth well after eating. Sugar greatly increases the amount of plaque on your teeth, and if you have a sweet tooth it’s important to be even more conscious about how well you brush your teeth.</li>\r\n 	<li><strong>See a Dentist Every 6 Months:\r\n</strong>Most importantly, make sure you are visiting a dentist regularly! Dentists can thoroughly clean your teeth, and check for cavities, plaque and any other dental issues that need to be addressed.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-27 06:00:55', '2018-03-27 06:00:55', '', 29, 'http://localhost/wordpress/2018/03/27/29-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-03-27 06:00:16', '2018-03-27 06:00:16', '<h1>Dental Clinic Procedure</h1>\r\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\r\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\r\n\r\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***\r\n<h2>Step 2 Queue up for a check-up:</h2>\r\nAfter getting your form wait for your turn to be checked-up  by the doctor on-duty.\r\n<h2>Step 3 Get a Check up from the doctor:</h2>\r\nInside the dental clinic you will be treated to a dental examination based on your current dental problem.\r\n<h2>Step 4 Get the proper medication and treatment:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n\r\n<h1>Dental Health Tips:</h1>\r\n<ul>\r\n 	<li><strong>Brush and Floss twice a day:</strong>\r\nWhile you should brush at least once a day, twice a day is best! The best time to brush is after you eat a meal, and you should also floss at the same time. You need to brush your teeth for at least 2 minutes, making sure to cover all of your teeth.</li>\r\n 	<li><strong>Drink Lots of Water:\r\n</strong>Water is not only important for your overall health, but it encourages saliva production which is important for healthy teeth. Water is also much healthier and better for your teeth than sugary drinks and sodas. Over time, bacteria on your teeth use sugar to create plaque, which if not dealt with will cause teeth decay!</li>\r\n 	<li><strong>Avoid Sugary Foods:\r\n</strong>You should not only pay attention to sugar in drinks, but also in the foods you eat. Try to avoid eating a lot of sugary foods and candy. If you do eat a lot of sugar, make sure you brush your teeth well after eating. Sugar greatly increases the amount of plaque on your teeth, and if you have a sweet tooth it’s important to be even more conscious about how well you brush your teeth.</li>\r\n 	<li><strong>See a Dentist Every 6 Months:\r\n</strong>Most importantly, make sure you are visiting a dentist regularly! Dentists can thoroughly clean your teeth, and check for cavities, plaque and any other dental issues that need to be addressed.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<img class=\"size-medium wp-image-84 alignleft\" src=\"http://localhost/wordpress/wp-content/uploads/2018/03/dental-Facts-247x300.jpg\" alt=\"\" width=\"247\" height=\"300\" />    <img class=\"size-medium wp-image-85 alignright\" src=\"http://localhost/wordpress/wp-content/uploads/2018/03/Dental-Tips-300x212.jpg\" alt=\"\" width=\"300\" height=\"212\" />', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-27 06:00:16', '2018-03-27 06:00:16', '', 29, 'http://localhost/wordpress/2018/03/27/29-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-03-27 06:01:27', '2018-03-27 06:01:27', '<h1>Dental Clinic Procedure</h1>\r\n<h2>Step 1 Grab your dental history form from the alphabetically arranged drawers:</h2>\r\nIf you have a dental problem head to the  campus\'s dental clinic and find your dental form from the drawers.\r\n\r\n***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***\r\n<h2>Step 2 Queue up for a check-up:</h2>\r\nAfter getting your form wait for your turn to be checked-up  by the doctor on-duty.\r\n<h2>Step 3 Get a Check up from the doctor:</h2>\r\nInside the dental clinic you will be treated to a dental examination based on your current dental problem.\r\n<h2>Step 4 Get the proper medication and treatment:</h2>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n\r\n<h1>Dental Health Tips:</h1>\r\n<ul>\r\n 	<li><strong>Brush and Floss twice a day:</strong>\r\nWhile you should brush at least once a day, twice a day is best! The best time to brush is after you eat a meal, and you should also floss at the same time. You need to brush your teeth for at least 2 minutes, making sure to cover all of your teeth.</li>\r\n 	<li><strong>Drink Lots of Water:\r\n</strong>Water is not only important for your overall health, but it encourages saliva production which is important for healthy teeth. Water is also much healthier and better for your teeth than sugary drinks and sodas. Over time, bacteria on your teeth use sugar to create plaque, which if not dealt with will cause teeth decay!</li>\r\n 	<li><strong>Avoid Sugary Foods:\r\n</strong>You should not only pay attention to sugar in drinks, but also in the foods you eat. Try to avoid eating a lot of sugary foods and candy. If you do eat a lot of sugar, make sure you brush your teeth well after eating. Sugar greatly increases the amount of plaque on your teeth, and if you have a sweet tooth it’s important to be even more conscious about how well you brush your teeth.</li>\r\n 	<li><strong>See a Dentist Every 6 Months:\r\n</strong>Most importantly, make sure you are visiting a dentist regularly! Dentists can thoroughly clean your teeth, and check for cavities, plaque and any other dental issues that need to be addressed.</li>\r\n</ul>\r\n[metaslider id=\"88\"]\r\n\r\n&nbsp;', 'DENTAL CLINIC', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-27 06:01:27', '2018-03-27 06:01:27', '', 29, 'http://localhost/wordpress/2018/03/27/29-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-03-27 06:11:05', '2018-03-27 06:11:05', '<h1>Medical Clinic Procedure:</h1>\r\n<h3 style=\"text-align: left;\"><strong>Step 1</strong> Get your medical form:</h3>\r\n<p style=\"text-align: left;\">First you need to find your medical form in the alphabetically ranged drawer.</p>\r\n<p style=\"text-align: center;\">***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***</p>\r\n\r\n<h3><strong>Step 2</strong> Tell your medical problem to the nurse on-duty:</h3>\r\nThe nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.\r\n<h3><strong>Step 3</strong> Get a quick check-up with the doctor on-duty:</h3>\r\nInside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.\r\n<h3><strong>Step 4 </strong>Get your medication and treatment from the nurse on-duty:</h3>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n&nbsp;\r\n<h1>Events</h1>\r\n<h3>Blood Donation:</h3>\r\nRed Cross will hold a Blood Donation Drive this April 25 - 26, 2018 in Waldo Perfecto Bldg and Devesse Bldg.', 'MEDICAL CLINIC', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-27 06:11:05', '2018-03-27 06:11:05', '', 27, 'http://localhost/wordpress/2018/03/27/27-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-03-27 06:12:03', '2018-03-27 06:12:03', '<h1>Medical Clinic Procedure:</h1>\r\n<h3 style=\"text-align: left;\"><strong>Step 1:</strong> Get your medical form</h3>\r\n<p style=\"text-align: left;\">First you need to find your medical form in the alphabetically ranged drawer.</p>\r\n<p style=\"text-align: center;\">***<em>If this is your first visit to the clinic, the student assistant or the nurse will give you a form to be filled out.</em> ***</p>\r\n\r\n<h3><strong>Step 2:</strong> Tell your medical problem to the nurse on-duty</h3>\r\nThe nurse will ask you about your medical problem and will write it down on the form, then you will be instructed to queue up for the doctor on-duty.\r\n<h3><strong>Step 3:</strong> Get a quick check-up with the doctor on-duty</h3>\r\nInside the doctor\'s room, the doctor will ask for your form and will start to evaluate your condition and health for your medical problem stated on the form.\r\n<h3><strong>Step 4: </strong>Get your medication and treatment from the nurse on-duty</h3>\r\nAfter the check-up, the doctor will give you the appropriate medication or treatment based on the findings.\r\n<p style=\"text-align: center;\">***<em>If the medicine that the doctor prescribed to you is available in the clinic, then they will give you your medicine for free.</em>***\r\n***I<em>f more medical evaluation will be needed the doctor will give a slip that will allow you to take further examination either from outside hospitals and clinics or for a follow up check-up.</em>***</p>\r\n&nbsp;\r\n<h1>Events</h1>\r\n<h3>Blood Donation:</h3>\r\nRed Cross will hold a Blood Donation Drive this April 25 - 26, 2018 in Waldo Perfecto Bldg and Devesse Bldg.', 'MEDICAL CLINIC', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-27 06:12:03', '2018-03-27 06:12:03', '', 27, 'http://localhost/wordpress/2018/03/27/27-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, '57', '57', 0),
(4, '88', '88', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(39, 2, 0),
(41, 2, 0),
(43, 2, 0),
(40, 2, 0),
(44, 2, 0),
(61, 3, 0),
(62, 3, 0),
(63, 3, 0),
(89, 4, 0),
(90, 4, 0),
(115, 4, 0),
(116, 4, 0),
(117, 4, 0),
(118, 4, 0),
(119, 4, 0),
(122, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'ml-slider', '', 0, 3),
(4, 4, 'ml-slider', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'arvindagang'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"97a36d598959490e5bba51af3b9f17557b4c0695c4b3080670bd9dfb33b63950\";a:4:{s:10:\"expiration\";i:1522668861;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1522496061;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&mfold=f&editor=tinymce&imgsize=full'),
(18, 1, 'wp_user-settings-time', '1522509854'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '98'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 2, 'nickname', 'prins'),
(25, 2, 'first_name', 'prins'),
(26, 2, 'last_name', 'onate'),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(36, 2, 'wp_user_level', '10'),
(37, 2, 'dismissed_wp_pointers', ''),
(38, 3, 'nickname', 'michael'),
(39, 3, 'first_name', 'michael'),
(40, 3, 'last_name', 'pinto'),
(41, 3, 'description', ''),
(42, 3, 'rich_editing', 'true'),
(43, 3, 'syntax_highlighting', 'true'),
(44, 3, 'comment_shortcuts', 'false'),
(45, 3, 'admin_color', 'fresh'),
(46, 3, 'use_ssl', '0'),
(47, 3, 'show_admin_bar_front', 'true'),
(48, 3, 'locale', ''),
(49, 3, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(50, 3, 'wp_user_level', '10'),
(51, 3, 'dismissed_wp_pointers', ''),
(52, 4, 'nickname', 'jezhreel'),
(53, 4, 'first_name', 'jezhreel'),
(54, 4, 'last_name', 'baquiran'),
(55, 4, 'description', ''),
(56, 4, 'rich_editing', 'true'),
(57, 4, 'syntax_highlighting', 'true'),
(58, 4, 'comment_shortcuts', 'false'),
(59, 4, 'admin_color', 'fresh'),
(60, 4, 'use_ssl', '0'),
(61, 4, 'show_admin_bar_front', 'true'),
(62, 4, 'locale', ''),
(63, 4, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(64, 4, 'wp_user_level', '10'),
(65, 4, 'dismissed_wp_pointers', ''),
(66, 5, 'nickname', 'ervszz'),
(67, 5, 'first_name', 'ervin'),
(68, 5, 'last_name', 'fernandez'),
(69, 5, 'description', ''),
(70, 5, 'rich_editing', 'true'),
(71, 5, 'syntax_highlighting', 'true'),
(72, 5, 'comment_shortcuts', 'false'),
(73, 5, 'admin_color', 'fresh'),
(74, 5, 'use_ssl', '0'),
(75, 5, 'show_admin_bar_front', 'true'),
(76, 5, 'locale', ''),
(77, 5, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(78, 5, 'wp_user_level', '10'),
(79, 5, 'dismissed_wp_pointers', ''),
(80, 6, 'nickname', 'casey'),
(81, 6, 'first_name', 'casey'),
(82, 6, 'last_name', 'bernabe'),
(83, 6, 'description', ''),
(84, 6, 'rich_editing', 'true'),
(85, 6, 'syntax_highlighting', 'true'),
(86, 6, 'comment_shortcuts', 'false'),
(87, 6, 'admin_color', 'fresh'),
(88, 6, 'use_ssl', '0'),
(89, 6, 'show_admin_bar_front', 'true'),
(90, 6, 'locale', ''),
(91, 6, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(92, 6, 'wp_user_level', '10'),
(93, 6, 'dismissed_wp_pointers', ''),
(94, 7, 'nickname', 'victoria'),
(95, 7, 'first_name', 'victoria'),
(96, 7, 'last_name', 'buse'),
(97, 7, 'description', ''),
(98, 7, 'rich_editing', 'true'),
(99, 7, 'syntax_highlighting', 'true'),
(100, 7, 'comment_shortcuts', 'false'),
(101, 7, 'admin_color', 'fresh'),
(102, 7, 'use_ssl', '0'),
(103, 7, 'show_admin_bar_front', 'true'),
(104, 7, 'locale', ''),
(105, 7, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(106, 7, 'wp_user_level', '10'),
(107, 7, 'dismissed_wp_pointers', ''),
(108, 8, 'nickname', 'jpsese'),
(109, 8, 'first_name', 'John Patrick'),
(110, 8, 'last_name', 'Sese'),
(111, 8, 'description', ''),
(112, 8, 'rich_editing', 'true'),
(113, 8, 'syntax_highlighting', 'true'),
(114, 8, 'comment_shortcuts', 'false'),
(115, 8, 'admin_color', 'fresh'),
(116, 8, 'use_ssl', '0'),
(117, 8, 'show_admin_bar_front', 'true'),
(118, 8, 'locale', ''),
(119, 8, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(120, 8, 'wp_user_level', '10'),
(121, 8, 'dismissed_wp_pointers', ''),
(122, 9, 'nickname', 'GenrieG'),
(123, 9, 'first_name', 'Genrie'),
(124, 9, 'last_name', 'Gayaso'),
(125, 9, 'description', ''),
(126, 9, 'rich_editing', 'true'),
(127, 9, 'syntax_highlighting', 'true'),
(128, 9, 'comment_shortcuts', 'false'),
(129, 9, 'admin_color', 'fresh'),
(130, 9, 'use_ssl', '0'),
(131, 9, 'show_admin_bar_front', 'true'),
(132, 9, 'locale', ''),
(133, 9, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(134, 9, 'wp_user_level', '10'),
(135, 9, 'dismissed_wp_pointers', ''),
(136, 6, 'session_tokens', 'a:2:{s:64:\"0c3d3a1e4b4fb60315432aa6298e81a2f21a83412f0d3ccd7f4754cae5833721\";a:4:{s:10:\"expiration\";i:1522153627;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1521980827;}s:64:\"553f0d4f26a4c0b3209bbf073a09c0f76023c0f2fe52157ef15b0547ee4d50a8\";a:4:{s:10:\"expiration\";i:1522203600;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1522030800;}}'),
(137, 6, 'wp_dashboard_quick_press_last_post_id', '66'),
(138, 6, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(139, 6, 'wp_user-settings', 'editor=tinymce'),
(140, 6, 'wp_user-settings-time', '1521982809');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'arvindagang', '$P$BLFGMVVnow1eqW51hZFx.Jj5JscuJV1', 'arvindagang', 'arvin.dagang09@gmail.com', '', '2018-03-22 13:58:58', '', 0, 'arvindagang'),
(2, 'prins', '$P$BAjqLS4jEzv.ufUQY1CybtW85zoN2D.', 'prins', '2165729@slu.edu.ph', '', '2018-03-23 05:10:00', '1521781801:$P$Bl8HVEYIkyNI.tzmrd6aMdwAH5pGl7/', 0, 'prins onate'),
(3, 'michael', '$P$BbF7ji0LtFfUqyuqF1by4o5GLjR9q/.', 'michael', '2000600@slu.edu.ph', '', '2018-03-23 05:10:39', '1521781840:$P$BB7UIOOdUxWY76X6w7bqsWvXfbQyOJ/', 0, 'michael pinto'),
(4, 'jezhreel', '$P$BWVl6pBWVspj.EUOwufHspcS61BlTg.', 'jezhreel', '2167488@slu.edu.ph', '', '2018-03-23 05:11:36', '1521781897:$P$BSs/qJJ1zx1zLGINFnx6sbvAzacA431', 0, 'jezhreel baquiran'),
(5, 'ervszz', '$P$Bec5XC9G/FdAwb9nqAzYS4Cg8Mbn3E1', 'ervszz', '2166348@slu.edu.ph', '', '2018-03-23 05:12:19', '1521781940:$P$BEfuS5CAf6DO8FuAXV3PleH0MP82Nl0', 0, 'ervin fernandez'),
(6, 'casey', '$P$B4XoGufJShwzvwagxZRCgyjF8bGWr90', 'casey', '2162103@slu.edu.ph', '', '2018-03-23 05:13:23', '1521782004:$P$BiNpZ7WDtsHEs0GeU5mTmHM2loXQw1.', 0, 'casey bernabe'),
(7, 'victoria', '$P$BatgtXaUwaEUj6fHUUfQRyaDCvhf5R1', 'victoria', '2160316@slu.edu.ph', '', '2018-03-23 05:13:54', '1521782035:$P$BcK1fnbb6rglMwyw5rf7tfT0nChyB3/', 0, 'victoria buse'),
(8, 'jpsese', '$P$BBrx8g1IE4T1Je7RHxRepUjiCi3HcQ0', 'jpsese', '2167856@slu.edu.ph', '', '2018-03-23 05:14:55', '1521782096:$P$BMqymQmSvCR.Qxah9lu69.FT1E9z780', 0, 'John Patrick Sese'),
(9, 'GenrieG', '$P$BV7ddYh0jpM8Z3lOwCfKcKA221Dpqc.', 'genrieg', '2167978@slu.edu.ph', '', '2018-03-23 05:15:29', '1521782130:$P$BCJvyeYAjCTkJLFKQFgJp..3E5pyNK.', 0, 'Genrie Gayaso');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
