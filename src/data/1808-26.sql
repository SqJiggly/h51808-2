/*
Navicat MySQL Data Transfer

Source Server         : SqJiggly
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : 1808-26

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-28 11:57:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `idx` int(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `number` int(255) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for liebiao
-- ----------------------------
DROP TABLE IF EXISTS `liebiao`;
CREATE TABLE `liebiao` (
  `idx` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liebiao
-- ----------------------------
INSERT INTO `liebiao` VALUES ('1', 'bag1', '../img/bag1.png', '手提包', '10999', '2018/2/15');
INSERT INTO `liebiao` VALUES ('2', 'bag2', '../img/bag2.png', '手提包', '9888', '2017/6/1');
INSERT INTO `liebiao` VALUES ('3', 'bag3', '../img/bag3.png', '手提包', '14999', '2018/8/15');
INSERT INTO `liebiao` VALUES ('4', 'bag4', '../img/bag1.png', '手提包', '5999', '2016/6/15');
INSERT INTO `liebiao` VALUES ('5', 'bag5', '../img/bag2.png', '手提包', '7888', '2017/2/1');
INSERT INTO `liebiao` VALUES ('6', 'bag6', '../img/bag3.png', '手提包', '19999', '2017/12/15');
INSERT INTO `liebiao` VALUES ('7', 'bag7', '../img/bag1.png', '手提包', '12999', '2018/2/15');
INSERT INTO `liebiao` VALUES ('8', 'bag8', '../img/bag2.png', '手提包', '8888', '2015/6/1');
INSERT INTO `liebiao` VALUES ('9', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('10', 'bag10', '../img/bag1.png', '手提包', '999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('11', 'bag11', '../img/bag2.png', '手提包', '1888', '2016/3/30');
INSERT INTO `liebiao` VALUES ('12', 'bag12', '../img/bag3.png', '手提包', '1000', '2016/8/15');
INSERT INTO `liebiao` VALUES ('13', 'bag13', '../img/bag1.png', '手提包', '16999', '2017/3/8');
INSERT INTO `liebiao` VALUES ('14', 'bag14', '../img/bag2.png', '手提包', '8888', '2017/6/1');
INSERT INTO `liebiao` VALUES ('15', 'bag15', '../img/bag3.png', '手提包', '59999', '2018/9/10');
INSERT INTO `liebiao` VALUES ('16', 'bag16', '../img/bag1.png', '手提包', '49999', '2018/9/30');
INSERT INTO `liebiao` VALUES ('17', 'bag17', '../img/bag2.png', '手提包', '3888', '2016/12/1');
INSERT INTO `liebiao` VALUES ('18', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('19', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('20', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('21', 'bag6', '../img/bag3.png', '手提包', '19999', '2017/12/15');
INSERT INTO `liebiao` VALUES ('22', 'bag7', '../img/bag1.png', '手提包', '12999', '2018/2/15');
INSERT INTO `liebiao` VALUES ('23', 'bag8', '../img/bag2.png', '手提包', '8888', '2015/6/1');
INSERT INTO `liebiao` VALUES ('24', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('25', 'bag10', '../img/bag1.png', '手提包', '999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('26', 'bag11', '../img/bag2.png', '手提包', '1888', '2016/3/30');
INSERT INTO `liebiao` VALUES ('27', 'bag12', '../img/bag3.png', '手提包', '1000', '2016/8/15');
INSERT INTO `liebiao` VALUES ('28', 'bag13', '../img/bag1.png', '手提包', '16999', '2017/3/8');
INSERT INTO `liebiao` VALUES ('29', 'bag14', '../img/bag2.png', '手提包', '8888', '2017/6/1');
INSERT INTO `liebiao` VALUES ('30', 'bag15', '../img/bag3.png', '手提包', '59999', '2018/9/10');
INSERT INTO `liebiao` VALUES ('31', 'bag16', '../img/bag1.png', '手提包', '49999', '2018/9/30');
INSERT INTO `liebiao` VALUES ('32', 'bag17', '../img/bag2.png', '手提包', '3888', '2016/12/1');
INSERT INTO `liebiao` VALUES ('33', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('34', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('35', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('36', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('37', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('38', 'bag6', '../img/bag3.png', '手提包', '19999', '2017/12/15');
INSERT INTO `liebiao` VALUES ('39', 'bag7', '../img/bag1.png', '手提包', '12999', '2018/2/15');
INSERT INTO `liebiao` VALUES ('40', 'bag8', '../img/bag2.png', '手提包', '8888', '2015/6/1');
INSERT INTO `liebiao` VALUES ('41', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('42', 'bag10', '../img/bag1.png', '手提包', '999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('43', 'bag11', '../img/bag2.png', '手提包', '1888', '2016/3/30');
INSERT INTO `liebiao` VALUES ('44', 'bag12', '../img/bag3.png', '手提包', '1000', '2016/8/15');
INSERT INTO `liebiao` VALUES ('45', 'bag13', '../img/bag1.png', '手提包', '16999', '2017/3/8');
INSERT INTO `liebiao` VALUES ('46', 'bag14', '../img/bag2.png', '手提包', '8888', '2017/6/1');
INSERT INTO `liebiao` VALUES ('47', 'bag15', '../img/bag3.png', '手提包', '59999', '2018/9/10');
INSERT INTO `liebiao` VALUES ('48', 'bag16', '../img/bag1.png', '手提包', '49999', '2018/9/30');
INSERT INTO `liebiao` VALUES ('49', 'bag17', '../img/bag2.png', '手提包', '3888', '2016/12/1');
INSERT INTO `liebiao` VALUES ('50', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('51', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('52', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('53', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('54', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('55', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('56', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('57', 'bag6', '../img/bag3.png', '手提包', '19999', '2017/12/15');
INSERT INTO `liebiao` VALUES ('58', 'bag7', '../img/bag1.png', '手提包', '12999', '2018/2/15');
INSERT INTO `liebiao` VALUES ('59', 'bag8', '../img/bag2.png', '手提包', '8888', '2015/6/1');
INSERT INTO `liebiao` VALUES ('60', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('61', 'bag10', '../img/bag1.png', '手提包', '999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('62', 'bag12', '../img/bag3.png', '手提包', '1000', '2016/8/15');
INSERT INTO `liebiao` VALUES ('63', 'bag11', '../img/bag2.png', '手提包', '1888', '2016/3/30');
INSERT INTO `liebiao` VALUES ('64', 'bag13', '../img/bag1.png', '手提包', '16999', '2017/3/8');
INSERT INTO `liebiao` VALUES ('65', 'bag14', '../img/bag2.png', '手提包', '8888', '2017/6/1');
INSERT INTO `liebiao` VALUES ('66', 'bag15', '../img/bag3.png', '手提包', '59999', '2018/9/10');
INSERT INTO `liebiao` VALUES ('67', 'bag16', '../img/bag1.png', '手提包', '49999', '2018/9/30');
INSERT INTO `liebiao` VALUES ('68', 'bag17', '../img/bag2.png', '手提包', '3888', '2016/12/1');
INSERT INTO `liebiao` VALUES ('69', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('70', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('71', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('72', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('73', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('74', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('75', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('76', 'bag6', '../img/bag3.png', '手提包', '19999', '2017/12/15');
INSERT INTO `liebiao` VALUES ('77', 'bag7', '../img/bag1.png', '手提包', '12999', '2018/2/15');
INSERT INTO `liebiao` VALUES ('78', 'bag8', '../img/bag2.png', '手提包', '8888', '2015/6/1');
INSERT INTO `liebiao` VALUES ('79', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');
INSERT INTO `liebiao` VALUES ('80', 'bag10', '../img/bag1.png', '手提包', '999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('81', 'bag11', '../img/bag2.png', '手提包', '1888', '2016/3/30');
INSERT INTO `liebiao` VALUES ('82', 'bag12', '../img/bag3.png', '手提包', '1000', '2016/8/15');
INSERT INTO `liebiao` VALUES ('83', 'bag13', '../img/bag1.png', '手提包', '16999', '2017/3/8');
INSERT INTO `liebiao` VALUES ('84', 'bag14', '../img/bag2.png', '手提包', '8888', '2017/6/1');
INSERT INTO `liebiao` VALUES ('85', 'bag15', '../img/bag3.png', '手提包', '59999', '2018/9/10');
INSERT INTO `liebiao` VALUES ('86', 'bag16', '../img/bag1.png', '手提包', '49999', '2018/9/30');
INSERT INTO `liebiao` VALUES ('87', 'bag17', '../img/bag2.png', '手提包', '3888', '2016/12/1');
INSERT INTO `liebiao` VALUES ('88', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('89', 'bag18', '../img/bag3.png', '手提包', '38999', '2018/10/1');
INSERT INTO `liebiao` VALUES ('90', 'bag9', '../img/bag3.png', '手提包', '29999', '2018/10/15');

-- ----------------------------
-- Table structure for pinpai
-- ----------------------------
DROP TABLE IF EXISTS `pinpai`;
CREATE TABLE `pinpai` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinpai
-- ----------------------------
INSERT INTO `pinpai` VALUES ('1', 'img/1.png', '小迷糊');
INSERT INTO `pinpai` VALUES ('2', 'img/2.jpg', '欧莱雅护肤');
INSERT INTO `pinpai` VALUES ('3', 'img/3.jpg', '御泥坊');
INSERT INTO `pinpai` VALUES ('4', 'img/4.jpg', '阿芙');
INSERT INTO `pinpai` VALUES ('5', 'img/1.png', '小迷糊');
INSERT INTO `pinpai` VALUES ('6', 'img/2.jpg', '欧莱雅护肤');
INSERT INTO `pinpai` VALUES ('7', 'img/3.jpg', '御泥坊');
INSERT INTO `pinpai` VALUES ('8', 'img/4.jpg', '阿芙');
INSERT INTO `pinpai` VALUES ('9', 'img/2.jpg', '欧莱雅护肤');
INSERT INTO `pinpai` VALUES ('10', 'img/3.jpg', '御泥坊');
INSERT INTO `pinpai` VALUES ('11', 'img/4.jpg', '阿芙');
INSERT INTO `pinpai` VALUES ('12', 'img/2.jpg', '欧莱雅护肤');
INSERT INTO `pinpai` VALUES ('13', 'img/3.jpg', '御泥坊');
INSERT INTO `pinpai` VALUES ('14', 'img/4.jpg', '阿芙');
INSERT INTO `pinpai` VALUES ('15', 'img/1.png', '小迷糊');
INSERT INTO `pinpai` VALUES ('16', 'img/2.jpg', '欧莱雅护肤');
INSERT INTO `pinpai` VALUES ('17', 'img/3.jpg', '御泥坊');
INSERT INTO `pinpai` VALUES ('18', 'img/4.jpg', '阿芙');
INSERT INTO `pinpai` VALUES ('19', 'img/2.jpg', '欧莱雅护肤');
INSERT INTO `pinpai` VALUES ('20', 'img/3.jpg', '御泥坊');

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `href` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `zhe` decimal(10,1) NOT NULL,
  `nowprice` decimal(10,2) NOT NULL,
  `oldprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
INSERT INTO `shopcar` VALUES ('1', 'html/shop.html?id=1', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/5.jpg', '9.3', '64.00', '69.00');
INSERT INTO `shopcar` VALUES ('2', 'html/shop.html?id=2', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/6.jpg', '5.4', '199.00', '371.00');
INSERT INTO `shopcar` VALUES ('3', 'html/shop.html?id=3', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/7.jpg', '7.8', '188.00', '240.00');
INSERT INTO `shopcar` VALUES ('4', 'html/shop.html?id=4', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/8.jpg', '7.5', '59.00', '79.00');
INSERT INTO `shopcar` VALUES ('5', 'html/shop.html?id=5', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/9.jpg', '9.1', '199.00', '218.00');
INSERT INTO `shopcar` VALUES ('6', 'html/shop.html?id=6', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/10.jpg', '8.0', '79.00', '99.00');
INSERT INTO `shopcar` VALUES ('7', 'html/shop.html?id=7', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/5.jpg', '9.3', '64.00', '69.00');
INSERT INTO `shopcar` VALUES ('8', 'html/shop.html?id=8', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/6.jpg', '5.4', '199.00', '371.00');
INSERT INTO `shopcar` VALUES ('9', 'html/shop.html?id=9', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/7.jpg', '7.8', '188.00', '240.00');
INSERT INTO `shopcar` VALUES ('10', 'html/shop.html?id=10', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/5.jpg', '9.3', '64.00', '69.00');
INSERT INTO `shopcar` VALUES ('11', 'html/shop.html?id=11', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/6.jpg', '5.4', '199.00', '371.00');
INSERT INTO `shopcar` VALUES ('12', 'html/shop.html?id=12', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/7.jpg', '7.8', '188.00', '240.00');
INSERT INTO `shopcar` VALUES ('13', 'html/shop.html?id=13', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/8.jpg', '7.5', '59.00', '79.00');
INSERT INTO `shopcar` VALUES ('14', 'html/shop.html?id=14', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/9.jpg', '9.1', '199.00', '218.00');
INSERT INTO `shopcar` VALUES ('15', 'html/shop.html?id=15', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/10.jpg', '8.0', '79.00', '99.00');
INSERT INTO `shopcar` VALUES ('16', 'html/shop.html?id=16', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/8.jpg', '7.5', '59.00', '79.00');
INSERT INTO `shopcar` VALUES ('17', 'html/shop.html?id=17', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/9.jpg', '9.1', '199.00', '218.00');
INSERT INTO `shopcar` VALUES ('18', 'html/shop.html?id=18', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/10.jpg', '8.0', '79.00', '99.00');
INSERT INTO `shopcar` VALUES ('19', 'html/shop.html?id=19', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/5.jpg', '9.3', '64.00', '69.00');
INSERT INTO `shopcar` VALUES ('20', 'html/shop.html?id=20', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/6.jpg', '5.4', '199.00', '371.00');
INSERT INTO `shopcar` VALUES ('21', 'html/shop.html?id=21', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/7.jpg', '7.8', '188.00', '240.00');
INSERT INTO `shopcar` VALUES ('22', 'html/shop.html?id=22', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/8.jpg', '7.5', '59.00', '79.00');
INSERT INTO `shopcar` VALUES ('23', 'html/shop.html?id=23', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/9.jpg', '9.1', '199.00', '218.00');
INSERT INTO `shopcar` VALUES ('24', 'html/shop.html?id=24', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/10.jpg', '8.0', '79.00', '99.00');
INSERT INTO `shopcar` VALUES ('25', 'html/shop.html?id=25', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/8.jpg', '7.5', '59.00', '79.00');
INSERT INTO `shopcar` VALUES ('26', 'html/shop.html?id=26', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/9.jpg', '9.1', '199.00', '218.00');
INSERT INTO `shopcar` VALUES ('27', 'html/shop.html?id=27', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/10.jpg', '8.0', '79.00', '99.00');

-- ----------------------------
-- Table structure for songs
-- ----------------------------
DROP TABLE IF EXISTS `songs`;
CREATE TABLE `songs` (
  `src` varchar(255) DEFAULT NULL,
  `singer` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of songs
-- ----------------------------
INSERT INTO `songs` VALUES ('media/beyond - 喜欢�?mp3', 'beyond', '喜欢�?', 'media/beyond - 喜欢�?.jpg', '');
INSERT INTO `songs` VALUES ('media/beyond - 真的爱你.mp3', 'beyond', '真的爱你', 'media/beyond - 真的爱你.jpg', '');
INSERT INTO `songs` VALUES ('media/方大�?- 红豆 - 完整�?mp3', '方大�?', '红豆', 'media/方大�?- 红豆 - 完整�?jpg', '');
INSERT INTO `songs` VALUES ('media/杨坤 - 无所�?mp3', '杨坤', '无所�?', 'media/杨坤 - 无所�?jpg', '');
INSERT INTO `songs` VALUES ('media/陈冠�?蓝眼�?mp3', '陈冠�?', '蓝眼�?', 'media/陈冠�?蓝眼�?jpg', '');
INSERT INTO `songs` VALUES ('media/陈奕�?- 十年.mp3', '陈奕�?', '十年', 'media/陈奕�?- 十年.jpg', '');
INSERT INTO `songs` VALUES ('media/陈妃�?永远到底有多�?mp3', '陈妃�?', '永远到底有多�?', 'media/陈妃�?永远到底有多�?jpg', '');
INSERT INTO `songs` VALUES ('media/陈小�?我有什么资格不要你.mp3', '陈小�?', '我有什么资格不要你', 'media/陈小�?我有什么资格不要你.jpg', '');
INSERT INTO `songs` VALUES ('media/陈慧�?千千阙歌(�?.mp3', '陈慧�?', '千千阙歌(�?', 'media/陈慧�?千千阙歌(�?.jpg', '');
INSERT INTO `songs` VALUES ('media/陈慧�?花花宇宙.mp3', '陈慧�?', '花花宇宙', 'media/陈慧�?花花宇宙.jpg', '');
INSERT INTO `songs` VALUES ('media/陈慧�?记事�?mp3', '陈慧�?', '记事�?', 'media/陈慧�?记事�?jpg', '');
INSERT INTO `songs` VALUES ('media/陈琳 - 爱就爱了.mp3', '陈琳', '爱就爱了', 'media/陈琳 - 爱就爱了.jpg', '');
INSERT INTO `songs` VALUES ('media/陈超-求佛.mp3', '陈超', '求佛', 'media/陈超-求佛.jpg', '');
INSERT INTO `songs` VALUES ('media/筷子兄弟-小苹�?mp3', '筷子兄弟', '小苹�?', '', 'media/筷子兄弟-小苹�?jpg');
INSERT INTO `songs` VALUES ('media/凤凰传奇-最炫民族风.mp3', '凤凰传奇', '最炫民族风', '', 'media/凤凰传奇-最炫民族风.jpg');

-- ----------------------------
-- Table structure for usercar
-- ----------------------------
DROP TABLE IF EXISTS `usercar`;
CREATE TABLE `usercar` (
  `user` varchar(255) NOT NULL,
  `id` int(6) NOT NULL,
  `href` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `nowprice` decimal(10,2) NOT NULL,
  `oldprice` decimal(10,2) NOT NULL,
  `number` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercar
-- ----------------------------
INSERT INTO `usercar` VALUES ('18279224121', '27', 'html/shop.html?id=27', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/10.jpg', '79.00', '99.00', '1');
INSERT INTO `usercar` VALUES ('18279224121', '3', 'html/shop.html?id=3', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/7.jpg', '188.00', '240.00', '1');
INSERT INTO `usercar` VALUES ('18279224121', '4', 'html/shop.html?id=4', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/8.jpg', '59.00', '79.00', '3');
INSERT INTO `usercar` VALUES ('18279224121', '1', 'html/shop.html?id=1', '水密码【 轻松保护眼周肌】水密码WETCODE眼部精华20g   水润充盈', 'img/5.jpg', '64.00', '69.00', '1');

-- ----------------------------
-- Table structure for zhuce
-- ----------------------------
DROP TABLE IF EXISTS `zhuce`;
CREATE TABLE `zhuce` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuce
-- ----------------------------
INSERT INTO `zhuce` VALUES ('88', '18279224121', '18279224121');
INSERT INTO `zhuce` VALUES ('90', '11111111111', '11111111111111111111');
SET FOREIGN_KEY_CHECKS=1;
