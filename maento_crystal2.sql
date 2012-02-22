-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 17, 2010 at 09:09 PM
-- Server version: 5.1.37
-- PHP Version: 5.2.10-2ubuntu6.4

SET FOREIGN_KEY_CHECKS=0;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `maento_crystal`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminnotification_inbox`
--

DROP TABLE IF EXISTS `adminnotification_inbox`;
CREATE TABLE IF NOT EXISTS `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `severity` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `url` varchar(255) NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_remove` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_SEVERITY` (`severity`),
  KEY `IDX_IS_READ` (`is_read`),
  KEY `IDX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-07-25 01:24:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 0, 0),
(2, 4, '2008-08-02 01:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 0, 0),
(3, 3, '2008-08-02 01:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 0, 0),
(4, 3, '2008-08-13 17:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 0, 0),
(5, 1, '2008-09-02 21:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 0, 0),
(6, 3, '2008-09-15 22:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 0, 0),
(7, 3, '2008-09-17 20:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 0, 0),
(8, 4, '2008-11-07 23:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(9, 3, '2008-11-20 01:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 0, 0),
(10, 3, '2008-11-26 21:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 0, 0),
(11, 3, '2008-12-30 07:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 0, 0),
(12, 2, '2008-12-30 21:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 0, 0),
(13, 2, '2009-01-12 20:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 0, 0),
(14, 3, '2009-01-24 00:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 0, 0),
(15, 3, '2009-02-02 21:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 0, 0),
(16, 3, '2009-02-24 00:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 0, 0),
(17, 3, '2009-02-27 01:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 0, 0),
(18, 2, '2009-03-03 23:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 0, 0),
(19, 3, '2009-03-31 02:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 0, 0),
(20, 3, '2009-04-18 04:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 0, 0),
(21, 3, '2009-05-19 22:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 0, 0),
(22, 3, '2009-05-29 22:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 0, 0),
(23, 3, '2009-06-01 19:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 0, 0),
(24, 3, '2009-07-02 01:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 0, 0),
(25, 3, '2009-07-23 06:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 0, 0),
(26, 4, '2009-08-28 18:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URL‘s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 0, 0),
(27, 2, '2009-09-23 20:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 0, 0),
(28, 4, '2009-09-25 14:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 0, 0),
(29, 4, '2009-10-07 00:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 0, 0),
(30, 4, '2009-12-08 23:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 0, 0),
(31, 4, '2009-12-31 09:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 0, 0),
(32, 4, '2010-02-13 03:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 0, 0),
(33, 3, '2010-02-20 02:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 0, 0),
(34, 4, '2010-04-23 20:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 0),
(35, 4, '2010-05-31 17:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magento’s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 0),
(36, 4, '2010-06-10 20:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 0),
(37, 4, '2010-07-26 21:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 0),
(38, 4, '2010-07-28 05:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 0),
(39, 4, '2010-07-28 20:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_assert`
--

DROP TABLE IF EXISTS `admin_assert`;
CREATE TABLE IF NOT EXISTS `admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assert_type` varchar(20) NOT NULL DEFAULT '',
  `assert_data` text,
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ACL Asserts' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_assert`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE IF NOT EXISTS `admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tree_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `role_type` char(1) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `role_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_id`),
  KEY `parent_id` (`parent_id`,`sort_order`),
  KEY `tree_level` (`tree_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='ACL Roles' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(3, 1, 2, 0, 'U', 1, 'Igor');

-- --------------------------------------------------------

--
-- Table structure for table `admin_rule`
--

DROP TABLE IF EXISTS `admin_rule`;
CREATE TABLE IF NOT EXISTS `admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  `resource_id` varchar(255) NOT NULL DEFAULT '',
  `privileges` varchar(20) NOT NULL DEFAULT '',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0',
  `role_type` char(1) DEFAULT NULL,
  `permission` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `resource` (`resource_id`,`role_id`),
  KEY `role_id` (`role_id`,`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='ACL Rules' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_rule`
--

INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', '', 0, 'G', 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE IF NOT EXISTS `admin_user` (
  `user_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `username` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT NULL,
  `logdate` datetime DEFAULT NULL,
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reload_acl_flag` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `extra` text,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Users' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`) VALUES
(1, 'Igor', 'Gryshko', 'gryzzbox@gmail.com', 'gryzz', 'a8adcd378d2f2a959a353a6e1628f852:bt', '2010-08-21 14:01:28', '2010-08-21 14:01:28', '2010-10-04 20:33:53', 14, 0, 1, 'a:1:{s:11:"configState";a:25:{s:14:"design_package";s:1:"1";s:12:"design_theme";s:1:"1";s:11:"design_head";s:1:"0";s:13:"design_header";s:1:"0";s:13:"design_footer";s:1:"0";s:16:"design_watermark";s:1:"0";s:17:"design_pagination";s:1:"0";s:15:"general_country";s:1:"0";s:14:"general_locale";s:1:"1";s:25:"general_store_information";s:1:"0";s:16:"wishlist_general";s:1:"1";s:14:"wishlist_email";s:1:"0";s:14:"catalog_review";s:1:"0";s:16:"catalog_frontend";s:1:"0";s:15:"catalog_sitemap";s:1:"1";s:20:"catalog_productalert";s:1:"0";s:25:"catalog_productalert_cron";s:1:"0";s:19:"catalog_placeholder";s:1:"0";s:25:"catalog_recently_products";s:1:"0";s:13:"catalog_price";s:1:"0";s:18:"catalog_navigation";s:1:"1";s:14:"catalog_search";s:1:"0";s:11:"catalog_seo";s:1:"0";s:20:"catalog_downloadable";s:1:"0";s:22:"catalog_custom_options";s:1:"0";}}');

-- --------------------------------------------------------

--
-- Table structure for table `api_assert`
--

DROP TABLE IF EXISTS `api_assert`;
CREATE TABLE IF NOT EXISTS `api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assert_type` varchar(20) NOT NULL DEFAULT '',
  `assert_data` text,
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `api_assert`
--


-- --------------------------------------------------------

--
-- Table structure for table `api_role`
--

DROP TABLE IF EXISTS `api_role`;
CREATE TABLE IF NOT EXISTS `api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tree_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `role_type` char(1) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `role_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_id`),
  KEY `parent_id` (`parent_id`,`sort_order`),
  KEY `tree_level` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `api_role`
--


-- --------------------------------------------------------

--
-- Table structure for table `api_rule`
--

DROP TABLE IF EXISTS `api_rule`;
CREATE TABLE IF NOT EXISTS `api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  `resource_id` varchar(255) NOT NULL DEFAULT '',
  `privileges` varchar(20) NOT NULL DEFAULT '',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0',
  `role_type` char(1) DEFAULT NULL,
  `permission` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `resource` (`resource_id`,`role_id`),
  KEY `role_id` (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `api_rule`
--


-- --------------------------------------------------------

--
-- Table structure for table `api_session`
--

DROP TABLE IF EXISTS `api_session`;
CREATE TABLE IF NOT EXISTS `api_session` (
  `user_id` mediumint(9) unsigned NOT NULL,
  `logdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sessid` varchar(40) NOT NULL DEFAULT '',
  KEY `API_SESSION_USER` (`user_id`),
  KEY `API_SESSION_SESSID` (`sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

--
-- Dumping data for table `api_session`
--


-- --------------------------------------------------------

--
-- Table structure for table `api_user`
--

DROP TABLE IF EXISTS `api_user`;
CREATE TABLE IF NOT EXISTS `api_user` (
  `user_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `username` varchar(40) NOT NULL DEFAULT '',
  `api_key` varchar(40) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT NULL,
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reload_acl_flag` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `api_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogindex_aggregation`
--

DROP TABLE IF EXISTS `catalogindex_aggregation`;
CREATE TABLE IF NOT EXISTS `catalogindex_aggregation` (
  `aggregation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `data` mediumtext,
  PRIMARY KEY (`aggregation_id`),
  UNIQUE KEY `IDX_STORE_KEY` (`store_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalogindex_aggregation`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogindex_aggregation_tag`
--

DROP TABLE IF EXISTS `catalogindex_aggregation_tag`;
CREATE TABLE IF NOT EXISTS `catalogindex_aggregation_tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_code` varchar(255) NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `IDX_CODE` (`tag_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalogindex_aggregation_tag`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogindex_aggregation_to_tag`
--

DROP TABLE IF EXISTS `catalogindex_aggregation_to_tag`;
CREATE TABLE IF NOT EXISTS `catalogindex_aggregation_to_tag` (
  `aggregation_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `IDX_AGGREGATION_TAG` (`aggregation_id`,`tag_id`),
  KEY `FK_CATALOGINDEX_AGGREGATION_TO_TAG_TAG` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogindex_aggregation_to_tag`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogindex_eav`
--

DROP TABLE IF EXISTS `catalogindex_eav`;
CREATE TABLE IF NOT EXISTS `catalogindex_eav` (
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`store_id`,`entity_id`,`attribute_id`,`value`),
  KEY `IDX_VALUE` (`value`),
  KEY `FK_CATALOGINDEX_EAV_ENTITY` (`entity_id`),
  KEY `FK_CATALOGINDEX_EAV_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOGINDEX_EAV_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogindex_eav`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogindex_minimal_price`
--

DROP TABLE IF EXISTS `catalogindex_minimal_price`;
CREATE TABLE IF NOT EXISTS `catalogindex_minimal_price` (
  `index_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_group_id` smallint(3) unsigned NOT NULL DEFAULT '0',
  `qty` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_class_id` smallint(6) NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`index_id`),
  KEY `IDX_VALUE` (`value`),
  KEY `IDX_QTY` (`qty`),
  KEY `FK_CATALOGINDEX_MINIMAL_PRICE_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `FK_CI_MINIMAL_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_FULL` (`entity_id`,`qty`,`customer_group_id`,`value`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalogindex_minimal_price`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogindex_price`
--

DROP TABLE IF EXISTS `catalogindex_price`;
CREATE TABLE IF NOT EXISTS `catalogindex_price` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `customer_group_id` smallint(3) unsigned NOT NULL DEFAULT '0',
  `qty` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_class_id` smallint(6) NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned DEFAULT NULL,
  KEY `IDX_VALUE` (`value`),
  KEY `IDX_QTY` (`qty`),
  KEY `FK_CATALOGINDEX_PRICE_ENTITY` (`entity_id`),
  KEY `FK_CATALOGINDEX_PRICE_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOGINDEX_PRICE_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `IDX_RANGE_VALUE` (`entity_id`,`attribute_id`,`customer_group_id`,`value`),
  KEY `FK_CI_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_FULL` (`entity_id`,`attribute_id`,`customer_group_id`,`value`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogindex_price`
--


-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock`
--

DROP TABLE IF EXISTS `cataloginventory_stock`;
CREATE TABLE IF NOT EXISTS `cataloginventory_stock` (
  `stock_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `stock_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog inventory Stocks list' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cataloginventory_stock`
--

INSERT INTO `cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_item`
--

DROP TABLE IF EXISTS `cataloginventory_stock_item`;
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `stock_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `use_config_min_qty` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_qty_decimal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `backorders` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `use_config_backorders` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000',
  `use_config_min_sale_qty` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `use_config_max_sale_qty` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_in_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `low_stock_date` datetime DEFAULT NULL,
  `notify_stock_qty` decimal(12,4) DEFAULT NULL,
  `use_config_notify_stock_qty` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `manage_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_config_manage_stock` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `stock_status_changed_automatically` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_config_qty_increments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `use_config_enable_qty_increments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_qty_increments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `IDX_STOCK_PRODUCT` (`product_id`,`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_ITEM_PRODUCT` (`product_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_ITEM_STOCK` (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Inventory Stock Item Data' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cataloginventory_stock_item`
--

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_automatically`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_increments`, `enable_qty_increments`) VALUES
(2, 2, 1, 11.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0),
(3, 3, 1, 11.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0),
(4, 4, 1, 11.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0),
(5, 5, 1, 11.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0),
(6, 6, 1, 11.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0),
(7, 7, 1, 1.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0),
(8, 8, 1, 11.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0),
(9, 9, 1, 11.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0),
(10, 10, 1, 11.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status`;
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `stock_id` smallint(4) unsigned NOT NULL,
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `stock_status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_STOCK` (`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cataloginventory_stock_status`
--

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(2, 1, 1, 11.0000, 1),
(3, 1, 1, 11.0000, 1),
(4, 1, 1, 11.0000, 1),
(5, 1, 1, 11.0000, 1),
(6, 1, 1, 11.0000, 1),
(7, 1, 1, 1.0000, 1),
(8, 1, 1, 11.0000, 1),
(9, 1, 1, 11.0000, 1),
(10, 1, 1, 11.0000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_idx`;
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `stock_id` smallint(4) unsigned NOT NULL,
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `stock_status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_STOCK` (`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cataloginventory_stock_status_idx`
--

INSERT INTO `cataloginventory_stock_status_idx` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(2, 1, 1, 11.0000, 1),
(3, 1, 1, 11.0000, 1),
(4, 1, 1, 11.0000, 1),
(5, 1, 1, 11.0000, 1),
(6, 1, 1, 11.0000, 1),
(7, 1, 1, 1.0000, 1),
(8, 1, 1, 11.0000, 1),
(9, 1, 1, 11.0000, 1),
(10, 1, 1, 11.0000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_tmp`;
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `stock_id` smallint(4) unsigned NOT NULL,
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `stock_status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_STOCK` (`stock_id`),
  KEY `FK_CATALOGINVENTORY_STOCK_STATUS_WEBSITE` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cataloginventory_stock_status_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogrule`
--

DROP TABLE IF EXISTS `catalogrule`;
CREATE TABLE IF NOT EXISTS `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `customer_group_ids` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `conditions_serialized` mediumtext NOT NULL,
  `actions_serialized` mediumtext NOT NULL,
  `stop_rules_processing` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `simple_action` varchar(32) NOT NULL,
  `discount_amount` decimal(12,4) NOT NULL,
  `website_ids` text,
  PRIMARY KEY (`rule_id`),
  KEY `sort_order` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalogrule`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_affected_product`
--

DROP TABLE IF EXISTS `catalogrule_affected_product`;
CREATE TABLE IF NOT EXISTS `catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogrule_affected_product`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_group_website`
--

DROP TABLE IF EXISTS `catalogrule_group_website`;
CREATE TABLE IF NOT EXISTS `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `rule_id` (`rule_id`),
  KEY `customer_group_id` (`customer_group_id`),
  KEY `website_id` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `catalogrule_group_website`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product`
--

DROP TABLE IF EXISTS `catalogrule_product`;
CREATE TABLE IF NOT EXISTS `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `action_operator` enum('to_fixed','to_percent','by_fixed','by_percent') NOT NULL DEFAULT 'to_fixed',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `action_stop` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `sort_order` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `FK_catalogrule_product_rule` (`rule_id`),
  KEY `FK_catalogrule_product_customergroup` (`customer_group_id`),
  KEY `FK_catalogrule_product_website` (`website_id`),
  KEY `IDX_FROM_TIME` (`from_time`),
  KEY `IDX_TO_TIME` (`to_time`),
  KEY `FK_CATALOGRULE_PRODUCT_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalogrule_product`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_price`
--

DROP TABLE IF EXISTS `catalogrule_product_price`;
CREATE TABLE IF NOT EXISTS `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_date` date NOT NULL DEFAULT '0000-00-00',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `website_id` smallint(5) unsigned NOT NULL,
  `latest_start_date` date DEFAULT NULL,
  `earliest_end_date` date DEFAULT NULL,
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `rule_date` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `FK_catalogrule_product_price_customergroup` (`customer_group_id`),
  KEY `FK_catalogrule_product_price_website` (`website_id`),
  KEY `FK_CATALOGRULE_PRODUCT_PRICE_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalogrule_product_price`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_fulltext`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext`;
CREATE TABLE IF NOT EXISTS `catalogsearch_fulltext` (
  `product_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `data_index` longtext NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`),
  FULLTEXT KEY `data_index` (`data_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogsearch_fulltext`
--

INSERT INTO `catalogsearch_fulltext` (`product_id`, `store_id`, `data_index`) VALUES
(9, 2, 'Enabled Келих для вина №8 Келих для вина №8 Келих для вина №8 1'),
(8, 1, 'Enabled Келих для вина №7 Келих для вина №7 Келих для вина №7 1'),
(8, 2, 'Enabled Келих для вина №7 Келих для вина №7 Келих для вина №7 1'),
(8, 3, 'Enabled Келих для вина №7 Келих для вина №7 Келих для вина №7 1'),
(6, 1, 'Enabled Келих для вина №5 Келих для вина №5 Келих для вина №5 1'),
(7, 2, 'Enabled Келих для вина №6 Келих для вина №6 Келих для вина №6 1'),
(6, 3, 'Enabled Келих для вина №5 Келих для вина №5 Келих для вина №5 1'),
(7, 1, 'Enabled Келих для вина №6 Келих для вина №6 Келих для вина №6 1'),
(5, 2, 'Enabled Келих для вина №4 Келих для вина №4 Келих для вина №4 1'),
(7, 3, 'Enabled Келих для вина №6 Келих для вина №6 Келих для вина №6 1'),
(5, 1, 'Enabled Келих для вина №4 Келих для вина №4 Келих для вина №4 1'),
(6, 2, 'Enabled Келих для вина №5 Келих для вина №5 Келих для вина №5 1'),
(5, 3, 'Enabled Келих для вина №4 Келих для вина №4 Келих для вина №4 1'),
(9, 1, 'Enabled Келих для вина №8 Келих для вина №8 Келих для вина №8 1'),
(10, 1, 'Enabled Келих для вина №9 Келих для вина №9 Desciption Келих для вина №9 Short description 1'),
(4, 1, 'Enabled None Келих для вина №3 Келих для вина №3 Келих для вина №3 1'),
(3, 1, '1 Enabled None Келих для вина №2 Келих для вина №2 Келих для вина №2 111 1'),
(2, 1, 'sku Enabled None Келих для вина1 Келих для вина1 Келих для вина1 1 1'),
(10, 2, 'Enabled Келих для вина №9 Келих для вина №9 Desciption Келих для вина №9 Short description 1'),
(4, 2, 'Enabled None Келих для вина №3 Келих для вина №3 Келих для вина №3 1'),
(3, 2, '1 Enabled None Келих для вина №2 Келих для вина №2 Келих для вина №2 111 1'),
(2, 2, 'sku Enabled None Келих для вина1_ua Келих для вина1 Келих для вина1 1 1'),
(9, 3, 'Enabled Келих для вина №8 Келих для вина №8 Келих для вина №8 1'),
(10, 3, 'Enabled Келих для вина №9 Келих для вина №9 Desciption Келих для вина №9 Short description 1'),
(4, 3, 'Enabled None Келих для вина №3 Келих для вина №3 Келих для вина №3 1'),
(3, 3, '1 Enabled None Келих для вина №2 Келих для вина №2 Келих для вина №2 111 1'),
(2, 3, 'sku Enabled None Келих для вина1 Келих для вина1 Келих для вина1 1 1');

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_query`
--

DROP TABLE IF EXISTS `catalogsearch_query`;
CREATE TABLE IF NOT EXISTS `catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query_text` varchar(255) NOT NULL DEFAULT '',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `synonym_for` varchar(255) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `display_in_terms` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `is_processed` tinyint(1) DEFAULT '0',
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`query_id`),
  KEY `FK_CATALOGSEARCH_QUERY_STORE` (`store_id`),
  KEY `IDX_SEARCH_QUERY` (`query_text`,`store_id`,`popularity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalogsearch_query`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_result`
--

DROP TABLE IF EXISTS `catalogsearch_result`;
CREATE TABLE IF NOT EXISTS `catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `relevance` decimal(6,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`query_id`,`product_id`),
  KEY `IDX_QUERY` (`query_id`),
  KEY `IDX_PRODUCT` (`product_id`),
  KEY `IDX_RELEVANCE` (`query_id`,`relevance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogsearch_result`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_categs_index_idx`
--

DROP TABLE IF EXISTS `catalog_category_anc_categs_index_idx`;
CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  KEY `IDX_CATEGORY` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_anc_categs_index_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_categs_index_tmp`
--

DROP TABLE IF EXISTS `catalog_category_anc_categs_index_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  KEY `IDX_CATEGORY` (`category_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_anc_categs_index_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_products_index_idx`
--

DROP TABLE IF EXISTS `catalog_category_anc_products_index_idx`;
CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_anc_products_index_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_products_index_tmp`
--

DROP TABLE IF EXISTS `catalog_category_anc_products_index_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_anc_products_index_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity`
--

DROP TABLE IF EXISTS `catalog_category_entity`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `children_count` int(11) NOT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_LEVEL` (`level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Category Entities' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '0000-00-00 00:00:00', '2010-08-21 14:00:32', '1', 0, 0, 4),
(2, 3, 3, 1, '2010-08-21 14:00:32', '2010-08-21 14:00:32', '1/2', 1, 1, 3),
(3, 3, 3, 2, '2010-09-08 19:32:42', '2010-09-25 20:31:10', '1/2/3', 1, 2, 2),
(4, 3, 3, 3, '2010-09-08 19:33:16', '2010-09-25 20:32:21', '1/2/3/4', 1, 3, 0),
(5, 3, 3, 3, '2010-09-08 19:33:50', '2010-09-25 20:32:35', '1/2/3/5', 2, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_category_entity_datetime`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` datetime DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_DATETIME_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `catalog_category_entity_datetime`
--

INSERT INTO `catalog_category_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 52, 2, 3, NULL),
(2, 3, 53, 2, 3, NULL),
(3, 3, 52, 2, 4, NULL),
(4, 3, 53, 2, 4, NULL),
(5, 3, 52, 2, 5, NULL),
(6, 3, 53, 2, 5, NULL),
(7, 3, 52, 0, 3, NULL),
(8, 3, 53, 0, 3, NULL),
(9, 3, 52, 0, 4, NULL),
(10, 3, 53, 0, 4, NULL),
(11, 3, 52, 0, 5, NULL),
(12, 3, 53, 0, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_decimal`
--

DROP TABLE IF EXISTS `catalog_category_entity_decimal`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_DECIMAL_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_category_entity_decimal`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_int`
--

DROP TABLE IF EXISTS `catalog_category_entity_int`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_INT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_EMTITY_INT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_EMTITY_INT_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `catalog_category_entity_int`
--

INSERT INTO `catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 34, 0, 2, 1),
(2, 3, 34, 1, 2, 1),
(3, 3, 106, 0, 1, 1),
(4, 3, 106, 0, 2, 1),
(5, 3, 34, 0, 3, 1),
(6, 3, 34, 2, 3, 1),
(9, 3, 43, 0, 3, 1),
(11, 3, 34, 0, 4, 1),
(12, 3, 34, 2, 4, 1),
(13, 3, 106, 2, 4, 1),
(14, 3, 42, 2, 4, NULL),
(15, 3, 43, 0, 4, 1),
(16, 3, 51, 2, 4, 1),
(17, 3, 34, 0, 5, 1),
(18, 3, 34, 2, 5, 1),
(19, 3, 106, 2, 5, 1),
(20, 3, 42, 2, 5, NULL),
(21, 3, 43, 0, 5, 1),
(22, 3, 51, 2, 5, 1),
(24, 3, 106, 0, 3, 1),
(25, 3, 42, 0, 3, NULL),
(26, 3, 51, 0, 3, 1),
(27, 3, 106, 0, 4, 1),
(28, 3, 42, 0, 4, NULL),
(29, 3, 51, 0, 4, 1),
(31, 3, 106, 0, 5, 1),
(32, 3, 42, 0, 5, NULL),
(33, 3, 51, 0, 5, 1),
(35, 3, 106, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_text`
--

DROP TABLE IF EXISTS `catalog_category_entity_text`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_TEXT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `catalog_category_entity_text`
--

INSERT INTO `catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 58, 0, 1, ''),
(2, 3, 58, 1, 1, ''),
(3, 3, 58, 0, 2, ''),
(4, 3, 58, 1, 2, ''),
(5, 3, 58, 0, 3, ''),
(10, 3, 58, 2, 3, ''),
(11, 3, 58, 0, 4, ''),
(12, 3, 36, 2, 4, ''),
(13, 3, 39, 2, 4, ''),
(14, 3, 40, 2, 4, ''),
(15, 3, 55, 2, 4, ''),
(16, 3, 58, 2, 4, ''),
(17, 3, 58, 0, 5, ''),
(18, 3, 36, 2, 5, ''),
(19, 3, 39, 2, 5, ''),
(20, 3, 40, 2, 5, ''),
(21, 3, 55, 2, 5, ''),
(22, 3, 58, 2, 5, ''),
(23, 3, 36, 0, 3, ''),
(24, 3, 39, 0, 3, ''),
(25, 3, 40, 0, 3, ''),
(26, 3, 55, 0, 3, ''),
(27, 3, 36, 0, 4, ''),
(28, 3, 39, 0, 4, ''),
(29, 3, 40, 0, 4, ''),
(30, 3, 55, 0, 4, ''),
(31, 3, 36, 0, 5, ''),
(32, 3, 39, 0, 5, ''),
(33, 3, 40, 0, 5, ''),
(34, 3, 55, 0, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_varchar`
--

DROP TABLE IF EXISTS `catalog_category_entity_varchar`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_VARCHAR_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `catalog_category_entity_varchar`
--

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 33, 0, 1, 'Root Catalog'),
(2, 3, 33, 1, 1, 'Root Catalog'),
(3, 3, 35, 0, 1, 'root-catalog'),
(4, 3, 33, 0, 2, 'Default Category'),
(5, 3, 33, 1, 2, 'Default Category'),
(6, 3, 41, 1, 2, 'PRODUCTS'),
(7, 3, 35, 0, 2, 'default-category'),
(8, 3, 33, 0, 3, 'Келихи, бокали'),
(9, 3, 33, 2, 3, 'Келихи, бокали'),
(10, 3, 35, 2, 3, 'dsd-d-d-n-d-d-d-d-d-d-d'),
(15, 3, 35, 1, 3, 'dsd-d-d-n-d-d-d-d-d-d-d'),
(16, 3, 35, 0, 3, 'dsd-d-d-n-d-d-d-d-d-d-d'),
(17, 3, 49, 1, 3, 'dsd-d-d-n-d-d-d-d-d-d-d.html'),
(18, 3, 49, 0, 3, 'dsd-d-d-n-d-d-d-d-d-d-d.html'),
(19, 3, 33, 0, 4, 'Келихи для вина'),
(20, 3, 33, 2, 4, 'Келихи для вина'),
(21, 3, 35, 2, 4, 'dsd-d-d-n-d-d-d-n-d-d-d-d'),
(22, 3, 38, 2, 4, ''),
(23, 3, 41, 2, 4, 'PRODUCTS'),
(24, 3, 50, 2, 4, ''),
(25, 3, 54, 2, 4, ''),
(26, 3, 35, 1, 4, 'dsd-d-d-n-d-d-d-n-d-d-d-d'),
(27, 3, 35, 0, 4, 'dsd-d-d-n-d-d-d-n-d-d-d-d'),
(28, 3, 49, 1, 4, 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(29, 3, 49, 0, 4, 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(30, 3, 33, 0, 5, 'Келихи для шампанського'),
(31, 3, 33, 2, 5, 'Келихи для шампанського'),
(32, 3, 35, 2, 5, 'dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d'),
(33, 3, 38, 2, 5, ''),
(34, 3, 41, 2, 5, 'PRODUCTS'),
(35, 3, 50, 2, 5, ''),
(36, 3, 54, 2, 5, ''),
(37, 3, 35, 1, 5, 'dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d'),
(38, 3, 35, 0, 5, 'dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d'),
(39, 3, 49, 1, 5, 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html'),
(40, 3, 49, 0, 5, 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html'),
(41, 3, 38, 0, 3, ''),
(42, 3, 41, 0, 3, 'PRODUCTS'),
(43, 3, 50, 0, 3, 'crystal/default'),
(44, 3, 54, 0, 3, 'two_columns_left'),
(45, 3, 38, 0, 4, ''),
(46, 3, 41, 0, 4, 'PRODUCTS'),
(47, 3, 50, 0, 4, 'crystal/default'),
(48, 3, 54, 0, 4, 'two_columns_left'),
(49, 3, 38, 0, 5, ''),
(50, 3, 41, 0, 5, 'PRODUCTS'),
(51, 3, 50, 0, 5, 'crystal/default'),
(52, 3, 54, 0, 5, 'two_columns_left'),
(53, 3, 33, 3, 3, 'Бокалы'),
(54, 3, 33, 3, 4, 'Бокалы для вина'),
(55, 3, 33, 3, 5, 'Бокалы для шампанского');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_flat_store_1`
--

DROP TABLE IF EXISTS `catalog_category_flat_store_1`;
CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_1` (
  `entity_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `children_count` int(11) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_active` int(10) NOT NULL DEFAULT '0',
  `url_key` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `image` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` text,
  `meta_description` text,
  `display_mode` varchar(255) NOT NULL DEFAULT '',
  `landing_page` int(10) NOT NULL DEFAULT '0',
  `is_anchor` int(10) NOT NULL DEFAULT '0',
  `all_children` text,
  `path_in_store` text,
  `children` text,
  `url_path` varchar(255) NOT NULL DEFAULT '',
  `custom_design` varchar(255) NOT NULL DEFAULT '',
  `custom_design_apply` int(10) NOT NULL DEFAULT '0',
  `custom_design_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `custom_design_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `page_layout` varchar(255) NOT NULL DEFAULT '',
  `custom_layout_update` text,
  `available_sort_by` text,
  `default_sort_by` varchar(255) NOT NULL DEFAULT '',
  `include_in_menu` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_PATH` (`path`),
  KEY `IDX_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_flat_store_1`
--

INSERT INTO `catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `name`, `is_active`, `url_key`, `description`, `image`, `meta_title`, `meta_keywords`, `meta_description`, `display_mode`, `landing_page`, `is_anchor`, `all_children`, `path_in_store`, `children`, `url_path`, `custom_design`, `custom_design_apply`, `custom_design_from`, `custom_design_to`, `page_layout`, `custom_layout_update`, `available_sort_by`, `default_sort_by`, `include_in_menu`) VALUES
(1, 0, '0000-00-00 00:00:00', '2010-08-21 14:00:32', '1', 0, 0, 4, 1, 'Root Catalog', 0, 'root-catalog', '', '', '', '', '', '', 0, 0, '', '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 1),
(2, 1, '2010-08-21 14:00:32', '2010-08-21 14:00:32', '1/2', 1, 1, 3, 1, 'Default Category', 1, 'default-category', '', '', '', '', '', '', 0, 0, '', '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 1),
(3, 2, '2010-09-08 19:32:42', '2010-09-08 19:32:42', '1/2/3', 1, 2, 2, 1, 'Келихи, бокали', 1, 'dsd-d-d-n-d-d-d-d-d-d-d', '', '', '', '', '', '', 0, 0, '', '', '', 'dsd-d-d-n-d-d-d-d-d-d-d.html', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0),
(4, 3, '2010-09-08 19:33:16', '2010-09-08 19:33:16', '1/2/3/4', 1, 3, 0, 1, 'Келихи для вина', 1, 'dsd-d-d-n-d-d-d-n-d-d-d-d', '', '', '', '', '', '', 0, 0, '', '', '', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0),
(5, 3, '2010-09-08 19:33:50', '2010-09-08 19:33:50', '1/2/3/5', 2, 3, 0, 1, 'Келихи для шампанського', 1, 'dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d', '', '', '', '', '', '', 0, 0, '', '', '', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_flat_store_2`
--

DROP TABLE IF EXISTS `catalog_category_flat_store_2`;
CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_2` (
  `entity_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `children_count` int(11) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_active` int(10) NOT NULL DEFAULT '0',
  `url_key` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `image` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` text,
  `meta_description` text,
  `display_mode` varchar(255) NOT NULL DEFAULT '',
  `landing_page` int(10) NOT NULL DEFAULT '0',
  `is_anchor` int(10) NOT NULL DEFAULT '0',
  `all_children` text,
  `path_in_store` text,
  `children` text,
  `url_path` varchar(255) NOT NULL DEFAULT '',
  `custom_design` varchar(255) NOT NULL DEFAULT '',
  `custom_design_apply` int(10) NOT NULL DEFAULT '0',
  `custom_design_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `custom_design_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `page_layout` varchar(255) NOT NULL DEFAULT '',
  `custom_layout_update` text,
  `available_sort_by` text,
  `default_sort_by` varchar(255) NOT NULL DEFAULT '',
  `include_in_menu` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_PATH` (`path`),
  KEY `IDX_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_flat_store_2`
--

INSERT INTO `catalog_category_flat_store_2` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `name`, `is_active`, `url_key`, `description`, `image`, `meta_title`, `meta_keywords`, `meta_description`, `display_mode`, `landing_page`, `is_anchor`, `all_children`, `path_in_store`, `children`, `url_path`, `custom_design`, `custom_design_apply`, `custom_design_from`, `custom_design_to`, `page_layout`, `custom_layout_update`, `available_sort_by`, `default_sort_by`, `include_in_menu`) VALUES
(1, 0, '0000-00-00 00:00:00', '2010-08-21 14:00:32', '1', 0, 0, 4, 2, 'Root Catalog', 0, 'root-catalog', '', '', '', '', '', '', 0, 0, '', '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 1),
(2, 1, '2010-08-21 14:00:32', '2010-08-21 14:00:32', '1/2', 1, 1, 3, 2, 'Default Category', 1, 'default-category', '', '', '', '', '', '', 0, 0, '', '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 1),
(3, 2, '2010-09-08 19:32:42', '2010-09-08 19:32:42', '1/2/3', 1, 2, 2, 2, 'Келихи, бокали', 1, 'dsd-d-d-n-d-d-d-d-d-d-d', '', '', '', '', '', '', 0, 0, '', '', '', 'dsd-d-d-n-d-d-d-d-d-d-d.html', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0),
(4, 3, '2010-09-08 19:33:16', '2010-09-08 19:33:16', '1/2/3/4', 1, 3, 0, 2, 'Келихи для вина', 1, 'dsd-d-d-n-d-d-d-n-d-d-d-d', '', '', '', '', '', '', 0, 0, '', '', '', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0),
(5, 3, '2010-09-08 19:33:50', '2010-09-08 19:33:50', '1/2/3/5', 2, 3, 0, 2, 'Келихи для шампанського', 1, 'dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d', '', '', '', '', '', '', 0, 0, '', '', '', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_flat_store_3`
--

DROP TABLE IF EXISTS `catalog_category_flat_store_3`;
CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_3` (
  `entity_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `children_count` int(11) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_active` int(10) NOT NULL DEFAULT '0',
  `url_key` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `image` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` text,
  `meta_description` text,
  `display_mode` varchar(255) NOT NULL DEFAULT '',
  `landing_page` int(10) NOT NULL DEFAULT '0',
  `is_anchor` int(10) NOT NULL DEFAULT '0',
  `all_children` text,
  `path_in_store` text,
  `children` text,
  `url_path` varchar(255) NOT NULL DEFAULT '',
  `custom_design` varchar(255) NOT NULL DEFAULT '',
  `custom_design_apply` int(10) NOT NULL DEFAULT '0',
  `custom_design_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `custom_design_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `page_layout` varchar(255) NOT NULL DEFAULT '',
  `custom_layout_update` text,
  `available_sort_by` text,
  `default_sort_by` varchar(255) NOT NULL DEFAULT '',
  `include_in_menu` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_PATH` (`path`),
  KEY `IDX_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_flat_store_3`
--

INSERT INTO `catalog_category_flat_store_3` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `name`, `is_active`, `url_key`, `description`, `image`, `meta_title`, `meta_keywords`, `meta_description`, `display_mode`, `landing_page`, `is_anchor`, `all_children`, `path_in_store`, `children`, `url_path`, `custom_design`, `custom_design_apply`, `custom_design_from`, `custom_design_to`, `page_layout`, `custom_layout_update`, `available_sort_by`, `default_sort_by`, `include_in_menu`) VALUES
(1, 0, '0000-00-00 00:00:00', '2010-08-21 14:00:32', '1', 0, 0, 4, 3, 'Root Catalog', 0, 'root-catalog', '', '', '', '', '', '', 0, 0, '', '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 1),
(2, 1, '2010-08-21 14:00:32', '2010-08-21 14:00:32', '1/2', 1, 1, 3, 3, 'Default Category', 1, 'default-category', '', '', '', '', '', '', 0, 0, '', '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 1),
(3, 2, '2010-09-08 19:32:42', '2010-09-08 19:32:42', '1/2/3', 1, 2, 2, 3, 'Келихи, бокали', 1, 'dsd-d-d-n-d-d-d-d-d-d-d', '', '', '', '', '', '', 0, 0, '', '', '', 'dsd-d-d-n-d-d-d-d-d-d-d.html', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0),
(4, 3, '2010-09-08 19:33:16', '2010-09-08 19:33:16', '1/2/3/4', 1, 3, 0, 3, 'Келихи для вина', 1, 'dsd-d-d-n-d-d-d-n-d-d-d-d', '', '', '', '', '', '', 0, 0, '', '', '', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0),
(5, 3, '2010-09-08 19:33:50', '2010-09-08 19:33:50', '1/2/3/5', 2, 3, 0, 3, 'Келихи для шампанського', 1, 'dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d', '', '', '', '', '', '', 0, 0, '', '', '', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product`
--

DROP TABLE IF EXISTS `catalog_category_product`;
CREATE TABLE IF NOT EXISTS `catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `UNQ_CATEGORY_PRODUCT` (`category_id`,`product_id`),
  KEY `CATALOG_CATEGORY_PRODUCT_CATEGORY` (`category_id`),
  KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_product`
--

INSERT INTO `catalog_category_product` (`category_id`, `product_id`, `position`) VALUES
(4, 2, 1),
(4, 3, 1),
(4, 4, 1),
(4, 5, 1),
(4, 6, 1),
(4, 7, 1),
(4, 8, 1),
(4, 9, 1),
(4, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index`
--

DROP TABLE IF EXISTS `catalog_category_product_index`;
CREATE TABLE IF NOT EXISTS `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) NOT NULL DEFAULT '0',
  `is_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visibility` tinyint(3) unsigned NOT NULL,
  UNIQUE KEY `UNQ_CATEGORY_PRODUCT` (`category_id`,`product_id`,`store_id`),
  KEY `FK_CATALOG_CATEGORY_PRODUCT_INDEX_CATEGORY_ENTITY` (`category_id`),
  KEY `IDX_JOIN` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `IDX_BASE` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_product_index`
--

INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(2, 2, 0, 0, 1, 4),
(2, 3, 0, 0, 1, 4),
(2, 4, 0, 0, 1, 4),
(2, 5, 0, 0, 1, 4),
(2, 6, 0, 0, 1, 4),
(2, 7, 0, 0, 1, 4),
(2, 8, 0, 0, 1, 4),
(2, 9, 0, 0, 1, 4),
(2, 10, 0, 0, 1, 4),
(3, 2, 0, 0, 1, 4),
(3, 3, 0, 0, 1, 4),
(3, 4, 0, 0, 1, 4),
(3, 5, 0, 0, 1, 4),
(3, 6, 0, 0, 1, 4),
(3, 7, 0, 0, 1, 4),
(3, 8, 0, 0, 1, 4),
(3, 9, 0, 0, 1, 4),
(3, 10, 0, 0, 1, 4),
(4, 2, 1, 1, 1, 4),
(4, 3, 1, 1, 1, 4),
(4, 4, 1, 1, 1, 4),
(4, 5, 1, 1, 1, 4),
(4, 6, 1, 1, 1, 4),
(4, 7, 1, 1, 1, 4),
(4, 8, 1, 1, 1, 4),
(4, 9, 1, 1, 1, 4),
(4, 10, 1, 1, 1, 4),
(2, 2, 0, 0, 2, 4),
(2, 3, 0, 0, 2, 4),
(2, 4, 0, 0, 2, 4),
(2, 5, 0, 0, 2, 4),
(2, 6, 0, 0, 2, 4),
(2, 7, 0, 0, 2, 4),
(2, 8, 0, 0, 2, 4),
(2, 9, 0, 0, 2, 4),
(2, 10, 0, 0, 2, 4),
(3, 2, 0, 0, 2, 4),
(3, 3, 0, 0, 2, 4),
(3, 4, 0, 0, 2, 4),
(3, 5, 0, 0, 2, 4),
(3, 6, 0, 0, 2, 4),
(3, 7, 0, 0, 2, 4),
(3, 8, 0, 0, 2, 4),
(3, 9, 0, 0, 2, 4),
(3, 10, 0, 0, 2, 4),
(4, 2, 1, 1, 2, 4),
(4, 3, 1, 1, 2, 4),
(4, 4, 1, 1, 2, 4),
(4, 5, 1, 1, 2, 4),
(4, 6, 1, 1, 2, 4),
(4, 7, 1, 1, 2, 4),
(4, 8, 1, 1, 2, 4),
(4, 9, 1, 1, 2, 4),
(4, 10, 1, 1, 2, 4),
(2, 2, 0, 0, 3, 4),
(2, 3, 0, 0, 3, 4),
(2, 4, 0, 0, 3, 4),
(2, 5, 0, 0, 3, 4),
(2, 6, 0, 0, 3, 4),
(2, 7, 0, 0, 3, 4),
(2, 8, 0, 0, 3, 4),
(2, 9, 0, 0, 3, 4),
(2, 10, 0, 0, 3, 4),
(3, 2, 0, 0, 3, 4),
(3, 3, 0, 0, 3, 4),
(3, 4, 0, 0, 3, 4),
(3, 5, 0, 0, 3, 4),
(3, 6, 0, 0, 3, 4),
(3, 7, 0, 0, 3, 4),
(3, 8, 0, 0, 3, 4),
(3, 9, 0, 0, 3, 4),
(3, 10, 0, 0, 3, 4),
(4, 2, 1, 1, 3, 4),
(4, 3, 1, 1, 3, 4),
(4, 4, 1, 1, 3, 4),
(4, 5, 1, 1, 3, 4),
(4, 6, 1, 1, 3, 4),
(4, 7, 1, 1, 3, 4),
(4, 8, 1, 1, 3, 4),
(4, 9, 1, 1, 3, 4),
(4, 10, 1, 1, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_enbl_idx`
--

DROP TABLE IF EXISTS `catalog_category_product_index_enbl_idx`;
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `visibility` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `IDX_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_product_index_enbl_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_enbl_tmp`
--

DROP TABLE IF EXISTS `catalog_category_product_index_enbl_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `visibility` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `IDX_PRODUCT` (`product_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_product_index_enbl_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_idx`
--

DROP TABLE IF EXISTS `catalog_category_product_index_idx`;
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) NOT NULL DEFAULT '0',
  `is_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visibility` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_product_index_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_tmp`
--

DROP TABLE IF EXISTS `catalog_category_product_index_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) NOT NULL DEFAULT '0',
  `is_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visibility` tinyint(3) unsigned NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_category_product_index_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_compare_item`
--

DROP TABLE IF EXISTS `catalog_compare_item`;
CREATE TABLE IF NOT EXISTS `catalog_compare_item` (
  `catalog_compare_item_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(11) unsigned DEFAULT NULL,
  `product_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `FK_CATALOG_COMPARE_ITEM_CUSTOMER` (`customer_id`),
  KEY `FK_CATALOG_COMPARE_ITEM_PRODUCT` (`product_id`),
  KEY `IDX_VISITOR_PRODUCTS` (`visitor_id`,`product_id`),
  KEY `IDX_CUSTOMER_PRODUCTS` (`customer_id`,`product_id`),
  KEY `FK_CATALOG_COMPARE_ITEM_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_compare_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_eav_attribute`
--

DROP TABLE IF EXISTS `catalog_eav_attribute`;
CREATE TABLE IF NOT EXISTS `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `frontend_input_renderer` varchar(255) DEFAULT NULL,
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_searchable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_filterable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_comparable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_visible_on_front` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_html_allowed_on_front` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_used_for_price_rules` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'deprecated after 1.4.0.1',
  `is_filterable_in_search` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `used_in_product_listing` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `used_for_sort_by` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_configurable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `apply_to` varchar(255) NOT NULL,
  `is_visible_in_advanced_search` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `is_wysiwyg_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_used_for_promo_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `catalog_eav_attribute`
--

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
(33, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(34, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(35, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(36, '', 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, '', 0, 0, 1, 1),
(37, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(38, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(39, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(40, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(41, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(42, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(43, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(44, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(45, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(46, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(47, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(48, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(49, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(50, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(51, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(52, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(53, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(54, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(55, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(56, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(57, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(58, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(59, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(60, '', 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, '', 1, 0, 0, 1),
(61, '', 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, '', 1, 0, 1, 1),
(62, '', 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, '', 1, 0, 1, 1),
(63, '', 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, '', 1, 0, 0, 1),
(64, '', 2, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 1),
(65, '', 2, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 1),
(66, '', 2, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 1),
(67, '', 2, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 1),
(68, '', 2, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'simple,virtual,downloadable', 0, 0, 0, 1),
(69, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'grouped', 0, 0, 0, 1),
(70, '', 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 'simple', 1, 0, 0, 1),
(71, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(72, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(73, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(74, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(75, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 0, 0, 1),
(76, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 0, 0, 1),
(77, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(78, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(79, '', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(80, '', 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 'simple', 1, 0, 0, 1),
(81, '', 2, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 0, 0, 1),
(82, '', 2, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 0, 0, 1),
(83, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(84, '', 2, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, '', 0, 0, 0, 1),
(85, '', 2, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 'virtual', 1, 0, 0, 1),
(86, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 0, 0, 1),
(87, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(88, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 1),
(89, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 1),
(90, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 1),
(91, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(92, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(93, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(94, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(95, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(96, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(97, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(98, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(99, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, '', 0, 0, 0, 1),
(100, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(101, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, '', 0, 0, 0, 1),
(102, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, '', 0, 0, 0, 1),
(103, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, '', 0, 0, 0, 1),
(104, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(105, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(106, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, '', 0, 0, 0, 1),
(107, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0),
(108, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0),
(109, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(110, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
(111, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(112, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(113, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(114, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(115, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(116, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(117, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(118, NULL, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option`
--

DROP TABLE IF EXISTS `catalog_product_bundle_option`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`option_id`),
  KEY `FK_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bundle Options' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_bundle_option`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option_value`
--

DROP TABLE IF EXISTS `catalog_product_bundle_option_value`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_OPTION_STORE` (`option_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bundle Selections' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_bundle_option_value`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_price_index`
--

DROP TABLE IF EXISTS `catalog_product_bundle_price_index`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `customer_group_id` smallint(3) unsigned NOT NULL,
  `min_price` decimal(12,4) NOT NULL,
  `max_price` decimal(12,4) NOT NULL,
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `IDX_WEBSITE` (`website_id`),
  KEY `IDX_CUSTOMER_GROUP` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_bundle_price_index`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection`
--

DROP TABLE IF EXISTS `catalog_product_bundle_selection`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL,
  `parent_product_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `selection_price_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `selection_qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `selection_can_change_qty` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`selection_id`),
  KEY `FK_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION` (`option_id`),
  KEY `FK_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bundle Selections' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_bundle_selection`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

DROP TABLE IF EXISTS `catalog_product_bundle_stock_index`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `stock_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `stock_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`entity_id`,`stock_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_bundle_stock_index`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_enabled_index`
--

DROP TABLE IF EXISTS `catalog_product_enabled_index`;
CREATE TABLE IF NOT EXISTS `catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `UNQ_PRODUCT_STORE` (`product_id`,`store_id`),
  KEY `IDX_PRODUCT_VISIBILITY_IN_STORE` (`product_id`,`store_id`,`visibility`),
  KEY `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_enabled_index`
--

INSERT INTO `catalog_product_enabled_index` (`product_id`, `store_id`, `visibility`) VALUES
(2, 1, 4),
(2, 2, 4),
(2, 3, 4),
(3, 1, 4),
(3, 2, 4),
(3, 3, 4),
(4, 1, 4),
(4, 2, 4),
(4, 3, 4),
(5, 1, 4),
(5, 2, 4),
(5, 3, 4),
(6, 1, 4),
(6, 2, 4),
(6, 3, 4),
(7, 1, 4),
(7, 2, 4),
(7, 3, 4),
(8, 1, 4),
(8, 2, 4),
(8, 3, 4),
(9, 1, 4),
(9, 2, 4),
(9, 3, 4),
(10, 1, 4),
(10, 2, 4),
(10, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity`
--

DROP TABLE IF EXISTS `catalog_product_entity`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple',
  `sku` varchar(64) DEFAULT NULL,
  `has_options` smallint(1) NOT NULL DEFAULT '0',
  `required_options` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`entity_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `sku` (`sku`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Product Entities' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `catalog_product_entity`
--

INSERT INTO `catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(2, 4, 4, 'simple', 'sku', 0, 0, '2010-09-08 19:39:30', '2010-10-03 12:06:33'),
(3, 4, 4, 'simple', '1', 0, 0, '2010-10-03 11:53:05', '2010-10-03 12:01:43'),
(4, 4, 4, 'simple', '', 0, 0, '2010-10-03 12:11:14', '2010-10-03 12:11:14'),
(5, 4, 9, 'simple', '', 0, 0, '2010-10-03 13:29:04', '2010-10-03 16:58:38'),
(6, 4, 4, 'simple', '', 0, 0, '2010-10-03 13:35:24', '2010-10-03 13:35:24'),
(7, 4, 9, 'simple', '', 0, 0, '2010-10-03 13:40:46', '2010-10-03 16:57:00'),
(8, 4, 9, 'simple', '', 0, 0, '2010-10-03 13:42:39', '2010-10-03 16:56:39'),
(9, 4, 9, 'simple', '', 0, 0, '2010-10-03 13:52:39', '2010-10-03 16:56:16'),
(10, 4, 9, 'simple', '', 0, 0, '2010-10-03 13:54:22', '2010-10-03 21:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_product_entity_datetime`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` datetime DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE` (`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DATETIME_PRODUCT_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `catalog_product_entity_datetime`
--

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(7, 4, 81, 0, 2, NULL),
(8, 4, 82, 0, 2, NULL),
(9, 4, 66, 0, 2, NULL),
(10, 4, 67, 0, 2, NULL),
(11, 4, 93, 0, 2, NULL),
(12, 4, 94, 0, 2, NULL),
(13, 4, 81, 0, 3, NULL),
(14, 4, 82, 0, 3, NULL),
(15, 4, 66, 0, 3, NULL),
(16, 4, 67, 0, 3, NULL),
(17, 4, 93, 0, 3, NULL),
(18, 4, 94, 0, 3, NULL),
(19, 4, 81, 0, 4, NULL),
(20, 4, 82, 0, 4, NULL),
(21, 4, 66, 0, 4, NULL),
(22, 4, 67, 0, 4, NULL),
(23, 4, 93, 0, 4, NULL),
(24, 4, 94, 0, 4, NULL),
(25, 4, 81, 0, 5, NULL),
(26, 4, 82, 0, 5, NULL),
(27, 4, 66, 0, 5, NULL),
(28, 4, 67, 0, 5, NULL),
(29, 4, 93, 0, 5, NULL),
(30, 4, 94, 0, 5, NULL),
(31, 4, 81, 0, 6, NULL),
(32, 4, 82, 0, 6, NULL),
(33, 4, 66, 0, 6, NULL),
(34, 4, 67, 0, 6, NULL),
(35, 4, 93, 0, 6, NULL),
(36, 4, 94, 0, 6, NULL),
(37, 4, 81, 0, 7, NULL),
(38, 4, 82, 0, 7, NULL),
(39, 4, 66, 0, 7, NULL),
(40, 4, 67, 0, 7, NULL),
(41, 4, 93, 0, 7, NULL),
(42, 4, 94, 0, 7, NULL),
(43, 4, 81, 0, 8, NULL),
(44, 4, 82, 0, 8, NULL),
(45, 4, 66, 0, 8, NULL),
(46, 4, 67, 0, 8, NULL),
(47, 4, 93, 0, 8, NULL),
(48, 4, 94, 0, 8, NULL),
(49, 4, 81, 0, 9, NULL),
(50, 4, 82, 0, 9, NULL),
(51, 4, 66, 0, 9, NULL),
(52, 4, 67, 0, 9, NULL),
(53, 4, 93, 0, 9, NULL),
(54, 4, 94, 0, 9, NULL),
(55, 4, 81, 0, 10, NULL),
(56, 4, 82, 0, 10, NULL),
(57, 4, 66, 0, 10, NULL),
(58, 4, 67, 0, 10, NULL),
(59, 4, 93, 0, 10, NULL),
(60, 4, 94, 0, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_decimal`
--

DROP TABLE IF EXISTS `catalog_product_entity_decimal`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE` (`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_PRODUCT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `catalog_product_entity_decimal`
--

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(8, 4, 69, 0, 2, 1.0000),
(9, 4, 64, 0, 2, 1.0000),
(10, 4, 65, 0, 2, NULL),
(11, 4, 68, 0, 2, NULL),
(12, 4, 69, 0, 3, 11.0000),
(13, 4, 64, 0, 3, 111.0000),
(14, 4, 65, 0, 3, NULL),
(15, 4, 68, 0, 3, NULL),
(22, 4, 69, 0, 4, 111.0000),
(23, 4, 64, 0, 4, NULL),
(24, 4, 65, 0, 4, NULL),
(25, 4, 68, 0, 4, NULL),
(26, 4, 64, 0, 5, NULL),
(27, 4, 65, 0, 5, NULL),
(28, 4, 68, 0, 5, NULL),
(29, 4, 64, 0, 6, NULL),
(30, 4, 65, 0, 6, NULL),
(31, 4, 68, 0, 6, NULL),
(35, 4, 64, 0, 7, NULL),
(36, 4, 65, 0, 7, NULL),
(37, 4, 68, 0, 7, NULL),
(38, 4, 64, 0, 8, NULL),
(39, 4, 65, 0, 8, NULL),
(40, 4, 68, 0, 8, NULL),
(41, 4, 64, 0, 9, NULL),
(42, 4, 65, 0, 9, NULL),
(43, 4, 68, 0, 9, NULL),
(44, 4, 64, 0, 10, NULL),
(45, 4, 65, 0, 10, NULL),
(46, 4, 68, 0, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_gallery`
--

DROP TABLE IF EXISTS `catalog_product_entity_gallery`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_BASE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_ATTRIBUTE_GALLERY_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_GALLERY_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_CATEGORY_ENTITY_GALLERY_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_entity_gallery`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_int`
--

DROP TABLE IF EXISTS `catalog_product_entity_int`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_INT_STORE` (`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_INT_PRODUCT_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `catalog_product_entity_int`
--

INSERT INTO `catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(6, 4, 84, 0, 2, 1),
(7, 4, 91, 0, 2, 4),
(8, 4, 85, 0, 2, 0),
(9, 4, 107, 0, 2, 1),
(10, 4, 89, 0, 2, 0),
(11, 4, 84, 0, 3, 1),
(12, 4, 91, 0, 3, 4),
(13, 4, 85, 0, 3, 0),
(14, 4, 107, 0, 3, 1),
(15, 4, 89, 0, 3, 0),
(16, 4, 84, 0, 4, 1),
(17, 4, 91, 0, 4, 4),
(18, 4, 85, 0, 4, 0),
(19, 4, 107, 0, 4, 1),
(20, 4, 89, 0, 4, 0),
(21, 4, 84, 0, 5, 1),
(22, 4, 91, 0, 5, 4),
(23, 4, 107, 0, 5, 1),
(24, 4, 89, 0, 5, 0),
(25, 4, 84, 0, 6, 1),
(26, 4, 91, 0, 6, 4),
(27, 4, 107, 0, 6, 1),
(28, 4, 89, 0, 6, 0),
(29, 4, 84, 0, 7, 1),
(30, 4, 91, 0, 7, 4),
(31, 4, 107, 0, 7, 1),
(32, 4, 89, 0, 7, 0),
(33, 4, 84, 0, 8, 1),
(34, 4, 91, 0, 8, 4),
(35, 4, 107, 0, 8, 1),
(36, 4, 89, 0, 8, 0),
(37, 4, 84, 0, 9, 1),
(38, 4, 91, 0, 9, 4),
(39, 4, 107, 0, 9, 1),
(40, 4, 89, 0, 9, 0),
(41, 4, 84, 0, 10, 1),
(42, 4, 91, 0, 10, 4),
(43, 4, 107, 0, 10, 1),
(44, 4, 89, 0, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  KEY `FK_CATALOG_PRODUCT_MEDIA_GALLERY_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_PRODUCT_MEDIA_GALLERY_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog product media gallery' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `catalog_product_entity_media_gallery`
--

INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 77, 3, '/k/i/kieliszki-do-wina-9853-1_405.jpg'),
(2, 77, 2, '/k/i/kieliszki-do-wina-9853-1_405_1.jpg'),
(3, 77, 4, '/k/i/kieliszki-do-wina-9853-1_405_2.jpg'),
(4, 77, 5, '/k/i/kieliszki-do-wina-9853-1_405_3.jpg'),
(5, 77, 6, '/k/i/kieliszki-do-wina-9853-1_405_4.jpg'),
(6, 77, 7, '/k/i/kieliszki-do-wina-9853-1_405_5.jpg'),
(7, 77, 8, '/k/i/kieliszki-do-wina-9853-1_405_6.jpg'),
(8, 77, 9, '/k/i/kieliszki-do-wina-9853-1_405_7.jpg'),
(9, 77, 10, '/k/i/kieliszki-do-wina-9853-1_405_8.jpg'),
(10, 77, 10, '/s/w/swiecznik-krysztalowy-la_863.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery_value` (
  `value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `position` int(11) unsigned DEFAULT NULL,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_MEDIA_GALLERY_VALUE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog product media gallery values';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value`
--

INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `label`, `position`, `disabled`) VALUES
(1, 2, '', 1, 0),
(2, 0, '', 1, 0),
(3, 0, '', 1, 0),
(4, 0, '', 1, 0),
(5, 0, '', 1, 0),
(6, 0, '', 1, 0),
(7, 0, '', 1, 0),
(8, 0, '', 1, 0),
(9, 0, '', 1, 0),
(9, 2, '', 1, 0),
(10, 0, '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_text`
--

DROP TABLE IF EXISTS `catalog_product_entity_text`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_TEXT_STORE` (`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_TEXT_PRODUCT_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `catalog_product_entity_text`
--

INSERT INTO `catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(5, 4, 61, 0, 2, 'Келих для вина1'),
(6, 4, 62, 0, 2, 'Келих для вина1'),
(7, 4, 72, 0, 2, ''),
(8, 4, 95, 0, 2, ''),
(9, 4, 61, 0, 3, 'Келих для вина №2'),
(10, 4, 62, 0, 3, 'Келих для вина №2'),
(11, 4, 72, 0, 3, ''),
(12, 4, 95, 0, 3, ''),
(13, 4, 61, 0, 4, 'Келих для вина №3'),
(14, 4, 62, 0, 4, 'Келих для вина №3'),
(15, 4, 72, 0, 4, ''),
(16, 4, 95, 0, 4, ''),
(17, 4, 61, 0, 5, 'Келих для вина №4'),
(18, 4, 62, 0, 5, 'Келих для вина №4'),
(19, 4, 72, 0, 5, 'Келих для вина №4'),
(20, 4, 95, 0, 5, ''),
(21, 4, 61, 0, 6, 'Келих для вина №5'),
(22, 4, 62, 0, 6, 'Келих для вина №5'),
(23, 4, 72, 0, 6, ''),
(24, 4, 95, 0, 6, ''),
(25, 4, 61, 0, 7, 'Келих для вина №6'),
(26, 4, 62, 0, 7, 'Келих для вина №6'),
(27, 4, 72, 0, 7, ''),
(28, 4, 95, 0, 7, ''),
(29, 4, 61, 0, 8, 'Келих для вина №7'),
(30, 4, 62, 0, 8, 'Келих для вина №7'),
(31, 4, 72, 0, 8, ''),
(32, 4, 95, 0, 8, ''),
(33, 4, 61, 0, 9, 'Келих для вина №8'),
(34, 4, 62, 0, 9, 'Келих для вина №8'),
(35, 4, 72, 0, 9, ''),
(36, 4, 95, 0, 9, ''),
(37, 4, 61, 0, 10, 'Келих для вина №9 Desciption'),
(38, 4, 62, 0, 10, 'Келих для вина №9 Short description'),
(39, 4, 72, 0, 10, ''),
(40, 4, 95, 0, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_tier_price`
--

DROP TABLE IF EXISTS `catalog_product_entity_tier_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `all_groups` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `website_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_TIER_PRICE` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_TIER_PRICE_PRODUCT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_TIER_PRICE_GROUP` (`customer_group_id`),
  KEY `FK_CATALOG_PRODUCT_TIER_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_entity_tier_price`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_varchar`
--

DROP TABLE IF EXISTS `catalog_product_entity_varchar`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`,`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE` (`store_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_PRODUCT_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Dumping data for table `catalog_product_entity_varchar`
--

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(12, 4, 60, 0, 2, 'Келих для вина1'),
(13, 4, 86, 0, 2, 'kelih-dlja-vina1'),
(14, 4, 108, 0, 2, '2'),
(15, 4, 71, 0, 2, ''),
(16, 4, 73, 0, 2, ''),
(17, 4, 74, 0, 2, '/k/i/kieliszki-do-wina-9853-1_405_1.jpg'),
(18, 4, 75, 0, 2, '/k/i/kieliszki-do-wina-9853-1_405_1.jpg'),
(19, 4, 76, 0, 2, '/k/i/kieliszki-do-wina-9853-1_405_1.jpg'),
(20, 4, 92, 0, 2, ''),
(21, 4, 96, 0, 2, ''),
(22, 4, 98, 0, 2, 'container2'),
(23, 4, 60, 2, 2, 'Келих для вина1_ua'),
(24, 4, 87, 1, 2, 'kelih-dlja-vina1.html'),
(25, 4, 87, 0, 2, 'kelih-dlja-vina1.html'),
(26, 4, 60, 0, 3, 'Келих для вина №2'),
(27, 4, 86, 0, 3, 'kelih-dlja-vina-2'),
(28, 4, 108, 0, 3, '2'),
(29, 4, 71, 0, 3, ''),
(30, 4, 73, 0, 3, ''),
(31, 4, 74, 0, 3, 'no_selection'),
(32, 4, 75, 0, 3, 'no_selection'),
(33, 4, 76, 0, 3, 'no_selection'),
(34, 4, 92, 0, 3, ''),
(35, 4, 96, 0, 3, ''),
(36, 4, 98, 0, 3, 'container2'),
(37, 4, 101, 2, 3, ''),
(38, 4, 102, 2, 3, ''),
(39, 4, 103, 2, 3, ''),
(40, 4, 74, 2, 3, '/k/i/kieliszki-do-wina-9853-1_405.jpg'),
(41, 4, 75, 2, 3, '/k/i/kieliszki-do-wina-9853-1_405.jpg'),
(42, 4, 76, 2, 3, '/k/i/kieliszki-do-wina-9853-1_405.jpg'),
(43, 4, 87, 1, 3, 'kelih-dlja-vina-2.html'),
(44, 4, 87, 0, 3, 'kelih-dlja-vina-2.html'),
(45, 4, 101, 0, 2, ''),
(46, 4, 102, 0, 2, ''),
(47, 4, 103, 0, 2, ''),
(51, 4, 60, 0, 4, 'Келих для вина №3'),
(52, 4, 86, 0, 4, 'kelih-dlja-vina-3'),
(53, 4, 108, 0, 4, '2'),
(54, 4, 71, 0, 4, ''),
(55, 4, 73, 0, 4, ''),
(56, 4, 74, 0, 4, '/k/i/kieliszki-do-wina-9853-1_405_2.jpg'),
(57, 4, 75, 0, 4, '/k/i/kieliszki-do-wina-9853-1_405_2.jpg'),
(58, 4, 76, 0, 4, '/k/i/kieliszki-do-wina-9853-1_405_2.jpg'),
(59, 4, 92, 0, 4, ''),
(60, 4, 96, 0, 4, ''),
(61, 4, 98, 0, 4, 'container2'),
(62, 4, 101, 0, 4, ''),
(63, 4, 102, 0, 4, ''),
(64, 4, 103, 0, 4, ''),
(65, 4, 60, 0, 5, 'Келих для вина №4'),
(66, 4, 86, 0, 5, 'kelih-dlja-vina-4'),
(67, 4, 108, 0, 5, '2'),
(68, 4, 71, 0, 5, 'Келих для вина №4'),
(69, 4, 73, 0, 5, 'Келих для вина №4'),
(70, 4, 74, 0, 5, '/k/i/kieliszki-do-wina-9853-1_405_3.jpg'),
(71, 4, 75, 0, 5, '/k/i/kieliszki-do-wina-9853-1_405_3.jpg'),
(72, 4, 76, 0, 5, '/k/i/kieliszki-do-wina-9853-1_405_3.jpg'),
(73, 4, 92, 0, 5, ''),
(74, 4, 96, 0, 5, ''),
(75, 4, 98, 0, 5, 'container2'),
(76, 4, 101, 0, 5, ''),
(77, 4, 102, 0, 5, ''),
(78, 4, 103, 0, 5, ''),
(79, 4, 60, 0, 6, 'Келих для вина №5'),
(80, 4, 86, 0, 6, 'kelih-dlja-vina-5'),
(81, 4, 108, 0, 6, '2'),
(82, 4, 71, 0, 6, ''),
(83, 4, 73, 0, 6, ''),
(84, 4, 74, 0, 6, '/k/i/kieliszki-do-wina-9853-1_405_4.jpg'),
(85, 4, 75, 0, 6, '/k/i/kieliszki-do-wina-9853-1_405_4.jpg'),
(86, 4, 76, 0, 6, '/k/i/kieliszki-do-wina-9853-1_405_4.jpg'),
(87, 4, 92, 0, 6, ''),
(88, 4, 96, 0, 6, ''),
(89, 4, 98, 0, 6, 'container2'),
(90, 4, 101, 0, 6, ''),
(91, 4, 102, 0, 6, ''),
(92, 4, 103, 0, 6, ''),
(93, 4, 87, 1, 5, 'kelih-dlja-vina-4.html'),
(94, 4, 87, 0, 5, 'kelih-dlja-vina-4.html'),
(95, 4, 60, 0, 7, 'Келих для вина №6'),
(96, 4, 86, 0, 7, 'kelih-dlja-vina-6'),
(97, 4, 108, 0, 7, '2'),
(98, 4, 71, 0, 7, ''),
(99, 4, 73, 0, 7, ''),
(100, 4, 74, 0, 7, '/k/i/kieliszki-do-wina-9853-1_405_5.jpg'),
(101, 4, 75, 0, 7, '/k/i/kieliszki-do-wina-9853-1_405_5.jpg'),
(102, 4, 76, 0, 7, '/k/i/kieliszki-do-wina-9853-1_405_5.jpg'),
(103, 4, 92, 0, 7, ''),
(104, 4, 96, 0, 7, ''),
(105, 4, 98, 0, 7, 'container2'),
(106, 4, 101, 0, 7, ''),
(107, 4, 102, 0, 7, ''),
(108, 4, 103, 0, 7, ''),
(109, 4, 60, 0, 8, 'Келих для вина №7'),
(110, 4, 86, 0, 8, 'kelih-dlja-vina-7'),
(111, 4, 108, 0, 8, '2'),
(112, 4, 71, 0, 8, ''),
(113, 4, 73, 0, 8, ''),
(114, 4, 74, 0, 8, '/k/i/kieliszki-do-wina-9853-1_405_6.jpg'),
(115, 4, 75, 0, 8, '/k/i/kieliszki-do-wina-9853-1_405_6.jpg'),
(116, 4, 76, 0, 8, '/k/i/kieliszki-do-wina-9853-1_405_6.jpg'),
(117, 4, 92, 0, 8, ''),
(118, 4, 96, 0, 8, ''),
(119, 4, 98, 0, 8, 'container2'),
(120, 4, 101, 0, 8, ''),
(121, 4, 102, 0, 8, ''),
(122, 4, 103, 0, 8, ''),
(123, 4, 60, 0, 9, 'Келих для вина №8'),
(124, 4, 86, 0, 9, 'kelih-dlja-vina-8'),
(125, 4, 108, 0, 9, '2'),
(126, 4, 71, 0, 9, ''),
(127, 4, 73, 0, 9, ''),
(128, 4, 74, 0, 9, '/k/i/kieliszki-do-wina-9853-1_405_7.jpg'),
(129, 4, 75, 0, 9, '/k/i/kieliszki-do-wina-9853-1_405_7.jpg'),
(130, 4, 76, 0, 9, '/k/i/kieliszki-do-wina-9853-1_405_7.jpg'),
(131, 4, 92, 0, 9, ''),
(132, 4, 96, 0, 9, ''),
(133, 4, 98, 0, 9, 'container2'),
(134, 4, 101, 0, 9, ''),
(135, 4, 102, 0, 9, ''),
(136, 4, 103, 0, 9, ''),
(137, 4, 60, 0, 10, 'Келих для вина №9'),
(138, 4, 86, 0, 10, 'kelih-dlja-vina-9'),
(139, 4, 108, 0, 10, '2'),
(140, 4, 71, 0, 10, ''),
(141, 4, 73, 0, 10, ''),
(142, 4, 74, 0, 10, '/k/i/kieliszki-do-wina-9853-1_405_8.jpg'),
(143, 4, 75, 0, 10, '/k/i/kieliszki-do-wina-9853-1_405_8.jpg'),
(144, 4, 76, 0, 10, '/k/i/kieliszki-do-wina-9853-1_405_8.jpg'),
(145, 4, 92, 0, 10, ''),
(146, 4, 96, 0, 10, ''),
(147, 4, 98, 0, 10, 'container2'),
(148, 4, 101, 0, 10, ''),
(149, 4, 102, 0, 10, ''),
(150, 4, 103, 0, 10, ''),
(151, 4, 118, 0, 10, '111'),
(152, 4, 118, 0, 9, '2121212'),
(153, 4, 118, 0, 8, '34343'),
(154, 4, 118, 0, 7, '23232'),
(155, 4, 118, 0, 5, '4645'),
(156, 4, 92, 2, 10, 'crystal/default'),
(157, 4, 87, 1, 10, 'kelih-dlja-vina-9.html'),
(158, 4, 87, 0, 10, 'kelih-dlja-vina-9.html');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_flat_1`
--

DROP TABLE IF EXISTS `catalog_product_flat_1`;
CREATE TABLE IF NOT EXISTS `catalog_product_flat_1` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple',
  `cost` decimal(12,4) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enable_googlecheckout` tinyint(1) DEFAULT NULL,
  `has_options` smallint(6) NOT NULL DEFAULT '0',
  `image_label` varchar(255) DEFAULT NULL,
  `is_recurring` tinyint(1) DEFAULT NULL,
  `links_exist` int(11) DEFAULT NULL,
  `links_purchased_separately` int(11) DEFAULT NULL,
  `links_title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `news_from_date` datetime DEFAULT NULL,
  `news_to_date` datetime DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `price_type` int(11) DEFAULT NULL,
  `price_view` int(11) DEFAULT NULL,
  `recurring_profile` text,
  `required_options` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shipment_type` int(11) DEFAULT NULL,
  `short_description` text,
  `sku` varchar(64) DEFAULT NULL,
  `sku_type` int(11) DEFAULT NULL,
  `small_image` varchar(255) DEFAULT NULL,
  `small_image_label` varchar(255) DEFAULT NULL,
  `special_from_date` datetime DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_to_date` datetime DEFAULT NULL,
  `tax_class_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_label` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url_key` varchar(255) DEFAULT NULL,
  `url_path` varchar(255) DEFAULT NULL,
  `visibility` tinyint(3) unsigned DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `weight_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_TYPE_ID` (`type_id`),
  KEY `IDX_ATRRIBUTE_SET` (`attribute_set_id`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_PRICE` (`price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `catalog_product_flat_1`
--

INSERT INTO `catalog_product_flat_1` (`entity_id`, `attribute_set_id`, `type_id`, `cost`, `created_at`, `enable_googlecheckout`, `has_options`, `image_label`, `is_recurring`, `links_exist`, `links_purchased_separately`, `links_title`, `name`, `news_from_date`, `news_to_date`, `price`, `price_type`, `price_view`, `recurring_profile`, `required_options`, `shipment_type`, `short_description`, `sku`, `sku_type`, `small_image`, `small_image_label`, `special_from_date`, `special_price`, `special_to_date`, `tax_class_id`, `thumbnail`, `thumbnail_label`, `updated_at`, `url_key`, `url_path`, `visibility`, `weight`, `weight_type`) VALUES
(2, 4, 'simple', NULL, '2010-09-08 19:39:30', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина1', NULL, NULL, 1.0000, NULL, NULL, NULL, 0, NULL, 'Келих для вина1', 'sku', NULL, '/k/i/kieliszki-do-wina-9853-1_405_1.jpg', '', NULL, NULL, NULL, 0, '/k/i/kieliszki-do-wina-9853-1_405_1.jpg', '', '2010-10-03 12:06:33', 'kelih-dlja-vina1', 'kelih-dlja-vina1.html', 4, 1.0000, NULL),
(3, 4, 'simple', NULL, '2010-10-03 11:53:05', 1, 0, NULL, 0, NULL, NULL, NULL, 'Келих для вина №2', NULL, NULL, 111.0000, NULL, NULL, NULL, 0, NULL, 'Келих для вина №2', '1', NULL, 'no_selection', NULL, NULL, NULL, NULL, 0, 'no_selection', NULL, '2010-10-03 12:01:43', 'kelih-dlja-vina-2', 'kelih-dlja-vina-2.html', 4, 11.0000, NULL),
(4, 4, 'simple', NULL, '2010-10-03 12:11:14', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №3', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №3', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_2.jpg', '', NULL, NULL, NULL, 0, '/k/i/kieliszki-do-wina-9853-1_405_2.jpg', '', '2010-10-03 12:11:14', 'kelih-dlja-vina-3', NULL, 4, 111.0000, NULL),
(5, 9, 'simple', NULL, '2010-10-03 13:29:04', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №4', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №4', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_3.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_3.jpg', '', '2010-10-03 16:58:38', 'kelih-dlja-vina-4', 'kelih-dlja-vina-4.html', 4, NULL, NULL),
(6, 4, 'simple', NULL, '2010-10-03 13:35:24', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №5', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №5', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_4.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_4.jpg', '', '2010-10-03 13:35:24', 'kelih-dlja-vina-5', NULL, 4, NULL, NULL),
(7, 9, 'simple', NULL, '2010-10-03 13:40:46', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №6', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №6', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_5.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_5.jpg', '', '2010-10-03 16:57:00', 'kelih-dlja-vina-6', NULL, 4, NULL, NULL),
(8, 9, 'simple', NULL, '2010-10-03 13:42:39', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №7', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №7', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_6.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_6.jpg', '', '2010-10-03 16:56:39', 'kelih-dlja-vina-7', NULL, 4, NULL, NULL),
(9, 9, 'simple', NULL, '2010-10-03 13:52:39', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №8', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №8', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_7.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_7.jpg', '', '2010-10-03 16:56:16', 'kelih-dlja-vina-8', NULL, 4, NULL, NULL),
(10, 9, 'simple', NULL, '2010-10-03 13:54:22', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №9', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №9 Short description', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_8.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_8.jpg', '', '2010-10-03 21:47:19', 'kelih-dlja-vina-9', 'kelih-dlja-vina-9.html', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_flat_2`
--

DROP TABLE IF EXISTS `catalog_product_flat_2`;
CREATE TABLE IF NOT EXISTS `catalog_product_flat_2` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple',
  `cost` decimal(12,4) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enable_googlecheckout` tinyint(1) DEFAULT NULL,
  `has_options` smallint(6) NOT NULL DEFAULT '0',
  `image_label` varchar(255) DEFAULT NULL,
  `is_recurring` tinyint(1) DEFAULT NULL,
  `links_exist` int(11) DEFAULT NULL,
  `links_purchased_separately` int(11) DEFAULT NULL,
  `links_title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `news_from_date` datetime DEFAULT NULL,
  `news_to_date` datetime DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `price_type` int(11) DEFAULT NULL,
  `price_view` int(11) DEFAULT NULL,
  `recurring_profile` text,
  `required_options` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shipment_type` int(11) DEFAULT NULL,
  `short_description` text,
  `sku` varchar(64) DEFAULT NULL,
  `sku_type` int(11) DEFAULT NULL,
  `small_image` varchar(255) DEFAULT NULL,
  `small_image_label` varchar(255) DEFAULT NULL,
  `special_from_date` datetime DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_to_date` datetime DEFAULT NULL,
  `tax_class_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_label` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url_key` varchar(255) DEFAULT NULL,
  `url_path` varchar(255) DEFAULT NULL,
  `visibility` tinyint(3) unsigned DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `weight_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_TYPE_ID` (`type_id`),
  KEY `IDX_ATRRIBUTE_SET` (`attribute_set_id`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_PRICE` (`price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `catalog_product_flat_2`
--

INSERT INTO `catalog_product_flat_2` (`entity_id`, `attribute_set_id`, `type_id`, `cost`, `created_at`, `enable_googlecheckout`, `has_options`, `image_label`, `is_recurring`, `links_exist`, `links_purchased_separately`, `links_title`, `name`, `news_from_date`, `news_to_date`, `price`, `price_type`, `price_view`, `recurring_profile`, `required_options`, `shipment_type`, `short_description`, `sku`, `sku_type`, `small_image`, `small_image_label`, `special_from_date`, `special_price`, `special_to_date`, `tax_class_id`, `thumbnail`, `thumbnail_label`, `updated_at`, `url_key`, `url_path`, `visibility`, `weight`, `weight_type`) VALUES
(2, 4, 'simple', NULL, '2010-09-08 19:39:30', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина1_ua', NULL, NULL, 1.0000, NULL, NULL, NULL, 0, NULL, 'Келих для вина1', 'sku', NULL, '/k/i/kieliszki-do-wina-9853-1_405_1.jpg', '', NULL, NULL, NULL, 0, '/k/i/kieliszki-do-wina-9853-1_405_1.jpg', '', '2010-10-03 12:06:33', 'kelih-dlja-vina1', 'kelih-dlja-vina1.html', 4, 1.0000, NULL),
(3, 4, 'simple', NULL, '2010-10-03 11:53:05', 1, 0, NULL, 0, NULL, NULL, NULL, 'Келих для вина №2', NULL, NULL, 111.0000, NULL, NULL, NULL, 0, NULL, 'Келих для вина №2', '1', NULL, '/k/i/kieliszki-do-wina-9853-1_405.jpg', NULL, NULL, NULL, NULL, 0, '/k/i/kieliszki-do-wina-9853-1_405.jpg', NULL, '2010-10-03 12:01:43', 'kelih-dlja-vina-2', 'kelih-dlja-vina-2.html', 4, 11.0000, NULL),
(4, 4, 'simple', NULL, '2010-10-03 12:11:14', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №3', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №3', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_2.jpg', '', NULL, NULL, NULL, 0, '/k/i/kieliszki-do-wina-9853-1_405_2.jpg', '', '2010-10-03 12:11:14', 'kelih-dlja-vina-3', NULL, 4, 111.0000, NULL),
(5, 9, 'simple', NULL, '2010-10-03 13:29:04', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №4', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №4', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_3.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_3.jpg', '', '2010-10-03 16:58:38', 'kelih-dlja-vina-4', 'kelih-dlja-vina-4.html', 4, NULL, NULL),
(6, 4, 'simple', NULL, '2010-10-03 13:35:24', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №5', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №5', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_4.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_4.jpg', '', '2010-10-03 13:35:24', 'kelih-dlja-vina-5', NULL, 4, NULL, NULL),
(7, 9, 'simple', NULL, '2010-10-03 13:40:46', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №6', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №6', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_5.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_5.jpg', '', '2010-10-03 16:57:00', 'kelih-dlja-vina-6', NULL, 4, NULL, NULL),
(8, 9, 'simple', NULL, '2010-10-03 13:42:39', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №7', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №7', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_6.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_6.jpg', '', '2010-10-03 16:56:39', 'kelih-dlja-vina-7', NULL, 4, NULL, NULL),
(9, 9, 'simple', NULL, '2010-10-03 13:52:39', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №8', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №8', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_7.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_7.jpg', '', '2010-10-03 16:56:16', 'kelih-dlja-vina-8', NULL, 4, NULL, NULL),
(10, 9, 'simple', NULL, '2010-10-03 13:54:22', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №9', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №9 Short description', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_8.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_8.jpg', '', '2010-10-03 21:47:19', 'kelih-dlja-vina-9', 'kelih-dlja-vina-9.html', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_flat_3`
--

DROP TABLE IF EXISTS `catalog_product_flat_3`;
CREATE TABLE IF NOT EXISTS `catalog_product_flat_3` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple',
  `cost` decimal(12,4) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enable_googlecheckout` tinyint(1) DEFAULT NULL,
  `has_options` smallint(6) NOT NULL DEFAULT '0',
  `image_label` varchar(255) DEFAULT NULL,
  `is_recurring` tinyint(1) DEFAULT NULL,
  `links_exist` int(11) DEFAULT NULL,
  `links_purchased_separately` int(11) DEFAULT NULL,
  `links_title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `news_from_date` datetime DEFAULT NULL,
  `news_to_date` datetime DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `price_type` int(11) DEFAULT NULL,
  `price_view` int(11) DEFAULT NULL,
  `recurring_profile` text,
  `required_options` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shipment_type` int(11) DEFAULT NULL,
  `short_description` text,
  `sku` varchar(64) DEFAULT NULL,
  `sku_type` int(11) DEFAULT NULL,
  `small_image` varchar(255) DEFAULT NULL,
  `small_image_label` varchar(255) DEFAULT NULL,
  `special_from_date` datetime DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_to_date` datetime DEFAULT NULL,
  `tax_class_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_label` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url_key` varchar(255) DEFAULT NULL,
  `url_path` varchar(255) DEFAULT NULL,
  `visibility` tinyint(3) unsigned DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `weight_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_TYPE_ID` (`type_id`),
  KEY `IDX_ATRRIBUTE_SET` (`attribute_set_id`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_PRICE` (`price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `catalog_product_flat_3`
--

INSERT INTO `catalog_product_flat_3` (`entity_id`, `attribute_set_id`, `type_id`, `cost`, `created_at`, `enable_googlecheckout`, `has_options`, `image_label`, `is_recurring`, `links_exist`, `links_purchased_separately`, `links_title`, `name`, `news_from_date`, `news_to_date`, `price`, `price_type`, `price_view`, `recurring_profile`, `required_options`, `shipment_type`, `short_description`, `sku`, `sku_type`, `small_image`, `small_image_label`, `special_from_date`, `special_price`, `special_to_date`, `tax_class_id`, `thumbnail`, `thumbnail_label`, `updated_at`, `url_key`, `url_path`, `visibility`, `weight`, `weight_type`) VALUES
(2, 4, 'simple', NULL, '2010-09-08 19:39:30', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина1', NULL, NULL, 1.0000, NULL, NULL, NULL, 0, NULL, 'Келих для вина1', 'sku', NULL, '/k/i/kieliszki-do-wina-9853-1_405_1.jpg', '', NULL, NULL, NULL, 0, '/k/i/kieliszki-do-wina-9853-1_405_1.jpg', '', '2010-10-03 12:06:33', 'kelih-dlja-vina1', 'kelih-dlja-vina1.html', 4, 1.0000, NULL),
(3, 4, 'simple', NULL, '2010-10-03 11:53:05', 1, 0, NULL, 0, NULL, NULL, NULL, 'Келих для вина №2', NULL, NULL, 111.0000, NULL, NULL, NULL, 0, NULL, 'Келих для вина №2', '1', NULL, 'no_selection', NULL, NULL, NULL, NULL, 0, 'no_selection', NULL, '2010-10-03 12:01:43', 'kelih-dlja-vina-2', 'kelih-dlja-vina-2.html', 4, 11.0000, NULL),
(4, 4, 'simple', NULL, '2010-10-03 12:11:14', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №3', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №3', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_2.jpg', '', NULL, NULL, NULL, 0, '/k/i/kieliszki-do-wina-9853-1_405_2.jpg', '', '2010-10-03 12:11:14', 'kelih-dlja-vina-3', NULL, 4, 111.0000, NULL),
(5, 9, 'simple', NULL, '2010-10-03 13:29:04', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №4', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №4', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_3.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_3.jpg', '', '2010-10-03 16:58:38', 'kelih-dlja-vina-4', 'kelih-dlja-vina-4.html', 4, NULL, NULL),
(6, 4, 'simple', NULL, '2010-10-03 13:35:24', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №5', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №5', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_4.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_4.jpg', '', '2010-10-03 13:35:24', 'kelih-dlja-vina-5', NULL, 4, NULL, NULL),
(7, 9, 'simple', NULL, '2010-10-03 13:40:46', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №6', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №6', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_5.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_5.jpg', '', '2010-10-03 16:57:00', 'kelih-dlja-vina-6', NULL, 4, NULL, NULL),
(8, 9, 'simple', NULL, '2010-10-03 13:42:39', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №7', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №7', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_6.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_6.jpg', '', '2010-10-03 16:56:39', 'kelih-dlja-vina-7', NULL, 4, NULL, NULL),
(9, 9, 'simple', NULL, '2010-10-03 13:52:39', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №8', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №8', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_7.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_7.jpg', '', '2010-10-03 16:56:16', 'kelih-dlja-vina-8', NULL, 4, NULL, NULL),
(10, 9, 'simple', NULL, '2010-10-03 13:54:22', 1, 0, '', 0, NULL, NULL, NULL, 'Келих для вина №9', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Келих для вина №9 Short description', '', NULL, '/k/i/kieliszki-do-wina-9853-1_405_8.jpg', '', NULL, NULL, NULL, NULL, '/k/i/kieliszki-do-wina-9853-1_405_8.jpg', '', '2010-10-03 21:47:19', 'kelih-dlja-vina-9', 'kelih-dlja-vina-9.html', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav`
--

DROP TABLE IF EXISTS `catalog_product_index_eav`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_eav`
--

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(2, 85, 1, 0),
(2, 85, 2, 0),
(2, 85, 3, 0),
(3, 85, 1, 0),
(3, 85, 2, 0),
(3, 85, 3, 0),
(4, 85, 1, 0),
(4, 85, 2, 0),
(4, 85, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` decimal(12,4) NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_eav_decimal`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` decimal(12,4) NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_eav_decimal_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` decimal(12,4) NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_eav_decimal_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_eav_idx`
--

INSERT INTO `catalog_product_index_eav_idx` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(2, 85, 1, 0),
(2, 85, 2, 0),
(2, 85, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_eav_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price`
--

DROP TABLE IF EXISTS `catalog_product_index_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `final_price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `IDX_WEBSITE` (`website_id`),
  KEY `IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price`
--

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(2, 0, 1, 0, 1.0000, 1.0000, 1.0000, 1.0000, NULL),
(2, 1, 1, 0, 1.0000, 1.0000, 1.0000, 1.0000, NULL),
(2, 2, 1, 0, 1.0000, 1.0000, 1.0000, 1.0000, NULL),
(2, 3, 1, 0, 1.0000, 1.0000, 1.0000, 1.0000, NULL),
(3, 0, 1, 0, 111.0000, 111.0000, 111.0000, 111.0000, NULL),
(3, 1, 1, 0, 111.0000, 111.0000, 111.0000, 111.0000, NULL),
(3, 2, 1, 0, 111.0000, 111.0000, 111.0000, 111.0000, NULL),
(3, 3, 1, 0, 111.0000, 111.0000, 111.0000, 111.0000, NULL),
(4, 0, 1, 0, NULL, NULL, NULL, NULL, NULL),
(4, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(4, 2, 1, 0, NULL, NULL, NULL, NULL, NULL),
(4, 3, 1, 0, NULL, NULL, NULL, NULL, NULL),
(5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `price_type` tinyint(1) unsigned NOT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `tier_percent` decimal(12,4) DEFAULT NULL,
  `orig_price` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `base_tier` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_bundle_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `min_price` decimal(12,4) DEFAULT NULL,
  `alt_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `alt_tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_bundle_opt_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `min_price` decimal(12,4) DEFAULT NULL,
  `alt_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `alt_tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_bundle_opt_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_type` tinyint(1) unsigned DEFAULT '0',
  `is_required` tinyint(1) unsigned DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_bundle_sel_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_type` tinyint(1) unsigned DEFAULT '0',
  `is_required` tinyint(1) unsigned DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_bundle_sel_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `price_type` tinyint(1) unsigned NOT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `tier_percent` decimal(12,4) DEFAULT NULL,
  `orig_price` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `base_tier` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_bundle_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL,
  `child_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_cfg_opt_agr_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL,
  `child_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_cfg_opt_agr_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_cfg_opt_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_cfg_opt_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_downlod_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_downlod_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_final_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `orig_price` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `base_tier` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_final_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_final_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `orig_price` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  `base_tier` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_final_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `final_price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `IDX_WEBSITE` (`website_id`),
  KEY `IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_idx`
--

INSERT INTO `catalog_product_index_price_idx` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(2, 0, 1, 0, 1.0000, 1.0000, 1.0000, 1.0000, NULL),
(2, 1, 1, 0, 1.0000, 1.0000, 1.0000, 1.0000, NULL),
(2, 2, 1, 0, 1.0000, 1.0000, 1.0000, 1.0000, NULL),
(2, 3, 1, 0, 1.0000, 1.0000, 1.0000, 1.0000, NULL),
(3, 0, 1, 0, 111.0000, 111.0000, 111.0000, 111.0000, NULL),
(3, 1, 1, 0, 111.0000, 111.0000, 111.0000, 111.0000, NULL),
(3, 2, 1, 0, 111.0000, 111.0000, 111.0000, 111.0000, NULL),
(3, 3, 1, 0, 111.0000, 111.0000, 111.0000, 111.0000, NULL),
(4, 0, 1, 0, NULL, NULL, NULL, NULL, NULL),
(4, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(4, 2, 1, 0, NULL, NULL, NULL, NULL, NULL),
(4, 3, 1, 0, NULL, NULL, NULL, NULL, NULL),
(5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_opt_agr_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_opt_agr_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_opt_idx`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_opt_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `tax_class_id` smallint(5) unsigned DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `final_price` decimal(12,4) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `tier_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `IDX_WEBSITE` (`website_id`),
  KEY `IDX_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_price_tmp`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_tier_price`
--

DROP TABLE IF EXISTS `catalog_product_index_tier_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL,
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `FK_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER` (`customer_group_id`),
  KEY `FK_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_tier_price`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_website`
--

DROP TABLE IF EXISTS `catalog_product_index_website`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL,
  `date` date DEFAULT NULL,
  `rate` float(12,4) unsigned DEFAULT '1.0000',
  PRIMARY KEY (`website_id`),
  KEY `IDX_DATE` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog_product_index_website`
--

INSERT INTO `catalog_product_index_website` (`website_id`, `date`, `rate`) VALUES
(1, '2010-10-04', 1.0000);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link`
--

DROP TABLE IF EXISTS `catalog_product_link`;
CREATE TABLE IF NOT EXISTS `catalog_product_link` (
  `link_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `link_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `IDX_UNIQUE` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `FK_LINK_PRODUCT` (`product_id`),
  KEY `FK_LINKED_PRODUCT` (`linked_product_id`),
  KEY `FK_PRODUCT_LINK_TYPE` (`link_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Related products' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute`;
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `link_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `product_link_attribute_code` varchar(32) NOT NULL DEFAULT '',
  `data_type` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `FK_ATTRIBUTE_PRODUCT_LINK_TYPE` (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Attributes for product link' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `catalog_product_link_attribute`
--

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 2, 'qty', 'decimal'),
(2, 1, 'position', 'int'),
(3, 4, 'position', 'int'),
(4, 5, 'position', 'int'),
(6, 1, 'qty', 'decimal'),
(7, 3, 'position', 'int'),
(8, 3, 'qty', 'decimal');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_decimal`;
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_decimal` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_link_attribute_id` smallint(6) unsigned DEFAULT NULL,
  `link_id` int(11) unsigned DEFAULT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`value_id`),
  KEY `FK_DECIMAL_PRODUCT_LINK_ATTRIBUTE` (`product_link_attribute_id`),
  KEY `FK_DECIMAL_LINK` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Decimal attributes values' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_link_attribute_decimal`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_int`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_int`;
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_int` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_link_attribute_id` smallint(6) unsigned DEFAULT NULL,
  `link_id` int(11) unsigned DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  KEY `FK_INT_PRODUCT_LINK_ATTRIBUTE` (`product_link_attribute_id`),
  KEY `FK_INT_PRODUCT_LINK` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_link_attribute_int`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_varchar`;
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_varchar` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_link_attribute_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `link_id` int(11) unsigned DEFAULT NULL,
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  KEY `FK_VARCHAR_PRODUCT_LINK_ATTRIBUTE` (`product_link_attribute_id`),
  KEY `FK_VARCHAR_LINK` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Varchar attributes values' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_link_attribute_varchar`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_type`
--

DROP TABLE IF EXISTS `catalog_product_link_type`;
CREATE TABLE IF NOT EXISTS `catalog_product_link_type` (
  `link_type_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Types of product link(Related, superproduct, bundles)' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `catalog_product_link_type`
--

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(2, 'bundle'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option`
--

DROP TABLE IF EXISTS `catalog_product_option`;
CREATE TABLE IF NOT EXISTS `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `is_require` tinyint(1) NOT NULL DEFAULT '1',
  `sku` varchar(64) NOT NULL DEFAULT '',
  `max_characters` int(10) unsigned DEFAULT NULL,
  `file_extension` varchar(50) DEFAULT NULL,
  `image_size_x` smallint(5) unsigned NOT NULL,
  `image_size_y` smallint(5) unsigned NOT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_option`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_price`
--

DROP TABLE IF EXISTS `catalog_product_option_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price_type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `UNQ_OPTION_STORE` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION` (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_option_price`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_title`
--

DROP TABLE IF EXISTS `catalog_product_option_title`;
CREATE TABLE IF NOT EXISTS `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `UNQ_OPTION_STORE` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION` (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_option_title`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_price`
--

DROP TABLE IF EXISTS `catalog_product_option_type_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price_type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `UNQ_OPTION_TYPE_STORE` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE` (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_option_type_price`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_title`
--

DROP TABLE IF EXISTS `catalog_product_option_type_title`;
CREATE TABLE IF NOT EXISTS `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `UNQ_OPTION_TYPE_STORE` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION` (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_option_type_title`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_value`
--

DROP TABLE IF EXISTS `catalog_product_option_type_value`;
CREATE TABLE IF NOT EXISTS `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sku` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_option_type_value`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_relation`
--

DROP TABLE IF EXISTS `catalog_product_relation`;
CREATE TABLE IF NOT EXISTS `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL,
  `child_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `IDX_CHILD` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

--
-- Dumping data for table `catalog_product_relation`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute`;
CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_super_attribute_id`),
  KEY `FK_SUPER_PRODUCT_ATTRIBUTE_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_super_attribute`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute_label`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute_label`;
CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `use_default` tinyint(1) unsigned DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_ATTRIBUTE_STORE` (`product_super_attribute_id`,`store_id`),
  KEY `FK_SUPER_PRODUCT_ATTRIBUTE_LABEL` (`product_super_attribute_id`),
  KEY `FK_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_super_attribute_label`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute_pricing`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute_pricing`;
CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value_index` varchar(255) NOT NULL DEFAULT '',
  `is_percent` tinyint(1) unsigned DEFAULT '0',
  `pricing_value` decimal(10,4) DEFAULT NULL,
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  KEY `FK_SUPER_PRODUCT_ATTRIBUTE_PRICING` (`product_super_attribute_id`),
  KEY `FK_CATALOG_PRODUCT_SUPER_PRICE_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_super_attribute_pricing`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_link`
--

DROP TABLE IF EXISTS `catalog_product_super_link`;
CREATE TABLE IF NOT EXISTS `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `FK_SUPER_PRODUCT_LINK_PARENT` (`parent_id`),
  KEY `FK_catalog_product_super_link` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catalog_product_super_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_website`
--

DROP TABLE IF EXISTS `catalog_product_website`;
CREATE TABLE IF NOT EXISTS `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `website_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `FK_CATALOG_PRODUCT_WEBSITE_WEBSITE` (`website_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED AUTO_INCREMENT=11 ;

--
-- Dumping data for table `catalog_product_website`
--

INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement`
--

DROP TABLE IF EXISTS `checkout_agreement`;
CREATE TABLE IF NOT EXISTS `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `content_height` varchar(25) DEFAULT NULL,
  `checkbox_text` text NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `is_html` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `checkout_agreement`
--


-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement_store`
--

DROP TABLE IF EXISTS `checkout_agreement_store`;
CREATE TABLE IF NOT EXISTS `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `agreement_id` (`agreement_id`,`store_id`),
  KEY `FK_CHECKOUT_AGREEMENT_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checkout_agreement_store`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

DROP TABLE IF EXISTS `cms_block`;
CREATE TABLE IF NOT EXISTS `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  `creation_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Blocks' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(5, 'Footer Links', 'footer_links', '<ul>\r\n<li><a href="{{store direct_url="about-magento-demo-store"}}">About Us</a></li>\r\n<li class="last"><a href="{{store direct_url="customer-service"}}">Customer Service</a></li>\r\n</ul>', '2010-08-21 17:00:26', '2010-08-21 17:00:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block_store`
--

DROP TABLE IF EXISTS `cms_block_store`;
CREATE TABLE IF NOT EXISTS `cms_block_store` (
  `block_id` smallint(6) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `FK_CMS_BLOCK_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Blocks to Stores';

--
-- Dumping data for table `cms_block_store`
--

INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
(5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE IF NOT EXISTS `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `root_template` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `identifier` varchar(100) NOT NULL DEFAULT '',
  `content_heading` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  `creation_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `layout_update_xml` text,
  `custom_theme` varchar(100) DEFAULT NULL,
  `custom_root_template` varchar(255) NOT NULL DEFAULT '',
  `custom_layout_update_xml` text,
  `custom_theme_from` date DEFAULT NULL,
  `custom_theme_to` date DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS pages' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', '', '<div class="page-title"><h1>Whoops, our bad...</h1></div>\r\n<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class="disc">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class="disc">\r\n<li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a> <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li></ul></dd></dl>\r\n', '2007-06-20 18:38:32', '2007-08-26 19:11:13', 1, 0, NULL, NULL, '', NULL, NULL, NULL),
(2, 'Home page', 'two_columns_left', '', '', 'home', '', '<div class="page-title">\r\n<h2>Home Page</h2>\r\n</div>', '2007-08-23 10:03:25', '2010-09-08 20:23:54', 1, 0, '<!--<reference name="content">\r\n<block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page"><action method="addPriceBlockType"><type>bundle</type><block>bundle/catalog_product_price</block><template>bundle/catalog/product/price.phtml</template></action></block>\r\n<block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new"><action method="addPriceBlockType"><type>bundle</type><block>bundle/catalog_product_price</block><template>bundle/catalog/product/price.phtml</template></action></block>\r\n<block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed"><action method="addPriceBlockType"><type>bundle</type><block>bundle/catalog_product_price</block><template>bundle/catalog/product/price.phtml</template></action></block>\r\n</reference><reference name="right">\r\n<action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\r\n<action method="unsetChild"><alias>right.reports.product.compared</alias></action>\r\n</reference>-->', '', '', '', NULL, NULL),
(3, 'About  Us', 'two_columns_left', '', '', 'about-company.html', '', '<div class="page-title">\r\n<h1>About Magento Store</h1>\r\n</div>\r\n<div class="col3-set">\r\n<div class="col-1">\r\n<p><a href="http://www.varien.com/"><img title="Varien" src="{{skin url=''images/media/about_us_img.jpg''}}" alt="Varien" /></a></p>\r\n<p style="line-height: 1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.</small></p>\r\n<p style="color: #888; font: 1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p>\r\n</div>\r\n<div class="col-2">\r\n<p><strong style="color: #de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</strong></p>\r\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</p>\r\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi. Vestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est. Nulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat. Pellentesque eget velit. Nunc tincidunt.</p>\r\n</div>\r\n<div class="col-3">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper</p>\r\n<p><strong style="color: #de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\r\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\r\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\r\n<p style="line-height: 1.2em;"><strong style="font: italic 2em Georgia, serif;">John Doe</strong><br /><small>Some important guy</small></p>\r\n</div>\r\n</div>', '2007-08-30 14:01:18', '2010-08-31 20:23:57', 1, 0, '', '', '', '', NULL, NULL),
(4, 'Customer Service', 'three_columns', '', '', 'customer-service', '', '<div class="page-title">\r\n<h1>Customer Service</h1>\r\n</div>\r\n<ul class="disc">\r\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\r\n<li><a href="#answer2">Privacy &amp; Security</a></li>\r\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\r\n<li><a href="#answer4">Ordering</a></li>\r\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\r\n<li><a href="#answer6">Viewing Orders</a></li>\r\n<li><a href="#answer7">Updating Account Information</a></li>\r\n</ul>\r\n<dl>\r\n<dt id="answer1">Shipping &amp; Delivery</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer2">Privacy &amp; Security</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer3">Returns &amp; Replacements</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer4">Ordering</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer6">Viewing Orders</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer7">Updating Account Information</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n</dl>', '2007-08-30 14:02:20', '2007-08-30 14:03:37', 1, 0, NULL, NULL, '', NULL, NULL, NULL),
(5, 'Enable Cookies', 'one_column', '', '', 'enable-cookies', '', '<div class="std">\r\n    <ul class="messages">\r\n        <li class="notice-msg">\r\n            <ul>\r\n                <li>Please enable cookies in your web browser to continue.</li>\r\n            </ul>\r\n        </li>\r\n    </ul>\r\n    <div class="page-title">\r\n        <h1><a name="top"></a>What are Cookies?</h1>\r\n    </div>\r\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website. On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically whenever you visit our site so that we can personalize your experience and provide you with better service. We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes. If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase or take advantage of certain features of our website, such as storing items in your Shopping Cart or receiving personalized recommendations. As a result, we strongly encourage you to configure your web browser to accept cookies from our website.</p>\r\n    <h2 class="subtitle">Enabling Cookies</h2>\r\n    <ul class="disc">\r\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\r\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\r\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\r\n        <li><a href="#opera">Opera 7.x</a></li>\r\n    </ul>\r\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Start Internet Explorer</p>\r\n        </li>\r\n        <li>\r\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Privacy</strong> tab</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Advanced</strong> button</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>, put another check mark in the <strong>Always accept session cookies </strong>box</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Restart Internet Explore</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\r\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> tab</p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>) under <strong>Settings</strong>. Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Expand the <strong>Cookies</strong> section</p>\r\n        </li>\r\n        <li>\r\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="opera"></a>Opera 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong> should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n</div>\r\n', '2010-08-21 14:00:26', '2010-08-21 14:00:26', 1, 0, NULL, NULL, '', NULL, NULL, NULL),
(6, 'Contacts', 'two_columns_left', '', '', 'contacts.html', 'Contacts', '<p>It''s contacts :)</p>', '2010-08-31 20:23:20', '2010-08-31 20:23:20', 1, 0, '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_store`
--

DROP TABLE IF EXISTS `cms_page_store`;
CREATE TABLE IF NOT EXISTS `cms_page_store` (
  `page_id` smallint(6) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `FK_CMS_PAGE_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Pages to Stores';

--
-- Dumping data for table `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(3, 0),
(4, 0),
(5, 0),
(2, 1),
(3, 1),
(6, 1),
(2, 2),
(3, 2),
(6, 2),
(2, 3),
(3, 3),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `core_cache`
--

DROP TABLE IF EXISTS `core_cache`;
CREATE TABLE IF NOT EXISTS `core_cache` (
  `id` varchar(255) NOT NULL,
  `data` mediumblob,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `expire_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `core_cache`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_cache_option`
--

DROP TABLE IF EXISTS `core_cache_option`;
CREATE TABLE IF NOT EXISTS `core_cache_option` (
  `code` varchar(32) NOT NULL,
  `value` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `core_cache_option`
--

INSERT INTO `core_cache_option` (`code`, `value`) VALUES
('block_html', 0),
('collections', 0),
('config', 0),
('config_api', 0),
('eav', 0),
('layout', 0),
('translate', 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_cache_tag`
--

DROP TABLE IF EXISTS `core_cache_tag`;
CREATE TABLE IF NOT EXISTS `core_cache_tag` (
  `tag` varchar(255) NOT NULL,
  `cache_id` varchar(255) NOT NULL,
  KEY `IDX_TAG` (`tag`),
  KEY `IDX_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `core_cache_tag`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

DROP TABLE IF EXISTS `core_config_data`;
CREATE TABLE IF NOT EXISTS `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scope` enum('default','websites','stores','config') NOT NULL DEFAULT 'default',
  `scope_id` int(11) NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT 'general',
  `value` text NOT NULL,
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `config_scope` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'catalog/category/root_id', '2'),
(2, 'default', 0, 'web/seo/use_rewrites', '1'),
(3, 'default', 0, 'web/unsecure/base_url', 'http://www.art-posud.com.ua/'),
(4, 'default', 0, 'web/secure/base_url', 'http://www.art-posud.com.ua/'),
(5, 'default', 0, 'general/locale/code', 'uk_UA'),
(6, 'default', 0, 'general/locale/timezone', 'Europe/Minsk'),
(7, 'default', 0, 'currency/options/base', 'UAH'),
(8, 'default', 0, 'currency/options/default', 'UAH'),
(9, 'default', 0, 'currency/options/allow', 'UAH'),
(10, 'default', 0, 'design/package/name', 'crystal'),
(11, 'default', 0, 'design/package/ua_regexp', 'a:0:{}'),
(12, 'default', 0, 'design/theme/locale', ''),
(13, 'default', 0, 'design/theme/template', ''),
(14, 'default', 0, 'design/theme/template_ua_regexp', 'a:0:{}'),
(15, 'default', 0, 'design/theme/skin', 'crystal'),
(16, 'default', 0, 'design/theme/skin_ua_regexp', 'a:1:{s:18:"_1282431329414_414";a:2:{s:6:"regexp";s:0:"";s:5:"value";s:0:"";}}'),
(17, 'default', 0, 'design/theme/layout', ''),
(18, 'default', 0, 'design/theme/layout_ua_regexp', 'a:0:{}'),
(19, 'default', 0, 'design/theme/default', ''),
(20, 'default', 0, 'design/theme/default_ua_regexp', 'a:0:{}'),
(21, 'default', 0, 'design/head/default_title', 'Magento Commerce'),
(22, 'default', 0, 'design/head/title_prefix', ''),
(23, 'default', 0, 'design/head/title_suffix', ''),
(24, 'default', 0, 'design/head/default_description', 'Default Description'),
(25, 'default', 0, 'design/head/default_keywords', 'Magento, Varien, E-commerce'),
(26, 'default', 0, 'design/head/default_robots', 'INDEX,FOLLOW'),
(27, 'default', 0, 'design/head/includes', ''),
(28, 'default', 0, 'design/head/demonotice', '0'),
(29, 'default', 0, 'design/header/logo_src', 'images/logo.gif'),
(30, 'default', 0, 'design/header/logo_alt', 'Magento Commerce'),
(31, 'default', 0, 'design/header/welcome', 'Default welcome msg!'),
(32, 'default', 0, 'design/footer/copyright', '&copy; 2008 Magento Demo Store. All Rights Reserved.'),
(33, 'default', 0, 'design/footer/absolute_footer', ''),
(34, 'default', 0, 'design/watermark/image_size', ''),
(35, 'default', 0, 'design/watermark/image_imageOpacity', ''),
(36, 'default', 0, 'design/watermark/image_position', 'stretch'),
(37, 'default', 0, 'design/watermark/small_image_size', ''),
(38, 'default', 0, 'design/watermark/small_image_imageOpacity', ''),
(39, 'default', 0, 'design/watermark/small_image_position', 'stretch'),
(40, 'default', 0, 'design/watermark/thumbnail_size', ''),
(41, 'default', 0, 'design/watermark/thumbnail_imageOpacity', ''),
(42, 'default', 0, 'design/watermark/thumbnail_position', 'stretch'),
(43, 'default', 0, 'design/pagination/pagination_frame', '5'),
(44, 'default', 0, 'design/pagination/pagination_frame_skip', ''),
(45, 'default', 0, 'design/pagination/anchor_text_for_previous', ''),
(46, 'default', 0, 'design/pagination/anchor_text_for_next', ''),
(47, 'stores', 3, 'general/locale/code', 'ru_RU'),
(48, 'stores', 1, 'general/locale/code', 'en_US'),
(49, 'stores', 1, 'design/package/name', 'default'),
(50, 'default', 0, 'wishlist/general/active', '0'),
(51, 'default', 0, 'wishlist/email/email_template', 'wishlist_email_email_template'),
(52, 'default', 0, 'wishlist/email/email_identity', 'general'),
(53, 'default', 0, 'catalog/review/allow_guest', '1'),
(54, 'default', 0, 'catalog/frontend/list_mode', 'grid-list'),
(55, 'default', 0, 'catalog/frontend/grid_per_page_values', '9,15,30'),
(56, 'default', 0, 'catalog/frontend/grid_per_page', '9'),
(57, 'default', 0, 'catalog/frontend/list_per_page_values', '5,10,15,20,25'),
(58, 'default', 0, 'catalog/frontend/list_per_page', '10'),
(59, 'default', 0, 'catalog/frontend/list_allow_all', '0'),
(60, 'default', 0, 'catalog/frontend/default_sort_by', 'position'),
(61, 'default', 0, 'catalog/frontend/flat_catalog_category', '0'),
(62, 'default', 0, 'catalog/frontend/flat_catalog_product', '0'),
(63, 'default', 0, 'catalog/frontend/parse_url_directives', '1'),
(64, 'default', 0, 'catalog/sitemap/tree_mode', '0'),
(65, 'default', 0, 'catalog/sitemap/lines_perpage', '30'),
(66, 'default', 0, 'catalog/productalert/allow_price', '0'),
(67, 'default', 0, 'catalog/productalert/email_price_template', 'catalog_productalert_email_price_template'),
(68, 'default', 0, 'catalog/productalert/allow_stock', '0'),
(69, 'default', 0, 'catalog/productalert/email_stock_template', 'catalog_productalert_email_stock_template'),
(70, 'default', 0, 'catalog/productalert/email_identity', 'general'),
(71, 'default', 0, 'catalog/productalert_cron/frequency', 'D'),
(72, 'default', 0, 'crontab/jobs/catalog_product_alert/schedule/cron_expr', '0 0 * * *'),
(73, 'default', 0, 'crontab/jobs/catalog_product_alert/run/model', 'productalert/observer::process'),
(74, 'default', 0, 'catalog/productalert_cron/time', '00,00,00'),
(75, 'default', 0, 'catalog/productalert_cron/error_email', ''),
(76, 'default', 0, 'catalog/productalert_cron/error_email_identity', 'general'),
(77, 'default', 0, 'catalog/productalert_cron/error_email_template', 'catalog_productalert_cron_error_email_template'),
(78, 'default', 0, 'catalog/recently_products/scope', 'website'),
(79, 'default', 0, 'catalog/recently_products/viewed_count', '5'),
(80, 'default', 0, 'catalog/recently_products/compared_count', '5'),
(81, 'default', 0, 'catalog/price/scope', '0'),
(82, 'default', 0, 'catalog/navigation/max_depth', '4'),
(83, 'default', 0, 'catalog/search/min_query_length', '1'),
(84, 'default', 0, 'catalog/search/max_query_length', '128'),
(85, 'default', 0, 'catalog/search/max_query_words', '10'),
(86, 'default', 0, 'catalog/search/search_type', '1'),
(87, 'default', 0, 'catalog/search/use_layered_navigation_count', '2000'),
(88, 'default', 0, 'catalog/seo/site_map', '1'),
(89, 'default', 0, 'catalog/seo/search_terms', '1'),
(90, 'default', 0, 'catalog/seo/product_url_suffix', '.html'),
(91, 'default', 0, 'catalog/seo/category_url_suffix', '.html'),
(92, 'default', 0, 'catalog/seo/product_use_categories', '1'),
(93, 'default', 0, 'catalog/seo/save_rewrites_history', '1'),
(94, 'default', 0, 'catalog/seo/title_separator', '-'),
(95, 'default', 0, 'catalog/seo/category_canonical_tag', '0'),
(96, 'default', 0, 'catalog/seo/product_canonical_tag', '0'),
(97, 'default', 0, 'catalog/downloadable/order_item_status', '9'),
(98, 'default', 0, 'catalog/downloadable/downloads_number', '0'),
(99, 'default', 0, 'catalog/downloadable/shareable', '0'),
(100, 'default', 0, 'catalog/downloadable/samples_title', 'Samples'),
(101, 'default', 0, 'catalog/downloadable/links_title', 'Links'),
(102, 'default', 0, 'catalog/downloadable/links_target_new_window', '1'),
(103, 'default', 0, 'catalog/downloadable/content_disposition', 'inline'),
(104, 'default', 0, 'catalog/downloadable/disable_guest_checkout', '1'),
(105, 'default', 0, 'catalog/custom_options/use_calendar', '0'),
(106, 'default', 0, 'catalog/custom_options/date_fields_order', 'm,d,y'),
(107, 'default', 0, 'catalog/custom_options/time_format', '12h'),
(108, 'default', 0, 'catalog/custom_options/year_range', ',');

-- --------------------------------------------------------

--
-- Table structure for table `core_email_template`
--

DROP TABLE IF EXISTS `core_email_template`;
CREATE TABLE IF NOT EXISTS `core_email_template` (
  `template_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(150) DEFAULT NULL,
  `template_text` text,
  `template_styles` text,
  `template_type` int(3) unsigned DEFAULT NULL,
  `template_subject` varchar(200) DEFAULT NULL,
  `template_sender_name` varchar(200) DEFAULT NULL,
  `template_sender_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `orig_template_code` varchar(200) DEFAULT NULL,
  `orig_template_variables` text NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `added_at` (`added_at`),
  KEY `modified_at` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email templates' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_email_template`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_flag`
--

DROP TABLE IF EXISTS `core_flag`;
CREATE TABLE IF NOT EXISTS `core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flag_code` varchar(255) NOT NULL,
  `state` smallint(5) unsigned NOT NULL DEFAULT '0',
  `flag_data` text,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`flag_id`),
  KEY `last_update` (`last_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `core_flag`
--

INSERT INTO `core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2010-08-21 14:01:28'),
(2, 'catalog_product_flat', 0, 'a:1:{s:8:"is_built";b:1;}', '2010-10-03 13:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `core_layout_link`
--

DROP TABLE IF EXISTS `core_layout_link`;
CREATE TABLE IF NOT EXISTS `core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `area` varchar(64) NOT NULL DEFAULT '',
  `package` varchar(64) NOT NULL DEFAULT '',
  `theme` varchar(64) NOT NULL DEFAULT '',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `store_id` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `FK_core_layout_link_update` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_layout_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_layout_update`
--

DROP TABLE IF EXISTS `core_layout_update`;
CREATE TABLE IF NOT EXISTS `core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) DEFAULT NULL,
  `xml` text,
  `sort_order` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layout_update_id`),
  KEY `handle` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_layout_update`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_resource`
--

DROP TABLE IF EXISTS `core_resource`;
CREATE TABLE IF NOT EXISTS `core_resource` (
  `code` varchar(50) NOT NULL DEFAULT '',
  `version` varchar(50) NOT NULL DEFAULT '',
  `data_version` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resource version registry';

--
-- Dumping data for table `core_resource`
--

INSERT INTO `core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.0.0', '1.0.0'),
('admin_setup', '0.7.2', '0.7.2'),
('api_setup', '0.8.1', '0.8.1'),
('backup_setup', '0.7.0', '0.7.0'),
('bundle_setup', '0.1.12', '0.1.12'),
('catalogindex_setup', '0.7.10', '0.7.10'),
('cataloginventory_setup', '0.7.8', '0.7.8'),
('catalogrule_setup', '0.7.10', '0.7.10'),
('catalogsearch_setup', '0.7.7', '0.7.7'),
('catalog_setup', '1.4.0.0.28', '1.4.0.0.28'),
('checkout_setup', '0.9.5', '0.9.5'),
('cms_setup', '0.7.13', '0.7.13'),
('compiler_setup', '0.1.0', '0.1.0'),
('contacts_setup', '0.8.0', '0.8.0'),
('core_setup', '0.8.26', '0.8.26'),
('cron_setup', '0.7.1', '0.7.1'),
('customer_setup', '1.4.0.0.7', '1.4.0.0.7'),
('dataflow_setup', '0.7.4', '0.7.4'),
('directory_setup', '0.8.10', '0.8.10'),
('downloadable_setup', '1.4.0.1', '1.4.0.1'),
('eav_setup', '0.7.15', '0.7.15'),
('giftmessage_setup', '0.7.2', '0.7.2'),
('googlebase_setup', '0.1.1', '0.1.1'),
('googlecheckout_setup', '0.7.3', '0.7.3'),
('googleoptimizer_setup', '0.1.2', '0.1.2'),
('index_setup', '1.4.0.2', '1.4.0.2'),
('log_setup', '0.7.7', '0.7.7'),
('moneybookers_setup', '1.2', '1.2'),
('newsletter_setup', '0.8.2', '0.8.2'),
('paygate_setup', '0.7.1', '0.7.1'),
('payment_setup', '0.7.0', '0.7.0'),
('paypaluk_setup', '0.7.0', '0.7.0'),
('paypal_setup', '1.4.0.1', '1.4.0.1'),
('poll_setup', '0.7.2', '0.7.2'),
('productalert_setup', '0.7.2', '0.7.2'),
('rating_setup', '0.7.2', '0.7.2'),
('reports_setup', '0.7.10', '0.7.10'),
('review_setup', '0.7.6', '0.7.6'),
('salesrule_setup', '1.4.0.0.4', '1.4.0.0.4'),
('sales_setup', '1.4.0.15', '1.4.0.15'),
('sendfriend_setup', '0.7.4', '0.7.4'),
('shipping_setup', '0.7.0', '0.7.0'),
('sitemap_setup', '0.7.2', '0.7.2'),
('tag_setup', '0.7.7', '0.7.7'),
('tax_setup', '1.4.0.0', '1.4.0.0'),
('usa_setup', '0.7.1', '0.7.1'),
('weee_setup', '0.13', '0.13'),
('widget_setup', '1.4.0.0.0', '1.4.0.0.0'),
('wishlist_setup', '0.7.8', '0.7.8');

-- --------------------------------------------------------

--
-- Table structure for table `core_session`
--

DROP TABLE IF EXISTS `core_session`;
CREATE TABLE IF NOT EXISTS `core_session` (
  `session_id` varchar(255) NOT NULL DEFAULT '',
  `website_id` smallint(5) unsigned DEFAULT NULL,
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` mediumblob NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `FK_SESSION_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Session data store';

--
-- Dumping data for table `core_session`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
CREATE TABLE IF NOT EXISTS `core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL DEFAULT '',
  `website_id` smallint(5) unsigned DEFAULT '0',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `code` (`code`),
  KEY `FK_STORE_WEBSITE` (`website_id`),
  KEY `is_active` (`is_active`,`sort_order`),
  KEY `FK_STORE_GROUP` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1),
(2, 'ua', 1, 1, 'ua', 0, 1),
(3, 'ru', 1, 1, 'ru', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_store_group`
--

DROP TABLE IF EXISTS `core_store_group`;
CREATE TABLE IF NOT EXISTS `core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `FK_STORE_GROUP_WEBSITE` (`website_id`),
  KEY `default_store_id` (`default_store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_store_group`
--

INSERT INTO `core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_translate`
--

DROP TABLE IF EXISTS `core_translate`;
CREATE TABLE IF NOT EXISTS `core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `string` varchar(255) NOT NULL DEFAULT '',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `translate` varchar(255) NOT NULL DEFAULT '',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `IDX_CODE` (`store_id`,`locale`,`string`),
  KEY `FK_CORE_TRANSLATE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translation data' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_translate`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_url_rewrite`
--

DROP TABLE IF EXISTS `core_url_rewrite`;
CREATE TABLE IF NOT EXISTS `core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `id_path` varchar(255) NOT NULL DEFAULT '',
  `request_path` varchar(255) NOT NULL DEFAULT '',
  `target_path` varchar(255) NOT NULL DEFAULT '',
  `is_system` tinyint(1) unsigned DEFAULT '1',
  `options` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_REQUEST_PATH` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_PATH` (`id_path`,`is_system`,`store_id`),
  KEY `FK_CORE_URL_REWRITE_STORE` (`store_id`),
  KEY `IDX_ID_PATH` (`id_path`),
  KEY `IDX_TARGET_PATH` (`target_path`,`store_id`),
  KEY `FK_CORE_URL_REWRITE_PRODUCT` (`product_id`),
  KEY `IDX_CATEGORY_REWRITE` (`category_id`,`is_system`,`product_id`,`store_id`,`id_path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `core_url_rewrite`
--

INSERT INTO `core_url_rewrite` (`url_rewrite_id`, `store_id`, `category_id`, `product_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`) VALUES
(1, 1, 3, NULL, 'category/3', 'dsd-d-d-n-d-d-d-d-d-d-d.html', 'catalog/category/view/id/3', 1, '', NULL),
(2, 2, 3, NULL, 'category/3', 'dsd-d-d-n-d-d-d-d-d-d-d.html', 'catalog/category/view/id/3', 1, '', NULL),
(3, 3, 3, NULL, 'category/3', 'dsd-d-d-n-d-d-d-d-d-d-d.html', 'catalog/category/view/id/3', 1, '', NULL),
(4, 1, 4, NULL, 'category/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html', 'catalog/category/view/id/4', 1, '', NULL),
(5, 2, 4, NULL, 'category/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html', 'catalog/category/view/id/4', 1, '', NULL),
(6, 3, 4, NULL, 'category/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html', 'catalog/category/view/id/4', 1, '', NULL),
(7, 1, 5, NULL, 'category/5', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html', 'catalog/category/view/id/5', 1, '', NULL),
(8, 2, 5, NULL, 'category/5', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html', 'catalog/category/view/id/5', 1, '', NULL),
(9, 3, 5, NULL, 'category/5', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html', 'catalog/category/view/id/5', 1, '', NULL),
(10, 1, NULL, 2, 'product/2', 'kelih-dlja-vina1.html', 'catalog/product/view/id/2', 1, '', NULL),
(11, 1, 4, 2, 'product/2/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina1.html', 'catalog/product/view/id/2/category/4', 1, '', NULL),
(12, 2, NULL, 2, 'product/2', 'kelih-dlja-vina1.html', 'catalog/product/view/id/2', 1, '', NULL),
(13, 2, 4, 2, 'product/2/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina1.html', 'catalog/product/view/id/2/category/4', 1, '', NULL),
(14, 3, NULL, 2, 'product/2', 'kelih-dlja-vina1.html', 'catalog/product/view/id/2', 1, '', NULL),
(15, 3, 4, 2, 'product/2/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina1.html', 'catalog/product/view/id/2/category/4', 1, '', NULL),
(16, 1, 4, 3, 'product/3/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-2.html', 'catalog/product/view/id/3/category/4', 1, '', NULL),
(17, 1, NULL, 3, 'product/3', 'kelih-dlja-vina-2.html', 'catalog/product/view/id/3', 1, '', NULL),
(18, 2, 4, 3, 'product/3/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-2.html', 'catalog/product/view/id/3/category/4', 1, '', NULL),
(19, 2, NULL, 3, 'product/3', 'kelih-dlja-vina-2.html', 'catalog/product/view/id/3', 1, '', NULL),
(20, 3, 4, 3, 'product/3/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-2.html', 'catalog/product/view/id/3/category/4', 1, '', NULL),
(21, 3, NULL, 3, 'product/3', 'kelih-dlja-vina-2.html', 'catalog/product/view/id/3', 1, '', NULL),
(22, 1, 4, 5, 'product/5/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-4.html', 'catalog/product/view/id/5/category/4', 1, '', NULL),
(23, 1, NULL, 5, 'product/5', 'kelih-dlja-vina-4.html', 'catalog/product/view/id/5', 1, '', NULL),
(24, 2, 4, 5, 'product/5/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-4.html', 'catalog/product/view/id/5/category/4', 1, '', NULL),
(25, 2, NULL, 5, 'product/5', 'kelih-dlja-vina-4.html', 'catalog/product/view/id/5', 1, '', NULL),
(26, 3, 4, 5, 'product/5/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-4.html', 'catalog/product/view/id/5/category/4', 1, '', NULL),
(27, 3, NULL, 5, 'product/5', 'kelih-dlja-vina-4.html', 'catalog/product/view/id/5', 1, '', NULL),
(28, 1, 4, 10, 'product/10/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html', 'catalog/product/view/id/10/category/4', 1, '', NULL),
(29, 1, NULL, 10, 'product/10', 'kelih-dlja-vina-9.html', 'catalog/product/view/id/10', 1, '', NULL),
(30, 2, 4, 10, 'product/10/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html', 'catalog/product/view/id/10/category/4', 1, '', NULL),
(31, 2, NULL, 10, 'product/10', 'kelih-dlja-vina-9.html', 'catalog/product/view/id/10', 1, '', NULL),
(32, 3, 4, 10, 'product/10/4', 'dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html', 'catalog/product/view/id/10/category/4', 1, '', NULL),
(33, 3, NULL, 10, 'product/10', 'kelih-dlja-vina-9.html', 'catalog/product/view/id/10', 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_variable`
--

DROP TABLE IF EXISTS `core_variable`;
CREATE TABLE IF NOT EXISTS `core_variable` (
  `variable_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `IDX_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_variable`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_variable_value`
--

DROP TABLE IF EXISTS `core_variable_value`;
CREATE TABLE IF NOT EXISTS `core_variable_value` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `variable_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plain_value` text NOT NULL,
  `html_value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_VARIABLE_STORE` (`variable_id`,`store_id`),
  KEY `IDX_VARIABLE_ID` (`variable_id`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_variable_value`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_website`
--

DROP TABLE IF EXISTS `core_website`;
CREATE TABLE IF NOT EXISTS `core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `code` (`code`),
  KEY `sort_order` (`sort_order`),
  KEY `default_group_id` (`default_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Websites' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_website`
--

INSERT INTO `core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_aggregated`
--

DROP TABLE IF EXISTS `coupon_aggregated`;
CREATE TABLE IF NOT EXISTS `coupon_aggregated` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `coupon_code` varchar(50) NOT NULL DEFAULT '',
  `coupon_uses` int(11) NOT NULL DEFAULT '0',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGREGATED_PSOC` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `coupon_aggregated`
--


-- --------------------------------------------------------

--
-- Table structure for table `coupon_aggregated_order`
--

DROP TABLE IF EXISTS `coupon_aggregated_order`;
CREATE TABLE IF NOT EXISTS `coupon_aggregated_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `coupon_code` varchar(50) NOT NULL DEFAULT '',
  `coupon_uses` int(11) NOT NULL DEFAULT '0',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGREGATED_ORDER_PSOC` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `coupon_aggregated_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `cron_schedule`
--

DROP TABLE IF EXISTS `cron_schedule`;
CREATE TABLE IF NOT EXISTS `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_code` varchar(255) NOT NULL DEFAULT '0',
  `status` enum('pending','running','success','missed','error') NOT NULL DEFAULT 'pending',
  `messages` text,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `executed_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `finished_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`schedule_id`),
  KEY `task_name` (`job_code`),
  KEY `scheduled_at` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cron_schedule`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity`
--

DROP TABLE IF EXISTS `customer_address_entity`;
CREATE TABLE IF NOT EXISTS `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `increment_id` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_id`),
  KEY `FK_CUSTOMER_ADDRESS_CUSTOMER_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Customer Address Entities' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_datetime`
--

DROP TABLE IF EXISTS `customer_address_entity_datetime`;
CREATE TABLE IF NOT EXISTS `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_DATETIME_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_ADDRESS_DATETIME_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_DATETIME_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity_datetime`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_decimal`
--

DROP TABLE IF EXISTS `customer_address_entity_decimal`;
CREATE TABLE IF NOT EXISTS `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_DECIMAL_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_ADDRESS_DECIMAL_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_DECIMAL_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity_decimal`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_int`
--

DROP TABLE IF EXISTS `customer_address_entity_int`;
CREATE TABLE IF NOT EXISTS `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_INT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_ADDRESS_INT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_INT_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity_int`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_text`
--

DROP TABLE IF EXISTS `customer_address_entity_text`;
CREATE TABLE IF NOT EXISTS `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_TEXT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_ADDRESS_TEXT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_TEXT_ENTITY` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity_text`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_varchar`
--

DROP TABLE IF EXISTS `customer_address_entity_varchar`;
CREATE TABLE IF NOT EXISTS `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_VARCHAR_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_ADDRESS_VARCHAR_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_ADDRESS_VARCHAR_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity_varchar`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute`
--

DROP TABLE IF EXISTS `customer_eav_attribute`;
CREATE TABLE IF NOT EXISTS `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_visible_on_front` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `input_filter` varchar(255) NOT NULL,
  `lines_to_divide_multiline` smallint(5) unsigned NOT NULL DEFAULT '0',
  `min_text_length` int(11) unsigned NOT NULL DEFAULT '0',
  `max_text_length` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `is_visible_on_front`, `input_filter`, `lines_to_divide_multiline`, `min_text_length`, `max_text_length`) VALUES
(1, 1, 0, '', 0, 0, 0),
(2, 0, 0, '', 0, 0, 0),
(3, 1, 0, '', 0, 0, 0),
(4, 1, 0, '', 0, 0, 0),
(5, 1, 0, '', 0, 0, 0),
(6, 1, 0, '', 0, 0, 0),
(7, 1, 0, '', 0, 0, 0),
(8, 1, 0, '', 0, 0, 0),
(9, 1, 0, '', 0, 0, 0),
(10, 1, 0, '', 0, 0, 0),
(11, 1, 0, '', 0, 0, 0),
(12, 1, 0, '', 0, 0, 0),
(13, 0, 0, '', 0, 0, 0),
(14, 0, 0, '', 0, 0, 0),
(15, 1, 0, '', 0, 0, 0),
(16, 0, 0, '', 0, 0, 0),
(17, 0, 0, '', 0, 0, 0),
(18, 1, 0, '', 0, 0, 0),
(19, 1, 0, '', 0, 0, 0),
(20, 1, 0, '', 0, 0, 0),
(21, 1, 0, '', 0, 0, 0),
(22, 1, 0, '', 0, 0, 0),
(23, 1, 0, '', 0, 0, 0),
(24, 1, 0, '', 0, 0, 0),
(25, 1, 0, '', 0, 0, 0),
(26, 1, 0, '', 0, 0, 0),
(27, 1, 0, '', 0, 0, 0),
(28, 1, 0, '', 0, 0, 0),
(29, 1, 0, '', 0, 0, 0),
(30, 1, 0, '', 0, 0, 0),
(31, 1, 0, '', 0, 0, 0),
(32, 1, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity`
--

DROP TABLE IF EXISTS `customer_entity`;
CREATE TABLE IF NOT EXISTS `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `group_id` smallint(3) unsigned NOT NULL DEFAULT '0',
  `increment_id` varchar(50) NOT NULL DEFAULT '',
  `store_id` smallint(5) unsigned DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_id`),
  KEY `FK_CUSTOMER_ENTITY_STORE` (`store_id`),
  KEY `IDX_ENTITY_TYPE` (`entity_type_id`),
  KEY `IDX_AUTH` (`email`,`website_id`),
  KEY `FK_CUSTOMER_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Customer Entityies' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_entity`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_datetime`
--

DROP TABLE IF EXISTS `customer_entity_datetime`;
CREATE TABLE IF NOT EXISTS `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_DATETIME_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_DATETIME_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_DATETIME_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_entity_datetime`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_decimal`
--

DROP TABLE IF EXISTS `customer_entity_decimal`;
CREATE TABLE IF NOT EXISTS `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_DECIMAL_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_DECIMAL_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_DECIMAL_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_entity_decimal`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_int`
--

DROP TABLE IF EXISTS `customer_entity_int`;
CREATE TABLE IF NOT EXISTS `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_INT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_INT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_INT_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_entity_int`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_text`
--

DROP TABLE IF EXISTS `customer_entity_text`;
CREATE TABLE IF NOT EXISTS `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_TEXT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_TEXT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_TEXT_ENTITY` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_entity_text`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_varchar`
--

DROP TABLE IF EXISTS `customer_entity_varchar`;
CREATE TABLE IF NOT EXISTS `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `IDX_ATTRIBUTE_VALUE` (`entity_id`,`attribute_id`),
  KEY `FK_CUSTOMER_VARCHAR_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_CUSTOMER_VARCHAR_ATTRIBUTE` (`attribute_id`),
  KEY `FK_CUSTOMER_VARCHAR_ENTITY` (`entity_id`),
  KEY `IDX_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_entity_varchar`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_code` varchar(32) NOT NULL DEFAULT '',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer groups' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch`
--

DROP TABLE IF EXISTS `dataflow_batch`;
CREATE TABLE IF NOT EXISTS `dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adapter` varchar(128) DEFAULT NULL,
  `params` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `FK_DATAFLOW_BATCH_PROFILE` (`profile_id`),
  KEY `FK_DATAFLOW_BATCH_STORE` (`store_id`),
  KEY `IDX_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_batch`
--


-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch_export`
--

DROP TABLE IF EXISTS `dataflow_batch_export`;
CREATE TABLE IF NOT EXISTS `dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0',
  `batch_data` longtext,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`batch_export_id`),
  KEY `FK_DATAFLOW_BATCH_EXPORT_BATCH` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_batch_export`
--


-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch_import`
--

DROP TABLE IF EXISTS `dataflow_batch_import`;
CREATE TABLE IF NOT EXISTS `dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0',
  `batch_data` longtext,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`batch_import_id`),
  KEY `FK_DATAFLOW_BATCH_IMPORT_BATCH` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_batch_import`
--


-- --------------------------------------------------------

--
-- Table structure for table `dataflow_import_data`
--

DROP TABLE IF EXISTS `dataflow_import_data`;
CREATE TABLE IF NOT EXISTS `dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`import_id`),
  KEY `FK_dataflow_import_data` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_import_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `dataflow_profile`
--

DROP TABLE IF EXISTS `dataflow_profile`;
CREATE TABLE IF NOT EXISTS `dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actions_xml` text,
  `gui_data` text,
  `direction` enum('import','export') DEFAULT NULL,
  `entity_type` varchar(64) NOT NULL DEFAULT '',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `data_transfer` enum('file','interactive') DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dataflow_profile`
--

INSERT INTO `dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2010-08-21 17:00:26', '2010-08-21 17:00:26', '<action type="catalog/convert_adapter_product" method="load">\r\n    <var name="store"><![CDATA[0]]></var>\r\n</action>\r\n\r\n<action type="catalog/convert_parser_product" method="unparse">\r\n    <var name="store"><![CDATA[0]]></var>\r\n</action>\r\n\r\n<action type="dataflow/convert_mapper_column" method="map">\r\n</action>\r\n\r\n<action type="dataflow/convert_parser_csv" method="unparse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n</action>\r\n\r\n<action type="dataflow/convert_adapter_io" method="save">\r\n    <var name="type">file</var>\r\n    <var name="path">var/export</var>\r\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\r\n</action>\r\n\r\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2010-08-21 17:00:26', '2010-08-21 17:00:26', '<action type="catalog/convert_adapter_product" method="load">\r\n    <var name="store"><![CDATA[0]]></var>\r\n</action>\r\n\r\n<action type="catalog/convert_parser_product" method="unparse">\r\n    <var name="store"><![CDATA[0]]></var>\r\n</action>\r\n\r\n<action type="dataflow/convert_mapper_column" method="map">\r\n    <var name="map">\r\n        <map name="store"><![CDATA[store]]></map>\r\n        <map name="sku"><![CDATA[sku]]></map>\r\n        <map name="qty"><![CDATA[qty]]></map>\r\n        <map name="is_in_stock"><![CDATA[is_in_stock]]></map>\r\n    </var>\r\n    <var name="_only_specified">true</var>\r\n</action>\r\n\r\n<action type="dataflow/convert_parser_csv" method="unparse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n</action>\r\n\r\n<action type="dataflow/convert_adapter_io" method="save">\r\n    <var name="type">file</var>\r\n    <var name="path">var/export</var>\r\n    <var name="filename"><![CDATA[export_product_stocks.csv]]></var>\r\n</action>\r\n\r\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2010-08-21 17:00:26', '2010-08-21 17:00:26', '<action type="dataflow/convert_parser_csv" method="parse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n    <var name="store"><![CDATA[0]]></var>\r\n    <var name="adapter">catalog/convert_adapter_product</var>\r\n    <var name="method">parse</var>\r\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2010-08-21 17:00:26', '2010-08-21 17:00:26', '<action type="dataflow/convert_parser_csv" method="parse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n    <var name="store"><![CDATA[0]]></var>\r\n    <var name="adapter">catalog/convert_adapter_product</var>\r\n    <var name="method">parse</var>\r\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2010-08-21 17:00:26', '2010-08-21 17:00:26', '<action type="customer/convert_adapter_customer" method="load">\r\n    <var name="store"><![CDATA[0]]></var>\r\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\r\n</action>\r\n\r\n<action type="customer/convert_parser_customer" method="unparse">\r\n    <var name="store"><![CDATA[0]]></var>\r\n</action>\r\n\r\n<action type="dataflow/convert_mapper_column" method="map">\r\n</action>\r\n\r\n<action type="dataflow/convert_parser_csv" method="unparse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n</action>\r\n\r\n<action type="dataflow/convert_adapter_io" method="save">\r\n    <var name="type">file</var>\r\n    <var name="path">var/export</var>\r\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\r\n</action>\r\n\r\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2010-08-21 17:00:26', '2010-08-21 17:00:26', '<action type="dataflow/convert_parser_csv" method="parse">\r\n    <var name="delimiter"><![CDATA[,]]></var>\r\n    <var name="enclose"><![CDATA["]]></var>\r\n    <var name="fieldnames">true</var>\r\n    <var name="store"><![CDATA[0]]></var>\r\n    <var name="adapter">customer/convert_adapter_customer</var>\r\n    <var name="method">parse</var>\r\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_profile_history`
--

DROP TABLE IF EXISTS `dataflow_profile_history`;
CREATE TABLE IF NOT EXISTS `dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(64) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `performed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `FK_dataflow_profile_history` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_profile_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `dataflow_session`
--

DROP TABLE IF EXISTS `dataflow_session`;
CREATE TABLE IF NOT EXISTS `dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `direction` varchar(32) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_session`
--


-- --------------------------------------------------------

--
-- Table structure for table `design_change`
--

DROP TABLE IF EXISTS `design_change`;
CREATE TABLE IF NOT EXISTS `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `design` varchar(255) NOT NULL DEFAULT '',
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  PRIMARY KEY (`design_change_id`),
  KEY `FK_DESIGN_CHANGE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `design_change`
--


-- --------------------------------------------------------

--
-- Table structure for table `directory_country`
--

DROP TABLE IF EXISTS `directory_country`;
CREATE TABLE IF NOT EXISTS `directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '',
  `iso2_code` varchar(2) NOT NULL DEFAULT '',
  `iso3_code` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Countries';

--
-- Dumping data for table `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_format`
--

DROP TABLE IF EXISTS `directory_country_format`;
CREATE TABLE IF NOT EXISTS `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` varchar(2) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `format` text NOT NULL,
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `country_type` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Countries format' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `directory_country_format`
--


-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region`
--

DROP TABLE IF EXISTS `directory_country_region`;
CREATE TABLE IF NOT EXISTS `directory_country_region` (
  `region_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` varchar(4) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL DEFAULT '',
  `default_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`region_id`),
  KEY `FK_REGION_COUNTRY` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Country regions' AUTO_INCREMENT=320 ;

--
-- Dumping data for table `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Voralberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '01', 'Ain'),
(183, 'FR', '02', 'Aisne'),
(184, 'FR', '03', 'Allier'),
(185, 'FR', '04', 'Alpes-de-Haute-Provence'),
(186, 'FR', '05', 'Hautes-Alpes'),
(187, 'FR', '06', 'Alpes-Maritimes'),
(188, 'FR', '07', 'Ardèche'),
(189, 'FR', '08', 'Ardennes'),
(190, 'FR', '09', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d''Or'),
(204, 'FR', '22', 'Côtes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region_name`
--

DROP TABLE IF EXISTS `directory_country_region_name`;
CREATE TABLE IF NOT EXISTS `directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '',
  `region_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `FK_DIRECTORY_REGION_NAME_REGION` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Regions names';

--
-- Dumping data for table `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Voralberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d''Or'),
('en_US', 204, 'Côtes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea');

-- --------------------------------------------------------

--
-- Table structure for table `directory_currency_rate`
--

DROP TABLE IF EXISTS `directory_currency_rate`;
CREATE TABLE IF NOT EXISTS `directory_currency_rate` (
  `currency_from` char(3) NOT NULL DEFAULT '',
  `currency_to` char(3) NOT NULL DEFAULT '',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `FK_CURRENCY_RATE_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directory_currency_rate`
--

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', 1.000000000000),
('EUR', 'USD', 1.415000000000),
('USD', 'EUR', 0.706700000000),
('USD', 'USD', 1.000000000000);

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link`
--

DROP TABLE IF EXISTS `downloadable_link`;
CREATE TABLE IF NOT EXISTS `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `number_of_downloads` int(10) unsigned DEFAULT NULL,
  `is_shareable` smallint(1) unsigned NOT NULL DEFAULT '0',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_file` varchar(255) NOT NULL DEFAULT '',
  `link_type` varchar(20) NOT NULL DEFAULT '',
  `sample_url` varchar(255) NOT NULL DEFAULT '',
  `sample_file` varchar(255) NOT NULL DEFAULT '',
  `sample_type` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `DOWNLODABLE_LINK_PRODUCT` (`product_id`),
  KEY `DOWNLODABLE_LINK_PRODUCT_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `downloadable_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_price`
--

DROP TABLE IF EXISTS `downloadable_link_price`;
CREATE TABLE IF NOT EXISTS `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`price_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_LINK` (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `downloadable_link_price`
--


-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

DROP TABLE IF EXISTS `downloadable_link_purchased`;
CREATE TABLE IF NOT EXISTS `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_increment_id` varchar(50) NOT NULL DEFAULT '',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_sku` varchar(255) NOT NULL DEFAULT '',
  `link_section_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`purchased_id`),
  KEY `DOWNLOADABLE_ORDER_ID` (`order_id`),
  KEY `DOWNLOADABLE_CUSTOMER_ID` (`customer_id`),
  KEY `KEY_DOWNLOADABLE_ORDER_ITEM_ID` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `downloadable_link_purchased`
--


-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased_item`
--

DROP TABLE IF EXISTS `downloadable_link_purchased_item`;
CREATE TABLE IF NOT EXISTS `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned DEFAULT '0',
  `link_hash` varchar(255) NOT NULL DEFAULT '',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0',
  `link_id` int(20) unsigned NOT NULL DEFAULT '0',
  `link_title` varchar(255) NOT NULL DEFAULT '',
  `is_shareable` smallint(1) unsigned NOT NULL DEFAULT '0',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_file` varchar(255) NOT NULL DEFAULT '',
  `link_type` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ID` (`purchased_id`),
  KEY `DOWNLOADABLE_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADALBE_LINK_HASH` (`link_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `downloadable_link_purchased_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_title`
--

DROP TABLE IF EXISTS `downloadable_link_title`;
CREATE TABLE IF NOT EXISTS `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_LINK_TITLE_STORE` (`link_id`,`store_id`),
  KEY `DOWNLOADABLE_LINK_TITLE_LINK` (`link_id`),
  KEY `DOWNLOADABLE_LINK_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `downloadable_link_title`
--


-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample`
--

DROP TABLE IF EXISTS `downloadable_sample`;
CREATE TABLE IF NOT EXISTS `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sample_url` varchar(255) NOT NULL DEFAULT '',
  `sample_file` varchar(255) NOT NULL DEFAULT '',
  `sample_type` varchar(20) NOT NULL DEFAULT '',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sample_id`),
  KEY `DOWNLODABLE_SAMPLE_PRODUCT` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `downloadable_sample`
--


-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample_title`
--

DROP TABLE IF EXISTS `downloadable_sample_title`;
CREATE TABLE IF NOT EXISTS `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_SAMPLE_TITLE_STORE` (`sample_id`,`store_id`),
  KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE` (`sample_id`),
  KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `downloadable_sample_title`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute`
--

DROP TABLE IF EXISTS `eav_attribute`;
CREATE TABLE IF NOT EXISTS `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_code` varchar(255) NOT NULL DEFAULT '',
  `attribute_model` varchar(255) DEFAULT NULL,
  `backend_model` varchar(255) DEFAULT NULL,
  `backend_type` enum('static','datetime','decimal','int','text','varchar') NOT NULL DEFAULT 'static',
  `backend_table` varchar(255) DEFAULT NULL,
  `frontend_model` varchar(255) DEFAULT NULL,
  `frontend_input` varchar(50) DEFAULT NULL,
  `frontend_label` varchar(255) DEFAULT NULL,
  `frontend_class` varchar(255) DEFAULT NULL,
  `source_model` varchar(255) DEFAULT NULL,
  `is_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default_value` text,
  `is_unique` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `entity_type_id` (`entity_type_id`,`attribute_code`),
  KEY `IDX_USED_FOR_SORT_BY` (`entity_type_id`),
  KEY `IDX_USED_IN_PRODUCT_LISTING` (`entity_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', '', '', 'select', 'Associate to Website', '', 'customer/customer_attribute_source_website', 1, 0, '', 0, ''),
(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', '', '', 'select', 'Create In', '', 'customer/customer_attribute_source_store', 1, 0, '', 0, ''),
(3, 1, 'created_in', NULL, '', 'varchar', '', '', 'text', 'Created From', '', '', 1, 0, '', 0, ''),
(4, 1, 'prefix', NULL, '', 'varchar', '', '', 'text', 'Prefix', '', '', 0, 0, '', 0, ''),
(5, 1, 'firstname', NULL, '', 'varchar', '', '', 'text', 'First Name', '', '', 1, 0, '', 0, ''),
(6, 1, 'middlename', NULL, '', 'varchar', '', '', 'text', 'Middle Name/Initial', '', '', 0, 0, '', 0, ''),
(7, 1, 'lastname', NULL, '', 'varchar', '', '', 'text', 'Last Name', '', '', 1, 0, '', 0, ''),
(8, 1, 'suffix', NULL, '', 'varchar', '', '', 'text', 'Suffix', '', '', 0, 0, '', 0, ''),
(9, 1, 'email', NULL, '', 'static', '', '', 'text', 'Email', '', '', 1, 0, '', 0, ''),
(10, 1, 'group_id', NULL, '', 'static', '', '', 'select', 'Group', '', 'customer/customer_attribute_source_group', 1, 0, '', 0, ''),
(11, 1, 'dob', NULL, '', 'datetime', '', '', 'date', 'Date Of Birth', '', '', 0, 0, '', 0, ''),
(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', '', '', 'hidden', '', '', '', 0, 0, '', 0, ''),
(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', '', '', 'text', 'Default Billing Address', '', '', 0, 0, '', 0, ''),
(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', '', '', 'text', 'Default Shipping Address', '', '', 0, 0, '', 0, ''),
(15, 1, 'taxvat', NULL, '', 'varchar', '', '', 'text', 'Tax/VAT Number', '', '', 0, 0, '', 0, ''),
(16, 1, 'confirmation', NULL, '', 'varchar', '', '', 'text', 'Is Confirmed', '', '', 0, 0, '', 0, ''),
(17, 1, 'created_at', NULL, '', 'static', '', '', 'date', 'Created At', '', '', 0, 0, '', 0, ''),
(18, 2, 'prefix', NULL, '', 'varchar', '', '', 'text', 'Prefix', '', '', 0, 0, '', 0, ''),
(19, 2, 'firstname', NULL, '', 'varchar', '', '', 'text', 'First Name', '', '', 1, 0, '', 0, ''),
(20, 2, 'middlename', NULL, '', 'varchar', '', '', 'text', 'Middle Name/Initial', '', '', 0, 0, '', 0, ''),
(21, 2, 'lastname', NULL, '', 'varchar', '', '', 'text', 'Last Name', '', '', 1, 0, '', 0, ''),
(22, 2, 'suffix', NULL, '', 'varchar', '', '', 'text', 'Suffix', '', '', 0, 0, '', 0, ''),
(23, 2, 'company', NULL, '', 'varchar', '', '', 'text', 'Company', '', '', 0, 0, '', 0, ''),
(24, 2, 'street', NULL, 'customer_entity/address_attribute_backend_street', 'text', '', '', 'multiline', 'Street Address', '', '', 1, 0, '', 0, ''),
(25, 2, 'city', NULL, '', 'varchar', '', '', 'text', 'City', '', '', 1, 0, '', 0, ''),
(26, 2, 'country_id', NULL, '', 'varchar', '', '', 'select', 'Country', '', 'customer_entity/address_attribute_source_country', 1, 0, '', 0, ''),
(27, 2, 'region', NULL, 'customer_entity/address_attribute_backend_region', 'varchar', '', '', 'text', 'State/Province', '', '', 1, 0, '', 0, ''),
(28, 2, 'region_id', NULL, '', 'int', '', '', 'hidden', 'State/Province', '', 'customer_entity/address_attribute_source_region', 0, 0, '', 0, ''),
(29, 2, 'postcode', NULL, '', 'varchar', '', '', 'text', 'Zip/Postal Code', '', '', 1, 0, '', 0, ''),
(30, 2, 'telephone', NULL, '', 'varchar', '', '', 'text', 'Telephone', '', '', 1, 0, '', 0, ''),
(31, 2, 'fax', NULL, '', 'varchar', '', '', 'text', 'Fax', '', '', 0, 0, '', 0, ''),
(32, 1, 'gender', NULL, '', 'int', '', '', 'select', 'Gender', '', 'eav/entity_attribute_source_table', 0, 0, '', 0, ''),
(33, 3, 'name', NULL, '', 'varchar', '', '', 'text', 'Name', '', '', 1, 0, '', 0, ''),
(34, 3, 'is_active', NULL, '', 'int', '', '', 'select', 'Is Active', '', 'eav/entity_attribute_source_boolean', 1, 0, '', 0, ''),
(35, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', '', '', 'text', 'URL key', '', '', 0, 0, '', 0, ''),
(36, 3, 'description', NULL, '', 'text', '', '', 'textarea', 'Description', '', '', 0, 0, '', 0, ''),
(37, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', '', '', 'image', 'Image', '', '', 0, 0, '', 0, ''),
(38, 3, 'meta_title', NULL, '', 'varchar', '', '', 'text', 'Page Title', '', '', 0, 0, '', 0, ''),
(39, 3, 'meta_keywords', NULL, '', 'text', '', '', 'textarea', 'Meta Keywords', '', '', 0, 0, '', 0, ''),
(40, 3, 'meta_description', NULL, '', 'text', '', '', 'textarea', 'Meta Description', '', '', 0, 0, '', 0, ''),
(41, 3, 'display_mode', NULL, '', 'varchar', '', '', 'select', 'Display Mode', '', 'catalog/category_attribute_source_mode', 0, 0, '', 0, ''),
(42, 3, 'landing_page', NULL, '', 'int', '', '', 'select', 'CMS Block', '', 'catalog/category_attribute_source_page', 0, 0, '', 0, ''),
(43, 3, 'is_anchor', NULL, '', 'int', '', '', 'select', 'Is Anchor', '', 'eav/entity_attribute_source_boolean', 0, 0, '', 0, ''),
(44, 3, 'path', NULL, '', 'static', '', '', '', 'Path', '', '', 0, 0, '', 0, ''),
(45, 3, 'position', NULL, '', 'static', '', '', '', 'Position', '', '', 0, 0, '', 0, ''),
(46, 3, 'all_children', NULL, '', 'text', '', '', '', '', '', '', 0, 0, '', 0, ''),
(47, 3, 'path_in_store', NULL, '', 'text', '', '', '', '', '', '', 0, 0, '', 0, ''),
(48, 3, 'children', NULL, '', 'text', '', '', '', '', '', '', 0, 0, '', 0, ''),
(49, 3, 'url_path', NULL, '', 'varchar', '', '', '', '', '', '', 0, 0, '', 0, ''),
(50, 3, 'custom_design', NULL, '', 'varchar', '', '', 'select', 'Custom Design', '', 'core/design_source_design', 0, 0, '', 0, ''),
(51, 3, 'custom_design_apply', NULL, '', 'int', '', '', 'select', 'Apply To', '', 'core/design_source_apply', 0, 0, '', 0, ''),
(52, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Active From', '', '', 0, 0, '', 0, ''),
(53, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Active To', '', '', 0, 0, '', 0, ''),
(54, 3, 'page_layout', NULL, '', 'varchar', '', '', 'select', 'Page Layout', '', 'catalog/category_attribute_source_layout', 0, 0, '', 0, ''),
(55, 3, 'custom_layout_update', NULL, '', 'text', '', '', 'textarea', 'Custom Layout Update', '', '', 0, 0, '', 0, ''),
(56, 3, 'level', NULL, '', 'static', '', '', '', 'Level', '', '', 0, 0, '', 0, ''),
(57, 3, 'children_count', NULL, '', 'static', '', '', '', 'Children Count', '', '', 0, 0, '', 0, ''),
(58, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', '', '', 'multiselect', 'Available Product Listing Sort By', '', 'catalog/category_attribute_source_sortby', 1, 0, '', 0, ''),
(59, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', '', '', 'select', 'Default Product Listing Sort By', '', 'catalog/category_attribute_source_sortby', 1, 0, '', 0, ''),
(60, 4, 'name', NULL, '', 'varchar', '', '', 'text', 'Name', '', '', 1, 0, '', 0, ''),
(61, 4, 'description', NULL, '', 'text', '', '', 'textarea', 'Description', '', '', 1, 0, '', 0, ''),
(62, 4, 'short_description', NULL, '', 'text', '', '', 'textarea', 'Short Description', '', '', 1, 0, '', 0, ''),
(63, 4, 'sku', NULL, '', 'static', '', '', 'text', 'SKU', '', '', 0, 0, '', 1, ''),
(64, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', '', '', 'price', 'Price', '', '', 0, 0, '', 0, ''),
(65, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', '', '', 'price', 'Special Price', '', '', 0, 0, '', 0, ''),
(66, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', '', '', 'date', 'Special Price From Date', '', '', 0, 0, '', 0, ''),
(67, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Special Price To Date', '', '', 0, 0, '', 0, ''),
(68, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', '', '', 'price', 'Cost', '', '', 0, 1, '', 0, ''),
(69, 4, 'weight', NULL, '', 'decimal', '', '', 'text', 'Weight', '', '', 0, 0, '', 0, ''),
(70, 4, 'manufacturer', NULL, '', 'int', '', '', 'select', 'Manufacturer', '', '', 0, 1, '', 0, ''),
(71, 4, 'meta_title', NULL, '', 'varchar', '', '', 'text', 'Meta Title', '', '', 0, 0, '', 0, ''),
(72, 4, 'meta_keyword', NULL, '', 'text', '', '', 'textarea', 'Meta Keywords', '', '', 0, 0, '', 0, ''),
(73, 4, 'meta_description', NULL, '', 'varchar', '', '', 'textarea', 'Meta Description', '', '', 0, 0, '', 0, 'Maximum 255 chars'),
(74, 4, 'image', NULL, '', 'varchar', '', 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', '', '', 0, 0, '', 0, ''),
(75, 4, 'small_image', NULL, '', 'varchar', '', 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', '', '', 0, 0, '', 0, ''),
(76, 4, 'thumbnail', NULL, '', 'varchar', '', 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', '', '', 0, 0, '', 0, ''),
(77, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', '', '', 'gallery', 'Media Gallery', '', '', 0, 0, '', 0, ''),
(78, 4, 'old_id', NULL, '', 'int', '', '', '', '', '', '', 0, 0, '', 0, ''),
(79, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', '', '', 'text', 'Tier Price', '', '', 0, 0, '', 0, ''),
(80, 4, 'color', NULL, '', 'int', '', '', 'select', 'Color', '', '', 0, 1, '', 0, ''),
(81, 4, 'news_from_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Set Product as New from Date', '', '', 0, 0, '', 0, ''),
(82, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Set Product as New to Date', '', '', 0, 0, '', 0, ''),
(83, 4, 'gallery', NULL, '', 'varchar', '', '', 'gallery', 'Image Gallery', '', '', 0, 0, '', 0, ''),
(84, 4, 'status', NULL, '', 'int', '', '', 'select', 'Status', '', 'catalog/product_status', 1, 0, '', 0, ''),
(85, 4, 'tax_class_id', NULL, '', 'int', '', '', 'select', 'Tax Class', '', 'tax/class_source_product', 0, 0, '', 0, ''),
(86, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', '', '', 'text', 'URL key', '', '', 0, 0, '', 0, ''),
(87, 4, 'url_path', NULL, '', 'varchar', '', '', '', '', '', '', 0, 0, '', 0, ''),
(88, 4, 'minimal_price', NULL, '', 'decimal', '', '', 'price', 'Minimal Price', '', '', 0, 0, '', 0, ''),
(89, 4, 'is_recurring', NULL, '', 'int', '', '', 'select', 'Enable Recurring Profile', '', 'eav/entity_attribute_source_boolean', 0, 0, '', 0, 'Products with recurring profile participate in catalog as nominal items.'),
(90, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', '', '', 'text', 'Recurring Payment Profile', '', '', 0, 0, '', 0, ''),
(91, 4, 'visibility', NULL, '', 'int', '', '', 'select', 'Visibility', '', 'catalog/product_visibility', 1, 0, '4', 0, ''),
(92, 4, 'custom_design', NULL, '', 'varchar', '', '', 'select', 'Custom Design', '', 'core/design_source_design', 0, 0, '', 0, ''),
(93, 4, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Active From', '', '', 0, 0, '', 0, ''),
(94, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', '', '', 'date', 'Active To', '', '', 0, 0, '', 0, ''),
(95, 4, 'custom_layout_update', NULL, '', 'text', '', '', 'textarea', 'Custom Layout Update', '', '', 0, 0, '', 0, ''),
(96, 4, 'page_layout', NULL, '', 'varchar', '', '', 'select', 'Page Layout', '', 'catalog/product_attribute_source_layout', 0, 0, '', 0, ''),
(97, 4, 'category_ids', NULL, '', 'static', '', '', '', '', '', '', 0, 0, '', 0, ''),
(98, 4, 'options_container', NULL, '', 'varchar', '', '', 'select', 'Display product options in', '', 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container2', 0, ''),
(99, 4, 'required_options', NULL, '', 'static', '', '', 'text', '', '', '', 0, 0, '', 0, ''),
(100, 4, 'has_options', NULL, '', 'static', '', '', 'text', '', '', '', 0, 0, '', 0, ''),
(101, 4, 'image_label', NULL, '', 'varchar', '', '', 'text', 'Image Label', '', '', 0, 0, '', 0, ''),
(102, 4, 'small_image_label', NULL, '', 'varchar', '', '', 'text', 'Small Image Label', '', '', 0, 0, '', 0, ''),
(103, 4, 'thumbnail_label', NULL, '', 'varchar', '', '', 'text', 'Thumbnail Label', '', '', 0, 0, '', 0, ''),
(104, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(105, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', '', '', 'text', '', '', '', 1, 0, '', 0, ''),
(106, 3, 'include_in_menu', NULL, '', 'int', '', '', 'select', 'Include in Navigation Menu', '', 'eav/entity_attribute_source_boolean', 0, 0, '1', 0, ''),
(107, 4, 'enable_googlecheckout', NULL, '', 'int', '', '', 'select', 'Is product available for purchase with Google Checkout', '', 'eav/entity_attribute_source_boolean', 0, 0, '1', 0, ''),
(108, 4, 'gift_message_available', NULL, 'giftmessage/entity_attribute_backend_boolean_config', 'varchar', '', '', 'select', 'Allow Gift Message', '', 'giftmessage/entity_attribute_source_boolean_config', 0, 0, '2', 0, ''),
(109, 4, 'price_type', NULL, '', 'int', '', '', '', '', '', '', 1, 0, '', 0, ''),
(110, 4, 'sku_type', NULL, '', 'int', '', '', '', '', '', '', 1, 0, '', 0, ''),
(111, 4, 'weight_type', NULL, '', 'int', '', '', '', '', '', '', 1, 0, '', 0, ''),
(112, 4, 'price_view', NULL, '', 'int', '', '', 'select', 'Price View', '', 'bundle/product_attribute_source_price_view', 1, 0, '', 0, ''),
(113, 4, 'shipment_type', NULL, '', 'int', '', '', '', 'Shipment', '', '', 1, 0, '', 0, ''),
(114, 4, 'links_purchased_separately', NULL, '', 'int', '', '', '', 'Links can be purchased separately', '', '', 1, 0, '', 0, ''),
(115, 4, 'samples_title', NULL, '', 'varchar', '', '', '', 'Samples title', '', '', 1, 0, '', 0, ''),
(116, 4, 'links_title', NULL, '', 'varchar', '', '', '', 'Links title', '', '', 1, 0, '', 0, ''),
(117, 4, 'links_exist', NULL, '', 'int', '', '', '', '', '', '', 0, 0, '0', 0, ''),
(118, 4, 'code', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Code', '', NULL, 1, 1, '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_group`
--

DROP TABLE IF EXISTS `eav_attribute_group`;
CREATE TABLE IF NOT EXISTS `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_group_name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` smallint(6) NOT NULL DEFAULT '0',
  `default_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `attribute_set_id` (`attribute_set_id`,`attribute_group_name`),
  KEY `attribute_set_id_2` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1),
(3, 3, 'General Information', 10, 1),
(4, 4, 'General', 1, 1),
(5, 4, 'Prices', 2, 0),
(6, 4, 'Meta Information', 3, 0),
(7, 4, 'Images', 4, 0),
(8, 4, 'Recurring Profile', 5, 0),
(9, 4, 'Design', 6, 0),
(10, 3, 'Display Settings', 20, 0),
(11, 3, 'Custom Design', 30, 0),
(12, 5, 'General', 1, 1),
(13, 6, 'General', 1, 1),
(14, 7, 'General', 1, 1),
(15, 8, 'General', 1, 1),
(16, 9, 'General', 1, 1),
(17, 9, 'Prices', 2, 0),
(18, 9, 'Meta Information', 3, 0),
(19, 9, 'Images', 4, 0),
(20, 9, 'Recurring Profile', 5, 0),
(21, 9, 'Design', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_label`
--

DROP TABLE IF EXISTS `eav_attribute_label`;
CREATE TABLE IF NOT EXISTS `eav_attribute_label` (
  `attribute_label_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_ATTRIBUTE_LABEL_ATTRIBUTE` (`attribute_id`),
  KEY `IDX_ATTRIBUTE_LABEL_STORE` (`store_id`),
  KEY `IDX_ATTRIBUTE_LABEL_ATTRIBUTE_STORE` (`attribute_id`,`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `eav_attribute_label`
--

INSERT INTO `eav_attribute_label` (`attribute_label_id`, `attribute_id`, `store_id`, `value`) VALUES
(7, 118, 1, 'Code'),
(8, 118, 2, 'Code'),
(9, 118, 3, 'Code');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option`
--

DROP TABLE IF EXISTS `eav_attribute_option`;
CREATE TABLE IF NOT EXISTS `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`),
  KEY `FK_ATTRIBUTE_OPTION_ATTRIBUTE` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Attributes option (for source model)' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 32, 0),
(2, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_value`
--

DROP TABLE IF EXISTS `eav_attribute_option_value`;
CREATE TABLE IF NOT EXISTS `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_OPTION_VALUE_OPTION` (`option_id`),
  KEY `FK_ATTRIBUTE_OPTION_VALUE_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Attribute option values per store' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_set`
--

DROP TABLE IF EXISTS `eav_attribute_set`;
CREATE TABLE IF NOT EXISTS `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_set_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `sort_order` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `entity_type_id` (`entity_type_id`,`attribute_set_name`),
  KEY `entity_type_id_2` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 1),
(2, 2, 'Default', 1),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1),
(9, 4, 'Crystal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity`
--

DROP TABLE IF EXISTS `eav_entity`;
CREATE TABLE IF NOT EXISTS `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `increment_id` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_id`),
  KEY `FK_ENTITY_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ENTITY_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Entityies' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_attribute`
--

DROP TABLE IF EXISTS `eav_entity_attribute`;
CREATE TABLE IF NOT EXISTS `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `attribute_set_id_2` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `attribute_group_id` (`attribute_group_id`,`attribute_id`),
  KEY `attribute_set_id_3` (`attribute_set_id`,`sort_order`),
  KEY `FK_EAV_ENTITY_ATTRIVUTE_ATTRIBUTE` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=372 ;

--
-- Dumping data for table `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 20),
(3, 1, 1, 1, 3, 30),
(4, 1, 1, 1, 4, 37),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 43),
(7, 1, 1, 1, 7, 50),
(8, 1, 1, 1, 8, 53),
(9, 1, 1, 1, 9, 60),
(10, 1, 1, 1, 10, 70),
(11, 1, 1, 1, 11, 80),
(12, 1, 1, 1, 12, 81),
(13, 1, 1, 1, 13, 82),
(14, 1, 1, 1, 14, 83),
(15, 1, 1, 1, 15, 84),
(16, 1, 1, 1, 16, 85),
(17, 1, 1, 1, 17, 86),
(18, 2, 2, 2, 18, 7),
(19, 2, 2, 2, 19, 10),
(20, 2, 2, 2, 20, 13),
(21, 2, 2, 2, 21, 20),
(22, 2, 2, 2, 22, 23),
(23, 2, 2, 2, 23, 30),
(24, 2, 2, 2, 24, 40),
(25, 2, 2, 2, 25, 50),
(26, 2, 2, 2, 26, 60),
(27, 2, 2, 2, 27, 70),
(28, 2, 2, 2, 28, 80),
(29, 2, 2, 2, 29, 90),
(30, 2, 2, 2, 30, 100),
(31, 2, 2, 2, 31, 110),
(32, 1, 1, 1, 32, 87),
(33, 3, 3, 3, 33, 1),
(34, 3, 3, 3, 34, 2),
(35, 3, 3, 3, 35, 3),
(36, 3, 3, 3, 36, 4),
(37, 3, 3, 3, 37, 5),
(38, 3, 3, 3, 38, 6),
(39, 3, 3, 3, 39, 7),
(40, 3, 3, 3, 40, 8),
(41, 3, 3, 10, 41, 10),
(42, 3, 3, 10, 42, 20),
(43, 3, 3, 10, 43, 30),
(44, 3, 3, 3, 44, 12),
(45, 3, 3, 3, 45, 13),
(46, 3, 3, 3, 46, 14),
(47, 3, 3, 3, 47, 15),
(48, 3, 3, 3, 48, 16),
(49, 3, 3, 3, 49, 17),
(50, 3, 3, 11, 50, 10),
(51, 3, 3, 11, 51, 20),
(52, 3, 3, 11, 52, 30),
(53, 3, 3, 11, 53, 40),
(54, 3, 3, 11, 54, 50),
(55, 3, 3, 11, 55, 60),
(56, 3, 3, 3, 56, 24),
(57, 3, 3, 3, 57, 25),
(58, 3, 3, 10, 58, 40),
(59, 3, 3, 10, 59, 50),
(60, 4, 4, 4, 60, 1),
(61, 4, 4, 4, 61, 2),
(62, 4, 4, 4, 62, 3),
(63, 4, 4, 4, 63, 4),
(64, 4, 4, 5, 64, 1),
(65, 4, 4, 5, 65, 2),
(66, 4, 4, 5, 66, 3),
(67, 4, 4, 5, 67, 4),
(68, 4, 4, 5, 68, 5),
(69, 4, 4, 4, 69, 5),
(70, 4, 4, 6, 71, 1),
(71, 4, 4, 6, 72, 2),
(72, 4, 4, 6, 73, 3),
(73, 4, 4, 7, 74, 1),
(74, 4, 4, 7, 75, 2),
(75, 4, 4, 7, 76, 3),
(76, 4, 4, 7, 77, 4),
(77, 4, 4, 4, 78, 6),
(78, 4, 4, 5, 79, 6),
(79, 4, 4, 4, 81, 7),
(80, 4, 4, 4, 82, 8),
(81, 4, 4, 7, 83, 5),
(82, 4, 4, 4, 84, 9),
(83, 4, 4, 5, 85, 7),
(84, 4, 4, 4, 86, 10),
(85, 4, 4, 4, 87, 11),
(86, 4, 4, 5, 88, 8),
(87, 4, 4, 8, 89, 1),
(88, 4, 4, 8, 90, 2),
(89, 4, 4, 4, 91, 12),
(90, 4, 4, 9, 92, 1),
(91, 4, 4, 9, 93, 2),
(92, 4, 4, 9, 94, 3),
(93, 4, 4, 9, 95, 4),
(94, 4, 4, 9, 96, 5),
(95, 4, 4, 4, 97, 13),
(96, 4, 4, 9, 98, 6),
(97, 4, 4, 4, 99, 14),
(98, 4, 4, 4, 100, 15),
(99, 4, 4, 4, 101, 16),
(100, 4, 4, 4, 102, 17),
(101, 4, 4, 4, 103, 18),
(102, 4, 4, 4, 104, 19),
(103, 4, 4, 4, 105, 20),
(104, 3, 3, 3, 106, 10),
(105, 4, 4, 5, 107, 21),
(106, 4, 4, 4, 108, 21),
(107, 4, 4, 4, 109, 22),
(108, 4, 4, 4, 110, 23),
(109, 4, 4, 4, 111, 24),
(110, 4, 4, 5, 112, 22),
(111, 4, 4, 4, 113, 25),
(112, 4, 4, 4, 114, 26),
(113, 4, 4, 4, 115, 27),
(114, 4, 4, 4, 116, 28),
(115, 4, 4, 4, 117, 29),
(127, 4, 9, 16, 78, 6),
(137, 4, 9, 16, 87, 11),
(141, 4, 9, 16, 97, 13),
(143, 4, 9, 16, 99, 14),
(145, 4, 9, 16, 100, 15),
(147, 4, 9, 16, 101, 16),
(149, 4, 9, 16, 102, 17),
(151, 4, 9, 16, 103, 18),
(153, 4, 9, 16, 104, 19),
(155, 4, 9, 16, 105, 20),
(159, 4, 9, 16, 109, 22),
(161, 4, 9, 16, 110, 23),
(163, 4, 9, 16, 111, 24),
(165, 4, 9, 16, 113, 25),
(167, 4, 9, 16, 114, 26),
(169, 4, 9, 16, 115, 27),
(171, 4, 9, 16, 116, 28),
(173, 4, 9, 16, 117, 29),
(189, 4, 9, 17, 88, 8),
(299, 4, 9, 16, 60, 1),
(301, 4, 9, 16, 61, 2),
(303, 4, 9, 16, 62, 3),
(305, 4, 9, 16, 63, 5),
(307, 4, 9, 16, 69, 6),
(309, 4, 9, 16, 81, 7),
(311, 4, 9, 16, 82, 8),
(313, 4, 9, 16, 84, 9),
(315, 4, 9, 16, 86, 10),
(317, 4, 9, 16, 91, 11),
(319, 4, 9, 16, 108, 12),
(321, 4, 9, 16, 118, 4),
(323, 4, 9, 17, 64, 1),
(325, 4, 9, 17, 65, 2),
(327, 4, 9, 17, 66, 3),
(329, 4, 9, 17, 67, 4),
(331, 4, 9, 17, 68, 5),
(333, 4, 9, 17, 79, 6),
(335, 4, 9, 17, 85, 7),
(337, 4, 9, 17, 107, 8),
(339, 4, 9, 17, 112, 9),
(341, 4, 9, 18, 71, 1),
(343, 4, 9, 18, 72, 2),
(345, 4, 9, 18, 73, 3),
(347, 4, 9, 19, 74, 1),
(349, 4, 9, 19, 75, 2),
(351, 4, 9, 19, 76, 3),
(353, 4, 9, 19, 77, 4),
(355, 4, 9, 19, 83, 5),
(357, 4, 9, 20, 89, 1),
(359, 4, 9, 20, 90, 2),
(361, 4, 9, 21, 92, 1),
(363, 4, 9, 21, 93, 2),
(365, 4, 9, 21, 94, 3),
(367, 4, 9, 21, 95, 4),
(369, 4, 9, 21, 96, 5),
(371, 4, 9, 21, 98, 6);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_datetime`
--

DROP TABLE IF EXISTS `eav_entity_datetime`;
CREATE TABLE IF NOT EXISTS `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_DATETIME_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ATTRIBUTE_DATETIME_ATTRIBUTE` (`attribute_id`),
  KEY `FK_ATTRIBUTE_DATETIME_STORE` (`store_id`),
  KEY `FK_ATTRIBUTE_DATETIME_ENTITY` (`entity_id`),
  KEY `value_by_attribute` (`attribute_id`,`value`),
  KEY `value_by_entity_type` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Datetime values of attributes' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_datetime`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_decimal`
--

DROP TABLE IF EXISTS `eav_entity_decimal`;
CREATE TABLE IF NOT EXISTS `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_DECIMAL_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ATTRIBUTE_DECIMAL_ATTRIBUTE` (`attribute_id`),
  KEY `FK_ATTRIBUTE_DECIMAL_STORE` (`store_id`),
  KEY `FK_ATTRIBUTE_DECIMAL_ENTITY` (`entity_id`),
  KEY `value_by_attribute` (`attribute_id`,`value`),
  KEY `value_by_entity_type` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Decimal values of attributes' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_decimal`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_int`
--

DROP TABLE IF EXISTS `eav_entity_int`;
CREATE TABLE IF NOT EXISTS `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_INT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ATTRIBUTE_INT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_ATTRIBUTE_INT_STORE` (`store_id`),
  KEY `FK_ATTRIBUTE_INT_ENTITY` (`entity_id`),
  KEY `value_by_attribute` (`attribute_id`,`value`),
  KEY `value_by_entity_type` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Integer values of attributes' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_int`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_store`
--

DROP TABLE IF EXISTS `eav_entity_store`;
CREATE TABLE IF NOT EXISTS `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `increment_prefix` varchar(20) NOT NULL DEFAULT '',
  `increment_last_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_store_id`),
  KEY `FK_eav_entity_store_entity_type` (`entity_type_id`),
  KEY `FK_eav_entity_store_store` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_store`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_text`
--

DROP TABLE IF EXISTS `eav_entity_text`;
CREATE TABLE IF NOT EXISTS `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_TEXT_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ATTRIBUTE_TEXT_ATTRIBUTE` (`attribute_id`),
  KEY `FK_ATTRIBUTE_TEXT_STORE` (`store_id`),
  KEY `FK_ATTRIBUTE_TEXT_ENTITY` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Text values of attributes' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_text`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_type`
--

DROP TABLE IF EXISTS `eav_entity_type`;
CREATE TABLE IF NOT EXISTS `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type_code` varchar(50) NOT NULL DEFAULT '',
  `entity_model` varchar(255) NOT NULL,
  `attribute_model` varchar(255) NOT NULL,
  `entity_table` varchar(255) NOT NULL DEFAULT '',
  `value_table_prefix` varchar(255) NOT NULL DEFAULT '',
  `entity_id_field` varchar(255) NOT NULL DEFAULT '',
  `is_data_sharing` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `data_sharing_key` varchar(100) DEFAULT 'default',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `increment_model` varchar(255) NOT NULL DEFAULT '',
  `increment_per_store` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `increment_pad_length` tinyint(8) unsigned NOT NULL DEFAULT '8',
  `increment_pad_char` char(1) NOT NULL DEFAULT '0',
  `additional_attribute_table` varchar(255) NOT NULL DEFAULT '',
  `entity_attribute_collection` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_type_id`),
  KEY `entity_name` (`entity_type_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', '', 'customer/entity', '', '', 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/eav_attribute'),
(2, 'customer_address', 'customer/address', '', 'customer/address_entity', '', '', 1, 'default', 2, '', 0, 8, '0', 'customer/eav_attribute', 'customer/eav_attribute'),
(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', '', '', 1, 'default', 3, '', 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', '', '', 1, 'default', 4, '', 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
(5, 'order', 'sales/order', '', 'sales/order', '', '', 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', '', ''),
(6, 'invoice', 'sales/order_invoice', '', 'sales/invoice', '', '', 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', '', ''),
(7, 'creditmemo', 'sales/order_creditmemo', '', 'sales/creditmemo', '', '', 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', '', ''),
(8, 'shipment', 'sales/order_shipment', '', 'sales/shipment', '', '', 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_varchar`
--

DROP TABLE IF EXISTS `eav_entity_varchar`;
CREATE TABLE IF NOT EXISTS `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`value_id`),
  KEY `FK_ATTRIBUTE_VARCHAR_ENTITY_TYPE` (`entity_type_id`),
  KEY `FK_ATTRIBUTE_VARCHAR_ATTRIBUTE` (`attribute_id`),
  KEY `FK_ATTRIBUTE_VARCHAR_STORE` (`store_id`),
  KEY `FK_ATTRIBUTE_VARCHAR_ENTITY` (`entity_id`),
  KEY `value_by_attribute` (`attribute_id`,`value`),
  KEY `value_by_entity_type` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Varchar values of attributes' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_varchar`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_form_element`
--

DROP TABLE IF EXISTS `eav_form_element`;
CREATE TABLE IF NOT EXISTS `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL,
  `fieldset_id` smallint(5) unsigned DEFAULT NULL,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_FORM_ATTRIBUTE` (`type_id`,`attribute_id`),
  KEY `IDX_FORM_TYPE` (`type_id`),
  KEY `IDX_FORM_FIELDSET` (`fieldset_id`),
  KEY `IDX_FORM_ATTRIBUTE` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `eav_form_element`
--

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 5, 0),
(2, 1, 1, 7, 1),
(3, 1, 1, 9, 2),
(4, 2, 2, 5, 0),
(5, 2, 2, 7, 1),
(6, 2, 2, 9, 2),
(7, 3, 3, 19, 0),
(8, 3, 3, 21, 1),
(9, 3, 3, 23, 2),
(10, 3, 3, 30, 3),
(11, 3, 3, 31, 4),
(12, 3, 4, 24, 0),
(13, 3, 4, 25, 1),
(14, 3, 4, 27, 2),
(15, 3, 4, 29, 3),
(16, 3, 4, 26, 4),
(17, 4, NULL, 19, 0),
(18, 4, NULL, 21, 1),
(19, 4, NULL, 23, 2),
(20, 4, NULL, 9, 3),
(21, 4, NULL, 24, 4),
(22, 4, NULL, 25, 5),
(23, 4, NULL, 27, 6),
(24, 4, NULL, 29, 7),
(25, 4, NULL, 26, 8),
(26, 4, NULL, 30, 9),
(27, 4, NULL, 31, 10),
(28, 5, NULL, 19, 0),
(29, 5, NULL, 21, 1),
(30, 5, NULL, 23, 2),
(31, 5, NULL, 9, 3),
(32, 5, NULL, 24, 4),
(33, 5, NULL, 25, 5),
(34, 5, NULL, 27, 6),
(35, 5, NULL, 29, 7),
(36, 5, NULL, 26, 8),
(37, 5, NULL, 30, 9),
(38, 5, NULL, 31, 10),
(39, 6, NULL, 19, 0),
(40, 6, NULL, 21, 1),
(41, 6, NULL, 23, 2),
(42, 6, NULL, 24, 3),
(43, 6, NULL, 25, 4),
(44, 6, NULL, 27, 5),
(45, 6, NULL, 29, 6),
(46, 6, NULL, 26, 7),
(47, 6, NULL, 30, 8),
(48, 6, NULL, 31, 9),
(49, 7, NULL, 19, 0),
(50, 7, NULL, 21, 1),
(51, 7, NULL, 23, 2),
(52, 7, NULL, 24, 3),
(53, 7, NULL, 25, 4),
(54, 7, NULL, 27, 5),
(55, 7, NULL, 29, 6),
(56, 7, NULL, 26, 7),
(57, 7, NULL, 30, 8),
(58, 7, NULL, 31, 9),
(59, 8, 5, 5, 0),
(60, 8, 5, 7, 1),
(61, 8, 5, 9, 2),
(62, 8, 6, 23, 0),
(63, 8, 6, 30, 1),
(64, 8, 6, 24, 2),
(65, 8, 6, 25, 3),
(66, 8, 6, 27, 4),
(67, 8, 6, 29, 5),
(68, 8, 6, 26, 6);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset`
--

DROP TABLE IF EXISTS `eav_form_fieldset`;
CREATE TABLE IF NOT EXISTS `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL,
  `code` char(64) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_FORM_FIELDSET_CODE` (`type_id`,`code`),
  KEY `IDX_FORM_TYPE` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `eav_form_fieldset`
--

INSERT INTO `eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
(1, 1, 'general', 1),
(2, 2, 'general', 1),
(3, 3, 'contact', 1),
(4, 3, 'address', 2),
(5, 8, 'general', 1),
(6, 8, 'address', 2);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset_label`
--

DROP TABLE IF EXISTS `eav_form_fieldset_label`;
CREATE TABLE IF NOT EXISTS `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_FORM_FIELDSET` (`fieldset_id`),
  KEY `IDX_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eav_form_fieldset_label`
--

INSERT INTO `eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
(1, 0, 'Personal Information'),
(2, 0, 'Account Information'),
(3, 0, 'Contact Information'),
(4, 0, 'Address'),
(5, 0, 'Personal Information'),
(6, 0, 'Address Information');

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type`
--

DROP TABLE IF EXISTS `eav_form_type`;
CREATE TABLE IF NOT EXISTS `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(64) NOT NULL,
  `label` varchar(255) NOT NULL,
  `is_system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(64) NOT NULL DEFAULT '',
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_FORM_TYPE_CODE` (`code`,`theme`,`store_id`),
  KEY `IDX_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `eav_form_type`
--

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'customer_account_create', 'customer_account_create', 1, '', 0),
(2, 'customer_account_edit', 'customer_account_edit', 1, '', 0),
(3, 'customer_address_edit', 'customer_address_edit', 1, '', 0),
(4, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(5, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(6, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(7, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
(8, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type_entity`
--

DROP TABLE IF EXISTS `eav_form_type_entity`;
CREATE TABLE IF NOT EXISTS `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL,
  `entity_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TYPE` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eav_form_type_entity`
--

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 1),
(8, 1),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gift_message`
--

DROP TABLE IF EXISTS `gift_message`;
CREATE TABLE IF NOT EXISTS `gift_message` (
  `gift_message_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(7) unsigned NOT NULL DEFAULT '0',
  `sender` varchar(255) NOT NULL DEFAULT '',
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `gift_message`
--


-- --------------------------------------------------------

--
-- Table structure for table `googlebase_attributes`
--

DROP TABLE IF EXISTS `googlebase_attributes`;
CREATE TABLE IF NOT EXISTS `googlebase_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` smallint(5) unsigned NOT NULL,
  `gbase_attribute` varchar(255) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `GOOGLEBASE_ATTRIBUTES_ATTRIBUTE_ID` (`attribute_id`),
  KEY `GOOGLEBASE_ATTRIBUTES_TYPE_ID` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Base Attributes link Product Attributes' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `googlebase_attributes`
--


-- --------------------------------------------------------

--
-- Table structure for table `googlebase_items`
--

DROP TABLE IF EXISTS `googlebase_items`;
CREATE TABLE IF NOT EXISTS `googlebase_items` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL,
  `gbase_item_id` varchar(255) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `published` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `impr` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clicks` smallint(5) unsigned NOT NULL DEFAULT '0',
  `views` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_hidden` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `GOOGLEBASE_ITEMS_PRODUCT_ID` (`product_id`),
  KEY `GOOGLEBASE_ITEMS_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Base Items Products' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `googlebase_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `googlebase_types`
--

DROP TABLE IF EXISTS `googlebase_types`;
CREATE TABLE IF NOT EXISTS `googlebase_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` smallint(5) unsigned NOT NULL,
  `gbase_itemtype` varchar(255) NOT NULL,
  `target_country` varchar(2) NOT NULL DEFAULT 'US',
  PRIMARY KEY (`type_id`),
  KEY `GOOGLEBASE_TYPES_ATTRIBUTE_SET_ID` (`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Base Item Types link Attribute Sets' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `googlebase_types`
--


-- --------------------------------------------------------

--
-- Table structure for table `googlecheckout_api_debug`
--

DROP TABLE IF EXISTS `googlecheckout_api_debug`;
CREATE TABLE IF NOT EXISTS `googlecheckout_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dir` enum('in','out') DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `googlecheckout_api_debug`
--


-- --------------------------------------------------------

--
-- Table structure for table `googleoptimizer_code`
--

DROP TABLE IF EXISTS `googleoptimizer_code`;
CREATE TABLE IF NOT EXISTS `googleoptimizer_code` (
  `code_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(50) NOT NULL DEFAULT '',
  `store_id` smallint(5) unsigned NOT NULL,
  `control_script` text,
  `tracking_script` text,
  `conversion_script` text,
  `conversion_page` varchar(255) NOT NULL DEFAULT '',
  `additional_data` text,
  PRIMARY KEY (`code_id`),
  KEY `GOOGLEOPTIMIZER_CODE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `googleoptimizer_code`
--


-- --------------------------------------------------------

--
-- Table structure for table `index_event`
--

DROP TABLE IF EXISTS `index_event`;
CREATE TABLE IF NOT EXISTS `index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) NOT NULL,
  `entity` varchar(64) NOT NULL,
  `entity_pk` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `old_data` mediumtext,
  `new_data` mediumtext,
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `IDX_UNIQUE_EVENT` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `index_event`
--

INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(1, 'save', 'catalog_category', 1, '2010-08-21 14:00:32', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(2, 'save', 'catalog_category', 2, '2010-08-21 14:00:32', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(3, 'save', 'core_store', 2, '2010-08-21 23:51:09', 'a:4:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}', 'a:9:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}'),
(4, 'save', 'core_store', 3, '2010-08-21 23:55:57', 'a:4:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}', 'a:9:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}'),
(5, 'save', 'catalog_category', 3, '2010-09-08 19:32:42', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;}'),
(6, 'save', 'catalog_category', 4, '2010-09-08 19:33:16', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;}'),
(7, 'save', 'catalog_category', 5, '2010-09-08 19:33:51', 'a:2:{s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;}'),
(8, 'save', 'cataloginventory_stock_item', 1, '2010-09-08 19:36:02', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(9, 'save', 'catalog_product', 1, '2010-09-08 19:36:03', 'a:7:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:12:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(10, 'delete', 'catalog_product', 1, '2010-09-08 19:37:42', 'a:5:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:10:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(11, 'save', 'cataloginventory_stock_item', 2, '2010-09-08 19:39:30', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;}'),
(12, 'save', 'catalog_product', 2, '2010-09-08 19:39:30', 'a:7:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;}'),
(13, 'mass_action', 'catalog_product', NULL, '2010-09-08 20:01:02', 'a:7:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:13:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(14, 'save', 'cataloginventory_stock_item', 3, '2010-10-03 11:53:06', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(15, 'save', 'catalog_product', 3, '2010-10-03 11:53:09', 'a:8:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(16, 'save', 'catalog_eav_attribute', 63, '2010-10-03 12:08:20', 'a:2:{s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(17, 'save', 'catalog_eav_attribute', 64, '2010-10-03 12:09:06', 'a:2:{s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(18, 'save', 'cataloginventory_stock_item', 4, '2010-10-03 12:11:14', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(19, 'save', 'catalog_product', 4, '2010-10-03 12:11:15', 'a:8:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(20, 'save', 'catalog_eav_attribute', 69, '2010-10-03 12:16:16', 'a:1:{s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(21, 'save', 'catalog_eav_attribute', 85, '2010-10-03 12:17:27', 'a:2:{s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(22, 'save', 'catalog_eav_attribute', 84, '2010-10-03 12:18:50', 'a:2:{s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}'),
(23, 'save', 'cataloginventory_stock_item', 5, '2010-10-03 13:29:05', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(24, 'save', 'catalog_product', 5, '2010-10-03 13:29:07', 'a:8:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(25, 'save', 'cataloginventory_stock_item', 6, '2010-10-03 13:35:24', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(26, 'save', 'catalog_product', 6, '2010-10-03 13:35:27', 'a:8:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(27, 'save', 'cataloginventory_stock_item', 7, '2010-10-03 13:40:46', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(28, 'save', 'catalog_product', 7, '2010-10-03 13:40:47', 'a:8:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(29, 'save', 'cataloginventory_stock_item', 8, '2010-10-03 13:42:39', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(30, 'save', 'catalog_product', 8, '2010-10-03 13:42:40', 'a:8:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(31, 'save', 'cataloginventory_stock_item', 9, '2010-10-03 13:52:40', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(32, 'save', 'catalog_product', 9, '2010-10-03 13:52:41', 'a:8:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(33, 'save', 'cataloginventory_stock_item', 10, '2010-10-03 13:54:22', 'a:1:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;}', 'a:7:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(34, 'save', 'catalog_product', 10, '2010-10-03 13:54:23', 'a:8:{s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}', 'a:14:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";N;s:24:"catalog_url_match_result";b:1;s:30:"Mage_Catalog_Model_Indexer_Url";N;s:33:"catalog_product_flat_match_result";b:1;s:39:"Mage_Catalog_Model_Product_Indexer_Flat";N;s:37:"catalog_category_product_match_result";b:1;s:43:"Mage_Catalog_Model_Category_Indexer_Product";N;s:35:"catalogsearch_fulltext_match_result";b:1;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:30:"Mage_Tag_Model_Indexer_Summary";N;}'),
(35, 'save', 'catalog_eav_attribute', 118, '2010-10-03 16:32:45', 'a:2:{s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;}', 'a:8:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:33:"catalog_product_flat_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;s:41:"Mage_CatalogSearch_Model_Indexer_Fulltext";N;s:38:"Mage_Catalog_Model_Product_Indexer_Eav";N;}');

-- --------------------------------------------------------

--
-- Table structure for table `index_process`
--

DROP TABLE IF EXISTS `index_process`;
CREATE TABLE IF NOT EXISTS `index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `indexer_code` varchar(32) NOT NULL,
  `status` enum('pending','working','require_reindex') NOT NULL DEFAULT 'pending',
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `mode` enum('real_time','manual') NOT NULL DEFAULT 'real_time',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `IDX_CODE` (`indexer_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `index_process`
--

INSERT INTO `index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
(1, 'catalog_product_attribute', 'pending', '2010-09-08 20:02:47', '2010-09-08 20:02:47', 'real_time'),
(2, 'catalog_product_price', 'pending', '2010-09-08 20:02:47', '2010-09-08 20:02:48', 'real_time'),
(3, 'catalog_url', 'pending', '2010-09-08 20:02:48', '2010-09-08 20:02:49', 'real_time'),
(4, 'catalog_product_flat', 'pending', '2010-10-03 13:19:02', '2010-10-03 13:19:04', 'real_time'),
(5, 'catalog_category_flat', 'pending', '2010-09-08 20:02:50', '2010-09-08 20:02:51', 'real_time'),
(6, 'catalog_category_product', 'pending', '2010-09-08 20:02:51', '2010-09-08 20:02:51', 'real_time'),
(7, 'catalogsearch_fulltext', 'pending', '2010-10-03 16:34:10', '2010-10-03 16:34:11', 'real_time'),
(8, 'tag_summary', 'pending', '2010-09-08 20:02:52', '2010-09-08 20:02:52', 'real_time'),
(9, 'cataloginventory_stock', 'pending', '2010-09-08 20:02:47', '2010-09-08 20:02:47', 'real_time');

-- --------------------------------------------------------

--
-- Table structure for table `index_process_event`
--

DROP TABLE IF EXISTS `index_process_event`;
CREATE TABLE IF NOT EXISTS `index_process_event` (
  `process_id` int(10) unsigned NOT NULL,
  `event_id` bigint(20) unsigned NOT NULL,
  `status` enum('new','working','done','error') NOT NULL DEFAULT 'new',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `FK_INDEX_EVNT_PROCESS` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `index_process_event`
--

INSERT INTO `index_process_event` (`process_id`, `event_id`, `status`) VALUES
(1, 9, 'done'),
(1, 10, 'done'),
(1, 12, 'done'),
(1, 13, 'done'),
(1, 15, 'done'),
(1, 16, 'done'),
(1, 17, 'done'),
(1, 19, 'done'),
(1, 20, 'done'),
(1, 21, 'done'),
(1, 22, 'done'),
(1, 24, 'done'),
(1, 26, 'done'),
(1, 28, 'done'),
(1, 30, 'done'),
(1, 32, 'done'),
(1, 34, 'done'),
(1, 35, 'done'),
(2, 9, 'done'),
(2, 10, 'done'),
(2, 12, 'done'),
(2, 13, 'done'),
(2, 15, 'done'),
(2, 19, 'done'),
(2, 24, 'done'),
(2, 26, 'done'),
(2, 28, 'done'),
(2, 30, 'done'),
(2, 32, 'done'),
(2, 34, 'done'),
(3, 1, 'done'),
(3, 2, 'done'),
(3, 3, 'done'),
(3, 4, 'done'),
(3, 5, 'done'),
(3, 6, 'done'),
(3, 7, 'done'),
(3, 9, 'done'),
(3, 12, 'done'),
(3, 15, 'done'),
(3, 19, 'done'),
(3, 24, 'done'),
(3, 26, 'done'),
(3, 28, 'done'),
(3, 30, 'done'),
(3, 32, 'done'),
(3, 34, 'done'),
(4, 12, 'done'),
(4, 13, 'done'),
(4, 15, 'done'),
(4, 16, 'done'),
(4, 17, 'done'),
(4, 19, 'done'),
(4, 21, 'done'),
(4, 22, 'done'),
(4, 24, 'done'),
(4, 26, 'done'),
(4, 28, 'done'),
(4, 30, 'done'),
(4, 32, 'done'),
(4, 34, 'done'),
(6, 1, 'done'),
(6, 2, 'done'),
(6, 3, 'done'),
(6, 4, 'done'),
(6, 5, 'done'),
(6, 6, 'done'),
(6, 7, 'done'),
(6, 9, 'done'),
(6, 12, 'done'),
(6, 13, 'done'),
(6, 15, 'done'),
(6, 19, 'done'),
(6, 24, 'done'),
(6, 26, 'done'),
(6, 28, 'done'),
(6, 30, 'done'),
(6, 32, 'done'),
(6, 34, 'done'),
(7, 3, 'done'),
(7, 4, 'done'),
(7, 9, 'done'),
(7, 10, 'done'),
(7, 12, 'done'),
(7, 13, 'done'),
(7, 15, 'done'),
(7, 19, 'done'),
(7, 24, 'done'),
(7, 26, 'done'),
(7, 28, 'done'),
(7, 30, 'done'),
(7, 32, 'done'),
(7, 34, 'done'),
(7, 35, 'done'),
(8, 9, 'done'),
(8, 10, 'done'),
(8, 12, 'done'),
(8, 13, 'done'),
(8, 15, 'done'),
(8, 19, 'done'),
(8, 24, 'done'),
(8, 26, 'done'),
(8, 28, 'done'),
(8, 30, 'done'),
(8, 32, 'done'),
(8, 34, 'done'),
(9, 3, 'done'),
(9, 4, 'done'),
(9, 8, 'done'),
(9, 9, 'done'),
(9, 10, 'done'),
(9, 11, 'done'),
(9, 12, 'done'),
(9, 13, 'done'),
(9, 14, 'done'),
(9, 15, 'done'),
(9, 18, 'done'),
(9, 19, 'done'),
(9, 23, 'done'),
(9, 24, 'done'),
(9, 25, 'done'),
(9, 26, 'done'),
(9, 27, 'done'),
(9, 28, 'done'),
(9, 29, 'done'),
(9, 30, 'done'),
(9, 31, 'done'),
(9, 32, 'done'),
(9, 33, 'done'),
(9, 34, 'done');

-- --------------------------------------------------------

--
-- Table structure for table `log_customer`
--

DROP TABLE IF EXISTS `log_customer`;
CREATE TABLE IF NOT EXISTS `log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_id` bigint(20) unsigned DEFAULT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `login_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_at` datetime DEFAULT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `IDX_VISITOR` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customers log information' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `log_customer`
--


-- --------------------------------------------------------

--
-- Table structure for table `log_quote`
--

DROP TABLE IF EXISTS `log_quote`;
CREATE TABLE IF NOT EXISTS `log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `visitor_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quote log data';

--
-- Dumping data for table `log_quote`
--


-- --------------------------------------------------------

--
-- Table structure for table `log_summary`
--

DROP TABLE IF EXISTS `log_summary`;
CREATE TABLE IF NOT EXISTS `log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL,
  `type_id` smallint(5) unsigned DEFAULT NULL,
  `visitor_count` int(11) NOT NULL DEFAULT '0',
  `customer_count` int(11) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Summary log information' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `log_summary`
--


-- --------------------------------------------------------

--
-- Table structure for table `log_summary_type`
--

DROP TABLE IF EXISTS `log_summary_type`;
CREATE TABLE IF NOT EXISTS `log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_code` varchar(64) NOT NULL DEFAULT '',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0',
  `period_type` enum('MINUTE','HOUR','DAY','WEEK','MONTH') NOT NULL DEFAULT 'MINUTE',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Type of summary information' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `log_summary_type`
--

INSERT INTO `log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- Table structure for table `log_url`
--

DROP TABLE IF EXISTS `log_url`;
CREATE TABLE IF NOT EXISTS `log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `visitor_id` bigint(20) unsigned DEFAULT NULL,
  `visit_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`url_id`),
  KEY `IDX_VISITOR` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='URL visiting history';

--
-- Dumping data for table `log_url`
--

INSERT INTO `log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
(1, 1, '2010-08-21 14:01:46'),
(2, 1, '2010-08-21 14:03:05'),
(3, 1, '2010-08-21 14:06:22'),
(4, 1, '2010-08-21 14:17:29'),
(5, 1, '2010-08-21 15:02:40'),
(6, 1, '2010-08-21 15:05:09'),
(7, 1, '2010-08-21 15:05:27'),
(8, 1, '2010-08-21 15:05:33'),
(9, 1, '2010-08-21 15:07:12'),
(10, 1, '2010-08-21 15:08:13'),
(11, 2, '2010-08-21 17:46:36'),
(12, 2, '2010-08-21 17:53:28'),
(13, 2, '2010-08-21 17:54:30'),
(14, 2, '2010-08-21 17:54:35'),
(15, 2, '2010-08-21 17:54:40'),
(16, 2, '2010-08-21 17:55:32'),
(17, 2, '2010-08-21 17:56:50'),
(18, 2, '2010-08-21 17:56:51'),
(19, 2, '2010-08-21 17:57:51'),
(20, 2, '2010-08-21 17:57:52'),
(21, 2, '2010-08-21 17:57:56'),
(22, 2, '2010-08-21 18:14:27'),
(23, 2, '2010-08-21 18:14:28'),
(24, 2, '2010-08-21 18:14:38'),
(25, 2, '2010-08-21 18:14:39'),
(26, 2, '2010-08-21 18:15:32'),
(27, 2, '2010-08-21 18:15:33'),
(28, 2, '2010-08-21 18:15:37'),
(29, 2, '2010-08-21 18:15:38'),
(30, 2, '2010-08-21 18:16:16'),
(31, 2, '2010-08-21 18:16:17'),
(32, 2, '2010-08-21 18:16:22'),
(33, 2, '2010-08-21 18:16:23'),
(34, 2, '2010-08-21 18:16:53'),
(35, 2, '2010-08-21 18:16:54'),
(36, 2, '2010-08-21 18:18:02'),
(37, 2, '2010-08-21 18:18:03'),
(38, 2, '2010-08-21 18:18:53'),
(39, 2, '2010-08-21 18:18:56'),
(40, 2, '2010-08-21 18:20:01'),
(41, 2, '2010-08-21 18:20:02'),
(42, 2, '2010-08-21 18:20:24'),
(43, 2, '2010-08-21 18:20:25'),
(44, 2, '2010-08-21 18:20:59'),
(45, 2, '2010-08-21 18:21:00'),
(46, 2, '2010-08-21 18:21:22'),
(47, 2, '2010-08-21 18:21:23'),
(48, 2, '2010-08-21 18:22:09'),
(49, 2, '2010-08-21 18:22:10'),
(50, 2, '2010-08-21 18:23:12'),
(51, 2, '2010-08-21 18:23:13'),
(52, 3, '2010-08-21 18:23:46'),
(53, 3, '2010-08-21 18:23:47'),
(54, 2, '2010-08-21 18:24:54'),
(55, 2, '2010-08-21 18:25:57'),
(56, 2, '2010-08-21 18:26:01'),
(57, 2, '2010-08-21 18:26:02'),
(58, 2, '2010-08-21 18:26:03'),
(59, 2, '2010-08-21 18:26:03'),
(60, 2, '2010-08-21 18:26:04'),
(61, 2, '2010-08-21 18:26:05'),
(62, 2, '2010-08-21 18:26:43'),
(63, 2, '2010-08-21 18:26:46'),
(64, 2, '2010-08-21 18:26:47'),
(65, 2, '2010-08-21 18:26:47'),
(66, 2, '2010-08-21 18:26:48'),
(67, 2, '2010-08-21 18:26:48'),
(68, 2, '2010-08-21 18:26:49'),
(69, 2, '2010-08-21 18:28:04'),
(70, 2, '2010-08-21 18:28:05'),
(71, 4, '2010-08-21 20:37:54'),
(72, 4, '2010-08-21 20:38:06'),
(73, 4, '2010-08-21 20:38:09'),
(74, 4, '2010-08-21 20:38:13'),
(75, 4, '2010-08-21 20:38:14'),
(76, 4, '2010-08-21 20:38:18'),
(77, 4, '2010-08-21 20:38:21'),
(78, 4, '2010-08-21 20:38:28'),
(79, 4, '2010-08-21 20:38:31'),
(80, 4, '2010-08-21 20:38:33'),
(81, 4, '2010-08-21 20:38:35'),
(82, 4, '2010-08-21 20:38:36'),
(83, 4, '2010-08-21 20:38:37'),
(84, 4, '2010-08-21 20:38:38'),
(85, 4, '2010-08-21 20:41:37'),
(86, 4, '2010-08-21 20:41:38'),
(87, 4, '2010-08-21 20:41:43'),
(88, 4, '2010-08-21 20:41:43'),
(89, 4, '2010-08-21 20:41:44'),
(90, 4, '2010-08-21 20:41:44'),
(91, 4, '2010-08-21 20:41:45'),
(92, 4, '2010-08-21 20:47:56'),
(93, 4, '2010-08-21 20:47:58'),
(94, 4, '2010-08-21 20:48:02'),
(95, 4, '2010-08-21 20:48:02'),
(96, 4, '2010-08-21 20:48:03'),
(97, 4, '2010-08-21 20:48:03'),
(98, 4, '2010-08-21 20:48:04'),
(99, 4, '2010-08-21 20:48:04'),
(100, 4, '2010-08-21 20:49:18'),
(101, 4, '2010-08-21 20:49:19'),
(102, 4, '2010-08-21 20:49:23'),
(103, 4, '2010-08-21 20:49:23'),
(104, 4, '2010-08-21 20:49:24'),
(105, 4, '2010-08-21 20:49:24'),
(106, 4, '2010-08-21 20:49:24'),
(107, 4, '2010-08-21 20:49:25'),
(108, 4, '2010-08-21 20:52:25'),
(109, 4, '2010-08-21 20:52:26'),
(110, 4, '2010-08-21 20:52:29'),
(111, 4, '2010-08-21 20:52:29'),
(112, 4, '2010-08-21 20:52:30'),
(113, 4, '2010-08-21 20:52:44'),
(114, 4, '2010-08-21 20:52:49'),
(115, 4, '2010-08-21 20:57:22'),
(116, 4, '2010-08-21 20:57:23'),
(117, 4, '2010-08-21 20:57:26'),
(118, 4, '2010-08-21 20:57:26'),
(119, 4, '2010-08-21 20:57:27'),
(120, 4, '2010-08-21 20:58:10'),
(121, 4, '2010-08-21 20:58:12'),
(122, 4, '2010-08-21 20:58:14'),
(123, 4, '2010-08-21 20:58:15'),
(124, 4, '2010-08-21 20:58:16'),
(125, 4, '2010-08-21 20:58:17'),
(126, 4, '2010-08-21 20:58:18'),
(127, 4, '2010-08-21 20:58:21'),
(128, 4, '2010-08-21 20:58:21'),
(129, 4, '2010-08-21 20:58:22'),
(130, 4, '2010-08-21 21:00:56'),
(131, 4, '2010-08-21 21:00:58'),
(132, 4, '2010-08-21 21:01:00'),
(133, 4, '2010-08-21 21:01:00'),
(134, 4, '2010-08-21 21:01:01'),
(135, 4, '2010-08-21 21:43:56'),
(136, 4, '2010-08-21 21:43:58'),
(137, 4, '2010-08-21 21:44:00'),
(138, 4, '2010-08-21 21:44:01'),
(139, 4, '2010-08-21 21:44:01'),
(140, 4, '2010-08-21 21:52:10'),
(141, 4, '2010-08-21 21:52:11'),
(142, 4, '2010-08-21 21:52:13'),
(143, 4, '2010-08-21 21:52:14'),
(144, 4, '2010-08-21 21:52:14'),
(145, 4, '2010-08-21 22:50:20'),
(146, 4, '2010-08-21 22:50:22'),
(147, 4, '2010-08-21 22:50:30'),
(148, 4, '2010-08-21 22:50:33'),
(149, 4, '2010-08-21 22:50:35'),
(150, 4, '2010-08-21 22:50:36'),
(151, 4, '2010-08-21 22:50:38'),
(152, 4, '2010-08-21 22:50:39'),
(153, 4, '2010-08-21 22:51:26'),
(154, 4, '2010-08-21 22:51:27'),
(155, 4, '2010-08-21 22:51:31'),
(156, 4, '2010-08-21 22:51:31'),
(157, 4, '2010-08-21 22:51:32'),
(158, 4, '2010-08-21 22:51:33'),
(159, 4, '2010-08-21 22:51:34'),
(160, 4, '2010-08-21 22:54:34'),
(161, 4, '2010-08-21 22:54:35'),
(162, 4, '2010-08-21 22:54:38'),
(163, 4, '2010-08-21 22:54:39'),
(164, 4, '2010-08-21 22:54:39'),
(165, 4, '2010-08-21 22:54:40'),
(166, 4, '2010-08-21 22:54:40'),
(167, 4, '2010-08-21 22:54:47'),
(168, 4, '2010-08-21 22:54:48'),
(169, 4, '2010-08-21 22:54:51'),
(170, 4, '2010-08-21 22:54:51'),
(171, 4, '2010-08-21 22:54:52'),
(172, 4, '2010-08-21 22:54:53'),
(173, 4, '2010-08-21 22:54:54'),
(174, 4, '2010-08-21 22:55:45'),
(175, 4, '2010-08-21 22:55:46'),
(176, 4, '2010-08-21 22:55:50'),
(177, 4, '2010-08-21 22:55:50'),
(178, 4, '2010-08-21 22:55:50'),
(179, 4, '2010-08-21 22:55:51'),
(180, 4, '2010-08-21 22:55:51'),
(181, 4, '2010-08-21 22:58:44'),
(182, 4, '2010-08-21 22:58:45'),
(183, 4, '2010-08-21 22:58:49'),
(184, 4, '2010-08-21 22:58:49'),
(185, 4, '2010-08-21 22:58:50'),
(186, 4, '2010-08-21 22:58:50'),
(187, 4, '2010-08-21 22:58:51'),
(188, 4, '2010-08-21 23:00:34'),
(189, 4, '2010-08-21 23:00:35'),
(190, 4, '2010-08-21 23:00:37'),
(191, 4, '2010-08-21 23:00:38'),
(192, 4, '2010-08-21 23:00:38'),
(193, 4, '2010-08-21 23:12:16'),
(194, 4, '2010-08-21 23:12:19'),
(195, 4, '2010-08-21 23:12:21'),
(196, 4, '2010-08-21 23:12:21'),
(197, 4, '2010-08-21 23:12:22'),
(198, 4, '2010-08-21 23:13:01'),
(199, 4, '2010-08-21 23:13:03'),
(200, 4, '2010-08-21 23:13:05'),
(201, 4, '2010-08-21 23:13:06'),
(202, 4, '2010-08-21 23:13:06'),
(203, 4, '2010-08-21 23:13:36'),
(204, 4, '2010-08-21 23:13:38'),
(205, 4, '2010-08-21 23:13:40'),
(206, 4, '2010-08-21 23:13:40'),
(207, 4, '2010-08-21 23:13:40'),
(208, 4, '2010-08-21 23:14:25'),
(209, 4, '2010-08-21 23:14:27'),
(210, 4, '2010-08-21 23:14:29'),
(211, 4, '2010-08-21 23:14:29'),
(212, 4, '2010-08-21 23:14:30'),
(213, 4, '2010-08-21 23:14:37'),
(214, 4, '2010-08-21 23:15:10'),
(215, 4, '2010-08-21 23:15:11'),
(216, 4, '2010-08-21 23:15:13'),
(217, 4, '2010-08-21 23:15:13'),
(218, 4, '2010-08-21 23:15:14'),
(219, 4, '2010-08-21 23:15:40'),
(220, 4, '2010-08-21 23:15:41'),
(221, 4, '2010-08-21 23:15:44'),
(222, 4, '2010-08-21 23:15:44'),
(223, 4, '2010-08-21 23:15:45'),
(224, 4, '2010-08-21 23:16:39'),
(225, 4, '2010-08-21 23:16:41'),
(226, 4, '2010-08-21 23:16:43'),
(227, 4, '2010-08-21 23:16:43'),
(228, 4, '2010-08-21 23:16:44'),
(229, 4, '2010-08-21 23:17:39'),
(230, 4, '2010-08-21 23:17:40'),
(231, 4, '2010-08-21 23:17:42'),
(232, 4, '2010-08-21 23:17:43'),
(233, 4, '2010-08-21 23:17:43'),
(234, 4, '2010-08-21 23:23:48'),
(235, 4, '2010-08-21 23:23:48'),
(236, 4, '2010-08-21 23:23:49'),
(237, 4, '2010-08-21 23:23:50'),
(238, 4, '2010-08-21 23:23:56'),
(239, 4, '2010-08-21 23:23:57'),
(240, 4, '2010-08-21 23:23:59'),
(241, 4, '2010-08-21 23:23:59'),
(242, 4, '2010-08-21 23:24:00'),
(243, 4, '2010-08-21 23:24:26'),
(244, 4, '2010-08-21 23:24:27'),
(245, 4, '2010-08-21 23:24:29'),
(246, 4, '2010-08-21 23:24:30'),
(247, 4, '2010-08-21 23:24:30'),
(248, 4, '2010-08-21 23:24:43'),
(249, 4, '2010-08-21 23:24:44'),
(250, 4, '2010-08-21 23:24:46'),
(251, 4, '2010-08-21 23:24:47'),
(252, 4, '2010-08-21 23:24:47'),
(253, 4, '2010-08-21 23:25:34'),
(254, 4, '2010-08-21 23:25:35'),
(255, 4, '2010-08-21 23:25:37'),
(256, 4, '2010-08-21 23:25:37'),
(257, 4, '2010-08-21 23:25:37'),
(258, 4, '2010-08-21 23:27:15'),
(259, 4, '2010-08-21 23:27:16'),
(260, 4, '2010-08-21 23:27:18'),
(261, 4, '2010-08-21 23:27:19'),
(262, 4, '2010-08-21 23:27:19'),
(263, 4, '2010-08-21 23:27:42'),
(264, 4, '2010-08-21 23:27:43'),
(265, 4, '2010-08-21 23:27:45'),
(266, 4, '2010-08-21 23:27:46'),
(267, 4, '2010-08-21 23:27:46'),
(268, 4, '2010-08-21 23:52:07'),
(269, 4, '2010-08-21 23:52:09'),
(270, 4, '2010-08-21 23:52:11'),
(271, 4, '2010-08-21 23:52:12'),
(272, 4, '2010-08-21 23:52:12'),
(273, 4, '2010-08-21 23:52:26'),
(274, 4, '2010-08-21 23:52:27'),
(275, 4, '2010-08-21 23:52:30'),
(276, 4, '2010-08-21 23:52:30'),
(277, 4, '2010-08-21 23:52:31'),
(278, 4, '2010-08-21 23:58:43'),
(279, 4, '2010-08-21 23:58:44'),
(280, 4, '2010-08-21 23:58:47'),
(281, 4, '2010-08-21 23:58:47'),
(282, 4, '2010-08-21 23:58:48'),
(283, 4, '2010-08-21 23:58:51'),
(284, 4, '2010-08-21 23:58:51'),
(285, 4, '2010-08-21 23:58:52'),
(286, 4, '2010-08-21 23:58:57'),
(287, 4, '2010-08-21 23:58:57'),
(288, 4, '2010-08-21 23:58:59'),
(289, 4, '2010-08-22 00:01:07'),
(290, 4, '2010-08-22 00:01:09'),
(291, 4, '2010-08-22 00:01:11'),
(292, 4, '2010-08-22 00:01:12'),
(293, 4, '2010-08-22 00:01:13'),
(294, 4, '2010-08-22 00:01:18'),
(295, 4, '2010-08-22 00:01:19'),
(296, 4, '2010-08-22 00:01:21'),
(297, 4, '2010-08-22 00:01:22'),
(298, 4, '2010-08-22 00:01:22'),
(299, 4, '2010-08-22 00:01:26'),
(300, 4, '2010-08-22 00:01:28'),
(301, 4, '2010-08-22 00:01:30'),
(302, 4, '2010-08-22 00:01:30'),
(303, 4, '2010-08-22 00:01:31'),
(304, 4, '2010-08-22 00:04:26'),
(305, 4, '2010-08-22 00:04:27'),
(306, 4, '2010-08-22 00:04:35'),
(307, 4, '2010-08-22 00:04:36'),
(308, 4, '2010-08-22 00:04:43'),
(309, 4, '2010-08-22 00:04:44'),
(310, 4, '2010-08-22 00:04:52'),
(311, 4, '2010-08-22 00:04:54'),
(312, 4, '2010-08-22 00:04:56'),
(313, 4, '2010-08-22 00:04:57'),
(314, 4, '2010-08-22 00:04:58'),
(315, 5, '2010-08-23 17:41:11'),
(316, 5, '2010-08-23 17:41:20'),
(317, 5, '2010-08-23 17:41:27'),
(318, 5, '2010-08-23 17:41:29'),
(319, 5, '2010-08-23 17:41:31'),
(320, 6, '2010-08-30 18:41:21'),
(321, 6, '2010-08-30 18:41:24'),
(322, 6, '2010-08-30 18:41:27'),
(323, 6, '2010-08-30 18:41:27'),
(324, 6, '2010-08-30 18:41:28'),
(325, 6, '2010-08-30 18:48:33'),
(326, 6, '2010-08-30 18:48:35'),
(327, 6, '2010-08-30 18:48:38'),
(328, 6, '2010-08-30 18:48:39'),
(329, 6, '2010-08-30 18:48:40'),
(330, 6, '2010-08-30 18:58:41'),
(331, 6, '2010-08-30 18:58:42'),
(332, 6, '2010-08-30 18:58:45'),
(333, 6, '2010-08-30 18:58:45'),
(334, 6, '2010-08-30 18:58:46'),
(335, 6, '2010-08-30 19:00:14'),
(336, 6, '2010-08-30 19:00:15'),
(337, 6, '2010-08-30 19:00:18'),
(338, 6, '2010-08-30 19:00:19'),
(339, 6, '2010-08-30 19:00:19'),
(340, 6, '2010-08-30 19:00:27'),
(341, 6, '2010-08-30 19:00:28'),
(342, 6, '2010-08-30 19:00:30'),
(343, 6, '2010-08-30 19:00:31'),
(344, 6, '2010-08-30 19:00:31'),
(345, 6, '2010-08-30 19:00:44'),
(346, 6, '2010-08-30 19:00:45'),
(347, 6, '2010-08-30 19:00:48'),
(348, 6, '2010-08-30 19:00:48'),
(349, 6, '2010-08-30 19:00:49'),
(350, 6, '2010-08-30 19:00:58'),
(351, 6, '2010-08-30 19:00:59'),
(352, 6, '2010-08-30 19:01:02'),
(353, 6, '2010-08-30 19:01:02'),
(354, 6, '2010-08-30 19:01:03'),
(355, 6, '2010-08-30 19:02:18'),
(356, 6, '2010-08-30 19:02:20'),
(357, 6, '2010-08-30 19:02:22'),
(358, 6, '2010-08-30 19:02:23'),
(359, 6, '2010-08-30 19:02:23'),
(360, 6, '2010-08-30 19:06:14'),
(361, 6, '2010-08-30 19:06:15'),
(362, 6, '2010-08-30 19:06:18'),
(363, 6, '2010-08-30 19:06:19'),
(364, 6, '2010-08-30 19:06:20'),
(365, 6, '2010-08-30 19:15:16'),
(366, 6, '2010-08-30 19:15:17'),
(367, 6, '2010-08-30 19:15:21'),
(368, 6, '2010-08-30 19:15:22'),
(369, 6, '2010-08-30 19:15:22'),
(370, 6, '2010-08-30 19:15:43'),
(371, 6, '2010-08-30 19:15:44'),
(372, 6, '2010-08-30 19:15:47'),
(373, 6, '2010-08-30 19:15:48'),
(374, 6, '2010-08-30 19:15:48'),
(375, 6, '2010-08-30 19:17:04'),
(376, 6, '2010-08-30 19:17:05'),
(377, 6, '2010-08-30 19:17:08'),
(378, 6, '2010-08-30 19:17:09'),
(379, 6, '2010-08-30 19:17:10'),
(380, 6, '2010-08-30 19:17:37'),
(381, 6, '2010-08-30 19:19:06'),
(382, 6, '2010-08-30 19:19:07'),
(383, 6, '2010-08-30 19:19:10'),
(384, 6, '2010-08-30 19:19:10'),
(385, 6, '2010-08-30 19:19:11'),
(386, 6, '2010-08-30 19:19:47'),
(387, 6, '2010-08-30 19:19:48'),
(388, 6, '2010-08-30 19:19:51'),
(389, 6, '2010-08-30 19:19:52'),
(390, 6, '2010-08-30 19:19:52'),
(391, 6, '2010-08-30 19:19:57'),
(392, 6, '2010-08-30 19:19:58'),
(393, 6, '2010-08-30 19:20:00'),
(394, 6, '2010-08-30 19:20:01'),
(395, 6, '2010-08-30 19:20:01'),
(396, 6, '2010-08-30 19:21:10'),
(397, 6, '2010-08-30 19:21:33'),
(398, 6, '2010-08-30 19:21:34'),
(399, 6, '2010-08-30 19:21:37'),
(400, 6, '2010-08-30 19:21:37'),
(401, 6, '2010-08-30 19:21:38'),
(402, 6, '2010-08-30 19:21:42'),
(403, 6, '2010-08-30 19:21:43'),
(404, 6, '2010-08-30 19:21:46'),
(405, 6, '2010-08-30 19:21:46'),
(406, 6, '2010-08-30 19:21:47'),
(407, 6, '2010-08-30 19:22:02'),
(408, 6, '2010-08-30 19:22:03'),
(409, 6, '2010-08-30 19:22:06'),
(410, 6, '2010-08-30 19:22:07'),
(411, 6, '2010-08-30 19:22:08'),
(412, 6, '2010-08-30 19:22:48'),
(413, 6, '2010-08-30 19:22:49'),
(414, 6, '2010-08-30 19:22:53'),
(415, 6, '2010-08-30 19:22:53'),
(416, 6, '2010-08-30 19:22:54'),
(417, 6, '2010-08-30 19:23:51'),
(418, 6, '2010-08-30 19:23:52'),
(419, 6, '2010-08-30 19:23:55'),
(420, 6, '2010-08-30 19:23:55'),
(421, 6, '2010-08-30 19:23:56'),
(422, 6, '2010-08-30 19:24:50'),
(423, 6, '2010-08-30 19:24:51'),
(424, 6, '2010-08-30 19:24:54'),
(425, 6, '2010-08-30 19:24:54'),
(426, 6, '2010-08-30 19:24:55'),
(427, 6, '2010-08-30 19:25:26'),
(428, 6, '2010-08-30 19:25:27'),
(429, 6, '2010-08-30 19:25:30'),
(430, 6, '2010-08-30 19:25:30'),
(431, 6, '2010-08-30 19:25:31'),
(432, 6, '2010-08-30 19:34:54'),
(433, 6, '2010-08-30 19:34:55'),
(434, 6, '2010-08-30 19:34:57'),
(435, 6, '2010-08-30 19:34:58'),
(436, 6, '2010-08-30 19:34:58'),
(437, 6, '2010-08-30 19:35:04'),
(438, 6, '2010-08-30 19:35:05'),
(439, 6, '2010-08-30 19:35:07'),
(440, 6, '2010-08-30 19:35:08'),
(441, 6, '2010-08-30 19:35:09'),
(442, 6, '2010-08-30 19:35:21'),
(443, 6, '2010-08-30 19:35:22'),
(444, 6, '2010-08-30 19:35:24'),
(445, 6, '2010-08-30 19:35:25'),
(446, 6, '2010-08-30 19:35:25'),
(447, 6, '2010-08-30 19:35:32'),
(448, 6, '2010-08-30 19:35:33'),
(449, 6, '2010-08-30 19:35:36'),
(450, 6, '2010-08-30 19:35:36'),
(451, 6, '2010-08-30 19:35:37'),
(452, 6, '2010-08-30 19:36:50'),
(453, 6, '2010-08-30 19:36:52'),
(454, 6, '2010-08-30 19:36:54'),
(455, 6, '2010-08-30 19:36:55'),
(456, 6, '2010-08-30 19:36:55'),
(457, 6, '2010-08-30 19:42:39'),
(458, 6, '2010-08-30 19:42:42'),
(459, 6, '2010-08-30 19:42:43'),
(460, 6, '2010-08-30 19:42:43'),
(461, 6, '2010-08-30 19:44:27'),
(462, 6, '2010-08-30 19:44:29'),
(463, 6, '2010-08-30 19:44:31'),
(464, 6, '2010-08-30 19:44:32'),
(465, 6, '2010-08-30 19:44:32'),
(466, 7, '2010-08-30 19:48:22'),
(467, 6, '2010-08-30 19:49:40'),
(468, 6, '2010-08-30 19:49:41'),
(469, 6, '2010-08-30 19:49:43'),
(470, 6, '2010-08-30 19:49:44'),
(471, 6, '2010-08-30 19:49:44'),
(472, 6, '2010-08-30 19:49:52'),
(473, 6, '2010-08-30 19:49:54'),
(474, 6, '2010-08-30 19:49:56'),
(475, 6, '2010-08-30 19:49:57'),
(476, 6, '2010-08-30 19:49:57'),
(477, 6, '2010-08-30 19:50:00'),
(478, 6, '2010-08-30 19:50:01'),
(479, 6, '2010-08-30 19:50:05'),
(480, 6, '2010-08-30 19:50:06'),
(481, 6, '2010-08-30 19:50:07'),
(482, 8, '2010-08-30 19:50:14'),
(483, 6, '2010-08-30 19:50:34'),
(484, 6, '2010-08-30 19:50:35'),
(485, 6, '2010-08-30 19:50:38'),
(486, 6, '2010-08-30 19:50:38'),
(487, 6, '2010-08-30 19:50:39'),
(488, 6, '2010-08-30 19:51:10'),
(489, 6, '2010-08-30 19:51:11'),
(490, 6, '2010-08-30 19:51:20'),
(491, 6, '2010-08-30 19:51:21'),
(492, 6, '2010-08-30 19:51:25'),
(493, 6, '2010-08-30 19:51:27'),
(494, 6, '2010-08-30 19:51:28'),
(495, 6, '2010-08-30 19:51:29'),
(496, 6, '2010-08-30 19:51:31'),
(497, 6, '2010-08-30 19:51:32'),
(498, 6, '2010-08-30 19:51:32'),
(499, 6, '2010-08-30 19:52:28'),
(500, 6, '2010-08-30 19:52:29'),
(501, 6, '2010-08-30 19:52:31'),
(502, 6, '2010-08-30 19:52:32'),
(503, 6, '2010-08-30 19:52:32'),
(504, 6, '2010-08-30 19:52:48'),
(505, 6, '2010-08-30 19:52:49'),
(506, 6, '2010-08-30 19:52:52'),
(507, 6, '2010-08-30 19:52:53'),
(508, 6, '2010-08-30 19:52:53'),
(509, 6, '2010-08-30 20:01:24'),
(510, 6, '2010-08-30 20:01:25'),
(511, 6, '2010-08-30 20:01:28'),
(512, 6, '2010-08-30 20:01:29'),
(513, 6, '2010-08-30 20:01:29'),
(514, 6, '2010-08-30 20:09:02'),
(515, 6, '2010-08-30 20:09:04'),
(516, 6, '2010-08-30 20:09:06'),
(517, 6, '2010-08-30 20:09:07'),
(518, 6, '2010-08-30 20:09:07'),
(519, 6, '2010-08-30 20:10:45'),
(520, 6, '2010-08-30 20:10:46'),
(521, 6, '2010-08-30 20:10:49'),
(522, 6, '2010-08-30 20:10:50'),
(523, 6, '2010-08-30 20:10:50'),
(524, 6, '2010-08-30 20:11:46'),
(525, 6, '2010-08-30 20:11:48'),
(526, 6, '2010-08-30 20:11:51'),
(527, 6, '2010-08-30 20:11:51'),
(528, 6, '2010-08-30 20:11:52'),
(529, 6, '2010-08-30 20:12:38'),
(530, 6, '2010-08-30 20:12:39'),
(531, 6, '2010-08-30 20:12:42'),
(532, 6, '2010-08-30 20:12:42'),
(533, 6, '2010-08-30 20:12:43'),
(534, 6, '2010-08-30 20:14:00'),
(535, 6, '2010-08-30 20:14:01'),
(536, 6, '2010-08-30 20:14:03'),
(537, 6, '2010-08-30 20:14:04'),
(538, 6, '2010-08-30 20:14:04'),
(539, 9, '2010-08-30 20:21:52'),
(540, 6, '2010-08-30 20:23:23'),
(541, 6, '2010-08-30 20:23:24'),
(542, 6, '2010-08-30 20:23:26'),
(543, 6, '2010-08-30 20:23:26'),
(544, 6, '2010-08-30 20:23:27'),
(545, 6, '2010-08-30 20:23:30'),
(546, 6, '2010-08-30 20:23:31'),
(547, 6, '2010-08-30 20:23:34'),
(548, 6, '2010-08-30 20:23:34'),
(549, 6, '2010-08-30 20:23:35'),
(550, 6, '2010-08-30 20:24:41'),
(551, 6, '2010-08-30 20:24:43'),
(552, 6, '2010-08-30 20:24:45'),
(553, 6, '2010-08-30 20:24:46'),
(554, 6, '2010-08-30 20:24:46'),
(555, 6, '2010-08-30 20:26:45'),
(556, 6, '2010-08-30 20:26:46'),
(557, 6, '2010-08-30 20:26:49'),
(558, 6, '2010-08-30 20:26:49'),
(559, 6, '2010-08-30 20:26:50'),
(560, 6, '2010-08-30 20:31:12'),
(561, 6, '2010-08-30 20:31:13'),
(562, 6, '2010-08-30 20:31:16'),
(563, 6, '2010-08-30 20:31:16'),
(564, 6, '2010-08-30 20:31:17'),
(565, 6, '2010-08-30 20:31:21'),
(566, 6, '2010-08-30 20:31:22'),
(567, 6, '2010-08-30 20:31:25'),
(568, 6, '2010-08-30 20:31:25'),
(569, 6, '2010-08-30 20:31:26'),
(570, 10, '2010-08-30 21:50:41'),
(571, 10, '2010-08-30 21:50:42'),
(572, 10, '2010-08-30 21:50:44'),
(573, 10, '2010-08-30 21:50:45'),
(574, 10, '2010-08-30 21:50:45'),
(575, 10, '2010-08-30 21:51:00'),
(576, 10, '2010-08-30 21:51:01'),
(577, 10, '2010-08-30 21:51:04'),
(578, 10, '2010-08-30 21:51:04'),
(579, 10, '2010-08-30 21:51:05'),
(580, 10, '2010-08-30 21:51:56'),
(581, 10, '2010-08-30 21:51:57'),
(582, 10, '2010-08-30 21:51:59'),
(583, 10, '2010-08-30 21:51:59'),
(584, 10, '2010-08-30 21:52:00'),
(585, 10, '2010-08-30 21:52:02'),
(586, 10, '2010-08-30 21:52:04'),
(587, 10, '2010-08-30 21:52:06'),
(588, 10, '2010-08-30 21:52:07'),
(589, 10, '2010-08-30 21:52:07'),
(590, 10, '2010-08-30 21:53:02'),
(591, 10, '2010-08-30 21:53:04'),
(592, 10, '2010-08-30 21:53:06'),
(593, 10, '2010-08-30 21:53:07'),
(594, 10, '2010-08-30 21:53:07'),
(595, 10, '2010-08-30 21:54:15'),
(596, 10, '2010-08-30 21:54:16'),
(597, 10, '2010-08-30 21:54:19'),
(598, 10, '2010-08-30 21:54:19'),
(599, 10, '2010-08-30 21:54:20'),
(600, 10, '2010-08-30 21:54:30'),
(601, 10, '2010-08-30 21:54:32'),
(602, 10, '2010-08-30 21:54:35'),
(603, 10, '2010-08-30 21:54:35'),
(604, 10, '2010-08-30 21:54:36'),
(605, 10, '2010-08-30 21:57:41'),
(606, 10, '2010-08-30 21:57:42'),
(607, 10, '2010-08-30 21:57:44'),
(608, 10, '2010-08-30 21:57:45'),
(609, 10, '2010-08-30 21:57:45'),
(610, 10, '2010-08-30 22:01:00'),
(611, 10, '2010-08-30 22:01:01'),
(612, 10, '2010-08-30 22:01:03'),
(613, 10, '2010-08-30 22:01:03'),
(614, 10, '2010-08-30 22:01:04'),
(615, 10, '2010-08-30 22:01:09'),
(616, 10, '2010-08-30 22:01:10'),
(617, 10, '2010-08-30 22:01:12'),
(618, 10, '2010-08-30 22:01:13'),
(619, 10, '2010-08-30 22:01:13'),
(620, 10, '2010-08-30 22:01:36'),
(621, 10, '2010-08-30 22:01:37'),
(622, 10, '2010-08-30 22:01:40'),
(623, 10, '2010-08-30 22:01:41'),
(624, 10, '2010-08-30 22:01:41'),
(625, 10, '2010-08-30 22:01:42'),
(626, 10, '2010-08-30 22:01:53'),
(627, 11, '2010-08-30 22:02:22'),
(628, 11, '2010-08-30 22:02:33'),
(629, 11, '2010-08-30 22:02:34'),
(630, 11, '2010-08-30 22:02:36'),
(631, 11, '2010-08-30 22:02:37'),
(632, 11, '2010-08-30 22:02:37'),
(633, 11, '2010-08-30 22:02:48'),
(634, 11, '2010-08-30 22:02:49'),
(635, 11, '2010-08-30 22:02:51'),
(636, 11, '2010-08-30 22:02:52'),
(637, 11, '2010-08-30 22:02:52'),
(638, 11, '2010-08-30 22:13:26'),
(639, 11, '2010-08-30 22:13:28'),
(640, 11, '2010-08-30 22:13:30'),
(641, 11, '2010-08-30 22:13:30'),
(642, 11, '2010-08-30 22:13:40'),
(643, 11, '2010-08-30 22:13:41'),
(644, 11, '2010-08-30 22:13:44'),
(645, 11, '2010-08-30 22:13:44'),
(646, 10, '2010-08-30 22:20:54'),
(647, 10, '2010-08-30 22:21:16'),
(648, 10, '2010-08-30 22:21:29'),
(649, 10, '2010-08-30 22:23:27'),
(650, 10, '2010-08-30 22:23:42'),
(651, 10, '2010-08-30 22:23:56'),
(652, 10, '2010-08-30 22:25:36'),
(653, 10, '2010-08-30 22:26:15'),
(654, 10, '2010-08-30 22:26:40'),
(655, 10, '2010-08-30 22:26:48'),
(656, 12, '2010-08-30 22:32:10'),
(657, 11, '2010-08-30 22:35:53'),
(658, 11, '2010-08-30 22:36:05'),
(659, 10, '2010-08-30 22:36:15'),
(660, 10, '2010-08-30 22:36:20'),
(661, 10, '2010-08-30 22:36:25'),
(662, 10, '2010-08-30 22:37:12'),
(663, 10, '2010-08-30 22:38:06'),
(664, 10, '2010-08-30 22:38:10'),
(665, 10, '2010-08-30 22:39:00'),
(666, 10, '2010-08-30 22:39:42'),
(667, 10, '2010-08-30 22:39:43'),
(668, 10, '2010-08-30 22:39:45'),
(669, 10, '2010-08-30 22:39:45'),
(670, 10, '2010-08-30 22:39:50'),
(671, 10, '2010-08-30 22:39:51'),
(672, 10, '2010-08-30 22:39:53'),
(673, 10, '2010-08-30 22:39:54'),
(674, 13, '2010-08-31 15:44:05'),
(675, 13, '2010-08-31 15:44:06'),
(676, 13, '2010-08-31 15:44:08'),
(677, 13, '2010-08-31 15:44:09'),
(678, 13, '2010-08-31 15:45:33'),
(679, 13, '2010-08-31 15:45:34'),
(680, 13, '2010-08-31 15:45:36'),
(681, 13, '2010-08-31 15:45:37'),
(682, 13, '2010-08-31 15:46:46'),
(683, 13, '2010-08-31 15:46:47'),
(684, 13, '2010-08-31 15:46:50'),
(685, 13, '2010-08-31 15:46:50'),
(686, 13, '2010-08-31 15:47:32'),
(687, 13, '2010-08-31 15:47:33'),
(688, 13, '2010-08-31 15:47:35'),
(689, 13, '2010-08-31 15:47:36'),
(690, 13, '2010-08-31 15:47:39'),
(691, 13, '2010-08-31 15:47:40'),
(692, 13, '2010-08-31 15:47:42'),
(693, 13, '2010-08-31 15:47:43'),
(694, 14, '2010-08-31 15:47:46'),
(695, 14, '2010-08-31 15:47:47'),
(696, 14, '2010-08-31 15:47:49'),
(697, 14, '2010-08-31 15:47:49'),
(698, 14, '2010-08-31 15:47:55'),
(699, 14, '2010-08-31 15:48:00'),
(700, 13, '2010-08-31 15:50:42'),
(701, 13, '2010-08-31 15:50:43'),
(702, 13, '2010-08-31 15:50:45'),
(703, 13, '2010-08-31 15:50:45'),
(704, 13, '2010-08-31 15:51:10'),
(705, 13, '2010-08-31 15:51:11'),
(706, 13, '2010-08-31 15:51:13'),
(707, 13, '2010-08-31 15:51:13'),
(708, 13, '2010-08-31 15:52:19'),
(709, 13, '2010-08-31 15:52:20'),
(710, 13, '2010-08-31 15:52:22'),
(711, 13, '2010-08-31 15:52:23'),
(712, 13, '2010-08-31 15:53:06'),
(713, 13, '2010-08-31 15:53:07'),
(714, 13, '2010-08-31 15:53:09'),
(715, 13, '2010-08-31 15:53:09'),
(716, 13, '2010-08-31 15:53:26'),
(717, 13, '2010-08-31 15:53:27'),
(718, 13, '2010-08-31 15:53:29'),
(719, 13, '2010-08-31 15:53:30'),
(720, 13, '2010-08-31 15:55:30'),
(721, 13, '2010-08-31 15:55:31'),
(722, 13, '2010-08-31 15:55:32'),
(723, 13, '2010-08-31 15:55:33'),
(724, 13, '2010-08-31 15:56:11'),
(725, 13, '2010-08-31 15:56:12'),
(726, 13, '2010-08-31 15:56:14'),
(727, 13, '2010-08-31 15:56:15'),
(728, 13, '2010-08-31 15:59:08'),
(729, 13, '2010-08-31 15:59:09'),
(730, 13, '2010-08-31 15:59:10'),
(731, 13, '2010-08-31 15:59:11'),
(732, 13, '2010-08-31 16:00:28'),
(733, 13, '2010-08-31 16:00:29'),
(734, 13, '2010-08-31 16:00:31'),
(735, 13, '2010-08-31 16:00:31'),
(736, 13, '2010-08-31 16:04:47'),
(737, 13, '2010-08-31 16:04:48'),
(738, 13, '2010-08-31 16:04:50'),
(739, 13, '2010-08-31 16:04:51'),
(740, 13, '2010-08-31 16:07:22'),
(741, 13, '2010-08-31 16:07:23'),
(742, 13, '2010-08-31 16:07:25'),
(743, 13, '2010-08-31 16:07:26'),
(744, 13, '2010-08-31 16:15:54'),
(745, 13, '2010-08-31 16:15:55'),
(746, 13, '2010-08-31 16:15:57'),
(747, 13, '2010-08-31 16:15:58'),
(748, 13, '2010-08-31 16:17:36'),
(749, 13, '2010-08-31 16:17:37'),
(750, 13, '2010-08-31 16:17:39'),
(751, 13, '2010-08-31 16:17:40'),
(752, 13, '2010-08-31 16:18:25'),
(753, 13, '2010-08-31 16:18:27'),
(754, 13, '2010-08-31 16:18:28'),
(755, 13, '2010-08-31 16:18:29'),
(756, 14, '2010-08-31 16:19:15'),
(757, 13, '2010-08-31 16:19:46'),
(758, 13, '2010-08-31 16:19:47'),
(759, 13, '2010-08-31 16:19:48'),
(760, 13, '2010-08-31 16:19:49'),
(761, 13, '2010-08-31 16:20:31'),
(762, 13, '2010-08-31 16:20:33'),
(763, 13, '2010-08-31 16:20:34'),
(764, 13, '2010-08-31 16:20:35'),
(765, 13, '2010-08-31 16:23:55'),
(766, 13, '2010-08-31 16:23:56'),
(767, 13, '2010-08-31 16:23:58'),
(768, 13, '2010-08-31 16:23:59'),
(769, 13, '2010-08-31 16:25:00'),
(770, 13, '2010-08-31 16:25:04'),
(771, 13, '2010-08-31 16:25:07'),
(772, 13, '2010-08-31 16:25:08'),
(773, 13, '2010-08-31 16:25:14'),
(774, 13, '2010-08-31 16:25:15'),
(775, 13, '2010-08-31 16:25:17'),
(776, 13, '2010-08-31 16:25:18'),
(777, 13, '2010-08-31 16:27:15'),
(778, 13, '2010-08-31 16:27:16'),
(779, 13, '2010-08-31 16:27:18'),
(780, 13, '2010-08-31 16:27:19'),
(781, 13, '2010-08-31 16:27:23'),
(782, 13, '2010-08-31 16:27:24'),
(783, 13, '2010-08-31 16:27:27'),
(784, 13, '2010-08-31 16:27:27'),
(785, 13, '2010-08-31 16:27:37'),
(786, 13, '2010-08-31 16:27:38'),
(787, 13, '2010-08-31 16:27:40'),
(788, 13, '2010-08-31 16:27:41'),
(789, 13, '2010-08-31 16:32:19'),
(790, 13, '2010-08-31 16:32:20'),
(791, 13, '2010-08-31 16:32:22'),
(792, 13, '2010-08-31 16:32:22'),
(793, 14, '2010-08-31 16:32:25'),
(794, 13, '2010-08-31 16:33:57'),
(795, 13, '2010-08-31 16:33:59'),
(796, 13, '2010-08-31 16:34:00'),
(797, 13, '2010-08-31 16:34:01'),
(798, 13, '2010-08-31 16:34:19'),
(799, 13, '2010-08-31 16:34:20'),
(800, 13, '2010-08-31 16:34:21'),
(801, 13, '2010-08-31 16:34:22'),
(802, 13, '2010-08-31 16:35:58'),
(803, 13, '2010-08-31 16:35:59'),
(804, 13, '2010-08-31 16:36:01'),
(805, 13, '2010-08-31 16:36:01'),
(806, 13, '2010-08-31 16:36:16'),
(807, 13, '2010-08-31 16:36:18'),
(808, 13, '2010-08-31 16:36:19'),
(809, 13, '2010-08-31 16:36:20'),
(810, 13, '2010-08-31 16:36:32'),
(811, 13, '2010-08-31 16:36:34'),
(812, 13, '2010-08-31 16:36:36'),
(813, 13, '2010-08-31 16:36:36'),
(814, 13, '2010-08-31 16:38:41'),
(815, 13, '2010-08-31 16:38:42'),
(816, 13, '2010-08-31 16:38:44'),
(817, 13, '2010-08-31 16:38:45'),
(818, 13, '2010-08-31 16:42:50'),
(819, 13, '2010-08-31 16:42:52'),
(820, 13, '2010-08-31 16:42:54'),
(821, 13, '2010-08-31 16:42:54'),
(822, 13, '2010-08-31 16:43:20'),
(823, 13, '2010-08-31 16:43:21'),
(824, 13, '2010-08-31 16:43:23'),
(825, 13, '2010-08-31 16:43:23'),
(826, 13, '2010-08-31 16:43:30'),
(827, 13, '2010-08-31 16:43:31'),
(828, 13, '2010-08-31 16:43:33'),
(829, 13, '2010-08-31 16:43:33'),
(830, 13, '2010-08-31 16:44:17'),
(831, 13, '2010-08-31 16:44:18'),
(832, 13, '2010-08-31 16:44:20'),
(833, 13, '2010-08-31 16:44:21'),
(834, 13, '2010-08-31 16:44:24'),
(835, 13, '2010-08-31 16:44:26'),
(836, 13, '2010-08-31 16:44:27'),
(837, 13, '2010-08-31 16:44:28'),
(838, 13, '2010-08-31 16:44:36'),
(839, 13, '2010-08-31 16:44:37'),
(840, 13, '2010-08-31 16:44:40'),
(841, 13, '2010-08-31 16:44:40'),
(842, 13, '2010-08-31 16:45:01'),
(843, 13, '2010-08-31 16:45:02'),
(844, 13, '2010-08-31 16:45:04'),
(845, 13, '2010-08-31 16:45:04'),
(846, 15, '2010-08-31 20:05:57'),
(847, 15, '2010-08-31 20:05:59'),
(848, 15, '2010-08-31 20:06:01'),
(849, 15, '2010-08-31 20:06:02'),
(850, 15, '2010-08-31 20:06:09'),
(851, 15, '2010-08-31 20:06:11'),
(852, 15, '2010-08-31 20:06:14'),
(853, 15, '2010-08-31 20:06:15'),
(854, 15, '2010-08-31 20:06:41'),
(855, 15, '2010-08-31 20:06:43'),
(856, 15, '2010-08-31 20:06:45'),
(857, 15, '2010-08-31 20:06:46'),
(858, 15, '2010-08-31 20:07:23'),
(859, 15, '2010-08-31 20:07:24'),
(860, 15, '2010-08-31 20:07:26'),
(861, 15, '2010-08-31 20:07:27'),
(862, 15, '2010-08-31 20:11:51'),
(863, 15, '2010-08-31 20:11:52'),
(864, 15, '2010-08-31 20:11:55'),
(865, 15, '2010-08-31 20:11:55'),
(866, 15, '2010-08-31 20:12:48'),
(867, 15, '2010-08-31 20:12:50'),
(868, 15, '2010-08-31 20:12:51'),
(869, 15, '2010-08-31 20:12:52'),
(870, 15, '2010-08-31 20:13:12'),
(871, 15, '2010-08-31 20:13:13'),
(872, 15, '2010-08-31 20:13:15'),
(873, 15, '2010-08-31 20:13:16'),
(874, 15, '2010-08-31 20:13:18'),
(875, 15, '2010-08-31 20:13:20'),
(876, 15, '2010-08-31 20:13:22'),
(877, 15, '2010-08-31 20:13:22'),
(878, 15, '2010-08-31 20:14:34'),
(879, 15, '2010-08-31 20:14:35'),
(880, 15, '2010-08-31 20:14:38'),
(881, 15, '2010-08-31 20:14:38'),
(882, 15, '2010-08-31 20:16:05'),
(883, 15, '2010-08-31 20:16:07'),
(884, 15, '2010-08-31 20:16:09'),
(885, 15, '2010-08-31 20:16:09'),
(886, 15, '2010-08-31 20:16:36'),
(887, 15, '2010-08-31 20:16:38'),
(888, 15, '2010-08-31 20:16:40'),
(889, 15, '2010-08-31 20:16:41'),
(890, 15, '2010-08-31 20:16:52'),
(891, 15, '2010-08-31 20:16:55'),
(892, 15, '2010-08-31 20:16:57'),
(893, 15, '2010-08-31 20:16:58'),
(894, 15, '2010-08-31 20:20:10'),
(895, 15, '2010-08-31 20:20:11'),
(896, 15, '2010-08-31 20:20:13'),
(897, 15, '2010-08-31 20:20:14'),
(898, 15, '2010-08-31 20:20:47'),
(899, 15, '2010-08-31 20:20:48'),
(900, 15, '2010-08-31 20:20:51'),
(901, 15, '2010-08-31 20:20:51'),
(902, 15, '2010-08-31 20:20:55'),
(903, 15, '2010-08-31 20:20:57'),
(904, 15, '2010-08-31 20:20:58'),
(905, 15, '2010-08-31 20:20:59'),
(906, 16, '2010-08-31 20:23:33'),
(907, 15, '2010-08-31 20:24:26'),
(908, 15, '2010-08-31 20:24:28'),
(909, 15, '2010-08-31 20:24:30'),
(910, 15, '2010-08-31 20:24:30'),
(911, 15, '2010-08-31 20:24:32'),
(912, 15, '2010-08-31 20:24:33'),
(913, 15, '2010-08-31 20:24:35'),
(914, 15, '2010-08-31 20:24:35'),
(915, 15, '2010-08-31 20:24:37'),
(916, 15, '2010-08-31 20:24:38'),
(917, 15, '2010-08-31 20:24:40'),
(918, 15, '2010-08-31 20:24:41'),
(919, 15, '2010-08-31 20:36:56'),
(920, 15, '2010-08-31 20:36:57'),
(921, 15, '2010-08-31 20:36:59'),
(922, 15, '2010-08-31 20:36:59'),
(923, 15, '2010-08-31 20:37:02'),
(924, 15, '2010-08-31 20:37:03'),
(925, 15, '2010-08-31 20:37:05'),
(926, 15, '2010-08-31 20:37:06'),
(927, 17, '2010-08-31 20:37:20'),
(928, 18, '2010-08-31 21:10:47'),
(929, 15, '2010-08-31 21:21:12'),
(930, 15, '2010-08-31 21:21:17'),
(931, 15, '2010-08-31 21:21:22'),
(932, 15, '2010-08-31 21:21:23'),
(933, 19, '2010-09-03 20:33:25'),
(934, 19, '2010-09-03 20:33:26'),
(935, 19, '2010-09-03 20:33:27'),
(936, 19, '2010-09-03 20:33:28'),
(937, 19, '2010-09-03 20:33:52'),
(938, 19, '2010-09-03 20:33:53'),
(939, 19, '2010-09-03 20:33:55'),
(940, 19, '2010-09-03 20:33:56'),
(941, 19, '2010-09-03 20:38:02'),
(942, 19, '2010-09-03 20:38:03'),
(943, 19, '2010-09-03 20:38:05'),
(944, 19, '2010-09-03 20:38:06'),
(945, 19, '2010-09-03 20:38:07'),
(946, 19, '2010-09-03 20:38:08'),
(947, 19, '2010-09-03 20:38:10'),
(948, 19, '2010-09-03 20:38:10'),
(949, 19, '2010-09-03 20:38:11'),
(950, 19, '2010-09-03 20:38:12'),
(951, 19, '2010-09-03 20:38:14'),
(952, 19, '2010-09-03 20:38:15'),
(953, 19, '2010-09-03 20:38:22'),
(954, 19, '2010-09-03 20:38:24'),
(955, 19, '2010-09-03 20:38:26'),
(956, 19, '2010-09-03 20:38:26'),
(957, 19, '2010-09-03 20:51:18'),
(958, 19, '2010-09-03 20:51:20'),
(959, 19, '2010-09-03 20:51:21'),
(960, 19, '2010-09-03 20:51:31'),
(961, 19, '2010-09-03 20:51:33'),
(962, 19, '2010-09-03 20:51:33'),
(963, 19, '2010-09-03 20:52:03'),
(964, 19, '2010-09-03 20:56:14'),
(965, 19, '2010-09-03 20:57:07'),
(966, 19, '2010-09-03 20:59:39'),
(967, 19, '2010-09-03 20:59:43'),
(968, 19, '2010-09-03 20:59:54'),
(969, 19, '2010-09-03 20:59:57'),
(970, 19, '2010-09-03 21:00:06'),
(971, 19, '2010-09-03 21:00:09'),
(972, 19, '2010-09-03 21:01:52'),
(973, 19, '2010-09-03 21:16:44'),
(974, 20, '2010-09-08 19:10:40'),
(975, 20, '2010-09-08 19:10:43'),
(976, 20, '2010-09-08 19:10:58'),
(977, 20, '2010-09-08 19:10:59'),
(978, 20, '2010-09-08 19:11:02'),
(979, 20, '2010-09-08 19:11:03'),
(980, 20, '2010-09-08 19:11:05'),
(981, 20, '2010-09-08 19:11:07'),
(982, 20, '2010-09-08 19:11:08'),
(983, 20, '2010-09-08 19:11:10'),
(984, 20, '2010-09-08 19:11:12'),
(985, 20, '2010-09-08 19:11:14'),
(986, 20, '2010-09-08 19:11:18'),
(987, 20, '2010-09-08 19:11:19'),
(988, 20, '2010-09-08 19:27:27'),
(989, 20, '2010-09-08 19:27:29'),
(990, 20, '2010-09-08 19:28:19'),
(991, 20, '2010-09-08 19:28:21'),
(992, 21, '2010-09-08 19:29:43'),
(993, 21, '2010-09-08 19:34:06'),
(994, 21, '2010-09-08 19:40:19'),
(995, 21, '2010-09-08 19:40:21'),
(996, 21, '2010-09-08 19:40:49'),
(997, 21, '2010-09-08 19:40:51'),
(998, 21, '2010-09-08 19:47:06'),
(999, 21, '2010-09-08 19:56:48'),
(1000, 21, '2010-09-08 20:01:38'),
(1001, 21, '2010-09-08 20:01:44'),
(1002, 21, '2010-09-08 20:03:02'),
(1003, 21, '2010-09-08 20:12:33'),
(1004, 21, '2010-09-08 20:12:37'),
(1005, 21, '2010-09-08 20:12:45'),
(1006, 21, '2010-09-08 20:12:48'),
(1007, 20, '2010-09-08 20:12:55'),
(1008, 20, '2010-09-08 20:15:04'),
(1009, 20, '2010-09-08 20:20:38'),
(1010, 20, '2010-09-08 20:20:45'),
(1011, 20, '2010-09-08 20:23:25'),
(1012, 20, '2010-09-08 20:24:12'),
(1013, 20, '2010-09-08 20:26:18'),
(1014, 20, '2010-09-08 20:26:30'),
(1015, 20, '2010-09-08 20:26:45'),
(1016, 20, '2010-09-08 20:26:49'),
(1017, 20, '2010-09-08 20:26:51'),
(1018, 20, '2010-09-08 20:27:26'),
(1019, 20, '2010-09-08 20:27:49'),
(1020, 20, '2010-09-08 20:27:50'),
(1021, 20, '2010-09-08 20:27:55'),
(1022, 20, '2010-09-08 20:27:57'),
(1023, 20, '2010-09-08 20:27:58'),
(1024, 20, '2010-09-08 20:28:00'),
(1025, 20, '2010-09-08 20:28:03'),
(1026, 20, '2010-09-08 20:28:05'),
(1027, 21, '2010-09-08 21:06:29'),
(1028, 20, '2010-09-08 21:06:46'),
(1029, 20, '2010-09-08 21:06:47'),
(1030, 21, '2010-09-08 21:07:15'),
(1031, 21, '2010-09-08 21:10:52'),
(1032, 21, '2010-09-08 21:10:59'),
(1033, 21, '2010-09-08 21:11:22'),
(1034, 21, '2010-09-08 21:11:48'),
(1035, 21, '2010-09-08 21:14:49'),
(1036, 21, '2010-09-08 21:15:22'),
(1037, 21, '2010-09-08 21:16:11'),
(1038, 21, '2010-09-08 21:17:02'),
(1039, 21, '2010-09-08 21:17:05'),
(1040, 21, '2010-09-08 21:17:50'),
(1041, 21, '2010-09-08 21:17:53'),
(1042, 21, '2010-09-08 21:18:24'),
(1043, 21, '2010-09-08 21:18:52'),
(1044, 21, '2010-09-08 21:20:02'),
(1045, 21, '2010-09-08 21:20:20'),
(1046, 20, '2010-09-08 21:23:50'),
(1047, 20, '2010-09-08 21:23:52'),
(1048, 20, '2010-09-08 21:29:35'),
(1049, 20, '2010-09-08 21:29:36'),
(1050, 20, '2010-09-08 21:30:51'),
(1051, 20, '2010-09-08 21:30:53'),
(1052, 20, '2010-09-08 21:36:17'),
(1053, 20, '2010-09-08 21:36:18'),
(1054, 20, '2010-09-08 21:37:09'),
(1055, 20, '2010-09-08 21:37:10'),
(1056, 20, '2010-09-08 21:37:52'),
(1057, 20, '2010-09-08 21:37:54'),
(1058, 20, '2010-09-08 21:40:34'),
(1059, 20, '2010-09-08 21:40:36'),
(1060, 20, '2010-09-08 21:41:11'),
(1061, 20, '2010-09-08 21:41:13'),
(1062, 20, '2010-09-08 21:45:19'),
(1063, 20, '2010-09-08 21:45:21'),
(1064, 20, '2010-09-08 21:45:35'),
(1065, 20, '2010-09-08 21:45:37'),
(1066, 20, '2010-09-08 21:53:08'),
(1067, 20, '2010-09-08 21:53:09'),
(1068, 20, '2010-09-08 22:04:10'),
(1069, 20, '2010-09-08 22:04:12'),
(1070, 20, '2010-09-08 22:05:31'),
(1071, 20, '2010-09-08 22:05:33'),
(1072, 20, '2010-09-08 22:06:19'),
(1073, 20, '2010-09-08 22:06:22'),
(1074, 20, '2010-09-08 22:07:20'),
(1075, 20, '2010-09-08 22:07:22'),
(1076, 20, '2010-09-08 22:07:53'),
(1077, 20, '2010-09-08 22:07:55'),
(1078, 20, '2010-09-08 22:10:48'),
(1079, 20, '2010-09-08 22:10:50'),
(1080, 20, '2010-09-08 22:11:54'),
(1081, 20, '2010-09-08 22:11:57'),
(1082, 20, '2010-09-08 22:15:28'),
(1083, 20, '2010-09-08 22:15:30'),
(1084, 20, '2010-09-08 22:17:07'),
(1085, 20, '2010-09-08 22:17:10'),
(1086, 20, '2010-09-08 22:17:15'),
(1087, 20, '2010-09-08 22:17:37'),
(1088, 20, '2010-09-08 22:17:39'),
(1089, 20, '2010-09-08 22:18:28'),
(1090, 20, '2010-09-08 22:18:30'),
(1091, 20, '2010-09-08 22:18:44'),
(1092, 20, '2010-09-08 22:18:47'),
(1093, 20, '2010-09-08 22:21:35'),
(1094, 20, '2010-09-08 22:21:37'),
(1095, 20, '2010-09-08 22:21:40'),
(1096, 20, '2010-09-08 22:21:42'),
(1097, 20, '2010-09-08 22:22:09'),
(1098, 20, '2010-09-08 22:22:11'),
(1099, 20, '2010-09-08 22:22:13'),
(1100, 20, '2010-09-08 22:22:15'),
(1101, 20, '2010-09-08 22:22:16'),
(1102, 20, '2010-09-08 22:22:17'),
(1103, 20, '2010-09-08 22:22:37'),
(1104, 20, '2010-09-08 22:22:39'),
(1105, 20, '2010-09-08 22:22:41'),
(1106, 20, '2010-09-08 22:22:43'),
(1107, 20, '2010-09-08 22:22:53'),
(1108, 20, '2010-09-08 22:22:59'),
(1109, 20, '2010-09-08 22:23:01'),
(1110, 22, '2010-09-10 10:01:56'),
(1111, 22, '2010-09-10 10:02:02'),
(1112, 23, '2010-09-25 18:38:18'),
(1113, 23, '2010-09-25 18:38:20'),
(1114, 23, '2010-09-25 18:46:44'),
(1115, 23, '2010-09-25 18:46:45'),
(1116, 23, '2010-09-25 18:46:47'),
(1117, 23, '2010-09-25 18:46:49'),
(1118, 23, '2010-09-25 18:46:52'),
(1119, 23, '2010-09-25 18:46:53'),
(1120, 23, '2010-09-25 18:47:00'),
(1121, 23, '2010-09-25 18:47:01'),
(1122, 23, '2010-09-25 18:47:05'),
(1123, 23, '2010-09-25 18:47:06'),
(1124, 23, '2010-09-25 18:47:08'),
(1125, 23, '2010-09-25 18:47:10'),
(1126, 23, '2010-09-25 18:47:12'),
(1127, 23, '2010-09-25 18:47:13'),
(1128, 23, '2010-09-25 18:47:17'),
(1129, 23, '2010-09-25 19:01:40'),
(1130, 23, '2010-09-25 19:02:30'),
(1131, 23, '2010-09-25 19:03:45'),
(1132, 23, '2010-09-25 19:04:05'),
(1133, 23, '2010-09-25 19:04:07'),
(1134, 23, '2010-09-25 19:11:26'),
(1135, 24, '2010-09-25 19:26:12'),
(1136, 24, '2010-09-25 19:26:27'),
(1137, 23, '2010-09-25 19:35:17'),
(1138, 23, '2010-09-25 19:35:20'),
(1139, 23, '2010-09-25 20:29:42'),
(1140, 23, '2010-09-25 20:30:12'),
(1141, 23, '2010-09-25 20:31:20'),
(1142, 23, '2010-09-25 20:31:22'),
(1143, 23, '2010-09-25 20:31:35'),
(1144, 23, '2010-09-25 20:31:37'),
(1145, 23, '2010-09-25 20:31:39'),
(1146, 23, '2010-09-25 20:32:41'),
(1147, 23, '2010-09-25 20:32:43'),
(1148, 25, '2010-09-25 21:49:45'),
(1149, 25, '2010-09-25 21:49:51'),
(1150, 25, '2010-09-25 21:56:34'),
(1151, 25, '2010-09-25 21:56:36'),
(1152, 25, '2010-09-25 21:57:57'),
(1153, 25, '2010-09-25 21:57:59'),
(1154, 25, '2010-09-25 21:58:08'),
(1155, 25, '2010-09-25 21:58:10'),
(1156, 25, '2010-09-25 21:58:18'),
(1157, 25, '2010-09-25 21:58:22'),
(1158, 25, '2010-09-25 21:59:19'),
(1159, 25, '2010-09-25 21:59:21'),
(1160, 25, '2010-09-25 21:59:32'),
(1161, 25, '2010-09-25 21:59:36'),
(1162, 25, '2010-09-25 22:13:40'),
(1163, 25, '2010-09-25 22:13:43'),
(1164, 25, '2010-09-25 22:14:02'),
(1165, 25, '2010-09-25 22:14:05'),
(1166, 25, '2010-09-25 22:14:14'),
(1167, 25, '2010-09-25 22:14:16'),
(1168, 25, '2010-09-25 22:14:27'),
(1169, 25, '2010-09-25 22:14:29'),
(1170, 25, '2010-09-25 22:15:11'),
(1171, 25, '2010-09-25 22:15:13'),
(1172, 25, '2010-09-25 22:15:17'),
(1173, 25, '2010-09-25 22:15:19'),
(1174, 25, '2010-09-25 22:15:21'),
(1175, 25, '2010-09-25 22:15:23'),
(1176, 25, '2010-09-25 22:15:53'),
(1177, 25, '2010-09-25 22:15:55'),
(1178, 25, '2010-09-25 22:18:25'),
(1179, 25, '2010-09-25 22:18:27'),
(1180, 25, '2010-09-25 22:18:33'),
(1181, 25, '2010-09-25 22:18:35'),
(1182, 25, '2010-09-25 22:18:59'),
(1183, 25, '2010-09-25 22:19:01'),
(1184, 25, '2010-09-25 22:19:30'),
(1185, 25, '2010-09-25 22:19:32'),
(1186, 25, '2010-09-25 22:25:14'),
(1187, 25, '2010-09-25 22:25:18'),
(1188, 25, '2010-09-25 22:28:17'),
(1189, 25, '2010-09-25 22:28:20'),
(1190, 25, '2010-09-25 22:36:59'),
(1191, 25, '2010-09-25 22:37:01'),
(1192, 25, '2010-09-25 22:38:18'),
(1193, 25, '2010-09-25 22:38:20'),
(1194, 25, '2010-09-25 22:39:30'),
(1195, 25, '2010-09-25 22:39:32'),
(1196, 25, '2010-09-25 22:40:00'),
(1197, 25, '2010-09-25 22:40:02'),
(1198, 25, '2010-09-25 22:40:12'),
(1199, 25, '2010-09-25 22:40:15'),
(1200, 25, '2010-09-25 22:40:25'),
(1201, 25, '2010-09-25 22:40:28'),
(1202, 25, '2010-09-25 22:48:27'),
(1203, 25, '2010-09-25 22:48:29'),
(1204, 26, '2010-09-26 08:23:42'),
(1205, 26, '2010-09-26 08:23:49'),
(1206, 26, '2010-09-26 08:24:07'),
(1207, 26, '2010-09-26 08:24:09'),
(1208, 26, '2010-09-26 09:07:51'),
(1209, 26, '2010-09-26 09:07:53'),
(1210, 27, '2010-09-27 23:30:03'),
(1211, 27, '2010-09-27 23:30:08'),
(1212, 27, '2010-09-27 23:30:46'),
(1213, 27, '2010-09-27 23:30:48'),
(1214, 27, '2010-09-27 23:31:02'),
(1215, 27, '2010-09-27 23:31:04'),
(1216, 27, '2010-09-27 23:31:23'),
(1217, 27, '2010-09-27 23:31:24'),
(1218, 27, '2010-09-27 23:31:59'),
(1219, 27, '2010-09-27 23:32:01'),
(1220, 28, '2010-10-03 08:19:49'),
(1221, 28, '2010-10-03 08:19:56'),
(1222, 28, '2010-10-03 08:25:20'),
(1223, 28, '2010-10-03 08:25:26'),
(1224, 28, '2010-10-03 08:25:28'),
(1225, 28, '2010-10-03 08:25:32'),
(1226, 28, '2010-10-03 08:25:42'),
(1227, 28, '2010-10-03 08:25:48'),
(1228, 28, '2010-10-03 09:14:37'),
(1229, 28, '2010-10-03 09:14:38'),
(1230, 28, '2010-10-03 09:15:00'),
(1231, 28, '2010-10-03 09:15:03'),
(1232, 28, '2010-10-03 09:16:56'),
(1233, 28, '2010-10-03 09:16:58'),
(1234, 28, '2010-10-03 09:18:05'),
(1235, 28, '2010-10-03 09:18:08'),
(1236, 28, '2010-10-03 09:18:09'),
(1237, 28, '2010-10-03 09:19:39'),
(1238, 28, '2010-10-03 09:19:41'),
(1239, 28, '2010-10-03 09:19:42'),
(1240, 29, '2010-10-03 11:54:48'),
(1241, 29, '2010-10-03 11:54:49'),
(1242, 29, '2010-10-03 12:01:54'),
(1243, 29, '2010-10-03 12:01:56'),
(1244, 29, '2010-10-03 12:02:04'),
(1245, 29, '2010-10-03 12:02:15'),
(1246, 29, '2010-10-03 12:02:17'),
(1247, 29, '2010-10-03 12:05:38'),
(1248, 29, '2010-10-03 12:05:40'),
(1249, 29, '2010-10-03 12:12:03'),
(1250, 29, '2010-10-03 12:12:06'),
(1251, 30, '2010-10-03 13:31:51'),
(1252, 30, '2010-10-03 13:31:53'),
(1253, 30, '2010-10-03 13:31:58'),
(1254, 30, '2010-10-03 13:32:01'),
(1255, 30, '2010-10-03 13:36:30'),
(1256, 30, '2010-10-03 13:36:32'),
(1257, 30, '2010-10-03 13:55:56'),
(1258, 30, '2010-10-03 13:55:59'),
(1259, 30, '2010-10-03 13:59:11'),
(1260, 30, '2010-10-03 13:59:13'),
(1261, 30, '2010-10-03 13:59:21'),
(1262, 30, '2010-10-03 13:59:23'),
(1263, 30, '2010-10-03 13:59:28'),
(1264, 30, '2010-10-03 13:59:29'),
(1265, 30, '2010-10-03 14:00:28'),
(1266, 30, '2010-10-03 14:00:32'),
(1267, 30, '2010-10-03 14:01:51'),
(1268, 30, '2010-10-03 14:01:53'),
(1269, 30, '2010-10-03 14:02:28'),
(1270, 30, '2010-10-03 14:02:30'),
(1271, 30, '2010-10-03 14:03:08'),
(1272, 30, '2010-10-03 14:03:10'),
(1273, 30, '2010-10-03 14:55:36'),
(1274, 30, '2010-10-03 14:55:40'),
(1275, 30, '2010-10-03 14:56:30'),
(1276, 30, '2010-10-03 14:56:32'),
(1277, 31, '2010-10-03 16:50:10'),
(1278, 31, '2010-10-03 16:50:12'),
(1279, 31, '2010-10-03 17:27:55'),
(1280, 31, '2010-10-03 17:27:58'),
(1281, 31, '2010-10-03 17:28:54'),
(1282, 31, '2010-10-03 17:28:56'),
(1283, 31, '2010-10-03 17:29:39'),
(1284, 31, '2010-10-03 17:29:41'),
(1285, 31, '2010-10-03 17:30:42'),
(1286, 31, '2010-10-03 17:30:46'),
(1287, 31, '2010-10-03 17:31:14'),
(1288, 31, '2010-10-03 17:31:16'),
(1289, 31, '2010-10-03 17:31:38'),
(1290, 31, '2010-10-03 17:31:40'),
(1291, 31, '2010-10-03 17:33:08'),
(1292, 31, '2010-10-03 17:33:10'),
(1293, 31, '2010-10-03 17:36:28'),
(1294, 31, '2010-10-03 17:36:30'),
(1295, 31, '2010-10-03 17:36:48'),
(1296, 31, '2010-10-03 17:36:50'),
(1297, 31, '2010-10-03 17:37:23'),
(1298, 31, '2010-10-03 17:37:25'),
(1299, 31, '2010-10-03 17:55:51'),
(1300, 31, '2010-10-03 17:56:40'),
(1301, 31, '2010-10-03 17:56:42'),
(1302, 31, '2010-10-03 17:56:49'),
(1303, 31, '2010-10-03 18:02:46'),
(1304, 31, '2010-10-03 18:11:06'),
(1305, 31, '2010-10-03 18:11:10'),
(1306, 32, '2010-10-03 21:34:34'),
(1307, 32, '2010-10-03 21:34:38'),
(1308, 32, '2010-10-03 21:37:07'),
(1309, 32, '2010-10-03 21:37:13'),
(1310, 32, '2010-10-03 21:37:24'),
(1311, 32, '2010-10-03 21:38:13'),
(1312, 32, '2010-10-03 21:38:16'),
(1313, 32, '2010-10-03 21:39:29'),
(1314, 32, '2010-10-03 21:39:32'),
(1315, 32, '2010-10-03 21:42:16'),
(1316, 32, '2010-10-03 21:42:19'),
(1317, 32, '2010-10-03 21:42:50'),
(1318, 32, '2010-10-03 21:42:53'),
(1319, 32, '2010-10-03 21:45:19'),
(1320, 32, '2010-10-03 21:45:21'),
(1321, 32, '2010-10-03 21:45:38'),
(1322, 32, '2010-10-03 21:45:43'),
(1323, 32, '2010-10-03 21:46:43'),
(1324, 32, '2010-10-03 21:46:47'),
(1325, 32, '2010-10-03 21:47:31'),
(1326, 32, '2010-10-03 21:47:34'),
(1327, 33, '2010-10-04 19:17:06'),
(1328, 34, '2010-10-04 19:17:06'),
(1329, 34, '2010-10-04 19:17:12'),
(1330, 34, '2010-10-04 19:17:14'),
(1331, 34, '2010-10-04 19:54:56'),
(1332, 34, '2010-10-04 19:54:58'),
(1333, 34, '2010-10-04 19:55:39'),
(1334, 34, '2010-10-04 19:55:41'),
(1335, 34, '2010-10-04 19:56:18'),
(1336, 34, '2010-10-04 19:56:20'),
(1337, 34, '2010-10-04 19:57:08'),
(1338, 34, '2010-10-04 19:57:10'),
(1339, 34, '2010-10-04 19:59:08'),
(1340, 34, '2010-10-04 19:59:09'),
(1341, 34, '2010-10-04 19:59:55'),
(1342, 34, '2010-10-04 19:59:57'),
(1343, 34, '2010-10-04 20:00:18'),
(1344, 34, '2010-10-04 20:00:20'),
(1345, 34, '2010-10-04 20:10:54'),
(1346, 34, '2010-10-04 20:10:57'),
(1347, 34, '2010-10-04 20:10:58'),
(1348, 34, '2010-10-04 20:13:47'),
(1349, 34, '2010-10-04 20:13:49'),
(1350, 34, '2010-10-04 20:13:50'),
(1351, 34, '2010-10-04 20:16:27'),
(1352, 34, '2010-10-04 20:16:29'),
(1353, 34, '2010-10-04 20:19:55'),
(1354, 34, '2010-10-04 20:19:56'),
(1355, 34, '2010-10-04 20:19:58'),
(1356, 34, '2010-10-04 20:20:01'),
(1357, 34, '2010-10-04 20:20:03'),
(1358, 34, '2010-10-04 20:20:05'),
(1359, 34, '2010-10-04 20:21:51'),
(1360, 34, '2010-10-04 20:21:53'),
(1361, 34, '2010-10-04 20:24:46'),
(1362, 34, '2010-10-04 20:24:49'),
(1363, 34, '2010-10-04 20:25:04'),
(1364, 34, '2010-10-04 20:25:06'),
(1365, 34, '2010-10-04 20:26:01'),
(1366, 34, '2010-10-04 20:28:59'),
(1367, 34, '2010-10-04 20:29:01'),
(1368, 34, '2010-10-04 20:29:09'),
(1369, 34, '2010-10-04 20:29:11'),
(1370, 34, '2010-10-04 20:29:12'),
(1371, 34, '2010-10-04 20:29:14'),
(1372, 34, '2010-10-04 20:29:14'),
(1373, 34, '2010-10-04 20:30:54'),
(1374, 34, '2010-10-04 20:30:55'),
(1375, 34, '2010-10-04 20:31:03'),
(1376, 34, '2010-10-04 20:31:05'),
(1377, 34, '2010-10-04 20:37:42'),
(1378, 34, '2010-10-04 20:37:44'),
(1379, 34, '2010-10-04 20:38:24'),
(1380, 34, '2010-10-04 20:38:26'),
(1381, 34, '2010-10-04 20:39:21'),
(1382, 34, '2010-10-04 20:39:23'),
(1383, 34, '2010-10-04 20:40:17'),
(1384, 34, '2010-10-04 20:40:19'),
(1385, 34, '2010-10-04 20:40:21'),
(1386, 34, '2010-10-04 20:40:27'),
(1387, 34, '2010-10-04 20:40:29'),
(1388, 34, '2010-10-04 20:40:30'),
(1389, 34, '2010-10-04 20:40:36'),
(1390, 34, '2010-10-04 20:40:38'),
(1391, 34, '2010-10-04 20:42:30'),
(1392, 34, '2010-10-04 20:42:33'),
(1393, 34, '2010-10-04 20:42:37'),
(1394, 34, '2010-10-04 20:42:37'),
(1395, 34, '2010-10-04 20:42:43'),
(1396, 34, '2010-10-04 20:43:55'),
(1397, 34, '2010-10-04 20:43:58'),
(1398, 34, '2010-10-04 20:44:51'),
(1399, 34, '2010-10-04 20:44:53'),
(1400, 34, '2010-10-04 20:45:39'),
(1401, 34, '2010-10-04 20:45:41'),
(1402, 34, '2010-10-04 20:48:01'),
(1403, 34, '2010-10-04 20:48:04'),
(1404, 35, '2010-10-05 23:03:18'),
(1405, 35, '2010-10-05 23:03:20'),
(1406, 35, '2010-10-05 23:03:21'),
(1407, 35, '2010-10-05 23:03:24'),
(1408, 36, '2010-10-06 18:37:34'),
(1409, 36, '2010-10-06 18:37:37'),
(1410, 36, '2010-10-06 18:37:44'),
(1411, 36, '2010-10-06 18:37:46'),
(1412, 36, '2010-10-06 18:38:01'),
(1413, 36, '2010-10-06 18:38:03'),
(1414, 36, '2010-10-06 18:38:09'),
(1415, 36, '2010-10-06 18:38:11'),
(1416, 36, '2010-10-06 18:38:15'),
(1417, 36, '2010-10-06 18:38:18'),
(1418, 36, '2010-10-06 18:38:42'),
(1419, 36, '2010-10-06 18:41:45'),
(1420, 36, '2010-10-06 18:41:48'),
(1421, 36, '2010-10-06 18:42:15'),
(1422, 36, '2010-10-06 18:42:17'),
(1423, 36, '2010-10-06 18:42:26'),
(1424, 36, '2010-10-06 18:42:28'),
(1425, 36, '2010-10-06 18:45:04'),
(1426, 36, '2010-10-06 18:45:06'),
(1427, 36, '2010-10-06 18:45:13'),
(1428, 36, '2010-10-06 18:45:15'),
(1429, 36, '2010-10-06 18:45:18'),
(1430, 36, '2010-10-06 18:45:19'),
(1431, 36, '2010-10-06 18:45:46'),
(1432, 36, '2010-10-06 18:45:48'),
(1433, 36, '2010-10-06 18:46:06'),
(1434, 36, '2010-10-06 18:46:07'),
(1435, 36, '2010-10-06 18:50:46'),
(1436, 36, '2010-10-06 18:50:47'),
(1437, 36, '2010-10-06 19:32:19'),
(1438, 36, '2010-10-06 19:32:21'),
(1439, 36, '2010-10-06 19:32:24'),
(1440, 36, '2010-10-06 19:32:26'),
(1441, 36, '2010-10-06 19:32:28'),
(1442, 36, '2010-10-06 19:32:30'),
(1443, 36, '2010-10-06 19:32:33'),
(1444, 36, '2010-10-06 19:32:35'),
(1445, 36, '2010-10-06 19:32:37'),
(1446, 36, '2010-10-06 19:32:39'),
(1447, 37, '2010-10-07 15:54:41'),
(1448, 37, '2010-10-07 15:54:45'),
(1449, 37, '2010-10-07 15:56:25'),
(1450, 37, '2010-10-07 15:56:29'),
(1451, 38, '2010-10-17 17:51:17'),
(1452, 38, '2010-10-17 17:51:20'),
(1453, 38, '2010-10-17 17:51:30'),
(1454, 38, '2010-10-17 17:51:37'),
(1455, 38, '2010-10-17 17:51:39'),
(1456, 38, '2010-10-17 17:52:06'),
(1457, 38, '2010-10-17 17:52:08'),
(1458, 38, '2010-10-17 17:52:14'),
(1459, 38, '2010-10-17 17:52:17'),
(1460, 38, '2010-10-17 17:56:37'),
(1461, 38, '2010-10-17 17:56:39'),
(1462, 39, '2010-10-17 18:00:04'),
(1463, 39, '2010-10-17 18:00:15'),
(1464, 39, '2010-10-17 18:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `log_url_info`
--

DROP TABLE IF EXISTS `log_url_info`;
CREATE TABLE IF NOT EXISTS `log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Detale information about url visit' AUTO_INCREMENT=1465 ;

--
-- Dumping data for table `log_url_info`
--

INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(1, 'http://127.0.0.1/magento_crystal/index.php/', 'http://127.0.0.1/magento_crystal/index.php/install/wizard/end/'),
(2, 'http://127.0.0.1/magento_crystal/index.php/', 'http://127.0.0.1/magento_crystal/index.php/install/wizard/end/'),
(3, 'http://127.0.0.1/magento_crystal/', ''),
(4, 'http://127.0.0.1/magento_crystal/', ''),
(5, 'http://127.0.0.1/magento_crystal/', ''),
(6, 'http://127.0.0.1/magento_crystal/', ''),
(7, 'http://127.0.0.1/magento_crystal/customer/account/login/', 'http://127.0.0.1/magento_crystal/'),
(8, 'http://127.0.0.1/magento_crystal/', ''),
(9, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/'),
(10, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/'),
(11, 'http://127.0.0.1/magento_crystal/', ''),
(12, 'http://127.0.0.1/magento_crystal/', ''),
(13, 'http://127.0.0.1/magento_crystal/', ''),
(14, 'http://127.0.0.1/magento_crystal/', ''),
(15, 'http://127.0.0.1/magento_crystal/', ''),
(16, 'http://127.0.0.1/magento_crystal/', ''),
(17, 'http://127.0.0.1/magento_crystal/', ''),
(18, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(19, 'http://127.0.0.1/magento_crystal/', ''),
(20, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(21, 'http://127.0.0.1/magento_crystal/', ''),
(22, 'http://127.0.0.1/magento_crystal/', ''),
(23, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(24, 'http://127.0.0.1/magento_crystal/', ''),
(25, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(26, 'http://127.0.0.1/magento_crystal/', ''),
(27, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(28, 'http://127.0.0.1/magento_crystal/', ''),
(29, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(30, 'http://127.0.0.1/magento_crystal/', ''),
(31, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(32, 'http://127.0.0.1/magento_crystal/', ''),
(33, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(34, 'http://127.0.0.1/magento_crystal/', ''),
(35, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(36, 'http://127.0.0.1/magento_crystal/', ''),
(37, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(38, 'http://127.0.0.1/magento_crystal/', ''),
(39, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(40, 'http://127.0.0.1/magento_crystal/', ''),
(41, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(42, 'http://127.0.0.1/magento_crystal/', ''),
(43, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(44, 'http://127.0.0.1/magento_crystal/', ''),
(45, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(46, 'http://127.0.0.1/magento_crystal/', ''),
(47, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(48, 'http://127.0.0.1/magento_crystal/', ''),
(49, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(50, 'http://127.0.0.1/magento_crystal/', ''),
(51, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(52, 'http://127.0.0.1/magento_crystal/', ''),
(53, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(54, 'http://127.0.0.1/magento_crystal/', ''),
(55, 'http://127.0.0.1/magento_crystal/', ''),
(56, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(57, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(58, 'http://127.0.0.1/magento_crystal/img/logo.gif', 'http://127.0.0.1/magento_crystal/'),
(59, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(60, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(61, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(62, 'http://127.0.0.1/magento_crystal/', ''),
(63, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(64, 'http://127.0.0.1/magento_crystal/img/logo.gif', 'http://127.0.0.1/magento_crystal/'),
(65, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(66, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(67, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(68, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(69, 'http://127.0.0.1/magento_crystal/', ''),
(70, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(71, 'http://127.0.0.1/magento_crystal/', ''),
(72, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(73, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(74, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(75, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(76, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(77, 'http://127.0.0.1/magento_crystal/', ''),
(78, 'http://127.0.0.1/magento_crystal/img/logo.gif', 'http://127.0.0.1/magento_crystal/'),
(79, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(80, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(81, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(82, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(83, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(84, 'http://127.0.0.1/magento_crystal/img/logo.gif', 'http://127.0.0.1/magento_crystal/'),
(85, 'http://127.0.0.1/magento_crystal/', ''),
(86, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(87, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(88, 'http://127.0.0.1/magento_crystal/img/logo.gif', 'http://127.0.0.1/magento_crystal/'),
(89, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(90, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(91, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(92, 'http://127.0.0.1/magento_crystal/', ''),
(93, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(94, 'http://127.0.0.1/magento_crystal/img/logo.gif', 'http://127.0.0.1/magento_crystal/'),
(95, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(96, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(97, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(98, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(99, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(100, 'http://127.0.0.1/magento_crystal/', ''),
(101, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(102, 'http://127.0.0.1/magento_crystal/img/logo.gif', 'http://127.0.0.1/magento_crystal/'),
(103, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(104, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(105, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(106, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(107, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(108, 'http://127.0.0.1/magento_crystal/', ''),
(109, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(110, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(111, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(112, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(113, 'http://127.0.0.1/magento_crystal/', ''),
(114, 'http://127.0.0.1/magento_crystal/', ''),
(115, 'http://127.0.0.1/magento_crystal/', ''),
(116, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(117, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(118, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(119, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(120, 'http://127.0.0.1/magento_crystal/', ''),
(121, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(122, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(123, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(124, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(125, 'http://127.0.0.1/magento_crystal/', ''),
(126, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(127, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(128, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(129, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(130, 'http://127.0.0.1/magento_crystal/', ''),
(131, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(132, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(133, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(134, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(135, 'http://127.0.0.1/magento_crystal/', ''),
(136, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(137, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(138, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(139, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(140, 'http://127.0.0.1/magento_crystal/', ''),
(141, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(142, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(143, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(144, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(145, 'http://127.0.0.1/magento_crystal/', ''),
(146, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(147, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(148, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(149, 'http://127.0.0.1/magento_crystal/img/logo.gif', 'http://127.0.0.1/magento_crystal/'),
(150, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(151, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(152, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(153, 'http://127.0.0.1/magento_crystal/', ''),
(154, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(155, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(156, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(157, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(158, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(159, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(160, 'http://127.0.0.1/magento_crystal/', ''),
(161, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(162, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(163, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(164, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(165, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(166, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(167, 'http://127.0.0.1/magento_crystal/', ''),
(168, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(169, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(170, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(171, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(172, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(173, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(174, 'http://127.0.0.1/magento_crystal/', ''),
(175, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(176, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(177, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(178, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(179, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(180, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(181, 'http://127.0.0.1/magento_crystal/', ''),
(182, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(183, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(184, 'http://127.0.0.1/magento_crystal/img/slogan.gif', 'http://127.0.0.1/magento_crystal/'),
(185, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(186, 'http://127.0.0.1/magento_crystal/img/bowl.gif', 'http://127.0.0.1/magento_crystal/'),
(187, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(188, 'http://127.0.0.1/magento_crystal/', ''),
(189, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(190, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(191, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(192, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(193, 'http://127.0.0.1/magento_crystal/', ''),
(194, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(195, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(196, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(197, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(198, 'http://127.0.0.1/magento_crystal/', ''),
(199, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(200, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(201, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(202, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(203, 'http://127.0.0.1/magento_crystal/', ''),
(204, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(205, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(206, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(207, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(208, 'http://127.0.0.1/magento_crystal/', ''),
(209, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(210, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(211, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(212, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(213, 'http://127.0.0.1/magento_crystal/', ''),
(214, 'http://127.0.0.1/magento_crystal/', ''),
(215, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(216, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(217, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(218, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(219, 'http://127.0.0.1/magento_crystal/', ''),
(220, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(221, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(222, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(223, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(224, 'http://127.0.0.1/magento_crystal/', ''),
(225, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(226, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(227, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(228, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(229, 'http://127.0.0.1/magento_crystal/', ''),
(230, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(231, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(232, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(233, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(234, 'http://127.0.0.1/magento_crystal/checkout/', 'http://127.0.0.1/magento_crystal/'),
(235, 'http://127.0.0.1/magento_crystal/checkout/onepage/', 'http://127.0.0.1/magento_crystal/'),
(236, 'http://127.0.0.1/magento_crystal/checkout/cart/', 'http://127.0.0.1/magento_crystal/'),
(237, 'http://127.0.0.1/magento_crystal/checkout/cart/index.css', 'http://127.0.0.1/magento_crystal/checkout/cart/'),
(238, 'http://127.0.0.1/magento_crystal/', ''),
(239, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(240, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(241, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(242, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(243, 'http://127.0.0.1/magento_crystal/', ''),
(244, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(245, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(246, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(247, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(248, 'http://127.0.0.1/magento_crystal/', ''),
(249, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(250, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(251, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(252, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(253, 'http://127.0.0.1/magento_crystal/', ''),
(254, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(255, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(256, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(257, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(258, 'http://127.0.0.1/magento_crystal/', ''),
(259, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(260, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(261, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(262, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(263, 'http://127.0.0.1/magento_crystal/', ''),
(264, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(265, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(266, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(267, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(268, 'http://127.0.0.1/magento_crystal/', ''),
(269, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(270, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(271, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(272, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(273, 'http://127.0.0.1/magento_crystal/', ''),
(274, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(275, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(276, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(277, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(278, 'http://127.0.0.1/magento_crystal/', ''),
(279, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(280, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(281, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(282, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(283, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default', 'http://127.0.0.1/magento_crystal/'),
(284, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default', 'http://127.0.0.1/magento_crystal/'),
(285, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default'),
(286, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default'),
(287, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default'),
(288, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(289, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default'),
(290, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(291, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(292, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(293, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(294, 'http://127.0.0.1/magento_crystal/?', ''),
(295, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?'),
(296, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?'),
(297, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?'),
(298, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(299, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?'),
(300, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(301, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(302, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(303, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(304, 'http://127.0.0.1/magento_crystal/customer/account/login/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(305, 'http://127.0.0.1/magento_crystal/customer/account/login/index.css', 'http://127.0.0.1/magento_crystal/customer/account/login/'),
(306, 'http://127.0.0.1/magento_crystal/customer/account/login/', 'http://127.0.0.1/magento_crystal/customer/account/login/'),
(307, 'http://127.0.0.1/magento_crystal/customer/account/login/index.css', 'http://127.0.0.1/magento_crystal/customer/account/login/'),
(308, 'http://127.0.0.1/magento_crystal/customer/account/login/', 'http://127.0.0.1/magento_crystal/customer/account/login/'),
(309, 'http://127.0.0.1/magento_crystal/customer/account/login/index.css', 'http://127.0.0.1/magento_crystal/customer/account/login/'),
(310, 'http://127.0.0.1/magento_crystal/', ''),
(311, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(312, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(313, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(314, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(315, 'http://127.0.0.1/magento_crystal/', ''),
(316, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(317, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(318, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(319, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(320, 'http://127.0.0.1/magento_crystal/', ''),
(321, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(322, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(323, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(324, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(325, 'http://127.0.0.1/magento_crystal/', ''),
(326, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(327, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(328, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(329, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(330, 'http://127.0.0.1/magento_crystal/', ''),
(331, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(332, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(333, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(334, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(335, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/'),
(336, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(337, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(338, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(339, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(340, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(341, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(342, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(343, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(344, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(345, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(346, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(347, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(348, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(349, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(350, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(351, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(352, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(353, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(354, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(355, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(356, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(357, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(358, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(359, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(360, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(361, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(362, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(363, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(364, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(365, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(366, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(367, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(368, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(369, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(370, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(371, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(372, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(373, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(374, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(375, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(376, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(377, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(378, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(379, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(380, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(381, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(382, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(383, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(384, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(385, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(386, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', ''),
(387, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(388, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(389, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(390, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(391, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(392, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(393, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(394, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(395, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(396, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(397, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(398, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(399, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(400, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(401, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(402, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(403, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(404, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(405, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(406, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(407, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(408, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(409, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(410, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(411, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(412, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(413, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(414, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(415, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(416, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(417, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(418, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(419, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(420, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(421, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(422, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(423, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(424, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(425, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(426, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(427, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(428, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(429, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(430, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(431, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(432, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(433, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(434, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(435, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(436, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(437, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(438, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(439, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(440, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(441, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(442, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ru'),
(443, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(444, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(445, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(446, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(447, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(448, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(449, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(450, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(451, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(452, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(453, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(454, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(455, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(456, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(457, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(458, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(459, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(460, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(461, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(462, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(463, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(464, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(465, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(466, 'http://127.0.0.1/magento_crystal/skin/adminhtml/base/default/images/media/about_us_img.jpg', ''),
(467, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', ''),
(468, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(469, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(470, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(471, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(472, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(473, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(474, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(475, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(476, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(477, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', ''),
(478, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store');
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(479, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(480, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(481, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(482, 'http://127.0.0.1/magento_crystal/skin/adminhtml/base/default/images/media/about_us_img.jpg', ''),
(483, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', ''),
(484, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(485, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(486, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(487, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(488, 'http://127.0.0.1/magento_crystal/customer/account/login/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(489, 'http://127.0.0.1/magento_crystal/customer/account/login/index.css', 'http://127.0.0.1/magento_crystal/customer/account/login/'),
(490, 'http://127.0.0.1/magento_crystal/customer/account/login/', 'http://127.0.0.1/magento_crystal/customer/account/login/'),
(491, 'http://127.0.0.1/magento_crystal/customer/account/login/index.css', 'http://127.0.0.1/magento_crystal/customer/account/login/'),
(492, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', ''),
(493, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(494, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(495, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(496, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(497, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(498, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(499, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(500, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(501, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(502, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(503, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(504, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(505, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(506, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(507, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(508, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(509, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(510, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(511, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(512, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(513, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(514, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(515, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(516, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(517, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(518, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(519, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(520, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(521, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(522, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(523, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(524, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(525, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(526, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(527, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(528, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(529, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(530, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(531, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(532, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(533, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(534, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(535, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(536, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(537, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(538, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(539, 'http://127.0.0.1/magento_crystal/skin/adminhtml/base/default/images/media/about_us_img.jpg', ''),
(540, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(541, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(542, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(543, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(544, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(545, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(546, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(547, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(548, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(549, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(550, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(551, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(552, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(553, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(554, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(555, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(556, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(557, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(558, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(559, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(560, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(561, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(562, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(563, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(564, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(565, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(566, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(567, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(568, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(569, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(570, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(571, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(572, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(573, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(574, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(575, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(576, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(577, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(578, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(579, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(580, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(581, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(582, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(583, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(584, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(585, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(586, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(587, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(588, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(589, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(590, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(591, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(592, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(593, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(594, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(595, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(596, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(597, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(598, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(599, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(600, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(601, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(602, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(603, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(604, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(605, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(606, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(607, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(608, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(609, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(610, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(611, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(612, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(613, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(614, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(615, 'http://127.0.0.1/magento_crystal/', ''),
(616, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(617, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(618, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(619, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(620, 'http://127.0.0.1/magento_crystal/', ''),
(621, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(622, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(623, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(624, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(625, 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru', 'http://127.0.0.1/magento_crystal/'),
(626, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru'),
(627, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', ''),
(628, 'http://127.0.0.1/magento_crystal/about-magento-demo-store?___store=ua&___from_store=default', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(629, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store?___store=ua&___from_store=default'),
(630, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store?___store=ua&___from_store=default'),
(631, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store?___store=ua&___from_store=default'),
(632, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/about-magento-demo-store?___store=ua&___from_store=default'),
(633, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', ''),
(634, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(635, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(636, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(637, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(638, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', ''),
(639, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(640, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(641, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(642, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', ''),
(643, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(644, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(645, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(646, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru'),
(647, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru'),
(648, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru'),
(649, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru'),
(650, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru'),
(651, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru'),
(652, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru'),
(653, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru'),
(654, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ru'),
(655, 'http://127.0.0.1/magento_crystal/contacts/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(656, 'http://127.0.0.1/magento_crystal/skin/adminhtml/base/default/images/media/about_us_img.jpg', ''),
(657, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', ''),
(658, 'http://127.0.0.1/magento_crystal/', ''),
(659, 'http://127.0.0.1/magento_crystal/contacts/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(660, 'http://127.0.0.1/magento_crystal/', ''),
(661, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default', 'http://127.0.0.1/magento_crystal/'),
(662, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default', 'http://127.0.0.1/magento_crystal/'),
(663, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default', 'http://127.0.0.1/magento_crystal/'),
(664, 'http://127.0.0.1/magento_crystal/', ''),
(665, 'http://127.0.0.1/magento_crystal/', ''),
(666, 'http://127.0.0.1/magento_crystal/', ''),
(667, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(668, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(669, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(670, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/'),
(671, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(672, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(673, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(674, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(675, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(676, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(677, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(678, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(679, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(680, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(681, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(682, 'http://127.0.0.1/magento_crystal/', ''),
(683, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(684, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(685, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(686, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/'),
(687, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(688, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(689, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(690, 'http://127.0.0.1/magento_crystal/', ''),
(691, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(692, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(693, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(694, 'http://127.0.0.1/magento_crystal/', ''),
(695, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(696, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/'),
(697, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(698, 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ua', 'http://127.0.0.1/magento_crystal/'),
(699, 'http://127.0.0.1/magento_crystal/customer/account/login/', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ua'),
(700, 'http://127.0.0.1/magento_crystal/', ''),
(701, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(702, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(703, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(704, 'http://127.0.0.1/magento_crystal/', ''),
(705, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(706, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(707, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(708, 'http://127.0.0.1/magento_crystal/', ''),
(709, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(710, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(711, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(712, 'http://127.0.0.1/magento_crystal/', ''),
(713, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(714, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(715, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(716, 'http://127.0.0.1/magento_crystal/', ''),
(717, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(718, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(719, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(720, 'http://127.0.0.1/magento_crystal/', ''),
(721, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(722, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(723, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(724, 'http://127.0.0.1/magento_crystal/', ''),
(725, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(726, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(727, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(728, 'http://127.0.0.1/magento_crystal/', ''),
(729, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(730, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(731, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(732, 'http://127.0.0.1/magento_crystal/', ''),
(733, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(734, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(735, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(736, 'http://127.0.0.1/magento_crystal/', ''),
(737, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(738, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(739, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(740, 'http://127.0.0.1/magento_crystal/', ''),
(741, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(742, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(743, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(744, 'http://127.0.0.1/magento_crystal/', ''),
(745, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(746, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(747, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(748, 'http://127.0.0.1/magento_crystal/', ''),
(749, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(750, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(751, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(752, 'http://127.0.0.1/magento_crystal/', ''),
(753, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(754, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(755, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(756, 'http://127.0.0.1/magento_crystal/customer/account/login/', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ua'),
(757, 'http://127.0.0.1/magento_crystal/', ''),
(758, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(759, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(760, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(761, 'http://127.0.0.1/magento_crystal/', ''),
(762, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(763, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(764, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(765, 'http://127.0.0.1/magento_crystal/', ''),
(766, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(767, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(768, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(769, 'http://127.0.0.1/magento_crystal/', ''),
(770, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(771, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(772, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(773, 'http://127.0.0.1/magento_crystal/', ''),
(774, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(775, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(776, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(777, 'http://127.0.0.1/magento_crystal/', ''),
(778, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(779, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(780, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(781, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/'),
(782, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(783, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(784, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(785, 'http://127.0.0.1/magento_crystal/', ''),
(786, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(787, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(788, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(789, 'http://127.0.0.1/magento_crystal/', ''),
(790, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(791, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(792, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(793, 'http://127.0.0.1/magento_crystal/customer/account/login/', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ua'),
(794, 'http://127.0.0.1/magento_crystal/', ''),
(795, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(796, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(797, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(798, 'http://127.0.0.1/magento_crystal/', ''),
(799, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(800, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(801, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(802, 'http://127.0.0.1/magento_crystal/', ''),
(803, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(804, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(805, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(806, 'http://127.0.0.1/magento_crystal/', ''),
(807, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(808, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(809, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(810, 'http://127.0.0.1/magento_crystal/', ''),
(811, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(812, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(813, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(814, 'http://127.0.0.1/magento_crystal/', ''),
(815, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(816, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(817, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(818, 'http://127.0.0.1/magento_crystal/', ''),
(819, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(820, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(821, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(822, 'http://127.0.0.1/magento_crystal/', ''),
(823, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(824, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(825, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(826, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/'),
(827, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(828, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(829, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(830, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(831, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(832, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(833, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(834, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(835, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(836, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(837, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(838, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/'),
(839, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(840, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(841, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(842, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(843, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(844, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(845, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(846, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(847, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(848, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(849, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(850, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(851, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(852, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(853, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(854, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(855, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(856, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(857, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(858, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(859, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(860, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(861, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(862, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(863, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(864, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(865, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(866, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(867, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(868, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(869, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(870, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/'),
(871, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(872, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(873, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(874, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(875, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(876, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(877, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(878, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(879, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(880, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(881, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(882, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/'),
(883, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(884, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(885, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(886, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/'),
(887, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(888, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(889, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(890, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/'),
(891, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(892, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(893, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(894, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(895, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(896, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(897, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(898, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(899, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(900, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(901, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(902, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/'),
(903, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(904, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(905, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(906, 'http://127.0.0.1/magento_crystal/skin/adminhtml/base/default/images/media/about_us_img.jpg', ''),
(907, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store');
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(908, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(909, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(910, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(911, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/'),
(912, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-company.html'),
(913, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-company.html'),
(914, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(915, 'http://127.0.0.1/magento_crystal/contacts.html', 'http://127.0.0.1/magento_crystal/about-company.html'),
(916, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/contacts.html'),
(917, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/contacts.html'),
(918, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(919, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/contacts.html'),
(920, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(921, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(922, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(923, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/'),
(924, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-company.html'),
(925, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-company.html'),
(926, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(927, 'http://127.0.0.1/magento_crystal/skin/adminhtml/base/default/images/media/about_us_img.jpg', ''),
(928, 'http://127.0.0.1/magento_crystal/skin/adminhtml/base/default/images/media/about_us_img.jpg', ''),
(929, 'http://127.0.0.1/magento_crystal/about-company.html', ''),
(930, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-company.html'),
(931, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-company.html'),
(932, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(933, 'http://127.0.0.1/magento_crystal/about-company.html', ''),
(934, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-company.html'),
(935, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-company.html'),
(936, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(937, 'http://127.0.0.1/magento_crystal/about-company.html', ''),
(938, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-company.html'),
(939, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(940, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-company.html'),
(941, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-company.html'),
(942, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(943, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(944, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(945, 'http://127.0.0.1/magento_crystal/contacts.html', 'http://127.0.0.1/magento_crystal/'),
(946, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/contacts.html'),
(947, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(948, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/contacts.html'),
(949, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/contacts.html'),
(950, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/'),
(951, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(952, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(953, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/'),
(954, 'http://127.0.0.1/magento_crystal/index.css', 'http://127.0.0.1/magento_crystal/about-company.html'),
(955, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(956, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-company.html'),
(957, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/'),
(958, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(959, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-company.html'),
(960, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/'),
(961, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(962, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-company.html'),
(963, 'http://127.0.0.1/magento_crystal/img/cherry.gif', ''),
(964, 'http://127.0.0.1/magento_crystal/img/cherry.gif', ''),
(965, 'http://127.0.0.1/magento_crystal/img/logo.gif', ''),
(966, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/'),
(967, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(968, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/'),
(969, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(970, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/'),
(971, 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/img/point.gif', 'http://127.0.0.1/magento_crystal/skin/frontend/crystal/default/css/index.css'),
(972, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/'),
(973, 'http://127.0.0.1/magento_crystal/', ''),
(974, 'http://127.0.0.1/magento_crystal/', ''),
(975, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(976, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/'),
(977, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(978, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(979, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(980, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(981, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(982, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(983, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(984, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(985, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(986, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(987, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(988, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(989, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(990, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(991, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(992, 'http://127.0.0.1/magento_crystal/', ''),
(993, 'http://127.0.0.1/magento_crystal/', ''),
(994, 'http://127.0.0.1/magento_crystal/', ''),
(995, 'http://127.0.0.1/magento_crystal/', ''),
(996, 'http://127.0.0.1/magento_crystal/', ''),
(997, 'http://127.0.0.1/magento_crystal/', ''),
(998, 'http://127.0.0.1/magento_crystal/', ''),
(999, 'http://127.0.0.1/magento_crystal/', ''),
(1000, 'http://127.0.0.1/magento_crystal/', ''),
(1001, 'http://127.0.0.1/magento_crystal/', ''),
(1002, 'http://127.0.0.1/magento_crystal/', ''),
(1003, 'http://127.0.0.1/magento_crystal/', ''),
(1004, 'http://127.0.0.1/magento_crystal/', ''),
(1005, 'http://127.0.0.1/magento_crystal/', ''),
(1006, 'http://127.0.0.1/magento_crystal/', ''),
(1007, 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1008, 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1009, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ua'),
(1010, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(1011, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(1012, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(1013, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-magento-demo-store'),
(1014, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/'),
(1015, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/2/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1016, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina1.html'),
(1017, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina1.html'),
(1018, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1019, 'http://127.0.0.1/magento_crystal/', ''),
(1020, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1021, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/'),
(1022, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1023, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1024, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1025, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1026, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1027, 'http://127.0.0.1/magento_crystal/', ''),
(1028, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1029, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1030, 'http://127.0.0.1/magento_crystal/', ''),
(1031, 'http://127.0.0.1/magento_crystal/', ''),
(1032, 'http://127.0.0.1/magento_crystal/', ''),
(1033, 'http://127.0.0.1/magento_crystal/', ''),
(1034, 'http://127.0.0.1/magento_crystal/', ''),
(1035, 'http://127.0.0.1/magento_crystal/', ''),
(1036, 'http://127.0.0.1/magento_crystal/', ''),
(1037, 'http://127.0.0.1/magento_crystal/', ''),
(1038, 'http://127.0.0.1/magento_crystal/', ''),
(1039, 'http://127.0.0.1/magento_crystal/', ''),
(1040, 'http://127.0.0.1/magento_crystal/', ''),
(1041, 'http://127.0.0.1/magento_crystal/', ''),
(1042, 'http://127.0.0.1/magento_crystal/', ''),
(1043, 'http://127.0.0.1/magento_crystal/', ''),
(1044, 'http://127.0.0.1/magento_crystal/', ''),
(1045, 'http://127.0.0.1/magento_crystal/', ''),
(1046, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1047, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1048, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1049, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1050, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1051, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1052, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1053, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1054, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1055, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1056, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1057, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1058, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1059, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1060, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1061, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1062, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1063, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1064, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1065, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1066, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1067, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1068, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1069, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1070, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1071, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1072, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1073, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1074, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1075, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1076, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1077, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1078, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1079, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1080, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1081, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1082, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1083, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1084, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1085, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1086, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/'),
(1087, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1088, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1089, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1090, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1091, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/'),
(1092, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1093, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/'),
(1094, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1095, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1096, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1097, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1098, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1099, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1100, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1101, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1102, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1103, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1104, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1105, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1106, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1107, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/5', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1108, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1109, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1110, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', ''),
(1111, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1112, 'http://127.0.0.1/magento_crystal/', ''),
(1113, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1114, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/'),
(1115, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1116, 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1117, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1118, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/?___store=ru&___from_store=ua'),
(1119, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-company.html'),
(1120, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-company.html'),
(1121, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1122, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'http://127.0.0.1/magento_crystal/'),
(1123, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1124, 'http://127.0.0.1/magento_crystal/about-company.html', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru'),
(1125, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/about-company.html'),
(1126, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/about-company.html'),
(1127, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1128, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1129, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1130, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1131, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1132, 'http://127.0.0.1/magento_crystal/', ''),
(1133, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1134, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1135, 'http://127.0.0.1/magento_crystal/', ''),
(1136, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1137, 'http://127.0.0.1/magento_crystal/', ''),
(1138, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1139, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1140, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1141, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1142, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1143, 'http://127.0.0.1/magento_crystal/', ''),
(1144, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1145, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/'),
(1146, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/'),
(1147, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1148, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1149, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1150, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1151, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1152, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1153, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1154, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1155, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1156, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1157, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1158, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1159, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1160, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1161, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1162, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1163, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1164, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1165, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1166, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1167, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1168, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1169, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1170, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1171, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1172, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1173, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1174, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/5', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1175, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html'),
(1176, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/5', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1177, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html'),
(1178, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1179, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1180, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1181, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1182, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1183, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1184, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1185, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1186, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1187, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1188, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1189, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1190, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1191, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1192, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1193, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1194, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1195, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1196, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', 'http://127.0.0.1/magento_crystal/'),
(1197, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1198, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', ''),
(1199, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1200, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', ''),
(1201, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1202, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', ''),
(1203, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1204, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/3', ''),
(1205, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1206, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html'),
(1207, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1208, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1209, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1210, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1211, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1212, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1213, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1214, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1215, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1216, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1217, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1218, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1219, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1220, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1221, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1222, 'http://127.0.0.1/magento_crystal/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html'),
(1223, 'http://127.0.0.1/magento_crystal/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/'),
(1224, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1225, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/5', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1226, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html'),
(1227, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/items/test.jpg', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html'),
(1228, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/5', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1229, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html'),
(1230, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1231, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1232, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1233, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1234, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1235, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/5', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1236, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1237, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/5', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1238, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1239, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html'),
(1240, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1241, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1242, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1243, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1244, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/3/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1245, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1246, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1247, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1248, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1249, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1250, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1251, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1252, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1253, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1254, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1255, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1256, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1257, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html'),
(1258, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1259, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?mode=list', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1260, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?mode=list'),
(1261, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=list', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?mode=list'),
(1262, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1263, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1264, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1265, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1266, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1267, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1268, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1269, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1270, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1271, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1272, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1273, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1274, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1275, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1276, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1277, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1278, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1279, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1280, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1281, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1282, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1283, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1284, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1285, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1286, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1287, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1288, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1289, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1290, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1291, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1292, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1293, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1294, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1295, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1296, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1297, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1298, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1299, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1300, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4?limit=5&mode=grid', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list'),
(1301, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1302, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1303, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1304, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1305, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/img/cherry.gif', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/'),
(1306, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1307, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/img/cherry.gif', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/'),
(1308, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid'),
(1309, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/img/cherry.gif', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/'),
(1310, 'http://127.0.0.1/magento_crystal/catalog/product/gallery/id/10/image/10/', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/'),
(1311, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-n-d-d-d-d-d-n-noed-d-d-d.html');
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(1312, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1313, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1314, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1315, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1316, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1317, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1318, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1319, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1320, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1321, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1322, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1323, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1324, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1325, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1326, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1327, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/', ''),
(1328, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1329, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/img/cherry.gif', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/'),
(1330, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1331, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1332, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1333, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1334, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1335, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1336, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1337, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1338, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1339, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1340, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1341, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1342, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1343, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/', ''),
(1344, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/img/cherry.gif', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/'),
(1345, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1346, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/items/9853/1_middle.jpg', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1347, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1348, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1349, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/items/9853/1_middle.jpg', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1350, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1351, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1352, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1353, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/'),
(1354, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1355, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/s/kelih-dlja-vina-9/category/4/'),
(1356, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1357, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1358, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1359, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1360, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1361, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1362, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1363, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1364, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1365, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1366, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1367, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1368, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1369, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1370, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1371, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1372, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1373, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1374, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1375, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1376, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1377, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1378, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1379, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1380, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1381, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1382, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1383, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1384, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1385, 'http://127.0.0.1/magento_crystal/media/catalog/product/cache/2/image/56x/9df78eab33525d08d6e5fb8d27136e95/s/w/swiecznik-krysztalowy-la_863.jpg', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1386, 'http://127.0.0.1/magento_crystal/media/catalog/product/cache/2/image/56x/9df78eab33525d08d6e5fb8d27136e95/k/i/kieliszki-do-wina-9853-1_405_8.jpg', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1387, 'http://127.0.0.1/magento_crystal/media/catalog/product/cache/2/image/56x/9df78eab33525d08d6e5fb8d27136e95/k/i/kieliszki-do-wina-9853-1_405_8.jpg', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1388, 'http://127.0.0.1/magento_crystal/media/catalog/product/cache/2/image/56x/9df78eab33525d08d6e5fb8d27136e95/k/i/kieliszki-do-wina-9853-1_405_8.jpg', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1389, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1390, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1391, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1392, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1393, 'http://127.0.0.1/magento_crystal/media/catalog/product/cache/2/image/56x/9df78eab33525d08d6e5fb8d27136e95/s/w/swiecznik-krysztalowy-la_863.jpg', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1394, 'http://127.0.0.1/magento_crystal/media/catalog/product/cache/2/thumbnail/602x/9df78eab33525d08d6e5fb8d27136e95/s/w/swiecznik-krysztalowy-la_863.jpg', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1395, 'http://127.0.0.1/magento_crystal/media/catalog/product/cache/2/thumbnail/602x/9df78eab33525d08d6e5fb8d27136e95/s/w/swiecznik-krysztalowy-la_863.jpg', ''),
(1396, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1397, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1398, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1399, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1400, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1401, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1402, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1403, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1404, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1405, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1406, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', ''),
(1407, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1408, 'http://127.0.0.1/magento_crystal/', ''),
(1409, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1410, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/'),
(1411, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1412, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/2/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1413, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina1.html'),
(1414, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/'),
(1415, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1416, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1417, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1418, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/'),
(1419, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1420, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1421, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/'),
(1422, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1423, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/6/s/kelih-dlja-vina-5/category/4/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1424, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/6/s/kelih-dlja-vina-5/category/4/img/cherry.gif', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/6/s/kelih-dlja-vina-5/category/4/'),
(1425, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/6/s/kelih-dlja-vina-5/category/4/', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1426, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/6/s/kelih-dlja-vina-5/category/4/img/cherry.gif', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/6/s/kelih-dlja-vina-5/category/4/'),
(1427, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/catalog/product/view/id/6/s/kelih-dlja-vina-5/category/4/'),
(1428, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1429, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1430, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1431, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1432, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1433, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1434, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1435, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1436, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1437, 'http://127.0.0.1/magento_crystal/', ''),
(1438, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1439, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/'),
(1440, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1441, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/2/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1442, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina1.html'),
(1443, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/'),
(1444, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1445, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1446, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1447, 'http://127.0.0.1/magento_crystal/catalog/category/view/id/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1448, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1449, 'http://127.0.0.1/magento_crystal/catalog/product/view/id/10/category/4', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html'),
(1450, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/img/cherry.gif', 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html'),
(1451, 'http://127.0.0.1/magento_crystal/', ''),
(1452, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1453, 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ua', 'http://127.0.0.1/magento_crystal/'),
(1454, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ua'),
(1455, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default'),
(1456, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default', 'http://127.0.0.1/magento_crystal/?___store=default&___from_store=ua'),
(1457, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default'),
(1458, 'http://127.0.0.1/magento_crystal/', ''),
(1459, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1460, 'http://127.0.0.1/magento_crystal/', ''),
(1461, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/'),
(1462, 'http://127.0.0.1/magento_crystal/', ''),
(1463, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default', 'http://127.0.0.1/magento_crystal/'),
(1464, 'http://127.0.0.1/magento_crystal/img/cherry.gif', 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=default');

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor`
--

DROP TABLE IF EXISTS `log_visitor`;
CREATE TABLE IF NOT EXISTS `log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` char(64) NOT NULL DEFAULT '',
  `first_visit_at` datetime DEFAULT NULL,
  `last_visit_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='System visitors log' AUTO_INCREMENT=40 ;

--
-- Dumping data for table `log_visitor`
--

INSERT INTO `log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, '86aba37f06feb33fb62eaad29dbe3179', '2010-08-21 14:01:44', '2010-08-21 15:08:12', 10, 1),
(2, 'f4772e3115fed41ae38a79996bb1a314', '2010-08-21 17:46:31', '2010-08-21 18:28:05', 70, 1),
(3, '488d1c7fa76ea412d5c66729a8a5b74c', '2010-08-21 18:23:46', '2010-08-21 18:23:47', 53, 1),
(4, 'ff01aea3505f462e85fd6559b094975a', '2010-08-21 20:37:50', '2010-08-22 00:04:58', 314, 2),
(5, '3f1ff5dae89caf029bfee87d2c09295d', '2010-08-23 17:41:06', '2010-08-23 17:41:31', 319, 2),
(6, '174e9c78991236412d2d52d4f28b94a2', '2010-08-30 18:41:20', '2010-08-30 20:31:26', 569, 3),
(7, '9a8cb5714897736c33b1fb02598fa70d', '2010-08-30 19:48:22', '2010-08-30 19:48:22', 466, 1),
(8, 'a56e9b315fe337452a81946af9e7fb6a', '2010-08-30 19:50:13', '2010-08-30 19:50:14', 482, 1),
(9, 'c0e3e03f58964b9fec987a5a8947b90e', '2010-08-30 20:21:52', '2010-08-30 20:21:52', 539, 1),
(10, '7c5b0f4644d3b56951707832530ba011', '2010-08-30 21:50:41', '2010-08-30 22:39:54', 673, 2),
(11, '0eb67735479b71c1bac828f36dd1bac1', '2010-08-30 22:02:22', '2010-08-30 22:36:05', 658, 2),
(12, '9b798dafc73274bb55892432205c6603', '2010-08-30 22:32:10', '2010-08-30 22:32:10', 656, 1),
(13, 'bd8538fa049241f14651af286b77864b', '2010-08-31 15:44:05', '2010-08-31 16:45:04', 845, 2),
(14, '685e51f991d81a868301a05ee70e4d52', '2010-08-31 15:47:45', '2010-08-31 16:32:25', 793, 1),
(15, 'c9d609fb730721c8c494bd86c5ac7dc5', '2010-08-31 20:05:57', '2010-08-31 21:21:23', 932, 2),
(16, 'e62ccc68ba2f89188ca60f30cac50fc6', '2010-08-31 20:23:33', '2010-08-31 20:23:33', 906, 1),
(17, '309c6c53ce35c3897cdb985c5efbc7ef', '2010-08-31 20:37:19', '2010-08-31 20:37:20', 927, 1),
(18, '75b92cbbb292b6277bf1c522baee30da', '2010-08-31 21:10:46', '2010-08-31 21:10:47', 928, 1),
(19, '077bd956b253dcb0ebd1c595af57281e', '2010-09-03 20:33:24', '2010-09-03 21:16:44', 973, 2),
(20, 'd9f2eb531f08a161c0831cc23ecec782', '2010-09-08 19:10:39', '2010-09-08 22:23:01', 1109, 3),
(21, '4aff1b62a07dfc7d695d1ee417e568cb', '2010-09-08 19:29:41', '2010-09-08 21:20:20', 1045, 1),
(22, 'df73cc2eb4b00e3675a47d2ab9994568', '2010-09-10 10:01:42', '2010-09-10 10:02:02', 1111, 3),
(23, 'c3300505df0578e303681d37b9281634', '2010-09-25 18:38:16', '2010-09-25 20:32:43', 1147, 2),
(24, '9aa7e5553580b879eb85a0230c4502ec', '2010-09-25 19:26:08', '2010-09-25 19:26:27', 1136, 1),
(25, '9231ad84ac1d87f64bba8c69ae2f51c6', '2010-09-25 21:49:42', '2010-09-25 22:48:29', 1203, 2),
(26, 'ec40cbb8f57ed61d85f2ce87254bd5ac', '2010-09-26 08:23:37', '2010-09-26 09:07:53', 1209, 2),
(27, '0cf59434b7436378174f8cf7970bf5c7', '2010-09-27 23:30:01', '2010-09-27 23:32:01', 1219, 2),
(28, 'ae7705ade67ae6d24045449de3ddd54f', '2010-10-03 08:19:43', '2010-10-03 09:19:42', 1239, 2),
(29, '73a2b68c3497a5efa65b2bd2b952a8c4', '2010-10-03 11:54:47', '2010-10-03 12:12:06', 1250, 2),
(30, 'fe9b2ed26ad437c15afe0eade18c6af6', '2010-10-03 13:31:49', '2010-10-03 14:56:32', 1276, 2),
(31, '985591ae0e21b2c050c70181b6154a17', '2010-10-03 16:50:08', '2010-10-03 18:11:10', 1305, 2),
(32, '55f5aec24f238ca95ff636b03296dbeb', '2010-10-03 21:34:29', '2010-10-03 21:47:34', 1326, 2),
(33, 'a5d872a464fce335108f40dc086a65f7', '2010-10-04 19:17:00', '2010-10-04 19:17:06', 1327, 2),
(34, '53dcc029d6e0e9143180cb1dc0c17108', '2010-10-04 19:17:00', '2010-10-04 20:48:04', 1403, 2),
(35, 'a5b9c2e357bf35a8b1df6a6a141922db', '2010-10-05 23:03:17', '2010-10-05 23:03:24', 1407, 2),
(36, '5d7b65ed2971e04c2b31266b46e22a50', '2010-10-06 18:37:30', '2010-10-06 19:32:39', 1446, 2),
(37, '6b0797b201c5ae15f4f0ba55b79d3ab7', '2010-10-07 15:54:40', '2010-10-07 15:56:29', 1450, 2),
(38, '8fca54a3fa777f3bf54f7461df5865e0', '2010-10-17 17:51:15', '2010-10-17 17:56:39', 1461, 2),
(39, 'c78c500e66ebbf971b1ad0f0072ca468', '2010-10-17 18:00:04', '2010-10-17 18:00:17', 1464, 2);

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor_info`
--

DROP TABLE IF EXISTS `log_visitor_info`;
CREATE TABLE IF NOT EXISTS `log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `http_referer` varchar(255) DEFAULT NULL,
  `http_user_agent` varchar(255) DEFAULT NULL,
  `http_accept_charset` varchar(255) DEFAULT NULL,
  `http_accept_language` varchar(255) DEFAULT NULL,
  `server_addr` bigint(20) DEFAULT NULL,
  `remote_addr` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Additional information by visitor';

--
-- Dumping data for table `log_visitor_info`
--

INSERT INTO `log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, 'http://127.0.0.1/magento_crystal/index.php/install/wizard/end/', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(2, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(3, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.127 Safari/533.4', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'en-US,en;q=0.8', 2130706433, 2130706433),
(4, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(5, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(6, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(7, '', '', '', '', 2130706433, 2130706433),
(8, '', '', '', '', 2130706433, 2130706433),
(9, '', '', '', '', 2130706433, 2130706433),
(10, 'http://127.0.0.1/magento_crystal/?___store=ua&___from_store=ru', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(11, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.127 Safari/533.4', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'en-US,en;q=0.8', 2130706433, 2130706433),
(12, '', '', '', '', 2130706433, 2130706433),
(13, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(14, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.127 Safari/533.4', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'en-US,en;q=0.8', 2130706433, 2130706433),
(15, 'http://127.0.0.1/magento_crystal/about-magento-demo-store', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(16, '', '', '', '', 2130706433, 2130706433),
(17, '', '', '', '', 2130706433, 2130706433),
(18, '', '', '', '', 2130706433, 2130706433),
(19, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(20, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(21, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.127 Safari/533.4', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'en-US,en;q=0.8', 2130706433, 2130706433),
(22, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(23, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(24, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.127 Safari/533.4', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'en-US,en;q=0.8', 2130706433, 2130706433),
(25, 'http://127.0.0.1/magento_crystal/', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(26, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(27, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(28, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(29, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(30, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d.html', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(31, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=list', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(32, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d.html?limit=5&mode=grid', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(33, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(34, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(35, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(36, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(37, 'http://127.0.0.1/magento_crystal/dsd-d-d-n-d-d-d-d-d-d-d/dsd-d-d-n-d-d-d-n-d-d-d-d/kelih-dlja-vina-9.html', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(38, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9 GTB7.1', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us,en;q=0.5', 2130706433, 2130706433),
(39, '', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.127 Safari/533.4', 'ISO-8859-1,utf-8;q=0.7,*;q=0.3', 'en-US,en;q=0.8', 2130706433, 2130706433);

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor_online`
--

DROP TABLE IF EXISTS `log_visitor_online`;
CREATE TABLE IF NOT EXISTS `log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_type` char(1) NOT NULL,
  `remote_addr` bigint(20) NOT NULL,
  `first_visit_at` datetime DEFAULT NULL,
  `last_visit_at` datetime DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `last_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_VISIT_TIME` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_CUSTOMER` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `log_visitor_online`
--


-- --------------------------------------------------------

--
-- Table structure for table `newsletter_problem`
--

DROP TABLE IF EXISTS `newsletter_problem`;
CREATE TABLE IF NOT EXISTS `newsletter_problem` (
  `problem_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `subscriber_id` int(7) unsigned DEFAULT NULL,
  `queue_id` int(7) unsigned NOT NULL DEFAULT '0',
  `problem_error_code` int(3) unsigned DEFAULT '0',
  `problem_error_text` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`problem_id`),
  KEY `FK_PROBLEM_SUBSCRIBER` (`subscriber_id`),
  KEY `FK_PROBLEM_QUEUE` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter problems' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `newsletter_problem`
--


-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue`
--

DROP TABLE IF EXISTS `newsletter_queue`;
CREATE TABLE IF NOT EXISTS `newsletter_queue` (
  `queue_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(7) unsigned NOT NULL DEFAULT '0',
  `queue_status` int(3) unsigned NOT NULL DEFAULT '0',
  `queue_start_at` datetime DEFAULT NULL,
  `queue_finish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`queue_id`),
  KEY `FK_QUEUE_TEMPLATE` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter queue' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `newsletter_queue`
--


-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_link`
--

DROP TABLE IF EXISTS `newsletter_queue_link`;
CREATE TABLE IF NOT EXISTS `newsletter_queue_link` (
  `queue_link_id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(7) unsigned NOT NULL DEFAULT '0',
  `subscriber_id` int(7) unsigned NOT NULL DEFAULT '0',
  `letter_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`queue_link_id`),
  KEY `FK_QUEUE_LINK_SUBSCRIBER` (`subscriber_id`),
  KEY `FK_QUEUE_LINK_QUEUE` (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_SEND_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter queue to subscriber link' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `newsletter_queue_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_store_link`
--

DROP TABLE IF EXISTS `newsletter_queue_store_link`;
CREATE TABLE IF NOT EXISTS `newsletter_queue_store_link` (
  `queue_id` int(7) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `FK_NEWSLETTER_QUEUE_STORE_LINK_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletter_queue_store_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

DROP TABLE IF EXISTS `newsletter_subscriber`;
CREATE TABLE IF NOT EXISTS `newsletter_subscriber` (
  `subscriber_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT '0',
  `change_status_at` datetime DEFAULT NULL,
  `customer_id` int(11) unsigned NOT NULL DEFAULT '0',
  `subscriber_email` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `subscriber_status` int(3) NOT NULL DEFAULT '0',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL',
  PRIMARY KEY (`subscriber_id`),
  KEY `FK_SUBSCRIBER_CUSTOMER` (`customer_id`),
  KEY `FK_NEWSLETTER_SUBSCRIBER_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter subscribers' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `newsletter_subscriber`
--


-- --------------------------------------------------------

--
-- Table structure for table `newsletter_template`
--

DROP TABLE IF EXISTS `newsletter_template`;
CREATE TABLE IF NOT EXISTS `newsletter_template` (
  `template_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(150) DEFAULT NULL,
  `template_text` text,
  `template_text_preprocessed` text,
  `template_styles` text,
  `template_type` int(3) unsigned DEFAULT NULL,
  `template_subject` varchar(200) DEFAULT NULL,
  `template_sender_name` varchar(200) DEFAULT NULL,
  `template_sender_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `template_actual` tinyint(1) unsigned DEFAULT '1',
  `added_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_actual` (`template_actual`),
  KEY `added_at` (`added_at`),
  KEY `modified_at` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter templates' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `newsletter_template`
--


-- --------------------------------------------------------

--
-- Table structure for table `paygate_authorizenet_debug`
--

DROP TABLE IF EXISTS `paygate_authorizenet_debug`;
CREATE TABLE IF NOT EXISTS `paygate_authorizenet_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_body` text,
  `response_body` text,
  `request_serialized` text,
  `result_serialized` text,
  `request_dump` text,
  `result_dump` text,
  PRIMARY KEY (`debug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `paygate_authorizenet_debug`
--


-- --------------------------------------------------------

--
-- Table structure for table `paypaluk_api_debug`
--

DROP TABLE IF EXISTS `paypaluk_api_debug`;
CREATE TABLE IF NOT EXISTS `paypaluk_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `paypaluk_api_debug`
--


-- --------------------------------------------------------

--
-- Table structure for table `paypal_api_debug`
--

DROP TABLE IF EXISTS `paypal_api_debug`;
CREATE TABLE IF NOT EXISTS `paypal_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `paypal_api_debug`
--


-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report`
--

DROP TABLE IF EXISTS `paypal_settlement_report`;
CREATE TABLE IF NOT EXISTS `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `report_date` date NOT NULL,
  `account_id` varchar(64) NOT NULL,
  `filename` varchar(24) NOT NULL,
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `UNQ_REPORT_DATE_ACCOUNT` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `paypal_settlement_report`
--


-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report_row`
--

DROP TABLE IF EXISTS `paypal_settlement_report_row`;
CREATE TABLE IF NOT EXISTS `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `report_id` int(10) unsigned NOT NULL,
  `transaction_id` varchar(19) NOT NULL,
  `invoice_id` varchar(127) DEFAULT NULL,
  `paypal_reference_id` varchar(19) NOT NULL,
  `paypal_reference_id_type` enum('ODR','TXN','SUB','PAP','') NOT NULL,
  `transaction_event_code` char(5) NOT NULL DEFAULT '',
  `transaction_initiation_date` datetime DEFAULT NULL,
  `transaction_completion_date` datetime DEFAULT NULL,
  `transaction_debit_or_credit` enum('CR','DR') NOT NULL DEFAULT 'CR',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `gross_transaction_currency` char(3) NOT NULL DEFAULT '',
  `fee_debit_or_credit` enum('CR','DR') NOT NULL,
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `fee_currency` char(3) NOT NULL,
  `custom_field` varchar(255) DEFAULT NULL,
  `consumer_id` varchar(127) NOT NULL DEFAULT '',
  PRIMARY KEY (`row_id`),
  KEY `IDX_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `paypal_settlement_report_row`
--


-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

DROP TABLE IF EXISTS `poll`;
CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_title` varchar(255) NOT NULL DEFAULT '',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned DEFAULT '0',
  `date_posted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_closed` datetime DEFAULT NULL,
  `active` smallint(6) NOT NULL DEFAULT '1',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `answers_display` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`poll_id`),
  KEY `FK_POLL_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
(1, 'What is your favorite color', 5, 1, '2010-08-21 17:00:47', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer`
--

DROP TABLE IF EXISTS `poll_answer`;
CREATE TABLE IF NOT EXISTS `poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0',
  `answer_title` varchar(255) NOT NULL DEFAULT '',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0',
  `answer_order` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`answer_id`),
  KEY `FK_POLL_PARENT` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `poll_answer`
--

INSERT INTO `poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
(1, 1, 'Green', 4, 0),
(2, 1, 'Red', 1, 0),
(3, 1, 'Black', 0, 0),
(4, 1, 'Magenta', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll_store`
--

DROP TABLE IF EXISTS `poll_store`;
CREATE TABLE IF NOT EXISTS `poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `FK_POLL_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poll_store`
--

INSERT INTO `poll_store` (`poll_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `poll_vote`
--

DROP TABLE IF EXISTS `poll_vote`;
CREATE TABLE IF NOT EXISTS `poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` bigint(20) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vote_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`vote_id`),
  KEY `FK_POLL_ANSWER` (`poll_answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `poll_vote`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_alert_price`
--

DROP TABLE IF EXISTS `product_alert_price`;
CREATE TABLE IF NOT EXISTS `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_send_date` datetime DEFAULT NULL,
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`alert_price_id`),
  KEY `FK_PRODUCT_ALERT_PRICE_CUSTOMER` (`customer_id`),
  KEY `FK_PRODUCT_ALERT_PRICE_PRODUCT` (`product_id`),
  KEY `FK_PRODUCT_ALERT_PRICE_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_alert_price`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_alert_stock`
--

DROP TABLE IF EXISTS `product_alert_stock`;
CREATE TABLE IF NOT EXISTS `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `send_date` datetime DEFAULT NULL,
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`alert_stock_id`),
  KEY `FK_PRODUCT_ALERT_STOCK_CUSTOMER` (`customer_id`),
  KEY `FK_PRODUCT_ALERT_STOCK_PRODUCT` (`product_id`),
  KEY `FK_PRODUCT_ALERT_STOCK_WEBSITE` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_alert_stock`
--


-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rating_code` varchar(64) NOT NULL DEFAULT '',
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `IDX_CODE` (`rating_code`),
  KEY `FK_RATING_ENTITY` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='ratings' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
(1, 1, 'Quality', 0),
(2, 1, 'Value', 0),
(3, 1, 'Price', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rating_entity`
--

DROP TABLE IF EXISTS `rating_entity`;
CREATE TABLE IF NOT EXISTS `rating_entity` (
  `entity_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `entity_code` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `IDX_CODE` (`entity_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating entities' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rating_entity`
--

INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Table structure for table `rating_option`
--

DROP TABLE IF EXISTS `rating_option`;
CREATE TABLE IF NOT EXISTS `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rating_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL DEFAULT '',
  `value` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`),
  KEY `FK_RATING_OPTION_RATING` (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating options' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `rating_option`
--

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote`
--

DROP TABLE IF EXISTS `rating_option_vote`;
CREATE TABLE IF NOT EXISTS `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `remote_ip` varchar(16) NOT NULL DEFAULT '',
  `remote_ip_long` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) unsigned DEFAULT '0',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rating_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `review_id` bigint(20) unsigned DEFAULT NULL,
  `percent` tinyint(3) NOT NULL DEFAULT '0',
  `value` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`),
  KEY `FK_RATING_OPTION_VALUE_OPTION` (`option_id`),
  KEY `FK_RATING_OPTION_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rating_option_vote`
--


-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote_aggregated`
--

DROP TABLE IF EXISTS `rating_option_vote_aggregated`;
CREATE TABLE IF NOT EXISTS `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `percent` tinyint(3) NOT NULL DEFAULT '0',
  `percent_approved` tinyint(3) DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`primary_id`),
  KEY `FK_RATING_OPTION_VALUE_AGGREGATE` (`rating_id`),
  KEY `FK_RATING_OPTION_VOTE_AGGREGATED_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rating_option_vote_aggregated`
--


-- --------------------------------------------------------

--
-- Table structure for table `rating_store`
--

DROP TABLE IF EXISTS `rating_store`;
CREATE TABLE IF NOT EXISTS `rating_store` (
  `rating_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `FK_RATING_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating_store`
--


-- --------------------------------------------------------

--
-- Table structure for table `rating_title`
--

DROP TABLE IF EXISTS `rating_title`;
CREATE TABLE IF NOT EXISTS `rating_title` (
  `rating_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `FK_RATING_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating_title`
--


-- --------------------------------------------------------

--
-- Table structure for table `report_compared_product_index`
--

DROP TABLE IF EXISTS `report_compared_product_index`;
CREATE TABLE IF NOT EXISTS `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_id` int(10) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `added_at` datetime NOT NULL,
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_BY_VISITOR` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_BY_CUSTOMER` (`customer_id`,`product_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_SORT_ADDED_AT` (`added_at`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `report_compared_product_index`
--


-- --------------------------------------------------------

--
-- Table structure for table `report_event`
--

DROP TABLE IF EXISTS `report_event`;
CREATE TABLE IF NOT EXISTS `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logged_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `event_type_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `IDX_EVENT_TYPE` (`event_type_id`),
  KEY `IDX_SUBJECT` (`subject_id`),
  KEY `IDX_OBJECT` (`object_id`),
  KEY `IDX_SUBTYPE` (`subtype`),
  KEY `FK_REPORT_EVENT_STORE` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `report_event`
--

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2010-09-08 20:26:44', 1, 2, 20, 1, 1),
(2, '2010-10-03 12:02:02', 1, 3, 29, 1, 2),
(3, '2010-10-03 17:55:48', 1, 10, 31, 1, 2),
(4, '2010-10-03 17:56:48', 1, 10, 31, 1, 2),
(5, '2010-10-03 18:02:44', 1, 10, 31, 1, 2),
(6, '2010-10-03 18:11:04', 1, 10, 31, 1, 2),
(7, '2010-10-03 18:11:09', 1, 10, 31, 1, 2),
(8, '2010-10-03 21:34:30', 1, 10, 32, 1, 2),
(9, '2010-10-03 21:34:38', 1, 10, 32, 1, 2),
(10, '2010-10-03 21:37:04', 1, 10, 32, 1, 2),
(11, '2010-10-03 21:37:11', 1, 10, 32, 1, 2),
(12, '2010-10-03 21:39:28', 1, 10, 32, 1, 2),
(13, '2010-10-03 21:42:15', 1, 10, 32, 1, 2),
(14, '2010-10-03 21:42:50', 1, 10, 32, 1, 2),
(15, '2010-10-03 21:45:18', 1, 10, 32, 1, 2),
(16, '2010-10-03 21:45:37', 1, 10, 32, 1, 2),
(17, '2010-10-03 21:46:42', 1, 10, 32, 1, 2),
(18, '2010-10-03 21:47:31', 1, 10, 32, 1, 2),
(19, '2010-10-04 19:17:02', 1, 10, 34, 1, 2),
(20, '2010-10-04 19:17:02', 1, 10, 33, 1, 2),
(21, '2010-10-04 19:17:11', 1, 10, 34, 1, 2),
(22, '2010-10-04 19:54:56', 1, 10, 34, 1, 2),
(23, '2010-10-04 19:55:38', 1, 10, 34, 1, 2),
(24, '2010-10-04 19:56:18', 1, 10, 34, 1, 2),
(25, '2010-10-04 19:57:07', 1, 10, 34, 1, 2),
(26, '2010-10-04 19:59:07', 1, 10, 34, 1, 2),
(27, '2010-10-04 19:59:54', 1, 10, 34, 1, 2),
(28, '2010-10-04 20:00:17', 1, 10, 34, 1, 2),
(29, '2010-10-04 20:00:19', 1, 10, 34, 1, 2),
(30, '2010-10-04 20:10:54', 1, 10, 34, 1, 2),
(31, '2010-10-04 20:13:46', 1, 10, 34, 1, 2),
(32, '2010-10-04 20:16:27', 1, 10, 34, 1, 2),
(33, '2010-10-04 20:20:02', 1, 10, 34, 1, 2),
(34, '2010-10-04 20:21:51', 1, 10, 34, 1, 2),
(35, '2010-10-04 20:24:46', 1, 10, 34, 1, 2),
(36, '2010-10-04 20:25:04', 1, 10, 34, 1, 2),
(37, '2010-10-04 20:26:00', 1, 10, 34, 1, 2),
(38, '2010-10-04 20:28:59', 1, 10, 34, 1, 2),
(39, '2010-10-04 20:29:01', 1, 10, 34, 1, 2),
(40, '2010-10-04 20:29:08', 1, 10, 34, 1, 2),
(41, '2010-10-04 20:29:11', 1, 10, 34, 1, 2),
(42, '2010-10-04 20:29:12', 1, 10, 34, 1, 2),
(43, '2010-10-04 20:29:13', 1, 10, 34, 1, 2),
(44, '2010-10-04 20:29:14', 1, 10, 34, 1, 2),
(45, '2010-10-04 20:30:53', 1, 10, 34, 1, 2),
(46, '2010-10-04 20:30:55', 1, 10, 34, 1, 2),
(47, '2010-10-04 20:31:02', 1, 10, 34, 1, 2),
(48, '2010-10-04 20:37:42', 1, 10, 34, 1, 2),
(49, '2010-10-04 20:38:24', 1, 10, 34, 1, 2),
(50, '2010-10-04 20:39:21', 1, 10, 34, 1, 2),
(51, '2010-10-04 20:40:16', 1, 10, 34, 1, 2),
(52, '2010-10-04 20:40:35', 1, 10, 34, 1, 2),
(53, '2010-10-04 20:42:29', 1, 10, 34, 1, 2),
(54, '2010-10-04 20:43:54', 1, 10, 34, 1, 2),
(55, '2010-10-04 20:44:50', 1, 10, 34, 1, 2),
(56, '2010-10-04 20:45:39', 1, 10, 34, 1, 2),
(57, '2010-10-04 20:48:01', 1, 10, 34, 1, 2),
(58, '2010-10-05 23:03:17', 1, 10, 35, 1, 2),
(59, '2010-10-05 23:03:21', 1, 10, 35, 1, 2),
(60, '2010-10-06 18:37:59', 1, 2, 36, 1, 2),
(61, '2010-10-06 18:38:15', 1, 10, 36, 1, 2),
(62, '2010-10-06 18:41:45', 1, 10, 36, 1, 2),
(63, '2010-10-06 18:42:25', 1, 6, 36, 1, 2),
(64, '2010-10-06 18:42:27', 1, 6, 36, 1, 2),
(65, '2010-10-06 18:45:03', 1, 6, 36, 1, 2),
(66, '2010-10-06 18:45:05', 1, 6, 36, 1, 2),
(67, '2010-10-06 18:45:17', 1, 10, 36, 1, 2),
(68, '2010-10-06 18:45:45', 1, 10, 36, 1, 2),
(69, '2010-10-06 18:46:05', 1, 10, 36, 1, 2),
(70, '2010-10-06 18:50:45', 1, 10, 36, 1, 2),
(71, '2010-10-06 19:32:27', 1, 2, 36, 1, 2),
(72, '2010-10-06 19:32:37', 1, 10, 36, 1, 2),
(73, '2010-10-07 15:56:24', 1, 10, 37, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `report_event_types`
--

DROP TABLE IF EXISTS `report_event_types`;
CREATE TABLE IF NOT EXISTS `report_event_types` (
  `event_type_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(64) NOT NULL,
  `customer_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `report_event_types`
--

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 1),
(2, 'sendfriend_product', 1),
(3, 'catalog_product_compare_add_product', 1),
(4, 'checkout_cart_add_product', 1),
(5, 'wishlist_add_product', 1),
(6, 'wishlist_share', 1);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_index`
--

DROP TABLE IF EXISTS `report_viewed_product_index`;
CREATE TABLE IF NOT EXISTS `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_id` int(10) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `added_at` datetime NOT NULL,
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_BY_VISITOR` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_BY_CUSTOMER` (`customer_id`,`product_id`),
  KEY `IDX_STORE` (`store_id`),
  KEY `IDX_SORT_ADDED_AT` (`added_at`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `report_viewed_product_index`
--

INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 20, NULL, 2, 1, '2010-09-08 20:26:44'),
(2, 29, NULL, 3, 2, '2010-10-03 12:02:02'),
(3, 31, NULL, 10, 2, '2010-10-03 18:11:09'),
(8, 32, NULL, 10, 2, '2010-10-03 21:47:31'),
(9, 34, NULL, 10, 2, '2010-10-04 20:48:01'),
(10, 33, NULL, 10, 2, '2010-10-04 19:17:02'),
(48, 35, NULL, 10, 2, '2010-10-05 23:03:21'),
(49, 36, NULL, 2, 2, '2010-10-06 19:32:27'),
(50, 36, NULL, 10, 2, '2010-10-06 19:32:37'),
(52, 36, NULL, 6, 2, '2010-10-06 18:45:05'),
(62, 37, NULL, 10, 2, '2010-10-07 15:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`review_id`),
  KEY `FK_REVIEW_ENTITY` (`entity_id`),
  KEY `FK_REVIEW_STATUS` (`status_id`),
  KEY `FK_REVIEW_PARENT_PRODUCT` (`entity_pk_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `review`
--


-- --------------------------------------------------------

--
-- Table structure for table `review_detail`
--

DROP TABLE IF EXISTS `review_detail`;
CREATE TABLE IF NOT EXISTS `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `detail` text NOT NULL,
  `nickname` varchar(128) NOT NULL DEFAULT '',
  `customer_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `FK_REVIEW_DETAIL_REVIEW` (`review_id`),
  KEY `FK_REVIEW_DETAIL_STORE` (`store_id`),
  KEY `FK_REVIEW_DETAIL_CUSTOMER` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `review_detail`
--


-- --------------------------------------------------------

--
-- Table structure for table `review_entity`
--

DROP TABLE IF EXISTS `review_entity`;
CREATE TABLE IF NOT EXISTS `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `entity_code` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review entities' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `review_entity`
--

INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `review_entity_summary`
--

DROP TABLE IF EXISTS `review_entity_summary`;
CREATE TABLE IF NOT EXISTS `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0',
  `entity_type` tinyint(4) NOT NULL DEFAULT '0',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0',
  `rating_summary` tinyint(4) NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`primary_id`),
  KEY `FK_REVIEW_ENTITY_SUMMARY_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `review_entity_summary`
--


-- --------------------------------------------------------

--
-- Table structure for table `review_status`
--

DROP TABLE IF EXISTS `review_status`;
CREATE TABLE IF NOT EXISTS `review_status` (
  `status_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `status_code` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review statuses' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `review_status`
--

INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `review_store`
--

DROP TABLE IF EXISTS `review_store`;
CREATE TABLE IF NOT EXISTS `review_store` (
  `review_id` bigint(20) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `FK_REVIEW_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review_store`
--


-- --------------------------------------------------------

--
-- Table structure for table `salesrule`
--

DROP TABLE IF EXISTS `salesrule`;
CREATE TABLE IF NOT EXISTS `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `from_date` date DEFAULT '0000-00-00',
  `to_date` date DEFAULT '0000-00-00',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0',
  `customer_group_ids` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `conditions_serialized` mediumtext NOT NULL,
  `actions_serialized` mediumtext NOT NULL,
  `stop_rules_processing` tinyint(1) NOT NULL DEFAULT '1',
  `is_advanced` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `product_ids` text,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `simple_action` varchar(32) NOT NULL DEFAULT '',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_qty` decimal(12,4) unsigned DEFAULT NULL,
  `discount_step` int(10) unsigned NOT NULL,
  `simple_free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `apply_to_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `times_used` int(11) unsigned NOT NULL DEFAULT '0',
  `is_rss` tinyint(4) NOT NULL DEFAULT '0',
  `website_ids` text,
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`rule_id`),
  KEY `sort_order` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `salesrule`
--


-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon`
--

DROP TABLE IF EXISTS `salesrule_coupon`;
CREATE TABLE IF NOT EXISTS `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `usage_limit` int(10) unsigned DEFAULT NULL,
  `usage_per_customer` int(10) unsigned DEFAULT NULL,
  `times_used` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration_date` datetime DEFAULT NULL,
  `is_primary` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_RULE_MAIN_COUPON` (`rule_id`,`is_primary`),
  KEY `FK_SALESRULE_COUPON_RULE_ID_SALESRULE` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `salesrule_coupon`
--


-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_usage`
--

DROP TABLE IF EXISTS `salesrule_coupon_usage`;
CREATE TABLE IF NOT EXISTS `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `times_used` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `FK_SALESRULE_COUPON_CUSTOMER_COUPON_ID_CUSTOMER_ENTITY` (`coupon_id`),
  KEY `FK_SALESRULE_COUPON_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesrule_coupon_usage`
--


-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer`
--

DROP TABLE IF EXISTS `salesrule_customer`;
CREATE TABLE IF NOT EXISTS `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `times_used` smallint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_customer_id`),
  KEY `rule_id` (`rule_id`,`customer_id`),
  KEY `customer_id` (`customer_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `salesrule_customer`
--


-- --------------------------------------------------------

--
-- Table structure for table `salesrule_label`
--

DROP TABLE IF EXISTS `salesrule_label`;
CREATE TABLE IF NOT EXISTS `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `IDX_RULE_STORE` (`rule_id`,`store_id`),
  KEY `FK_SALESRULE_LABEL_STORE` (`store_id`),
  KEY `FK_SALESRULE_LABEL_RULE` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `salesrule_label`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_daily`;
CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_daily` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_PRODUCT` (`period`,`store_id`,`product_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_bestsellers_aggregated_daily`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_monthly`;
CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_monthly` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_PRODUCT` (`period`,`store_id`,`product_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_bestsellers_aggregated_monthly`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_yearly`;
CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_yearly` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_PRODUCT` (`period`,`store_id`,`product_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_bestsellers_aggregated_yearly`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_billing_agreement`
--

DROP TABLE IF EXISTS `sales_billing_agreement`;
CREATE TABLE IF NOT EXISTS `sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `method_code` varchar(32) NOT NULL,
  `reference_id` varchar(32) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`agreement_id`),
  KEY `IDX_CUSTOMER` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_billing_agreement`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_billing_agreement_order`
--

DROP TABLE IF EXISTS `sales_billing_agreement_order`;
CREATE TABLE IF NOT EXISTS `sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `UNQ_BILLING_AGREEMENT_ORDER` (`agreement_id`,`order_id`),
  KEY `FK_BILLING_AGREEMENT_ORDER_ORDER` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_billing_agreement_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo`
--

DROP TABLE IF EXISTS `sales_flat_creditmemo`;
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `adjustment_positive` decimal(12,4) DEFAULT NULL,
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `store_to_order_rate` decimal(12,4) DEFAULT NULL,
  `base_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_to_order_rate` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL,
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `shipping_amount` decimal(12,4) DEFAULT NULL,
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `adjustment_negative` decimal(12,4) DEFAULT NULL,
  `base_shipping_amount` decimal(12,4) DEFAULT NULL,
  `store_to_base_rate` decimal(12,4) DEFAULT NULL,
  `base_to_global_rate` decimal(12,4) DEFAULT NULL,
  `base_adjustment` decimal(12,4) DEFAULT NULL,
  `base_subtotal` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `subtotal` decimal(12,4) DEFAULT NULL,
  `adjustment` decimal(12,4) DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL,
  `base_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `email_sent` tinyint(1) unsigned DEFAULT NULL,
  `creditmemo_status` int(10) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `shipping_address_id` int(10) DEFAULT NULL,
  `billing_address_id` int(10) DEFAULT NULL,
  `invoice_id` int(10) DEFAULT NULL,
  `cybersource_token` varchar(255) DEFAULT NULL,
  `store_currency_code` char(3) DEFAULT NULL,
  `order_currency_code` char(3) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `global_currency_code` char(3) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_STATE` (`state`),
  KEY `IDX_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_creditmemo`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo_comment`
--

DROP TABLE IF EXISTS `sales_flat_creditmemo_comment`;
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `is_customer_notified` int(10) DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_creditmemo_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo_grid`
--

DROP TABLE IF EXISTS `sales_flat_creditmemo_grid`;
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `store_to_order_rate` decimal(12,4) DEFAULT NULL,
  `base_to_order_rate` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `store_to_base_rate` decimal(12,4) DEFAULT NULL,
  `base_to_global_rate` decimal(12,4) DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `creditmemo_status` int(10) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `invoice_id` int(10) DEFAULT NULL,
  `store_currency_code` char(3) DEFAULT NULL,
  `order_currency_code` char(3) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `global_currency_code` char(3) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `order_increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_created_at` datetime DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_STATE` (`state`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_creditmemo_grid`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo_item`
--

DROP TABLE IF EXISTS `sales_flat_creditmemo_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `base_price` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `base_row_total` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `row_total` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `base_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `price_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_tax_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL,
  `qty` decimal(12,4) DEFAULT NULL,
  `base_cost` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `order_item_id` int(10) DEFAULT NULL,
  `additional_data` text,
  `description` text,
  `weee_tax_applied` text,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_creditmemo_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice`
--

DROP TABLE IF EXISTS `sales_flat_invoice`;
CREATE TABLE IF NOT EXISTS `sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `base_tax_amount` decimal(12,4) DEFAULT NULL,
  `store_to_order_rate` decimal(12,4) DEFAULT NULL,
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_to_order_rate` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `shipping_amount` decimal(12,4) DEFAULT NULL,
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `store_to_base_rate` decimal(12,4) DEFAULT NULL,
  `base_shipping_amount` decimal(12,4) DEFAULT NULL,
  `total_qty` decimal(12,4) DEFAULT NULL,
  `base_to_global_rate` decimal(12,4) DEFAULT NULL,
  `subtotal` decimal(12,4) DEFAULT NULL,
  `base_subtotal` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `billing_address_id` int(10) DEFAULT NULL,
  `is_used_for_refund` tinyint(1) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `email_sent` tinyint(1) unsigned DEFAULT NULL,
  `can_void_flag` tinyint(1) unsigned DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `shipping_address_id` int(10) DEFAULT NULL,
  `cybersource_token` varchar(255) DEFAULT NULL,
  `store_currency_code` char(3) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `order_currency_code` char(3) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `global_currency_code` char(3) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_STATE` (`state`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_invoice`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice_comment`
--

DROP TABLE IF EXISTS `sales_flat_invoice_comment`;
CREATE TABLE IF NOT EXISTS `sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `is_customer_notified` tinyint(1) unsigned DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_invoice_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice_grid`
--

DROP TABLE IF EXISTS `sales_flat_invoice_grid`;
CREATE TABLE IF NOT EXISTS `sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `state` int(10) DEFAULT NULL,
  `store_currency_code` char(3) DEFAULT NULL,
  `order_currency_code` char(3) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `global_currency_code` char(3) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `order_increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_created_at` datetime DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_STATE` (`state`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_invoice_grid`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice_item`
--

DROP TABLE IF EXISTS `sales_flat_invoice_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `base_price` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `base_row_total` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `row_total` decimal(12,4) DEFAULT NULL,
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `base_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `price_incl_tax` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `base_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL,
  `qty` decimal(12,4) DEFAULT NULL,
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `base_cost` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `order_item_id` int(10) DEFAULT NULL,
  `additional_data` text,
  `description` text,
  `weee_tax_applied` text,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_invoice_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order`
--

DROP TABLE IF EXISTS `sales_flat_order`;
CREATE TABLE IF NOT EXISTS `sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(32) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `protect_code` varchar(255) DEFAULT NULL,
  `shipping_description` varchar(255) DEFAULT NULL,
  `is_virtual` tinyint(1) unsigned DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `base_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_discount_canceled` decimal(12,4) DEFAULT NULL,
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL,
  `base_discount_refunded` decimal(12,4) DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `base_shipping_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL,
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL,
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL,
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL,
  `base_subtotal` decimal(12,4) DEFAULT NULL,
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL,
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL,
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL,
  `base_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_tax_canceled` decimal(12,4) DEFAULT NULL,
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL,
  `base_tax_refunded` decimal(12,4) DEFAULT NULL,
  `base_to_global_rate` decimal(12,4) DEFAULT NULL,
  `base_to_order_rate` decimal(12,4) DEFAULT NULL,
  `base_total_canceled` decimal(12,4) DEFAULT NULL,
  `base_total_invoiced` decimal(12,4) DEFAULT NULL,
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL,
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL,
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL,
  `base_total_paid` decimal(12,4) DEFAULT NULL,
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL,
  `base_total_refunded` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `discount_canceled` decimal(12,4) DEFAULT NULL,
  `discount_invoiced` decimal(12,4) DEFAULT NULL,
  `discount_refunded` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `shipping_amount` decimal(12,4) DEFAULT NULL,
  `shipping_canceled` decimal(12,4) DEFAULT NULL,
  `shipping_invoiced` decimal(12,4) DEFAULT NULL,
  `shipping_refunded` decimal(12,4) DEFAULT NULL,
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL,
  `store_to_base_rate` decimal(12,4) DEFAULT NULL,
  `store_to_order_rate` decimal(12,4) DEFAULT NULL,
  `subtotal` decimal(12,4) DEFAULT NULL,
  `subtotal_canceled` decimal(12,4) DEFAULT NULL,
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL,
  `subtotal_refunded` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `tax_canceled` decimal(12,4) DEFAULT NULL,
  `tax_invoiced` decimal(12,4) DEFAULT NULL,
  `tax_refunded` decimal(12,4) DEFAULT NULL,
  `total_canceled` decimal(12,4) DEFAULT NULL,
  `total_invoiced` decimal(12,4) DEFAULT NULL,
  `total_offline_refunded` decimal(12,4) DEFAULT NULL,
  `total_online_refunded` decimal(12,4) DEFAULT NULL,
  `total_paid` decimal(12,4) DEFAULT NULL,
  `total_qty_ordered` decimal(12,4) DEFAULT NULL,
  `total_refunded` decimal(12,4) DEFAULT NULL,
  `can_ship_partially` tinyint(1) unsigned DEFAULT NULL,
  `can_ship_partially_item` tinyint(1) unsigned DEFAULT NULL,
  `customer_is_guest` tinyint(1) unsigned DEFAULT NULL,
  `customer_note_notify` tinyint(1) unsigned DEFAULT NULL,
  `billing_address_id` int(10) DEFAULT NULL,
  `customer_group_id` smallint(5) DEFAULT NULL,
  `edit_increment` int(10) DEFAULT NULL,
  `email_sent` tinyint(1) unsigned DEFAULT NULL,
  `forced_do_shipment_with_invoice` tinyint(1) unsigned DEFAULT NULL,
  `gift_message_id` int(10) DEFAULT NULL,
  `payment_authorization_expiration` int(10) DEFAULT NULL,
  `paypal_ipn_customer_notified` int(10) DEFAULT NULL,
  `quote_address_id` int(10) DEFAULT NULL,
  `quote_id` int(10) DEFAULT NULL,
  `shipping_address_id` int(10) DEFAULT NULL,
  `adjustment_negative` decimal(12,4) DEFAULT NULL,
  `adjustment_positive` decimal(12,4) DEFAULT NULL,
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL,
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL,
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_total_due` decimal(12,4) DEFAULT NULL,
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL,
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL,
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `total_due` decimal(12,4) DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `customer_dob` datetime DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `applied_rule_ids` varchar(255) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_firstname` varchar(255) DEFAULT NULL,
  `customer_lastname` varchar(255) DEFAULT NULL,
  `customer_middlename` varchar(255) DEFAULT NULL,
  `customer_prefix` varchar(255) DEFAULT NULL,
  `customer_suffix` varchar(255) DEFAULT NULL,
  `customer_taxvat` varchar(255) DEFAULT NULL,
  `discount_description` varchar(255) DEFAULT NULL,
  `ext_customer_id` varchar(255) DEFAULT NULL,
  `ext_order_id` varchar(255) DEFAULT NULL,
  `global_currency_code` char(3) DEFAULT NULL,
  `hold_before_state` varchar(255) DEFAULT NULL,
  `hold_before_status` varchar(255) DEFAULT NULL,
  `order_currency_code` varchar(255) DEFAULT NULL,
  `original_increment_id` varchar(50) DEFAULT NULL,
  `relation_child_id` varchar(32) DEFAULT NULL,
  `relation_child_real_id` varchar(32) DEFAULT NULL,
  `relation_parent_id` varchar(32) DEFAULT NULL,
  `relation_parent_real_id` varchar(32) DEFAULT NULL,
  `remote_ip` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `store_currency_code` char(3) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `x_forwarded_for` varchar(255) DEFAULT NULL,
  `customer_note` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `total_item_count` smallint(5) unsigned DEFAULT '0',
  `customer_gender` int(11) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL,
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL,
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_STATE` (`state`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_EXT_ORDER_ID` (`ext_order_id`),
  KEY `IDX_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_address`
--

DROP TABLE IF EXISTS `sales_flat_order_address`;
CREATE TABLE IF NOT EXISTS `sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `customer_address_id` int(10) DEFAULT NULL,
  `quote_address_id` int(10) DEFAULT NULL,
  `region_id` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `country_id` char(2) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_order_address`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_grid`
--

DROP TABLE IF EXISTS `sales_flat_order_grid`;
CREATE TABLE IF NOT EXISTS `sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(32) DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT NULL,
  `base_total_paid` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `total_paid` decimal(12,4) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `base_currency_code` char(3) DEFAULT NULL,
  `order_currency_code` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `IDX_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_TOTAL_PAID` (`total_paid`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SHIPPING_NAME` (`shipping_name`),
  KEY `IDX_BILLING_NAME` (`billing_name`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_order_grid`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_item`
--

DROP TABLE IF EXISTS `sales_flat_order_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_item_id` int(10) unsigned DEFAULT NULL,
  `quote_item_id` int(10) unsigned DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_options` text,
  `weight` decimal(12,4) DEFAULT '0.0000',
  `is_virtual` tinyint(1) unsigned DEFAULT NULL,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `applied_rule_ids` text,
  `additional_data` text,
  `free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_qty_decimal` tinyint(1) unsigned DEFAULT NULL,
  `no_discount` tinyint(1) unsigned DEFAULT '0',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000',
  `base_cost` decimal(12,4) DEFAULT '0.0000',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `original_price` decimal(12,4) DEFAULT NULL,
  `base_original_price` decimal(12,4) DEFAULT NULL,
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `row_weight` decimal(12,4) DEFAULT '0.0000',
  `gift_message_id` int(10) DEFAULT NULL,
  `gift_message_available` int(10) DEFAULT NULL,
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL,
  `tax_before_discount` decimal(12,4) DEFAULT NULL,
  `ext_order_item_id` varchar(255) DEFAULT NULL,
  `weee_tax_applied` text,
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `locked_do_invoice` tinyint(1) unsigned DEFAULT NULL,
  `locked_do_ship` tinyint(1) unsigned DEFAULT NULL,
  `price_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL,
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL,
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL,
  `is_nominal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `IDX_ORDER` (`order_id`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_order_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_payment`
--

DROP TABLE IF EXISTS `sales_flat_order_payment`;
CREATE TABLE IF NOT EXISTS `sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `base_shipping_captured` decimal(12,4) DEFAULT NULL,
  `shipping_captured` decimal(12,4) DEFAULT NULL,
  `amount_refunded` decimal(12,4) DEFAULT NULL,
  `base_amount_paid` decimal(12,4) DEFAULT NULL,
  `amount_canceled` decimal(12,4) DEFAULT NULL,
  `base_amount_authorized` decimal(12,4) DEFAULT NULL,
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL,
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL,
  `base_shipping_amount` decimal(12,4) DEFAULT NULL,
  `shipping_amount` decimal(12,4) DEFAULT NULL,
  `amount_paid` decimal(12,4) DEFAULT NULL,
  `amount_authorized` decimal(12,4) DEFAULT NULL,
  `base_amount_ordered` decimal(12,4) DEFAULT NULL,
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL,
  `shipping_refunded` decimal(12,4) DEFAULT NULL,
  `base_amount_refunded` decimal(12,4) DEFAULT NULL,
  `amount_ordered` decimal(12,4) DEFAULT NULL,
  `base_amount_canceled` decimal(12,4) DEFAULT NULL,
  `ideal_transaction_checked` tinyint(1) unsigned DEFAULT NULL,
  `quote_payment_id` int(10) DEFAULT NULL,
  `additional_data` text,
  `cc_exp_month` varchar(255) DEFAULT NULL,
  `cc_ss_start_year` varchar(255) DEFAULT NULL,
  `echeck_bank_name` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `cc_debug_request_body` varchar(255) DEFAULT NULL,
  `cc_secure_verify` varchar(255) DEFAULT NULL,
  `cybersource_token` varchar(255) DEFAULT NULL,
  `ideal_issuer_title` varchar(255) DEFAULT NULL,
  `protection_eligibility` varchar(255) DEFAULT NULL,
  `cc_approval` varchar(255) DEFAULT NULL,
  `cc_last4` varchar(255) DEFAULT NULL,
  `cc_status_description` varchar(255) DEFAULT NULL,
  `echeck_type` varchar(255) DEFAULT NULL,
  `paybox_question_number` varchar(255) DEFAULT NULL,
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL,
  `cc_ss_start_month` varchar(255) DEFAULT NULL,
  `echeck_account_type` varchar(255) DEFAULT NULL,
  `last_trans_id` varchar(255) DEFAULT NULL,
  `cc_cid_status` varchar(255) DEFAULT NULL,
  `cc_owner` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `ideal_issuer_id` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `cc_exp_year` varchar(255) DEFAULT NULL,
  `cc_status` varchar(255) DEFAULT NULL,
  `echeck_routing_number` varchar(255) DEFAULT NULL,
  `account_status` varchar(255) DEFAULT NULL,
  `anet_trans_method` varchar(255) DEFAULT NULL,
  `cc_debug_response_body` varchar(255) DEFAULT NULL,
  `cc_ss_issue` varchar(255) DEFAULT NULL,
  `echeck_account_name` varchar(255) DEFAULT NULL,
  `cc_avs_status` varchar(255) DEFAULT NULL,
  `cc_number_enc` varchar(255) DEFAULT NULL,
  `cc_trans_id` varchar(255) DEFAULT NULL,
  `flo2cash_account_id` varchar(255) DEFAULT NULL,
  `paybox_request_number` varchar(255) DEFAULT NULL,
  `address_status` varchar(255) DEFAULT NULL,
  `additional_information` text,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_order_payment`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_status_history`
--

DROP TABLE IF EXISTS `sales_flat_order_status_history`;
CREATE TABLE IF NOT EXISTS `sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `is_customer_notified` int(10) DEFAULT NULL,
  `is_visible_on_front` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  `status` varchar(32) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`),
  KEY `IDX_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_order_status_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote`
--

DROP TABLE IF EXISTS `sales_flat_quote`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `converted_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) unsigned DEFAULT '1',
  `is_virtual` tinyint(1) unsigned DEFAULT '0',
  `is_multi_shipping` tinyint(1) unsigned DEFAULT '0',
  `items_count` int(10) unsigned DEFAULT '0',
  `items_qty` decimal(12,4) DEFAULT '0.0000',
  `orig_order_id` int(10) unsigned DEFAULT '0',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000',
  `base_currency_code` varchar(255) DEFAULT NULL,
  `store_currency_code` varchar(255) DEFAULT NULL,
  `quote_currency_code` varchar(255) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `checkout_method` varchar(255) DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT '0',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0',
  `customer_group_id` int(10) unsigned DEFAULT '0',
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_prefix` varchar(40) DEFAULT NULL,
  `customer_firstname` varchar(255) DEFAULT NULL,
  `customer_middlename` varchar(40) DEFAULT NULL,
  `customer_lastname` varchar(255) DEFAULT NULL,
  `customer_suffix` varchar(40) DEFAULT NULL,
  `customer_dob` datetime DEFAULT NULL,
  `customer_note` varchar(255) DEFAULT NULL,
  `customer_note_notify` tinyint(1) unsigned DEFAULT '1',
  `customer_is_guest` tinyint(1) unsigned DEFAULT '0',
  `remote_ip` varchar(32) DEFAULT NULL,
  `applied_rule_ids` varchar(255) DEFAULT NULL,
  `reserved_order_id` varchar(64) DEFAULT '',
  `password_hash` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `global_currency_code` varchar(255) DEFAULT NULL,
  `base_to_global_rate` decimal(12,4) DEFAULT NULL,
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL,
  `customer_taxvat` varchar(255) DEFAULT NULL,
  `customer_gender` varchar(255) DEFAULT NULL,
  `subtotal` decimal(12,4) DEFAULT NULL,
  `base_subtotal` decimal(12,4) DEFAULT NULL,
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL,
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL,
  `is_changed` int(10) unsigned DEFAULT NULL,
  `trigger_recollect` tinyint(1) NOT NULL DEFAULT '0',
  `ext_shipping_info` text,
  `gift_message_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CUSTOMER` (`customer_id`,`store_id`,`is_active`),
  KEY `FK_SALES_QUOTE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_quote`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_address`
--

DROP TABLE IF EXISTS `sales_flat_quote_address`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_id` int(10) unsigned DEFAULT NULL,
  `save_in_address_book` tinyint(1) DEFAULT '0',
  `customer_address_id` int(10) unsigned DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `prefix` varchar(40) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(40) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `suffix` varchar(40) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `region_id` int(10) unsigned DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `same_as_billing` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `collect_shipping_rates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_method` varchar(255) NOT NULL DEFAULT '',
  `shipping_description` varchar(255) NOT NULL DEFAULT '',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `customer_notes` text,
  `applied_taxes` text,
  `discount_description` varchar(255) DEFAULT NULL,
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL,
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `gift_message_id` int(10) unsigned DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `FK_SALES_QUOTE_ADDRESS_SALES_QUOTE` (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_quote_address`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_address_item`
--

DROP TABLE IF EXISTS `sales_flat_quote_address_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_item_id` int(10) unsigned DEFAULT NULL,
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `applied_rule_ids` text,
  `additional_data` text,
  `weight` decimal(12,4) DEFAULT '0.0000',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `row_weight` decimal(12,4) DEFAULT '0.0000',
  `product_id` int(10) unsigned DEFAULT NULL,
  `super_product_id` int(10) unsigned DEFAULT NULL,
  `parent_product_id` int(10) unsigned DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `free_shipping` int(10) unsigned DEFAULT NULL,
  `is_qty_decimal` int(10) unsigned DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `discount_percent` decimal(12,4) DEFAULT NULL,
  `no_discount` int(10) unsigned DEFAULT NULL,
  `tax_percent` decimal(12,4) DEFAULT NULL,
  `base_price` decimal(12,4) DEFAULT NULL,
  `base_cost` decimal(12,4) DEFAULT NULL,
  `price_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL,
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `gift_message_id` int(10) unsigned DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`address_item_id`),
  KEY `FK_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS` (`quote_address_id`),
  KEY `FK_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT` (`parent_item_id`),
  KEY `FK_SALES_QUOTE_ADDRESS_ITEM_QUOTE_ITEM` (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_quote_address_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_item`
--

DROP TABLE IF EXISTS `sales_flat_quote_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_id` int(10) unsigned DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `parent_item_id` int(10) unsigned DEFAULT NULL,
  `is_virtual` tinyint(1) unsigned DEFAULT NULL,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `applied_rule_ids` text,
  `additional_data` text,
  `free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_qty_decimal` tinyint(1) unsigned DEFAULT NULL,
  `no_discount` tinyint(1) unsigned DEFAULT '0',
  `weight` decimal(12,4) DEFAULT '0.0000',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `custom_price` decimal(12,4) DEFAULT NULL,
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000',
  `row_weight` decimal(12,4) DEFAULT '0.0000',
  `product_type` varchar(255) DEFAULT NULL,
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL,
  `tax_before_discount` decimal(12,4) DEFAULT NULL,
  `original_custom_price` decimal(12,4) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `base_cost` decimal(12,4) DEFAULT NULL,
  `price_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL,
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL,
  `gift_message_id` int(10) unsigned DEFAULT NULL,
  `weee_tax_applied` text,
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL,
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL,
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL,
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `FK_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM` (`parent_item_id`),
  KEY `FK_SALES_QUOTE_ITEM_CATALOG_PRODUCT_ENTITY` (`product_id`),
  KEY `FK_SALES_QUOTE_ITEM_SALES_QUOTE` (`quote_id`),
  KEY `FK_SALES_QUOTE_ITEM_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_quote_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_item_option`
--

DROP TABLE IF EXISTS `sales_flat_quote_item_option`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `FK_SALES_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Additional options for quote item' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_quote_item_option`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_payment`
--

DROP TABLE IF EXISTS `sales_flat_quote_payment`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `method` varchar(255) DEFAULT '',
  `cc_type` varchar(255) DEFAULT '',
  `cc_number_enc` varchar(255) DEFAULT '',
  `cc_last4` varchar(255) DEFAULT '',
  `cc_cid_enc` varchar(255) DEFAULT '',
  `cc_owner` varchar(255) DEFAULT '',
  `cc_exp_month` tinyint(2) unsigned DEFAULT '0',
  `cc_exp_year` smallint(4) unsigned DEFAULT '0',
  `cc_ss_owner` varchar(255) DEFAULT '',
  `cc_ss_start_month` tinyint(2) unsigned DEFAULT '0',
  `cc_ss_start_year` smallint(4) unsigned DEFAULT '0',
  `cybersource_token` varchar(255) DEFAULT '',
  `paypal_correlation_id` varchar(255) DEFAULT '',
  `paypal_payer_id` varchar(255) DEFAULT '',
  `paypal_payer_status` varchar(255) DEFAULT '',
  `po_number` varchar(255) DEFAULT '',
  `additional_data` text,
  `cc_ss_issue` varchar(255) DEFAULT NULL,
  `additional_information` text,
  `ideal_issuer_id` varchar(255) DEFAULT NULL,
  `ideal_issuer_list` text,
  PRIMARY KEY (`payment_id`),
  KEY `FK_SALES_QUOTE_PAYMENT_SALES_QUOTE` (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_quote_payment`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_shipping_rate`
--

DROP TABLE IF EXISTS `sales_flat_quote_shipping_rate`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `carrier` varchar(255) DEFAULT NULL,
  `carrier_title` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `method_description` text,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `error_message` text,
  `method_title` text,
  PRIMARY KEY (`rate_id`),
  KEY `FK_SALES_QUOTE_SHIPPING_RATE_ADDRESS` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_quote_shipping_rate`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment`
--

DROP TABLE IF EXISTS `sales_flat_shipment`;
CREATE TABLE IF NOT EXISTS `sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `total_weight` decimal(12,4) DEFAULT NULL,
  `total_qty` decimal(12,4) DEFAULT NULL,
  `email_sent` tinyint(1) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `shipping_address_id` int(10) DEFAULT NULL,
  `billing_address_id` int(10) DEFAULT NULL,
  `shipment_status` int(10) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_TOTAL_QTY` (`total_qty`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_shipment`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_comment`
--

DROP TABLE IF EXISTS `sales_flat_shipment_comment`;
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `is_customer_notified` int(10) DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_shipment_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_grid`
--

DROP TABLE IF EXISTS `sales_flat_shipment_grid`;
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `total_qty` decimal(12,4) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `shipment_status` int(10) DEFAULT NULL,
  `increment_id` varchar(50) DEFAULT NULL,
  `order_increment_id` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_created_at` datetime DEFAULT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_STORE_ID` (`store_id`),
  KEY `IDX_TOTAL_QTY` (`total_qty`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_SHIPMENT_STATUS` (`shipment_status`),
  KEY `IDX_INCREMENT_ID` (`increment_id`),
  KEY `IDX_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_CREATED_AT` (`created_at`),
  KEY `IDX_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SHIPPING_NAME` (`shipping_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_shipment_grid`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_item`
--

DROP TABLE IF EXISTS `sales_flat_shipment_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `row_total` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `qty` decimal(12,4) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `order_item_id` int(10) DEFAULT NULL,
  `additional_data` text,
  `description` text,
  `name` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_shipment_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_track`
--

DROP TABLE IF EXISTS `sales_flat_shipment_track`;
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `qty` decimal(12,4) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `number` text,
  `description` text,
  `title` varchar(255) DEFAULT NULL,
  `carrier_code` varchar(32) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_PARENT_ID` (`parent_id`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_flat_shipment_track`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated`
--

DROP TABLE IF EXISTS `sales_invoiced_aggregated`;
CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `orders_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced_captured` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced_not_captured` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_invoiced_aggregated`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated_order`
--

DROP TABLE IF EXISTS `sales_invoiced_aggregated_order`;
CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `orders_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced_captured` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `invoiced_not_captured` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_invoiced_aggregated_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_created`
--

DROP TABLE IF EXISTS `sales_order_aggregated_created`;
CREATE TABLE IF NOT EXISTS `sales_order_aggregated_created` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_order_aggregated_created`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax`
--

DROP TABLE IF EXISTS `sales_order_tax`;
CREATE TABLE IF NOT EXISTS `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `percent` decimal(12,4) NOT NULL,
  `amount` decimal(12,4) NOT NULL,
  `priority` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `base_amount` decimal(12,4) NOT NULL,
  `process` smallint(6) NOT NULL,
  `base_real_amount` decimal(12,4) NOT NULL,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_id`),
  KEY `IDX_ORDER_TAX` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_order_tax`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_payment_transaction`
--

DROP TABLE IF EXISTS `sales_payment_transaction`;
CREATE TABLE IF NOT EXISTS `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `txn_id` varchar(100) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(100) DEFAULT NULL,
  `txn_type` varchar(15) NOT NULL DEFAULT '',
  `is_closed` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `additional_information` blob,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_ORDER_PAYMENT_TXN` (`order_id`,`payment_id`,`txn_id`),
  KEY `IDX_ORDER_ID` (`order_id`),
  KEY `IDX_PARENT_ID` (`parent_id`),
  KEY `IDX_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_payment_transaction`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_recurring_profile`
--

DROP TABLE IF EXISTS `sales_recurring_profile`;
CREATE TABLE IF NOT EXISTS `sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(20) NOT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `method_code` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `reference_id` varchar(32) DEFAULT NULL,
  `subscriber_name` varchar(150) DEFAULT NULL,
  `start_datetime` datetime NOT NULL,
  `internal_reference_id` varchar(42) NOT NULL,
  `schedule_description` varchar(255) NOT NULL,
  `suspension_threshold` smallint(6) unsigned DEFAULT NULL,
  `bill_failed_later` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `period_unit` varchar(20) NOT NULL,
  `period_frequency` tinyint(3) unsigned DEFAULT NULL,
  `period_max_cycles` tinyint(3) unsigned DEFAULT NULL,
  `billing_amount` double(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `trial_period_unit` varchar(20) DEFAULT NULL,
  `trial_period_frequency` tinyint(3) unsigned DEFAULT NULL,
  `trial_period_max_cycles` tinyint(3) unsigned DEFAULT NULL,
  `trial_billing_amount` double(12,4) unsigned DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `shipping_amount` decimal(12,4) unsigned DEFAULT NULL,
  `tax_amount` decimal(12,4) unsigned DEFAULT NULL,
  `init_amount` decimal(12,4) unsigned DEFAULT NULL,
  `init_may_fail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order_info` text NOT NULL,
  `order_item_info` text NOT NULL,
  `billing_address_info` text NOT NULL,
  `shipping_address_info` text,
  `profile_vendor_info` text,
  `additional_info` text,
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `UNQ_INTERNAL_REF_ID` (`internal_reference_id`),
  KEY `IDX_RECURRING_PROFILE_CUSTOMER` (`customer_id`),
  KEY `IDX_RECURRING_PROFILE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_recurring_profile`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_recurring_profile_order`
--

DROP TABLE IF EXISTS `sales_recurring_profile_order`;
CREATE TABLE IF NOT EXISTS `sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_PROFILE_ORDER` (`profile_id`,`order_id`),
  KEY `IDX_ORDER` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_recurring_profile_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated`
--

DROP TABLE IF EXISTS `sales_refunded_aggregated`;
CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `online_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `offline_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_refunded_aggregated`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated_order`
--

DROP TABLE IF EXISTS `sales_refunded_aggregated_order`;
CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `online_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `offline_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_refunded_aggregated_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated`
--

DROP TABLE IF EXISTS `sales_shipping_aggregated`;
CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `shipping_description` varchar(255) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `total_shipping` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_shipping_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_shipping_aggregated`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated_order`
--

DROP TABLE IF EXISTS `sales_shipping_aggregated_order`;
CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `shipping_description` varchar(255) NOT NULL DEFAULT '',
  `orders_count` int(11) NOT NULL DEFAULT '0',
  `total_shipping` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_shipping_actual` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_ORDER_STATUS` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sales_shipping_aggregated_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `sendfriend_log`
--

DROP TABLE IF EXISTS `sendfriend_log`;
CREATE TABLE IF NOT EXISTS `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` bigint(20) NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL,
  `website_id` smallint(5) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `IDX_REMOTE_ADDR` (`ip`),
  KEY `IDX_LOG_TIME` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sendfriend_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `shipping_tablerate`
--

DROP TABLE IF EXISTS `shipping_tablerate`;
CREATE TABLE IF NOT EXISTS `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `website_id` int(11) NOT NULL DEFAULT '0',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0',
  `dest_region_id` int(10) NOT NULL DEFAULT '0',
  `dest_zip` varchar(10) NOT NULL DEFAULT '',
  `condition_name` varchar(20) NOT NULL DEFAULT '',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `dest_country` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `shipping_tablerate`
--


-- --------------------------------------------------------

--
-- Table structure for table `sitemap`
--

DROP TABLE IF EXISTS `sitemap`;
CREATE TABLE IF NOT EXISTS `sitemap` (
  `sitemap_id` int(11) NOT NULL AUTO_INCREMENT,
  `sitemap_type` varchar(32) DEFAULT NULL,
  `sitemap_filename` varchar(32) DEFAULT NULL,
  `sitemap_path` tinytext,
  `sitemap_time` timestamp NULL DEFAULT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`sitemap_id`),
  KEY `FK_SITEMAP_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sitemap`
--


-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `first_customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `first_store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tag`
--


-- --------------------------------------------------------

--
-- Table structure for table `tag_properties`
--

DROP TABLE IF EXISTS `tag_properties`;
CREATE TABLE IF NOT EXISTS `tag_properties` (
  `tag_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `base_popularity` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `FK_TAG_PROPERTIES_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag_properties`
--


-- --------------------------------------------------------

--
-- Table structure for table `tag_relation`
--

DROP TABLE IF EXISTS `tag_relation`;
CREATE TABLE IF NOT EXISTS `tag_relation` (
  `tag_relation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(6) unsigned NOT NULL DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`tag_relation_id`),
  UNIQUE KEY `UNQ_TAG_CUSTOMER_PRODUCT_STORE` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  KEY `IDX_PRODUCT` (`product_id`),
  KEY `IDX_TAG` (`tag_id`),
  KEY `IDX_CUSTOMER` (`customer_id`),
  KEY `IDX_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tag_relation`
--


-- --------------------------------------------------------

--
-- Table structure for table `tag_summary`
--

DROP TABLE IF EXISTS `tag_summary`;
CREATE TABLE IF NOT EXISTS `tag_summary` (
  `tag_id` int(11) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `customers` int(11) unsigned NOT NULL DEFAULT '0',
  `products` int(11) unsigned NOT NULL DEFAULT '0',
  `uses` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'deprecated since 1.4.0.1',
  `historical_uses` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'deprecated since 1.4.0.1',
  `popularity` int(11) unsigned NOT NULL DEFAULT '0',
  `base_popularity` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'deprecated since 1.4.0.1',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `FK_TAG_SUMMARY_STORE` (`store_id`),
  KEY `IDX_TAG` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag_summary`
--


-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation`
--

DROP TABLE IF EXISTS `tax_calculation`;
CREATE TABLE IF NOT EXISTS `tax_calculation` (
  `tax_calculation_rate_id` int(11) NOT NULL,
  `tax_calculation_rule_id` int(11) NOT NULL,
  `customer_tax_class_id` smallint(6) NOT NULL,
  `product_tax_class_id` smallint(6) NOT NULL,
  KEY `FK_TAX_CALCULATION_RULE` (`tax_calculation_rule_id`),
  KEY `FK_TAX_CALCULATION_RATE` (`tax_calculation_rate_id`),
  KEY `FK_TAX_CALCULATION_CTC` (`customer_tax_class_id`),
  KEY `FK_TAX_CALCULATION_PTC` (`product_tax_class_id`),
  KEY `IDX_TAX_CALCULATION` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_calculation`
--

INSERT INTO `tax_calculation` (`tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 1, 3, 2),
(2, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate`
--

DROP TABLE IF EXISTS `tax_calculation_rate`;
CREATE TABLE IF NOT EXISTS `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_country_id` char(2) NOT NULL,
  `tax_region_id` mediumint(9) NOT NULL,
  `tax_postcode` varchar(21) NOT NULL,
  `code` varchar(255) NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `zip_is_range` tinyint(1) DEFAULT NULL,
  `zip_from` int(11) unsigned DEFAULT NULL,
  `zip_to` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_RATE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `IDX_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `IDX_TAX_CALCULATION_RATE_RANGE` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tax_calculation_rate`
--

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', 8.2500, NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', 8.3750, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate_title`
--

DROP TABLE IF EXISTS `tax_calculation_rate_title`;
CREATE TABLE IF NOT EXISTS `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_calculation_rate_id` int(11) NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE` (`tax_calculation_rate_id`,`store_id`),
  KEY `FK_TAX_CALCULATION_RATE_TITLE_RATE` (`tax_calculation_rate_id`),
  KEY `FK_TAX_CALCULATION_RATE_TITLE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tax_calculation_rate_title`
--


-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rule`
--

DROP TABLE IF EXISTS `tax_calculation_rule`;
CREATE TABLE IF NOT EXISTS `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `priority` mediumint(9) NOT NULL,
  `position` mediumint(9) NOT NULL,
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_RULE` (`priority`,`position`,`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tax_calculation_rule`
--

INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`) VALUES
(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE IF NOT EXISTS `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) NOT NULL DEFAULT '',
  `class_type` enum('CUSTOMER','PRODUCT') NOT NULL DEFAULT 'CUSTOMER',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Shipping', 'PRODUCT');

-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_created`
--

DROP TABLE IF EXISTS `tax_order_aggregated_created`;
CREATE TABLE IF NOT EXISTS `tax_order_aggregated_created` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL DEFAULT '0000-00-00',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `code` varchar(255) NOT NULL DEFAULT '',
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `percent` float(12,4) NOT NULL DEFAULT '0.0000',
  `orders_count` int(11) unsigned NOT NULL DEFAULT '0',
  `tax_base_amount_sum` float(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_PERIOD_STORE_CODE_ORDER_STATUS` (`period`,`store_id`,`code`,`order_status`),
  KEY `IDX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tax_order_aggregated_created`
--


-- --------------------------------------------------------

--
-- Table structure for table `weee_discount`
--

DROP TABLE IF EXISTS `weee_discount`;
CREATE TABLE IF NOT EXISTS `weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `customer_group_id` smallint(5) unsigned NOT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_WEBSITE` (`website_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_PRODUCT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_GROUP` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weee_discount`
--


-- --------------------------------------------------------

--
-- Table structure for table `weee_tax`
--

DROP TABLE IF EXISTS `weee_tax`;
CREATE TABLE IF NOT EXISTS `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(2) NOT NULL DEFAULT '',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `state` varchar(255) NOT NULL DEFAULT '*',
  `attribute_id` smallint(5) unsigned NOT NULL,
  `entity_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`value_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_WEBSITE` (`website_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_PRODUCT_ENTITY` (`entity_id`),
  KEY `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_COUNTRY` (`country`),
  KEY `FK_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `weee_tax`
--


-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `parameters` text,
  PRIMARY KEY (`widget_id`),
  KEY `IDX_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `widget`
--


-- --------------------------------------------------------

--
-- Table structure for table `widget_instance`
--

DROP TABLE IF EXISTS `widget_instance`;
CREATE TABLE IF NOT EXISTS `widget_instance` (
  `instance_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT '',
  `package_theme` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `store_ids` varchar(255) NOT NULL DEFAULT '0',
  `widget_parameters` text,
  `sort_order` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `widget_instance`
--


-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page`
--

DROP TABLE IF EXISTS `widget_instance_page`;
CREATE TABLE IF NOT EXISTS `widget_instance_page` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `group` varchar(25) NOT NULL DEFAULT '',
  `layout_handle` varchar(255) NOT NULL DEFAULT '',
  `block_reference` varchar(255) NOT NULL DEFAULT '',
  `for` varchar(25) NOT NULL DEFAULT '',
  `entities` text,
  `template` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`page_id`),
  KEY `IDX_WIDGET_WIDGET_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `widget_instance_page`
--


-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page_layout`
--

DROP TABLE IF EXISTS `widget_instance_page_layout`;
CREATE TABLE IF NOT EXISTS `widget_instance_page_layout` (
  `page_id` int(11) unsigned NOT NULL DEFAULT '0',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `page_id` (`page_id`,`layout_update_id`),
  KEY `IDX_WIDGET_WIDGET_INSTANCE_PAGE_ID` (`page_id`),
  KEY `IDX_WIDGET_WIDGET_INSTANCE_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `widget_instance_page_layout`
--


-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `shared` tinyint(1) unsigned DEFAULT '0',
  `sharing_code` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `UNQ_CUSTOMER` (`customer_id`),
  KEY `IDX_IS_SHARED` (`shared`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Wishlist main' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wishlist`
--


-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item`
--

DROP TABLE IF EXISTS `wishlist_item`;
CREATE TABLE IF NOT EXISTS `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` smallint(5) unsigned DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`wishlist_item_id`),
  KEY `IDX_WISHLIST` (`wishlist_id`),
  KEY `IDX_PRODUCT` (`product_id`),
  KEY `IDX_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wishlist_item`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_rule`
--
ALTER TABLE `admin_rule`
  ADD CONSTRAINT `FK_admin_rule` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_rule`
--
ALTER TABLE `api_rule`
  ADD CONSTRAINT `FK_api_rule` FOREIGN KEY (`role_id`) REFERENCES `api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_session`
--
ALTER TABLE `api_session`
  ADD CONSTRAINT `FK_API_SESSION_USER` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogindex_aggregation`
--
ALTER TABLE `catalogindex_aggregation`
  ADD CONSTRAINT `FK_CATALOGINDEX_AGGREGATION_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogindex_aggregation_to_tag`
--
ALTER TABLE `catalogindex_aggregation_to_tag`
  ADD CONSTRAINT `FK_CATALOGINDEX_AGGREGATION_TO_TAG_AGGREGATION` FOREIGN KEY (`aggregation_id`) REFERENCES `catalogindex_aggregation` (`aggregation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINDEX_AGGREGATION_TO_TAG_TAG` FOREIGN KEY (`tag_id`) REFERENCES `catalogindex_aggregation_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogindex_eav`
--
ALTER TABLE `catalogindex_eav`
  ADD CONSTRAINT `FK_CATALOGINDEX_EAV_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINDEX_EAV_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINDEX_EAV_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogindex_minimal_price`
--
ALTER TABLE `catalogindex_minimal_price`
  ADD CONSTRAINT `FK_CATALOGINDEX_MINIMAL_PRICE_CUSTOMER_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINDEX_MINIMAL_PRICE_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CI_MINIMAL_PRICE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogindex_price`
--
ALTER TABLE `catalogindex_price`
  ADD CONSTRAINT `FK_CATALOGINDEX_PRICE_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINDEX_PRICE_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CI_PRICE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `FK_CATALOGINVENTORY_STOCK_ITEM_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINVENTORY_STOCK_ITEM_STOCK` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD CONSTRAINT `FK_CATALOGINVENTORY_STOCK_STATUS_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINVENTORY_STOCK_STATUS_STOCK` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGINVENTORY_STOCK_STATUS_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_RULE` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD CONSTRAINT `FK_catalogrule_product_customergroup` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_catalogrule_product_rule` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_catalogrule_product_website` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD CONSTRAINT `FK_catalogrule_product_price_customergroup` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRICE_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_catalogrule_product_price_website` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
  ADD CONSTRAINT `FK_CATALOGSEARCH_QUERY_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogsearch_result`
--
ALTER TABLE `catalogsearch_result`
  ADD CONSTRAINT `FK_CATALOGSEARCH_RESULT_CATALOG_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGSEARCH_RESULT_QUERY` FOREIGN KEY (`query_id`) REFERENCES `catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_EMTITY_INT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_EMTITY_INT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_EMTITY_INT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_flat_store_1`
--
ALTER TABLE `catalog_category_flat_store_1`
  ADD CONSTRAINT `FK_CATEGORY_FLAT_CATEGORY_ID_STORE_1` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATEGORY_FLAT_STORE_ID_STORE_1` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_flat_store_2`
--
ALTER TABLE `catalog_category_flat_store_2`
  ADD CONSTRAINT `FK_CATEGORY_FLAT_CATEGORY_ID_STORE_2` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATEGORY_FLAT_STORE_ID_STORE_2` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_flat_store_3`
--
ALTER TABLE `catalog_category_flat_store_3`
  ADD CONSTRAINT `FK_CATEGORY_FLAT_CATEGORY_ID_STORE_3` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATEGORY_FLAT_STORE_ID_STORE_3` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `CATALOG_CATEGORY_PRODUCT_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CATALOG_CATEGORY_PRODUCT_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_CATEGORY_ENTITY` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_PRODUCT_ENTITY` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATEGORY_PRODUCT_INDEX_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `FK_CATALOG_EAV_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_enabled_index`
--
ALTER TABLE `catalog_product_enabled_index`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_PRODUCT_ENTITY` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_MEDIA_GALLERY_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_MEDIA_GALLERY_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_MEDIA_GALLERY_VALUE_GALLERY` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_MEDIA_GALLERY_VALUE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TIER_PRICE_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TIER_PRICE_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_TIER_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_flat_1`
--
ALTER TABLE `catalog_product_flat_1`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_FLAT_1_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_flat_2`
--
ALTER TABLE `catalog_product_flat_2`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_FLAT_2_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_flat_3`
--
ALTER TABLE `catalog_product_flat_3`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_FLAT_3_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_PRICE_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_TIER_PRICE_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `FK_PRODUCT_LINK_LINKED_PRODUCT` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_LINK_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_LINK_TYPE` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `FK_ATTRIBUTE_PRODUCT_LINK_TYPE` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `FK_DECIMAL_LINK` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DECIMAL_PRODUCT_LINK_ATTRIBUTE` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `FK_INT_PRODUCT_LINK` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_INT_PRODUCT_LINK_ATTRIBUTE` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `FK_VARCHAR_LINK` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_VARCHAR_PRODUCT_LINK_ATTRIBUTE` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRICE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRICE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TITLE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_RELATION_CHILD` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_RELATION_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `FK_SUPER_PRODUCT_ATTRIBUTE_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_ATTRIBUTE` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute_pricing`
--
ALTER TABLE `catalog_product_super_attribute_pricing`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_SUPER_PRICE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SUPER_PRODUCT_ATTRIBUTE_PRICING` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `FK_SUPER_PRODUCT_LINK_ENTITY` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SUPER_PRODUCT_LINK_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_WEBSITE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_WEBSITE_PRODUCT_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `FK_CHECKOUT_AGREEMENT` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CHECKOUT_AGREEMENT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_BLOCK` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_PAGE` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_cache_tag`
--
ALTER TABLE `core_cache_tag`
  ADD CONSTRAINT `FK_CORE_CACHE_TAG` FOREIGN KEY (`cache_id`) REFERENCES `core_cache` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_layout_link`
--
ALTER TABLE `core_layout_link`
  ADD CONSTRAINT `FK_CORE_LAYOUT_LINK_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_LAYOUT_LINK_UPDATE` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_session`
--
ALTER TABLE `core_session`
  ADD CONSTRAINT `FK_SESSION_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_store`
--
ALTER TABLE `core_store`
  ADD CONSTRAINT `FK_STORE_GROUP_STORE` FOREIGN KEY (`group_id`) REFERENCES `core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_STORE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_store_group`
--
ALTER TABLE `core_store_group`
  ADD CONSTRAINT `FK_STORE_GROUP_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_translate`
--
ALTER TABLE `core_translate`
  ADD CONSTRAINT `FK_CORE_TRANSLATE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_variable_value`
--
ALTER TABLE `core_variable_value`
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_aggregated`
--
ALTER TABLE `coupon_aggregated`
  ADD CONSTRAINT `FK_SALESTRULE_COUPON_AGGREGATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_aggregated_order`
--
ALTER TABLE `coupon_aggregated_order`
  ADD CONSTRAINT `FK_SALESTRULE_COUPON_AGGREGATED_ORDER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_CUSTOMER_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DATETIME_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DATETIME_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DATETIME_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DECIMAL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DECIMAL_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_DECIMAL_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_INT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_INT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_INT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_TEXT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_TEXT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_TEXT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_VARCHAR_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_VARCHAR_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_VARCHAR_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `FK_CUSTOMER_EAV_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `FK_CUSTOMER_DATETIME_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_DATETIME_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_DATETIME_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `FK_CUSTOMER_DECIMAL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_DECIMAL_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_DECIMAL_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `FK_CUSTOMER_INT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_INT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_INT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `FK_CUSTOMER_TEXT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_TEXT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_TEXT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `FK_CUSTOMER_VARCHAR_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_VARCHAR_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_VARCHAR_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_PROFILE` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_EXPORT_BATCH` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE;

--
-- Constraints for table `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_IMPORT_BATCH` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE;

--
-- Constraints for table `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
  ADD CONSTRAINT `FK_dataflow_import_data` FOREIGN KEY (`session_id`) REFERENCES `dataflow_session` (`session_id`);

--
-- Constraints for table `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
  ADD CONSTRAINT `FK_dataflow_profile_history` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `design_change`
--
ALTER TABLE `design_change`
  ADD CONSTRAINT `FK_DESIGN_CHANGE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `FK_DIRECTORY_REGION_NAME_REGION` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `FK_DOWNLODABLE_LINK_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_LINK` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_LINK` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `FK_DOWNLODABLE_SAMPLE_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `FK_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_SAMPLE_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `FK_eav_attribute` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `FK_eav_attribute_group` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `FK_ATTRIBUTE_LABEL_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ATTRIBUTE_LABEL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `FK_ATTRIBUTE_OPTION_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `FK_ATTRIBUTE_OPTION_VALUE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ATTRIBUTE_OPTION_VALUE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `FK_eav_attribute_set` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD CONSTRAINT `FK_eav_entity` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_eav_entity_store` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `FK_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_ATTRIBUTE_GROUP` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `FK_eav_entity_store_entity_type` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_eav_entity_store_store` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_ATTRIBUTE` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_FORM_FIELDSET` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_FORM_TYPE` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_FORM_TYPE` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_FORM_FIELDSET` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_FORM_TYPE` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `googlebase_attributes`
--
ALTER TABLE `googlebase_attributes`
  ADD CONSTRAINT `GOOGLEBASE_ATTRIBUTES_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `GOOGLEBASE_ATTRIBUTES_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `googlebase_types` (`type_id`) ON DELETE CASCADE;

--
-- Constraints for table `googlebase_items`
--
ALTER TABLE `googlebase_items`
  ADD CONSTRAINT `GOOGLEBASE_ITEMS_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `GOOGLEBASE_ITEMS_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `googlebase_types`
--
ALTER TABLE `googlebase_types`
  ADD CONSTRAINT `GOOGLEBASE_TYPES_ATTRIBUTE_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

--
-- Constraints for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  ADD CONSTRAINT `FK_GOOGLEOPTIMIZER_CODE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `index_process_event`
--
ALTER TABLE `index_process_event`
  ADD CONSTRAINT `FK_INDEX_EVNT_PROCESS` FOREIGN KEY (`event_id`) REFERENCES `index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT` FOREIGN KEY (`process_id`) REFERENCES `index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `FK_PROBLEM_QUEUE` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`),
  ADD CONSTRAINT `FK_PROBLEM_SUBSCRIBER` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`);

--
-- Constraints for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `FK_QUEUE_TEMPLATE` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `FK_QUEUE_LINK_QUEUE` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_QUEUE_LINK_SUBSCRIBER` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `FK_LINK_QUEUE` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_STORE_LINK_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `FK_NEWSLETTER_SUBSCRIBER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_PAYPAL_SETTLEMENT_ROW_REPORT` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll`
--
ALTER TABLE `poll`
  ADD CONSTRAINT `FK_POLL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD CONSTRAINT `FK_POLL_PARENT` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_store`
--
ALTER TABLE `poll_store`
  ADD CONSTRAINT `FK_POLL_STORE_POLL` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_POLL_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_vote`
--
ALTER TABLE `poll_vote`
  ADD CONSTRAINT `FK_POLL_ANSWER` FOREIGN KEY (`poll_answer_id`) REFERENCES `poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_RATING_ENTITY_KEY` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_option`
--
ALTER TABLE `rating_option`
  ADD CONSTRAINT `FK_RATING_OPTION_RATING` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `FK_RATING_OPTION_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_OPTION_VALUE_OPTION` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `FK_RATING_OPTION_VALUE_AGGREGATE` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_store`
--
ALTER TABLE `rating_store`
  ADD CONSTRAINT `FK_RATING_STORE_RATING` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_RATING_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_title`
--
ALTER TABLE `rating_title`
  ADD CONSTRAINT `FK_RATING_TITLE` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `report_event`
--
ALTER TABLE `report_event`
  ADD CONSTRAINT `FK_REPORT_EVENT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_EVENT_TYPE` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_REVIEW_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_STATUS` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`);

--
-- Constraints for table `review_detail`
--
ALTER TABLE `review_detail`
  ADD CONSTRAINT `FK_REVIEW_DETAIL_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_DETAIL_REVIEW` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_DETAIL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `FK_REVIEW_ENTITY_SUMMARY_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review_store`
--
ALTER TABLE `review_store`
  ADD CONSTRAINT `FK_REVIEW_STORE_REVIEW` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `FK_SALESRULE_COUPON_RULE_ID_SALESRULE` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `FK_SALESRULE_COUPON_CUSTOMER_COUPON_ID_CUSTOMER_ENTITY` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_COUPON_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `FK_salesrule_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_salesrule_customer_rule` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `FK_SALESRULE_LABEL_RULE` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_LABEL_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_DAILY_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_DAILY_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_MONTHLY_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_MONTHLY_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_YEARLY_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ORDERED_AGGREGATED_YEARLY_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_billing_agreement`
--
ALTER TABLE `sales_billing_agreement`
  ADD CONSTRAINT `FK_BILLING_AGREEMENT_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_billing_agreement_order`
--
ALTER TABLE `sales_billing_agreement_order`
  ADD CONSTRAINT `FK_BILLING_AGREEMENT_ORDER_AGREEMENT` FOREIGN KEY (`agreement_id`) REFERENCES `sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_BILLING_AGREEMENT_ORDER_ORDER` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_creditmemo`
--
ALTER TABLE `sales_flat_creditmemo`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_PARENT` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_creditmemo_comment`
--
ALTER TABLE `sales_flat_creditmemo_comment`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_COMMENT_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_creditmemo_grid`
--
ALTER TABLE `sales_flat_creditmemo_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_GRID_PARENT` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_GRID_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_creditmemo_item`
--
ALTER TABLE `sales_flat_creditmemo_item`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_ITEM_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_invoice`
--
ALTER TABLE `sales_flat_invoice`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_PARENT` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_invoice_comment`
--
ALTER TABLE `sales_flat_invoice_comment`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_COMMENT_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_invoice_grid`
--
ALTER TABLE `sales_flat_invoice_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_PARENT` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_invoice_item`
--
ALTER TABLE `sales_flat_invoice_item`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_ITEM_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order`
--
ALTER TABLE `sales_flat_order`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order_address`
--
ALTER TABLE `sales_flat_order_address`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ADDRESS_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order_grid`
--
ALTER TABLE `sales_flat_order_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_PARENT` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order_item`
--
ALTER TABLE `sales_flat_order_item`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_PARENT` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order_payment`
--
ALTER TABLE `sales_flat_order_payment`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_PAYMENT_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order_status_history`
--
ALTER TABLE `sales_flat_order_status_history`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote`
--
ALTER TABLE `sales_flat_quote`
  ADD CONSTRAINT `FK_SALES_QUOTE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_address`
--
ALTER TABLE `sales_flat_quote_address`
  ADD CONSTRAINT `FK_SALES_QUOTE_ADDRESS_SALES_QUOTE` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_address_item`
--
ALTER TABLE `sales_flat_quote_address_item`
  ADD CONSTRAINT `FK_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS` FOREIGN KEY (`quote_address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_QUOTE_ADDRESS_ITEM_QUOTE_ITEM` FOREIGN KEY (`quote_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_item`
--
ALTER TABLE `sales_flat_quote_item`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_QUOTE_ITEM_CATALOG_PRODUCT_ENTITY` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_QUOTE_ITEM_SALES_QUOTE` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_QUOTE_ITEM_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_item_option`
--
ALTER TABLE `sales_flat_quote_item_option`
  ADD CONSTRAINT `FK_SALES_QUOTE_ITEM_OPTION_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_payment`
--
ALTER TABLE `sales_flat_quote_payment`
  ADD CONSTRAINT `FK_SALES_QUOTE_PAYMENT_SALES_QUOTE` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_shipping_rate`
--
ALTER TABLE `sales_flat_quote_shipping_rate`
  ADD CONSTRAINT `FK_SALES_QUOTE_SHIPPING_RATE_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_shipment`
--
ALTER TABLE `sales_flat_shipment`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_PARENT` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_shipment_comment`
--
ALTER TABLE `sales_flat_shipment_comment`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_COMMENT_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_shipment_grid`
--
ALTER TABLE `sales_flat_shipment_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_PARENT` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_shipment_item`
--
ALTER TABLE `sales_flat_shipment_item`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_ITEM_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_shipment_track`
--
ALTER TABLE `sales_flat_shipment_track`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_TRACK_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_ORDER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `FK_SALES_ORDER_AGGREGATED_CREATED` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_ORDER` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_PARENT` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_PAYMENT` FOREIGN KEY (`payment_id`) REFERENCES `sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_recurring_profile`
--
ALTER TABLE `sales_recurring_profile`
  ADD CONSTRAINT `FK_RECURRING_PROFILE_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RECURRING_PROFILE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_recurring_profile_order`
--
ALTER TABLE `sales_recurring_profile_order`
  ADD CONSTRAINT `FK_RECURRING_PROFILE_ORDER_ORDER` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RECURRING_PROFILE_ORDER_PROFILE` FOREIGN KEY (`profile_id`) REFERENCES `sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_ORDER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_ORDER_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sitemap`
--
ALTER TABLE `sitemap`
  ADD CONSTRAINT `FK_SITEMAP_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag_properties`
--
ALTER TABLE `tag_properties`
  ADD CONSTRAINT `FK_TAG_PROPERTIES_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_PROPERTIES_TAG` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag_relation`
--
ALTER TABLE `tag_relation`
  ADD CONSTRAINT `FK_TAG_RELATION_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_TAG` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag_summary`
--
ALTER TABLE `tag_summary`
  ADD CONSTRAINT `FK_TAG_SUMMARY_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_SUMMARY_TAG` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `FK_TAX_CALCULATION_CTC` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_PTC` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_RATE` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_RULE` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_TAX_CALCULATION_RATE_TITLE_RATE` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_RATE_TITLE_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `FK_TAX_ORDER_AGGREGATED_CREATED_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `weee_discount`
--
ALTER TABLE `weee_discount`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_DISCOUNT_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_COUNTRY` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_PRODUCT_ENTITY` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_WEEE_TAX_WEBSITE` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `FK_WIDGET_WIDGET_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `FK_WIDGET_WIDGET_INSTANCE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WIDGET_WIDGET_INSTANCE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `FK_WISHLIST_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `FK_WISHLIST_ITEM_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WISHLIST_ITEM_STORE` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WISHLIST_ITEM_WISHLIST` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

SET FOREIGN_KEY_CHECKS=1;
