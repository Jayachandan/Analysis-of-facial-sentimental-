-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 26, 2023 at 02:41 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facialsentiments`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add image analysis model', 8, 'add_imageanalysismodel'),
(30, 'Can change image analysis model', 8, 'change_imageanalysismodel'),
(31, 'Can delete image analysis model', 8, 'delete_imageanalysismodel'),
(32, 'Can view image analysis model', 8, 'view_imageanalysismodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'user'),
(8, 'userapp', 'imageanalysismodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-07 10:55:16.891265'),
(2, 'auth', '0001_initial', '2023-01-07 10:55:17.530821'),
(3, 'admin', '0001_initial', '2023-01-07 10:55:17.696666'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-07 10:55:17.701204'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-07 10:55:17.724395'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-07 10:55:17.822508'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-07 10:55:17.874462'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-07 10:55:17.923846'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-07 10:55:17.929798'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-07 10:55:17.990009'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-07 10:55:17.990009'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-07 10:55:18.007069'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-07 10:55:18.062791'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-07 10:55:18.110576'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-07 10:55:18.159775'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-07 10:55:18.170827'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-07 10:55:18.220376'),
(18, 'sessions', '0001_initial', '2023-01-07 10:55:18.287568'),
(19, 'userapp', '0001_initial', '2023-01-07 11:08:35.413903'),
(20, 'userapp', '0002_rename_user_pic_user_user_profile', '2023-01-07 11:17:59.613053'),
(21, 'userapp', '0003_user_status', '2023-01-09 09:34:14.444329'),
(22, 'userapp', '0004_user_date_joined', '2023-01-09 10:18:45.076923'),
(23, 'userapp', '0005_user_average_sentiment', '2023-01-09 10:22:47.586252'),
(24, 'userapp', '0006_remove_user_average_sentiment', '2023-01-09 10:23:28.250942'),
(25, 'userapp', '0007_user_average_sentiment', '2023-01-09 10:24:49.582316'),
(26, 'userapp', '0008_alter_user_date_joined', '2023-01-09 12:11:26.482496'),
(27, 'userapp', '0009_alter_user_date_joined', '2023-01-09 12:16:30.421290'),
(28, 'userapp', '0010_alter_user_date_joined', '2023-01-11 15:35:49.656744'),
(29, 'userapp', '0011_imageanalysismodel_alter_user_date_joined', '2023-01-24 07:00:13.486715'),
(30, 'userapp', '0012_imageanalysismodel_user_alter_user_date_joined', '2023-01-25 06:41:08.555018');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3ej6tzn8j8c2goulvn7hal4fjkbtslzc', 'eyJoYXNfbG9nZ2VkX2luIjp0cnVlfQ:1pFu4d:n1GXHn1azAA6TSSl6YkKBYlbASwEuSX6NjwvfnjKg50', '2023-01-26 09:40:39.312124'),
('bic4oj1nz6n8q7tb8pb91jtycv2au5ra', 'eyJoYXNfbG9nZ2VkX2luIjp0cnVlLCJ1c2VyX2lkIjo2OX0:1pL30G:zsDxXOMbrLYfauHH64_x-w-jbmOx57W_ZuKn1phX0T8', '2023-02-09 14:13:24.545283');

-- --------------------------------------------------------

--
-- Table structure for table `image_details`
--

DROP TABLE IF EXISTS `image_details`;
CREATE TABLE IF NOT EXISTS `image_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `modified_image` varchar(100) DEFAULT NULL,
  `sentiment` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `image_details_user_id_c7d7884e` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_details`
--

INSERT INTO `image_details` (`id`, `image`, `modified_image`, `sentiment`, `user_id`) VALUES
(100, 'original/angry1.jpg', 'modified/image3869.jpg', 'angry', 69),
(101, 'original/neutral2.jpeg', 'modified/image4106.jpg', 'neutral', 69),
(102, 'original/disgust1.jpg', 'modified/image4195.jpg', 'disgust', 69),
(103, 'original/happy1.jpg', 'modified/image6295.jpg', 'happy', 69),
(104, 'original/sad1.jpg', 'modified/image1529.jpg', 'sad', 69),
(105, 'original/fear1.jpg', 'modified/image6698.jpg', 'fear', 69),
(106, 'original/surprise1.jpg', 'modified/image992.jpg', 'surprise', 69),
(107, 'original/angry2.jpg', 'modified/image5425.jpg', 'angry', 69),
(108, 'original/surprised3.jpg', 'modified/image4858.jpg', 'surprise', 70),
(109, 'original/happy1_JwSnUnX.jpg', 'modified/image438.jpg', 'happy', 69),
(110, 'original/surprise1_EI576RD.jpg', 'modified/image8407.jpg', 'surprise', 69);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_location` varchar(50) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `date_joined` date NOT NULL,
  `average_sentiment` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_location`, `user_profile`, `status`, `date_joined`, `average_sentiment`) VALUES
(52, 'upender ', 'upenderbala2002@gmail.com', '0000', '9666473716', 'telangana', 'images/user/WhatsApp_Image_2022-07-04_at_11.24.53_AM.jpeg', 'Accepted', '2023-01-10', 'Happy'),
(68, 'raju', 'raju@gmail.com', 'lopmjki898', '8876500943', 'newyork', 'images/user/WhatsApp_Image_2022-07-04_at_11.24.53_AM_kO8NY0B.jpeg', 'Pending', '2023-01-12', 'Happy'),
(62, 'upender Bala', 'bal@gmail.com', 'Zaqxsw123@', '8906570984', 'kadapa', 'images/user/998A0890_tTyY4W9.JPG', 'Accepted', '2023-01-10', 'Happy'),
(67, 'virat', 'virat@gmail.com', 'Upender25', '9890776543', 'hayathnagar', 'images/user/WhatsApp_Image_2022-07-05_at_4.20.59_PM_bxnpKRb.jpeg', 'Pending', '2023-01-12', 'Happy'),
(69, 'Tanmay', 'tanmay@gmail.com', 'tanmay@123', '8686238308', 'Hyderabad', 'images/user/nani.jpg', 'Accepted', '2023-01-24', 'Happy'),
(70, 'Arshad', 'arshad@gmail.com', 'arshad@123', '7845874587', 'Hyderabad', 'images/user/1_10.png', 'Accepted', '2023-01-25', 'Happy');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
