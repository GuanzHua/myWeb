/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50643
Source Host           : localhost:3306
Source Database       : myweb

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-04-17 21:14:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add category', '7', 'add_category');
INSERT INTO `auth_permission` VALUES ('20', 'Can change category', '7', 'change_category');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete category', '7', 'delete_category');
INSERT INTO `auth_permission` VALUES ('22', 'Can add django', '8', 'add_django');
INSERT INTO `auth_permission` VALUES ('23', 'Can change django', '8', 'change_django');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete django', '8', 'delete_django');
INSERT INTO `auth_permission` VALUES ('25', 'Can add html', '9', 'add_html');
INSERT INTO `auth_permission` VALUES ('26', 'Can change html', '9', 'change_html');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete html', '9', 'delete_html');
INSERT INTO `auth_permission` VALUES ('28', 'Can add python', '10', 'add_python');
INSERT INTO `auth_permission` VALUES ('29', 'Can change python', '10', 'change_python');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete python', '10', 'delete_python');
INSERT INTO `auth_permission` VALUES ('31', 'Can add tornado', '11', 'add_tornado');
INSERT INTO `auth_permission` VALUES ('32', 'Can change tornado', '11', 'change_tornado');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete tornado', '11', 'delete_tornado');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$36000$ayngXkruZYlq$r4MOVepliGsJHFrl678oEFAz60TaplAcAF/9fHC2q6s=', '2019-04-17 06:59:45.118002', '1', 'guanzh', '', '', '503324943@qq.com', '1', '1', '2019-04-01 09:01:28.588353');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=580 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-04-01 09:55:31.287825', '3', 'Django', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-04-01 10:05:59.545759', '2', 'Html', '2', '[{\"changed\": {\"fields\": [\"title\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2019-04-01 10:06:10.574390', '4', 'Tornado', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2019-04-01 15:09:11.110257', '5', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2019-04-01 15:11:03.251671', '5', 'Python object', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2019-04-01 15:14:25.634247', '6', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2019-04-01 15:23:49.674508', '7', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2019-04-01 15:25:02.133653', '8', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2019-04-01 15:27:00.717435', '9', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2019-04-02 05:06:51.501327', '5', 'Python object', '2', '[{\"changed\": {\"fields\": [\"title\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2019-04-02 05:08:55.519421', '5', 'Python object', '2', '[{\"changed\": {\"fields\": [\"pdf\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2019-04-02 05:08:58.584596', '5', 'Python object', '2', '[]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2019-04-02 05:09:24.036052', '5', 'Python object', '2', '[]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2019-04-02 05:10:07.737551', '6', 'Python object', '2', '[{\"changed\": {\"fields\": [\"title\", \"pdf\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2019-04-02 05:11:07.415965', '7', 'Python object', '2', '[{\"changed\": {\"fields\": [\"title\", \"pdf\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2019-04-02 05:11:54.321647', '8', 'Python object', '2', '[{\"changed\": {\"fields\": [\"title\", \"pdf\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2019-04-02 05:12:29.708671', '8', 'Python object', '2', '[{\"changed\": {\"fields\": [\"pdf\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2019-04-02 05:13:23.023721', '9', 'Python object', '2', '[{\"changed\": {\"fields\": [\"title\", \"pdf\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2019-04-02 05:15:19.442380', '10', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2019-04-02 05:16:51.200628', '11', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2019-04-02 05:17:02.607280', '5', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2019-04-02 05:17:11.445786', '6', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2019-04-02 05:17:20.448301', '7', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2019-04-02 05:17:27.798721', '8', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2019-04-02 05:17:35.248147', '9', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2019-04-02 05:18:36.580655', '12', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2019-04-02 05:25:02.924753', '4', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2019-04-05 04:33:55.421350', '3', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2019-04-05 04:38:47.766071', '3', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2019-04-05 04:39:00.034773', '1', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2019-04-05 10:11:45.472730', '1', 'Python object', '2', '[{\"changed\": {\"fields\": [\"images\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2019-04-05 10:20:30.448757', '1', 'Python object', '2', '[{\"changed\": {\"fields\": [\"images\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2019-04-06 07:24:45.371153', '1', 'Python object', '2', '[]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2019-04-06 08:58:33.891086', '1', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2019-04-07 06:01:04.192321', '4', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2019-04-07 06:01:23.087402', '1', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2019-04-07 14:53:25.110237', '4', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2019-04-07 14:53:40.294106', '1', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2019-04-07 14:53:52.725817', '1', 'Python object', '2', '[]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2019-04-07 14:59:56.311613', '4', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2019-04-07 15:00:43.029285', '4', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('42', '2019-04-08 07:19:36.959581', '5', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('43', '2019-04-08 07:19:49.177279', '6', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('44', '2019-04-08 07:19:54.370576', '7', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('45', '2019-04-08 07:19:59.309859', '8', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('46', '2019-04-08 07:20:04.844175', '9', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('47', '2019-04-08 07:20:10.031472', '10', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('48', '2019-04-08 07:20:14.588733', '11', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('49', '2019-04-08 07:20:19.143993', '12', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('50', '2019-04-08 08:24:54.298640', '10', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('51', '2019-04-08 08:27:21.742073', '11', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('52', '2019-04-08 08:30:06.166477', '11', 'Python object', '2', '[]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('53', '2019-04-08 08:30:31.225911', '12', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('54', '2019-04-08 08:36:33.071607', '13', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('55', '2019-04-08 08:50:44.838325', '14', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('56', '2019-04-08 08:53:01.458140', '15', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('57', '2019-04-08 08:53:41.459427', '15', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('58', '2019-04-08 08:55:24.372314', '16', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('59', '2019-04-08 10:01:05.466731', '17', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('60', '2019-04-08 10:01:37.398558', '5', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('61', '2019-04-08 10:02:06.995251', '6', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('62', '2019-04-08 10:02:11.951534', '7', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('63', '2019-04-08 10:02:17.153832', '8', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('64', '2019-04-08 10:02:21.813098', '9', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('65', '2019-04-08 10:02:25.974336', '10', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('66', '2019-04-08 10:02:36.114916', '11', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('67', '2019-04-08 10:02:40.474166', '12', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('68', '2019-04-08 10:05:32.112983', '18', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('69', '2019-04-08 10:10:43.504793', '19', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('70', '2019-04-08 10:11:55.779927', '20', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('71', '2019-04-08 10:20:33.246525', '21', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('72', '2019-04-08 10:21:39.910338', '22', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('73', '2019-04-08 10:23:19.829053', '23', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('74', '2019-04-08 10:25:15.829687', '24', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('75', '2019-04-08 10:28:28.769723', '25', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('76', '2019-04-08 10:31:39.502632', '26', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('77', '2019-04-08 10:34:12.898406', '27', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('78', '2019-04-08 10:36:35.513563', '28', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('79', '2019-04-08 10:38:59.243784', '29', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('80', '2019-04-08 10:40:37.741418', '30', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('81', '2019-04-08 10:41:58.175018', '31', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('82', '2019-04-08 10:43:05.375862', '32', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('83', '2019-04-08 10:44:40.496303', '33', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('84', '2019-04-08 10:45:46.718090', '34', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('85', '2019-04-08 10:47:05.807614', '35', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('86', '2019-04-08 10:48:34.322677', '36', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('87', '2019-04-08 10:50:06.221933', '37', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('88', '2019-04-08 10:52:10.074017', '38', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('89', '2019-04-08 10:53:32.329722', '39', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('90', '2019-04-08 10:54:54.462419', '40', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('91', '2019-04-08 10:56:15.973082', '41', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('92', '2019-04-08 10:59:26.201962', '42', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('93', '2019-04-08 11:01:04.790601', '43', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('94', '2019-04-08 11:02:37.051878', '44', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('95', '2019-04-08 11:05:52.733070', '45', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('96', '2019-04-08 11:07:36.200988', '46', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('97', '2019-04-08 11:22:20.520569', '47', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('98', '2019-04-08 11:24:21.196471', '48', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('99', '2019-04-08 11:28:51.683942', '49', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('100', '2019-04-08 11:29:26.054908', '49', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('101', '2019-04-08 11:30:01.408930', '49', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('102', '2019-04-08 11:35:00.502037', '50', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('103', '2019-04-08 11:37:23.612223', '51', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('104', '2019-04-08 11:37:39.419127', '51', 'Python object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('105', '2019-04-08 11:39:42.446163', '52', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('106', '2019-04-08 11:41:19.165695', '53', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('107', '2019-04-08 11:43:29.380143', '54', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('108', '2019-04-08 11:45:31.355120', '55', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('109', '2019-04-08 11:48:26.101115', '56', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('110', '2019-04-08 11:49:21.827302', '57', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('111', '2019-04-08 11:50:29.766188', '58', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('112', '2019-04-08 11:53:39.217024', '59', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('113', '2019-04-08 11:54:28.808860', '60', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('114', '2019-04-08 11:56:19.686202', '61', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('115', '2019-04-08 11:59:24.922797', '62', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('116', '2019-04-08 12:14:19.631972', '63', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('117', '2019-04-08 12:15:14.966137', '64', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('118', '2019-04-08 12:16:25.313160', '65', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('119', '2019-04-08 12:17:55.545321', '66', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('120', '2019-04-08 12:19:20.518181', '67', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('121', '2019-04-08 12:21:28.451499', '68', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('122', '2019-04-08 12:33:45.866676', '69', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('123', '2019-04-08 12:35:02.420055', '70', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('124', '2019-04-08 12:37:28.562414', '71', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('125', '2019-04-08 12:39:10.221228', '72', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('126', '2019-04-08 12:41:07.056911', '73', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('127', '2019-04-08 12:42:18.881019', '74', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('128', '2019-04-08 12:43:34.935369', '75', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('129', '2019-04-08 12:45:07.117642', '76', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('130', '2019-04-08 12:46:21.071872', '77', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('131', '2019-04-08 12:48:15.294405', '78', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('132', '2019-04-08 12:49:21.828210', '79', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('133', '2019-04-08 12:50:40.446707', '80', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('134', '2019-04-08 13:00:09.280242', '81', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('135', '2019-04-08 13:01:52.054121', '82', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('136', '2019-04-08 13:02:58.022894', '83', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('137', '2019-04-08 13:04:32.921322', '84', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('138', '2019-04-08 13:05:50.577764', '85', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('139', '2019-04-08 13:15:14.789035', '85', 'Python object', '2', '[{\"changed\": {\"fields\": [\"images\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('140', '2019-04-08 13:17:12.253753', '86', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('141', '2019-04-08 13:20:45.200933', '87', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('142', '2019-04-08 13:21:56.813029', '87', 'Python object', '2', '[{\"changed\": {\"fields\": [\"pdf\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('143', '2019-04-08 13:22:41.688596', '88', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('144', '2019-04-08 13:24:11.413728', '89', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('145', '2019-04-08 13:25:24.590913', '90', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('146', '2019-04-08 13:26:53.604005', '91', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('147', '2019-04-08 13:27:58.359708', '92', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('148', '2019-04-08 13:29:03.948460', '93', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('149', '2019-04-08 13:30:40.826001', '94', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('150', '2019-04-08 13:32:56.542763', '95', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('151', '2019-04-08 13:34:18.286439', '96', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('152', '2019-04-08 13:35:43.748327', '97', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('153', '2019-04-08 13:36:46.106894', '98', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('154', '2019-04-08 13:38:20.754307', '99', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('155', '2019-04-08 13:39:16.088472', '100', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('156', '2019-04-08 13:40:14.799830', '101', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('157', '2019-04-08 13:41:13.897210', '102', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('158', '2019-04-08 13:42:26.506363', '103', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('159', '2019-04-08 13:45:45.128724', '104', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('160', '2019-04-08 13:48:13.949236', '105', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('161', '2019-04-08 13:49:20.035016', '106', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('162', '2019-04-08 13:50:22.665598', '107', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('163', '2019-04-08 13:51:38.566940', '108', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('164', '2019-04-08 13:52:31.414962', '109', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('165', '2019-04-08 13:53:23.391935', '110', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('166', '2019-04-08 13:54:17.290018', '111', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('167', '2019-04-08 13:54:59.285420', '112', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('168', '2019-04-08 13:55:48.852255', '113', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('169', '2019-04-08 13:56:45.268482', '114', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('170', '2019-04-08 13:57:28.938980', '115', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('171', '2019-04-08 13:58:09.606306', '116', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('172', '2019-04-08 13:59:16.927156', '117', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('173', '2019-04-08 14:00:10.285208', '118', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('174', '2019-04-08 14:01:07.115459', '119', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('175', '2019-04-08 14:01:57.573345', '120', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('176', '2019-04-08 14:08:13.858867', '121', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('177', '2019-04-08 14:17:22.397242', '122', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('178', '2019-04-08 14:18:49.860244', '123', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('179', '2019-04-08 14:19:36.910935', '124', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('180', '2019-04-08 14:20:32.826134', '125', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('181', '2019-04-08 14:21:37.922857', '126', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('182', '2019-04-08 14:22:31.123900', '127', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('183', '2019-04-08 14:23:18.312599', '128', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('184', '2019-04-08 14:24:10.426580', '129', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('185', '2019-04-08 14:25:06.265773', '130', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('186', '2019-04-08 14:25:55.011561', '131', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('187', '2019-04-08 14:30:42.857025', '132', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('188', '2019-04-08 14:32:35.481467', '133', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('189', '2019-04-08 14:34:09.097822', '134', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('190', '2019-04-08 14:35:00.975789', '135', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('191', '2019-04-08 14:36:00.483192', '136', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('192', '2019-04-08 14:37:10.568201', '137', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('193', '2019-04-08 14:37:55.938796', '138', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('194', '2019-04-08 14:40:36.529981', '139', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('195', '2019-04-08 14:41:52.040300', '140', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('196', '2019-04-08 14:42:48.231514', '141', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('197', '2019-04-08 14:43:30.005904', '142', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('198', '2019-04-08 14:44:25.225062', '143', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('199', '2019-04-08 14:45:17.320042', '144', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('200', '2019-04-08 14:50:21.184422', '145', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('201', '2019-04-08 14:51:38.211827', '146', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('202', '2019-04-08 14:52:35.308093', '147', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('203', '2019-04-08 14:53:16.366442', '148', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('204', '2019-04-08 14:55:04.429622', '149', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('205', '2019-04-08 14:55:55.192526', '150', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('206', '2019-04-08 14:56:39.291048', '151', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('207', '2019-04-08 14:58:16.690619', '152', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('208', '2019-04-08 14:59:17.833116', '153', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('209', '2019-04-08 15:00:20.403695', '154', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('210', '2019-04-08 15:01:14.937814', '155', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('211', '2019-04-08 15:12:06.615088', '156', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('212', '2019-04-08 15:16:02.407575', '157', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('213', '2019-04-08 15:18:02.340434', '158', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('214', '2019-04-08 15:19:39.176973', '159', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('215', '2019-04-08 15:23:34.864454', '160', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('216', '2019-04-08 15:25:21.855573', '160', 'Python object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('217', '2019-04-08 15:26:23.335090', '161', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('218', '2019-04-08 15:27:29.443871', '162', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('219', '2019-04-08 15:28:14.693459', '163', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('220', '2019-04-08 15:28:55.082769', '164', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('221', '2019-04-08 15:30:11.326130', '165', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('222', '2019-04-08 15:31:04.402166', '166', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('223', '2019-04-08 15:32:05.995689', '167', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('224', '2019-04-08 15:32:53.845426', '168', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('225', '2019-04-08 15:33:47.092471', '169', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('226', '2019-04-08 15:34:40.535528', '170', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('227', '2019-04-08 15:44:54.098622', '171', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('228', '2019-04-08 15:47:48.463595', '172', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('229', '2019-04-08 15:48:45.955883', '173', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('230', '2019-04-08 15:49:33.885625', '174', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('231', '2019-04-08 15:50:24.783536', '175', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('232', '2019-04-08 15:51:43.075014', '176', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('233', '2019-04-08 15:52:35.915036', '177', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('234', '2019-04-08 15:53:26.735943', '178', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('235', '2019-04-08 15:54:12.422556', '179', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('236', '2019-04-08 15:54:59.973276', '180', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('237', '2019-04-08 15:56:09.992281', '181', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('238', '2019-04-08 15:57:00.844189', '182', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('239', '2019-04-08 15:57:59.404539', '183', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('240', '2019-04-08 15:58:44.532120', '184', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('241', '2019-04-08 15:59:30.090726', '185', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('242', '2019-04-08 16:00:17.689448', '186', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('243', '2019-04-08 16:01:23.106190', '187', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('244', '2019-04-08 16:19:21.547873', '188', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('245', '2019-04-08 16:20:45.341666', '189', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('246', '2019-04-08 16:21:31.005278', '190', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('247', '2019-04-08 16:23:57.706668', '191', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('248', '2019-04-08 16:24:44.157325', '192', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('249', '2019-04-08 16:25:27.680815', '193', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('250', '2019-04-08 16:26:13.432432', '194', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('251', '2019-04-08 16:27:03.017268', '195', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('252', '2019-04-08 16:27:45.233682', '196', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('253', '2019-04-08 16:28:23.727884', '197', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('254', '2019-04-08 16:29:09.278489', '198', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('255', '2019-04-08 16:32:05.141548', '199', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('256', '2019-04-08 16:32:53.992342', '200', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('257', '2019-04-08 16:34:02.433257', '201', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('258', '2019-04-08 16:34:50.933031', '202', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('259', '2019-04-08 16:35:40.244851', '203', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('260', '2019-04-08 16:36:17.578987', '204', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('261', '2019-04-08 16:37:21.776659', '205', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('262', '2019-04-08 16:38:02.808005', '206', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('263', '2019-04-08 16:38:58.800208', '207', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('264', '2019-04-08 16:40:34.020654', '208', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('265', '2019-04-08 16:41:10.530743', '209', 'Python object', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('266', '2019-04-09 07:48:48.069913', '1', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('267', '2019-04-09 07:49:32.500454', '1', 'Html object', '2', '[{\"changed\": {\"fields\": [\"pdf\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('268', '2019-04-09 07:50:00.570060', '1', 'Html object', '2', '[{\"changed\": {\"fields\": [\"pdf\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('269', '2019-04-09 07:51:25.716930', '2', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('270', '2019-04-09 07:56:37.177405', '3', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('271', '2019-04-09 07:58:42.491705', '3', 'Html object', '2', '[{\"changed\": {\"fields\": [\"pdf\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('272', '2019-04-09 07:59:40.233008', '4', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('273', '2019-04-09 08:02:23.929371', '4', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('274', '2019-04-09 08:04:33.836801', '5', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('275', '2019-04-09 08:06:05.474042', '6', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('276', '2019-04-09 08:07:35.170173', '7', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('277', '2019-04-09 08:10:02.531601', '8', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('278', '2019-04-09 08:12:14.684160', '9', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('279', '2019-04-09 08:12:27.148873', '9', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('280', '2019-04-09 08:13:41.660135', '10', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('281', '2019-04-09 08:16:55.108199', '11', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('282', '2019-04-09 08:20:32.927658', '12', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('283', '2019-04-09 08:25:04.809209', '13', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('284', '2019-04-09 08:26:39.024597', '14', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('285', '2019-04-09 08:27:13.022542', '15', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('286', '2019-04-09 08:27:41.663180', '15', 'Html object', '2', '[{\"changed\": {\"fields\": [\"pdf\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('287', '2019-04-09 08:40:25.041843', '16', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('288', '2019-04-09 08:41:53.903926', '17', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('289', '2019-04-09 08:44:35.426164', '18', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('290', '2019-04-09 08:45:49.433397', '19', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('291', '2019-04-09 08:47:08.748934', '20', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('292', '2019-04-09 08:51:02.140283', '21', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('293', '2019-04-09 08:51:43.736662', '22', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('294', '2019-04-09 08:52:20.870786', '23', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('295', '2019-04-09 08:54:00.816503', '24', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('296', '2019-04-09 08:55:19.808021', '25', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('297', '2019-04-09 08:56:10.595926', '26', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('298', '2019-04-09 08:57:01.342828', '27', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('299', '2019-04-09 08:57:50.499640', '28', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('300', '2019-04-09 08:58:43.190653', '29', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('301', '2019-04-09 09:03:47.917083', '30', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('302', '2019-04-09 09:05:06.333568', '31', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('303', '2019-04-09 09:06:03.292826', '32', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('304', '2019-04-09 09:07:04.043301', '33', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('305', '2019-04-09 09:11:34.312759', '34', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('306', '2019-04-09 09:12:23.023545', '35', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('307', '2019-04-09 09:13:17.295649', '36', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('308', '2019-04-09 09:14:02.733248', '37', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('309', '2019-04-09 09:14:42.475521', '38', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('310', '2019-04-09 09:15:51.438466', '39', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('311', '2019-04-09 09:17:22.292662', '40', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('312', '2019-04-09 09:18:18.434874', '41', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('313', '2019-04-09 09:19:49.030055', '42', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('314', '2019-04-09 09:20:53.981770', '43', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('315', '2019-04-09 09:21:56.355338', '44', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('316', '2019-04-09 09:22:48.151300', '45', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('317', '2019-04-09 09:23:32.618844', '46', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('318', '2019-04-09 09:24:19.925550', '47', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('319', '2019-04-09 09:25:09.368378', '48', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('320', '2019-04-09 09:25:59.784261', '49', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('321', '2019-04-09 09:26:44.849839', '50', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('322', '2019-04-09 09:27:32.849584', '51', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('323', '2019-04-09 09:28:40.275441', '52', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('324', '2019-04-09 09:29:26.422080', '53', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('325', '2019-04-09 09:30:16.561948', '54', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('326', '2019-04-09 09:31:07.915885', '55', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('327', '2019-04-09 09:31:49.726277', '56', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('328', '2019-04-09 09:32:30.897632', '57', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('329', '2019-04-09 09:33:17.620304', '58', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('330', '2019-04-09 09:34:00.688767', '59', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('331', '2019-04-09 09:34:38.758945', '60', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('332', '2019-04-09 09:35:39.292407', '61', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('333', '2019-04-09 09:36:26.756122', '62', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('334', '2019-04-09 09:37:25.764497', '63', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('335', '2019-04-09 09:38:19.205551', '64', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('336', '2019-04-09 09:38:56.302673', '65', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('337', '2019-04-09 09:39:36.504972', '66', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('338', '2019-04-09 09:40:31.909141', '67', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('339', '2019-04-09 09:41:26.805281', '68', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('340', '2019-04-09 09:42:04.669447', '69', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('341', '2019-04-09 09:44:17.715057', '70', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('342', '2019-04-09 09:45:17.185458', '71', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('343', '2019-04-09 09:45:55.159630', '72', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('344', '2019-04-09 09:46:53.181949', '73', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('345', '2019-04-09 11:59:07.792783', '74', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('346', '2019-04-09 12:04:39.908778', '75', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('347', '2019-04-09 12:05:24.646337', '76', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('348', '2019-04-09 12:35:46.189524', '77', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('349', '2019-04-09 12:36:36.461399', '78', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('350', '2019-04-09 12:39:26.926149', '79', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('351', '2019-04-09 12:42:45.259493', '80', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('352', '2019-04-09 12:43:20.158489', '81', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('353', '2019-04-09 12:45:00.016201', '82', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('354', '2019-04-09 12:45:35.187212', '83', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('355', '2019-04-09 12:46:10.236217', '84', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('356', '2019-04-09 12:48:56.550730', '85', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('357', '2019-04-09 12:55:44.695074', '86', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('358', '2019-04-09 12:57:25.634848', '87', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('359', '2019-04-09 12:58:32.624679', '88', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('360', '2019-04-09 12:59:03.568449', '89', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('361', '2019-04-09 12:59:50.879155', '90', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('362', '2019-04-09 13:00:38.838898', '91', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('363', '2019-04-09 13:01:20.649290', '92', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('364', '2019-04-09 13:02:13.216296', '93', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('365', '2019-04-09 13:03:33.324878', '94', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('366', '2019-04-09 13:04:23.511749', '95', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('367', '2019-04-09 13:05:15.867743', '96', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('368', '2019-04-09 13:06:44.335803', '97', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('369', '2019-04-09 13:07:05.170995', '98', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('370', '2019-04-09 13:07:45.797319', '99', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('371', '2019-04-09 13:08:40.059423', '100', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('372', '2019-04-09 13:09:21.100770', '101', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('373', '2019-04-09 13:10:26.849531', '102', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('374', '2019-04-09 13:11:13.074174', '103', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('375', '2019-04-09 13:11:50.929340', '104', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('376', '2019-04-09 13:12:36.849966', '105', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('377', '2019-04-09 13:13:34.081240', '106', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('378', '2019-04-09 13:14:03.730935', '107', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('379', '2019-04-09 13:14:25.648189', '108', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('380', '2019-04-09 13:16:03.595791', '109', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('381', '2019-04-09 13:17:04.320265', '110', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('382', '2019-04-09 13:20:06.792701', '111', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('383', '2019-04-09 13:21:02.717900', '112', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('384', '2019-04-09 13:21:59.831167', '113', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('385', '2019-04-09 13:22:36.534266', '114', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('386', '2019-04-09 13:23:26.753138', '115', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('387', '2019-04-09 13:24:09.581588', '116', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('388', '2019-04-09 13:24:48.324804', '117', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('389', '2019-04-09 13:25:57.868782', '118', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('390', '2019-04-09 13:26:52.267893', '119', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('391', '2019-04-09 13:27:33.909275', '120', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('392', '2019-04-09 13:28:19.333873', '121', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('393', '2019-04-09 13:45:25.042540', '122', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('394', '2019-04-09 13:45:38.885332', '122', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('395', '2019-04-09 13:46:49.728384', '123', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('396', '2019-04-09 13:54:07.775439', '124', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('397', '2019-04-09 13:55:41.998828', '124', 'Html object', '2', '[{\"changed\": {\"fields\": [\"pdf\", \"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('398', '2019-04-09 13:56:18.985944', '125', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('399', '2019-04-09 13:56:58.979231', '126', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('400', '2019-04-09 13:57:40.302595', '127', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('401', '2019-04-09 13:58:24.319112', '128', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('402', '2019-04-09 13:59:11.738825', '129', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('403', '2019-04-09 13:59:53.327203', '130', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('404', '2019-04-09 14:00:32.905467', '131', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('405', '2019-04-09 14:01:26.753547', '132', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('406', '2019-04-09 14:02:10.271036', '133', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('407', '2019-04-09 14:02:52.839471', '134', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('408', '2019-04-09 14:03:33.442793', '135', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('409', '2019-04-09 14:04:14.794158', '136', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('410', '2019-04-09 14:05:28.032347', '137', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('411', '2019-04-09 14:06:05.081466', '138', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('412', '2019-04-09 14:06:53.957262', '139', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('413', '2019-04-09 14:07:32.702478', '140', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('414', '2019-04-09 14:08:17.980068', '141', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('415', '2019-04-09 14:09:02.974641', '142', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('416', '2019-04-09 14:09:44.103994', '143', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('417', '2019-04-09 14:10:42.847354', '144', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('418', '2019-04-09 14:11:28.123943', '145', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('419', '2019-04-09 14:12:13.340530', '146', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('420', '2019-04-09 14:12:51.982740', '147', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('421', '2019-04-09 14:13:31.994028', '148', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('422', '2019-04-09 14:14:06.999031', '149', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('423', '2019-04-09 14:21:10.471252', '150', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('424', '2019-04-09 14:21:55.823846', '151', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('425', '2019-04-09 14:23:04.727787', '152', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('426', '2019-04-09 14:23:59.584925', '153', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('427', '2019-04-09 14:24:47.209649', '154', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('428', '2019-04-09 14:25:42.342802', '155', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('429', '2019-04-09 14:26:34.049759', '156', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('430', '2019-04-09 14:27:19.144339', '157', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('431', '2019-04-09 14:33:02.206961', '158', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('432', '2019-04-09 14:47:57.191151', '159', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('433', '2019-04-09 14:48:48.002057', '160', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('434', '2019-04-09 14:49:45.984374', '161', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('435', '2019-04-09 14:50:32.377027', '162', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('436', '2019-04-09 14:51:20.215763', '163', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('437', '2019-04-09 14:52:15.123904', '164', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('438', '2019-04-09 14:52:58.834404', '165', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('439', '2019-04-09 14:53:40.514788', '166', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('440', '2019-04-09 14:54:45.067480', '167', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('441', '2019-04-09 14:55:26.231835', '168', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('442', '2019-04-09 14:56:10.590372', '169', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('443', '2019-04-09 14:56:55.652949', '170', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('444', '2019-04-09 14:57:41.969598', '171', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('445', '2019-04-09 14:58:25.356080', '172', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('446', '2019-04-09 15:01:50.206797', '173', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('447', '2019-04-09 15:02:42.146768', '174', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('448', '2019-04-09 15:03:25.895270', '175', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('449', '2019-04-09 15:04:03.369413', '176', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('450', '2019-04-09 15:05:08.642147', '177', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('451', '2019-04-09 15:05:31.244439', '178', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('452', '2019-04-09 15:06:43.696583', '179', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('453', '2019-04-09 15:07:16.784476', '180', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('454', '2019-04-09 15:22:25.010423', '181', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('455', '2019-04-09 15:23:23.169750', '182', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('456', '2019-04-09 15:24:23.235186', '183', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('457', '2019-04-09 15:25:00.784333', '184', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('458', '2019-04-09 15:27:05.387460', '185', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('459', '2019-04-09 15:27:49.408978', '186', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('460', '2019-04-09 15:28:24.002957', '187', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('461', '2019-04-09 15:28:57.608879', '188', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('462', '2019-04-09 15:29:36.878125', '189', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('463', '2019-04-09 15:30:17.029421', '190', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('464', '2019-04-09 15:30:52.502450', '191', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('465', '2019-04-09 15:31:40.956222', '192', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('466', '2019-04-09 15:32:13.003055', '193', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('467', '2019-04-09 15:32:57.780616', '194', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('468', '2019-04-09 15:33:33.618666', '195', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('469', '2019-04-09 15:34:12.252875', '196', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('470', '2019-04-09 15:34:53.575239', '197', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('471', '2019-04-09 15:35:33.803540', '198', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('472', '2019-04-09 15:40:51.534713', '199', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('473', '2019-04-09 15:42:07.712070', '200', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('474', '2019-04-09 15:42:47.349337', '201', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('475', '2019-04-09 15:43:25.763534', '202', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('476', '2019-04-09 15:44:02.842655', '203', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('477', '2019-04-09 15:44:45.183077', '204', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('478', '2019-04-09 15:45:23.719281', '205', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('479', '2019-04-09 15:46:02.000471', '206', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('480', '2019-04-09 15:46:34.484329', '207', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('481', '2019-04-09 15:47:10.554392', '208', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('482', '2019-04-09 15:47:46.516449', '209', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('483', '2019-04-09 15:48:29.453904', '210', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('484', '2019-04-09 15:49:31.171435', '211', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('485', '2019-04-09 15:50:04.397335', '212', 'Html object', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('486', '2019-04-10 05:20:27.389751', '1', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('487', '2019-04-10 05:21:50.152485', '2', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('488', '2019-04-10 05:22:34.964048', '3', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('489', '2019-04-10 05:23:17.257467', '4', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('490', '2019-04-10 05:24:07.351332', '5', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('491', '2019-04-10 05:24:28.801559', '6', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('492', '2019-04-10 05:24:54.070004', '7', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('493', '2019-04-10 05:25:19.464457', '8', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('494', '2019-04-10 05:25:40.920684', '9', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('495', '2019-04-10 05:27:30.638960', '10', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('496', '2019-04-10 05:28:33.201538', '11', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('497', '2019-04-10 05:28:59.422038', '12', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('498', '2019-04-10 05:29:22.768373', '13', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('499', '2019-04-10 05:30:40.028792', '14', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('500', '2019-04-10 05:32:57.577659', '15', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('501', '2019-04-10 05:33:27.160351', '16', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('502', '2019-04-10 05:35:25.101097', '17', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('503', '2019-04-10 05:36:51.882061', '18', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('504', '2019-04-10 05:37:41.871920', '19', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('505', '2019-04-10 05:38:23.016273', '20', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('506', '2019-04-10 05:38:58.709315', '21', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('507', '2019-04-10 05:39:24.922814', '22', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('508', '2019-04-10 05:39:48.300151', '23', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('509', '2019-04-10 05:41:23.282584', '24', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('510', '2019-04-10 05:42:20.320847', '25', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('511', '2019-04-10 05:42:53.296733', '26', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('512', '2019-04-10 05:43:19.395225', '27', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('513', '2019-04-10 05:43:52.397113', '28', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('514', '2019-04-10 05:45:01.548068', '29', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('515', '2019-04-10 05:45:40.071272', '30', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('516', '2019-04-10 05:46:00.582445', '31', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('517', '2019-04-10 05:46:23.633763', '32', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('518', '2019-04-10 05:46:50.663309', '33', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('519', '2019-04-10 05:47:14.232657', '34', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('520', '2019-04-10 05:47:38.540048', '35', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('521', '2019-04-10 05:49:12.933447', '36', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('522', '2019-04-10 06:06:39.628314', '37', 'Django object', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('523', '2019-04-10 06:07:44.139004', '1', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('524', '2019-04-10 06:08:22.886220', '37', 'Django object', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('525', '2019-04-10 06:09:45.255931', '2', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('526', '2019-04-10 06:10:08.843281', '3', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('527', '2019-04-10 06:11:21.080412', '4', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('528', '2019-04-10 06:12:26.688165', '5', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('529', '2019-04-10 06:12:51.852604', '6', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('530', '2019-04-10 06:14:34.867496', '7', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('531', '2019-04-10 06:14:59.182887', '7', 'Tornado object', '2', '[{\"changed\": {\"fields\": [\"pdf\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('532', '2019-04-10 06:15:46.759608', '8', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('533', '2019-04-10 06:16:11.762038', '9', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('534', '2019-04-10 06:16:31.206150', '10', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('535', '2019-04-10 06:16:51.553314', '11', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('536', '2019-04-10 06:17:14.461625', '12', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('537', '2019-04-10 06:18:09.543775', '13', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('538', '2019-04-10 06:18:54.287334', '14', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('539', '2019-04-10 06:19:14.058465', '15', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('540', '2019-04-10 06:21:13.953323', '16', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('541', '2019-04-10 06:21:42.162936', '17', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('542', '2019-04-10 06:22:33.233857', '18', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('543', '2019-04-10 06:23:18.694457', '19', 'Tornado object', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('544', '2019-04-11 13:37:51.287015', '172', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('545', '2019-04-11 13:39:01.205014', '173', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('546', '2019-04-11 13:40:19.639500', '174', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('547', '2019-04-11 13:41:18.607873', '175', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('548', '2019-04-11 13:42:43.675739', '176', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('549', '2019-04-11 13:43:25.037104', '178', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('550', '2019-04-11 13:44:02.868268', '180', 'Html object', '2', '[]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('551', '2019-04-11 13:45:37.086657', '172', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('552', '2019-04-11 13:45:49.395361', '173', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('553', '2019-04-11 13:45:54.981681', '174', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('554', '2019-04-11 13:46:02.203094', '175', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('555', '2019-04-11 13:46:07.522398', '176', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('556', '2019-04-11 13:46:17.988997', '178', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('557', '2019-04-11 13:46:23.361304', '179', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('558', '2019-04-11 13:46:28.136577', '180', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('559', '2019-04-11 13:48:54.838968', '180', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('560', '2019-04-11 13:49:00.147272', '179', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('561', '2019-04-11 13:49:07.175674', '178', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('562', '2019-04-11 13:49:11.576925', '176', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('563', '2019-04-11 13:49:15.723162', '175', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('564', '2019-04-11 13:49:21.363485', '174', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('565', '2019-04-11 13:49:25.313711', '173', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('566', '2019-04-11 13:49:29.480949', '172', 'Html object', '2', '[{\"changed\": {\"fields\": [\"remark_id\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('567', '2019-04-11 13:49:44.294797', '172', 'Html object', '2', '[{\"changed\": {\"fields\": [\"title\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('568', '2019-04-11 13:49:58.233594', '173', 'Html object', '2', '[{\"changed\": {\"fields\": [\"title\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('569', '2019-04-11 13:50:08.811199', '174', 'Html object', '2', '[{\"changed\": {\"fields\": [\"title\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('570', '2019-04-11 13:50:26.230195', '175', 'Html object', '2', '[{\"changed\": {\"fields\": [\"title\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('571', '2019-04-11 13:50:35.532727', '176', 'Html object', '2', '[{\"changed\": {\"fields\": [\"title\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('572', '2019-04-11 13:50:46.444351', '178', 'Html object', '2', '[{\"changed\": {\"fields\": [\"title\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('573', '2019-04-11 13:54:28.687063', '172', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('574', '2019-04-11 13:55:26.032343', '173', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('575', '2019-04-11 13:57:08.477202', '174', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('576', '2019-04-11 13:57:48.161472', '175', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('577', '2019-04-11 13:58:27.826741', '176', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('578', '2019-04-11 13:59:03.549784', '178', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('579', '2019-04-11 13:59:30.397320', '180', 'Html object', '2', '[{\"changed\": {\"fields\": [\"code\"]}}]', '9', '1');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'myWeb', 'category');
INSERT INTO `django_content_type` VALUES ('8', 'myWeb', 'django');
INSERT INTO `django_content_type` VALUES ('9', 'myWeb', 'html');
INSERT INTO `django_content_type` VALUES ('10', 'myWeb', 'python');
INSERT INTO `django_content_type` VALUES ('11', 'myWeb', 'tornado');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-04-01 08:28:18.913550');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-04-01 08:28:19.579588');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-04-01 08:28:19.739598');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-04-01 08:28:19.754598');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2019-04-01 08:28:19.860605');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2019-04-01 08:28:19.879606');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2019-04-01 08:28:19.912608');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2019-04-01 08:28:19.927608');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2019-04-01 08:28:19.986612');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2019-04-01 08:28:19.992612');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2019-04-01 08:28:20.009613');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2019-04-01 08:28:20.066616');
INSERT INTO `django_migrations` VALUES ('13', 'myWeb', '0001_initial', '2019-04-01 08:28:20.458639');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2019-04-01 08:28:20.510642');
INSERT INTO `django_migrations` VALUES ('15', 'myWeb', '0002_auto_20190401_2321', '2019-04-01 15:21:57.295081');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2lwy2r4okc8tum2k2s0n0b0c2tj6463q', 'YzZjOWM5ZTA3MjE5OWVjZjE1Mzg4ODliNTY4ZWYwYWVkMGNjMDQ3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YmI0YjUyYzQ5NmYxODExM2FmMDJhZjY3OWJlMWZhNGJkOTMzNGMzIn0=', '2019-04-22 07:11:10.558616');
INSERT INTO `django_session` VALUES ('dn0irqdxixh00vanvw5aq8svd35nv4a0', 'YzZjOWM5ZTA3MjE5OWVjZjE1Mzg4ODliNTY4ZWYwYWVkMGNjMDQ3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YmI0YjUyYzQ5NmYxODExM2FmMDJhZjY3OWJlMWZhNGJkOTMzNGMzIn0=', '2019-05-01 06:59:45.122175');
INSERT INTO `django_session` VALUES ('eh3sprw5uy3bb9brron4mv9hepdvg1rz', 'YzZjOWM5ZTA3MjE5OWVjZjE1Mzg4ODliNTY4ZWYwYWVkMGNjMDQ3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YmI0YjUyYzQ5NmYxODExM2FmMDJhZjY3OWJlMWZhNGJkOTMzNGMzIn0=', '2019-04-30 13:35:54.175689');
INSERT INTO `django_session` VALUES ('rzwaln747sal5kz3991nqou1nrll8cfs', 'YzZjOWM5ZTA3MjE5OWVjZjE1Mzg4ODliNTY4ZWYwYWVkMGNjMDQ3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YmI0YjUyYzQ5NmYxODExM2FmMDJhZjY3OWJlMWZhNGJkOTMzNGMzIn0=', '2019-04-23 07:43:34.191287');
INSERT INTO `django_session` VALUES ('u5sk3az429fj03nn676203x7npzp0gcj', 'YzZjOWM5ZTA3MjE5OWVjZjE1Mzg4ODliNTY4ZWYwYWVkMGNjMDQ3Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YmI0YjUyYzQ5NmYxODExM2FmMDJhZjY3OWJlMWZhNGJkOTMzNGMzIn0=', '2019-04-15 12:08:19.124559');

-- ----------------------------
-- Table structure for `myweb_category`
-- ----------------------------
DROP TABLE IF EXISTS `myweb_category`;
CREATE TABLE `myweb_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of myweb_category
-- ----------------------------
INSERT INTO `myweb_category` VALUES ('1', 'Python', '0');
INSERT INTO `myweb_category` VALUES ('2', 'Html', '0');
INSERT INTO `myweb_category` VALUES ('3', 'Django', '0');
INSERT INTO `myweb_category` VALUES ('4', 'Tornado', '0');

-- ----------------------------
-- Table structure for `myweb_django`
-- ----------------------------
DROP TABLE IF EXISTS `myweb_django`;
CREATE TABLE `myweb_django` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `images` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pdf` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(3000) CHARACTER SET utf8 DEFAULT NULL,
  `remark_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`),
  KEY `myWeb_django_category_id_0a53a486_fk_myWeb_category_id` (`category_id`) USING BTREE,
  CONSTRAINT `myweb_django_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `myweb_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of myweb_django
-- ----------------------------
INSERT INTO `myweb_django` VALUES ('1', 'Django简介', null, 'http://198.13.39.141/pdf/Django/1/django简介.pdf', null, 'Django基本流程', '0', '3');
INSERT INTO `myweb_django` VALUES ('2', '安装', null, 'http://198.13.39.141/pdf/Django/1/Django安装.pdf', null, 'Django基本流程', '0', '3');
INSERT INTO `myweb_django` VALUES ('3', '创建项目', null, 'http://198.13.39.141/pdf/Django/1/创建项目.pdf', null, 'Django基本流程', '0', '3');
INSERT INTO `myweb_django` VALUES ('4', '基本操作-设计表结构与配置数据库', null, 'http://198.13.39.141/pdf/Django/1/基本操作-1.pdf', null, 'Django基本流程', '0', '3');
INSERT INTO `myweb_django` VALUES ('5', '基本操作-创建应用与激活应用', null, 'http://198.13.39.141/pdf/Django/1/基本操作-2.pdf', null, 'Django基本流程', '0', '3');
INSERT INTO `myweb_django` VALUES ('6', '基本操作-定义模型', null, 'http://198.13.39.141/pdf/Django/1/基本操作-3.pdf', null, 'Django基本流程', '0', '3');
INSERT INTO `myweb_django` VALUES ('7', '基本操作-生成数据表、测试数据与启动服务器', null, 'http://198.13.39.141/pdf/Django/1/基本操作-4.pdf', null, 'Django基本流程', '0', '3');
INSERT INTO `myweb_django` VALUES ('8', '基本操作-Admin站点管理', null, 'http://198.13.39.141/pdf/Django/1/基本操作-5.pdf', null, 'Django基本流程', '0', '3');
INSERT INTO `myweb_django` VALUES ('9', '基本操作-视图与模板的基本使用', null, 'http://198.13.39.141/pdf/Django/1/基本操作-6.pdf', null, 'Django基本流程', '0', '3');
INSERT INTO `myweb_django` VALUES ('10', 'Django框架流程梳理', null, 'http://198.13.39.141/pdf/Django/2/01-流程梳理.pdf', null, 'Django中的模型', '0', '3');
INSERT INTO `myweb_django` VALUES ('11', 'Django模型简介', null, 'http://198.13.39.141/pdf/Django/2/模型-1.pdf', null, 'Django中的模型', '0', '3');
INSERT INTO `myweb_django` VALUES ('12', 'Django模型-ORM', null, 'http://198.13.39.141/pdf/Django/2/模型-2.pdf', null, 'Django中的模型', '0', '3');
INSERT INTO `myweb_django` VALUES ('13', 'Django模型-定义模型', null, 'http://198.13.39.141/pdf/Django/2/模型-3.pdf', null, 'Django中的模型', '0', '3');
INSERT INTO `myweb_django` VALUES ('14', '定义属性', null, null, 'http://198.13.39.141/txt/Django/2/定义属性.txt', 'Django中的模型', '0', '3');
INSERT INTO `myweb_django` VALUES ('15', 'Django模型-模型成员', null, 'http://198.13.39.141/pdf/Django/2/模型-4.pdf', null, 'Django中的模型', '0', '3');
INSERT INTO `myweb_django` VALUES ('16', 'Django模型-模型查询', null, 'http://198.13.39.141/pdf/Django/2/模型-5.pdf', null, 'Django中的模型', '0', '3');
INSERT INTO `myweb_django` VALUES ('17', '视图概述', null, 'http://198.13.39.141/pdf/Django/3/视图概述.pdf', null, 'Django中的视图', '0', '3');
INSERT INTO `myweb_django` VALUES ('18', '响应过程', 'http://198.13.39.141/images/Django/响应过程.png', null, null, 'Django中的视图', '0', '3');
INSERT INTO `myweb_django` VALUES ('19', '视图-URL配置', null, 'http://198.13.39.141/pdf/Django/3/视图-1.pdf', null, 'Django中的视图', '0', '3');
INSERT INTO `myweb_django` VALUES ('20', '视图-视图函数', null, 'http://198.13.39.141/pdf/Django/3/视图-2.pdf', null, 'Django中的视图', '0', '3');
INSERT INTO `myweb_django` VALUES ('21', '视图-HttpRequest对象', null, 'http://198.13.39.141/pdf/Django/3/视图-3.pdf', null, 'Django中的视图', '0', '3');
INSERT INTO `myweb_django` VALUES ('22', '视图-HttpResponse对象', null, 'http://198.13.39.141/pdf/Django/3/视图-4.pdf', null, 'Django中的视图', '0', '3');
INSERT INTO `myweb_django` VALUES ('23', '视图-状态保持', null, 'http://198.13.39.141/pdf/Django/3/视图-5.pdf', null, 'Django中的视图', '0', '3');
INSERT INTO `myweb_django` VALUES ('24', '模板概述', null, 'http://198.13.39.141/pdf/Django/4/模板概述.pdf', null, 'Django中的模板', '0', '3');
INSERT INTO `myweb_django` VALUES ('25', '模板-定义模板', null, 'http://198.13.39.141/pdf/Django/4/模板-1.pdf', null, 'Django中的模板', '0', '3');
INSERT INTO `myweb_django` VALUES ('26', '模板-模板继承', null, 'http://198.13.39.141/pdf/Django/4/模板-2.pdf', null, 'Django中的模板', '0', '3');
INSERT INTO `myweb_django` VALUES ('27', '模板-HTML转义与CSRF', null, 'http://198.13.39.141/pdf/Django/4/模板-3.pdf', null, 'Django中的模板', '0', '3');
INSERT INTO `myweb_django` VALUES ('28', '模板-验证码', null, 'http://198.13.39.141/pdf/Django/4/模板-4.pdf', null, 'Django中的模板', '0', '3');
INSERT INTO `myweb_django` VALUES ('29', '静态文件', null, 'http://198.13.39.141/pdf/Django/5/高级扩展-1.pdf', null, 'Django的高级使用', '0', '3');
INSERT INTO `myweb_django` VALUES ('30', '中间件', null, 'http://198.13.39.141/pdf/Django/5/高级扩展-2.pdf', null, 'Django的高级使用', '0', '3');
INSERT INTO `myweb_django` VALUES ('31', '图片上传', null, 'http://198.13.39.141/pdf/Django/5/高级扩展-3.pdf', null, 'Django的高级使用', '0', '3');
INSERT INTO `myweb_django` VALUES ('32', '分页', null, 'http://198.13.39.141/pdf/Django/5/高级扩展-4.pdf', null, 'Django的高级使用', '0', '3');
INSERT INTO `myweb_django` VALUES ('33', 'ajax', null, 'http://198.13.39.141/pdf/Django/5/高级扩展-5.pdf', null, 'Django的高级使用', '0', '3');
INSERT INTO `myweb_django` VALUES ('34', '富文本', null, 'http://198.13.39.141/pdf/Django/5/高级扩展-6.pdf', null, 'Django的高级使用', '0', '3');
INSERT INTO `myweb_django` VALUES ('35', 'celery', null, 'http://198.13.39.141/pdf/Django/5/高级扩展-7.pdf', null, 'Django的高级使用', '0', '3');
INSERT INTO `myweb_django` VALUES ('36', 'GitHub', null, 'http://198.13.39.141/pdf/Django/6/Git.pdf', null, 'GitHub的使用', '0', '3');

-- ----------------------------
-- Table structure for `myweb_html`
-- ----------------------------
DROP TABLE IF EXISTS `myweb_html`;
CREATE TABLE `myweb_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `images` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pdf` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(3000) CHARACTER SET utf8 DEFAULT NULL,
  `remark_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `myWeb_html_category_id_e9490371_fk_myWeb_category_id` (`category_id`) USING BTREE,
  CONSTRAINT `myweb_html_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `myweb_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of myweb_html
-- ----------------------------
INSERT INTO `myweb_html` VALUES ('1', 'HTML5简介', null, 'http://198.13.39.141/pdf/HTML/1/HTML5简介.pdf', null, 'HTML与CSS基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('2', '基本标签', null, null, 'http://198.13.39.141/txt/HTML/1/基本标签.txt', 'HTML与CSS基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('3', '块级标签结构的搭建', null, 'http://198.13.39.141/pdf/HTML/1/块级标签结构的搭建.pdf', null, 'HTML与CSS基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('4', 'CSS样式', null, null, 'http://198.13.39.141/txt/HTML/1/CSS样式.txt', 'HTML与CSS基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('5', '导航栏', null, null, 'http://198.13.39.141/txt/HTML/1/导航栏.txt', 'HTML与CSS基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('6', '页面布局', null, null, 'http://198.13.39.141/txt/HTML/1/页面布局.txt', 'HTML与CSS基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('7', '选择器', null, 'http://198.13.39.141/pdf/HTML/1/选择器.pdf', 'http://198.13.39.141/txt/HTML/1/选择器.txt', 'HTML与CSS基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('8', '列表', null, 'http://198.13.39.141/pdf/HTML/1/列表.pdf', 'http://198.13.39.141/txt/HTML/1/列表.txt', 'HTML与CSS基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('9', '文本表现', null, 'http://198.13.39.141/pdf/HTML/1/文本表现.pdf', null, 'HTML与CSS基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('10', '盒子模型', null, 'http://198.13.39.141/pdf/HTML/2/盒子模型.pdf', 'http://198.13.39.141/txt/HTML/2/盒子模型.txt', 'HTML与CSS提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('11', '表单表格', null, 'http://198.13.39.141/pdf/HTML/2/表单表格.pdf', 'http://198.13.39.141/txt/HTML/2/表单表格.txt', 'HTML与CSS提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('12', '浮动', null, 'http://198.13.39.141/pdf/HTML/2/浮动.pdf', 'http://198.13.39.141/txt/HTML/2/浮动.txt', 'HTML与CSS提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('13', '定位', null, 'http://198.13.39.141/pdf/HTML/2/定位.pdf', 'http://198.13.39.141/txt/HTML/2/定位.txt', 'HTML与CSS提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('14', '浏览器表现标准规范', null, 'http://198.13.39.141/pdf/HTML/2/浏览器表现标准规范.pdf', null, 'HTML与CSS提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('15', 'CSS统筹', null, 'http://198.13.39.141/pdf/HTML/2/css统筹.pdf', null, 'HTML与CSS提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('16', 'JavaScript简介', null, 'http://198.13.39.141/pdf/HTML/3/JavaScript简介.pdf', null, 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('17', 'HTML中添加JS代码、注释方法、输出方式', null, null, 'http://198.13.39.141/txt/HTML/3/HTML中添加JS代码、注释方法、输出方式.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('18', 'document输出标签', null, null, 'http://198.13.39.141/txt/HTML/3/document输出标签.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('19', 'JS中的数据类型', null, null, 'http://198.13.39.141/txt/HTML/3/JS中的数据类型.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('20', '标识符', null, null, 'http://198.13.39.141/txt/HTML/3/标识符.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('21', 'JS中的保留字', 'http://198.13.39.141/images/HTML/jsbase/js中的保留字.png', null, null, 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('22', 'JS中的关键字', 'http://198.13.39.141/images/HTML/jsbase/js中的关键字.png', null, null, 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('23', '变量与常量', null, null, 'http://198.13.39.141/txt/HTML/3/变量与常量.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('24', '数字和查看类型操作符typeof', null, null, 'http://198.13.39.141/txt/HTML/3/数字和查看类型操作符typeof.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('25', '同一命名空间', null, null, 'http://198.13.39.141/txt/HTML/3/同一命名空间.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('26', '字符串', null, null, 'http://198.13.39.141/txt/HTML/3/字符串.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('27', '布尔值', null, null, 'http://198.13.39.141/txt/HTML/3/布尔值.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('28', 'falsy值和truthy值', null, null, 'http://198.13.39.141/txt/HTML/3/falsy值和truthy值.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('29', '其它基本类型转换成Number类型', null, null, 'http://198.13.39.141/txt/HTML/3/其它基本类型转换成Number类型.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('30', '其它基本类型转换成String类型', null, null, 'http://198.13.39.141/txt/HTML/3/其它基本类型转换成String类型.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('31', '其它基本类型转换成Boolean类型', null, null, 'http://198.13.39.141/txt/HTML/3/其它基本类型转换成Boolean类型.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('32', 'isNaN()函数和isFinite()函数', null, null, 'http://198.13.39.141/txt/HTML/3/isNaN()函数和isFinite()函数.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('33', 'prompt输入框', null, null, 'http://198.13.39.141/txt/HTML/3/prompt输入框.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('34', '算数运算符和算数运算表达式', null, null, 'http://198.13.39.141/txt/HTML/3/算数运算符和算数运算表达式.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('35', '赋值运算符和赋值运算表达式', null, null, 'http://198.13.39.141/txt/HTML/3/赋值运算符和赋值运算表达式.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('36', '自增自减运算符和自增自减运算表达式', null, null, 'http://198.13.39.141/txt/HTML/3/自增自减运算符和自增自减运算表达式.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('37', '复合运算符', null, null, 'http://198.13.39.141/txt/HTML/3/复合运算符.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('38', 'if语句', null, null, 'http://198.13.39.141/txt/HTML/3/if语句.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('39', 'if-else语句', null, null, 'http://198.13.39.141/txt/HTML/3/if-else语句.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('40', '关系运算符和关系运算表达式', null, null, 'http://198.13.39.141/txt/HTML/3/关系运算符和关系运算表达式.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('41', '三目运算符和三目运算表达式', null, null, 'http://198.13.39.141/txt/HTML/3/三目运算符和三目运算表达式.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('42', '逻辑与运算符', null, null, 'http://198.13.39.141/txt/HTML/3/逻辑与运算符.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('43', '逻辑或运算符', null, null, 'http://198.13.39.141/txt/HTML/3/逻辑或运算符.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('44', '逻辑非运算符', null, null, 'http://198.13.39.141/txt/HTML/3/逻辑非运算符.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('45', 'if-else-if语句', null, null, 'http://198.13.39.141/txt/HTML/3/if-else-if语句.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('46', 'switch语句与break语句', null, null, 'http://198.13.39.141/txt/HTML/3/switch语句与break语句.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('47', 'while语句', null, null, 'http://198.13.39.141/txt/HTML/3/while语句.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('48', 'do-while语句', null, null, 'http://198.13.39.141/txt/HTML/3/do-while语句.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('49', 'for语句', null, null, 'http://198.13.39.141/txt/HTML/3/for语句.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('50', 'break语句', null, null, 'http://198.13.39.141/txt/HTML/3/break语句.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('51', 'continue语句', null, null, 'http://198.13.39.141/txt/HTML/3/continue语句.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('52', 'for-in语句', null, null, 'http://198.13.39.141/txt/HTML/3/for-in语句.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('53', '函数概述', null, null, 'http://198.13.39.141/txt/HTML/3/函数概述.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('54', '最简单的函数(无参无返回值)', null, null, 'http://198.13.39.141/txt/HTML/3/最简单的函数(无参无返回值).txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('55', '函数的参数', null, null, 'http://198.13.39.141/txt/HTML/3/函数的参数.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('56', '函数的返回值', null, null, 'http://198.13.39.141/txt/HTML/3/函数的返回值.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('57', '变量的作用域', null, null, 'http://198.13.39.141/txt/HTML/3/变量的作用域.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('58', '变量提升', null, null, 'http://198.13.39.141/txt/HTML/3/变量提升.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('59', '函数也是一种数据', null, null, 'http://198.13.39.141/txt/HTML/3/函数也是一种数据.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('60', '匿名函数', null, null, 'http://198.13.39.141/txt/HTML/3/匿名函数.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('61', '即时函数', null, null, 'http://198.13.39.141/txt/HTML/3/即时函数.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('62', '认识数组', null, null, 'http://198.13.39.141/txt/HTML/3/认识数组.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('63', '创建数组', null, null, 'http://198.13.39.141/txt/HTML/3/创建数组.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('64', '数组元素的访问(赋值与取值)', null, null, 'http://198.13.39.141/txt/HTML/3/数组元素的访问(赋值与取值).txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('65', '数组长度length、元素的更新、增加和删除', null, null, 'http://198.13.39.141/txt/HTML/3/数组长度length、元素的更新、增加和删除.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('66', '数组的遍历', null, null, 'http://198.13.39.141/txt/HTML/3/数组的遍历.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('67', '数组中常用的方法', null, null, 'http://198.13.39.141/txt/HTML/3/数组中常用的方法.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('68', '数组排序', null, null, 'http://198.13.39.141/txt/HTML/3/数组排序.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('69', '数组的数组(多维数组)', null, null, 'http://198.13.39.141/txt/HTML/3/数组的数组(多维数组).txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('70', '字符串', null, null, 'http://198.13.39.141/txt/HTML/3/字符串1.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('71', '字符串的长度', null, null, 'http://198.13.39.141/txt/HTML/3/字符串的长度.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('72', '字符串的常用方法', null, null, 'http://198.13.39.141/txt/HTML/3/字符串的常用方法.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('73', 'Math对象', null, null, 'http://198.13.39.141/txt/HTML/3/Math对象.txt', 'JavaScript基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('74', '了解时间', null, null, 'http://198.13.39.141/txt/HTML/4/了解时间.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('75', 'Date', null, null, 'http://198.13.39.141/txt/HTML/4/Date.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('76', 'Date对象的方法', null, null, 'http://198.13.39.141/txt/HTML/4/Date对象的方法.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('77', 'Date对象间的运算', null, null, 'http://198.13.39.141/txt/HTML/4/Date对象间的运算.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('78', 'BOM简介', null, null, 'http://198.13.39.141/txt/HTML/4/BOM简介.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('79', 'window中常用的方法', null, null, 'http://198.13.39.141/txt/HTML/4/window中常用的方法.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('80', 'Window常用方法open特性', 'http://198.13.39.141/images/HTML/jspromote/window常用方法open特性.png', null, null, 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('81', 'window中常用的事件-onload加载事件和onunload卸载事件', null, null, 'http://198.13.39.141/txt/HTML/4/window中常用的事件-onload加载事件和onunload卸载事件.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('82', 'window中常用的事件-onscroll滚动事件', null, null, 'http://198.13.39.141/txt/HTML/4/window中常用的事件-onscroll滚动事件.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('83', 'window中常用的事件-onresize窗口变化事件', null, null, 'http://198.13.39.141/txt/HTML/4/window中常用的事件-onresize窗口变化事件.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('84', '定时器-间歇性定时器', null, null, 'http://198.13.39.141/txt/HTML/4/定时器-间歇性定时器.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('85', '定时器-延时定时器', null, null, 'http://198.13.39.141/txt/HTML/4/定时器-延时定时器.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('86', '认识DOM', null, null, 'http://198.13.39.141/txt/HTML/4/认识DOM.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('87', 'DOM节点分类', 'http://198.13.39.141/images/HTML/jspromote/DOM节点分类.png', null, null, 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('88', 'DOM节点关系', 'http://198.13.39.141/images/HTML/jspromote/DOM节点关系.png', null, null, 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('89', '获取标签(元素)节点', null, null, 'http://198.13.39.141/txt/HTML/4/获取标签(元素)节点.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('90', '获取属性节点', null, null, 'http://198.13.39.141/txt/HTML/4/获取属性节点.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('91', '获取文本节点', null, null, 'http://198.13.39.141/txt/HTML/4/获取文本节点.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('92', '行间样式表的读写', null, null, 'http://198.13.39.141/txt/HTML/4/行间样式表的读写.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('93', '内部样式表与外部样式表的读写', null, null, 'http://198.13.39.141/txt/HTML/4/内部样式表与外部样式表的读写.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('94', 'getComputedStyle与style的区别', 'http://198.13.39.141/images/HTML/jspromote/getComputedStyle与style的区别.png', null, null, 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('95', '自由飞翔的div', null, null, 'http://198.13.39.141/txt/HTML/4/自由飞翔的div.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('96', '节点常用属性', null, null, 'http://198.13.39.141/txt/HTML/4/节点常用属性.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('97', '节点属性nodeName、nodeType、nodeValue', 'http://198.13.39.141/images/HTML/jspromote/节点属性nodeName、nodeType、nodeValue.png', null, null, 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('98', 'DOM节点动态操作', null, null, 'http://198.13.39.141/txt/HTML/4/DOM节点动态操作.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('99', '事件处理程序', null, null, 'http://198.13.39.141/txt/HTML/4/事件处理程序.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('100', '事件类型', 'http://198.13.39.141/images/HTML/jspromote/事件类型.png', null, null, 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('101', '焦点事件', null, null, 'http://198.13.39.141/txt/HTML/4/焦点事件.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('102', '鼠标事件-单击与双击', null, null, 'http://198.13.39.141/txt/HTML/4/鼠标事件-单击与双击.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('103', '鼠标事件-mouseover、mouserout、mousedown、mouseup、mousemo', null, null, 'http://198.13.39.141/txt/HTML/4/鼠标事件-mouseover、mouserout、mousedown、mouseup、mousemove.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('104', '键盘事件', null, null, 'http://198.13.39.141/txt/HTML/4/键盘事件.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('105', '键盘事件应用下例子', null, null, 'http://198.13.39.141/txt/HTML/4/键盘事件应用下例子.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('106', '事件流的概念', 'http://198.13.39.141/images/HTML/jspromote/事件流的概念.png', null, null, 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('107', '事件流', 'http://198.13.39.141/images/HTML/jspromote/事件流.png', null, null, 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('108', '验证事件流', null, null, 'http://198.13.39.141/txt/HTML/4/验证事件流.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('109', '事件对象(阻止冒泡、阻止默认行为)', null, null, 'http://198.13.39.141/txt/HTML/4/事件对象(阻止冒泡、阻止默认行为).txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('110', '事件的常用属性', 'http://198.13.39.141/images/HTML/jspromote/事件的常用属性.png', null, null, 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('111', '鼠标事件的event对象', 'http://198.13.39.141/images/HTML/jspromote/鼠标事件的event对象.png', null, 'http://198.13.39.141/txt/HTML/4/鼠标事件的event对象.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('112', '拖拽效果', null, null, 'http://198.13.39.141/txt/HTML/4/拖拽效果.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('113', '正则表达式', null, null, 'http://198.13.39.141/txt/HTML/4/正则表达式.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('114', '创建正则表达式对象', null, null, 'http://198.13.39.141/txt/HTML/4/创建正则表达式对象.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('115', 'RegExp的方法', null, null, 'http://198.13.39.141/txt/HTML/4/RegExp的方法.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('116', 'String类型中的正则表达式的应用', null, null, 'http://198.13.39.141/txt/HTML/4/String类型中的正则表达式的应用.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('117', '正则表达式的元字符', null, null, 'http://198.13.39.141/txt/HTML/4/正则表达式的元字符.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('118', '常用的正则表达式', null, null, 'http://198.13.39.141/txt/HTML/4/常用的正则表达式.txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('119', '碰撞检测V1(边界)', null, null, 'http://198.13.39.141/txt/HTML/4/碰撞检测V1(边界).txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('120', '碰撞检测V2(矩形)', null, null, 'http://198.13.39.141/txt/HTML/4/碰撞检测V2(矩形).txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('121', '碰撞检测V3(圆形)', null, null, 'http://198.13.39.141/txt/HTML/4/碰撞检测V3(圆形).txt', 'JavaScript提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('122', 'jQuery简介', null, 'http://198.13.39.141/pdf/HTML/5/jQuery简介.pdf', null, 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('123', '我的第一个jQuery脚本', null, null, 'http://198.13.39.141/txt/HTML/5/我的第一个jQuery脚本.txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('124', 'jQuery选择器简介', null, 'http://198.13.39.141/pdf/HTML/5/选择器.pdf', null, 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('125', 'jQuery对象和DOM对象', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对象和DOM对象.txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('126', 'jQuery选择器(基本选择器之ID选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(基本选择器之ID选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('127', 'jQuery选择器(基本选择器之元素选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(基本选择器之元素选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('128', 'jQuery选择器(基本选择器之类名选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(基本选择器之类名选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('129', 'jQuery选择器(基本选择器之复合选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(基本选择器之复合选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('130', 'jQuery选择器(基本选择器之通配符选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(基本选择器之通配符选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('131', 'jQuery选择器(层次选择器之ancestor descendant选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(层次选择器之ancestor descendant选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('132', 'jQuery选择器(层次选择器之parentchild选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(层次选择器之parentchild选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('133', 'jQuery选择器(层次选择器之prev+next选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(层次选择器之prev+next选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('134', 'jQuery选择器(层次选择器之prev～siblings选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(层次选择器之prev～siblings选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('135', 'jQuery选择器(过滤选择器之简单过滤器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(过滤选择器之简单过滤器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('136', 'jQuery选择器(过滤选择器之内容过滤器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(过滤选择器之内容过滤器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('137', 'jQuery选择器(过滤选择器之可见性过滤器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(过滤选择器之可见性过滤器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('138', 'jQuery选择器(过滤选择器之表单对象的属性过滤器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(过滤选择器之表单对象的属性过滤器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('139', 'jQuery选择器(过滤选择器之表单子元素过滤器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(过滤选择器之表单子元素过滤器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('140', 'jQuery选择器(属性选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(属性选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('141', 'jQuery选择器(表单选择器)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器(表单选择器).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('142', 'jQuery选择器中的注意事项(含有特殊符号)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器中的注意事项(含有特殊符号).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('143', 'jQuery选择器中的注意事项(含有空格)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery选择器中的注意事项(含有空格).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('144', 'jQuery对元素内容操作', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对元素内容操作.txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('145', 'jQuery对元素内容操作(对文本内容操作)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对元素内容操作(对文本内容操作).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('146', 'jQuery对元素内容操作(对HTML内容操作)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对元素内容操作(对HTML内容操作).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('147', 'jQuery对元素值操作', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对元素值操作.txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('148', 'jQuery对DOM节点进行操作(创建节点)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对DOM节点进行操作(创建节点).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('149', 'jQuery对DOM节点进行操作(插入节点之在元素内部插入)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对DOM节点进行操作(插入节点之在元素内部插入).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('150', 'jQuery对DOM节点进行操作(插入节点之在元素外部插入)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对DOM节点进行操作(插入节点之在元素外部插入).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('151', 'jQuery对DOM节点进行操作(删除节点)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对DOM节点进行操作(删除节点).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('152', 'jQuery对DOM节点进行操作(复制节点)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对DOM节点进行操作(复制节点).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('153', 'jQuery对DOM节点进行操作(替换节点)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对DOM节点进行操作(替换节点).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('154', 'jQuery对DOM节点进行操作(遍历节点)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对DOM节点进行操作(遍历节点).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('155', 'jQuery对DOM节点进行操作(包裹节点)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对DOM节点进行操作(包裹节点).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('156', 'jQuery对元素的CSS样式操作(通过修改CSS类实现)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对元素的CSS样式操作(通过修改CSS类实现).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('157', 'jQuery对元素的CSS样式操作(通过修改CSS属性实现)', null, null, 'http://198.13.39.141/txt/HTML/5/jQuery对元素的CSS样式操作(通过修改CSS属性实现).txt', 'JQuery基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('158', 'jQuery中的事件处理(页面加载响应事件)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的事件处理(页面加载响应事件).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('159', 'jQuery中的事件', 'http://198.13.39.141/images/HTML/jqpromote/jQuery中的事件.png', null, null, 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('160', 'jQuery中的事件处理(事件绑定)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的事件处理(事件绑定).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('161', 'jQuery中的事件处理(移除绑定)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的事件处理(移除绑定).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('162', 'jQuery中的事件处理(绑定一次性事件处理)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的事件处理(绑定一次性事件处理).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('163', 'jQuery中的事件处理(模拟用户的操作触发事件)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的事件处理(模拟用户的操作触发事件).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('164', 'jQuery中的事件处理(模仿悬停事件)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的事件处理(模仿悬停事件).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('165', 'jQuery中的事件处理(事件对象)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的事件处理(事件对象).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('166', 'jQuery中的事件处理(阻止事件冒泡、阻止默认行为)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的事件处理(阻止事件冒泡、阻止默认行为).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('167', 'jQuery中的动画效果(隐藏与显示)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的动画效果(隐藏与显示).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('168', 'jQuery中的动画效果(切换可见状态)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的动画效果(切换可见状态).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('169', 'jQuery中的动画效果(淡入淡出效果)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的动画效果(淡入淡出效果).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('170', 'jQuery中的动画效果(滑动显示匹配的元素、滑动隐藏匹配的元素、通过高度的变化动态切换元素的可见性', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中的动画效果(滑动显示匹配的元素、滑动隐藏匹配的元素、通过高度的变化动态切换元素的可见性).txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('171', 'jQuery自定义动画效果', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery自定义动画效果.txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('172', 'jQuery中Ajax应用(load方法)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中Ajax应用-1.txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('173', 'jQuery中Ajax应用(使用get或post方法请求数据)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中Ajax应用-2.txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('174', 'jQuery中Ajax应用(getScript方法加载js文件)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中Ajax应用-3.txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('175', 'jQuery中Ajax应用(getJSON方法加载Json文件)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中Ajax应用-4.txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('176', 'jQuery中Ajax应用(使用ajax方法请求数据)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中Ajax应用-5.txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('177', '常用参数', 'http://198.13.39.141/images/HTML/jqpromote/常用参数.png', null, null, 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('178', 'jQuery中Ajax应用(使用serialize方法序列化表单)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中Ajax应用-6.txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('179', 'jQuery中Ajax应用(Ajax全局事件)', 'http://198.13.39.141/images/HTML/jqpromote/Ajax全局事件.png', null, null, 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('180', 'jQuery中Ajax应用(ajaxStart与ajaxStop全局事件)', null, null, 'http://198.13.39.141/txt/HTML/6/jQuery中Ajax应用-7.txt', 'JQuery提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('181', 'HTML5入门', null, 'http://198.13.39.141/pdf/HTML/7/html5入门.pdf', null, 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('182', 'CSS3新特性', null, 'http://198.13.39.141/pdf/HTML/7/CSS3新特性.pdf', null, 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('183', '移动端基础', null, 'http://198.13.39.141/pdf/HTML/7/移动端基础.pdf', null, 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('184', 'datalist', null, null, 'http://198.13.39.141/txt/HTML/7/datalist.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('185', 'mark', null, null, 'http://198.13.39.141/txt/HTML/7/mark.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('186', 'progress', null, null, 'http://198.13.39.141/txt/HTML/7/progress.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('187', 'time', null, null, 'http://198.13.39.141/txt/HTML/7/time.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('188', 'input', null, null, 'http://198.13.39.141/txt/HTML/7/input.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('189', 'input_attr', null, null, 'http://198.13.39.141/txt/HTML/7/input_attr.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('190', '属性选择器', null, null, 'http://198.13.39.141/txt/HTML/7/属性选择器.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('191', '伪元素选择器', null, null, 'http://198.13.39.141/txt/HTML/7/伪元素选择器.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('192', '伪类选择器', null, null, 'http://198.13.39.141/txt/HTML/7/伪类选择器.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('193', 'before演示', null, null, 'http://198.13.39.141/txt/HTML/7/before演示.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('194', '结构性伪类选择器', null, null, 'http://198.13.39.141/txt/HTML/7/结构性伪类选择器.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('195', 'target', null, null, 'http://198.13.39.141/txt/HTML/7/target.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('196', '结构性伪类选择器02', null, null, 'http://198.13.39.141/txt/HTML/7/结构性伪类选择器02.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('197', 'UI状态伪类选择器', null, null, 'http://198.13.39.141/txt/HTML/7/UI状态伪类选择器.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('198', '通用兄弟选择器', null, null, 'http://198.13.39.141/txt/HTML/7/通用兄弟选择器.txt', 'HTML5与CSS3基础', '0', '2');
INSERT INTO `myweb_html` VALUES ('199', '文字阴影', null, null, 'http://198.13.39.141/txt/HTML/8/文字阴影.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('200', '文字换行', null, null, 'http://198.13.39.141/txt/HTML/8/文字换行.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('201', '文字描边', null, null, 'http://198.13.39.141/txt/HTML/8/文字描边.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('202', '盒子阴影', null, null, 'http://198.13.39.141/txt/HTML/8/盒子阴影.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('203', '圆角', null, null, 'http://198.13.39.141/txt/HTML/8/圆角.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('204', '图片边框', null, null, 'http://198.13.39.141/txt/HTML/8/图片边框.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('205', 'background-size', null, null, 'http://198.13.39.141/txt/HTML/8/background-size.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('206', 'background-origin', null, null, 'http://198.13.39.141/txt/HTML/8/background-origin.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('207', 'background-clip', null, null, 'http://198.13.39.141/txt/HTML/8/background-clip.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('208', '线性渐变', null, null, 'http://198.13.39.141/txt/HTML/8/线性渐变.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('209', '文字渐变色', null, null, 'http://198.13.39.141/txt/HTML/8/文字渐变色.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('210', '径向渐变', null, null, 'http://198.13.39.141/txt/HTML/8/径向渐变.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('211', '重复渐变', null, null, 'http://198.13.39.141/txt/HTML/8/重复渐变.txt', 'HTML5与CSS3提升', '0', '2');
INSERT INTO `myweb_html` VALUES ('212', 'flex', null, null, 'http://198.13.39.141/txt/HTML/8/flex.txt', 'HTML5与CSS3提升', '0', '2');

-- ----------------------------
-- Table structure for `myweb_python`
-- ----------------------------
DROP TABLE IF EXISTS `myweb_python`;
CREATE TABLE `myweb_python` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `images` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pdf` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(3000) CHARACTER SET utf8 DEFAULT NULL,
  `remark_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `myWeb_python_category_id_6d19de80_fk_myWeb_category_id` (`category_id`) USING BTREE,
  CONSTRAINT `myweb_python_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `myweb_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of myweb_python
-- ----------------------------
INSERT INTO `myweb_python` VALUES ('1', 'Python概述', null, 'http://198.13.39.141/pdf/Python/1/Python概述.pdf', null, '第一个python程序与数据存储', '0', '1');
INSERT INTO `myweb_python` VALUES ('2', '第一个Python程序', null, 'http://198.13.39.141/pdf/Python/1/第一个Python程序.pdf', null, '第一个python程序与数据存储', '0', '1');
INSERT INTO `myweb_python` VALUES ('3', '软件的安装', null, 'http://198.13.39.141/pdf/Python/1/软件安装.pdf', null, '第一个python程序与数据存储', '0', '1');
INSERT INTO `myweb_python` VALUES ('4', '数据的存储', null, 'http://198.13.39.141/pdf/Python/1/数据的存储.pdf', 'http://198.13.39.141/txt/Python/1/数据的存储.txt', '第一个python程序与数据存储', '0', '1');
INSERT INTO `myweb_python` VALUES ('5', '注释', null, 'http://198.13.39.141/pdf/Python/2/注释.pdf', null, 'print、input、变量和运算符', '0', '1');
INSERT INTO `myweb_python` VALUES ('6', 'print输出', null, 'http://198.13.39.141/pdf/Python/2/print输出.pdf', null, 'print、input、变量和运算符', '0', '1');
INSERT INTO `myweb_python` VALUES ('7', 'input输入', null, 'http://198.13.39.141/pdf/Python/2/input输入.pdf', null, 'print、input、变量和运算符', '0', '1');
INSERT INTO `myweb_python` VALUES ('8', 'python数据类型', null, 'http://198.13.39.141/pdf/Python/2/Python数据类型.pdf', null, 'print、input、变量和运算符', '0', '1');
INSERT INTO `myweb_python` VALUES ('9', '标识符', null, 'http://198.13.39.141/pdf/Python/2/标识符.pdf', null, 'print、input、变量和运算符', '0', '1');
INSERT INTO `myweb_python` VALUES ('10', '变量与常量', null, 'http://198.13.39.141/pdf/Python/2/变量与常量.pdf', 'http://198.13.39.141/txt/Python/2/变量与常量.txt', 'print、input、变量和运算符', '0', '1');
INSERT INTO `myweb_python` VALUES ('11', '数字类型（Number）', null, 'http://198.13.39.141/pdf/Python/2/Number(数字).pdf', 'http://198.13.39.141/txt/Python/2/数字类型（Number）.txt', 'print、input、变量和运算符', '0', '1');
INSERT INTO `myweb_python` VALUES ('12', '运算符与表达式', null, 'http://198.13.39.141/pdf/Python/2/运算符与表达式.pdf', 'http://198.13.39.141/txt/Python/2/运算符与表达式.txt', 'print、input、变量和运算符', '0', '1');
INSERT INTO `myweb_python` VALUES ('13', '运算符与表达式的续集', null, null, 'http://198.13.39.141/txt/Python/3/运算符与表达式的续集.txt', '字符串与循环中的while', '0', '1');
INSERT INTO `myweb_python` VALUES ('14', 'String(字符串)', null, null, 'http://198.13.39.141/txt/Python/3/String(字符串).txt', '字符串与循环中的while', '0', '1');
INSERT INTO `myweb_python` VALUES ('15', 'while语句', null, null, 'http://198.13.39.141/txt/Python/3/while语句.txt', '字符串与循环中的while', '0', '1');
INSERT INTO `myweb_python` VALUES ('16', '程序练习', null, null, 'http://198.13.39.141/txt/Python/3/程序练习.txt', '字符串与循环中的while', '0', '1');
INSERT INTO `myweb_python` VALUES ('17', '布尔值与空值', null, null, 'http://198.13.39.141/txt/Python/4/布尔值与空值.txt', '布尔值、List、条件循环语句与trutle', '0', '1');
INSERT INTO `myweb_python` VALUES ('18', 'list列表', null, null, 'http://198.13.39.141/txt/Python/4/list列表.txt', '布尔值、List、条件循环语句与trutle', '0', '1');
INSERT INTO `myweb_python` VALUES ('19', '浅拷贝', 'http://198.13.39.141/images/python/shallow_copy.png', null, null, '布尔值、List、条件循环语句与trutle', '0', '1');
INSERT INTO `myweb_python` VALUES ('20', '深拷贝', 'http://198.13.39.141/images/python/deep_copy.png', null, null, '布尔值、List、条件循环语句与trutle', '0', '1');
INSERT INTO `myweb_python` VALUES ('21', '条件控制语句', null, null, 'http://198.13.39.141/txt/Python/4/条件控制语句.txt', '布尔值、List、条件循环语句与trutle', '0', '1');
INSERT INTO `myweb_python` VALUES ('22', '循环语句', null, null, 'http://198.13.39.141/txt/Python/4/循环语句.txt', '布尔值、List、条件循环语句与trutle', '0', '1');
INSERT INTO `myweb_python` VALUES ('23', 'break与continue语句', null, null, 'http://198.13.39.141/txt/Python/4/break与continue语句.txt', '布尔值、List、条件循环语句与trutle', '0', '1');
INSERT INTO `myweb_python` VALUES ('24', 'turtle模块绘图', null, null, 'http://198.13.39.141/txt/Python/4/turtle模块绘图.txt', '布尔值、List、条件循环语句与trutle', '0', '1');
INSERT INTO `myweb_python` VALUES ('25', '程序练习', null, null, 'http://198.13.39.141/txt/Python/4/程序练习.txt', '布尔值、List、条件循环语句与trutle', '0', '1');
INSERT INTO `myweb_python` VALUES ('26', 'Tuple(元组)', null, null, 'http://198.13.39.141/txt/Python/5/Tuple(元组).txt', '元组、字符串和字典', '0', '1');
INSERT INTO `myweb_python` VALUES ('27', 'String(字符串)', null, null, 'http://198.13.39.141/txt/Python/5/String(字符串).txt', '元组、字符串和字典', '0', '1');
INSERT INTO `myweb_python` VALUES ('28', 'Dict(字典)', null, null, 'http://198.13.39.141/txt/Python/5/Dict(字典).txt', '元组、字符串和字典', '0', '1');
INSERT INTO `myweb_python` VALUES ('29', 'set', null, null, 'http://198.13.39.141/txt/Python/6/set.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('30', '类型转换', null, null, 'http://198.13.39.141/txt/Python/6/类型转换.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('31', '迭代器', null, null, 'http://198.13.39.141/txt/Python/6/迭代器.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('32', '函数概述', null, null, 'http://198.13.39.141/txt/Python/6/函数概述.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('33', '最简单的函数(无参无返回值)', null, null, 'http://198.13.39.141/txt/Python/6/最简单的函数(无参无返回值).txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('34', '函数的参数', null, null, 'http://198.13.39.141/txt/Python/6/函数的参数.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('35', '函数的返回值', null, null, 'http://198.13.39.141/txt/Python/6/函数的返回值.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('36', '传递参数', null, null, 'http://198.13.39.141/txt/Python/6/传递参数.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('37', '关键字参数', null, null, 'http://198.13.39.141/txt/Python/6/关键字参数.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('38', '默认参数', null, null, 'http://198.13.39.141/txt/Python/6/默认参数.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('39', '不定长参数', null, null, 'http://198.13.39.141/txt/Python/6/不定长参数.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('40', '匿名函数', null, null, 'http://198.13.39.141/txt/Python/6/匿名函数.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('41', '程序练习', null, null, 'http://198.13.39.141/txt/Python/6/程序练习.txt', '函数基础', '0', '1');
INSERT INTO `myweb_python` VALUES ('42', '装饰器', null, null, 'http://198.13.39.141/txt/Python/7/装饰器.txt', '装饰器、偏函数、作用域、异常处理与文件读写', '0', '1');
INSERT INTO `myweb_python` VALUES ('43', '偏函数', null, null, 'http://198.13.39.141/txt/Python/7/偏函数.txt', '装饰器、偏函数、作用域、异常处理与文件读写', '0', '1');
INSERT INTO `myweb_python` VALUES ('44', '变量的作用域', null, null, 'http://198.13.39.141/txt/Python/7/变量的作用域.txt', '装饰器、偏函数、作用域、异常处理与文件读写', '0', '1');
INSERT INTO `myweb_python` VALUES ('45', '利用闭包突破作用域链', 'http://198.13.39.141/images/python/closure.png', null, null, '装饰器、偏函数、作用域、异常处理与文件读写', '0', '1');
INSERT INTO `myweb_python` VALUES ('46', '异常处理', null, null, 'http://198.13.39.141/txt/Python/7/异常处理.txt', '装饰器、偏函数、作用域、异常处理与文件读写', '0', '1');
INSERT INTO `myweb_python` VALUES ('47', '异常处理错误代码', 'http://198.13.39.141/images/python/exception-code.png', null, null, '装饰器、偏函数、作用域、异常处理与文件读写', '0', '1');
INSERT INTO `myweb_python` VALUES ('48', '文件读写', null, null, 'http://198.13.39.141/txt/Python/7/文件读写.txt', '装饰器、偏函数、作用域、异常处理与文件读写', '0', '1');
INSERT INTO `myweb_python` VALUES ('49', '文件读写', null, null, 'http://198.13.39.141/txt/Python/8/文件读写.txt', 'OS模块、窗口控制、内存修改与语音', '0', '1');
INSERT INTO `myweb_python` VALUES ('50', 'OS模块', null, null, 'http://198.13.39.141/txt/Python/8/OS模块.txt', 'OS模块、窗口控制、内存修改与语音', '0', '1');
INSERT INTO `myweb_python` VALUES ('51', '窗口控制', null, null, 'http://198.13.39.141/txt/Python/8/窗口控制.txt', 'OS模块、窗口控制、内存修改与语音', '0', '1');
INSERT INTO `myweb_python` VALUES ('52', '内存修改', null, null, 'http://198.13.39.141/txt/Python/8/内存修改.txt', 'OS模块、窗口控制、内存修改与语音', '0', '1');
INSERT INTO `myweb_python` VALUES ('53', '语音', null, null, 'http://198.13.39.141/txt/Python/8/语音.txt', 'OS模块、窗口控制、内存修改与语音', '0', '1');
INSERT INTO `myweb_python` VALUES ('54', '递归', null, null, 'http://198.13.39.141/txt/Python/9/递归.txt', '递归与时间相关模块', '0', '1');
INSERT INTO `myweb_python` VALUES ('55', '栈与队列', null, null, 'http://198.13.39.141/txt/Python/9/栈与队列.txt', '递归与时间相关模块', '0', '1');
INSERT INTO `myweb_python` VALUES ('56', '栈特点', 'http://198.13.39.141/images/python/stacks.png', null, null, '递归与时间相关模块', '0', '1');
INSERT INTO `myweb_python` VALUES ('57', '队列特点', 'http://198.13.39.141/images/python/queue.png', null, null, '递归与时间相关模块', '0', '1');
INSERT INTO `myweb_python` VALUES ('58', '目录遍历', null, null, 'http://198.13.39.141/txt/Python/9/目录遍历.txt', '递归与时间相关模块', '0', '1');
INSERT INTO `myweb_python` VALUES ('59', '广度遍历', 'http://198.13.39.141/images/python/breadth-traversal.png', null, null, '递归与时间相关模块', '0', '1');
INSERT INTO `myweb_python` VALUES ('60', '深度遍历', 'http://198.13.39.141/images/python/depth-first-traversal.png', null, null, '递归与时间相关模块', '0', '1');
INSERT INTO `myweb_python` VALUES ('61', 'Time-Datetime-Calendar(时间相关模块)', null, null, 'http://198.13.39.141/txt/Python/9/Time-Datetime-Calendar(时间相关模块).txt', '递归与时间相关模块', '0', '1');
INSERT INTO `myweb_python` VALUES ('62', '模块的使用方法', 'http://198.13.39.141/images/python/modular-method.jpg', null, null, '递归与时间相关模块', '0', '1');
INSERT INTO `myweb_python` VALUES ('63', '模块概述', null, null, 'http://198.13.39.141/txt/Python/10/模块概述.txt', '模块的使用与面向对象思想简介', '0', '1');
INSERT INTO `myweb_python` VALUES ('64', '使用标准库中的模块', null, null, 'http://198.13.39.141/txt/Python/10/使用标准库中的模块.txt', '模块的使用与面向对象思想简介', '0', '1');
INSERT INTO `myweb_python` VALUES ('65', '使用自定义模块(三种方法)', null, null, 'http://198.13.39.141/txt/Python/10/使用自定义模块(三种方法).txt', '模块的使用与面向对象思想简介', '0', '1');
INSERT INTO `myweb_python` VALUES ('66', '__name__属性', null, null, 'http://198.13.39.141/txt/Python/10/__name__属性.txt', '模块的使用与面向对象思想简介', '0', '1');
INSERT INTO `myweb_python` VALUES ('67', '包的概念', null, null, 'http://198.13.39.141/txt/Python/10/包的概念.txt', '模块的使用与面向对象思想简介', '0', '1');
INSERT INTO `myweb_python` VALUES ('68', '安装第三方模块', null, null, 'http://198.13.39.141/txt/Python/10/安装第三方模块.txt', '模块的使用与面向对象思想简介', '0', '1');
INSERT INTO `myweb_python` VALUES ('69', '面向对象思想简介', 'http://198.13.39.141/images/python/oo.png', null, null, '模块的使用与面向对象思想简介', '0', '1');
INSERT INTO `myweb_python` VALUES ('70', '第一个python类(创建类)', null, null, 'http://198.13.39.141/txt/Python/11/第一个python类(创建类).txt', '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('71', '使用类实例化对象', null, null, 'http://198.13.39.141/txt/Python/11/使用类实例化对象.txt', '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('72', '访问对象的属性与方法', null, null, 'http://198.13.39.141/txt/Python/11/访问对象的属性与方法.txt', '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('73', '对象的初始状态(构造函数)', null, null, 'http://198.13.39.141/txt/Python/11/对象的初始状态(构造函数).txt', '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('74', 'self', null, null, 'http://198.13.39.141/txt/Python/11/self.txt', '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('75', '析构函数', null, null, 'http://198.13.39.141/txt/Python/11/析构函数.txt', '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('76', '重写__repr__与__str__函数', null, null, 'http://198.13.39.141/txt/Python/11/重写__repr__与__str__函数.txt', '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('77', '访问限制', null, null, 'http://198.13.39.141/txt/Python/11/访问限制.txt', '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('78', '继承的概念', 'http://198.13.39.141/images/python/inherit.png', null, null, '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('79', '单继承的实现', null, null, 'http://198.13.39.141/txt/Python/11/单继承的实现.txt', '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('80', '多继承的实现', null, null, 'http://198.13.39.141/txt/Python/11/多继承的实现.txt', '面向对象思想的编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('81', '多态', null, null, 'http://198.13.39.141/txt/Python/12/多态.txt', '面向对象提升与收发邮件', '0', '1');
INSERT INTO `myweb_python` VALUES ('82', '对象属性与类属性', null, null, 'http://198.13.39.141/txt/Python/12/对象属性与类属性.txt', '面向对象提升与收发邮件', '0', '1');
INSERT INTO `myweb_python` VALUES ('83', '动态给实例添加属性和方法并使用__slots__', null, null, 'http://198.13.39.141/txt/Python/12/动态给实例添加属性和方法并使用__slots__.txt', '面向对象提升与收发邮件', '0', '1');
INSERT INTO `myweb_python` VALUES ('84', '@property', null, null, 'http://198.13.39.141/txt/Python/12/@property.txt', '面向对象提升与收发邮件', '0', '1');
INSERT INTO `myweb_python` VALUES ('85', '运算符重载', 'http://198.13.39.141/images/python/operator-overloading.png', null, 'http://198.13.39.141/txt/Python/12/运算符重载.txt', '面向对象提升与收发邮件', '0', '1');
INSERT INTO `myweb_python` VALUES ('86', '发短信和邮件', null, null, 'http://198.13.39.141/txt/Python/12/发短信和邮件.txt', '面向对象提升与收发邮件', '0', '1');
INSERT INTO `myweb_python` VALUES ('87', 'Tkinter', null, 'http://198.13.39.141/pdf/Python/tkinter.pdf', null, 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('88', '简单示例', null, null, 'http://198.13.39.141/txt/Python/13/简单示例.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('89', 'Lable控件', null, null, 'http://198.13.39.141/txt/Python/13/Lable控件.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('90', 'Button控件', null, null, 'http://198.13.39.141/txt/Python/13/Button控件.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('91', 'Entry控件', null, null, 'http://198.13.39.141/txt/Python/13/Entry控件.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('92', '点击按钮输出输入框中的内容', null, null, 'http://198.13.39.141/txt/Python/13/点击按钮输出输入框中的内容.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('93', 'Text控件', null, null, 'http://198.13.39.141/txt/Python/13/Text控件.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('94', '带滚动条的Text', null, null, 'http://198.13.39.141/txt/Python/13/带滚动条的Text.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('95', 'CheckButton多选框控件', null, null, 'http://198.13.39.141/txt/Python/13/CheckButton多选框控件.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('96', 'Radiobutton单选框控件', null, null, 'http://198.13.39.141/txt/Python/13/Radiobutton单选框控件.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('97', 'Listbox控件(1)', null, null, 'http://198.13.39.141/txt/Python/13/Listbox控件(1).txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('98', 'Listbox控件(2)', null, null, 'http://198.13.39.141/txt/Python/13/Listbox控件(2).txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('99', 'Listbox控件(3)', null, null, 'http://198.13.39.141/txt/Python/13/Listbox控件(3).txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('100', 'Listbox控件(4)', null, null, 'http://198.13.39.141/txt/Python/13/Listbox控件(4).txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('101', 'Scale控件', null, null, 'http://198.13.39.141/txt/Python/13/Scale控件.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('102', 'Spinbox控件', null, null, 'http://198.13.39.141/txt/Python/13/Spinbox控件.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('103', '银行自助提款机系统实战', null, null, 'http://198.13.39.141/txt/Python/13/银行自助提款机系统实战.txt', 'Tkinter与简易银行系统实战', '0', '1');
INSERT INTO `myweb_python` VALUES ('104', 'Menu顶层菜单', null, null, 'http://198.13.39.141/txt/Python/14/Menu顶层菜单.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('105', 'Menu鼠标右键菜单', null, null, 'http://198.13.39.141/txt/Python/14/Menu鼠标右键菜单.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('106', 'Combobox下拉控件', null, null, 'http://198.13.39.141/txt/Python/14/Combobox下拉控件.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('107', 'Frame控件', null, null, 'http://198.13.39.141/txt/Python/14/Frame控件.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('108', '表格数据', null, null, 'http://198.13.39.141/txt/Python/14/表格数据.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('109', '树状数据', null, null, 'http://198.13.39.141/txt/Python/14/树状数据.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('110', '绝对布局', null, null, 'http://198.13.39.141/txt/Python/14/绝对布局.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('111', '相对布局', null, null, 'http://198.13.39.141/txt/Python/14/相对布局.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('112', '表格布局', null, null, 'http://198.13.39.141/txt/Python/14/表格布局.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('113', '鼠标点击事件', null, null, 'http://198.13.39.141/txt/Python/14/鼠标点击事件.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('114', '鼠标移动事件', null, null, 'http://198.13.39.141/txt/Python/14/鼠标移动事件.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('115', '鼠标释放事件', null, null, 'http://198.13.39.141/txt/Python/14/鼠标释放事件.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('116', '进入与离开事件', null, null, 'http://198.13.39.141/txt/Python/14/进入与离开事件.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('117', '响应所有按键事件', null, null, 'http://198.13.39.141/txt/Python/14/响应所有按键事件.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('118', '响应特殊按键事件', null, null, 'http://198.13.39.141/txt/Python/14/响应特殊按键事件.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('119', '指定按键事件', null, null, 'http://198.13.39.141/txt/Python/14/指定按键事件.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('120', '组合按键事件', null, null, 'http://198.13.39.141/txt/Python/14/组合按键事件.txt', 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('121', '事件与事件属性', 'http://198.13.39.141/images/python/event.png', null, null, 'Tkinter', '0', '1');
INSERT INTO `myweb_python` VALUES ('122', '读写CSV文件', null, null, 'http://198.13.39.141/txt/Python/15/读写CSV文件.txt', '自动化办公与鼠标键盘模拟', '0', '1');
INSERT INTO `myweb_python` VALUES ('123', '读取PDF文件', null, null, 'http://198.13.39.141/txt/Python/15/读取PDF文件.txt', '自动化办公与鼠标键盘模拟', '0', '1');
INSERT INTO `myweb_python` VALUES ('124', 'Word自动化办公', null, null, 'http://198.13.39.141/txt/Python/15/Word自动化办公.txt', '自动化办公与鼠标键盘模拟', '0', '1');
INSERT INTO `myweb_python` VALUES ('125', 'Excel自动化办公', null, null, 'http://198.13.39.141/txt/Python/15/Excel自动化办公.txt', '自动化办公与鼠标键盘模拟', '0', '1');
INSERT INTO `myweb_python` VALUES ('126', 'PPT自动化办公', null, null, 'http://198.13.39.141/txt/Python/15/PPT自动化办公.txt', '自动化办公与鼠标键盘模拟', '0', '1');
INSERT INTO `myweb_python` VALUES ('127', '播放音乐', null, null, 'http://198.13.39.141/txt/Python/15/播放音乐.txt', '自动化办公与鼠标键盘模拟', '0', '1');
INSERT INTO `myweb_python` VALUES ('128', '修改背景图片', null, null, 'http://198.13.39.141/txt/Python/15/修改背景图片.txt', '自动化办公与鼠标键盘模拟', '0', '1');
INSERT INTO `myweb_python` VALUES ('129', '键盘模拟', null, null, 'http://198.13.39.141/txt/Python/15/键盘模拟.txt', '自动化办公与鼠标键盘模拟', '0', '1');
INSERT INTO `myweb_python` VALUES ('130', '鼠标模拟', null, null, 'http://198.13.39.141/txt/Python/15/鼠标模拟.txt', '自动化办公与鼠标键盘模拟', '0', '1');
INSERT INTO `myweb_python` VALUES ('131', '整蛊小程序', null, null, 'http://198.13.39.141/txt/Python/15/整蛊小程序.txt', '自动化办公与鼠标键盘模拟', '0', '1');
INSERT INTO `myweb_python` VALUES ('132', 'python2与python3的区别', null, 'http://198.13.39.141/pdf/Python/Python2.x与Python3.x的区别.pdf', null, 'python2与python3的区别和测试', '0', '1');
INSERT INTO `myweb_python` VALUES ('133', '高阶函数-map与reduce', 'http://198.13.39.141/images/python/map&reduce.png', null, 'http://198.13.39.141/txt/Python/16/高阶函数-map与reduce.txt', 'python2与python3的区别和测试', '0', '1');
INSERT INTO `myweb_python` VALUES ('134', '高阶函数-filter', null, null, 'http://198.13.39.141/txt/Python/16/高阶函数-filter.txt', 'python2与python3的区别和测试', '0', '1');
INSERT INTO `myweb_python` VALUES ('135', '高阶函数-sorted', null, null, 'http://198.13.39.141/txt/Python/16/高阶函数-sorted.txt', 'python2与python3的区别和测试', '0', '1');
INSERT INTO `myweb_python` VALUES ('136', '单元测试', null, null, 'http://198.13.39.141/txt/Python/16/单元测试.txt', 'python2与python3的区别和测试', '0', '1');
INSERT INTO `myweb_python` VALUES ('137', '文档测试', null, null, 'http://198.13.39.141/txt/Python/16/文档测试.txt', 'python2与python3的区别和测试', '0', '1');
INSERT INTO `myweb_python` VALUES ('138', '远程控制Windows', null, null, 'http://198.13.39.141/txt/Python/16/远程控制Windows.txt', 'python2与python3的区别和测试', '0', '1');
INSERT INTO `myweb_python` VALUES ('139', '密码破解', null, null, 'http://198.13.39.141/txt/Python/17/密码破解.txt', '正则表达式', '0', '1');
INSERT INTO `myweb_python` VALUES ('140', '判断手机号码', null, null, 'http://198.13.39.141/txt/Python/17/判断手机号码.txt', '正则表达式', '0', '1');
INSERT INTO `myweb_python` VALUES ('141', '正则概述', null, null, 'http://198.13.39.141/txt/Python/17/正则概述.txt', '正则表达式', '0', '1');
INSERT INTO `myweb_python` VALUES ('142', 're模块简介', null, null, 'http://198.13.39.141/txt/Python/17/re模块简介.txt', '正则表达式', '0', '1');
INSERT INTO `myweb_python` VALUES ('143', '正则表达式的元字符', null, null, 'http://198.13.39.141/txt/Python/17/正则表达式的元字符.txt', '正则表达式', '0', '1');
INSERT INTO `myweb_python` VALUES ('144', 're模块深入', null, null, 'http://198.13.39.141/txt/Python/17/re模块深入.txt', '正则表达式', '0', '1');
INSERT INTO `myweb_python` VALUES ('145', '爬虫简介', null, 'http://198.13.39.141/pdf/Python/爬虫.pdf', null, '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('146', 'urllib爬取网页', null, null, 'http://198.13.39.141/txt/Python/18/urllib爬取网页.txt', '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('147', '爬取到的网页直接写入文件', null, null, 'http://198.13.39.141/txt/Python/18/爬取到的网页直接写入文件.txt', '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('148', '模拟浏览器', null, null, 'http://198.13.39.141/txt/Python/18/模拟浏览器.txt', '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('149', '设置超时', null, null, 'http://198.13.39.141/txt/Python/18/设置超时.txt', '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('150', 'HTTP请求', null, null, 'http://198.13.39.141/txt/Python/18/HTTP请求.txt', '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('151', 'GET请求', null, null, 'http://198.13.39.141/txt/Python/18/GET请求.txt', '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('152', 'POST请求', null, null, 'http://198.13.39.141/txt/Python/18/POST请求.txt', '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('153', 'Json数据解析', null, null, 'http://198.13.39.141/txt/Python/18/Json数据解析.txt', '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('154', '抓取网页动态Ajax请求的数据', null, null, 'http://198.13.39.141/txt/Python/18/抓取网页动态Ajax请求的数据.txt', '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('155', '嗅事百科爬虫', null, null, 'http://198.13.39.141/txt/Python/18/嗅事百科爬虫.txt', '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('156', 'HTTP响应状态码', 'http://198.13.39.141/images/python/http-state.png', null, null, '爬虫简介与Json', '0', '1');
INSERT INTO `myweb_python` VALUES ('157', '网络编程简介', null, 'http://198.13.39.141/pdf/Python/网络编程.pdf', null, '网络编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('158', 'TCP编程', 'http://198.13.39.141/images/python/tcp.png', null, 'http://198.13.39.141/txt/Python/19/TCP编程.txt', '网络编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('159', 'UDP编程', 'http://198.13.39.141/images/python/udp.png', null, 'http://198.13.39.141/txt/Python/19/UDP编程.txt', '网络编程', '0', '1');
INSERT INTO `myweb_python` VALUES ('160', '多任务原理', null, 'http://198.13.39.141/pdf/Python/进程与线程.pdf', 'http://198.13.39.141/txt/Python/20/多任务原理.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('161', '进程', null, null, 'http://198.13.39.141/txt/Python/20/进程.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('162', '单任务现象', null, null, 'http://198.13.39.141/txt/Python/20/单任务现象.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('163', '启动进程实现多任务', null, null, 'http://198.13.39.141/txt/Python/20/启动进程实现多任务.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('164', '父子进程的先后顺序', null, null, 'http://198.13.39.141/txt/Python/20/父子进程的先后顺序.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('165', '全局变量在多个进程中不能共享', null, null, 'http://198.13.39.141/txt/Python/20/全局变量在多个进程中不能共享.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('166', '启动大量子进程', null, null, 'http://198.13.39.141/txt/Python/20/启动大量子进程.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('167', '拷贝文件', null, null, 'http://198.13.39.141/txt/Python/20/拷贝文件.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('168', '多进程实现文件拷贝', null, null, 'http://198.13.39.141/txt/Python/20/多进程实现文件拷贝.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('169', '封装进程对象', null, null, 'http://198.13.39.141/txt/Python/20/封装进程对象.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('170', '进程间通信-Queue', null, null, 'http://198.13.39.141/txt/Python/20/进程间通信-Queue.txt', '进程与线程', '0', '1');
INSERT INTO `myweb_python` VALUES ('171', '线程', null, null, 'http://198.13.39.141/txt/Python/21/线程.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('172', '启动一个线程', null, null, 'http://198.13.39.141/txt/Python/21/启动一个线程.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('173', '线程间共享数据', null, null, 'http://198.13.39.141/txt/Python/21/线程间共享数据.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('174', '线程锁解决数据混乱', null, null, 'http://198.13.39.141/txt/Python/21/线程锁解决数据混乱.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('175', 'ThreadLocal', null, null, 'http://198.13.39.141/txt/Python/21/ThreadLocal.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('176', '客户端与服务器间的数据交互', null, null, 'http://198.13.39.141/txt/Python/21/客户端与服务器间的数据交互.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('177', '模拟QQ', null, null, 'http://198.13.39.141/txt/Python/21/模拟QQ.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('178', '信号量控制线程数量', null, null, 'http://198.13.39.141/txt/Python/21/信号量控制线程数量.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('179', '凑够一定数量才能一起执行', null, null, 'http://198.13.39.141/txt/Python/21/凑够一定数量才能一起执行.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('180', '定时线程', null, null, 'http://198.13.39.141/txt/Python/21/定时线程.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('181', '线程通信', null, null, 'http://198.13.39.141/txt/Python/21/线程通信.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('182', '生产者与消费者', null, null, 'http://198.13.39.141/txt/Python/21/生产者与消费者.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('183', '线程调度', null, null, 'http://198.13.39.141/txt/Python/21/线程调度.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('184', '协程', null, null, 'http://198.13.39.141/txt/Python/21/协程.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('185', '协程原理', null, null, 'http://198.13.39.141/txt/Python/21/协程原理.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('186', '协程数据传输', null, null, 'http://198.13.39.141/txt/Python/21/协程数据传输.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('187', '生产者与消费者1', null, null, 'http://198.13.39.141/txt/Python/21/生产者与消费者1.txt', '线程与协程', '0', '1');
INSERT INTO `myweb_python` VALUES ('188', 'Mysql的安装', null, 'http://198.13.39.141/pdf/Python/mysql安装.pdf', null, 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('189', 'Mysql简介', null, 'http://198.13.39.141/pdf/Python/mysql简介.pdf', null, 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('190', 'Mysql基本命令脚本', null, null, 'http://198.13.39.141/txt/Python/22/Mysql基本命令脚本.txt', 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('191', '一对多关系图', 'http://198.13.39.141/images/python/relationship-img.png', null, null, 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('192', '连接数据库', null, null, 'http://198.13.39.141/txt/Python/22/连接数据库.txt', 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('193', '创建数据库表', null, null, 'http://198.13.39.141/txt/Python/22/创建数据库表.txt', 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('194', '数据库插入数据', null, null, 'http://198.13.39.141/txt/Python/22/数据库插入数据.txt', 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('195', '数据库更新操作', null, null, 'http://198.13.39.141/txt/Python/22/数据库更新操作.txt', 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('196', '数据库删除操作', null, null, 'http://198.13.39.141/txt/Python/22/数据库删除操作.txt', 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('197', '数据库查询操作', null, null, 'http://198.13.39.141/txt/Python/22/数据库查询操作.txt', 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('198', '实例', null, null, 'http://198.13.39.141/txt/Python/22/实例.txt', 'Mysql', '0', '1');
INSERT INTO `myweb_python` VALUES ('199', 'MongoDB简介', null, 'http://198.13.39.141/pdf/Python/MongoDB.pdf', null, 'MongoDB与Redis', '0', '1');
INSERT INTO `myweb_python` VALUES ('200', 'MongoDB基本命令', null, null, 'http://198.13.39.141/txt/Python/23/MongoDB基本命令.txt', 'MongoDB与Redis', '0', '1');
INSERT INTO `myweb_python` VALUES ('201', 'MongoDB添加文档', null, null, 'http://198.13.39.141/txt/Python/23/MongoDB添加文档.txt', 'MongoDB与Redis', '0', '1');
INSERT INTO `myweb_python` VALUES ('202', 'MongoDB查询文档', null, null, 'http://198.13.39.141/txt/Python/23/MongoDB查询文档.txt', 'MongoDB与Redis', '0', '1');
INSERT INTO `myweb_python` VALUES ('203', 'MongoDB更新文档', null, null, 'http://198.13.39.141/txt/Python/23/MongoDB更新文档.txt', 'MongoDB与Redis', '0', '1');
INSERT INTO `myweb_python` VALUES ('204', 'MongoDB删除文档', null, null, 'http://198.13.39.141/txt/Python/23/MongoDB删除文档.txt', 'MongoDB与Redis', '0', '1');
INSERT INTO `myweb_python` VALUES ('205', 'Redis简介', null, 'http://198.13.39.141/pdf/Python/Redis.pdf', null, 'MongoDB与Redis', '0', '1');
INSERT INTO `myweb_python` VALUES ('206', 'Redis基本命令', null, null, 'http://198.13.39.141/txt/Python/23/Redis基本命令.txt', 'MongoDB与Redis', '0', '1');
INSERT INTO `myweb_python` VALUES ('207', 'Redis与Python的交互', null, null, 'http://198.13.39.141/txt/Python/23/Redis与Python的交互.txt', 'MongoDB与Redis', '0', '1');
INSERT INTO `myweb_python` VALUES ('208', 'Redis作为缓存使用', 'http://198.13.39.141/images/python/redis-1.png', null, null, 'MongoDB与Redis', '0', '1');
INSERT INTO `myweb_python` VALUES ('209', 'Redis作为缓存使用总结', 'http://198.13.39.141/images/python/redis-2.png', null, null, 'MongoDB与Redis', '0', '1');

-- ----------------------------
-- Table structure for `myweb_tornado`
-- ----------------------------
DROP TABLE IF EXISTS `myweb_tornado`;
CREATE TABLE `myweb_tornado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `images` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pdf` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(3000) CHARACTER SET utf8 DEFAULT NULL,
  `remark_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`),
  KEY `myWeb_tornado_category_id_a7232d65_fk_myWeb_category_id` (`category_id`) USING BTREE,
  CONSTRAINT `myweb_tornado_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `myweb_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of myweb_tornado
-- ----------------------------
INSERT INTO `myweb_tornado` VALUES ('1', 'Tornado概述', null, 'http://198.13.39.141/pdf/Tornado/1/tornado基础-1.pdf', null, 'Tornado基础流程', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('2', 'Tornado-HTTPserver', null, 'http://198.13.39.141/pdf/Tornado/1/tornado基础-2.pdf', null, 'Tornado基础流程', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('3', 'Tornado-Options', null, 'http://198.13.39.141/pdf/Tornado/1/tornado基础-3.pdf', null, 'Tornado基础流程', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('4', 'Tornado-Application', null, 'http://198.13.39.141/pdf/Tornado/2/tornado提升-1.pdf', null, '请求与响应', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('5', 'Tornado-tornado.web.RequestHandler', null, 'http://198.13.39.141/pdf/Tornado/2/tornado提升-2.pdf', null, '请求与响应', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('6', 'Tornado-响应输出', null, 'http://198.13.39.141/pdf/Tornado/2/tornado提升-3.pdf', null, '请求与响应', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('7', 'Tornado-接口调用顺序', null, 'http://198.13.39.141/pdf/Tornado/3/接口调用顺序.pdf', null, '模板和数据库以及接口的调用顺序', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('8', 'Tornado-模板概述', null, 'http://198.13.39.141/pdf/Tornado/3/模板-1.pdf', null, '模板和数据库以及接口的调用顺序', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('9', 'Tornado-模板-流程控制与函数', null, 'http://198.13.39.141/pdf/Tornado/3/模板-2.pdf', null, '模板和数据库以及接口的调用顺序', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('10', 'Tornado-模板-转义与继承', null, 'http://198.13.39.141/pdf/Tornado/3/模板-3.pdf', null, '模板和数据库以及接口的调用顺序', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('11', 'Tornado-模板-静态文件', null, 'http://198.13.39.141/pdf/Tornado/3/模板-4.pdf', null, '模板和数据库以及接口的调用顺序', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('12', 'Tornado-数据库', null, 'http://198.13.39.141/pdf/Tornado/3/数据库.pdf', null, '模板和数据库以及接口的调用顺序', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('13', 'Tornado-应用安全-Cookie', null, 'http://198.13.39.141/pdf/Tornado/4/应用安全-1.pdf', null, '应用安全', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('14', 'Tornado-应用安全-XSRF', null, 'http://198.13.39.141/pdf/Tornado/4/应用安全-2.pdf', null, '应用安全', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('15', 'Tornado-应用安全-用户验证', null, 'http://198.13.39.141/pdf/Tornado/4/应用安全-3.pdf', null, '应用安全', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('16', 'Tornado-同步与异步-同步', null, 'http://198.13.39.141/pdf/Tornado/5/同步与异步-1.pdf', null, '同步与异步 + 使用WebSocket实现在线聊天', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('17', 'Tornado-同步与异步-异步', null, 'http://198.13.39.141/pdf/Tornado/5/同步与异步-2.pdf', null, '同步与异步 + 使用WebSocket实现在线聊天', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('18', 'Tornado-Tornado中的异步', null, 'http://198.13.39.141/pdf/Tornado/5/Tornado中的异步.pdf', null, '同步与异步 + 使用WebSocket实现在线聊天', '0', '4');
INSERT INTO `myweb_tornado` VALUES ('19', 'Tornado-WebSocket', null, 'http://198.13.39.141/pdf/Tornado/5/WebSocket.pdf', null, '同步与异步 + 使用WebSocket实现在线聊天', '0', '4');
