/*
Navicat MySQL Data Transfer

Source Server         : 101.200.211.234
Source Server Version : 50562
Source Host           : 101.200.211.234:3306
Source Database       : febs_base

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-03-25 17:18:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_attachment`;
CREATE TABLE `t_attachment` (
  `ID` bigint(20) NOT NULL,
  `DATA_ID` bigint(20) DEFAULT NULL,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `FILE_SUFFIX` varchar(255) DEFAULT NULL,
  `URL` varchar(2048) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_attachment
-- ----------------------------
INSERT INTO `t_attachment` VALUES ('1583987487100', null, 'file', '1092739', 'jpg', '202003/137a7dfa5ffa4b91aad81beb19dfc872.jpg', '2020-03-12 12:31:27');
INSERT INTO `t_attachment` VALUES ('1583987491064', null, 'file', '1092739', 'jpg', '202003/6e97aa0a772043c798f28387e71ab111.jpg', '2020-03-12 12:31:31');
INSERT INTO `t_attachment` VALUES ('1583988048991', null, 'file', '3578', 'pem', '202003/ba3094f0108d49179669768724b4ab5d.pem', '2020-03-12 12:40:48');
INSERT INTO `t_attachment` VALUES ('1583988061016', null, 'file', '1866', 'txt', '202003/61a79c8a11b6432481fd2cab71cd7788.txt', '2020-03-12 12:41:01');
INSERT INTO `t_attachment` VALUES ('1583988372612', null, 'file', '1092739', 'jpg', '202003/48eec32a1c9b476787a84a14f4f89e99.jpg', '2020-03-12 12:46:12');
INSERT INTO `t_attachment` VALUES ('1583988389926', null, 'file', '1092739', 'jpg', '202003/962cce8973554656a9066f7518f3704d.jpg', '2020-03-12 12:46:29');
INSERT INTO `t_attachment` VALUES ('1583988392589', null, 'file', '1092739', 'jpg', '202003/deaeecb4bf104b09b5443096762491a9.jpg', '2020-03-12 12:46:32');
INSERT INTO `t_attachment` VALUES ('1583988392930', null, 'file', '1092739', 'jpg', '202003/095e4260203d4d8a898ef3680c9dbc1c.jpg', '2020-03-12 12:46:32');
INSERT INTO `t_attachment` VALUES ('1583988393105', null, 'file', '1092739', 'jpg', '202003/05c9efb78ff441578005f1c4caf551aa.jpg', '2020-03-12 12:46:33');
INSERT INTO `t_attachment` VALUES ('1583988393254', null, 'file', '1092739', 'jpg', '202003/c776038873ea4949a8e4455e8382fa16.jpg', '2020-03-12 12:46:33');
INSERT INTO `t_attachment` VALUES ('1583988393413', null, 'file', '1092739', 'jpg', '202003/0eb3955ffad4403eab9fb77a9ed80687.jpg', '2020-03-12 12:46:33');
INSERT INTO `t_attachment` VALUES ('1583988393568', null, 'file', '1092739', 'jpg', '202003/abf4abc9d06f4a1bac1bd0ce711f30cc.jpg', '2020-03-12 12:46:33');
INSERT INTO `t_attachment` VALUES ('1583988393846', null, 'file', '1092739', 'jpg', '202003/62b825b2b9a445c99ae8191892ad0bce.jpg', '2020-03-12 12:46:33');
INSERT INTO `t_attachment` VALUES ('1583988393991', null, 'file', '1092739', 'jpg', '202003/74461d2336274c789bf9c24d71de003e.jpg', '2020-03-12 12:46:33');
INSERT INTO `t_attachment` VALUES ('1583990070408', null, 'file', '183566', 'jpg', '202003/475638e3fd6a4f0c8dabbb4cc17da200.jpg', '2020-03-12 13:14:30');
INSERT INTO `t_attachment` VALUES ('1583990176110', null, 'file', '222', 'txt', '202003/f83edb39d0444e9aa8d3fdf4b9c765d4.txt', '2020-03-12 13:16:16');
INSERT INTO `t_attachment` VALUES ('1583990176906', null, 'file', '222', 'txt', '202003/9399af94294e411e8cd4e8453c5c2d77.txt', '2020-03-12 13:16:16');
INSERT INTO `t_attachment` VALUES ('1583990177430', null, 'file', '222', 'txt', '202003/b8e697c75acd4b6784ba157c1cdd11ab.txt', '2020-03-12 13:16:17');
INSERT INTO `t_attachment` VALUES ('1583990178032', null, 'file', '222', 'txt', '202003/b22f99e7d26f465092fc84e1f422093f.txt', '2020-03-12 13:16:18');
INSERT INTO `t_attachment` VALUES ('1583990178927', null, 'file', '222', 'txt', '202003/976a8225e0ef4523bab5a658da7e3480.txt', '2020-03-12 13:16:18');
INSERT INTO `t_attachment` VALUES ('1583990647326', null, 'file', '1450', 'txt', '202003/4de997813b6a46eaa10251badde6d891.txt', '2020-03-12 13:24:07');
INSERT INTO `t_attachment` VALUES ('1583990657161', null, 'file', '1450', 'txt', '202003/140b01aa7f5a4679899b4a279cf32f5f.txt', '2020-03-12 13:24:17');
INSERT INTO `t_attachment` VALUES ('1583991523613', null, 'file', '6109', 'xml', '202003/55f43f39ed5046be85f59793f5761ea4.xml', '2020-03-12 13:38:43');
INSERT INTO `t_attachment` VALUES ('1583991539279', null, 'file', '7937', 'xml', '202003/90fb1118da5642019cfc5069e9898bef.xml', '2020-03-12 13:38:59');
INSERT INTO `t_attachment` VALUES ('1583991545988', null, 'file', '7937', 'xml', '202003/84c6ea8a781d4e11acf90fd1fca1c016.xml', '2020-03-12 13:39:05');
INSERT INTO `t_attachment` VALUES ('1583991560478', null, 'file', '7937', 'xml', '202003/3b21fb6e842d4e98bec3b80faf6bab6e.xml', '2020-03-12 13:39:20');
INSERT INTO `t_attachment` VALUES ('1583996322413', null, 'file', '1092739', 'jpg', '202003/200fde131ea045f7ab90f43c218e06d5.jpg', '2020-03-12 14:58:42');
INSERT INTO `t_attachment` VALUES ('1583998531332', null, 'file', '17258', 'docx', '202003/10ad7c1ae94044d19919944628c05c11.docx', '2020-03-12 15:35:31');
INSERT INTO `t_attachment` VALUES ('1583998531624', null, 'file', '17258', 'docx', '202003/6f883ac997f746f7b2560962920bdf2c.docx', '2020-03-12 15:35:31');
INSERT INTO `t_attachment` VALUES ('1583998532378', null, 'file', '17258', 'docx', '202003/3e3a0d3b151b42efb9bc60f21b937dca.docx', '2020-03-12 15:35:32');
INSERT INTO `t_attachment` VALUES ('1583998532745', null, 'file', '17258', 'docx', '202003/dd5980e81ffb4a569cb322aa66d44466.docx', '2020-03-12 15:35:32');
INSERT INTO `t_attachment` VALUES ('1583998532881', null, 'file', '17258', 'docx', '202003/5c8ee4f074ea4c899ff757cc8ec54421.docx', '2020-03-12 15:35:32');
INSERT INTO `t_attachment` VALUES ('1583998539029', null, 'file', '17258', 'docx', '202003/a8d182e1af9c46bba27f1a3446251359.docx', '2020-03-12 15:35:39');
INSERT INTO `t_attachment` VALUES ('1583998543687', null, 'file', '17258', 'docx', '202003/577f294656e44e1082cb61fc95277e1e.docx', '2020-03-12 15:35:43');
INSERT INTO `t_attachment` VALUES ('1583999708703', null, 'file', '1092739', 'jpg', '202003/5e973e701ae641518231b9edefc2fa55.jpg', '2020-03-12 15:55:08');
INSERT INTO `t_attachment` VALUES ('1583999711464', null, 'file', '1092739', 'jpg', '202003/410539d2a9504303800e19660f179037.jpg', '2020-03-12 15:55:11');
INSERT INTO `t_attachment` VALUES ('1583999712011', null, 'file', '1092739', 'jpg', '202003/fd90a15ccb6241cea643b6060dc1f771.jpg', '2020-03-12 15:55:12');
INSERT INTO `t_attachment` VALUES ('1583999712420', null, 'file', '1092739', 'jpg', '202003/4b6a2d547c764508859da1bef6cc63cb.jpg', '2020-03-12 15:55:12');
INSERT INTO `t_attachment` VALUES ('1583999712784', null, 'file', '1092739', 'jpg', '202003/294d0e2bfd4f46968810ed785cfe07f9.jpg', '2020-03-12 15:55:12');
INSERT INTO `t_attachment` VALUES ('1583999712950', null, 'file', '1092739', 'jpg', '202003/d26d9747a87649b491454eda87df7979.jpg', '2020-03-12 15:55:12');
INSERT INTO `t_attachment` VALUES ('1583999713096', null, 'file', '1092739', 'jpg', '202003/9150de6a41894e58bd63e4ea89524a3f.jpg', '2020-03-12 15:55:13');
INSERT INTO `t_attachment` VALUES ('1583999713245', null, 'file', '1092739', 'jpg', '202003/e5dfbd0039df4c8b961984fbd4b5b8f9.jpg', '2020-03-12 15:55:13');
INSERT INTO `t_attachment` VALUES ('1583999713390', null, 'file', '1092739', 'jpg', '202003/a91e5fb85a3e471faa7594797e669aff.jpg', '2020-03-12 15:55:13');
INSERT INTO `t_attachment` VALUES ('1583999713553', null, 'file', '1092739', 'jpg', '202003/4ab4c96559434ec2b484df0472d84a68.jpg', '2020-03-12 15:55:13');
INSERT INTO `t_attachment` VALUES ('1583999713701', null, 'file', '1092739', 'jpg', '202003/5c8b99c6115d40a488dbe4bbce8a1738.jpg', '2020-03-12 15:55:13');
INSERT INTO `t_attachment` VALUES ('1583999714195', null, 'file', '1092739', 'jpg', '202003/d11eacd3952a409d9066965ba6320e62.jpg', '2020-03-12 15:55:14');
INSERT INTO `t_attachment` VALUES ('1583999714244', null, 'file', '1092739', 'jpg', '202003/397c3cf1786e440c972142787e2f259a.jpg', '2020-03-12 15:55:14');
INSERT INTO `t_attachment` VALUES ('1584003571921', null, 'file', '1092739', 'jpg', '202003/47474ee4664e4fa488c7ae29ad003f36.jpg', '2020-03-12 16:59:31');
INSERT INTO `t_attachment` VALUES ('1584003574670', null, 'file', '1092739', 'jpg', '202003/db1c8e714471492a9c781259feb45834.jpg', '2020-03-12 16:59:34');
INSERT INTO `t_attachment` VALUES ('1584003735955', null, 'file', '1092739', 'jpg', '202003/bcdac7c3364642868d732803f68ee487.jpg', '2020-03-12 17:02:15');
INSERT INTO `t_attachment` VALUES ('1584004701525', null, 'file', '1092739', 'jpg', '202003/a379f09cb6d8482288dc52f069f6ec80.jpg', '2020-03-12 17:18:21');
INSERT INTO `t_attachment` VALUES ('1584005187694', null, 'file', '1092739', 'jpg', '202003/16b25ef1d77f48188b5456e27e9b9112.jpg', '2020-03-12 17:26:27');
INSERT INTO `t_attachment` VALUES ('1584005976885', null, 'file', '1092739', 'jpg', '202003/abcccdf202484648b96ecdadbb2b30e2.jpg', '2020-03-12 17:39:36');
INSERT INTO `t_attachment` VALUES ('1584006058104', null, 'file', '1092739', 'jpg', '202003/4574a5b0e7fd4420bb985a4083bef5d6.jpg', '2020-03-12 17:40:58');
INSERT INTO `t_attachment` VALUES ('1584006060260', null, 'file', '1092739', 'jpg', '202003/9fda9f03814249c68b409c6bc621b166.jpg', '2020-03-12 17:41:00');
INSERT INTO `t_attachment` VALUES ('1584006224466', null, 'file', '1092739', 'jpg', '202003/ecc38f23aeeb499d8edcdde3883ee48a.jpg', '2020-03-12 17:43:44');
INSERT INTO `t_attachment` VALUES ('1585115693801', null, 'file', '1092739', 'jpg', '202003/eea577cd4c1e427abf5bfeadbd9cc209.jpg', '2020-03-25 13:54:53');
INSERT INTO `t_attachment` VALUES ('1585116414316', null, 'file', '1092739', 'jpg', '202003/df498096142d48459c32fa342166ecd3.jpg', '2020-03-25 14:06:54');

-- ----------------------------
-- Table structure for t_attendance
-- ----------------------------
DROP TABLE IF EXISTS `t_attendance`;
CREATE TABLE `t_attendance` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `AT_TIME` datetime DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `ABNORMAL` varchar(255) DEFAULT NULL COMMENT '异常考勤0：正常  1：异常',
  `EXT1` varchar(255) DEFAULT NULL COMMENT '事件地址',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '上报人经度',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '上报人纬度',
  `EXT4` varchar(255) DEFAULT NULL,
  `EXT5` varchar(255) DEFAULT NULL,
  `EXT6` varchar(255) DEFAULT NULL,
  `EXT7` varchar(255) DEFAULT NULL,
  `EXT8` varchar(255) DEFAULT NULL,
  `EXT9` varchar(255) DEFAULT NULL,
  `EXT10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_attendance
-- ----------------------------
INSERT INTO `t_attendance` VALUES ('7', '2020-03-18 15:07:40', '1', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('8', '2020-03-18 15:07:52', '1', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('9', '2020-03-18 15:08:06', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('10', '2020-03-18 17:18:34', '1', '15', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('11', '2020-03-18 17:18:38', '0', '15', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('12', '2020-03-19 09:37:40', '1', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('13', '2020-03-19 10:59:56', '1', '15', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('14', '2020-03-19 11:43:34', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('15', '2020-03-19 12:54:54', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('16', '2020-03-19 12:55:03', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('17', '2020-03-19 12:56:05', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('18', '2020-03-19 12:56:10', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('19', '2020-03-19 13:58:37', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('20', '2020-03-19 14:03:22', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('21', '2020-03-19 14:03:40', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('22', '2020-03-19 14:04:09', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('23', '2020-03-19 14:08:02', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('24', '2020-03-19 14:10:18', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('25', '2020-03-19 14:10:32', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('26', '2020-03-19 14:13:16', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('27', '2020-03-19 14:16:08', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('28', '2020-03-19 14:18:16', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('29', '2020-03-19 14:18:24', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('30', '2020-03-19 14:19:02', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('31', '2020-03-19 14:20:26', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('32', '2020-03-19 14:25:29', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('33', '2020-03-19 14:26:08', '0', '14', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('34', '2020-03-20 09:40:21', '1', '15', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('35', '2020-03-20 16:50:40', '1', '77', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('36', '2020-03-20 16:50:52', '0', '77', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('37', '2020-03-23 15:14:38', '1', '22', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('38', '2020-03-23 15:15:15', '1', '22', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_attendance` VALUES ('39', '2020-03-23 15:15:30', '0', '22', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_business_org
-- ----------------------------
DROP TABLE IF EXISTS `t_business_org`;
CREATE TABLE `t_business_org` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `LEVEL` varchar(255) DEFAULT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  `DESCRIPTION` varchar(3000) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_ID` bigint(20) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `EXT3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_business_org
-- ----------------------------
INSERT INTO `t_business_org` VALUES ('5', '中泰民安集团公司', '', '应急处突类', '2', '0', '总部业务部', '2020-03-24 10:12:29', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('6', '中泰民安集团大兴区项目部', null, '应急处突类', '2', '5', '中泰民安集团大兴区项目部', '2020-03-24 10:13:45', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('7', '北京市大兴区北臧镇政府辅警队', null, '应急处突类', '3', '6', '北京市大兴区北臧镇政府辅警队', '2020-03-24 10:14:05', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('8', '北臧村镇政务服务中心', null, '应急处突类', '4', '7', '北臧村镇政务服务中心', '2020-03-24 10:14:30', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('9', '北臧村镇政务服务一层大厅', null, '应急处突类', '4', '7', '北臧村镇政务服务一层大厅', '2020-03-24 10:14:53', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('10', '北臧村镇政务服务中心门岗', null, '应急处突类', '4', '7', '北臧村镇政务服务中心门岗', '2020-03-24 10:15:07', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('11', '北臧村镇梨园村南卡口', null, '应急处突类', '4', '7', '北臧村镇梨园村南卡口', '2020-03-24 10:15:13', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('12', '北臧村镇新立村安全科门岗', null, '应急处突类', '4', '7', '北臧村镇新立村安全科门岗', '2020-03-24 10:15:21', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('13', '北臧村镇合众力源门岗', null, '应急处突类', '4', '7', '北臧村镇合众力源门岗', '2020-03-24 10:15:26', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('14', '北臧村镇翡翠湖门岗', null, '应急处突类', '4', '7', '北臧村镇翡翠湖门岗', '2020-03-24 10:15:32', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('15', '北臧村镇采摘园门岗', null, '应急处突类', '4', '7', '北臧村镇采摘园门岗', '2020-03-24 10:15:38', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('16', '北臧村镇交通管理站门岗', null, '应急处突类', '4', '7', '北臧村镇交通管理站门岗', '2020-03-24 10:15:44', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('17', '北臧村镇环整办门岗', null, '应急处突类', '4', '7', '北臧村镇环整办门岗', '2020-03-24 10:15:49', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('18', '北臧村镇绿化队门岗', null, '应急处突类', '4', '7', '北臧村镇绿化队门岗', '2020-03-24 10:15:55', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('19', '北臧村镇垃圾处理厂门岗', null, '应急处突类', '4', '7', '北臧村镇垃圾处理厂门岗', '2020-03-24 10:16:05', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('20', '北臧村镇政务服务中心三楼监控室', null, '应急处突类', '4', '7', '北臧村镇政务服务中心三楼监控室', '2020-03-24 10:16:24', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('21', '北臧村镇政务服务中心宿舍楼门岗', null, '应急处突类', '4', '7', '北臧村镇政务服务中心宿舍楼门岗', '2020-03-24 10:16:33', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('22', '北臧村镇网格化管理', null, '应急处突类', '4', '7', '北臧村镇网格化管理', '2020-03-24 10:16:39', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('23', '北臧村镇镇域违停车辆处理', null, '应急处突类', '4', '7', '北臧村镇镇域违停车辆处理', '2020-03-24 10:16:47', '8', null, null, null);
INSERT INTO `t_business_org` VALUES ('24', '北臧村镇卫生院门岗', null, '应急处突类', '4', '7', '北臧村镇卫生院门岗', '2020-03-24 10:16:52', '8', null, null, null);

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `DEPT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LEVEL` bigint(20) DEFAULT NULL COMMENT '队伍等级',
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('1', '0', '突击应急大队', '1', '2019-06-14 20:56:41', '2020-03-24 10:29:55', '1', '突击应急大队');
INSERT INTO `t_dept` VALUES ('2', '1', '中泰民安大兴区民兵应急中队', '1', '2020-03-04 15:57:30', '2020-03-24 10:31:30', '2', '中泰民安大兴区民兵应急中队');
INSERT INTO `t_dept` VALUES ('3', '1', '中泰民安大兴区消防应急中队', '2', '2020-03-04 15:57:30', '2020-03-24 10:31:36', '2', '中泰民安大兴区消防应急中队');
INSERT INTO `t_dept` VALUES ('4', '1', '中泰民安大兴区预备役中队', '3', '2020-03-04 15:57:30', '2020-03-24 10:31:39', '2', '中泰民安大兴区预备役中队');
INSERT INTO `t_dept` VALUES ('5', '1', '中泰民安大兴区红十字会救护中队', '4', '2020-03-04 15:57:30', '2020-03-24 10:31:44', '2', '中泰民安大兴区红十字会救护中队');
INSERT INTO `t_dept` VALUES ('6', '1', '中泰民安大兴区公安辅警防爆中队', '5', '2020-03-04 15:57:30', '2020-03-24 10:31:47', '2', '中泰民安大兴区公安辅警防爆中队');
INSERT INTO `t_dept` VALUES ('7', '1', '中泰民安鹰翔护卫志愿者中队', '6', '2020-03-04 15:57:30', '2020-03-24 10:31:51', '2', '中泰民安鹰翔护卫志愿者中队');
INSERT INTO `t_dept` VALUES ('12', '6', '北京市大兴区北臧镇政府辅警队', null, '2020-03-24 10:29:31', null, '3', '北京市大兴区北臧镇政府辅警队');
INSERT INTO `t_dept` VALUES ('13', '12', '政府直属队', null, '2020-03-24 10:47:29', null, '4', '日常巡查');
INSERT INTO `t_dept` VALUES ('14', '12', '渣土岗位', null, '2020-03-24 10:48:06', null, '4', '渣土车辆管理');
INSERT INTO `t_dept` VALUES ('15', '12', '安全科岗位', null, '2020-03-24 10:48:06', null, '4', '人车管理');
INSERT INTO `t_dept` VALUES ('16', '12', '合众力源岗位', null, '2020-03-24 10:48:06', null, '4', '人车管理');
INSERT INTO `t_dept` VALUES ('17', '12', '翡翠湖岗位', null, '2020-03-24 10:48:06', null, '4', '人车管理');
INSERT INTO `t_dept` VALUES ('18', '12', '采摘园岗位', null, '2020-03-24 10:48:06', null, '4', '人车管理');
INSERT INTO `t_dept` VALUES ('19', '12', '交通管理站岗位', null, '2020-03-24 10:48:06', null, '4', '人车管理');
INSERT INTO `t_dept` VALUES ('20', '12', '环整办岗位', null, '2020-03-24 10:48:06', null, '4', '人车管理');
INSERT INTO `t_dept` VALUES ('21', '12', '绿化队岗位', null, '2020-03-24 10:48:06', null, '4', '人车管理');
INSERT INTO `t_dept` VALUES ('22', '12', '垃圾处理厂岗位', null, '2020-03-24 10:48:06', null, '4', '人车管理');
INSERT INTO `t_dept` VALUES ('23', '12', '接线员岗位', null, '2020-03-24 10:48:06', null, '4', '接线员');
INSERT INTO `t_dept` VALUES ('24', '12', '疫情管控岗位', null, '2020-03-24 10:48:06', null, '4', '疫情管控');
INSERT INTO `t_dept` VALUES ('25', '12', '网格化管理岗位', null, '2020-03-24 10:48:06', null, '4', '市政市容违规处理');
INSERT INTO `t_dept` VALUES ('26', '12', '违停车辆处理岗位', null, '2020-03-24 10:48:06', null, '4', '违停车辆处理岗位');
INSERT INTO `t_dept` VALUES ('27', '12', '卫生院岗位', null, '2020-03-24 10:48:06', null, '4', '卫生院岗位');

-- ----------------------------
-- Table structure for t_door_message
-- ----------------------------
DROP TABLE IF EXISTS `t_door_message`;
CREATE TABLE `t_door_message` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CONTENT` varchar(2550) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_door_message
-- ----------------------------
INSERT INTO `t_door_message` VALUES ('10', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 09:13:18');
INSERT INTO `t_door_message` VALUES ('11', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 10:18:55');
INSERT INTO `t_door_message` VALUES ('12', '{01,AA001,1584683437,A1584495732,035.4,T}', '2020-03-20 13:51:21');
INSERT INTO `t_door_message` VALUES ('13', '{01,AA001,1584683439,A1584682893,034.5,T}', '2020-03-20 13:51:22');
INSERT INTO `t_door_message` VALUES ('14', '{01,AA001,1584683439,A1584682896,035.1,T}', '2020-03-20 13:51:23');
INSERT INTO `t_door_message` VALUES ('15', '{01,AA001,1584683440,A1584682955,056.2,F}', '2020-03-20 13:51:25');
INSERT INTO `t_door_message` VALUES ('16', '{01,AA001,1584683441,A1584682962,035.2,T}', '2020-03-20 13:51:26');
INSERT INTO `t_door_message` VALUES ('17', '{01,AA001,1584683443,A1584682978,035.3,T}', '2020-03-20 13:51:27');
INSERT INTO `t_door_message` VALUES ('18', '{01,AA001,1584683444,A1584683292,035.8,T}', '2020-03-20 13:51:28');
INSERT INTO `t_door_message` VALUES ('19', '{01,AA001,1584683445,A1584683294,036.0,T}', '2020-03-20 13:51:30');
INSERT INTO `t_door_message` VALUES ('20', '{01,AA001,1584683448,A1584683304,035.5,T}', '2020-03-20 13:51:31');
INSERT INTO `t_door_message` VALUES ('21', '\0', '2020-03-20 13:51:52');
INSERT INTO `t_door_message` VALUES ('22', 'AA001', '2020-03-20 13:54:05');
INSERT INTO `t_door_message` VALUES ('23', '{01,AA001,1584683671,A1584683670,036.1,T}', '2020-03-20 13:55:14');
INSERT INTO `t_door_message` VALUES ('24', 'AA001', '2020-03-20 13:57:28');
INSERT INTO `t_door_message` VALUES ('25', 'AA001', '2020-03-20 13:59:40');
INSERT INTO `t_door_message` VALUES ('26', 'AA001', '2020-03-20 14:01:51');
INSERT INTO `t_door_message` VALUES ('27', '{01,AA001,1584684100,A1584683679,036.3,T}', '2020-03-20 14:02:23');
INSERT INTO `t_door_message` VALUES ('28', '{01,AA001,1584684154,A1584684126,034.1,T}', '2020-03-20 14:03:19');
INSERT INTO `t_door_message` VALUES ('29', '{01,AA001,1584684159,A1584684159,034.5,T}', '2020-03-20 14:03:34');
INSERT INTO `t_door_message` VALUES ('30', '{01,AA001,1584684175,A1584684175,034.3,T}', '2020-03-20 14:03:44');
INSERT INTO `t_door_message` VALUES ('31', '{01,AA001,1584684182,A1584684180,034.8,T}', '2020-03-20 14:03:47');
INSERT INTO `t_door_message` VALUES ('32', '{01,AA001,1584684191,A1584684190,035.0,T}', '2020-03-20 14:03:55');
INSERT INTO `t_door_message` VALUES ('33', '{01,AA001,1584684239,A1584684239,034.9,T}', '2020-03-20 14:04:48');
INSERT INTO `t_door_message` VALUES ('34', '{01,AA001,1584684251,A1584684250,034.1,T}', '2020-03-20 14:05:26');
INSERT INTO `t_door_message` VALUES ('35', '{01,AA001,1584684290,A1584684289,034.1,T}', '2020-03-20 14:05:33');
INSERT INTO `t_door_message` VALUES ('36', '{01,AA001,1584684302,A1584684301,036.3,T}', '2020-03-20 14:05:45');
INSERT INTO `t_door_message` VALUES ('37', '{01,AA001,1584684309,A1584684309,035.9,T}', '2020-03-20 14:05:54');
INSERT INTO `t_door_message` VALUES ('38', '{01,AA001,1584684317,A1584684315,035.4,T}', '2020-03-20 14:06:00');
INSERT INTO `t_door_message` VALUES ('39', '{01,AA001,1584684358,A1584684358,036.3,T}', '2020-03-20 14:06:43');
INSERT INTO `t_door_message` VALUES ('40', '{01,AA001,1584684362,A1584684362,036.7,T}', '2020-03-20 14:06:47');
INSERT INTO `t_door_message` VALUES ('41', '{01,AA001,1584684435,A1584684433,035.5,T}', '2020-03-20 14:07:59');
INSERT INTO `t_door_message` VALUES ('42', '{01,AA001,1584684562,A1584684562,035.7,T}', '2020-03-20 14:10:08');
INSERT INTO `t_door_message` VALUES ('43', '{01,AA001,1584684641,A1584684640,035.9,T}', '2020-03-20 14:11:25');
INSERT INTO `t_door_message` VALUES ('44', 'AA001', '2020-03-20 14:13:35');
INSERT INTO `t_door_message` VALUES ('45', 'AA001', '2020-03-20 14:15:48');
INSERT INTO `t_door_message` VALUES ('46', 'AA001', '2020-03-20 14:18:02');
INSERT INTO `t_door_message` VALUES ('47', '{01,AA001,1584685199,A1584685199,036.2,T}', '2020-03-20 14:20:44');
INSERT INTO `t_door_message` VALUES ('48', '{01,AA001,1584685429,A1584685428,036.4,T}', '2020-03-20 14:24:32');
INSERT INTO `t_door_message` VALUES ('49', '{01,AA001,1584685444,A1584685443,036.6,T}', '2020-03-20 14:24:48');
INSERT INTO `t_door_message` VALUES ('50', '{01,AA001,1584685450,A1584685449,036.6,T}', '2020-03-20 14:24:54');
INSERT INTO `t_door_message` VALUES ('51', '{01,AA001,1584685477,A1584685472,036.1,T}', '2020-03-20 14:25:21');
INSERT INTO `t_door_message` VALUES ('52', '{01,AA001,1584685479,A1584685478,036.3,T}', '2020-03-20 14:25:22');
INSERT INTO `t_door_message` VALUES ('53', '{01,AA001,1584685485,A1584685483,035.8,T}', '2020-03-20 14:25:28');
INSERT INTO `t_door_message` VALUES ('54', '{01,AA001,1584685490,A1584685490,036.4,T}', '2020-03-20 14:25:35');
INSERT INTO `t_door_message` VALUES ('55', '{01,AA001,1584685496,A1584685495,035.9,T}', '2020-03-20 14:25:39');
INSERT INTO `t_door_message` VALUES ('56', '{01,AA001,1584689889,A1584689888,034.8,T}', '2020-03-20 15:38:53');
INSERT INTO `t_door_message` VALUES ('57', '{01,AA001,1584689891,A1584689889,034.1,T}', '2020-03-20 15:38:55');
INSERT INTO `t_door_message` VALUES ('58', '{01,AA001,1584689898,A1584689898,036.2,T}', '2020-03-20 15:39:02');
INSERT INTO `t_door_message` VALUES ('61', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:27');
INSERT INTO `t_door_message` VALUES ('62', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('63', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('64', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('65', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('66', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('67', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('68', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('69', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('70', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('71', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('72', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('73', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('74', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('75', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('76', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('77', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('78', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('79', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('80', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('81', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('82', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('83', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('84', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('85', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('86', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('87', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('88', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('89', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('90', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('91', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('92', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('93', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('94', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('95', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('96', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:28');
INSERT INTO `t_door_message` VALUES ('97', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('98', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('99', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('100', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('101', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('102', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('103', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('104', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('105', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('106', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('107', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('108', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('109', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('110', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('111', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('112', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('113', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('114', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('115', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('116', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('117', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('118', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('119', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('120', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('121', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('122', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('123', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('124', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('125', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('126', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('127', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('128', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('129', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('130', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('131', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('132', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:29');
INSERT INTO `t_door_message` VALUES ('133', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('134', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('135', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('136', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('137', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('138', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('139', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('140', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('141', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('142', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('143', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('144', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('145', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('146', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('147', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('148', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('149', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('150', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('151', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('152', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('153', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('154', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('155', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('156', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('157', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('158', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('159', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('160', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('161', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('162', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('163', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('164', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('165', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('166', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('167', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('168', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('169', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('170', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:30');
INSERT INTO `t_door_message` VALUES ('171', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('172', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('173', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('174', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('175', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('176', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('177', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('178', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('179', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('180', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('181', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('182', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('183', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('184', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('185', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('186', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('187', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('188', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('189', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('190', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('191', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('192', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('193', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('194', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('195', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('196', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('197', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:28:31');
INSERT INTO `t_door_message` VALUES ('198', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:28');
INSERT INTO `t_door_message` VALUES ('199', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:29');
INSERT INTO `t_door_message` VALUES ('200', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:30');
INSERT INTO `t_door_message` VALUES ('201', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:31');
INSERT INTO `t_door_message` VALUES ('202', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:32');
INSERT INTO `t_door_message` VALUES ('203', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:33');
INSERT INTO `t_door_message` VALUES ('204', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:34');
INSERT INTO `t_door_message` VALUES ('205', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:35');
INSERT INTO `t_door_message` VALUES ('206', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:36');
INSERT INTO `t_door_message` VALUES ('207', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:37');
INSERT INTO `t_door_message` VALUES ('208', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:38');
INSERT INTO `t_door_message` VALUES ('209', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:39');
INSERT INTO `t_door_message` VALUES ('210', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:40');
INSERT INTO `t_door_message` VALUES ('211', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:41');
INSERT INTO `t_door_message` VALUES ('212', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:42');
INSERT INTO `t_door_message` VALUES ('213', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:43');
INSERT INTO `t_door_message` VALUES ('214', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:44');
INSERT INTO `t_door_message` VALUES ('215', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:45');
INSERT INTO `t_door_message` VALUES ('216', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:46');
INSERT INTO `t_door_message` VALUES ('217', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:47');
INSERT INTO `t_door_message` VALUES ('218', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:48');
INSERT INTO `t_door_message` VALUES ('219', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:49');
INSERT INTO `t_door_message` VALUES ('220', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:50');
INSERT INTO `t_door_message` VALUES ('221', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:51');
INSERT INTO `t_door_message` VALUES ('222', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:52');
INSERT INTO `t_door_message` VALUES ('223', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:53');
INSERT INTO `t_door_message` VALUES ('224', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:54');
INSERT INTO `t_door_message` VALUES ('225', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:56');
INSERT INTO `t_door_message` VALUES ('226', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:57');
INSERT INTO `t_door_message` VALUES ('227', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:58');
INSERT INTO `t_door_message` VALUES ('228', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:29:59');
INSERT INTO `t_door_message` VALUES ('229', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:00');
INSERT INTO `t_door_message` VALUES ('230', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:01');
INSERT INTO `t_door_message` VALUES ('231', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:02');
INSERT INTO `t_door_message` VALUES ('232', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:03');
INSERT INTO `t_door_message` VALUES ('233', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:04');
INSERT INTO `t_door_message` VALUES ('234', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:05');
INSERT INTO `t_door_message` VALUES ('235', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:06');
INSERT INTO `t_door_message` VALUES ('236', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:07');
INSERT INTO `t_door_message` VALUES ('237', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:08');
INSERT INTO `t_door_message` VALUES ('238', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:09');
INSERT INTO `t_door_message` VALUES ('239', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:10');
INSERT INTO `t_door_message` VALUES ('240', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:11');
INSERT INTO `t_door_message` VALUES ('241', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:12');
INSERT INTO `t_door_message` VALUES ('242', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:13');
INSERT INTO `t_door_message` VALUES ('243', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:14');
INSERT INTO `t_door_message` VALUES ('244', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:15');
INSERT INTO `t_door_message` VALUES ('245', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:16');
INSERT INTO `t_door_message` VALUES ('246', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:17');
INSERT INTO `t_door_message` VALUES ('247', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:22');
INSERT INTO `t_door_message` VALUES ('248', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:25');
INSERT INTO `t_door_message` VALUES ('249', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:28');
INSERT INTO `t_door_message` VALUES ('250', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:31');
INSERT INTO `t_door_message` VALUES ('251', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:34');
INSERT INTO `t_door_message` VALUES ('252', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:37');
INSERT INTO `t_door_message` VALUES ('253', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:40');
INSERT INTO `t_door_message` VALUES ('254', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:43');
INSERT INTO `t_door_message` VALUES ('255', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:46');
INSERT INTO `t_door_message` VALUES ('256', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:49');
INSERT INTO `t_door_message` VALUES ('257', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:52');
INSERT INTO `t_door_message` VALUES ('258', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:55');
INSERT INTO `t_door_message` VALUES ('259', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:30:58');
INSERT INTO `t_door_message` VALUES ('260', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:01');
INSERT INTO `t_door_message` VALUES ('261', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:04');
INSERT INTO `t_door_message` VALUES ('262', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:07');
INSERT INTO `t_door_message` VALUES ('263', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:10');
INSERT INTO `t_door_message` VALUES ('264', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:13');
INSERT INTO `t_door_message` VALUES ('265', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:16');
INSERT INTO `t_door_message` VALUES ('266', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:19');
INSERT INTO `t_door_message` VALUES ('267', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:22');
INSERT INTO `t_door_message` VALUES ('268', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:25');
INSERT INTO `t_door_message` VALUES ('269', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:28');
INSERT INTO `t_door_message` VALUES ('270', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:31');
INSERT INTO `t_door_message` VALUES ('271', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:35');
INSERT INTO `t_door_message` VALUES ('272', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:38');
INSERT INTO `t_door_message` VALUES ('273', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:41');
INSERT INTO `t_door_message` VALUES ('274', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:44');
INSERT INTO `t_door_message` VALUES ('275', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:47');
INSERT INTO `t_door_message` VALUES ('276', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:50');
INSERT INTO `t_door_message` VALUES ('277', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:53');
INSERT INTO `t_door_message` VALUES ('278', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:56');
INSERT INTO `t_door_message` VALUES ('279', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:31:59');
INSERT INTO `t_door_message` VALUES ('280', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:02');
INSERT INTO `t_door_message` VALUES ('281', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:05');
INSERT INTO `t_door_message` VALUES ('282', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:08');
INSERT INTO `t_door_message` VALUES ('283', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:11');
INSERT INTO `t_door_message` VALUES ('284', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:14');
INSERT INTO `t_door_message` VALUES ('285', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:17');
INSERT INTO `t_door_message` VALUES ('286', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:20');
INSERT INTO `t_door_message` VALUES ('287', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:23');
INSERT INTO `t_door_message` VALUES ('288', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:26');
INSERT INTO `t_door_message` VALUES ('289', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:29');
INSERT INTO `t_door_message` VALUES ('290', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:32');
INSERT INTO `t_door_message` VALUES ('291', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:35');
INSERT INTO `t_door_message` VALUES ('292', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:38');
INSERT INTO `t_door_message` VALUES ('293', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:41');
INSERT INTO `t_door_message` VALUES ('294', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:44');
INSERT INTO `t_door_message` VALUES ('295', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:47');
INSERT INTO `t_door_message` VALUES ('296', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:50');
INSERT INTO `t_door_message` VALUES ('297', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:53');
INSERT INTO `t_door_message` VALUES ('298', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:56');
INSERT INTO `t_door_message` VALUES ('299', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:32:59');
INSERT INTO `t_door_message` VALUES ('300', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:02');
INSERT INTO `t_door_message` VALUES ('301', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:05');
INSERT INTO `t_door_message` VALUES ('302', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:08');
INSERT INTO `t_door_message` VALUES ('303', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:11');
INSERT INTO `t_door_message` VALUES ('304', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:14');
INSERT INTO `t_door_message` VALUES ('305', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:18');
INSERT INTO `t_door_message` VALUES ('306', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:21');
INSERT INTO `t_door_message` VALUES ('307', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:24');
INSERT INTO `t_door_message` VALUES ('308', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:27');
INSERT INTO `t_door_message` VALUES ('309', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:30');
INSERT INTO `t_door_message` VALUES ('310', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:33');
INSERT INTO `t_door_message` VALUES ('311', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:36');
INSERT INTO `t_door_message` VALUES ('312', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:39');
INSERT INTO `t_door_message` VALUES ('313', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:42');
INSERT INTO `t_door_message` VALUES ('314', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:45');
INSERT INTO `t_door_message` VALUES ('315', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:48');
INSERT INTO `t_door_message` VALUES ('316', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:51');
INSERT INTO `t_door_message` VALUES ('317', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:54');
INSERT INTO `t_door_message` VALUES ('318', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:33:57');
INSERT INTO `t_door_message` VALUES ('319', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:34:00');
INSERT INTO `t_door_message` VALUES ('320', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:34:03');
INSERT INTO `t_door_message` VALUES ('321', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:34:06');
INSERT INTO `t_door_message` VALUES ('322', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:34:09');
INSERT INTO `t_door_message` VALUES ('323', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:34:12');
INSERT INTO `t_door_message` VALUES ('324', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:34:15');
INSERT INTO `t_door_message` VALUES ('325', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:34:18');
INSERT INTO `t_door_message` VALUES ('326', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:34:21');
INSERT INTO `t_door_message` VALUES ('327', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:34:24');
INSERT INTO `t_door_message` VALUES ('328', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-20 16:34:27');
INSERT INTO `t_door_message` VALUES ('329', '{01,AA001,1584694754,A1584694753,034.0,T}', '2020-03-20 16:59:57');
INSERT INTO `t_door_message` VALUES ('330', '{01,AA001,1584694765,A1584694765,034.1,T}', '2020-03-20 17:00:10');
INSERT INTO `t_door_message` VALUES ('331', '{01,AA001,1584694769,A1584694769,035.1,T}', '2020-03-20 17:00:13');
INSERT INTO `t_door_message` VALUES ('332', '\r\n\r\n', '2020-03-20 23:52:00');
INSERT INTO `t_door_message` VALUES ('333', 'GET / HTTP/1.0\r\n\r\n', '2020-03-20 23:52:06');
INSERT INTO `t_door_message` VALUES ('334', 'OPTIONS / HTTP/1.0\r\n\r\n', '2020-03-20 23:52:14');
INSERT INTO `t_door_message` VALUES ('335', 'OPTIONS / RTSP/1.0\r\n\r\n', '2020-03-20 23:52:21');
INSERT INTO `t_door_message` VALUES ('336', '�\0\0(r�\0\0\0\0\0\0\0\0��\0�|\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 23:52:27');
INSERT INTO `t_door_message` VALUES ('337', '\0\0\0\0\0\0\0\0\0\0versionbind\0\0\0', '2020-03-20 23:52:32');
INSERT INTO `t_door_message` VALUES ('338', '\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 23:52:37');
INSERT INTO `t_door_message` VALUES ('339', 'EHLO\r\n', '2020-03-20 23:52:43');
INSERT INTO `t_door_message` VALUES ('340', 'HELP\r\n', '2020-03-20 23:52:50');
INSERT INTO `t_door_message` VALUES ('341', '\0\0S\0\0O\0?G���,��`~�\0��{�Ֆ�w����<=�o�n\0\0(\0\0\0\n\0f\0\0\0e\0d\0c\0b\0a\0`\0\0\0	\0\0\0\0\0\0', '2020-03-20 23:52:57');
INSERT INTO `t_door_message` VALUES ('342', '\0\0*%�\0\0\0\0\0Cookie: mstshash=beian.miit.gov.cn\r\n\0\0\0\0\0', '2020-03-20 23:53:04');
INSERT INTO `t_door_message` VALUES ('343', '\0\0i\0\0eU��random1random2random3random4\0\0\0/\0\n\0\09\0\0�\0\00\0\r\0,\0*\0\0\0', '2020-03-20 23:53:11');
INSERT INTO `t_door_message` VALUES ('344', '��\0u\0\0\0 \0\0f\0\0e\0\0d\0\0c\0\0b\0\0:\0\09\0\08\0\05\0\04\0\03\0\02\0\0/\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0	\0\0\0\0\0\0\0\0\0\0\0�\0@\0�\0�\0�\0�\0\0\0\0�i<+�֛�Ӂ���@�o,M ��ධ��)�', '2020-03-20 23:53:17');
INSERT INTO `t_door_message` VALUES ('345', '\0\0\0qj�n0�k��\n��^0�\0P�\0�NM�0�\0�0krbtgtNM�19700101000000Z��٨0', '2020-03-20 23:53:23');
INSERT INTO `t_door_message` VALUES ('346', '\0\0\0��SMBr\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0�\0PC NETWORK PROGRAM 1.0\0MICROSOFT NETWORKS 1.03\0MICROSOFT NETWORKS 3.0\0LANMAN1.0\0LM1.2X002\0Samba\0NT LANMAN 1.0\0NT LM 0.12\0', '2020-03-20 23:53:30');
INSERT INTO `t_door_message` VALUES ('347', 'l\0\0\0\0\0\0\0\0\0\0', '2020-03-20 23:53:36');
INSERT INTO `t_door_message` VALUES ('348', 'GET /nice%20ports%2C/Tri%6Eity.txt%2ebak HTTP/1.0\r\n\r\n', '2020-03-20 23:53:43');
INSERT INTO `t_door_message` VALUES ('349', 'default\n', '2020-03-20 23:53:48');
INSERT INTO `t_door_message` VALUES ('350', '0�\0\0\0-c�\0\0\0$\0\n\0\n\0\0d\0�objectClass0�\0\0\0\0', '2020-03-20 23:53:54');
INSERT INTO `t_door_message` VALUES ('351', '0`\0�\0', '2020-03-20 23:54:00');
INSERT INTO `t_door_message` VALUES ('352', 'OPTIONS sip:nm SIP/2.0\r\nVia: SIP/2.0/TCP nm;branch=foo\r\nFrom: <sip:cn@cn>;tag=root\r\nTo: <sip:vd@vd>\r\nCall-ID: 50000\r\nCSeq: 42 OPTIONS\r\nMax-Forwards: 70\r\nContent-Length: 0\r\nContact: <sip:cn@cn>\r\nAccept: application/sdp\r\n\r\n', '2020-03-20 23:54:06');
INSERT INTO `t_door_message` VALUES ('353', 'TNMP\0\0\0TNME\0\0\0', '2020-03-20 23:54:13');
INSERT INTO `t_door_message` VALUES ('354', '\0\0�\0\0\0\0\0', '2020-03-20 23:54:19');
INSERT INTO `t_door_message` VALUES ('355', 'DmdT\0\0\0\0\0\0\0\0\0\0\0��', '2020-03-20 23:54:24');
INSERT INTO `t_door_message` VALUES ('356', ':\0\0\0/\0\0\0\0\0@\0\0=\0\0\0\0\0\0\0\0\0\0\0\0/\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 23:54:31');
INSERT INTO `t_door_message` VALUES ('357', 'DIST00000001ARGC00000005ARGV00000002ccARGV00000002-cARGV00000006cnvd.cARGV00000002-oARGV00000006cnvd.oDOTI00000000', '2020-03-20 23:54:37');
INSERT INTO `t_door_message` VALUES ('358', 'JRMI\0K', '2020-03-20 23:54:42');
INSERT INTO `t_door_message` VALUES ('359', '\0\0\0\0\0\0', '2020-03-20 23:54:48');
INSERT INTO `t_door_message` VALUES ('360', '< NTP/1.0 >\n', '2020-03-20 23:54:53');
INSERT INTO `t_door_message` VALUES ('361', '\0\0�����\0\0\0MMS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0\0\0N\0S\0P\0l\0a\0y\0e\0r\0/\09\0.\00\0.\00\0.\02\09\08\00\0;\0 \0{\00\00\00\00\0A\0A\00\00\0-\00\0A\00\00\0-\00\00\0a\00\0-\0A\0A\00\0A\0-\00\00\00\00\0A\00\0A\0A\00\0A\0A\00\0}\0\0\0�m�_', '2020-03-20 23:54:58');
INSERT INTO `t_door_message` VALUES ('362', '\0Z\0\0\0\0\06,\0\0\0�\0\0\0\0 \0:\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04�\0\0\0\0\0\0\0\0\0\0\0(CONNECT_DATA=(COMMAND=version))', '2020-03-20 23:55:04');
INSERT INTO `t_door_message` VALUES ('363', 'Subscribe\n', '2020-03-20 23:55:10');
INSERT INTO `t_door_message` VALUES ('364', 'Query\n', '2020-03-20 23:55:15');
INSERT INTO `t_door_message` VALUES ('365', '\0�\0\ngoogle.com\0PGET / HTTP/1.0\r\n\r\n', '2020-03-20 23:55:20');
INSERT INTO `t_door_message` VALUES ('366', '\0\0\0root\0', '2020-03-20 23:55:25');
INSERT INTO `t_door_message` VALUES ('367', '\04\0\0\0\0\0\0\0\0\0\0\0\0(\0�\0U\0\0\0MSSQLServer\0H\0\0', '2020-03-20 23:55:30');
INSERT INTO `t_door_message` VALUES ('368', 'HELP\n\n\0', '2020-03-20 23:55:35');
INSERT INTO `t_door_message` VALUES ('369', 'stats\r\n', '2020-03-20 23:55:40');
INSERT INTO `t_door_message` VALUES ('370', '\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0service_mgr\0\0\0\0\0\0\0scanner cnvd \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 23:55:46');
INSERT INTO `t_door_message` VALUES ('371', '\0\0\0\0DB2DAS      \0\0\09z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 23:55:51');
INSERT INTO `t_door_message` VALUES ('372', '�\0\0\0\0\0�\0\0SQLDB2RA\0\0\0\0\0\0�\0\0\0\0\0�\0\0\0	\0\0\0\0\0@\0\0\0	\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0@\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0@\0\0\0	\0\0\0\0\0@\0\0\0	\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0        \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 23:55:56');
INSERT INTO `t_door_message` VALUES ('373', 'Client string for PARC version 1 Wire Encryption version 1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 23:56:01');
INSERT INTO `t_door_message` VALUES ('374', '<\0K\0\0\0 \0\0\0\0\0\0\0\0\0����\0\0\n��SUR\0\0<\0\0\0\0\0\0\0\0\0\0\0\0\Z\0<\0\0\0\0\0\n\0\0\0\0\0', '2020-03-20 23:56:06');
INSERT INTO `t_door_message` VALUES ('375', '4\0\n', '2020-03-20 23:56:11');
INSERT INTO `t_door_message` VALUES ('376', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 23:56:16');
INSERT INTO `t_door_message` VALUES ('377', 'serverstatus\r\n', '2020-03-20 23:56:21');
INSERT INTO `t_door_message` VALUES ('378', '���垠פ������������փ��ݤѡȤ���ݣ��ݦ�ݘ�', '2020-03-20 23:56:26');
INSERT INTO `t_door_message` VALUES ('379', '#ST\n', '2020-03-20 23:56:31');
INSERT INTO `t_door_message` VALUES ('380', '\0�<\0\0\0d\0e\0\0\0=\0IEEEM\0\0lsqlexec\0\0\0\0\0\09.280\0\0RDS#R000000\0\0sqli\0\0\03\0\0\0\0\0\0\0\0\0\0cnvd\0\0cnvd\0ol\0\0\0\0\0\0\0\0\0=tlitcp\0\0\0\0\0\0h\0\0\0\0\0cnvd\0\0\0\0\0\0\0\0\0\0\0\0j\0\0\0', '2020-03-20 23:56:36');
INSERT INTO `t_door_message` VALUES ('381', '\02�\0\0,A\0^\0m\0Z\0\0$\0$\0@\0t\0\0G', '2020-03-20 23:56:41');
INSERT INTO `t_door_message` VALUES ('382', 'TSH \0\0\0�1\0\0\0\0\0\0\0\0\0\0\0�\0\0ID  \n&\0\0\0\0\0\0\0\0�@\0\0\0\0\0\0SYSTEM.ADMIN.SVRCONNQ\0�cnvd-probe                                      \0\0\0\0j\0\0\0�\0���������������\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0MQJB00000000CANNED_DATA                                     ', '2020-03-20 23:56:46');
INSERT INTO `t_door_message` VALUES ('383', 'GET /server-info HTTP/1.1\r\nClient-DPAP-Version: 1.1\r\nUser-Agent: iPhoto/9.1.1  (Macintosh; N; PPC)\r\n\r\n', '2020-03-20 23:56:51');
INSERT INTO `t_door_message` VALUES ('384', 'A\0\0\0:0\0\0�����\0\0\0\0\0\0test.$cmd\0\0\0\0\0����\0\0\0serverStatus\0\0\0\0\0\0\0�?\0', '2020-03-20 23:56:56');
INSERT INTO `t_door_message` VALUES ('385', '*1\r\n$4\r\ninfo\r\n', '2020-03-20 23:57:01');
INSERT INTO `t_door_message` VALUES ('386', '\0\0\0', '2020-03-20 23:57:06');
INSERT INTO `t_door_message` VALUES ('387', 'show info\r\n', '2020-03-20 23:57:11');
INSERT INTO `t_door_message` VALUES ('388', '�\0\0\0\0\0\0\0\0\0\0��b\0\0\0\0\0\0\0\0', '2020-03-20 23:57:16');
INSERT INTO `t_door_message` VALUES ('389', '\0n', '2020-03-20 23:57:21');
INSERT INTO `t_door_message` VALUES ('390', 'vp3', '2020-03-20 23:57:26');
INSERT INTO `t_door_message` VALUES ('391', '�\0���a�', '2020-03-20 23:57:31');
INSERT INTO `t_door_message` VALUES ('392', '�', '2020-03-20 23:57:36');
INSERT INTO `t_door_message` VALUES ('393', 'GET /version HTTP/1.1\r\n\r\n', '2020-03-20 23:57:41');
INSERT INTO `t_door_message` VALUES ('394', '\0\0\0\0\0\0\0', '2020-03-20 23:57:46');
INSERT INTO `t_door_message` VALUES ('395', '����\0IBM-3279-4-E��������\0��\0', '2020-03-20 23:57:51');
INSERT INTO `t_door_message` VALUES ('396', 'GIOP\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0abcdef\0\0\0\0\0get\0\0\0\0\0', '2020-03-20 23:57:56');
INSERT INTO `t_door_message` VALUES ('397', 'VERSION', '2020-03-20 23:58:01');
INSERT INTO `t_door_message` VALUES ('398', 'CNXN\0\0\0\0\0\0\0\0\02\0\0����host::\0', '2020-03-20 23:58:06');
INSERT INTO `t_door_message` VALUES ('399', '\0\0\0\0\0\0{\"code\":106}', '2020-03-20 23:58:11');
INSERT INTO `t_door_message` VALUES ('400', '\0\0\0\0ImYorDad0u\0\0', '2020-03-20 23:58:16');
INSERT INTO `t_door_message` VALUES ('401', '�\0\0(�Y\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 23:58:51');
INSERT INTO `t_door_message` VALUES ('402', '\0\0/*�\0\0\0\0\0Cookie: mstshash=Administr\r\n\0\0\0\0\0', '2020-03-21 15:33:39');
INSERT INTO `t_door_message` VALUES ('403', 'JDWP-Handshake\0\0\0\0\0\0\0', '2020-03-21 21:36:13');
INSERT INTO `t_door_message` VALUES ('404', '\0\0�\0\0\0\0\0\0\0\0\0\0', '2020-03-22 00:47:03');
INSERT INTO `t_door_message` VALUES ('405', '\0\0/*�\0\0\0\0\0Cookie: mstshash=Administr\r\n\0\0\0\0\0', '2020-03-22 01:38:52');
INSERT INTO `t_door_message` VALUES ('406', 'JDWP-Handshake\0\0\0\0\0\0\0', '2020-03-22 19:42:29');
INSERT INTO `t_door_message` VALUES ('407', '\r\n\r\n', '2020-03-23 01:02:13');
INSERT INTO `t_door_message` VALUES ('408', 'GET / HTTP/1.0\r\n\r\n', '2020-03-23 01:02:19');
INSERT INTO `t_door_message` VALUES ('409', 'OPTIONS / HTTP/1.0\r\n\r\n', '2020-03-23 01:02:25');
INSERT INTO `t_door_message` VALUES ('410', 'OPTIONS / RTSP/1.0\r\n\r\n', '2020-03-23 01:02:32');
INSERT INTO `t_door_message` VALUES ('411', '�\0\0(r�\0\0\0\0\0\0\0\0��\0�|\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 01:02:37');
INSERT INTO `t_door_message` VALUES ('412', '\0\0\0\0\0\0\0\0\0\0versionbind\0\0\0', '2020-03-23 01:02:42');
INSERT INTO `t_door_message` VALUES ('413', '\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 01:02:48');
INSERT INTO `t_door_message` VALUES ('414', 'EHLO\r\n', '2020-03-23 01:02:53');
INSERT INTO `t_door_message` VALUES ('415', 'HELP\r\n', '2020-03-23 01:03:00');
INSERT INTO `t_door_message` VALUES ('416', '\0\0S\0\0O\0?G���,��`~�\0��{�Ֆ�w����<=�o�n\0\0(\0\0\0\n\0f\0\0\0e\0d\0c\0b\0a\0`\0\0\0	\0\0\0\0\0\0', '2020-03-23 01:03:07');
INSERT INTO `t_door_message` VALUES ('417', '\0\0*%�\0\0\0\0\0Cookie: mstshash=beian.miit.gov.cn\r\n\0\0\0\0\0', '2020-03-23 01:03:12');
INSERT INTO `t_door_message` VALUES ('418', '\0\0i\0\0eU��random1random2random3random4\0\0\0/\0\n\0\09\0\0�\0\00\0\r\0,\0*\0\0\0', '2020-03-23 01:03:18');
INSERT INTO `t_door_message` VALUES ('419', '��\0u\0\0\0 \0\0f\0\0e\0\0d\0\0c\0\0b\0\0:\0\09\0\08\0\05\0\04\0\03\0\02\0\0/\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0	\0\0\0\0\0\0\0\0\0\0\0�\0@\0�\0�\0�\0�\0\0\0\0�i<+�֛�Ӂ���@�o,M ��ධ��)�', '2020-03-23 01:03:24');
INSERT INTO `t_door_message` VALUES ('420', '\0\0\0qj�n0�k��\n��^0�\0P�\0�NM�0�\0�0krbtgtNM�19700101000000Z��٨0', '2020-03-23 01:03:29');
INSERT INTO `t_door_message` VALUES ('421', '\0\0\0��SMBr\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0�\0PC NETWORK PROGRAM 1.0\0MICROSOFT NETWORKS 1.03\0MICROSOFT NETWORKS 3.0\0LANMAN1.0\0LM1.2X002\0Samba\0NT LANMAN 1.0\0NT LM 0.12\0', '2020-03-23 01:03:34');
INSERT INTO `t_door_message` VALUES ('422', 'l\0\0\0\0\0\0\0\0\0\0', '2020-03-23 01:03:40');
INSERT INTO `t_door_message` VALUES ('423', 'GET /nice%20ports%2C/Tri%6Eity.txt%2ebak HTTP/1.0\r\n\r\n', '2020-03-23 01:03:45');
INSERT INTO `t_door_message` VALUES ('424', 'default\n', '2020-03-23 01:03:51');
INSERT INTO `t_door_message` VALUES ('425', '0�\0\0\0-c�\0\0\0$\0\n\0\n\0\0d\0�objectClass0�\0\0\0\0', '2020-03-23 01:03:56');
INSERT INTO `t_door_message` VALUES ('426', '0`\0�\0', '2020-03-23 01:04:02');
INSERT INTO `t_door_message` VALUES ('427', 'OPTIONS sip:nm SIP/2.0\r\nVia: SIP/2.0/TCP nm;branch=foo\r\nFrom: <sip:cn@cn>;tag=root\r\nTo: <sip:vd@vd>\r\nCall-ID: 50000\r\nCSeq: 42 OPTIONS\r\nMax-Forwards: 70\r\nContent-Length: 0\r\nContact: <sip:cn@cn>\r\nAccept: application/sdp\r\n\r\n', '2020-03-23 01:04:07');
INSERT INTO `t_door_message` VALUES ('428', 'TNMP\0\0\0TNME\0\0\0', '2020-03-23 01:04:13');
INSERT INTO `t_door_message` VALUES ('429', '\0\0�\0\0\0\0\0', '2020-03-23 01:04:18');
INSERT INTO `t_door_message` VALUES ('430', 'DmdT\0\0\0\0\0\0\0\0\0\0\0��', '2020-03-23 01:04:23');
INSERT INTO `t_door_message` VALUES ('431', ':\0\0\0/\0\0\0\0\0@\0\0=\0\0\0\0\0\0\0\0\0\0\0\0/\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 01:04:28');
INSERT INTO `t_door_message` VALUES ('432', 'DIST00000001ARGC00000005ARGV00000002ccARGV00000002-cARGV00000006cnvd.cARGV00000002-oARGV00000006cnvd.oDOTI00000000', '2020-03-23 01:04:33');
INSERT INTO `t_door_message` VALUES ('433', 'JRMI\0K', '2020-03-23 01:04:38');
INSERT INTO `t_door_message` VALUES ('434', '\0\0\0\0\0\0', '2020-03-23 01:04:43');
INSERT INTO `t_door_message` VALUES ('435', '< NTP/1.0 >\n', '2020-03-23 01:04:48');
INSERT INTO `t_door_message` VALUES ('436', '\0\0�����\0\0\0MMS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0\0\0N\0S\0P\0l\0a\0y\0e\0r\0/\09\0.\00\0.\00\0.\02\09\08\00\0;\0 \0{\00\00\00\00\0A\0A\00\00\0-\00\0A\00\00\0-\00\00\0a\00\0-\0A\0A\00\0A\0-\00\00\00\00\0A\00\0A\0A\00\0A\0A\00\0}\0\0\0�m�_', '2020-03-23 01:04:53');
INSERT INTO `t_door_message` VALUES ('437', '\0Z\0\0\0\0\06,\0\0\0�\0\0\0\0 \0:\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04�\0\0\0\0\0\0\0\0\0\0\0(CONNECT_DATA=(COMMAND=version))', '2020-03-23 01:04:58');
INSERT INTO `t_door_message` VALUES ('438', 'Subscribe\n', '2020-03-23 01:05:03');
INSERT INTO `t_door_message` VALUES ('439', 'Query\n', '2020-03-23 01:05:09');
INSERT INTO `t_door_message` VALUES ('440', '\0�\0\ngoogle.com\0PGET / HTTP/1.0\r\n\r\n', '2020-03-23 01:05:14');
INSERT INTO `t_door_message` VALUES ('441', '\0\0\0root\0', '2020-03-23 01:05:19');
INSERT INTO `t_door_message` VALUES ('442', '\04\0\0\0\0\0\0\0\0\0\0\0\0(\0�\0U\0\0\0MSSQLServer\0H\0\0', '2020-03-23 01:05:24');
INSERT INTO `t_door_message` VALUES ('443', 'HELP\n\n\0', '2020-03-23 01:05:29');
INSERT INTO `t_door_message` VALUES ('444', 'stats\r\n', '2020-03-23 01:05:34');
INSERT INTO `t_door_message` VALUES ('445', '\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0service_mgr\0\0\0\0\0\0\0scanner cnvd \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 01:05:39');
INSERT INTO `t_door_message` VALUES ('446', '\0\0\0\0DB2DAS      \0\0\09z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 01:05:44');
INSERT INTO `t_door_message` VALUES ('447', '�\0\0\0\0\0�\0\0SQLDB2RA\0\0\0\0\0\0�\0\0\0\0\0�\0\0\0	\0\0\0\0\0@\0\0\0	\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0@\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0@\0\0\0	\0\0\0\0\0@\0\0\0	\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0        \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 01:05:49');
INSERT INTO `t_door_message` VALUES ('448', 'Client string for PARC version 1 Wire Encryption version 1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 01:05:54');
INSERT INTO `t_door_message` VALUES ('449', '<\0K\0\0\0 \0\0\0\0\0\0\0\0\0����\0\0\n��SUR\0\0<\0\0\0\0\0\0\0\0\0\0\0\0\Z\0<\0\0\0\0\0\n\0\0\0\0\0', '2020-03-23 01:05:59');
INSERT INTO `t_door_message` VALUES ('450', '4\0\n', '2020-03-23 01:06:04');
INSERT INTO `t_door_message` VALUES ('451', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 01:06:09');
INSERT INTO `t_door_message` VALUES ('452', 'serverstatus\r\n', '2020-03-23 01:06:14');
INSERT INTO `t_door_message` VALUES ('453', '���垠פ������������փ��ݤѡȤ���ݣ��ݦ�ݘ�', '2020-03-23 01:06:19');
INSERT INTO `t_door_message` VALUES ('454', '#ST\n', '2020-03-23 01:06:24');
INSERT INTO `t_door_message` VALUES ('455', '\0�<\0\0\0d\0e\0\0\0=\0IEEEM\0\0lsqlexec\0\0\0\0\0\09.280\0\0RDS#R000000\0\0sqli\0\0\03\0\0\0\0\0\0\0\0\0\0cnvd\0\0cnvd\0ol\0\0\0\0\0\0\0\0\0=tlitcp\0\0\0\0\0\0h\0\0\0\0\0cnvd\0\0\0\0\0\0\0\0\0\0\0\0j\0\0\0', '2020-03-23 01:06:29');
INSERT INTO `t_door_message` VALUES ('456', '\02�\0\0,A\0^\0m\0Z\0\0$\0$\0@\0t\0\0G', '2020-03-23 01:06:34');
INSERT INTO `t_door_message` VALUES ('457', 'TSH \0\0\0�1\0\0\0\0\0\0\0\0\0\0\0�\0\0ID  \n&\0\0\0\0\0\0\0\0�@\0\0\0\0\0\0SYSTEM.ADMIN.SVRCONNQ\0�cnvd-probe                                      \0\0\0\0j\0\0\0�\0���������������\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0MQJB00000000CANNED_DATA                                     ', '2020-03-23 01:06:39');
INSERT INTO `t_door_message` VALUES ('458', 'GET /server-info HTTP/1.1\r\nClient-DPAP-Version: 1.1\r\nUser-Agent: iPhoto/9.1.1  (Macintosh; N; PPC)\r\n\r\n', '2020-03-23 01:06:44');
INSERT INTO `t_door_message` VALUES ('459', 'A\0\0\0:0\0\0�����\0\0\0\0\0\0test.$cmd\0\0\0\0\0����\0\0\0serverStatus\0\0\0\0\0\0\0�?\0', '2020-03-23 01:06:49');
INSERT INTO `t_door_message` VALUES ('460', '*1\r\n$4\r\ninfo\r\n', '2020-03-23 01:06:54');
INSERT INTO `t_door_message` VALUES ('461', '\0\0\0', '2020-03-23 01:06:59');
INSERT INTO `t_door_message` VALUES ('462', 'show info\r\n', '2020-03-23 01:07:04');
INSERT INTO `t_door_message` VALUES ('463', '�\0\0\0\0\0\0\0\0\0\0��b\0\0\0\0\0\0\0\0', '2020-03-23 01:07:09');
INSERT INTO `t_door_message` VALUES ('464', '\0n', '2020-03-23 01:07:14');
INSERT INTO `t_door_message` VALUES ('465', 'vp3', '2020-03-23 01:07:19');
INSERT INTO `t_door_message` VALUES ('466', '�\0���a�', '2020-03-23 01:07:24');
INSERT INTO `t_door_message` VALUES ('467', '�', '2020-03-23 01:07:29');
INSERT INTO `t_door_message` VALUES ('468', 'GET /version HTTP/1.1\r\n\r\n', '2020-03-23 01:07:35');
INSERT INTO `t_door_message` VALUES ('469', '\0\0\0\0\0\0\0', '2020-03-23 01:07:40');
INSERT INTO `t_door_message` VALUES ('470', '����\0IBM-3279-4-E��������\0��\0', '2020-03-23 01:07:45');
INSERT INTO `t_door_message` VALUES ('471', 'GIOP\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0abcdef\0\0\0\0\0get\0\0\0\0\0', '2020-03-23 01:07:50');
INSERT INTO `t_door_message` VALUES ('472', 'VERSION', '2020-03-23 01:07:55');
INSERT INTO `t_door_message` VALUES ('473', 'CNXN\0\0\0\0\0\0\0\0\02\0\0����host::\0', '2020-03-23 01:08:00');
INSERT INTO `t_door_message` VALUES ('474', '\0\0\0\0\0\0{\"code\":106}', '2020-03-23 01:08:05');
INSERT INTO `t_door_message` VALUES ('475', '\0\0\0\0ImYorDad0u\0\0', '2020-03-23 01:08:10');
INSERT INTO `t_door_message` VALUES ('476', '�\0\0(>R1m\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 01:08:41');
INSERT INTO `t_door_message` VALUES ('477', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-23 10:58:10');
INSERT INTO `t_door_message` VALUES ('478', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-23 10:58:13');
INSERT INTO `t_door_message` VALUES ('479', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-23 10:58:17');
INSERT INTO `t_door_message` VALUES ('480', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-23 10:58:20');
INSERT INTO `t_door_message` VALUES ('481', '{01,AA001,1584085970,A1798260480,088.2,F}', '2020-03-23 10:58:23');
INSERT INTO `t_door_message` VALUES ('482', '\r\n\r\n', '2020-03-23 22:57:04');
INSERT INTO `t_door_message` VALUES ('483', 'GET / HTTP/1.0\r\n\r\n', '2020-03-23 22:57:10');
INSERT INTO `t_door_message` VALUES ('484', 'OPTIONS / HTTP/1.0\r\n\r\n', '2020-03-23 22:57:15');
INSERT INTO `t_door_message` VALUES ('485', 'OPTIONS / RTSP/1.0\r\n\r\n', '2020-03-23 22:57:21');
INSERT INTO `t_door_message` VALUES ('486', '�\0\0(r�\0\0\0\0\0\0\0\0��\0�|\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 22:57:26');
INSERT INTO `t_door_message` VALUES ('487', '\0\0\0\0\0\0\0\0\0\0versionbind\0\0\0', '2020-03-23 22:57:31');
INSERT INTO `t_door_message` VALUES ('488', '\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 22:57:37');
INSERT INTO `t_door_message` VALUES ('489', 'EHLO\r\n', '2020-03-23 22:57:42');
INSERT INTO `t_door_message` VALUES ('490', 'HELP\r\n', '2020-03-23 22:57:47');
INSERT INTO `t_door_message` VALUES ('491', '\0\0S\0\0O\0?G���,��`~�\0��{�Ֆ�w����<=�o�n\0\0(\0\0\0\n\0f\0\0\0e\0d\0c\0b\0a\0`\0\0\0	\0\0\0\0\0\0', '2020-03-23 22:57:54');
INSERT INTO `t_door_message` VALUES ('492', '\0\0*%�\0\0\0\0\0Cookie: mstshash=beian.miit.gov.cn\r\n\0\0\0\0\0', '2020-03-23 22:57:59');
INSERT INTO `t_door_message` VALUES ('493', '\0\0i\0\0eU��random1random2random3random4\0\0\0/\0\n\0\09\0\0�\0\00\0\r\0,\0*\0\0\0', '2020-03-23 22:58:04');
INSERT INTO `t_door_message` VALUES ('494', '��\0u\0\0\0 \0\0f\0\0e\0\0d\0\0c\0\0b\0\0:\0\09\0\08\0\05\0\04\0\03\0\02\0\0/\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0	\0\0\0\0\0\0\0\0\0\0\0�\0@\0�\0�\0�\0�\0\0\0\0�i<+�֛�Ӂ���@�o,M ��ධ��)�', '2020-03-23 22:58:09');
INSERT INTO `t_door_message` VALUES ('495', '\0\0\0qj�n0�k��\n��^0�\0P�\0�NM�0�\0�0krbtgtNM�19700101000000Z��٨0', '2020-03-23 22:58:14');
INSERT INTO `t_door_message` VALUES ('496', '\0\0\0��SMBr\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0�\0PC NETWORK PROGRAM 1.0\0MICROSOFT NETWORKS 1.03\0MICROSOFT NETWORKS 3.0\0LANMAN1.0\0LM1.2X002\0Samba\0NT LANMAN 1.0\0NT LM 0.12\0', '2020-03-23 22:58:19');
INSERT INTO `t_door_message` VALUES ('497', 'l\0\0\0\0\0\0\0\0\0\0', '2020-03-23 22:58:25');
INSERT INTO `t_door_message` VALUES ('498', 'GET /nice%20ports%2C/Tri%6Eity.txt%2ebak HTTP/1.0\r\n\r\n', '2020-03-23 22:58:30');
INSERT INTO `t_door_message` VALUES ('499', 'default\n', '2020-03-23 22:58:35');
INSERT INTO `t_door_message` VALUES ('500', '0�\0\0\0-c�\0\0\0$\0\n\0\n\0\0d\0�objectClass0�\0\0\0\0', '2020-03-23 22:58:40');
INSERT INTO `t_door_message` VALUES ('501', '0`\0�\0', '2020-03-23 22:58:45');
INSERT INTO `t_door_message` VALUES ('502', 'OPTIONS sip:nm SIP/2.0\r\nVia: SIP/2.0/TCP nm;branch=foo\r\nFrom: <sip:cn@cn>;tag=root\r\nTo: <sip:vd@vd>\r\nCall-ID: 50000\r\nCSeq: 42 OPTIONS\r\nMax-Forwards: 70\r\nContent-Length: 0\r\nContact: <sip:cn@cn>\r\nAccept: application/sdp\r\n\r\n', '2020-03-23 22:58:50');
INSERT INTO `t_door_message` VALUES ('503', 'TNMP\0\0\0TNME\0\0\0', '2020-03-23 22:58:56');
INSERT INTO `t_door_message` VALUES ('504', '\0\0�\0\0\0\0\0', '2020-03-23 22:59:01');
INSERT INTO `t_door_message` VALUES ('505', 'DmdT\0\0\0\0\0\0\0\0\0\0\0��', '2020-03-23 22:59:06');
INSERT INTO `t_door_message` VALUES ('506', ':\0\0\0/\0\0\0\0\0@\0\0=\0\0\0\0\0\0\0\0\0\0\0\0/\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 22:59:11');
INSERT INTO `t_door_message` VALUES ('507', 'DIST00000001ARGC00000005ARGV00000002ccARGV00000002-cARGV00000006cnvd.cARGV00000002-oARGV00000006cnvd.oDOTI00000000', '2020-03-23 22:59:16');
INSERT INTO `t_door_message` VALUES ('508', 'JRMI\0K', '2020-03-23 22:59:21');
INSERT INTO `t_door_message` VALUES ('509', '\0\0\0\0\0\0', '2020-03-23 22:59:26');
INSERT INTO `t_door_message` VALUES ('510', '< NTP/1.0 >\n', '2020-03-23 22:59:31');
INSERT INTO `t_door_message` VALUES ('511', '\0\0�����\0\0\0MMS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0\0\0N\0S\0P\0l\0a\0y\0e\0r\0/\09\0.\00\0.\00\0.\02\09\08\00\0;\0 \0{\00\00\00\00\0A\0A\00\00\0-\00\0A\00\00\0-\00\00\0a\00\0-\0A\0A\00\0A\0-\00\00\00\00\0A\00\0A\0A\00\0A\0A\00\0}\0\0\0�m�_', '2020-03-23 22:59:36');
INSERT INTO `t_door_message` VALUES ('512', '\0Z\0\0\0\0\06,\0\0\0�\0\0\0\0 \0:\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04�\0\0\0\0\0\0\0\0\0\0\0(CONNECT_DATA=(COMMAND=version))', '2020-03-23 22:59:41');
INSERT INTO `t_door_message` VALUES ('513', 'Subscribe\n', '2020-03-23 22:59:46');
INSERT INTO `t_door_message` VALUES ('514', 'Query\n', '2020-03-23 22:59:52');
INSERT INTO `t_door_message` VALUES ('515', '\0�\0\ngoogle.com\0PGET / HTTP/1.0\r\n\r\n', '2020-03-23 22:59:57');
INSERT INTO `t_door_message` VALUES ('516', '\0\0\0root\0', '2020-03-23 23:00:02');
INSERT INTO `t_door_message` VALUES ('517', '\04\0\0\0\0\0\0\0\0\0\0\0\0(\0�\0U\0\0\0MSSQLServer\0H\0\0', '2020-03-23 23:00:07');
INSERT INTO `t_door_message` VALUES ('518', 'HELP\n\n\0', '2020-03-23 23:00:12');
INSERT INTO `t_door_message` VALUES ('519', 'stats\r\n', '2020-03-23 23:00:17');
INSERT INTO `t_door_message` VALUES ('520', '\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0service_mgr\0\0\0\0\0\0\0scanner cnvd \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 23:00:22');
INSERT INTO `t_door_message` VALUES ('521', '\0\0\0\0DB2DAS      \0\0\09z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 23:00:27');
INSERT INTO `t_door_message` VALUES ('522', '�\0\0\0\0\0�\0\0SQLDB2RA\0\0\0\0\0\0�\0\0\0\0\0�\0\0\0	\0\0\0\0\0@\0\0\0	\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0@\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0@\0\0\0	\0\0\0\0\0@\0\0\0	\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0        \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 23:00:32');
INSERT INTO `t_door_message` VALUES ('523', 'Client string for PARC version 1 Wire Encryption version 1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 23:00:37');
INSERT INTO `t_door_message` VALUES ('524', '<\0K\0\0\0 \0\0\0\0\0\0\0\0\0����\0\0\n��SUR\0\0<\0\0\0\0\0\0\0\0\0\0\0\0\Z\0<\0\0\0\0\0\n\0\0\0\0\0', '2020-03-23 23:00:42');
INSERT INTO `t_door_message` VALUES ('525', '4\0\n', '2020-03-23 23:00:47');
INSERT INTO `t_door_message` VALUES ('526', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 23:00:52');
INSERT INTO `t_door_message` VALUES ('527', 'serverstatus\r\n', '2020-03-23 23:00:57');
INSERT INTO `t_door_message` VALUES ('528', '���垠פ������������փ��ݤѡȤ���ݣ��ݦ�ݘ�', '2020-03-23 23:01:02');
INSERT INTO `t_door_message` VALUES ('529', '#ST\n', '2020-03-23 23:01:07');
INSERT INTO `t_door_message` VALUES ('530', '\0�<\0\0\0d\0e\0\0\0=\0IEEEM\0\0lsqlexec\0\0\0\0\0\09.280\0\0RDS#R000000\0\0sqli\0\0\03\0\0\0\0\0\0\0\0\0\0cnvd\0\0cnvd\0ol\0\0\0\0\0\0\0\0\0=tlitcp\0\0\0\0\0\0h\0\0\0\0\0cnvd\0\0\0\0\0\0\0\0\0\0\0\0j\0\0\0', '2020-03-23 23:01:12');
INSERT INTO `t_door_message` VALUES ('531', '\02�\0\0,A\0^\0m\0Z\0\0$\0$\0@\0t\0\0G', '2020-03-23 23:01:17');
INSERT INTO `t_door_message` VALUES ('532', 'TSH \0\0\0�1\0\0\0\0\0\0\0\0\0\0\0�\0\0ID  \n&\0\0\0\0\0\0\0\0�@\0\0\0\0\0\0SYSTEM.ADMIN.SVRCONNQ\0�cnvd-probe                                      \0\0\0\0j\0\0\0�\0���������������\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0MQJB00000000CANNED_DATA                                     ', '2020-03-23 23:01:22');
INSERT INTO `t_door_message` VALUES ('533', 'GET /server-info HTTP/1.1\r\nClient-DPAP-Version: 1.1\r\nUser-Agent: iPhoto/9.1.1  (Macintosh; N; PPC)\r\n\r\n', '2020-03-23 23:01:27');
INSERT INTO `t_door_message` VALUES ('534', 'A\0\0\0:0\0\0�����\0\0\0\0\0\0test.$cmd\0\0\0\0\0����\0\0\0serverStatus\0\0\0\0\0\0\0�?\0', '2020-03-23 23:01:32');
INSERT INTO `t_door_message` VALUES ('535', '*1\r\n$4\r\ninfo\r\n', '2020-03-23 23:01:37');
INSERT INTO `t_door_message` VALUES ('536', '\0\0\0', '2020-03-23 23:01:42');
INSERT INTO `t_door_message` VALUES ('537', 'show info\r\n', '2020-03-23 23:01:47');
INSERT INTO `t_door_message` VALUES ('538', '�\0\0\0\0\0\0\0\0\0\0��b\0\0\0\0\0\0\0\0', '2020-03-23 23:01:52');
INSERT INTO `t_door_message` VALUES ('539', '\0n', '2020-03-23 23:01:57');
INSERT INTO `t_door_message` VALUES ('540', 'vp3', '2020-03-23 23:02:02');
INSERT INTO `t_door_message` VALUES ('541', '�\0���a�', '2020-03-23 23:02:07');
INSERT INTO `t_door_message` VALUES ('542', '�', '2020-03-23 23:02:12');
INSERT INTO `t_door_message` VALUES ('543', 'GET /version HTTP/1.1\r\n\r\n', '2020-03-23 23:02:18');
INSERT INTO `t_door_message` VALUES ('544', '\0\0\0\0\0\0\0', '2020-03-23 23:02:23');
INSERT INTO `t_door_message` VALUES ('545', '����\0IBM-3279-4-E��������\0��\0', '2020-03-23 23:02:28');
INSERT INTO `t_door_message` VALUES ('546', 'GIOP\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0abcdef\0\0\0\0\0get\0\0\0\0\0', '2020-03-23 23:02:33');
INSERT INTO `t_door_message` VALUES ('547', 'VERSION', '2020-03-23 23:02:38');
INSERT INTO `t_door_message` VALUES ('548', 'CNXN\0\0\0\0\0\0\0\0\02\0\0����host::\0', '2020-03-23 23:02:43');
INSERT INTO `t_door_message` VALUES ('549', '\0\0\0\0\0\0{\"code\":106}', '2020-03-23 23:02:48');
INSERT INTO `t_door_message` VALUES ('550', '\0\0\0\0ImYorDad0u\0\0', '2020-03-23 23:02:53');
INSERT INTO `t_door_message` VALUES ('551', '�\0\0(I6�8\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-23 23:03:08');
INSERT INTO `t_door_message` VALUES ('552', 'SSH-2.0-libssh2_1.7.0\r\n', '2020-03-24 01:07:27');
INSERT INTO `t_door_message` VALUES ('553', 'GET / HTTP/1.1\r\nConnection: Upgrade, HTTP2-Settings\r\nUpgrade: h2c\r\nHTTP2-Settings: AAMAAABkAARAAAAAAAIAAAAA\r\nUser-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\r\n\r\n', '2020-03-24 15:35:33');
INSERT INTO `t_door_message` VALUES ('554', 'GET / HTTP/2\r\nUser-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\r\n\r\n', '2020-03-24 15:35:34');
INSERT INTO `t_door_message` VALUES ('555', 'GET / HTTP/1.1\r\nConnection: Upgrade, HTTP2-Settings\r\nUpgrade: h2c\r\nHTTP2-Settings: AAMAAABkAARAAAAAAAIAAAAA\r\nUser-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\r\n\r\n', '2020-03-24 15:35:34');
INSERT INTO `t_door_message` VALUES ('556', 'GET / HTTP/2\r\nUser-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\r\n\r\n', '2020-03-24 15:35:34');
INSERT INTO `t_door_message` VALUES ('557', '\0\0/*�\0\0\0\0\0Cookie: mstshash=Administr\r\n\0\0\0\0\0', '2020-03-24 19:49:41');

-- ----------------------------
-- Table structure for t_duty_info
-- ----------------------------
DROP TABLE IF EXISTS `t_duty_info`;
CREATE TABLE `t_duty_info` (
  `ID` bigint(20) NOT NULL,
  `SITE_ID` bigint(20) DEFAULT NULL,
  `DUTY_USER_ID` bigint(20) DEFAULT NULL,
  `DUTY_DATE` varchar(0) DEFAULT NULL,
  `DUTY_TIME` varchar(0) DEFAULT NULL,
  `DUTY_START_TIME` datetime DEFAULT NULL,
  `DUTY_END_TIME` datetime DEFAULT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_duty_info
-- ----------------------------
INSERT INTO `t_duty_info` VALUES ('1', '1', '14', null, null, '2020-03-19 10:13:51', '2020-03-19 15:13:59', '', '');
INSERT INTO `t_duty_info` VALUES ('2', '1', '77', null, null, '2020-03-20 09:00:00', '2020-03-20 18:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('3', '1', '16', null, null, null, '2019-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('5', '2', '25', null, null, null, '0000-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('6', '2', '26', null, null, null, '2019-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('8', '3', '35', null, null, null, '0000-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('9', '3', '36', null, null, null, '2019-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('11', '4', '45', null, null, null, '0000-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('12', '4', '46', null, null, null, '2019-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('14', '5', '55', null, null, null, '0000-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('15', '5', '56', null, null, null, '2019-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('17', '6', '65', null, null, null, '0000-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('18', '6', '66', null, null, null, '2019-00-00 00:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('19', null, '78', null, null, '2020-03-25 07:00:00', '2020-03-25 19:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('20', null, '79', null, null, '2020-03-25 07:00:00', '2020-03-25 19:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('21', null, '80', null, null, '2020-03-25 07:00:00', '2020-03-25 19:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('22', null, '81', null, null, '2020-03-25 07:00:00', '2020-03-25 19:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('23', null, '78', null, null, '2020-03-26 07:00:00', '2020-03-26 19:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('24', null, '79', null, null, '2020-03-26 07:00:00', '2020-03-26 19:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('25', null, '80', null, null, '2020-03-26 07:00:00', '2020-03-26 19:00:00', null, null);
INSERT INTO `t_duty_info` VALUES ('26', null, '81', null, null, '2020-03-26 07:00:00', '2020-03-26 19:00:00', null, null);

-- ----------------------------
-- Table structure for t_event_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_event_dict`;
CREATE TABLE `t_event_dict` (
  `ID` bigint(20) NOT NULL,
  `EVENT_NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='事件类型表';

-- ----------------------------
-- Records of t_event_dict
-- ----------------------------
INSERT INTO `t_event_dict` VALUES ('0', '火灾', null);
INSERT INTO `t_event_dict` VALUES ('1', '袭警', null);
INSERT INTO `t_event_dict` VALUES ('2', '闯岗', null);
INSERT INTO `t_event_dict` VALUES ('3', '盗窃', null);
INSERT INTO `t_event_dict` VALUES ('4', '涉疫', null);

-- ----------------------------
-- Table structure for t_event_report
-- ----------------------------
DROP TABLE IF EXISTS `t_event_report`;
CREATE TABLE `t_event_report` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `REPORT_NO` bigint(20) DEFAULT NULL,
  `EVENT_TYPE_ID` varchar(255) DEFAULT NULL,
  `HAPPEN_DATE` datetime DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `TOTAL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL,
  `CARD` varchar(255) DEFAULT NULL,
  `TEMPERATURE` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `RECORD` varchar(255) DEFAULT NULL,
  `ARRIVAL` varchar(255) DEFAULT NULL,
  `SITE_ID` bigint(255) DEFAULT NULL,
  `DETAILS` varchar(1024) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL COMMENT '事件地址',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '上报人经度',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '上报人纬度',
  `EXT4` varchar(255) DEFAULT NULL,
  `EXT5` varchar(255) DEFAULT NULL,
  `EXT6` varchar(255) DEFAULT NULL,
  `EXT7` varchar(255) DEFAULT NULL,
  `EXT8` varchar(255) DEFAULT NULL,
  `EXT9` varchar(255) DEFAULT NULL,
  `EXT10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='上报信息表';

-- ----------------------------
-- Records of t_event_report
-- ----------------------------
INSERT INTO `t_event_report` VALUES ('1', null, '3', '2020-02-16 11:46:27', '15', null, null, '15311535558', null, null, null, null, null, '1', '2月16日上午9点，村民刘某乐驾驶机动车通过礼贤镇行政卡点时，拒不配合登记检查，并不断辱骂现场执勤人员，并野蛮冲撞卡点导致多名执勤人员受伤。', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `t_event_report` VALUES ('2', null, '4', '2020-02-20 18:36:48', '25', null, null, '13403423374', null, null, null, null, null, '2', '2月20日20时许，一男子从东门进入院内，将停在宿舍旁的一辆黑色电动车盗走。', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `t_event_report` VALUES ('3', null, '1', '2020-03-01 11:46:57', '35', null, null, '15810535907', null, null, null, null, null, '3', '3月1日12时许清源街道西南角的居民楼3楼着火了。目前从窗户位置不时有火苗窜出，现场浓烟滚滚，消防人员还未到场。', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('4', null, '2', '2020-03-04 11:47:52', '45', null, null, '15311760080', null, null, null, null, null, '4', '3月4日11时20分许，西红门派出所刑警大队和民警到案件重大嫌疑人之弟家中调查了解情况。在民警亮明身份准备入户时，突然遭到室内2名犯罪嫌疑人员隔着栅栏式防盗门开枪射击，犯罪嫌疑人在将3位民警、1位协警打伤后，抢劫一辆过往汽车逃跑。 ', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('5', null, '3', '2020-03-05 11:47:57', '55', null, null, '13126567678', null, null, null, null, null, '5', '3月5日上午10点，刘某驾驶机动车通过西红门镇行政卡点时，拒不配合登记检查，并不断辱骂现场执勤人员，并野蛮冲撞卡点导致多名执勤人员受伤。', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('6', null, '3', '2020-03-09 11:48:02', '65', null, null, '18642687206', null, null, null, null, null, '6', '3月9日上午12点，王某驾驶机动车通过西红门镇行政卡点时，拒不配合登记检查，并不断辱骂现场执勤人员，并野蛮冲撞卡点导致多名执勤人员受伤。', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('105', null, '1', '2020-03-13 15:19:07', '23', null, null, '15600028321', null, null, null, null, null, '4', '西红门荟聚商场发生火灾', null, '西红门荟聚商场', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('116', null, '1', '2020-03-20 09:26:10', '77', null, '房金', '17600062936', '14232220202020', '36.5', '山西省吕梁市文水县', '1', '地铁4号线大兴线', null, null, '今天是2020年3月20日 。', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('119', null, '1', '2020-03-20 10:40:17', '77', null, '小楚', '15232525241', '125252415258785555', '36.8', '北京市北京市东城区', '1', '北京市大兴区兴政街15号', null, null, '顶顶顶', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('120', null, '1', '2020-03-20 11:42:48', '77', null, '海涛', '15844447777', '14525285857777', '36.8', '北京市北京市东城区', '1', '北京市大兴区兴丰大街', null, null, '我是海涛 我为自己代言', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('122', null, '1', '2020-03-20 15:03:06', '77', null, 'qq', '12332778', '', '', '北京市北京市东城区', '2', '北京市北京市丰台区', null, null, 'qqqq', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('123', null, '1', '2020-03-20 15:14:33', '77', null, '房金', '17600062936', '14232220201515', '36.5', '北京市北京市丰台区', '1', '北京市北京市东城区', null, null, '房金真棒', null, '116.34159', '39.72684', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('124', null, '1', '2020-03-20 15:47:00', '77', null, '海涛', '15588887777', '142322199585857777', '35.9', '北京市北京市丰台区', '1', '河北省石家庄市长安区', null, null, '今天一切顺利 加油 海涛同学', null, '116.34159', '39.72684', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('125', null, '1', '2020-03-20 16:00:59', '77', null, '房金', '17600062936', '133333444455556666', '37', '北京市北京市东城区', '1', '天津市天津市和平区', null, null, '啦啦啦啦啦啦啦 我没事 不用担心', null, '116.35347747802734', '39.77109146118164', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('126', null, '4', '2020-03-20 16:52:12', '77', null, '行吗', '111111111', '11111', '38', '北京市北京市大兴区', '2', '北京市北京市东城区', null, null, '111111111移民', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('127', null, '1', '2020-03-20 17:00:49', '77', null, 'Eddd', '22344', '', '', '请选择', '2', '请选择', null, null, 'Xdrr', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('128', null, '4', '2020-03-20 17:05:36', '77', null, '韩冬', '11111', 'qq', '11', '北京市北京市朝阳区', '2', '北京市北京市朝阳区', null, null, '111', null, '116.35408020019531', '39.77104187011719', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('129', null, '1', '2020-03-23 10:37:32', '77', null, '张三', '17655554444', '142222522255552222', '37.5', '北京市北京市东城区', '1', '北京市北京市东城区', null, null, '', null, '116.34159', '39.72684', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('130', null, '1', '2020-03-24 16:21:09', '77', null, '高兴', '13811111111', '', '38', '北京市北京市平谷区', '1', '天津市天津市和平区', null, null, '高烧疑似，已经内部隔离控制', null, '116.3532943725586', '39.770973205566406', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('134', '202003240002', '1', '2020-03-24 16:53:01', '77', null, 'Q', '15255366555', '', '', '请选择', '1', '请选择', null, null, 'Ffggg ', null, '116.34983825683594', '39.77217102050781', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('135', '202003250001', '4', '2020-03-25 10:26:00', '77', null, '可可', '13649000000', '1111111111111111', '40', '北京市北京市门头沟区', '2', '北京市北京市平谷区', null, null, '呵呵', null, '116.35352325439453', '39.77106475830078', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('136', '202003250002', '1', '2020-03-25 10:31:16', '77', null, '宝贝', '121212121222121', '222222222', '', '请选择', '1', '请选择', null, null, '我们的生活方式是什么时候回来呀', null, '116.35337829589844', '39.771080017089844', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('137', '202003250003', '1', '2020-03-25 10:31:55', '77', null, '活动活动吧', '11111111', 'ni', '', '请选择', '1', '请选择', null, null, 'go', null, '116.35338592529297', '39.77107238769531', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('138', '202003250004', '3', '2020-03-25 10:33:54', '77', null, '王麻子', '15511115555', '141414141414141414', '38.5', '北京市北京市东城区', '2', '北京市北京市东城区', null, null, '盗窃', null, '116.34159', '39.72684', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('139', '202003250005', '4', '2020-03-25 10:38:31', '77', null, 'Gggg', '8888888888', 'hhhhhhh', '40', '请选择', '1', '请选择', null, null, '我们', null, '116.35350799560547', '39.7711181640625', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('140', '202003250006', '2', '2020-03-25 10:50:08', '77', null, '啊啊', '16666666666', '16666666666', '38.5', '北京市北京市东城区', '2', '北京市北京市东城区', null, null, '66666666', null, '116.34159', '39.72684', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('141', '202003250007', '2', '2020-03-25 11:53:00', '77', null, '11', '11111111111', '1111111111111', null, '北京市北京市东城区', '1', '请选择', null, null, '111111', null, '116.34159', '39.72684', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('142', '202003250008', '0', '2020-03-25 13:07:41', '77', null, '火灾', '13333333333', '3333333333333', null, '北京市北京市朝阳区', '1', '请选择', null, null, '火灾', null, '116.34159', '39.72684', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('143', '202003250009', '4', '2020-03-25 13:11:56', '77', null, '放假', '14444444444', '144444444455554444', '38.0', '北京市北京市西城区', '1', '北京市北京市西城区', null, null, '涉疫', null, '116.34159', '39.72684', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('144', '202003250010', '2', '2020-03-25 13:15:40', '77', null, 'yuan', '17600523783', '133233211123338899', null, '江苏省南京市玄武区', '1', '请选择', null, null, '闯岗', null, '116.35327911376953', '39.770965576171875', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('145', '202003250011', '1', '2020-03-25 13:20:40', '77', null, 'fang ', '14444447777', '1234565432123466', null, '北京市北京市东城区', '1', '请选择', null, null, '测试表情', null, '116.35331726074219', '39.770973205566406', null, null, null, null, null, null, null);
INSERT INTO `t_event_report` VALUES ('146', '202003250012', '1', '2020-03-25 15:22:07', '77', null, 'Jsjj ', 'Wiiwi', '', '', '请选择', '1', '请选择', null, null, 'Djsjjsjj ', null, '116.29484558105469', '39.683162689208984', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_eximport
-- ----------------------------
DROP TABLE IF EXISTS `t_eximport`;
CREATE TABLE `t_eximport` (
  `FIELD1` varchar(20) NOT NULL COMMENT '字段1',
  `FIELD2` int(11) NOT NULL COMMENT '字段2',
  `FIELD3` varchar(100) NOT NULL COMMENT '字段3',
  `CREATE_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Excel导入导出测试';

-- ----------------------------
-- Records of t_eximport
-- ----------------------------
INSERT INTO `t_eximport` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '6', 'mrbird5@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '7', 'mrbird6@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '8', 'mrbird7@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '9', 'mrbird8@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '10', 'mrbird9@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '11', 'mrbird10@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '12', 'mrbird11@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '13', 'mrbird12@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '14', 'mrbird13@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '15', 'mrbird14@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '16', 'mrbird15@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '17', 'mrbird16@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '18', 'mrbird17@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '19', 'mrbird18@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '20', 'mrbird19@gmail.com', '2019-06-13 03:14:06');

-- ----------------------------
-- Table structure for t_generator_config
-- ----------------------------
DROP TABLE IF EXISTS `t_generator_config`;
CREATE TABLE `t_generator_config` (
  `id` int(11) NOT NULL COMMENT '主键',
  `author` varchar(20) NOT NULL COMMENT '作者',
  `base_package` varchar(50) NOT NULL COMMENT '基础包名',
  `entity_package` varchar(20) NOT NULL COMMENT 'entity文件存放路径',
  `mapper_package` varchar(20) NOT NULL COMMENT 'mapper文件存放路径',
  `mapper_xml_package` varchar(20) NOT NULL COMMENT 'mapper xml文件存放路径',
  `service_package` varchar(20) NOT NULL COMMENT 'servcie文件存放路径',
  `service_impl_package` varchar(20) NOT NULL COMMENT 'serviceImpl文件存放路径',
  `controller_package` varchar(20) NOT NULL COMMENT 'controller文件存放路径',
  `is_trim` char(1) NOT NULL COMMENT '是否去除前缀 1是 0否',
  `trim_value` varchar(10) DEFAULT NULL COMMENT '前缀内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代码生成配置表';

-- ----------------------------
-- Records of t_generator_config
-- ----------------------------
INSERT INTO `t_generator_config` VALUES ('1', 'cjs', 'cc.mrbird.febs.event', 'entity', 'mapper', 'mapper', 'service', 'service.impl', 'controller', '1', 't_');

-- ----------------------------
-- Table structure for t_health_code
-- ----------------------------
DROP TABLE IF EXISTS `t_health_code`;
CREATE TABLE `t_health_code` (
  `ID` bigint(20) NOT NULL,
  `H_SUM` varchar(255) DEFAULT NULL,
  `WUYICHANG` varchar(255) DEFAULT NULL,
  `YISI` varchar(255) DEFAULT NULL,
  `GELI` varchar(255) DEFAULT NULL,
  `QUEZHEN` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_health_code
-- ----------------------------
INSERT INTO `t_health_code` VALUES ('1', '54', '50', '2', '1', '1', '2020-03-11 16:26:42');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `JOB_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `BEAN_NAME` varchar(50) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(50) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(50) DEFAULT NULL COMMENT '参数',
  `CRON_EXPRESSION` varchar(20) NOT NULL COMMENT 'cron表达式',
  `STATUS` char(2) NOT NULL COMMENT '任务状态  0：正常  1：暂停',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`JOB_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务表';

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO `t_job` VALUES ('1', 'testTask', 'test', 'mrbird', '0/1 * * * * ?', '1', '有参任务调度测试~~', '2018-02-24 16:26:14');
INSERT INTO `t_job` VALUES ('2', 'testTask', 'test1', null, '0/10 * * * * ?', '1', '无参任务调度测试', '2018-02-24 17:06:23');
INSERT INTO `t_job` VALUES ('3', 'testTask', 'test', 'hello world', '0/1 * * * * ?', '1', '有参任务调度测试,每隔一秒触发', '2018-02-26 09:28:26');
INSERT INTO `t_job` VALUES ('11', 'testTask', 'test2', null, '0/5 * * * * ?', '1', '测试异常', '2018-02-26 11:15:30');

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_job_log`;
CREATE TABLE `t_job_log` (
  `LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `JOB_ID` bigint(20) NOT NULL COMMENT '任务id',
  `BEAN_NAME` varchar(100) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) DEFAULT NULL COMMENT '参数',
  `STATUS` char(2) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `ERROR` text COMMENT '失败信息',
  `TIMES` decimal(11,0) DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2732 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='调度日志表';

-- ----------------------------
-- Records of t_job_log
-- ----------------------------
INSERT INTO `t_job_log` VALUES ('2562', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '7', '2020-03-05 10:44:15');
INSERT INTO `t_job_log` VALUES ('2563', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '5', '2020-03-17 15:12:35');
INSERT INTO `t_job_log` VALUES ('2564', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:12:45');
INSERT INTO `t_job_log` VALUES ('2565', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:12:40');
INSERT INTO `t_job_log` VALUES ('2566', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:12:50');
INSERT INTO `t_job_log` VALUES ('2567', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:12:55');
INSERT INTO `t_job_log` VALUES ('2568', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:13:00');
INSERT INTO `t_job_log` VALUES ('2569', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:13:05');
INSERT INTO `t_job_log` VALUES ('2570', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:13:10');
INSERT INTO `t_job_log` VALUES ('2571', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:13:15');
INSERT INTO `t_job_log` VALUES ('2572', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:13:20');
INSERT INTO `t_job_log` VALUES ('2573', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:13:25');
INSERT INTO `t_job_log` VALUES ('2574', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:13:30');
INSERT INTO `t_job_log` VALUES ('2575', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:13:35');
INSERT INTO `t_job_log` VALUES ('2576', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:13:40');
INSERT INTO `t_job_log` VALUES ('2577', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:13:45');
INSERT INTO `t_job_log` VALUES ('2578', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '2', '2020-03-17 15:13:50');
INSERT INTO `t_job_log` VALUES ('2579', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '2', '2020-03-17 15:13:55');
INSERT INTO `t_job_log` VALUES ('2580', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:14:00');
INSERT INTO `t_job_log` VALUES ('2581', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:14:05');
INSERT INTO `t_job_log` VALUES ('2582', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:14:10');
INSERT INTO `t_job_log` VALUES ('2583', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:14:15');
INSERT INTO `t_job_log` VALUES ('2584', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:14:20');
INSERT INTO `t_job_log` VALUES ('2585', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:14:25');
INSERT INTO `t_job_log` VALUES ('2586', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:14:30');
INSERT INTO `t_job_log` VALUES ('2587', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:14:35');
INSERT INTO `t_job_log` VALUES ('2588', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:14:40');
INSERT INTO `t_job_log` VALUES ('2589', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:14:45');
INSERT INTO `t_job_log` VALUES ('2590', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:14:50');
INSERT INTO `t_job_log` VALUES ('2591', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:14:55');
INSERT INTO `t_job_log` VALUES ('2592', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:15:00');
INSERT INTO `t_job_log` VALUES ('2593', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:15:05');
INSERT INTO `t_job_log` VALUES ('2594', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:15:10');
INSERT INTO `t_job_log` VALUES ('2595', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:15:15');
INSERT INTO `t_job_log` VALUES ('2596', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:15:20');
INSERT INTO `t_job_log` VALUES ('2597', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:15:25');
INSERT INTO `t_job_log` VALUES ('2598', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:15:30');
INSERT INTO `t_job_log` VALUES ('2599', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:15:35');
INSERT INTO `t_job_log` VALUES ('2600', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:15:40');
INSERT INTO `t_job_log` VALUES ('2601', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:15:45');
INSERT INTO `t_job_log` VALUES ('2602', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:15:50');
INSERT INTO `t_job_log` VALUES ('2603', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:15:55');
INSERT INTO `t_job_log` VALUES ('2604', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:16:00');
INSERT INTO `t_job_log` VALUES ('2605', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:16:05');
INSERT INTO `t_job_log` VALUES ('2606', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:16:10');
INSERT INTO `t_job_log` VALUES ('2607', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:16:15');
INSERT INTO `t_job_log` VALUES ('2608', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:16:20');
INSERT INTO `t_job_log` VALUES ('2609', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:16:25');
INSERT INTO `t_job_log` VALUES ('2610', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:16:30');
INSERT INTO `t_job_log` VALUES ('2611', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:16:35');
INSERT INTO `t_job_log` VALUES ('2612', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:16:40');
INSERT INTO `t_job_log` VALUES ('2613', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:16:45');
INSERT INTO `t_job_log` VALUES ('2614', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:16:50');
INSERT INTO `t_job_log` VALUES ('2615', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:16:55');
INSERT INTO `t_job_log` VALUES ('2616', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:17:00');
INSERT INTO `t_job_log` VALUES ('2617', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:17:05');
INSERT INTO `t_job_log` VALUES ('2618', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:17:10');
INSERT INTO `t_job_log` VALUES ('2619', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:17:15');
INSERT INTO `t_job_log` VALUES ('2620', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:17:20');
INSERT INTO `t_job_log` VALUES ('2621', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:17:25');
INSERT INTO `t_job_log` VALUES ('2622', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:17:30');
INSERT INTO `t_job_log` VALUES ('2623', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:17:35');
INSERT INTO `t_job_log` VALUES ('2624', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:17:40');
INSERT INTO `t_job_log` VALUES ('2625', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:17:45');
INSERT INTO `t_job_log` VALUES ('2626', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:17:50');
INSERT INTO `t_job_log` VALUES ('2627', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:17:55');
INSERT INTO `t_job_log` VALUES ('2628', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:18:00');
INSERT INTO `t_job_log` VALUES ('2629', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:18:05');
INSERT INTO `t_job_log` VALUES ('2630', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:18:10');
INSERT INTO `t_job_log` VALUES ('2631', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:18:15');
INSERT INTO `t_job_log` VALUES ('2632', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:18:20');
INSERT INTO `t_job_log` VALUES ('2633', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:18:25');
INSERT INTO `t_job_log` VALUES ('2634', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:18:30');
INSERT INTO `t_job_log` VALUES ('2635', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:18:35');
INSERT INTO `t_job_log` VALUES ('2636', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:18:40');
INSERT INTO `t_job_log` VALUES ('2637', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:18:45');
INSERT INTO `t_job_log` VALUES ('2638', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '2', '2020-03-17 15:18:50');
INSERT INTO `t_job_log` VALUES ('2639', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:18:55');
INSERT INTO `t_job_log` VALUES ('2640', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:19:00');
INSERT INTO `t_job_log` VALUES ('2641', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:19:05');
INSERT INTO `t_job_log` VALUES ('2642', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:19:10');
INSERT INTO `t_job_log` VALUES ('2643', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:19:15');
INSERT INTO `t_job_log` VALUES ('2644', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:19:20');
INSERT INTO `t_job_log` VALUES ('2645', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:19:25');
INSERT INTO `t_job_log` VALUES ('2646', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:19:30');
INSERT INTO `t_job_log` VALUES ('2647', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:19:35');
INSERT INTO `t_job_log` VALUES ('2648', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:19:40');
INSERT INTO `t_job_log` VALUES ('2649', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:19:45');
INSERT INTO `t_job_log` VALUES ('2650', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:19:50');
INSERT INTO `t_job_log` VALUES ('2651', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:19:55');
INSERT INTO `t_job_log` VALUES ('2652', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:20:00');
INSERT INTO `t_job_log` VALUES ('2653', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:20:05');
INSERT INTO `t_job_log` VALUES ('2654', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:20:10');
INSERT INTO `t_job_log` VALUES ('2655', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:20:15');
INSERT INTO `t_job_log` VALUES ('2656', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:20:20');
INSERT INTO `t_job_log` VALUES ('2657', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:20:25');
INSERT INTO `t_job_log` VALUES ('2658', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:20:30');
INSERT INTO `t_job_log` VALUES ('2659', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:20:35');
INSERT INTO `t_job_log` VALUES ('2660', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:20:40');
INSERT INTO `t_job_log` VALUES ('2661', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:20:45');
INSERT INTO `t_job_log` VALUES ('2662', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:20:50');
INSERT INTO `t_job_log` VALUES ('2663', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:20:55');
INSERT INTO `t_job_log` VALUES ('2664', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:21:00');
INSERT INTO `t_job_log` VALUES ('2665', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:21:05');
INSERT INTO `t_job_log` VALUES ('2666', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:21:10');
INSERT INTO `t_job_log` VALUES ('2667', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:21:15');
INSERT INTO `t_job_log` VALUES ('2668', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:21:20');
INSERT INTO `t_job_log` VALUES ('2669', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:21:25');
INSERT INTO `t_job_log` VALUES ('2670', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:21:30');
INSERT INTO `t_job_log` VALUES ('2671', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:21:35');
INSERT INTO `t_job_log` VALUES ('2672', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:21:40');
INSERT INTO `t_job_log` VALUES ('2673', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:21:45');
INSERT INTO `t_job_log` VALUES ('2674', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:21:50');
INSERT INTO `t_job_log` VALUES ('2675', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:21:55');
INSERT INTO `t_job_log` VALUES ('2676', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:22:00');
INSERT INTO `t_job_log` VALUES ('2677', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:22:05');
INSERT INTO `t_job_log` VALUES ('2678', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:22:10');
INSERT INTO `t_job_log` VALUES ('2679', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:22:15');
INSERT INTO `t_job_log` VALUES ('2680', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:22:20');
INSERT INTO `t_job_log` VALUES ('2681', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:22:25');
INSERT INTO `t_job_log` VALUES ('2682', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:22:30');
INSERT INTO `t_job_log` VALUES ('2683', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:22:35');
INSERT INTO `t_job_log` VALUES ('2684', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '3', '2020-03-17 15:22:40');
INSERT INTO `t_job_log` VALUES ('2685', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:22:45');
INSERT INTO `t_job_log` VALUES ('2686', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:22:50');
INSERT INTO `t_job_log` VALUES ('2687', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:22:55');
INSERT INTO `t_job_log` VALUES ('2688', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:23:00');
INSERT INTO `t_job_log` VALUES ('2689', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:23:05');
INSERT INTO `t_job_log` VALUES ('2690', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:23:10');
INSERT INTO `t_job_log` VALUES ('2691', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:23:15');
INSERT INTO `t_job_log` VALUES ('2692', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:23:20');
INSERT INTO `t_job_log` VALUES ('2693', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:23:25');
INSERT INTO `t_job_log` VALUES ('2694', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '1', '2020-03-17 15:23:30');
INSERT INTO `t_job_log` VALUES ('2695', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:23:35');
INSERT INTO `t_job_log` VALUES ('2696', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:23:40');
INSERT INTO `t_job_log` VALUES ('2697', '11', 'testTask', 'test2', null, '1', 'java.lang.NoSuchMethodException: cc.mrbird.febs.job.task.TestTask.test2()', '0', '2020-03-17 15:23:45');
INSERT INTO `t_job_log` VALUES ('2698', '3', 'testTask', 'test', 'hello world', '0', null, '260', '2020-03-19 13:59:42');
INSERT INTO `t_job_log` VALUES ('2699', '3', 'testTask', 'test', 'hello world', '0', null, '4', '2020-03-19 13:59:43');
INSERT INTO `t_job_log` VALUES ('2700', '3', 'testTask', 'test', 'hello world', '0', null, '13', '2020-03-19 13:59:44');
INSERT INTO `t_job_log` VALUES ('2701', '3', 'testTask', 'test', 'hello world', '0', null, '1', '2020-03-19 13:59:45');
INSERT INTO `t_job_log` VALUES ('2702', '3', 'testTask', 'test', 'hello world', '0', null, '2', '2020-03-19 13:59:46');
INSERT INTO `t_job_log` VALUES ('2703', '3', 'testTask', 'test', 'hello world', '0', null, '6', '2020-03-19 13:59:47');
INSERT INTO `t_job_log` VALUES ('2704', '3', 'testTask', 'test', 'hello world', '0', null, '1', '2020-03-19 13:59:48');
INSERT INTO `t_job_log` VALUES ('2705', '3', 'testTask', 'test', 'hello world', '0', null, '1', '2020-03-19 13:59:49');
INSERT INTO `t_job_log` VALUES ('2706', '3', 'testTask', 'test', 'hello world', '0', null, '1', '2020-03-19 13:59:50');
INSERT INTO `t_job_log` VALUES ('2707', '3', 'testTask', 'test', 'hello world', '0', null, '4', '2020-03-19 13:59:51');
INSERT INTO `t_job_log` VALUES ('2708', '3', 'testTask', 'test', 'hello world', '0', null, '12', '2020-03-19 13:59:52');
INSERT INTO `t_job_log` VALUES ('2709', '3', 'testTask', 'test', 'hello world', '0', null, '2', '2020-03-19 13:59:53');
INSERT INTO `t_job_log` VALUES ('2710', '3', 'testTask', 'test', 'hello world', '0', null, '2', '2020-03-19 13:59:54');
INSERT INTO `t_job_log` VALUES ('2711', '3', 'testTask', 'test', 'hello world', '0', null, '1', '2020-03-19 13:59:55');
INSERT INTO `t_job_log` VALUES ('2712', '3', 'testTask', 'test', 'hello world', '0', null, '2', '2020-03-19 13:59:56');
INSERT INTO `t_job_log` VALUES ('2713', '3', 'testTask', 'test', 'hello world', '0', null, '5', '2020-03-19 13:59:57');
INSERT INTO `t_job_log` VALUES ('2714', '3', 'testTask', 'test', 'hello world', '0', null, '4', '2020-03-19 13:59:58');
INSERT INTO `t_job_log` VALUES ('2715', '3', 'testTask', 'test', 'hello world', '0', null, '4', '2020-03-19 13:59:59');
INSERT INTO `t_job_log` VALUES ('2716', '3', 'testTask', 'test', 'hello world', '0', null, '9', '2020-03-19 14:00:00');
INSERT INTO `t_job_log` VALUES ('2717', '3', 'testTask', 'test', 'hello world', '0', null, '0', '2020-03-19 14:00:01');
INSERT INTO `t_job_log` VALUES ('2718', '3', 'testTask', 'test', 'hello world', '0', null, '1', '2020-03-19 14:00:02');
INSERT INTO `t_job_log` VALUES ('2719', '3', 'testTask', 'test', 'hello world', '0', null, '1', '2020-03-19 14:00:03');
INSERT INTO `t_job_log` VALUES ('2720', '3', 'testTask', 'test', 'hello world', '0', null, '4', '2020-03-19 14:00:04');
INSERT INTO `t_job_log` VALUES ('2721', '3', 'testTask', 'test', 'hello world', '0', null, '1', '2020-03-19 14:00:05');
INSERT INTO `t_job_log` VALUES ('2722', '3', 'testTask', 'test', 'hello world', '0', null, '120', '2020-03-19 14:00:06');
INSERT INTO `t_job_log` VALUES ('2723', '3', 'testTask', 'test', 'hello world', '0', null, '14', '2020-03-19 14:00:07');
INSERT INTO `t_job_log` VALUES ('2724', '3', 'testTask', 'test', 'hello world', '0', null, '4', '2020-03-19 14:00:08');
INSERT INTO `t_job_log` VALUES ('2725', '3', 'testTask', 'test', 'hello world', '0', null, '3', '2020-03-19 14:00:09');
INSERT INTO `t_job_log` VALUES ('2726', '3', 'testTask', 'test', 'hello world', '0', null, '13', '2020-03-19 14:00:10');
INSERT INTO `t_job_log` VALUES ('2727', '3', 'testTask', 'test', 'hello world', '0', null, '5', '2020-03-19 14:00:11');
INSERT INTO `t_job_log` VALUES ('2728', '3', 'testTask', 'test', 'hello world', '0', null, '4', '2020-03-19 14:00:12');
INSERT INTO `t_job_log` VALUES ('2729', '3', 'testTask', 'test', 'hello world', '0', null, '4', '2020-03-19 14:00:13');
INSERT INTO `t_job_log` VALUES ('2730', '3', 'testTask', 'test', 'hello world', '0', null, '4', '2020-03-19 14:00:14');
INSERT INTO `t_job_log` VALUES ('2731', '3', 'testTask', 'test', 'hello world', '0', null, '9', '2020-03-19 14:00:15');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text COMMENT '操作方法',
  `PARAMS` text COMMENT '方法参数',
  `IP` varchar(64) DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作日志表';

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('1011', 'admin', '新增角色', '22', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=81, roleName=应急大队指挥长, remark=中泰民安大兴区应急大队指挥长, createTime=Wed Mar 04 16:04:39 CST 2020, modifyTime=null, menuIds=)\"', '192.168.10.81', '2020-03-04 16:04:39', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1012', 'admin', '新增角色', '67', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=82, roleName=应急大队教导员, remark=中泰民安大兴区应急大队教导员, createTime=Wed Mar 04 16:04:57 CST 2020, modifyTime=null, menuIds=)\"', '192.168.10.81', '2020-03-04 16:04:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1013', 'admin', '新增角色', '29', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=83, roleName=应急大队顾问, remark=中泰民安应急大队顾问, createTime=Wed Mar 04 16:05:08 CST 2020, modifyTime=null, menuIds=)\"', '192.168.10.81', '2020-03-04 16:05:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1014', 'admin', '新增角色', '65', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=84, roleName=中队长, remark=中泰民安大兴区中队长, createTime=Wed Mar 04 16:05:53 CST 2020, modifyTime=null, menuIds=)\"', '192.168.10.81', '2020-03-04 16:05:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1015', 'admin', '新增角色', '34', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=85, roleName=队员, remark=中泰民安大兴区队员, createTime=Wed Mar 04 16:06:05 CST 2020, modifyTime=null, menuIds=)\"', '192.168.10.81', '2020-03-04 16:06:06', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1016', 'admin', '新增用户', '104', 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=10, username=zhaoxingc, password=2db53bf300f46f1cd4f68f5fad704bef, deptId=null, email=13911286333@139.com, mobile=13911286333, status=1, createTime=Wed Mar 04 16:47:41 CST 2020, modifyTime=null, lastLoginTime=null, sex=2, avatar=default.jpg, theme=black, isTab=1, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=党员, exServiceman=1, company=中泰民安保安服务有限公司, nation=汉, nativePlace=山东, height=178, education=大学)\"', '192.168.10.81', '2020-03-04 16:47:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1017', 'admin', '修改用户', '71', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=10, username=null, password=null, deptId=null, email=13911286333@139.com, mobile=13911286333, status=1, createTime=null, modifyTime=Wed Mar 04 17:23:05 CST 2020, lastLoginTime=null, sex=2, avatar=null, theme=null, isTab=null, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=, exServiceman=1, company=, nation=, nativePlace=, height=, education=, truename=赵性仓)\"', '192.168.10.81', '2020-03-04 17:23:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1018', 'admin', '修改用户', '59', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=10, username=null, password=null, deptId=1, email=13911286333@139.com, mobile=13911286333, status=1, createTime=null, modifyTime=Wed Mar 04 17:26:46 CST 2020, lastLoginTime=null, sex=2, avatar=null, theme=null, isTab=null, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=, exServiceman=1, company=, nation=, nativePlace=, height=, education=, truename=)\"', '192.168.10.81', '2020-03-04 17:26:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1019', 'admin', '修改用户', '116', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=10, username=null, password=null, deptId=1, email=13911286333@139.com, mobile=13911286333, status=1, createTime=null, modifyTime=Wed Mar 04 17:29:04 CST 2020, lastLoginTime=null, sex=2, avatar=null, theme=null, isTab=null, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=, exServiceman=1, company=, nation=, nativePlace=, height=, education=, truename=123)\"', '192.168.10.81', '2020-03-04 17:29:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1020', 'admin', '修改用户', '97', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=10, username=null, password=null, deptId=1, email=13911286333@139.com, mobile=13911286333, status=1, createTime=null, modifyTime=Thu Mar 05 09:44:58 CST 2020, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=测试, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=党员, exServiceman=1, company=ztman, nation=汉, nativePlace=山东, height=178, education=大学, truename=赵性仓)\"', '192.168.10.81', '2020-03-05 09:44:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1021', 'admin', '修改用户', '53', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=10, username=null, password=null, deptId=1, email=13911286333@139.com, mobile=13911286333, status=1, createTime=null, modifyTime=Thu Mar 05 09:47:44 CST 2020, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=测试, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=11, exServiceman=1, company=11, nation=1, nativePlace=1, height=1, education=1, truename=11)\"', '192.168.10.81', '2020-03-05 09:47:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1022', 'admin', '修改用户', '67', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=10, username=null, password=null, deptId=1, email=13911286333@139.com, mobile=13911286333, status=1, createTime=null, modifyTime=Thu Mar 05 09:52:17 CST 2020, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=测试, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=党员, exServiceman=是, company=ztman, nation=汉, nativePlace=山东, height=178, education=大专, truename=赵兴仓)\"', '192.168.10.81', '2020-03-05 09:52:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1023', 'admin', '修改用户', '70', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=10, username=null, password=null, deptId=1, email=13911286333@139.com, mobile=13911286333, status=1, createTime=null, modifyTime=Thu Mar 05 09:52:25 CST 2020, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=测试, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=党员, exServiceman=否, company=ztman, nation=汉, nativePlace=山东, height=178, education=大专, truename=赵兴仓)\"', '192.168.10.81', '2020-03-05 09:52:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1024', 'admin', '修改用户', '55', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=10, username=null, password=null, deptId=1, email=13911286333@139.com, mobile=13911286333, status=1, createTime=null, modifyTime=Thu Mar 05 09:52:37 CST 2020, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=测试1, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=党员1, exServiceman=否, company=ztman1, nation=汉1, nativePlace=山东1, height=1781, education=大专1, truename=赵兴仓1)\"', '192.168.10.81', '2020-03-05 09:52:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1025', 'admin', '修改用户', '29', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=10, username=null, password=null, deptId=1, email=13911286333@139.com, mobile=13911286333, status=1, createTime=null, modifyTime=Thu Mar 05 09:52:47 CST 2020, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=测试, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=党员, exServiceman=否, company=ztman, nation=汉, nativePlace=山东, height=178, education=大专, truename=赵兴仓)\"', '192.168.10.81', '2020-03-05 09:52:48', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1026', 'admin', '修改用户', '56', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=10, username=null, password=null, deptId=1, email=13911286333@139.com, mobile=13911286333, status=1, createTime=null, modifyTime=Thu Mar 05 09:52:54 CST 2020, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=测试, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, politicalAffil=党员, exServiceman=否, company=ztman, nation=汉, nativePlace=山东, height=178, education=大专, truename=赵性仓)\"', '192.168.10.81', '2020-03-05 09:52:55', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1027', 'admin', '修改用户', '95', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=8, username=null, password=null, deptId=1, email=ztman25808@ztman.cn, mobile=, status=1, createTime=null, modifyTime=Thu Mar 05 09:53:15 CST 2020, lastLoginTime=null, sex=0, avatar=null, theme=null, isTab=null, description=注册用户, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=2,1, roleName=null, politicalAffil=无, exServiceman=是, company=, nation=, nativePlace=, height=, education=, truename=管理员)\"', '192.168.10.81', '2020-03-05 09:53:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1028', 'admin', '恢复定时任务', '143', 'cc.mrbird.febs.job.controller.JobController.resumeJob()', ' jobIds: \"11\"', '192.168.10.81', '2020-03-05 10:44:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1029', 'admin', '暂停定时任务', '55', 'cc.mrbird.febs.job.controller.JobController.pauseJob()', ' jobIds: \"11\"', '192.168.10.81', '2020-03-05 10:44:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1030', 'admin', '修改GeneratorConfig', '94', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=MrBird, basePackage=cc.mrbird.febs.event, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-03-05 17:15:14, tableName=null, tableComment=null, className=null)', '192.168.10.81', '2020-03-05 17:15:15', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1031', 'admin', '修改GeneratorConfig', '47', 'cc.mrbird.febs.generator.controller.GeneratorConfigController.updateGeneratorConfig()', ' generatorConfig: GeneratorConfig(id=1, author=cjs, basePackage=cc.mrbird.febs.event, entityPackage=entity, mapperPackage=mapper, mapperXmlPackage=mapper, servicePackage=service, serviceImplPackage=service.impl, controllerPackage=controller, isTrim=1, trimValue=t_, javaPath=/src/main/java/, resourcesPath=src/main/resources, date=2020-03-05 17:15:26, tableName=null, tableComment=null, className=null)', '192.168.10.81', '2020-03-05 17:15:27', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1032', 'admin', '新增EventReport', '149', 'cc.mrbird.febs.event.controller.EventReportController.addEventReport()', ' eventReport: EventReport(id=1, eventTypeId=1, happenDate=null, userId=1, tel=1, siteId=1, details=1, remarks=1, ext1=1, ext2=1, ext3=1, ext4=1, ext5=1, ext6=1, ext7=1, ext8=1, ext9=1, ext10=1)', '192.168.10.81', '2020-03-06 09:36:50', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1033', 'admin', '新增EventReport', '101', 'cc.mrbird.febs.event.controller.EventReportController.addEventReport()', ' eventReport: EventReport(id=2, eventTypeId=1, happenDate=Sat May 26 18:36:48 CST 2018, userId=1, tel=1, siteId=1, details=1, remarks=1, ext1=1, ext2=1, ext3=1, ext4=1, ext5=1, ext6=1, ext7=1, ext8=1, ext9=1, ext10=1)', '192.168.10.81', '2020-03-06 09:38:21', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1034', 'admin', '新增EventReport', '96', 'cc.mrbird.febs.event.controller.EventReportController.addEventReport()', ' eventReport: EventReport(id=3, eventTypeId=null, happenDate=null, userId=null, tel=null, siteId=null, details=1111, remarks=null, ext1=1111, ext2=null, ext3=null, ext4=null, ext5=null, ext6=null, ext7=null, ext8=null, ext9=null, ext10=null)', '192.168.10.81', '2020-03-09 17:39:44', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1035', 'admin', '新增EventReport', '140', 'cc.mrbird.febs.event.controller.EventReportController.addEventReport()', ' eventReport: EventReport(id=4, eventTypeId=1, happenDate=null, userId=1, tel=1, siteId=1, details=1, remarks=1, ext1=1, ext2=null, ext3=null, ext4=null, ext5=null, ext6=null, ext7=null, ext8=null, ext9=null, ext10=null)', '192.168.10.81', '2020-03-10 09:36:20', '内网IP|0|0|内网IP|内网IP');

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `ID` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(50) DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `SYSTEM` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `BROWSER` varchar(50) DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登录日志表';

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES ('70', 'scott', '2020-03-04 13:59:33', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('71', 'scott', '2020-03-04 14:04:35', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('72', 'scott', '2020-03-04 14:04:52', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('73', 'scott', '2020-03-04 14:05:12', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('74', 'scott', '2020-03-04 14:30:51', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('75', 'scott', '2020-03-04 14:31:44', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('76', 'mrbird', '2020-03-04 14:33:24', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('77', 'Jana', '2020-03-04 14:34:10', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('78', 'admin', '2020-03-04 14:37:46', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('79', 'admin', '2020-03-04 14:39:59', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('80', 'mrbird', '2020-03-04 14:42:59', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('81', 'admin', '2020-03-04 15:16:00', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('82', 'admin', '2020-03-04 15:22:51', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('83', 'admin', '2020-03-04 15:52:03', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('84', 'admin', '2020-03-04 15:59:02', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('85', 'admin', '2020-03-04 16:02:22', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('86', 'admin', '2020-03-04 16:09:33', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('87', 'admin', '2020-03-04 16:20:28', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('88', 'admin', '2020-03-04 16:45:49', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('89', 'admin', '2020-03-04 16:51:42', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('90', 'admin', '2020-03-04 17:03:54', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('91', 'admin', '2020-03-04 17:07:36', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('92', 'admin', '2020-03-04 17:08:53', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('93', 'admin', '2020-03-04 17:13:37', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('94', 'admin', '2020-03-04 17:22:31', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('95', 'admin', '2020-03-04 17:28:57', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('96', 'admin', '2020-03-05 09:15:18', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('97', '13911286333', '2020-03-05 09:25:05', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('98', 'admin', '2020-03-05 09:25:38', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('99', 'admin', '2020-03-05 09:48:57', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('100', 'admin', '2020-03-05 09:51:47', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('101', 'admin', '2020-03-05 10:25:35', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('102', 'admin', '2020-03-05 10:28:36', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('103', 'admin', '2020-03-05 10:32:25', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('104', 'zhaoxingc', '2020-03-05 10:47:54', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('105', 'admin', '2020-03-05 10:48:15', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('106', 'admin', '2020-03-05 14:07:40', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('107', 'admin', '2020-03-05 14:41:36', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('108', 'admin', '2020-03-05 14:45:39', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('109', 'admin', '2020-03-05 16:41:33', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('110', 'admin', '2020-03-05 16:42:53', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('111', '18501930534', '2020-03-05 16:46:55', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('112', 'admin', '2020-03-05 17:09:03', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('113', 'admin', '2020-03-05 17:33:03', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('114', 'admin', '2020-03-06 09:20:45', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('115', 'admin', '2020-03-06 10:08:32', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('116', 'admin', '2020-03-06 10:47:32', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('117', 'admin', '2020-03-06 13:38:46', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('118', 'admin', '2020-03-06 13:41:34', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('119', 'admin', '2020-03-06 13:44:00', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('120', 'admin', '2020-03-06 14:12:11', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('121', 'admin', '2020-03-06 15:34:31', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('122', 'admin', '2020-03-06 17:08:45', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('123', 'admin', '2020-03-06 17:54:37', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('124', 'admin', '2020-03-09 09:23:08', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('125', 'admin', '2020-03-09 10:29:37', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('126', 'admin', '2020-03-09 10:33:45', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('127', 'admin', '2020-03-09 16:50:29', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('128', 'admin', '2020-03-09 17:09:46', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('129', 'admin', '2020-03-09 17:31:17', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('130', 'admin', '2020-03-09 17:41:56', '内网IP|0|0|内网IP|内网IP', '192.168.10.82', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('131', 'admin', '2020-03-09 17:47:55', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('132', 'admin', '2020-03-09 17:54:34', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('133', '18514255265', '2020-03-09 17:58:32', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('134', '18514255265', '2020-03-09 17:59:43', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('135', '18514255265', '2020-03-09 18:02:18', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('136', 'admin', '2020-03-10 09:02:06', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('137', 'admin', '2020-03-10 09:24:18', '内网IP|0|0|内网IP|内网IP', '192.168.10.82', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('138', 'admin', '2020-03-10 10:04:27', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 63');
INSERT INTO `t_login_log` VALUES ('139', 'admin', '2020-03-10 10:30:37', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('140', 'admin', '2020-03-10 13:46:45', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('141', 'admin', '2020-03-16 16:33:27', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('142', 'admin', '2020-03-17 09:57:08', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('143', '13403423374', '2020-03-17 10:10:31', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('144', 'admin', '2020-03-17 10:20:04', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('145', 'admin', '2020-03-17 13:42:30', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('146', 'admin', '2020-03-17 13:44:45', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('147', 'admin', '2020-03-17 13:50:27', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('148', 'admin', '2020-03-17 13:58:15', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('149', 'admin', '2020-03-17 14:31:40', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('150', 'admin', '2020-03-17 14:48:24', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('151', 'admin', '2020-03-17 14:53:47', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('152', 'admin', '2020-03-17 15:11:18', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('153', 'admin', '2020-03-17 15:22:33', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('154', 'admin', '2020-03-17 15:28:18', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('155', 'admin', '2020-03-17 15:30:49', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('156', 'admin', '2020-03-17 15:31:53', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('157', 'admin', '2020-03-17 15:36:47', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('158', 'admin', '2020-03-17 15:42:59', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('159', 'admin', '2020-03-17 16:09:09', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('160', 'admin', '2020-03-17 16:13:11', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('161', 'admin', '2020-03-17 16:14:02', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('162', 'admin', '2020-03-17 16:17:55', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('163', 'admin', '2020-03-17 16:22:21', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('164', 'admin', '2020-03-17 16:27:17', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('165', '18311085721', '2020-03-17 16:31:12', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('166', '18311085721', '2020-03-17 16:31:31', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('167', '18311085721', '2020-03-17 16:32:19', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('168', '18311085721', '2020-03-17 16:33:30', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('169', 'admin', '2020-03-17 16:33:45', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('170', 'admin', '2020-03-17 16:33:54', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('171', 'admin', '2020-03-17 16:36:21', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('172', '18311085721', '2020-03-17 16:36:36', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('173', '18311085721', '2020-03-17 16:36:55', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('174', 'admin', '2020-03-17 17:02:09', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('175', 'admin', '2020-03-17 17:02:39', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('176', 'admin', '2020-03-17 20:52:54', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('177', 'admin', '2020-03-17 20:57:44', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('178', 'admin', '2020-03-17 21:00:54', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('179', 'admin', '2020-03-17 21:05:24', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('180', 'admin', '2020-03-17 21:07:22', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('181', 'admin', '2020-03-17 21:08:13', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('182', 'admin', '2020-03-17 21:14:27', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('183', 'admin', '2020-03-18 09:31:58', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('184', 'admin', '2020-03-18 09:47:43', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('185', 'admin', '2020-03-18 09:52:25', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('186', 'admin', '2020-03-18 10:03:48', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('187', 'admin', '2020-03-18 10:08:35', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('188', 'admin', '2020-03-18 10:14:10', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('189', 'admin', '2020-03-18 10:44:53', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('190', 'admin', '2020-03-18 10:49:11', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('191', 'admin', '2020-03-18 10:54:51', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('192', 'admin', '2020-03-18 10:57:37', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('193', 'admin', '2020-03-18 11:04:52', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('194', 'admin', '2020-03-18 11:11:06', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('195', 'admin', '2020-03-18 11:14:53', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('196', 'admin', '2020-03-18 11:18:23', '内网IP|0|0|内网IP|内网IP', '172.28.111.33', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('197', 'admin', '2020-03-18 11:37:57', '内网IP|0|0|内网IP|内网IP', '192.168.10.81', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('198', 'admin', '2020-03-18 11:37:14', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('199', 'admin', '2020-03-18 11:37:21', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('200', 'admin', '2020-03-18 11:42:12', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('201', 'admin', '2020-03-18 11:42:19', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('202', 'admin', '2020-03-18 11:43:31', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('203', 'admin', '2020-03-18 11:43:37', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('204', 'admin', '2020-03-18 11:44:31', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('205', 'admin', '2020-03-18 13:10:35', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('206', 'admin', '2020-03-18 13:14:11', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('207', 'admin', '2020-03-18 13:16:20', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('208', 'admin', '2020-03-18 13:16:27', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('209', 'admin', '2020-03-18 13:17:59', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('210', 'admin', '2020-03-18 13:21:42', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('211', 'admin', '2020-03-18 13:25:26', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('212', 'admin', '2020-03-18 13:30:26', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('213', '18311085721', '2020-03-18 13:30:39', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('214', 'admin', '2020-03-18 13:30:54', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('215', 'admin', '2020-03-18 13:45:12', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('216', 'admin', '2020-03-18 14:03:37', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('217', 'admin', '2020-03-18 14:54:21', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('218', 'admin', '2020-03-18 14:56:48', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('219', 'admin', '2020-03-18 14:58:09', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('220', 'admin', '2020-03-18 14:59:20', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('221', 'admin', '2020-03-18 16:54:26', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('222', 'admin', '2020-03-18 17:03:39', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('223', 'admin', '2020-03-18 17:04:03', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('224', 'admin', '2020-03-18 17:07:40', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('225', 'admin', '2020-03-18 17:11:45', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('226', 'admin', '2020-03-18 17:25:37', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('227', 'admin', '2020-03-18 17:30:38', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('228', 'admin', '2020-03-18 17:32:25', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('229', 'admin', '2020-03-18 17:35:12', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('230', 'admin', '2020-03-18 17:35:58', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('231', 'admin', '2020-03-18 17:37:42', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('232', 'admin', '2020-03-18 17:39:37', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('233', 'admin', '2020-03-19 08:33:50', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('234', 'admin', '2020-03-19 08:40:53', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('235', 'admin', '2020-03-19 08:46:08', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('236', 'admin', '2020-03-19 08:58:15', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('237', 'admin', '2020-03-19 09:00:03', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('238', 'admin', '2020-03-19 09:07:16', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('239', 'admin', '2020-03-19 09:13:09', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('240', 'admin', '2020-03-19 09:19:05', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('241', 'admin', '2020-03-19 09:20:03', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('242', 'admin', '2020-03-19 09:26:45', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('243', 'admin', '2020-03-19 09:28:44', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('244', 'admin', '2020-03-19 09:31:46', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('245', 'admin', '2020-03-19 09:33:32', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('246', 'admin', '2020-03-19 09:56:16', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('247', 'admin', '2020-03-19 10:45:13', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('248', 'admin', '2020-03-19 10:47:44', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('249', 'admin', '2020-03-19 10:51:15', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('250', 'admin', '2020-03-19 10:55:06', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('251', 'admin', '2020-03-19 10:55:28', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('252', 'admin', '2020-03-19 10:58:57', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('253', 'admin', '2020-03-19 11:01:33', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('254', 'admin', '2020-03-19 11:02:19', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('255', 'admin', '2020-03-19 11:03:32', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('256', 'admin', '2020-03-19 11:08:39', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('257', 'admin', '2020-03-19 11:16:15', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('258', 'admin', '2020-03-19 11:18:58', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('259', 'admin', '2020-03-19 11:22:10', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('260', 'admin', '2020-03-19 13:54:17', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('261', 'admin', '2020-03-19 14:00:34', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('262', 'admin', '2020-03-19 14:05:19', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('263', 'admin', '2020-03-19 14:22:26', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('264', 'admin', '2020-03-19 14:22:50', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('265', 'admin', '2020-03-19 14:57:04', '内网IP|0|0|内网IP|内网IP', '192.168.10.82', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('266', 'admin', '2020-03-19 15:38:39', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('267', 'admin', '2020-03-19 15:42:38', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('268', 'admin', '2020-03-19 17:10:43', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('269', 'admin', '2020-03-19 17:27:21', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('270', 'admin', '2020-03-19 17:31:21', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('271', 'admin', '2020-03-19 17:32:55', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('272', 'admin', '2020-03-19 17:39:19', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('273', 'admin', '2020-03-19 17:41:26', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('274', 'admin', '2020-03-19 17:44:14', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('275', 'admin', '2020-03-19 17:50:07', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('276', 'admin', '2020-03-19 17:53:11', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('277', 'admin', '2020-03-20 09:13:27', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('278', 'admin', '2020-03-20 09:16:07', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('279', 'admin', '2020-03-20 09:18:03', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('280', 'admin', '2020-03-20 09:28:07', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('281', 'admin', '2020-03-20 10:26:59', '内网IP|0|0|内网IP|内网IP', '192.168.10.128', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('282', 'admin', '2020-03-20 11:12:43', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('283', 'admin', '2020-03-20 11:26:49', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('284', 'admin', '2020-03-20 11:57:17', '内网IP|0|0|内网IP|内网IP', '192.168.10.112', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('285', 'admin', '2020-03-20 12:14:31', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 53');
INSERT INTO `t_login_log` VALUES ('286', 'admin', '2020-03-20 12:16:47', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('287', 'admin', '2020-03-20 13:05:45', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('288', 'admin', '2020-03-20 13:08:32', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('289', 'admin', '2020-03-20 13:10:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('290', 'admin', '2020-03-20 13:56:49', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('291', 'admin', '2020-03-20 15:18:31', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('292', 'admin', '2020-03-20 15:40:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('293', 'admin', '2020-03-20 15:44:35', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('294', 'admin', '2020-03-20 15:46:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('295', 'admin', '2020-03-20 15:50:41', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('296', 'admin', '2020-03-20 15:52:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('297', 'admin', '2020-03-20 16:03:23', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 75');
INSERT INTO `t_login_log` VALUES ('298', 'admin', '2020-03-20 16:02:29', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('299', 'admin', '2020-03-20 16:08:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('300', 'admin', '2020-03-20 16:09:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('301', 'admin', '2020-03-20 16:11:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('302', 'admin', '2020-03-20 16:12:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('303', 'admin', '2020-03-20 16:13:25', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('304', 'admin', '2020-03-20 16:16:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('305', 'admin', '2020-03-20 16:17:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('306', 'admin', '2020-03-20 16:20:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('307', 'admin', '2020-03-20 16:21:57', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('308', 'admin', '2020-03-20 16:25:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('309', 'admin', '2020-03-20 16:29:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('310', 'admin', '2020-03-20 16:41:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('311', 'admin', '2020-03-20 16:42:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('312', 'admin', '2020-03-20 16:45:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('313', 'admin', '2020-03-20 16:59:57', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('314', 'admin', '2020-03-20 17:08:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('315', 'admin', '2020-03-20 17:09:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('316', 'admin', '2020-03-20 17:10:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('317', 'admin', '2020-03-20 17:17:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('318', 'admin', '2020-03-20 17:19:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('319', 'admin', '2020-03-20 17:22:42', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('320', 'admin', '2020-03-20 17:23:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('321', 'admin', '2020-03-20 17:25:08', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('322', 'admin', '2020-03-20 17:27:03', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('323', 'admin', '2020-03-20 17:57:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('324', 'admin', '2020-03-20 17:59:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('325', 'admin', '2020-03-20 18:01:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('326', 'admin', '2020-03-20 18:07:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('327', 'admin', '2020-03-20 18:13:07', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('328', 'admin', '2020-03-20 18:20:23', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('329', 'admin', '2020-03-21 09:43:27', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('330', 'admin', '2020-03-21 09:46:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('331', 'admin', '2020-03-21 09:52:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('332', 'admin', '2020-03-21 09:54:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('333', 'admin', '2020-03-21 10:07:45', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('334', 'admin', '2020-03-21 10:28:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('335', 'admin', '2020-03-21 10:31:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('336', 'admin', '2020-03-21 10:32:15', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('337', 'admin', '2020-03-21 10:35:01', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('338', 'admin', '2020-03-21 10:37:11', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('339', 'admin', '2020-03-21 10:40:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('340', 'admin', '2020-03-21 10:47:30', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('341', 'admin', '2020-03-21 11:34:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('342', 'admin', '2020-03-23 09:29:00', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('343', 'admin', '2020-03-23 09:50:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('344', '18514255265', '2020-03-23 10:10:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('345', 'admin', '2020-03-23 10:10:59', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('346', '15081201631', '2020-03-23 17:29:47', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('347', 'admin', '2020-03-24 09:33:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('348', 'admin', '2020-03-24 13:46:02', '中国|华北|北京市|北京市|联通', '220.207.81.123', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('349', 'admin', '2020-03-24 14:23:35', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('350', 'admin', '2020-03-24 16:11:36', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('351', 'admin', '2020-03-24 16:54:25', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('352', 'admin', '2020-03-25 09:09:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('353', 'admin', '2020-03-25 09:41:40', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('354', 'admin', '2020-03-25 10:03:13', '中国|华北|北京市|北京市|联通', '220.207.81.123', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('355', 'admin', '2020-03-25 10:04:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `t_login_log` VALUES ('356', 'admin', '2020-03-25 15:27:29', '中国|华北|北京市|北京市|电信', '115.171.238.236', 'Windows 10', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('357', 'admin', '2020-03-25 16:50:48', '中国|华北|北京市|北京市|联通', '220.207.81.123', 'Windows 10', 'Chrome 80');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(50) DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text COMMENT '权限标识',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '0', '系统管理', null, null, 'layui-icon-setting', '0', '1', '2017-12-27 16:39:07', null);
INSERT INTO `t_menu` VALUES ('2', '0', '系统监控', '', '', 'layui-icon-alert', '0', '4', '2017-12-27 16:45:51', '2020-03-19 14:18:34');
INSERT INTO `t_menu` VALUES ('3', '1', '用户管理', '/system/user', 'user:view', '', '0', '1', '2017-12-27 16:47:13', '2019-12-04 16:46:50');
INSERT INTO `t_menu` VALUES ('4', '1', '角色管理', '/system/role', 'role:view', '', '0', '2', '2017-12-27 16:48:09', '2019-06-13 08:57:19');
INSERT INTO `t_menu` VALUES ('5', '1', '菜单管理', '/system/menu', 'menu:view', '', '0', '3', '2017-12-27 16:48:57', '2019-06-13 08:57:34');
INSERT INTO `t_menu` VALUES ('6', '180', '组织架构管理', '/system/dept', 'dept:view', '', '0', '1', '2017-12-27 16:57:33', '2020-03-19 17:28:33');
INSERT INTO `t_menu` VALUES ('8', '2', '在线用户', '/monitor/online', 'online:view', '', '0', '1', '2017-12-27 16:59:33', '2019-06-13 14:30:31');
INSERT INTO `t_menu` VALUES ('10', '2', '系统日志', '/monitor/log', 'log:view', '', '0', '2', '2017-12-27 17:00:50', '2019-06-13 14:30:37');
INSERT INTO `t_menu` VALUES ('11', '3', '新增用户', null, 'user:add', null, '1', null, '2017-12-27 17:02:58', null);
INSERT INTO `t_menu` VALUES ('12', '3', '修改用户', null, 'user:update', null, '1', null, '2017-12-27 17:04:07', null);
INSERT INTO `t_menu` VALUES ('13', '3', '删除用户', null, 'user:delete', null, '1', null, '2017-12-27 17:04:58', null);
INSERT INTO `t_menu` VALUES ('14', '4', '新增角色', null, 'role:add', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('15', '4', '修改角色', null, 'role:update', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('16', '4', '删除角色', null, 'role:delete', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('17', '5', '新增菜单', null, 'menu:add', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('18', '5', '修改菜单', null, 'menu:update', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('19', '5', '删除菜单', null, 'menu:delete', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('20', '6', '新增队伍', null, 'dept:add', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('21', '6', '修改队伍', null, 'dept:update', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('22', '6', '删除队伍', null, 'dept:delete', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('23', '8', '踢出用户', null, 'user:kickout', null, '1', null, '2017-12-27 17:11:13', null);
INSERT INTO `t_menu` VALUES ('24', '10', '删除日志', null, 'log:delete', null, '1', null, '2017-12-27 17:11:45', '2019-06-06 05:56:40');
INSERT INTO `t_menu` VALUES ('101', '0', '任务调度', '', '', 'layui-icon-time-circle', '0', '5', '2018-02-24 15:52:57', '2020-03-19 14:18:41');
INSERT INTO `t_menu` VALUES ('102', '101', '定时任务', '/job/job', 'job:view', '', '0', '1', '2018-02-24 15:53:53', '2018-04-25 09:05:12');
INSERT INTO `t_menu` VALUES ('103', '102', '新增任务', null, 'job:add', null, '1', null, '2018-02-24 15:55:10', null);
INSERT INTO `t_menu` VALUES ('104', '102', '修改任务', null, 'job:update', null, '1', null, '2018-02-24 15:55:53', null);
INSERT INTO `t_menu` VALUES ('105', '102', '删除任务', null, 'job:delete', null, '1', null, '2018-02-24 15:56:18', null);
INSERT INTO `t_menu` VALUES ('106', '102', '暂停任务', null, 'job:pause', null, '1', null, '2018-02-24 15:57:08', null);
INSERT INTO `t_menu` VALUES ('107', '102', '恢复任务', null, 'job:resume', null, '1', null, '2018-02-24 15:58:21', null);
INSERT INTO `t_menu` VALUES ('108', '102', '立即执行任务', null, 'job:run', null, '1', null, '2018-02-24 15:59:45', null);
INSERT INTO `t_menu` VALUES ('109', '101', '调度日志', '/job/log', 'job:log:view', '', '0', '2', '2018-02-24 16:00:45', '2019-06-09 02:48:19');
INSERT INTO `t_menu` VALUES ('110', '109', '删除日志', null, 'job:log:delete', null, '1', null, '2018-02-24 16:01:21', null);
INSERT INTO `t_menu` VALUES ('115', '0', '其他模块', '', '', 'layui-icon-gift', '0', '7', '2019-05-27 10:18:07', '2020-03-19 14:18:51');
INSERT INTO `t_menu` VALUES ('116', '115', 'Apex图表', '', '', null, '0', '2', '2019-05-27 10:21:35', null);
INSERT INTO `t_menu` VALUES ('117', '116', '线性图表', '/others/apex/line', 'apex:line:view', null, '0', '1', '2019-05-27 10:24:49', null);
INSERT INTO `t_menu` VALUES ('118', '115', '高德地图', '/others/map', 'map:view', '', '0', '3', '2019-05-27 17:13:12', '2019-06-12 15:33:00');
INSERT INTO `t_menu` VALUES ('119', '116', '面积图表', '/others/apex/area', 'apex:area:view', null, '0', '2', '2019-05-27 18:49:22', null);
INSERT INTO `t_menu` VALUES ('120', '116', '柱形图表', '/others/apex/column', 'apex:column:view', null, '0', '3', '2019-05-27 18:51:33', null);
INSERT INTO `t_menu` VALUES ('121', '116', '雷达图表', '/others/apex/radar', 'apex:radar:view', null, '0', '4', '2019-05-27 18:56:05', null);
INSERT INTO `t_menu` VALUES ('122', '116', '条形图表', '/others/apex/bar', 'apex:bar:view', null, '0', '5', '2019-05-27 18:57:02', null);
INSERT INTO `t_menu` VALUES ('123', '116', '混合图表', '/others/apex/mix', 'apex:mix:view', '', '0', '6', '2019-05-27 18:58:04', '2019-06-06 02:55:23');
INSERT INTO `t_menu` VALUES ('125', '115', '导入导出', '/others/eximport', 'others:eximport:view', '', '0', '4', '2019-05-27 19:01:57', '2019-06-13 01:20:14');
INSERT INTO `t_menu` VALUES ('126', '132', '系统图标', '/others/febs/icon', 'febs:icons:view', '', '0', '4', '2019-05-27 19:03:18', '2019-06-06 03:05:26');
INSERT INTO `t_menu` VALUES ('127', '2', '请求追踪', '/monitor/httptrace', 'httptrace:view', '', '0', '6', '2019-05-27 19:06:38', '2019-06-13 14:36:43');
INSERT INTO `t_menu` VALUES ('128', '2', '系统信息', null, null, null, '0', '7', '2019-05-27 19:08:23', null);
INSERT INTO `t_menu` VALUES ('129', '128', 'JVM信息', '/monitor/jvm', 'jvm:view', '', '0', '1', '2019-05-27 19:08:50', '2019-06-13 14:36:51');
INSERT INTO `t_menu` VALUES ('131', '128', '服务器信息', '/monitor/server', 'server:view', '', '0', '3', '2019-05-27 19:10:07', '2019-06-13 14:37:04');
INSERT INTO `t_menu` VALUES ('132', '115', 'FEBS组件', '', '', null, '0', '1', '2019-05-27 19:13:54', null);
INSERT INTO `t_menu` VALUES ('133', '132', '表单组件', '/others/febs/form', 'febs:form:view', null, '0', '1', '2019-05-27 19:14:45', null);
INSERT INTO `t_menu` VALUES ('134', '132', 'FEBS工具', '/others/febs/tools', 'febs:tools:view', '', '0', '3', '2019-05-29 10:11:22', '2019-06-12 13:21:27');
INSERT INTO `t_menu` VALUES ('135', '132', '表单组合', '/others/febs/form/group', 'febs:formgroup:view', null, '0', '2', '2019-05-29 10:16:19', null);
INSERT INTO `t_menu` VALUES ('136', '2', '登录日志', '/monitor/loginlog', 'loginlog:view', '', '0', '3', '2019-05-29 15:56:15', '2019-06-13 14:35:56');
INSERT INTO `t_menu` VALUES ('137', '0', '代码生成', '', '', 'layui-icon-verticalright', '0', '6', '2019-06-03 15:35:58', '2020-03-19 14:18:47');
INSERT INTO `t_menu` VALUES ('138', '137', '生成配置', '/generator/configure', 'generator:configure:view', null, '0', '1', '2019-06-03 15:38:36', null);
INSERT INTO `t_menu` VALUES ('139', '137', '代码生成', '/generator/generator', 'generator:view', '', '0', '2', '2019-06-03 15:39:15', '2019-06-13 14:31:38');
INSERT INTO `t_menu` VALUES ('159', '132', '其他组件', '/others/febs/others', 'others:febs:others', '', '0', '5', '2019-06-12 07:51:08', '2019-06-12 07:51:40');
INSERT INTO `t_menu` VALUES ('160', '3', '密码重置', null, 'user:password:reset', null, '1', null, '2019-06-13 08:40:13', null);
INSERT INTO `t_menu` VALUES ('161', '3', '导出Excel', null, 'user:export', null, '1', null, '2019-06-13 08:40:34', null);
INSERT INTO `t_menu` VALUES ('162', '4', '导出Excel', null, 'role:export', null, '1', null, '2019-06-13 14:29:00', '2019-06-13 14:29:11');
INSERT INTO `t_menu` VALUES ('163', '5', '导出Excel', null, 'menu:export', null, '1', null, '2019-06-13 14:29:32', null);
INSERT INTO `t_menu` VALUES ('164', '6', '导出Excel', null, 'dept:export', null, '1', null, '2019-06-13 14:29:59', null);
INSERT INTO `t_menu` VALUES ('165', '138', '修改配置', null, 'generator:configure:update', null, '1', null, '2019-06-13 14:32:09', '2019-06-13 14:32:20');
INSERT INTO `t_menu` VALUES ('166', '139', '生成代码', null, 'generator:generate', null, '1', null, '2019-06-13 14:32:51', null);
INSERT INTO `t_menu` VALUES ('167', '125', '模板下载', null, 'eximport:template', null, '1', null, '2019-06-13 14:33:37', null);
INSERT INTO `t_menu` VALUES ('168', '125', '导出Excel', null, 'eximport:export', null, '1', null, '2019-06-13 14:33:57', null);
INSERT INTO `t_menu` VALUES ('169', '125', '导入Excel', null, 'eximport:import', null, '1', null, '2019-06-13 14:34:19', null);
INSERT INTO `t_menu` VALUES ('170', '10', '导出Excel', null, 'log:export', null, '1', null, '2019-06-13 14:34:55', null);
INSERT INTO `t_menu` VALUES ('171', '136', '删除日志', null, 'loginlog:delete', null, '1', null, '2019-06-13 14:35:27', '2019-06-13 14:36:08');
INSERT INTO `t_menu` VALUES ('172', '136', '导出Excel', null, 'loginlog:export', null, '1', null, '2019-06-13 14:36:26', null);
INSERT INTO `t_menu` VALUES ('173', '102', '导出Excel', null, 'job:export', null, '1', null, '2019-06-13 14:37:25', null);
INSERT INTO `t_menu` VALUES ('174', '109', '导出Excel', null, 'job:log:export', null, '1', null, '2019-06-13 14:37:46', '2019-06-13 14:38:02');
INSERT INTO `t_menu` VALUES ('175', '2', 'Swagger文档', '/monitor/swagger', 'swagger:view', '', '0', '8', '2019-08-18 17:25:36', '2019-08-18 17:25:59');
INSERT INTO `t_menu` VALUES ('176', '181', '应急处突业务', '/event/eventreport', 'eventreport:view', '', '0', '5', '2020-03-18 16:58:27', null);
INSERT INTO `t_menu` VALUES ('177', '176', '删除记录', null, 'eventreport:delete', null, '1', null, '2020-03-19 08:44:14', null);
INSERT INTO `t_menu` VALUES ('178', '181', '日常业务', '/event/normalreport', 'normalreport:view', '', '0', '6', '2020-03-19 10:46:47', null);
INSERT INTO `t_menu` VALUES ('179', '178', '删除业务', null, 'normalreport:delete', null, '1', null, '2020-03-19 10:47:28', '2020-03-19 11:08:30');
INSERT INTO `t_menu` VALUES ('180', '0', '组织管理', '', '', 'layui-icon-appstore', '0', '2', '2020-03-19 14:18:24', null);
INSERT INTO `t_menu` VALUES ('181', '0', '业务管理', '', '', 'layui-icon-appstore', '0', '2', '2020-03-19 14:19:10', '2020-03-20 15:42:11');
INSERT INTO `t_menu` VALUES ('182', '180', '业务机构管理', '/system/businessorg', 'businessorg:view', '', '0', '2', '2020-03-19 17:28:10', null);
INSERT INTO `t_menu` VALUES ('183', '182', '新增业务机构', null, 'businessorg:add', null, '1', null, '2020-03-19 17:29:32', null);
INSERT INTO `t_menu` VALUES ('184', '182', '修改业务机构', null, 'businessorg:update', null, '1', null, '2020-03-19 17:30:07', null);
INSERT INTO `t_menu` VALUES ('185', '182', '删除业务机构', null, 'businessorg:delete', null, '1', null, '2020-03-19 17:30:33', null);
INSERT INTO `t_menu` VALUES ('186', '182', '导出业务机构', null, 'businessorg:export', null, '1', null, '2020-03-19 17:30:58', null);
INSERT INTO `t_menu` VALUES ('187', '181', '项目信息', '/system/projectinfo', 'projectinfo:view', '', '0', '1', '2020-03-20 15:41:57', null);
INSERT INTO `t_menu` VALUES ('188', '187', '新增项目', null, 'projectinfo:add', null, '1', null, '2020-03-20 15:42:38', null);
INSERT INTO `t_menu` VALUES ('189', '187', '修改项目', null, 'projectinfo:update', null, '1', null, '2020-03-20 15:43:00', null);
INSERT INTO `t_menu` VALUES ('190', '187', '删除项目', null, 'projectinfo:delete', null, '1', null, '2020-03-20 15:43:34', null);
INSERT INTO `t_menu` VALUES ('191', '187', '导出项目', null, 'projectinfo:export', null, '1', null, '2020-03-20 15:44:05', null);

-- ----------------------------
-- Table structure for t_normal_report
-- ----------------------------
DROP TABLE IF EXISTS `t_normal_report`;
CREATE TABLE `t_normal_report` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `REPORT_NO` bigint(20) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `HAPPEN_DATE` datetime DEFAULT NULL,
  `TOTAL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL,
  `CARD` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL COMMENT '上报人经度',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '上报人纬度',
  `EXT4` varchar(255) DEFAULT NULL,
  `EXT5` varchar(255) DEFAULT NULL,
  `EXT6` varchar(255) DEFAULT NULL,
  `EXT7` varchar(255) DEFAULT NULL,
  `EXT8` varchar(255) DEFAULT NULL,
  `EXT9` varchar(255) DEFAULT NULL,
  `EXT10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_normal_report
-- ----------------------------
INSERT INTO `t_normal_report` VALUES ('1', '202003180001', '12', '2020-03-19 11:04:40', '1', '李四', '18311085722', '412723199202215071', '北京大兴', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('5', null, null, null, null, '小楚', '17545858585', '142322199585489', '小楚这周要搬家了', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('6', null, '15', null, null, '高和进', '15452565888', '12555584447858', '我是高和进 我是大帅哥', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('7', null, null, '2020-03-20 11:07:07', null, '韩冬', '18888888888', '18888888888888', '北京市大兴区某豪宅', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('8', null, '15', '2020-03-20 11:08:06', null, '韩冬', '18888888888', '18888888888888', '北京市大兴区某豪宅', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('9', null, '15', '2020-03-20 11:08:57', null, '邓军儿', '19958587474', '18887478596585', '北京市某大街', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('10', null, '15', '2020-03-20 11:37:01', null, '测试', '15525254444', '14222255558777', '北京', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('11', null, '15', '2020-03-20 12:21:14', null, '娜姐', '15588884444', '15414455558888', '我是娜姐 我为自己代言', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('12', null, '77', '2020-03-20 15:25:30', null, '海涛', '18874447888', '145222563654895', '海涛来自山西河南 ，', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('13', null, '77', '2020-03-20 16:50:02', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('14', null, '77', '2020-03-20 16:50:57', null, '赵', '13911286333', '', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('15', null, '77', '2020-03-20 17:04:10', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('16', null, '77', '2020-03-20 17:05:04', null, '', '', '', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('17', null, '77', '2020-03-23 10:41:08', null, '李四', '18266669999', '142222155544447777', '北京', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_normal_report` VALUES ('30', '202003250001', '77', '2020-03-25 10:22:29', null, '哥哥', '1590000000', '呵呵哒呵呵哒回到家', '呵呵呵呵本', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_os_inspection
-- ----------------------------
DROP TABLE IF EXISTS `t_os_inspection`;
CREATE TABLE `t_os_inspection` (
  `ID` bigint(20) NOT NULL,
  `I_SUM` varchar(255) DEFAULT NULL,
  `FASHAO` varchar(255) DEFAULT NULL,
  `WUYICHANG` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_os_inspection
-- ----------------------------
INSERT INTO `t_os_inspection` VALUES ('1', '3516', '7', '3509', '2020-03-11 16:27:55');

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project` (
  `ID` bigint(20) NOT NULL,
  `PROJECT_NAME` varchar(255) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `CAPTAIN` varchar(255) DEFAULT NULL,
  `CAPTAIN_TEL` varchar(255) DEFAULT NULL,
  `PROJECT_TYPE` varchar(255) DEFAULT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  `LON` varchar(255) DEFAULT NULL,
  `LAT` varchar(255) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `EXT3` varchar(255) DEFAULT NULL,
  `EXT4` varchar(255) DEFAULT NULL,
  `EXT5` varchar(255) DEFAULT NULL,
  `EXT6` varchar(255) DEFAULT NULL,
  `EXT7` varchar(255) DEFAULT NULL,
  `EXT8` varchar(255) DEFAULT NULL,
  `EXT9` varchar(255) DEFAULT NULL,
  `EXT10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES ('1', '北京市大兴区北臧镇政府辅警队', '75', '李松融', '18514255265', '应急处突类', '北京市大兴区北臧镇政府辅警队', '116.308966', '39.692307', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_project_info
-- ----------------------------
DROP TABLE IF EXISTS `t_project_info`;
CREATE TABLE `t_project_info` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `BORG_ID` bigint(20) DEFAULT NULL,
  `DEPT_ID` bigint(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CHARGE_ID` bigint(20) DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL,
  `LON` varchar(255) DEFAULT NULL,
  `LAT` varchar(255) DEFAULT NULL,
  `CREATE_ID` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `EXT3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project_info
-- ----------------------------
INSERT INTO `t_project_info` VALUES ('3', '北京市大兴区北臧镇政府辅警队', '7', '12', '', '75', '18514255265', '116.308966', '39.692307', '8', '2020-03-24 10:22:08', null, null, null);
INSERT INTO `t_project_info` VALUES ('4', '北臧村镇政务服务中心', '8', '13', '日常巡查', '76', '18701530462', '116.318852', '39.678403', '8', '2020-03-24 11:03:24', null, null, null);
INSERT INTO `t_project_info` VALUES ('5', '北臧村镇政务服务一层大厅', '9', '13', '人员管理', '77', '18701530462', '116.318522', '39.678638', '8', '2020-03-24 11:04:32', null, null, null);
INSERT INTO `t_project_info` VALUES ('6', '北臧村镇政务服务中心门岗', '10', '13', '人车管理', '78', '18701530462', '116.318852', '39.678703', '8', '2020-03-24 11:05:06', null, null, null);
INSERT INTO `t_project_info` VALUES ('7', '北臧村镇梨园村南卡口', '11', '14', '渣土车辆管理', '79', '15801089430', '116.302554', '39.659994', '8', '2020-03-24 11:06:02', null, null, null);
INSERT INTO `t_project_info` VALUES ('8', '北臧村镇新立村安全科门岗', '12', '15', '人车管理', '80', '13301367013', '116.287023', '39.70561', '8', '2020-03-24 11:07:56', null, null, null);
INSERT INTO `t_project_info` VALUES ('9', '北臧村镇合众力源门岗', '13', '16', '人车管理', '81', '15652567721', '116.318526', '39.678366', '8', '2020-03-24 11:08:37', null, null, null);
INSERT INTO `t_project_info` VALUES ('10', '北臧村镇翡翠湖门岗', '14', '17', '人车管理', '82', '18301103546', '116.262363', '39.676307', '8', '2020-03-24 11:09:32', null, null, null);
INSERT INTO `t_project_info` VALUES ('11', '北臧村镇采摘园门岗', '15', '18', '人车管理', '83', '15822367888', '116.541215', '39.641888', '8', '2020-03-24 11:10:33', null, null, null);
INSERT INTO `t_project_info` VALUES ('12', '北臧村镇交通管理站门岗', '16', '19', '人车管理', '84', '13753922787', '116.298052', '39.653782', '8', '2020-03-24 11:11:12', null, null, null);
INSERT INTO `t_project_info` VALUES ('13', '北臧村镇环整办门岗', '17', '13', '人车管理', '78', '18701530462', '116.308966', '39.692313', '8', '2020-03-24 11:14:51', null, null, null);
INSERT INTO `t_project_info` VALUES ('14', '北臧村镇绿化队门岗', '18', '21', '人车管理', '85', '13848567343', '116.261719', '39.668732', '8', '2020-03-24 11:15:36', null, null, null);
INSERT INTO `t_project_info` VALUES ('15', '北臧村镇垃圾处理厂门岗', '19', '22', '人车管理', '86', '15668518091', '116.316253', '39.671574', '8', '2020-03-24 11:16:16', null, null, null);
INSERT INTO `t_project_info` VALUES ('16', '北臧村镇政务服务中心三楼监控室', '20', '23', '接线员', '87', '17621985784', '116.318522', '39.678538', '8', '2020-03-24 11:16:56', null, null, null);
INSERT INTO `t_project_info` VALUES ('17', '北臧村镇政务服务中心宿舍楼门岗', '21', '24', '疫情管控', '88', '15001056027', '116.318952', '39.678403', '8', '2020-03-24 11:17:36', null, null, null);
INSERT INTO `t_project_info` VALUES ('18', '北臧村镇网格化管理', '22', '25', '市政市容违规处理', '89', '13716781770', '116.308966', '39.694313', '8', '2020-03-24 11:18:11', null, null, null);
INSERT INTO `t_project_info` VALUES ('19', '北臧村镇镇域违停车辆处理', '23', '26', '违停车辆处理岗位', '90', '13503741392', '116.249045', '39.678322', '8', '2020-03-24 11:18:42', null, null, null);
INSERT INTO `t_project_info` VALUES ('20', '北臧村镇卫生院门岗', '24', '27', '卫生院岗位', '91', '13233486626', '116.299567', '39.708351', '8', '2020-03-24 11:19:10', null, null, null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '系统管理员', '系统管理员，拥有所有操作权限 ^_^', '2019-06-14 16:23:11', '2020-03-25 10:05:08');
INSERT INTO `t_role` VALUES ('2', '注册账户', '注册账户，拥有查看，新增权限（新增用户除外）和导出Excel权限', '2019-06-14 16:00:15', '2020-03-23 10:06:12');
INSERT INTO `t_role` VALUES ('81', '应急大队指挥长', '中泰民安大兴区应急大队指挥长', '2020-03-04 16:04:39', '2020-03-23 10:06:25');
INSERT INTO `t_role` VALUES ('82', '应急大队教导员', '中泰民安大兴区应急大队教导员', '2020-03-04 16:04:58', null);
INSERT INTO `t_role` VALUES ('83', '应急大队顾问', '中泰民安应急大队顾问', '2020-03-04 16:05:08', null);
INSERT INTO `t_role` VALUES ('84', '中队长', '中泰民安大兴区中队长', '2020-03-04 16:05:53', null);
INSERT INTO `t_role` VALUES ('85', '队员', '中泰民安大兴区队员', '2020-03-04 16:06:06', null);
INSERT INTO `t_role` VALUES ('86', '测试角色', '测试角色用', '2020-03-17 16:34:56', null);

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint(20) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单关联表';

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('77', '2');
INSERT INTO `t_role_menu` VALUES ('78', '2');
INSERT INTO `t_role_menu` VALUES ('78', '8');
INSERT INTO `t_role_menu` VALUES ('78', '23');
INSERT INTO `t_role_menu` VALUES ('78', '10');
INSERT INTO `t_role_menu` VALUES ('78', '24');
INSERT INTO `t_role_menu` VALUES ('78', '170');
INSERT INTO `t_role_menu` VALUES ('78', '136');
INSERT INTO `t_role_menu` VALUES ('78', '171');
INSERT INTO `t_role_menu` VALUES ('78', '172');
INSERT INTO `t_role_menu` VALUES ('78', '127');
INSERT INTO `t_role_menu` VALUES ('78', '128');
INSERT INTO `t_role_menu` VALUES ('78', '129');
INSERT INTO `t_role_menu` VALUES ('78', '131');
INSERT INTO `t_role_menu` VALUES ('79', '101');
INSERT INTO `t_role_menu` VALUES ('79', '102');
INSERT INTO `t_role_menu` VALUES ('79', '103');
INSERT INTO `t_role_menu` VALUES ('79', '104');
INSERT INTO `t_role_menu` VALUES ('79', '105');
INSERT INTO `t_role_menu` VALUES ('79', '106');
INSERT INTO `t_role_menu` VALUES ('79', '107');
INSERT INTO `t_role_menu` VALUES ('79', '108');
INSERT INTO `t_role_menu` VALUES ('79', '173');
INSERT INTO `t_role_menu` VALUES ('79', '109');
INSERT INTO `t_role_menu` VALUES ('79', '110');
INSERT INTO `t_role_menu` VALUES ('79', '174');
INSERT INTO `t_role_menu` VALUES ('80', '137');
INSERT INTO `t_role_menu` VALUES ('80', '138');
INSERT INTO `t_role_menu` VALUES ('80', '165');
INSERT INTO `t_role_menu` VALUES ('80', '139');
INSERT INTO `t_role_menu` VALUES ('80', '166');
INSERT INTO `t_role_menu` VALUES ('86', '1');
INSERT INTO `t_role_menu` VALUES ('86', '3');
INSERT INTO `t_role_menu` VALUES ('86', '11');
INSERT INTO `t_role_menu` VALUES ('86', '12');
INSERT INTO `t_role_menu` VALUES ('86', '13');
INSERT INTO `t_role_menu` VALUES ('86', '4');
INSERT INTO `t_role_menu` VALUES ('86', '14');
INSERT INTO `t_role_menu` VALUES ('86', '15');
INSERT INTO `t_role_menu` VALUES ('86', '16');
INSERT INTO `t_role_menu` VALUES ('2', '1');
INSERT INTO `t_role_menu` VALUES ('2', '3');
INSERT INTO `t_role_menu` VALUES ('2', '161');
INSERT INTO `t_role_menu` VALUES ('2', '4');
INSERT INTO `t_role_menu` VALUES ('2', '14');
INSERT INTO `t_role_menu` VALUES ('2', '162');
INSERT INTO `t_role_menu` VALUES ('2', '5');
INSERT INTO `t_role_menu` VALUES ('2', '17');
INSERT INTO `t_role_menu` VALUES ('2', '163');
INSERT INTO `t_role_menu` VALUES ('2', '180');
INSERT INTO `t_role_menu` VALUES ('2', '6');
INSERT INTO `t_role_menu` VALUES ('2', '20');
INSERT INTO `t_role_menu` VALUES ('2', '164');
INSERT INTO `t_role_menu` VALUES ('2', '181');
INSERT INTO `t_role_menu` VALUES ('2', '8');
INSERT INTO `t_role_menu` VALUES ('2', '10');
INSERT INTO `t_role_menu` VALUES ('2', '170');
INSERT INTO `t_role_menu` VALUES ('2', '136');
INSERT INTO `t_role_menu` VALUES ('2', '172');
INSERT INTO `t_role_menu` VALUES ('2', '127');
INSERT INTO `t_role_menu` VALUES ('2', '128');
INSERT INTO `t_role_menu` VALUES ('2', '129');
INSERT INTO `t_role_menu` VALUES ('2', '131');
INSERT INTO `t_role_menu` VALUES ('2', '175');
INSERT INTO `t_role_menu` VALUES ('2', '102');
INSERT INTO `t_role_menu` VALUES ('2', '173');
INSERT INTO `t_role_menu` VALUES ('2', '109');
INSERT INTO `t_role_menu` VALUES ('2', '174');
INSERT INTO `t_role_menu` VALUES ('2', '138');
INSERT INTO `t_role_menu` VALUES ('2', '139');
INSERT INTO `t_role_menu` VALUES ('2', '132');
INSERT INTO `t_role_menu` VALUES ('2', '133');
INSERT INTO `t_role_menu` VALUES ('2', '135');
INSERT INTO `t_role_menu` VALUES ('2', '134');
INSERT INTO `t_role_menu` VALUES ('2', '126');
INSERT INTO `t_role_menu` VALUES ('2', '159');
INSERT INTO `t_role_menu` VALUES ('2', '116');
INSERT INTO `t_role_menu` VALUES ('2', '117');
INSERT INTO `t_role_menu` VALUES ('2', '119');
INSERT INTO `t_role_menu` VALUES ('2', '120');
INSERT INTO `t_role_menu` VALUES ('2', '121');
INSERT INTO `t_role_menu` VALUES ('2', '122');
INSERT INTO `t_role_menu` VALUES ('2', '123');
INSERT INTO `t_role_menu` VALUES ('2', '118');
INSERT INTO `t_role_menu` VALUES ('2', '125');
INSERT INTO `t_role_menu` VALUES ('2', '167');
INSERT INTO `t_role_menu` VALUES ('2', '168');
INSERT INTO `t_role_menu` VALUES ('2', '169');
INSERT INTO `t_role_menu` VALUES ('81', '1');
INSERT INTO `t_role_menu` VALUES ('81', '3');
INSERT INTO `t_role_menu` VALUES ('81', '11');
INSERT INTO `t_role_menu` VALUES ('81', '12');
INSERT INTO `t_role_menu` VALUES ('81', '13');
INSERT INTO `t_role_menu` VALUES ('81', '4');
INSERT INTO `t_role_menu` VALUES ('81', '14');
INSERT INTO `t_role_menu` VALUES ('81', '15');
INSERT INTO `t_role_menu` VALUES ('81', '16');
INSERT INTO `t_role_menu` VALUES ('81', '180');
INSERT INTO `t_role_menu` VALUES ('81', '181');
INSERT INTO `t_role_menu` VALUES ('1', '1');
INSERT INTO `t_role_menu` VALUES ('1', '3');
INSERT INTO `t_role_menu` VALUES ('1', '11');
INSERT INTO `t_role_menu` VALUES ('1', '12');
INSERT INTO `t_role_menu` VALUES ('1', '13');
INSERT INTO `t_role_menu` VALUES ('1', '160');
INSERT INTO `t_role_menu` VALUES ('1', '161');
INSERT INTO `t_role_menu` VALUES ('1', '4');
INSERT INTO `t_role_menu` VALUES ('1', '14');
INSERT INTO `t_role_menu` VALUES ('1', '15');
INSERT INTO `t_role_menu` VALUES ('1', '16');
INSERT INTO `t_role_menu` VALUES ('1', '162');
INSERT INTO `t_role_menu` VALUES ('1', '5');
INSERT INTO `t_role_menu` VALUES ('1', '17');
INSERT INTO `t_role_menu` VALUES ('1', '18');
INSERT INTO `t_role_menu` VALUES ('1', '19');
INSERT INTO `t_role_menu` VALUES ('1', '163');
INSERT INTO `t_role_menu` VALUES ('1', '180');
INSERT INTO `t_role_menu` VALUES ('1', '6');
INSERT INTO `t_role_menu` VALUES ('1', '20');
INSERT INTO `t_role_menu` VALUES ('1', '21');
INSERT INTO `t_role_menu` VALUES ('1', '22');
INSERT INTO `t_role_menu` VALUES ('1', '164');
INSERT INTO `t_role_menu` VALUES ('1', '182');
INSERT INTO `t_role_menu` VALUES ('1', '183');
INSERT INTO `t_role_menu` VALUES ('1', '184');
INSERT INTO `t_role_menu` VALUES ('1', '185');
INSERT INTO `t_role_menu` VALUES ('1', '186');
INSERT INTO `t_role_menu` VALUES ('1', '181');
INSERT INTO `t_role_menu` VALUES ('1', '187');
INSERT INTO `t_role_menu` VALUES ('1', '188');
INSERT INTO `t_role_menu` VALUES ('1', '189');
INSERT INTO `t_role_menu` VALUES ('1', '190');
INSERT INTO `t_role_menu` VALUES ('1', '191');
INSERT INTO `t_role_menu` VALUES ('1', '176');
INSERT INTO `t_role_menu` VALUES ('1', '177');
INSERT INTO `t_role_menu` VALUES ('1', '178');
INSERT INTO `t_role_menu` VALUES ('1', '179');
INSERT INTO `t_role_menu` VALUES ('1', '2');
INSERT INTO `t_role_menu` VALUES ('1', '8');
INSERT INTO `t_role_menu` VALUES ('1', '23');
INSERT INTO `t_role_menu` VALUES ('1', '10');
INSERT INTO `t_role_menu` VALUES ('1', '24');
INSERT INTO `t_role_menu` VALUES ('1', '170');
INSERT INTO `t_role_menu` VALUES ('1', '136');
INSERT INTO `t_role_menu` VALUES ('1', '171');
INSERT INTO `t_role_menu` VALUES ('1', '172');
INSERT INTO `t_role_menu` VALUES ('1', '127');
INSERT INTO `t_role_menu` VALUES ('1', '128');
INSERT INTO `t_role_menu` VALUES ('1', '129');
INSERT INTO `t_role_menu` VALUES ('1', '131');
INSERT INTO `t_role_menu` VALUES ('1', '175');
INSERT INTO `t_role_menu` VALUES ('1', '101');
INSERT INTO `t_role_menu` VALUES ('1', '102');
INSERT INTO `t_role_menu` VALUES ('1', '103');
INSERT INTO `t_role_menu` VALUES ('1', '104');
INSERT INTO `t_role_menu` VALUES ('1', '105');
INSERT INTO `t_role_menu` VALUES ('1', '106');
INSERT INTO `t_role_menu` VALUES ('1', '107');
INSERT INTO `t_role_menu` VALUES ('1', '108');
INSERT INTO `t_role_menu` VALUES ('1', '173');
INSERT INTO `t_role_menu` VALUES ('1', '109');
INSERT INTO `t_role_menu` VALUES ('1', '110');
INSERT INTO `t_role_menu` VALUES ('1', '174');
INSERT INTO `t_role_menu` VALUES ('1', '137');
INSERT INTO `t_role_menu` VALUES ('1', '138');
INSERT INTO `t_role_menu` VALUES ('1', '165');
INSERT INTO `t_role_menu` VALUES ('1', '139');
INSERT INTO `t_role_menu` VALUES ('1', '166');
INSERT INTO `t_role_menu` VALUES ('1', '115');
INSERT INTO `t_role_menu` VALUES ('1', '132');
INSERT INTO `t_role_menu` VALUES ('1', '133');
INSERT INTO `t_role_menu` VALUES ('1', '135');
INSERT INTO `t_role_menu` VALUES ('1', '134');
INSERT INTO `t_role_menu` VALUES ('1', '126');
INSERT INTO `t_role_menu` VALUES ('1', '159');
INSERT INTO `t_role_menu` VALUES ('1', '116');
INSERT INTO `t_role_menu` VALUES ('1', '117');
INSERT INTO `t_role_menu` VALUES ('1', '119');
INSERT INTO `t_role_menu` VALUES ('1', '120');
INSERT INTO `t_role_menu` VALUES ('1', '121');
INSERT INTO `t_role_menu` VALUES ('1', '122');
INSERT INTO `t_role_menu` VALUES ('1', '123');
INSERT INTO `t_role_menu` VALUES ('1', '118');
INSERT INTO `t_role_menu` VALUES ('1', '125');
INSERT INTO `t_role_menu` VALUES ('1', '167');
INSERT INTO `t_role_menu` VALUES ('1', '168');
INSERT INTO `t_role_menu` VALUES ('1', '169');

-- ----------------------------
-- Table structure for t_site
-- ----------------------------
DROP TABLE IF EXISTS `t_site`;
CREATE TABLE `t_site` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROJECT_ID` bigint(20) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `MEMBER_NAME` varchar(255) DEFAULT NULL,
  `MEMBER_TEL` varchar(255) DEFAULT NULL,
  `LICATION` varchar(255) DEFAULT NULL,
  `REMARKS` varchar(1024) DEFAULT NULL,
  `TEAM_NAME` varchar(255) DEFAULT NULL,
  `PROJECT_TYPE` varchar(255) DEFAULT NULL,
  `DUTY_CONTENT` varchar(2550) DEFAULT NULL,
  `LON` varchar(255) DEFAULT NULL,
  `LAT` varchar(255) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL,
  `EXT2` varchar(255) DEFAULT NULL,
  `EXT3` varchar(255) DEFAULT NULL,
  `EXT4` varchar(255) DEFAULT NULL,
  `EXT5` varchar(255) DEFAULT NULL,
  `EXT6` varchar(255) DEFAULT NULL,
  `EXT7` varchar(255) DEFAULT NULL,
  `EXT8` varchar(255) DEFAULT NULL,
  `EXT9` varchar(255) DEFAULT NULL,
  `EXT10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';

-- ----------------------------
-- Records of t_site
-- ----------------------------
INSERT INTO `t_site` VALUES ('1', '礼贤镇农建科', null, '14', null, '18501930534', '大兴区礼贤镇城管执法队', null, '中泰民安大兴区民兵应急中队', '应急处突类', null, '116.42945', '39.55095', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('2', '恒信建业资产管理有限公司', null, '24', null, '18811141043', '大兴区京开辅路35号', null, '中泰民安大兴区消防应急中队', '应急处突类', null, '116.331158', '39.543501', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('3', '清源街道社会化', null, '34', null, '13963799938', '大兴区滨河西里17号', null, '中泰民安大兴区预备役中队', '应急处突类', null, '116.33238', '39.75049', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('4', '市政养护队', null, '44', null, '17310066516', '大兴区黄村公园西南角保安宿舍', null, '中泰民安大兴区红十字会救护中队', '应急处突类', null, '116.3255', '39.74113', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('5', '西红门城管', null, '54', null, '18911654771', '大兴区西红门镇路安小镇D103', null, '中泰民安大兴区公安辅警防爆中队', '应急处突类', null, '116.413932', '39.772746', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('6', '西红门综治', null, '64', null, '15010851672', '大兴区西红门镇路安小镇D104', null, '中泰民安鹰翔护卫志愿者中队', '应急处突类', null, '116.41431', '39.77264', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('7', '北臧村镇政务服务中心', '1', '76', '王春杰', '13684763653', '北臧村镇政务服务中心', '', '政府直属队', '', '日常巡查', '116.318852', '39.678403', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('8', '北臧村镇政务服务一层大厅', '1', '77', '陈正荣', '15081201631', '北臧村镇政务服务一层大厅', '', '政府直属队', '', '人员管理', '116.318522', '39.678538', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('9', '北臧村镇政务服务中心门岗', '1', '78', '孔维平', '18701530462', '北臧村镇政务服务中心门岗', '', '政府直属队', '', '人车管理', '116.318852', '39.678403', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('10', '北臧村镇梨园村南卡口', '1', '79', '于军', '15801089430', '北臧村镇梨园村南卡口', '', '渣土岗位', '', '渣土车辆管理', '116.302554', '39.659994', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('11', '北臧村镇新立村安全科门岗', '1', '80', '李敬峰', '13301367013', '北臧村镇新立村安全科门岗', '', '安全科岗位', '', '人车管理', '116.287023', '39.70561', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('12', '北臧村镇合众力源门岗', '1', '81', '徐冬立', '15652567721', '北臧村镇合众力源门岗', '', '合众力源岗位', '', '人车管理', '116.318526', '39.678366', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('13', '北臧村镇翡翠湖门岗', '1', '82', '高大山', '18301103546', '北臧村镇翡翠湖门岗', '', '翡翠湖岗位', '', '人车管理', '116.262363', '39.671307', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('14', '北臧村镇采摘园门岗', '1', '83', '黄志强', '15822367888', '北臧村镇采摘园门岗', '', '采摘园岗位', '', '人车管理', '116.541215', '39.641888', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('15', '北臧村镇交通管理站门岗', '1', '84', '卫俊侠', '13753922787', '北臧村镇交通管理站门岗', '', '交通管理站岗位', '', '人车管理', '116.298052', '39.653782', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('16', '北臧村镇环整办门岗', '1', '78', '孔维平', '18701530462', '北臧村镇环整办门岗', '', '环整办岗位', '', '人车管理', '116.308966', '39.692313', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('17', '北臧村镇绿化队门岗', '1', '85', '李彦海', '13848567343', '北臧村镇绿化队门岗', '', '绿化队岗位', '', '人车管理', '116.261719', '39.668732', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('18', '北臧村镇垃圾处理厂门岗', '1', '86', '徐德伟', '15668518091', '北臧村镇垃圾处理厂门岗', '', '垃圾处理厂岗位', '', '人车管理', '116.316253', '39.671574', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('19', '北臧村镇政务服务中心三楼监控室', '1', '87', '宋红亮', '17621985784', '北臧村镇政务服务中心三楼监控室', '', '接线员岗位', '', '接线员', '116.318522', '39.678538', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('20', '北臧村镇政务服务中心宿舍楼门岗', '1', '88', '孙文周', '15001056027', '北臧村镇政务服务中心宿舍楼门岗', '', '疫情管控岗位', '', '疫情管控', '116.318852', '39.678403', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('21', '北臧村镇网格化管理', '1', '89', '董克宪', '13716781770', '北臧村镇网格化管理', '', '网格化管理岗位', '', '市政市容违规处理', '116.308966', '39.692313', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('22', '北臧村镇镇域违停车辆处理', '1', '90', '王宏亮', '13503741392', '北臧村镇镇域违停车辆处理', '', '', '', '违停车辆处理岗位', '116.249045', '39.677322', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_site` VALUES ('23', '北臧村镇卫生院门岗', '1', '91', '郭建红', '13233486626', '北臧村镇卫生院门岗', '', '', '', '卫生院岗位', '116.299567', '39.707351', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `faren` varchar(255) DEFAULT NULL,
  `lianxiren` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `xiangxi` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1508 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_test
-- ----------------------------
INSERT INTO `t_test` VALUES ('1', '北京市城市规划设计研究院', 'undefined', '何闽', '88073950', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('2', '北京市劳动保护科学研究所', '张斌', '王培怡', '13810100198', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('3', '北京阿科普机电工程有限公司', '黄智勇', '张逸', '13031117851', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('4', '琪舰消防工程有限责任公司', '范伟博', '赵然', '13811757523', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('5', '睿佳智慧（北京）科技发展有限公司', '李继东', '李继东', '李继东', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('6', '中国建筑设计研究院有限公司', '宋源', '赵锂', '88328008', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('7', '北京众合平安消防科技有限责任公司', '尹杰', '李滨', '18519708498', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('8', '北京东霖消防科技有限公司', '晋宝生', '白相东', '15503169743', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('9', '北京利颖润洁环保科技有限公司', '傅颖秀', '石其海', '13693205160', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('10', '北京中山消防保安技术有限公司', '俞楚明', '刘洋', '18600269423', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('11', '北京雅林士博建筑工程有限公司', '林山', '王雅婷', '18600171758', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('12', '北京东方舜景科技发展有限公司', '胡有恩', '张方方', '15601166669', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('13', '北京玛斯特系统工程有限公司', '李海钧', '韩静', '18513612996', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('14', '北京广翰消防技术有限公司', '韩宗曙', '孙亚宁', '15718861520', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('15', '北京科华消防工程有限公司', '鲍晓庆', '厉励', '13911266535', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('16', '京润天城（北京）建设有限公司', '葛辉', '崔国明', '13651006818', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('17', '北京市巨龙工程有限公司', '孙敏', '郑庆芳', '13810606532', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('18', '北京润龙建筑工程有限责任公司', '孙利民', '孙利民', '13911680353', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('19', '北京众成泽兴消防科技有限公司', '陆志刚', '张元元', '18910733176', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('20', '北京环球兴学科技发展有限公司', '伊贵业', '刘宁', '13581883237', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('21', '北京龙辰泉消防设备安装工程有限公司', '李霞', '王辉', '63702701', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('22', '航天海鹰安全技术工程有限公司', '高志国', '白文生', '15901178901', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('23', '中泰民安安全服务集团有限公司', '赵性仓', '安波', '18910907078', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('24', '北京坤泰信安建设工程有限公司', 'undefined', '周日强', '13601313166', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('25', '北京泰合安消防科技有限公司', 'undefined', '闫冬雪', '18210050289', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('26', '北京东方京安消防工程有限公司', 'undefined', '姜建强', '13801126779', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('27', '北京浩沣信达消防技术有限公司', 'undefined', '廖晓丽', '18600884775', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('28', '北京亚太银河消防科技集团有限公司', 'undefined', '权麦玲', '13520609505', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('29', '北京市朝航冷气设备有限公司', 'undefined', '米雪', '15910463927', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('30', '北京中泰亿鑫工程有限公司', 'undefined', '陶学东', '13811680760', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('31', '北京瑶新名媛商贸有限责任公司', 'undefined', '张配青', '18516951931', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('32', '北京中巨建设工程有限公司', 'undefined', '孔工', '15300066005', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('33', '北京中佳安消防科技有限公司', 'undefined', '段金良', '18801103744', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('34', '中交辉煌（北京）建设工程集团有限公司', 'undefined', '王锦飞', '13910113610', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('35', '北京火正消防安全技术研究院有限公司', '侯军峰', '侯军峰', '13801107685', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('36', '富锦博（北京）建筑工程有限公司', '马诗峰', '马庆灿', '18811648855', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('37', '北京京达金鼎消防安全技术有限公司', '孙哲', '郑利俊', '13717792388', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('38', '北京京盾消防设备工程有限公司', '檀国敏', '高淑英', '13911041553', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('39', '北京泽惠风消防技术有限公司', '王文涛', '王小醒', '13911136208', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('40', '中翔消防工程有限公司', '姜梅敏', '杜微', '13301152832', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('41', '北京鹰翔风景消防科技有限公司', '高伟', '高伟', '13910101405', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('42', '北京华融义缘消防技术有限公司', '王亦男', '郭志成', '18611394145', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('43', '北京佰仕兴隆消防技术有限公司', '武海军', '崔庭婷', '13031020001', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('44', '北京精诚安保消防工程有限责任公司', '殷胜利', '李力', '010-87766888', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('45', '北京华腾互通科技有限公司', '于成伟', '田甜', '15210059181', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('46', '北京顺安洁消防安全技术有限公司', '张文满', '张文满', '13911021290', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('47', '北京金誉世华消防科技有限公司', '赵宏新', '赵宏新', '13911023512', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('48', '北京中联行消防工程有限责任公司', '陈亚丽', '田红卫', '13501145753', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('49', '北京华祺洋消防安全有限公司', '孟庆国', '曲丽华', '13693228538', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('50', '北京天川科技发展有限公司', '李惠忠', '张娜', '13611128300', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('51', '北京坤钧枫消防技术有限公司', '韩宗曙', '孙亚宁', '15718861520', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('52', '北京点阵建设工程有限公司', '王希东', '方奇', '13801362290', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('53', '北京亚太鸿基建设工程有限公司', '李新年', '焦辉', '15701639672', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('54', '北京三通伟业安全自动化工程有限公司', '孙新华', '郭静', '13810999920', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('55', '北京宇伊安全防范技术咨询有限公司', '张洪岩', '张洪岩', '13521216633', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('56', '北京博雅建业教育科技有限公司', '张帅', '张帅', '15210629033', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('57', '北京昕亿华消防工程有限公司', '李欣欣', '王丽', '13811278702', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('58', '北京中德启锐安全设备有限公司', '马达伟', '姚婷婷', '18010110668', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('59', '北京建锋消防工程有限公司', '刘建锋', '刘建锋', '15010192234', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('60', '中国中安消防安全工程有限公司', '李炜', '王怡轩', '010-68167948-6605', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('61', '北京华信达消防工程有限公司', '杨启生', '李腾', '13811814863', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('62', '北京国泰瑞安消防工程有限公司', '胡红亮', '邱小方', '18600231169', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('63', '北京华安北海机电工程有限公司', '张国玲', '钟晓芳', '87952265', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('64', '北京智德宏业消防工程有限公司', '李斌', '赵春杰', '13810369101', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('65', '北京利华消防工程有限公司', '常立明', '刘明', '18611146685', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('66', '北京华安恒信消防科技有限公司', '张恒', '孙正', '13911805500', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('67', '北京天泰丰源建筑工程有限公司', '王敬涛', '王敬涛', '18611865119', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('68', '北京弘仁消防安全检测有限公司', '董振亚', '董科跃', '13436575956', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('69', '中富安泰（北京）智能科技有限公司', '王敬涛', '王敬涛', '18611865119', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('70', '北京华欣博瑞消防工程有限公司', '贾炳友', '贾炳友', '13381202036', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('71', '北京科安达消防工程有限公司', 'undefined', '张媛', '1067866752', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('72', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('73', '北京中卓时代消防工程有限公司', '王东方', '王凤磊', '67806366', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('74', '北京消兴安顺清洗技术有限公司', '李凤珍', '周迎兵', '13691300332', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('75', '中交华远（北京）建设工程有限公司', '李世国', '邓桂', '010-87220218', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('76', '中消联盟（北京）消防工程技术有限公司', '成劲松', '杨晓娟', '18654511314', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('77', '北京金坡通德科技有限公司', '张金坡', '张金坡', '13910599234', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('78', '北京中消伟业安全技术工程有限公司', '穆重廉', '陈春兰', '13621150530', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('79', '北京铧盛建筑工程有限公司', '刘志刚', '田丽丽', '18701498969', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('80', '北京建筑材料检验研究院有限公司', '张增寿', '沈炎明', '13381113002', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('81', '中超伟业建筑工程有限公司', '陈明芽', '陈志新', '18611665605', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('82', '北京长城研修学院', '李儒树', '沈禛', '17600406718', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('83', '北京华祥永安消防工程有限公司', '陈永芬', '王永枫', '13911557525', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('84', '北京祈安顺达消防科技有限公司', '王福旺', '赵丽荣', '13683088605', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('85', '北京奥信建筑工程设备安装有限公司', '赵剑', '马赛', '84630667', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('86', '北京盈科创安科技有限公司', '王玉杰', '王玉杰', '13810238907', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('87', '北京三友安泰科技有限公司', '闫海', '张玉琦', '15735150492 /01069513862', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('88', '北京秉承工程技术有限公司', '温计虎', '贾红艳', '010-51065003', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('89', '北京龙钊嘉业环保科技有限公司', '杨俊艳', '谭朝双', '13911464849', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('90', '北京鑫诚吉顺科贸有限公司', '张志国', '张彦辉', '18519888781', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('91', '北京恒远劳务服务有限公司', '檀瑞莲', '夏强委', '13910221668', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('92', '北京卓越恒美环保科技有限公司', '王章兰', '王章兰', '18210760332', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('93', '北京中昌盛业建筑工程有限公司', '姜祥根', '卢会玲', '15215707663', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('94', '北京双虹电气有限公司', '孙翔', '戴陈君', '13552015207', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('95', '北京安氧特科技有限公司', '束克庆', '李霞', '13811936125', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('96', '京利堡集团有限公司', '安书迎', '李娇', '18601180790', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('97', '北京优奕建筑工程有限公司', '郝书涛', '郝书涛', '13911968871', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('98', '北京万强安全技术有限公司', '李景克', '郜洁', '13811715389', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('99', '北京佳兴伟业建设工程有限公司', '赵明', '高源泽', '13716564044', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('100', '北京中江伟业消防工程有限公司', '吴建海', '王璐', '18310189958', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('101', '北京新风绿洲环保科技有限公司', '徐景峰', '李丕拴', '13651052878', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('102', '北京华商远大电力建设有限公司', '彭勇', '陈晓虹', '15801567953', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('103', '金舟消防工程（北京）股份有限公司', '田桂兰', '杨铮', '15011351278', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('104', '北京润晟科技有限公司', '宋欢', '宋欢', '17601605786', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('105', '北京中宇启航建设工程有限公司', '张永成', '张静静', '17310552899', '查看', '建筑防火');
INSERT INTO `t_test` VALUES ('106', '北京航天三发高科技有限公司', '王延文', '王春豪', '13910565205', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('107', '北京市劳动保护科学研究所', '张斌', '王培怡', '13810100198', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('108', '北京阿科普机电工程有限公司', '黄智勇', '张逸', '13031117851', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('109', '中消云（北京）物联网科技研究院有限公司', '肖祖德', '郑飞', '18862119119', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('110', '北京市洁迅达保洁服务有限公司', '张中洲', '张丽娟', '18601229828', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('111', '睿佳智慧（北京）科技发展有限公司', '李继东', '李继东', '李继东', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('112', '中国建筑设计研究院有限公司', '宋源', '赵锂', '88328008', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('113', '北京众合平安消防科技有限责任公司', '尹杰', '李滨', '18519708498', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('114', '北京东霖消防科技有限公司', '晋宝生', '白相东', '15503169743', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('115', '北京华涛恒泰安全技术有限公司', '崔有华', '崔有华', '13051316015', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('116', '祖强科技(北京)有限公司', '宋建平', '骆升平', '15811046441', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('117', '北京京盾永安消防设备销售中心', '娄文连', '娄文连', '13701133984', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('118', '北京中宇京安工程技术有限公司', '姬芝', '张静静', '13681506756', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('119', '北京和兴实盛科技有限公司', '张占成', '张占成', '15028880891', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('120', '北京新松融通机器人科技有限公司', '李胜', '乐丹', '13161166679', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('121', '北京耀邦环保技术开发有限公司', '李刚', '王士友', '13810096896', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('122', '北京利金源消防工程有限公司', '刘晓华', '于海燕', '18516858768', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('123', '北京中森世纪环保科技有限公司', '崔秀花', '臧雪冬', '18911807251', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('124', '北京茗钧一涵商贸有限公司', '刘宁', '刘伟轮', '13701190380', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('125', '北京华盾永安消防科技有限公司', '关永红', '关永红', '18600945681', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('126', '北京同华兴达环境工程技术有限公司', '许丹华', '靳宝同', '18610308504', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('127', '北京东方舜景科技发展有限公司', '胡有恩', '张方方', '15601166669', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('128', '北京国禾安全技术有限公司', '唐念嫄', '王硕', '13811705213', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('129', '北京安宏兴消防器材有限公司', '郜爱云', '郜风云', '13911861852', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('130', '北京汉邦唐科技有限公司', '杜立静', '邢军', '18210391828', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('131', '北京江南安泰消防安全技术有限公司', '陈云水', '陈海波', '18611986506', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('132', '北京科洛迪科技发展有限公司', '代金华', '张恒', '13263281918', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('133', '京润天城（北京）建设有限公司', '葛辉', '崔国明', '13651006818', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('134', '北京创美天成环保科技有限公司', '楚庆山', '杨海晓', '18600466635', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('135', '北京江山永安消防安全设备有限公司', '周志军', '李海萍', '13693088079', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('136', '北京华坤永安消防技术服务有限公司', '西志华', '田春艳', '13810371822', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('137', '北京屹嵘消防安全技术有限公司', '鹿真星', '鹿真星', '15300070387', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('138', '北京国兴仁安消防科技有限责任公司', '李树宽', '李树宽', '18519791494', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('139', '中泰民安安全服务集团有限公司', '赵性仓', '安波', '18910907078', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('140', '北京华海峰消防器材维修有限责任公司', '吴永安', '张艳', '13910612028', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('141', '北京力升高科科技有限公司', '罗万贵', '李曼', '18610501360', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('142', '北京东方京安消防工程有限公司', 'undefined', '姜建强', '13801126779', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('143', '北京亚太银河消防科技集团有限公司', 'undefined', '权麦玲', '13520609505', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('144', '北京京顺华安消防设备有限公司', 'undefined', '赵争光', '13910650447', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('145', '北京卓炜消防科技有限公司', 'undefined', '白立华', '17717128115', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('146', '北京市朝航冷气设备有限公司', 'undefined', '米雪', '15910463927', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('147', '北京众合安消防技术有限公司', 'undefined', '赵富松', '13552168636', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('148', '北京安锐达消防设备有限公司', 'undefined', '沈玉松', '13501091921', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('149', '北京新盾恒润消防设备有限公司', 'undefined', '史万军', '13693064065', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('150', '北京腾飞红鹏科技发展有限公司', 'undefined', '王蛇扣', '18511325849', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('151', '北京华夏众安科技有限公司', 'undefined', '高云', '13581911446', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('152', '北京智博天琪科技发展有限公司', 'undefined', '张佳萌', '17801234707', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('153', '北京国泰宏业消防安全检测有限公司', 'undefined', '于淑敏', '15901345032', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('154', '北京金鼎盛安消防安全技术有限公司', 'undefined', '林福真', '18310916119', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('155', '北京广桥金安消防器材有限公司', 'undefined', '穆萱泽', '18801472300', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('156', '宁波环峰消防技术有限公司', 'undefined', '李满', '18658286110', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('157', '北京中佳安消防科技有限公司', 'undefined', '段金良', '18801103744', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('158', '北京木火通明消防科技有限公司', 'undefined', '王海彬', '13811991391', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('159', '北京通汇恒泰安防科技有限公司', 'undefined', '郭东梅', '13911088402', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('160', '北京盛海伟业消防安全科技有限公司', 'undefined', '于亚伟', '13161452322', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('161', '北京火立克消防技术有限公司', 'undefined', '赵双立', '13801115816', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('162', '测试调试数据-无需处理', 'undefined', '222', '18911196809', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('163', '北京奥得海消防设备有限公司', '邢瑞丰', '邢瑞丰', '13651290335', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('164', '北京安宁威尔应急消防安全科技有限公司', '陶铁牛', '许丹', '18211056560', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('165', '北京火正消防安全技术研究院有限公司', '侯军峰', '侯军峰', '13801107685', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('166', '北京安泰诚信消防器材有限公司', '龚建英', '朱岐', '13671195351', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('167', '北京华安泰达消防科技有限公司', '王杨', '刘荣华', '13910322511', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('168', '富锦博（北京）建筑工程有限公司', '马诗峰', '马庆灿', '18811648855', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('169', '哲翰（北京）科技服务有限公司', '朱坤', '朱坤', '13911043135', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('170', '北京煊煊佳业环保科技有限公司', '张卫星', '张卫星', '13693631283', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('171', '北京聚元隆安全技术有限公司', '陆天华', '梁庆新', '13521590877', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('172', '北京泽惠风消防技术有限公司', '王文涛', '王小醒', '13911136208', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('173', '北京鹰翔风景消防科技有限公司', '高伟', '高伟', '13910101405', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('174', '北京华融义缘消防技术有限公司', '王亦男', '郭志成', '18611394145', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('175', '北京五岳朝天消防技术有限公司', '王志民', '皮连欣', '15801696082', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('176', '北京鑫雨盛安消防科技有限公司', '南新华', '南新华', '13161855222', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('177', '北京洁宁环境治理有限公司', '刘辉', '刘辉', '18003365808', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('178', '北京洋河消防安全技术有限公司', '马军', '马伟洋', '17710548087', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('179', '北京中府消防检测有限公司', '高金龙', '金立珍', '15910271783', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('180', '北京顺安洁消防安全技术有限公司', '张文满', '张文满', '13911021290', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('181', '北京卫安诚信消防技术有限公司', 'undefined', '冯海涛', '13301178713', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('182', '北京英特莱科技有限公司', '刘学锋', '颜会芬', '15110031152', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('183', '北京华祺洋消防安全有限公司', '孟庆国', '曲丽华', '13693228538', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('184', '北京国泰怡安电子有限公司', '彭宝秋', '赵豫龙', '18333561199', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('185', '北京诚安顺消防科技有限公司', '徐军', '徐军', '13911597518', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('186', '北京久久神龙消防器材有限公司', '贾香娥', '张大志', '13552200937', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('187', '北京弘锐消防科技服务有限公司', '詹春阳', '宋玉龙', '13146556682', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('188', '北京众创蓝天环保科技有限公司', '刘春梅', '李变', '13439681186', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('189', '北京赛沃斯环保工程有限公司', '龚艳霞', '王正萍', '13691556138', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('190', '北京保盛科技有限公司', '胡康欢', '胡康欢', '18911644245', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('191', '北京金水永和消防科技有限公司', '姜献华', '周灵燕', '13683201663', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('192', '北京森源达消防科技有限公司', '葛杰', '葛杰', '17801078817', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('193', '北京丽泽恒安消防安全设备有限公司', '李志成', '彭月英', '13911501992', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('194', '北京川消消防设备有限公司', '吴文质', '吴文质', '15601333999', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('195', '北京京盾恒安消防科技有限公司', '边鹤龙', '张文静', '13161906585', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('196', '中消安（北京）消防工程有限公司', '姜云', '姜云', '13601360829', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('197', '北京港洁物业管理有限公司', '张弘扬', '米雪', '15210111455', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('198', '准信智慧消防股份有限公司', '李杰', '侯颖', '18600188585', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('199', '北京中德启锐安全设备有限公司', '马达伟', '姚婷婷', '18010110668', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('200', '北京卓屹方消防科技有限公司', '卢朝阳', '包京京', '18612760151', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('201', '北京桑迪餐饮娱乐管理有限公司', '章李成', '杨文广', '13811359413', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('202', '北京建锋消防工程有限公司', '刘建锋', '刘建锋', '15010192234', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('203', '国琳（天津）科技有限公司北京分公司', '周庆念', '葛毅', '13520063962', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('204', '北京天赐金消防设备有限公司', '马明霞', '李智东', '13311291175', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('205', '北京市顺诚东消防器材有限公司', '赵贺民', '赵贺民', '13901183893', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('206', '北京贺贺佳业保洁服务有限公司', '张辉', '张辉', '18612086069', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('207', '北京圣元天享工贸有限公司', '赵佩武', '李洪娟', '13621281792', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('208', '北京华安恒信消防科技有限公司', '张恒', '孙正', '13911805500', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('209', '北京利达华信电子有限公司', '涂燕平', '任丽璇', '13611014635', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('210', '北京盛安益达科技发展中心', '李克元', '黄长生', '13001204339', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('211', '中富安泰（北京）智能科技有限公司', '王敬涛', '王敬涛', '18611865119', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('212', '北京惟泰安全设备有限公司', '朱刚', '常久洋', '13716110025', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('213', '北京京苑龙安消防器材有限公司', '柴云妹', '赵世忠', '13701038696', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('214', '北京华欣博瑞消防工程有限公司', '贾炳友', '贾炳友', '13381202036', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('215', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('216', '北京京朝顺达消防器材设备有限公司', '张燕涛', '张燕涛', '13801182878', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('217', '北京中卓时代消防工程有限公司', '王东方', '王凤磊', '67806366', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('218', '恒泰安顺（北京）智能科技有限公司', '尤胜祥', '朱钧钰', '18601960667', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('219', '北京市安康诺盾科技有限公司', 'undefined', '刘毅', '17701143999', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('220', '北京鑫源绿地科技有限公司', '王红梅', '梁宝义', '13701006380', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('221', '中交华远（北京）建设工程有限公司', '李世国', '邓桂', '010-87220218', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('222', '北京和安消防工程有限公司', '张洮', '朱亚红', '13811382689', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('223', '北京陆顺佳安交通消防安全设备有限公司', '郁茂峰', '郁茂峰', '18801265788', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('224', '北京华宇众洁科技发展有限公司', '任燕玲', '任燕玲', '15011139024', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('225', '北京安美佳保洁服务有限公司', '李远锋', '李远锋', '13911564814', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('226', '北京金坡通德科技有限公司', '张金坡', '张金坡', '13910599234', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('227', '北京天富消防科技有限公司', '李自朋', '李自朋', '18210580586', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('228', '北京浩通博宇消防安全技术有限公司', '叶翔', '叶翔', '13720053516', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('229', '北京世纪海源商贸有限公司', '朱勇敢', '潘风娟', '18939468088', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('230', '北京华祥永安消防工程有限公司', '陈永芬', '王永枫', '13911557525', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('231', '北京祈安顺达消防科技有限公司', '王福旺', '赵丽荣', '13683088605', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('232', '北京晟煜知达科技有限公司', '马云飞', '马云飞', '13910413681', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('233', '北京中江旺盛消防装备有限公司', '朱东均', '朱东均', '18001218151', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('234', '北京盈科创安科技有限公司', '王玉杰', '王玉杰', '13810238907', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('235', '北京秉承工程技术有限公司', '温计虎', '贾红艳', '010-51065003', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('236', '北京兴安盾消防器材有限公司', '刘连乙', '刘冬', '13366669082', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('237', '北京聚美德馨环保科技有限公司', '谭冰江', '谭冰刚', '13552098339', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('238', '北京联城正安智能消防安全技术有限公司', '柴元香', '18613878482', '18613878482', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('239', '北京中江兴胜消防器材有限公司', '吴兴', '吴兴', '18911325119', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('240', '北京中置天龙科技发展有限公司', '陈兆伟', '陈兆伟', '13901302276', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('241', '北京鑫诚吉顺科贸有限公司', '张志国', '张彦辉', '18519888781', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('242', '北京江山诚信消防器材有限公司', '严朝德', '严恒', '18257130067', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('243', '北京蓝箭消防设备有限公司', '李涛', '李涛', '18611751986', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('244', '北京宝仑工贸有限公司', '杨亚超', '陈金', '13501033552', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('245', '北京东方盛辉消防器材有限公司', '李剑辉', '李剑辉', '13910112972', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('246', '北京红吉利消防设备服务中心', '张石平', '张石平', '13701095178', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('247', '北京同鑫鸿祥厨房设备有限公司', '钱万俊', '钱万俊', '13911237833', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('248', '北京京安恒达消防安全设备有限公司', '张齐', '张齐', '18612897119', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('249', '北京安氧特科技有限公司', '束克庆', '李霞', '13811936125', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('250', '北京市京久龙消防科技有限公司', '方文梅', '徐华飞', '13716213285', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('251', '北京优奕建筑工程有限公司', '郝书涛', '郝书涛', '13911968871', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('252', '北京杰厨酒店设备有限公司分公司', '刘杰', '游伟志', '13910888459', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('253', '北京诚同消防科技有限公司', '李亚丽', '郜玥', '13693221622', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('254', '北京海淀晶晶科技有限公司', '聂群', '彭中文', '13911541057', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('255', '北京北燃环能科技发展有限公司', '车立新', '孙燕', '13717926727', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('256', '北京开拓明光消防设备有限公司', '席宝水', '席宝水', '13520482851', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('257', '北京万强安全技术有限公司', '李景克', '郜洁', '13811715389', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('258', '北京黑农优选餐饮服务有限公司', '田林', '田林', '13552044888', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('259', '北京中江伟业消防工程有限公司', '吴建海', '王璐', '18310189958', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('260', '九江市浩川消防装备有限公司', '宋敏', '夏志敏', '18879265668', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('261', '北京翰拓教育科技有限公司', '孙忱', '孙忱', '13731021766', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('262', '东方神韵中坤环境服务（北京）有限公司', '刘永国', '曾宪利', '69015195', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('263', '北京正彦环绿环保科技有限公司', '王诤', '王诤', '13910925161', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('264', '北京润晟科技有限公司', '宋欢', '宋欢', '17601605786', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('265', '北京玉鼎磊诺气体科技有限公司', '侯玉柱', '赵兴', '18800154557', '查看', '消防产品');
INSERT INTO `t_test` VALUES ('266', '北京阿科普机电工程有限公司', '黄智勇', '张逸', '13031117851', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('267', '睿佳智慧（北京）科技发展有限公司', '李继东', '李继东', '李继东', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('268', '北京市建设工程质量第二检测所有限公司', '张胜', '刘媛', '13811182920', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('269', '北京东霖消防科技有限公司', '晋宝生', '白相东', '15503169743', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('270', '北京京盾永安消防设备销售中心', '娄文连', '娄文连', '13701133984', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('271', '北京兴业恒达建设工程有限公司', '付世余', '高亮', '13810818521', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('272', '北京利颖润洁环保科技有限公司', '傅颖秀', '石其海', '13693205160', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('273', '北京耀邦环保技术开发有限公司', '李刚', '王士友', '13810096896', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('274', '北京久安正华消防科技有限公司', '孟凡龙', '孟凡龙', '13011179512', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('275', '北京中山消防保安技术有限公司', '俞楚明', '刘洋', '18600269423', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('276', '北京利金源消防工程有限公司', '刘晓华', '于海燕', '18516858768', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('277', '北京东方舜景科技发展有限公司', '胡有恩', '张方方', '15601166669', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('278', '北京力佳洁环保科技有限公司', '李霞', '李霞', '17301074836', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('279', '北京国禾安全技术有限公司', '唐念嫄', '王硕', '13811705213', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('280', '北京新风高科工程技术有限工公司', '曲军瑞', '王耀爽', '13810639335', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('281', '北京乐润永鑫消防工程有限公司', '郜爱云', '缪永军', '13911861852', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('282', '北京玛斯特系统工程有限公司', '李海钧', '韩静', '18513612996', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('283', '北京广翰消防技术有限公司', '韩宗曙', '孙亚宁', '15718861520', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('284', '北京汉邦唐科技有限公司', '杜立静', '邢军', '18210391828', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('285', '北京科华消防工程有限公司', '鲍晓庆', '厉励', '13911266535', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('286', '北京安征昊消防技术服务有限公司', '姜松华', '徐莉菲', '63929383', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('287', '京润天城（北京）建设有限公司', '葛辉', '崔国明', '13651006818', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('288', '北京立达卓消防技术有限公司', '姜颐兰', '吴昱', '13901238144', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('289', '北京创美天成环保科技有限公司', '楚庆山', '杨海晓', '18600466635', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('290', '北京众成泽兴消防科技有限公司', '陆志刚', '张元元', '18910733176', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('291', '北京杰明欣环保科技有限公司', '黎宙', '庞思博', '18171897405', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('292', '中泰民安安全服务集团有限公司', '赵性仓', '安波', '18910907078', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('293', '北京鑫厨万佳厨房设备有限公司', '陈帝致', '庞思博', '18171897405', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('294', '北京泰合安消防科技有限公司', 'undefined', '闫冬雪', '18210050289', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('295', '北京东方京安消防工程有限公司', 'undefined', '姜建强', '13801126779', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('296', '北京亚太银河消防科技集团有限公司', 'undefined', '权麦玲', '13520609505', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('297', '北京市朝航冷气设备有限公司', 'undefined', '米雪', '15910463927', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('298', '北京中泰亿鑫工程有限公司', 'undefined', '陶学东', '13811680760', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('299', '北京腾飞红鹏科技发展有限公司', 'undefined', '王蛇扣', '18511325849', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('300', '北京吉宇鑫中央空调清洗有限公司', 'undefined', '徐建亭', '17611635635', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('301', '北京圣泰珈皓消防科技有限公司', 'undefined', '贾炳友', '13381202036', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('302', '北京金星铭吉消防安全设备有限公司', 'undefined', '吴琦', '18801119919', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('303', '北京安全象消防技术有限公司', 'undefined', '王硕', '15718807713', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('304', '北京志远鸿达消防设备有限公司', 'undefined', '李雪松', '13301265868', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('305', '北京国泰宏业消防安全检测有限公司', 'undefined', '于淑敏', '15901345032', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('306', '北京鑫培安全自动化技术有限公司', 'undefined', '秦培杰', '18901278686', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('307', '北京炬飞消防设备有限公司', 'undefined', '贾光炬', '13661170873', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('308', '北京中佳安消防科技有限公司', 'undefined', '段金良', '18801103744', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('309', '北京万家洁新科技有限公司', '尹龙春', '黄剑', '13331090905', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('310', '北京通汇恒泰安防科技有限公司', 'undefined', '郭东梅', '13911088402', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('311', '北京兴业富江清洗有限公司', 'undefined', '刘万江', '13381382991', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('312', '北京鼎盛创安消防技术有限公司', 'undefined', '杨勇刚', '13693693998', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('313', '测试调试数据-无需处理', 'undefined', '222', '18911196809', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('314', '北京太平机电设备安装有限责任公司', '张海建', '杨培', '18810781703', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('315', '北京海安博大电气消防安全检测有限公司', '魏美玲', '敖日塔', '13911111574', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('316', '北京国泰瑞安消防检测有限公司', 'undefined', '何凤荣', '13520966466', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('317', '北京中安质环技术评价中心有限公司', '任磊', '罗金安', '13264278158', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('318', '北京虹仪消防技术服务有限公司', '李铁刚', '文东义', '13521392198', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('319', '北京永信安保公共安全技术有限公司', '刘刚', '秦宁宁', '13910723892', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('320', '北京安宁威尔应急消防安全科技有限公司', '陶铁牛', '许丹', '18211056560', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('321', '北京泽仪市政工程有限公司', '张碧华', '张琪', '15901207967', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('322', '北京中视华业电视工程有限公司', '芦燕生', '马长青', '13501064709', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('323', '北京安富伟业消防安全检测有限公司', '姜子华', '杨建民', '18101203011', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('324', '北京华安泰达消防科技有限公司', '王杨', '刘荣华', '13910322511', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('325', '北京富锦博消防科技有限公司', '刘海军', '马李淼', '13717573907', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('326', '北京蓝剑天亭科技开发有限责任公司', '曹志勇', '孙亚东', '13522077000', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('327', '北京中消世纪消防安全检测技术服务有限公司', '陈炫炫', '张琪', '15901207967', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('328', '北京博峰消防技术有限公司', '李月云', '刘学军', '13911061989', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('329', '北京京达金鼎消防安全技术有限公司', '孙哲', '郑利俊', '13717792388', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('330', '北京聚元隆安全技术有限公司', '陆天华', '梁庆新', '13521590877', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('331', '北京顺和安消防安全检测有限公司', '谢长海', '郭秋菊', '13681366686', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('332', '北京京盾消防设备工程有限公司', '檀国敏', '高淑英', '13911041553', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('333', '北京泽惠风消防技术有限公司', '王文涛', '王小醒', '13911136208', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('334', '北京鹰翔风景消防科技有限公司', '高伟', '高伟', '13910101405', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('335', '力景（北京）系统技术有限公司', '田瑞', '李蔷微', '18611725078', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('336', '北京中泰伟业消防设备技术有限公司', '徐珠蓉', '张丽英', '18610334880', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('337', '北京华融义缘消防技术有限公司', '王亦男', '郭志成', '18611394145', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('338', '北京佰仕兴隆消防技术有限公司', '武海军', '崔庭婷', '13031020001', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('339', '北京鑫湘宁消防检测有限公司', '贾景印', '王歆舒', '13121011281', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('340', '北京天一星熙消防安全技术检测有限公司', '胡梅玉', '胡梅玉', '15901011524', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('341', '北京精诚安保消防工程有限责任公司', '殷胜利', '李力', '010-87766888', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('342', '北京中府消防检测有限公司', '高金龙', '金立珍', '15910271783', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('343', '北京顺安洁消防安全技术有限公司', '张文满', '张文满', '13911021290', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('344', '北京禹顺消防科技有限公司', '葛广顺', '刘永平', '13241091166', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('345', '北京金誉世华消防科技有限公司', '赵宏新', '赵宏新', '13911023512', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('346', '北京卫安诚信消防技术有限公司', 'undefined', '冯海涛', '13301178713', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('347', '北京华安全鼎消防科技有限公司', '刘宝辉', '江朝晖', '13601253551', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('348', '北京久久神龙咨询服务有限公司', '杨洋', '李骋', '13601209040', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('349', '北京力天京安消防科技有限公司', '汪亮', '苏檀华', '13811129697', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('350', '北京重泰安消防技术服务有限责任公司', '李征', '王宝新', '13581577745', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('351', '北京安亿通消防安全技术有限公司', '徐堂卿', '肖志义', '13910699231', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('352', '北京中安颐合消防技术有限公司', '李方玉', '朱建海', '18611718786', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('353', '北京安泰德科技有限公司', '张春龙', '任晗光', '13520671103', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('354', '北京宝凤翔通消防技术检测有限公司', '谢玉凤', '刘建国', '13071153456', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('355', '北京市富熙豪安防技术有限公司', '徐晓永', '徐晓永', '13911823253', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('356', '北京天汇中方消防技术检测有限公司', '续庆祝', '刘东明', '13911239713', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('357', '北京京安福伟业消防安全检测有限公司', '于清', '葛杰', '17801078817', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('358', '北京顺安盛消防科技有限公司', '商会娥', '陈莹', '13718687708', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('359', '北京市澳际智能消防安全工程有限责任公司', '彭素平', '杨旭', '18611130539', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('360', '北京华祺洋消防安全有限公司', '孟庆国', '曲丽华', '13693228538', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('361', '北京安泰达消防技术检测有限公司', '张金阳', '张金亮', '18600379076', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('362', '北京安博楼宇设施管理有限公司', '陈菊音', '唐振明', '13501027455', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('363', '北京三和永安消防设施检测有限公司', '康永生', '程少英', '18911607197', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('364', '北京京铁安达消防技术检测有限公司', '刘喜臣', '石文珍', '13801108835', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('365', '北京金和顺消防安全技术有限公司', '徐俊', '刘玉琴', '15311218891', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('366', '北京智朗卓越消防科技有限公司', '安军臣', '鱼洋', '15510265760', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('367', '北京坤钧枫消防技术有限公司', '韩宗曙', '孙亚宁', '15718861520', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('368', '北京骥中建消防科技有限公司', '张建忠', '张宁宁', '13501183762', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('369', '中建亚泰消防技术（北京）有限公司', '郭长星', '常娜', '13811292915、010-83609112', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('370', '北京升鼎浩瀚消防安全检测有限公司', '李征', '刘莹', '13810772498', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('371', '北京市金安华瑞消防工程技术有限公司', '郑玉焜', '梁丽', '15300016212', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('372', '北京弘锐消防科技服务有限公司', '詹春阳', '宋玉龙', '13146556682', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('373', '北京东方雄安消防技术服务有限公司', '吕珍', '吕珍', '13718197078', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('374', '北京博亚盛技术检测有限公司', '孙新华', '郭静', '13810999920', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('375', '北京汇杰嘉业科技发展有限公司', '王仕刚', '陈莎', '13882146843', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('376', '北京隆安鸿运消防设施技术检测有限公司', '祝春松', '祝春松', '13801290942', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('377', '北京博霖翔皓消防科技有限公司', '刘军伟', '刘春', '15810925817', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('378', '北京世纪昊诚消防安全科技有限公司', '李宗堂', '马冲', '13366672139', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('379', '北京赛沃斯环保工程有限公司', '龚艳霞', '王正萍', '13691556138', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('380', '北京中加全成消防科技有限公司', '丁德胜', '丁永其', '17661936691', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('381', '北京卫京安消防培训中心', '温书云', '代娜娜', '13488799292', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('382', '北京宇伊安全防范技术咨询有限公司', '张洪岩', '张洪岩', '13521216633', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('383', '北京中消永安消防安全技术有限公司', '郑书萍', '孙小慧', '18610868590', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('384', '北京中天建科消防安全检测有限责任公司', '王新', '赵雪梅', '18910871189', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('385', '北京达安顺消防科技有限公司', '裴雷', '陆群', '18518098766', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('386', '北京京卫环环境科技有限公司', '齐青珍', '周新华', '13501036920', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('387', '北京中消长城消防安全工程有限公司', '许鹭', '谷爱新', '13910988650', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('388', '北京京盾恒安消防科技有限公司', '边鹤龙', '张文静', '13161906585', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('389', '北京昕亿华消防工程有限公司', '李欣欣', '王丽', '13811278702', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('390', '北京阜达宏安系统工程有限公司', '任东剑', '刘涛', '13581912805', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('391', '北京安华元消防技术检测有限公司', '席玉龙', '徐巧凌', '13801208647', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('392', '北京港洁物业管理有限公司', '张弘扬', '米雪', '15210111455', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('393', '北京励拓新安安全防范技术有限公司', '刘立新', '刘红琳', '13521373928', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('394', '准信智慧消防股份有限公司', '李杰', '侯颖', '18600188585', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('395', '北京中德启锐安全设备有限公司', '马达伟', '姚婷婷', '18010110668', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('396', '北京卓屹方消防科技有限公司', '卢朝阳', '包京京', '18612760151', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('397', '北京建锋消防工程有限公司', '刘建锋', '刘建锋', '15010192234', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('398', '北京胜华消防科技有限公司', '刘景周', '宋耀东', '13910048119', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('399', '中国中安消防安全工程有限公司', '李炜', '王怡轩', '010-68167948-6605', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('400', '北京华信达消防工程有限公司', '杨启生', '李腾', '13811814863', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('401', '北京建和兴业电气防火安全检测中心', '朱凌波', '谢辉', '15010516223', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('402', '北京六合成消防技术有限公司', '姜凌', '姜彤华', '13661251987', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('403', '北京利华消防工程有限公司', '常立明', '刘明', '18611146685', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('404', '北京优诺科技发展有限公司', '赵朝阳', '孟林雁', '13910889402', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('405', '北京火政殷实消防技术有限公司', '胡涛', '苏恩情', '18611657808', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('406', '北京圣元天享工贸有限公司', '赵佩武', '李洪娟', '13621281792', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('407', '北京华安恒信消防科技有限公司', '张恒', '孙正', '13911805500', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('408', '北京金玉航辉消防安全技术有限公司', 'undefined', '吴月美', '18001036225', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('409', '北京利达恒信科技发展有限公司', '涂燕平', '任丽璇', '13611014635', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('410', '北京东汉阳光科技有限公司', '李峭玲', '李妍', '010-84895628', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('411', '北京弘仁消防安全检测有限公司', '董振亚', '董科跃', '13436575956', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('412', '北京市琦联锋电气消防安全检测有限公司', '王淑华', '李斌琦', '13901108121', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('413', '中富安泰（北京）智能科技有限公司', '王敬涛', '王敬涛', '18611865119', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('414', '北京友安盛防火技术有限公司', '王文铎', '杨洋', '13910234566', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('415', '北京远佳成消防安全技术有限公司', '沈少明', '侯井龙', '13501018915', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('416', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('417', '北京中卓时代消防工程有限公司', '王东方', '王凤磊', '67806366', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('418', '北京航天海泉测试技术有限公司', '蒋如蓉', '吴焱宇', '18610033059', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('419', '北京中安精益科技发展有限公司', '田灵钦', '田灵钦', '13601246126', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('420', '北京康安洁科技发展有限公司', '孙安安', '孙安安', '18611133801', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('421', '北京消兴安顺清洗技术有限公司', '李凤珍', '周迎兵', '13691300332', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('422', '北京中科桐华环保科技有限公司', '何艳敏', '侯亮亮', '13718910033', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('423', '中交华远（北京）建设工程有限公司', '李世国', '邓桂', '010-87220218', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('424', '北京和安消防工程有限公司', '张洮', '朱亚红', '13811382689', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('425', '北京锦祥辉消防工程有限公司', '丁泽坤', '丁泽坤', '18500311042', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('426', '北京陆顺佳安交通消防安全设备有限公司', '郁茂峰', '郁茂峰', '18801265788', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('427', '北京华烨消防科技有限公司', '梁立山', '梁立山', '18911009865', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('428', '北京德裕盛清洁环保科技有限公司', '张海明', '张海明', '89372996 13031182761', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('429', '北京巨安顺鑫消防科技有限责任公司', '李富群', '姜超', '13511015929', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('430', '北京蓝天洁美环保科技有限公司', '刘俊国', '刘俊国', '15001052130', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('431', '北京顺新消防科技有限公司', '宋桂宝', '耿新秀', '13901236702', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('432', '玉鼎云华(北京）信息技术有限责任公司', '王全亮', '徐长丰', '13681627615', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('433', '北京延京富安消防科技有限公司', '陈曦', '余丽川', '18911282039', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('434', '北京江山利达消防科技有限公司', '毛炳达', '毛炳达', '13311228058', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('435', '北京中消伟业安全技术工程有限公司', '穆重廉', '陈春兰', '13621150530', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('436', '北京天富消防科技有限公司', '李自朋', '李自朋', '18210580586', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('437', '北京浩通博宇消防安全技术有限公司', '叶翔', '叶翔', '13720053516', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('438', '北京北安消防工程技术有限公司', '孙勇', '孙勇', '18101065959', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('439', '北京京安四海消防科技有限责任公司', '冯庆如', '徐萌萌', '15011523763', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('440', '北京建筑材料检验研究院有限公司', '张增寿', '沈炎明', '13381113002', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('441', '北京市泰隆全消防安全设备有限公司', '王斌', '邵海英', '13716071136', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('442', '北京中兴久安技术检测有限公司', '李铁寅', '张权', '13321152440', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('443', '北京华清丽洁保洁服务有限公司', '杨先锋', '杨先锋', '13520312519', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('444', '北京四方亚明安防工程有限公司', '于小明', '李冬梅', '13601205645', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('445', '北京高炜懿德消防检测有限公司', '高令辉', '刘鹏举', '13910835119', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('446', '北京华祥永安消防工程有限公司', '陈永芬', '王永枫', '13911557525', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('447', '北京祈安顺达消防科技有限公司', '王福旺', '赵丽荣', '13683088605', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('448', '北京奥信建筑工程设备安装有限公司', '赵剑', '马赛', '84630667', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('449', '北京京盾中安消防安全设备有限公司', '姜忠', '姜忠', '18801260568', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('450', '北京信诚环宇消防技术服务有限公司', '贾娜', '邓守龙', '18610385899', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('451', '北京华旭卓越消防技术有限公司', '黄世恩', '黄世方', '15810416133', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('452', '北京盈科创安科技有限公司', '王玉杰', '王玉杰', '13810238907', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('453', '北京费尔消防技术工程有限公司', '付奇光', '杨女士', '010-88392130', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('454', '北京秉承工程技术有限公司', '温计虎', '贾红艳', '010-51065003', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('455', '北京兴安盾消防器材有限公司', '刘连乙', '刘冬', '13366669082', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('456', '北京军威义消防科技有限公司', '邱小军', '朱晓宁', '13911832887', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('457', '北京龙钊嘉业环保科技有限公司', '杨俊艳', '谭朝双', '13911464849', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('458', '北京全安达消防器材维修中心', '罗六海', '罗六海', '13701177535', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('459', '北京聚美德馨环保科技有限公司', '谭冰江', '谭冰刚', '13552098339', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('460', '北京鑫诚吉顺科贸有限公司', '张志国', '张彦辉', '18519888781', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('461', '北京金鑫盾消防安全科技有限公司', '祝钦锋', '祝小军', '13439971495', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('462', '北京华信恒泰建设工程有限公司', '李立威', '刘丽', '13331137119', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('463', '北京绸缪消防科技有限公司', '赵秀敏', '张中华', '13601297694', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('464', '北京柔兴兴消防器材有限公司', '于占江', '杨洁', '13810060758', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('465', '北京恒远劳务服务有限公司', '檀瑞莲', '夏强委', '13910221668', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('466', '北京卓越恒美环保科技有限公司', '王章兰', '王章兰', '18210760332', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('467', '北京中昌盛业建筑工程有限公司', '姜祥根', '卢会玲', '15215707663', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('468', '北京安氧特科技有限公司', '束克庆', '李霞', '13811936125', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('469', '北京市京久龙消防科技有限公司', '方文梅', '徐华飞', '13716213285', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('470', '北京优奕建筑工程有限公司', '郝书涛', '郝书涛', '13911968871', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('471', '汇欣时代（北京）清洁服务有限公司', '朱明彩', '王婷', '15205210440', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('472', '北京万强安全技术有限公司', '李景克', '郜洁', '13811715389', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('473', '北京佳兴伟业建设工程有限公司', '赵明', '高源泽', '13716564044', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('474', '北京中江伟业消防工程有限公司', '吴建海', '王璐', '18310189958', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('475', '北京翰拓教育科技有限公司', '孙忱', '孙忱', '13731021766', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('476', '北京新风绿洲环保科技有限公司', '徐景峰', '李丕拴', '13651052878', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('477', '华夏竣诚（北京）智能建筑工程有限公司', '孙巍', '宋荃', '13811626347', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('478', '北京东方勤达保洁服务有限公司', '郝士军', '贾青枝', '18201505815', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('479', '北京润晟科技有限公司', '宋欢', '宋欢', '17601605786', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('480', '北京玉鼎磊诺气体科技有限公司', '侯玉柱', '赵兴', '18800154557', '查看', '消防设施');
INSERT INTO `t_test` VALUES ('481', '北京市城市规划设计研究院', 'undefined', '何闽', '88073950', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('482', '北京市劳动保护科学研究所', '张斌', '王培怡', '13810100198', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('483', '北京市洁迅达保洁服务有限公司', '张中洲', '张丽娟', '18601229828', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('484', '睿佳智慧（北京）科技发展有限公司', '李继东', '李继东', '李继东', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('485', '中国中元国际工程有限公司', '刘小虎', '韩伟', '68732736', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('486', '北京市建设工程质量第二检测所有限公司', '张胜', '刘媛', '13811182920', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('487', '华信中安（北京）保安服务有限公司', '刘新', '刘艺桐', '63831616-8216', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('488', '中建文化旅游发展有限公司', '吴宜夏', '韩景夫', '18710047004', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('489', '北京中山消防保安技术有限公司', '俞楚明', '刘洋', '18600269423', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('490', '北京市西城区中磊职业技能培训学校', '张磊', '张磊', '13911448084', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('491', '北京国禾安全技术有限公司', '唐念嫄', '王硕', '13811705213', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('492', '京润天城（北京）建设有限公司', '葛辉', '崔国明', '13651006818', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('493', '北京众成泽兴消防科技有限公司', '陆志刚', '张元元', '18910733176', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('494', '北京环球兴学科技发展有限公司', '伊贵业', '刘宁', '13581883237', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('495', '中泰民安安全服务集团有限公司', '赵性仓', '安波', '18910907078', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('496', '北京亚太银河消防科技集团有限公司', 'undefined', '权麦玲', '13520609505', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('497', '北京安全象消防技术有限公司', 'undefined', '王硕', '15718807713', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('498', '北京鑫培安全自动化技术有限公司', 'undefined', '秦培杰', '18901278686', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('499', '北京华奥众诚安全防范技术咨询有限公司', 'undefined', '王思佳', '15110144405', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('500', '北京育人阳光教育科技有限公司', 'undefined', '孟晨阳', '18911668142', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('501', '北京中安质环技术评价中心有限公司', '任磊', '罗金安', '13264278158', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('502', '北京安宁威尔应急消防安全科技有限公司', '陶铁牛', '许丹', '18211056560', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('503', '北京逆火文化传媒有限公司', '王立新', '王梦丽', '18248743126', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('504', '北京火正消防安全技术研究院有限公司', '侯军峰', '侯军峰', '13801107685', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('505', '北京泽惠风消防技术有限公司', '王文涛', '王小醒', '13911136208', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('506', '北京华融义缘消防技术有限公司', '王亦男', '郭志成', '18611394145', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('507', '北京佰仕兴隆消防技术有限公司', '武海军', '崔庭婷', '13031020001', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('508', '北京鑫湘宁消防检测有限公司', '贾景印', '王歆舒', '13121011281', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('509', '北京顺安洁消防安全技术有限公司', '张文满', '张文满', '13911021290', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('510', '北京金誉世华消防科技有限公司', '赵宏新', '赵宏新', '13911023512', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('511', '北京中安颐合消防技术有限公司', '李方玉', '朱建海', '18611718786', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('512', '北京华祺洋消防安全有限公司', '孟庆国', '曲丽华', '13693228538', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('513', '北京城建天宁消防有限责任公司', '粟付芃', '刘光美', '63183995', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('514', '北京航天常兴科技发展股份有限公司', '王德坤', '丁鹏忠', '18610132220', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('515', '北京英豪建筑装饰设计工程有限公司', '叶三樟', '叶洲池', '17718412195', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('516', '北京弘锐消防科技服务有限公司', '詹春阳', '宋玉龙', '13146556682', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('517', '北京博亚盛技术检测有限公司', '孙新华', '郭静', '13810999920', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('518', '北京宇伊安全防范技术咨询有限公司', '张洪岩', '张洪岩', '13521216633', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('519', '北京港洁物业管理有限公司', '张弘扬', '米雪', '15210111455', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('520', '北京励拓新安安全防范技术有限公司', '刘立新', '刘红琳', '13521373928', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('521', '北京中德启锐安全设备有限公司', '马达伟', '姚婷婷', '18010110668', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('522', '北京卓屹方消防科技有限公司', '卢朝阳', '包京京', '18612760151', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('523', '北京华安恒信消防科技有限公司', '张恒', '孙正', '13911805500', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('524', '北京弘仁消防安全检测有限公司', '董振亚', '董科跃', '13436575956', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('525', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('526', '北京金焦耳安全技术有限公司', '黄标', '常宏友', '18911059162', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('527', '北京京安四海消防科技有限责任公司', '冯庆如', '徐萌萌', '15011523763', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('528', '北京中闳安技术服务有限公司', '娄岩', '郝建', '13126926344', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('529', '北京华祥永安消防工程有限公司', '陈永芬', '王永枫', '13911557525', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('530', '北京祈安顺达消防科技有限公司', '王福旺', '赵丽荣', '13683088605', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('531', '北京奥信建筑工程设备安装有限公司', '赵剑', '马赛', '84630667', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('532', '北京万强安全技术有限公司', '李景克', '郜洁', '13811715389', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('533', '北京玉鼎磊诺气体科技有限公司', '侯玉柱', '赵兴', '18800154557', '查看', '消防安全评估');
INSERT INTO `t_test` VALUES ('534', '北京市劳动保护科学研究所', '张斌', '王培怡', '13810100198', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('535', '睿佳智慧（北京）科技发展有限公司', '李继东', '李继东', '李继东', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('536', '北京众合平安消防科技有限责任公司', '尹杰', '李滨', '18519708498', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('537', '清大东方教育科技集团有限公司', '周金峰', '马浒利', '13701078130', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('538', '北京东霖消防科技有限公司', '晋宝生', '白相东', '15503169743', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('539', '北京中消永汇科技有限公司', '赵霞', '庞傲丽', '13717899907', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('540', '北京一只船教育科技有限公司', '王凯飞', '王奥', '15200820901', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('541', '北京市西城区中磊职业技能培训学校', '张磊', '张磊', '13911448084', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('542', '北京百方教育咨询有限公司', '辛伟', '辛伟', '15210304868', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('543', '北京龙链科技有限公司', '高彦彬', '高志超', '18210429883', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('544', '北京国禾安全技术有限公司', '唐念嫄', '王硕', '13811705213', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('545', '北京易时分教育科技有限公司', '白洋', '白洋', '18634203221', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('546', '防消网校教育科技（天津）有限公司', '任鹏丽', '赵建宝', '18888822230', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('547', '江苏壹壹玖教育科技有限公司北京分公司', '王雪峰', '刘六成', '13911004727', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('548', '金星恒大（北京）教育科技有限责任公司', '王文娟', '武继旺', '13910061146', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('549', '北京众智博睿教育科技有限公司', '李文振', '时小静', '18600555061', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('550', '北京途方教育科技有限公司', '战营', '战营', '18698664129', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('551', '北京璟洛网络科技有限公司', '苏宇', '张祥', '18801102375', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('552', '多易点教育科技（北京）有限公司', '张宝', '李跃辉', '18660832810', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('553', '赛诺创意（北京）科技发展有限公司', '贾大梅', '赵培', '13718317577', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('554', '北京众成泽兴消防科技有限公司', '陆志刚', '张元元', '18910733176', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('555', '北京慧和网教育科技有限责任公司', '何安标', '张超', '17301287493', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('556', '北京智行火种教育科技有限公司', '甘芸', '王晓伟', '13366625619', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('557', '北京环球兴学科技发展有限公司', '伊贵业', '刘宁', '13581883237', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('558', '北京智汇火种教育科技有限公司', 'undefined', '李云飞', '13366625619', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('559', '北京国兴仁安消防科技有限责任公司', '李树宽', '李树宽', '18519791494', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('560', '北京天恒安科集团有限公司', '杨金锋', '李文婷', '13683611379', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('561', '中泰民安安全服务集团有限公司', '赵性仓', '安波', '18910907078', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('562', '三人万物教育科技（北京）有限公司', 'undefined', '于允', '18600261568', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('563', '北京中公教育科技有限公司', 'undefined', '刘伟', '13381155646', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('564', '北京亚太银河消防科技集团有限公司', 'undefined', '权麦玲', '13520609505', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('565', '北京渊大教育科技有限公司', 'undefined', '辛明江', '15313743549', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('566', '北京龙德天成教育科技有限公司', 'undefined', '于振', '15652573210', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('567', '英才在线（北京）教育科技有限公司', 'undefined', '赵冰', '13920394118', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('568', '北京天恒有孚教育科技有限责任公司', 'undefined', '刘雪松', '18301438802', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('569', '北京名丰教育科技有限公司', 'undefined', '罗礼明', '18801354625', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('570', '北京勉学教育科技有限公司', 'undefined', '张薇', '13502193839', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('571', '北京学尔德教育科技有限公司', 'undefined', '胡志超', '15810685241', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('572', '北京卫消安消防技术咨询有限公司', 'undefined', '赵冬冬', '15321336371', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('573', '北京明远嘉诚教育咨询有限公司', 'undefined', '张馨', '13370155004', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('574', '北京皓德恒溥教育科技有限公司', 'undefined', '郑惠芳', '13820774761', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('575', '中财建讯(北京)教育科技有限公司', 'undefined', '郑士海', '18500540316', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('576', '北京普思顿教育科技有限公司', 'undefined', '孙影', '13070187010', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('577', '必优拓普（北京）科技发展有限公司', 'undefined', '徐邦荣', '17326877701', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('578', '北京中消创安教育科技有限公司', 'undefined', '曹广进', '13220198583', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('579', '北京市西城区外施建筑业职工培训中心', 'undefined', '张风华', '13683604247', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('580', '北京京安民业安全防范技术有限公司', 'undefined', '王利军', '13671330855', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('581', '北京中民园博教育科技有限公司', 'undefined', '李艳东', '18722012256', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('582', '北京学信无忧教育咨询有限公司', 'undefined', '高波', '13521421807', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('583', '北京荣安永信消防科技服务中心', 'undefined', '李美欣', '18911035878', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('584', '北京万民安消防科技服务中心', 'undefined', '邵长柱', '13522558119', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('585', '北京鼎盛创安消防技术有限公司', 'undefined', '杨勇刚', '13693693998', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('586', '北京学研领航教育科技有限公司', 'undefined', '周莎', '15801420562', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('587', '北京众防消防咨询有限公司', 'undefined', '王大勇', '13717571807', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('588', '北京品诺完美文化传媒有限公司', 'undefined', '周建顺', '15001053944', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('589', '北京消防协会', 'undefined', '督导', '18510391205', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('590', '北京逆火文化传媒有限公司', '王立新', '王梦丽', '18248743126', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('591', '北京市昌平区清大东方消防职业技能培训学校', '程水荣', '应卫华', '13910757096', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('592', '北京泽惠风消防技术有限公司', '王文涛', '王小醒', '13911136208', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('593', '北京市京阳伟业安全技术有限责任公司', '罗京春', '张群', '62081585', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('594', '北京华祺洋消防安全有限公司', '孟庆国', '曲丽华', '13693228538', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('595', '北京鸿基消防文化发展有限公司', '韦安庆', '韦安庆', '13381326833', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('596', '北京市大兴区众合平安消防职业技能培训学校', '林森', '韩忠', '13051258251', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('597', '北京众安晓育教育科技有限公司', '翟媛媛', '李斌', '13810692510', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('598', '北京博雅建业教育科技有限公司', '张帅', '张帅', '15210629033', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('599', '北京市海淀区众安晓育消防职业技能培训学校', '王阳', '李斌', '13810692510', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('600', '北京中德启锐安全设备有限公司', '马达伟', '姚婷婷', '18010110668', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('601', '北京卓屹方消防科技有限公司', '卢朝阳', '包京京', '18612760151', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('602', '北京中炬启航教育科技发展有限公司', '徐珠蓉', '宋威', '18831657109', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('603', '北京派尔德教育科技有限公司', '师海维', '龚峰强', '13581670842', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('604', '中国空间技术研究院', '张洪太', '乔雨', '68117708', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('605', '北京市顺义区人力资源和社会保障局高级技工学校', '李征艳', '卢立明', '18811318207', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('606', '中消联盟（北京）消防工程技术有限公司', '成劲松', '杨晓娟', '18654511314', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('607', '北京市融安消防职业技能培训学校', '袁永刚', '林琳', '15611982646', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('608', '北京育人四海教育科技有限公司', '杜广敬', '张耀蓝', '18810192820', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('609', '北京晟煜知达科技有限公司', '马云飞', '马云飞', '13910413681', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('610', '北京绸缪消防科技有限公司', '赵秀敏', '张中华', '13601297694', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('611', '北京安氧特科技有限公司', '束克庆', '李霞', '13811936125', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('612', '北京长信久安消防科技有限公司', 'undefined', '马会忍', '15510710575', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('613', '北京中消平程消防安全技术有限公司', '张磊', '张磊', '13393534099', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('614', '北京星聚国际企业管理有限公司', '张琪明', '张琪明', '15699916806', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('615', '北京玉鼎磊诺气体科技有限公司', '侯玉柱', '赵兴', '18800154557', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('616', '北京拓思教育咨询有限公司', '黄东', '黄东', '13500339080', '查看', '宣传教育培训');
INSERT INTO `t_test` VALUES ('617', '中消云（北京）物联网科技研究院有限公司', '肖祖德', '郑飞', '18862119119', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('618', '睿佳智慧（北京）科技发展有限公司', '李继东', '李继东', '李继东', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('619', '中国建筑设计研究院有限公司', '宋源', '赵锂', '88328008', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('620', '北京东霖消防科技有限公司', '晋宝生', '白相东', '15503169743', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('621', '中建文化旅游发展有限公司', '吴宜夏', '韩景夫', '18710047004', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('622', '北京金顿教育科技有限公司', '于兵', '于兵', '13366775506', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('623', '北京亿洁净环保有限公司', '朱坤', '朱坤', '010-57454707', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('624', '浙江大华技术股份有限公司', '傅利泉', '张立波', '13910226463', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('625', '北京汉邦唐科技有限公司', '杜立静', '邢军', '18210391828', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('626', '北京金淼鑫盾智慧物联安全科技有限公司', '周志民', '王志强', '13671393239', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('627', '京润天城（北京）建设有限公司', '葛辉', '崔国明', '13651006818', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('628', '北京环球兴学科技发展有限公司', '伊贵业', '刘宁', '13581883237', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('629', '中泰民安安全服务集团有限公司', '赵性仓', '安波', '18910907078', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('630', '亚伯兰环保科技（北京）有限公司', '李海', '张志芳', '18516955623', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('631', '北京亚太银河消防科技集团有限公司', 'undefined', '权麦玲', '13520609505', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('632', '北京市朝航冷气设备有限公司', 'undefined', '米雪', '15910463927', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('633', '北京京盾西科姆电子安全有限公司', 'undefined', '温桂勇', '13701387921', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('634', '北京消防协会', 'undefined', '督导', '18510391205', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('635', '北京安宁威尔应急消防安全科技有限公司', '陶铁牛', '许丹', '18211056560', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('636', '北京火正消防安全技术研究院有限公司', '侯军峰', '侯军峰', '13801107685', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('637', '富锦博（北京）建筑工程有限公司', '马诗峰', '马庆灿', '18811648855', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('638', '哲翰（北京）科技服务有限公司', '朱坤', '朱坤', '13911043135', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('639', '北京泽惠风消防技术有限公司', '王文涛', '王小醒', '13911136208', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('640', '北京华融义缘消防技术有限公司', '王亦男', '郭志成', '18611394145', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('641', '北京金誉世华消防科技有限公司', '赵宏新', '赵宏新', '13911023512', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('642', '北京卫安诚信消防技术有限公司', 'undefined', '冯海涛', '13301178713', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('643', '北京华祺洋消防安全有限公司', '孟庆国', '曲丽华', '13693228538', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('644', '小蜜蜂互联（北京）消防信息技术有限公司', '李晓华', '刘晶', '13693557698', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('645', '北京博雅建业教育科技有限公司', '张帅', '张帅', '15210629033', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('646', '北京中德启锐安全设备有限公司', '马达伟', '姚婷婷', '18010110668', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('647', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('648', '中国空间技术研究院', '张洪太', '乔雨', '68117708', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('649', '北京久思信息技术有限公司', '王彩', '张云涛', '13366267161', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('650', '北京长城研修学院', '李儒树', '沈禛', '17600406718', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('651', '北京祈安顺达消防科技有限公司', '王福旺', '赵丽荣', '13683088605', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('652', '北京优锘科技有限公司', '马烈', '杨阳', '13810924284', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('653', '辰安天泽智联技术有限公司', '王宇', '李振铎', '18500425913', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('654', '北京星聚国际企业管理有限公司', '张琪明', '张琪明', '15699916806', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('655', '北京睿图科技有限公司', 'undefined', '徐宁涛', '18600051885', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('656', '北京正彦环绿环保科技有限公司', '王诤', '王诤', '13910925161', '查看', '消防信息化');
INSERT INTO `t_test` VALUES ('657', '中消云（北京）物联网科技研究院有限公司', '肖祖德', '郑飞', '18862119119', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('658', '睿佳智慧（北京）科技发展有限公司', '李继东', '李继东', '李继东', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('659', '中国建筑设计研究院有限公司', '宋源', '赵锂', '88328008', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('660', '北京市建设工程质量第二检测所有限公司', '张胜', '刘媛', '13811182920', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('661', '中建文化旅游发展有限公司', '吴宜夏', '韩景夫', '18710047004', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('662', '北京华烨信通信息技术有限公司', '石洁', '张寒灼', '18513660281', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('663', '北京久安正华消防科技有限公司', '孟凡龙', '孟凡龙', '13011179512', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('664', '北京中山消防保安技术有限公司', '俞楚明', '刘洋', '18600269423', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('665', '北京亿洁净环保有限公司', '朱坤', '朱坤', '010-57454707', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('666', '北京广翰消防技术有限公司', '韩宗曙', '孙亚宁', '15718861520', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('667', '北京金淼鑫盾智慧物联安全科技有限公司', '周志民', '王志强', '13671393239', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('668', '北京安征昊消防技术服务有限公司', '姜松华', '徐莉菲', '63929383', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('669', '京润天城（北京）建设有限公司', '葛辉', '崔国明', '13651006818', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('670', '北京立达卓消防技术有限公司', '姜颐兰', '吴昱', '13901238144', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('671', '北京净无忧兄弟清洁环保科技有限公司', '郝占宝', '郝占宝', '13901331605', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('672', '北京众成泽兴消防科技有限公司', '陆志刚', '张元元', '18910733176', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('673', '中泰民安安全服务集团有限公司', '赵性仓', '安波', '18910907078', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('674', '北京海博智恒电气防火科技有限公司', 'undefined', '董卫国', '13801105055', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('675', '北京泰合安消防科技有限公司', 'undefined', '闫冬雪', '18210050289', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('676', '北京亚太银河消防科技集团有限公司', 'undefined', '权麦玲', '13520609505', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('677', '北京京锦天诚科技有限公司', 'undefined', '邱现东', '13671024196', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('678', '北京中泰亿鑫工程有限公司', 'undefined', '陶学东', '13811680760', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('679', '北京腾飞红鹏科技发展有限公司', 'undefined', '王蛇扣', '18511325849', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('680', '北京安全象消防技术有限公司', 'undefined', '王硕', '15718807713', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('681', '北京国泰宏业消防安全检测有限公司', 'undefined', '于淑敏', '15901345032', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('682', '北京鑫培安全自动化技术有限公司', 'undefined', '秦培杰', '18901278686', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('683', '北京尤氏腾达新能源科技有限公司', 'undefined', '张勇', '18896687999', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('684', '北京中佳安消防科技有限公司', 'undefined', '段金良', '18801103744', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('685', '上海盛善电气有限公司', 'undefined', '曹科', '13761118810', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('686', '北京万家洁新科技有限公司', '尹龙春', '黄剑', '13331090905', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('687', '北京通汇恒泰安防科技有限公司', 'undefined', '郭东梅', '13911088402', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('688', '北京海安博大电气消防安全检测有限公司', '魏美玲', '敖日塔', '13911111574', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('689', '北京国泰瑞安消防检测有限公司', 'undefined', '何凤荣', '13520966466', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('690', '北京中安质环技术评价中心有限公司', '任磊', '罗金安', '13264278158', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('691', '北京虹仪消防技术服务有限公司', '李铁刚', '文东义', '13521392198', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('692', '北京永信安保公共安全技术有限公司', '刘刚', '秦宁宁', '13910723892', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('693', '北京安宁威尔应急消防安全科技有限公司', '陶铁牛', '许丹', '18211056560', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('694', '北京安富伟业消防安全检测有限公司', '姜子华', '杨建民', '18101203011', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('695', '北京华安泰达消防科技有限公司', '王杨', '刘荣华', '13910322511', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('696', '北京富锦博消防科技有限公司', '刘海军', '马李淼', '13717573907', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('697', '富锦博（北京）建筑工程有限公司', '马诗峰', '马庆灿', '18811648855', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('698', '北京中消世纪消防安全检测技术服务有限公司', '陈炫炫', '张琪', '15901207967', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('699', '北京博峰消防技术有限公司', '李月云', '刘学军', '13911061989', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('700', '北京京达金鼎消防安全技术有限公司', '孙哲', '郑利俊', '13717792388', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('701', '北京聚元隆安全技术有限公司', '陆天华', '梁庆新', '13521590877', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('702', '北京顺和安消防安全检测有限公司', '谢长海', '郭秋菊', '13681366686', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('703', '北京京安宏业消防安全检测中心', '庞艳霞', '李建新', '13601124407', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('704', '北京泽惠风消防技术有限公司', '王文涛', '王小醒', '13911136208', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('705', '北京鹰翔风景消防科技有限公司', '高伟', '高伟', '13910101405', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('706', '北京华融义缘消防技术有限公司', '王亦男', '郭志成', '18611394145', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('707', '北京佰仕兴隆消防技术有限公司', '武海军', '崔庭婷', '13031020001', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('708', '北京鑫湘宁消防检测有限公司', '贾景印', '王歆舒', '13121011281', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('709', '北京天一星熙消防安全技术检测有限公司', '胡梅玉', '胡梅玉', '15901011524', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('710', '北京清大同恒消防安全技术研究院有限公司', '李振锁', '郑军霞', '18600573628', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('711', '北京中府消防检测有限公司', '高金龙', '金立珍', '15910271783', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('712', '北京禹顺消防科技有限公司', '葛广顺', '刘永平', '13241091166', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('713', '北京金誉世华消防科技有限公司', '赵宏新', '赵宏新', '13911023512', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('714', '北京卫安诚信消防技术有限公司', 'undefined', '冯海涛', '13301178713', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('715', '北京华安全鼎消防科技有限公司', '刘宝辉', '江朝晖', '13601253551', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('716', '北京久久神龙咨询服务有限公司', '杨洋', '李骋', '13601209040', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('717', '北京力天京安消防科技有限公司', '汪亮', '苏檀华', '13811129697', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('718', '北京重泰安消防技术服务有限责任公司', '李征', '王宝新', '13581577745', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('719', '北京安亿通消防安全技术有限公司', '徐堂卿', '肖志义', '13910699231', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('720', '北京中安颐合消防技术有限公司', '李方玉', '朱建海', '18611718786', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('721', '北京安泰德科技有限公司', '张春龙', '任晗光', '13520671103', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('722', '北京宝凤翔通消防技术检测有限公司', '谢玉凤', '刘建国', '13071153456', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('723', '北京市富熙豪安防技术有限公司', '徐晓永', '徐晓永', '13911823253', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('724', '北京鑫淼润泽消防设施检测有限公司', '赵建军', '肖珊珊', '010-69698559', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('725', '北京天汇中方消防技术检测有限公司', '续庆祝', '刘东明', '13911239713', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('726', '北京大德润生消防检测有限公司', '彭宝秋', '岳建', '13810151861', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('727', '北京顺安盛消防科技有限公司', '商会娥', '陈莹', '13718687708', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('728', '北京华祺洋消防安全有限公司', '孟庆国', '曲丽华', '13693228538', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('729', '北京安泰达消防技术检测有限公司', '张金阳', '张金亮', '18600379076', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('730', '北京安博楼宇设施管理有限公司', '陈菊音', '唐振明', '13501027455', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('731', '北京三和永安消防设施检测有限公司', '康永生', '程少英', '18911607197', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('732', '北京京铁安达消防技术检测有限公司', '刘喜臣', '石文珍', '13801108835', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('733', '北京金和顺消防安全技术有限公司', '徐俊', '刘玉琴', '15311218891', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('734', '北京智朗卓越消防科技有限公司', '安军臣', '鱼洋', '15510265760', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('735', '北京坤钧枫消防技术有限公司', '韩宗曙', '孙亚宁', '15718861520', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('736', '北京骥中建消防科技有限公司', '张建忠', '张宁宁', '13501183762', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('737', '中建亚泰消防技术（北京）有限公司', '郭长星', '常娜', '13811292915、010-83609112', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('738', '北京升鼎浩瀚消防安全检测有限公司', '李征', '刘莹', '13810772498', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('739', '北京市金安华瑞消防工程技术有限公司', '郑玉焜', '梁丽', '15300016212', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('740', '北京弘锐消防科技服务有限公司', '詹春阳', '宋玉龙', '13146556682', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('741', '北京东方雄安消防技术服务有限公司', '吕珍', '吕珍', '13718197078', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('742', '北京博亚盛技术检测有限公司', '孙新华', '郭静', '13810999920', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('743', '北京隆安鸿运消防设施技术检测有限公司', '祝春松', '祝春松', '13801290942', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('744', '北京博霖翔皓消防科技有限公司', '刘军伟', '刘春', '15810925817', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('745', '北京世纪昊诚消防安全科技有限公司', '李宗堂', '马冲', '13366672139', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('746', '北京中加全成消防科技有限公司', '丁德胜', '丁永其', '17661936691', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('747', '奥来国信（北京）检测技术有限责任公司', '孙文伟', '彭文浩', '13683206462', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('748', '北京卫京安消防培训中心', '温书云', '代娜娜', '13488799292', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('749', '北京中消永安消防安全技术有限公司', '郑书萍', '孙小慧', '18610868590', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('750', '北京中天建科消防安全检测有限责任公司', '王新', '赵雪梅', '18910871189', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('751', '北京达安顺消防科技有限公司', '裴雷', '陆群', '18518098766', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('752', '北京京盾恒安消防科技有限公司', '边鹤龙', '张文静', '13161906585', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('753', '北京安华元消防技术检测有限公司', '席玉龙', '徐巧凌', '13801208647', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('754', '北京港洁物业管理有限公司', '张弘扬', '米雪', '15210111455', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('755', '北京励拓新安安全防范技术有限公司', '刘立新', '刘红琳', '13521373928', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('756', '北京中德启锐安全设备有限公司', '马达伟', '姚婷婷', '18010110668', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('757', '北京建和兴业电气防火安全检测中心', '朱凌波', '谢辉', '15010516223', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('758', '北京六合成消防技术有限公司', '姜凌', '姜彤华', '13661251987', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('759', '北京利华消防工程有限公司', '常立明', '刘明', '18611146685', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('760', '北京优诺科技发展有限公司', '赵朝阳', '孟林雁', '13910889402', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('761', '北京圣元天享工贸有限公司', '赵佩武', '李洪娟', '13621281792', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('762', '北京华安恒信消防科技有限公司', '张恒', '孙正', '13911805500', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('763', '北京金玉航辉消防安全技术有限公司', 'undefined', '吴月美', '18001036225', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('764', '北京东汉阳光科技有限公司', '李峭玲', '李妍', '010-84895628', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('765', '北京弘仁消防安全检测有限公司', '董振亚', '董科跃', '13436575956', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('766', '北京市琦联锋电气消防安全检测有限公司', '王淑华', '李斌琦', '13901108121', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('767', '中富安泰（北京）智能科技有限公司', '王敬涛', '王敬涛', '18611865119', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('768', '北京远佳成消防安全技术有限公司', '沈少明', '侯井龙', '13501018915', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('769', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('770', '北京航天海泉测试技术有限公司', '蒋如蓉', '吴焱宇', '18610033059', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('771', '中交华远（北京）建设工程有限公司', '李世国', '邓桂', '010-87220218', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('772', '北京巨安顺鑫消防科技有限责任公司', '李富群', '姜超', '13511015929', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('773', '北京顺新消防科技有限公司', '宋桂宝', '耿新秀', '13901236702', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('774', '北京延京富安消防科技有限公司', '陈曦', '余丽川', '18911282039', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('775', '北京浩通博宇消防安全技术有限公司', '叶翔', '叶翔', '13720053516', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('776', '北京永安泰消防工程有限公司', '冯海春', '冯琦', '13439458006', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('777', '北京世纪海源商贸有限公司', '朱勇敢', '潘风娟', '18939468088', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('778', '北京京安四海消防科技有限责任公司', '冯庆如', '徐萌萌', '15011523763', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('779', '北京建筑材料检验研究院有限公司', '张增寿', '沈炎明', '13381113002', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('780', '北京隆开源消防安全检测中心', '谢金建', '崔亚峰', '13701125551', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('781', '北京中兴久安技术检测有限公司', '李铁寅', '张权', '13321152440', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('782', '北京高炜懿德消防检测有限公司', '高令辉', '刘鹏举', '13910835119', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('783', '北京华祥永安消防工程有限公司', '陈永芬', '王永枫', '13911557525', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('784', '北京祈安顺达消防科技有限公司', '王福旺', '赵丽荣', '13683088605', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('785', '北京信诚环宇消防技术服务有限公司', '贾娜', '邓守龙', '18610385899', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('786', '北京盈科创安科技有限公司', '王玉杰', '王玉杰', '13810238907', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('787', '北京军威义消防科技有限公司', '邱小军', '朱晓宁', '13911832887', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('788', '北京冰春莲科技有限公司', '徐善志', '徐善志', '13311599278', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('789', '北京金鑫盾消防安全科技有限公司', '祝钦锋', '祝小军', '13439971495', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('790', '北京华信恒泰建设工程有限公司', '李立威', '刘丽', '13331137119', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('791', '北京万强安全技术有限公司', '李景克', '郜洁', '13811715389', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('792', '北京华商远大电力建设有限公司', '彭勇', '陈晓虹', '15801567953', '查看', '电气防火');
INSERT INTO `t_test` VALUES ('793', '北京攻垢清洁服务有限公司', '马亮', '马亮', '13501390681', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('794', '北京奥博瑞技术服务有限公司', '周婷婷', '周婷婷', '13910233476', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('795', '北京岩铄永合环保科技有限公司', '陈运晓', '冀亚恒', '13520933602', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('796', '北京市洁迅达保洁服务有限公司', '张中洲', '张丽娟', '18601229828', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('797', '北京科岚环保科技有限公司', '刘晓飞', '孙登霄', '13051286838', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('798', '北京蔚穆嘉城科技有限公司', '孙淑江', '张常龙', '13910725666', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('799', '京诚华信（北京）科技发展有限公司', '陈少华', '陈少华', '13261625266', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('800', '北京振海名泉商贸有限公司', '段海彦', '李振兵', '13269999979', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('801', '北京华恒智远环保科技有限公司', '王培', '胡燕', '15311191063', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('802', '北京环宇湘冀科技有限公司', '王宇辉', '徐国瑞', '13366261066', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('803', '北京宏金华市政工程有限公司', '张新利', '韩潮', '13811188616', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('804', '北京吉麦克商贸有限公司', '任朝富', '任朝富', '13911755263', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('805', '北京和兴实盛科技有限公司', '张占成', '张占成', '15028880891', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('806', '北京佳宝利都环保科技有限公司', '殷广朋', '殷广朋', '13240005666', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('807', '北京安瑞洁环保科技有限公司', '赵峰', '赵峰', '18515442181', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('808', '北京感恩工程管理有限公司', '王明朗', '王明朗', '13522216829', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('809', '北京金生浩达商贸有限公司', '王浩达', '王浩达', '13552821905', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('810', '深圳市丰修科技有限公司', '曾治平', '吴鹏', '13311129865', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('811', '兰商(北京)科技有限公司', '刘现震', '刘现震', '13910639127', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('812', '北京明泰来环保科技有限公司', '王慧平', '尤思晨', '15203229593', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('813', '北京正心同洁科技有限公司', '孟庆岭', '孟庆岭', '13611121307', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('814', '北京鸿盛洁环保科技有限公司', '杨晓英', '徐国瑞', '13366261066', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('815', '北京嘉和乐保洁服务有限公司', '屈红喜', '李永丽', '13552941030', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('816', '北京玉海利华保洁有限公司', '季玉峰', '季玉峰', '13716245167', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('817', '北京艾德艾嘉商贸有限公司', '杨丽', '杨丽', '18610153887', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('818', '北京信诚佳美保洁有限公司', '刘丽', '张菁', '13910815027', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('819', '亚太龙润（北京）能源科技有限公司', '张洪伟', '张洪伟', '13911830349', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('820', '北京兴业恒达建设工程有限公司', '付世余', '高亮', '13810818521', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('821', '北京顺兴顺通环保科技有限公司', '周成斌', '周成斌', '15120061161', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('822', '北京策琳腾达消防工程服务有限公司', '王航宇', '王翔宇', '13381226037', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('823', '北京海盛保洁服务有限公司', '杨冬生', '杨冬生', '18600297328', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('824', '北京鹏轩环保服务有限公司', '王小红', '王小红', '13811927991', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('825', '北京空港新风中央空调清洗有限公司', '聂晨毅', '李秀钰', '13811465625', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('826', '北京坤辰伟业环保科技有限公司', '辛建坤', '辛建坤', '13552917028', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('827', '北京四季共享环保科技有限公司', '龚会丽', '龚会丽', '13717877132', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('828', '北京鸿创佳誉环保科技有限公司', '穆蕊', '马跃', '18811184111', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('829', '北京利颖润洁环保科技有限公司', '傅颖秀', '石其海', '13693205160', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('830', '北京耀邦环保技术开发有限公司', '李刚', '王士友', '13810096896', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('831', '北京美雅洁环境科技有限公司', '姜立强', '姜立强', '13311166878', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('832', '北京中鼎华康环保科技有限公司', '武兆忠', '武兆忠', '15011030061', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('833', '北京中山消防保安技术有限公司', '俞楚明', '刘洋', '18600269423', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('834', '北京鑫昊天成环保科技有限公司', '刘志伟', '刘志伟', '13581582368', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('835', '北京上元天下水处理设备中心', '张海峰', '张海峰', '13693606613', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('836', '北京众邦京安消防工程有限公司', '郎振东', '郎振东', '13810223539', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('837', '北安清洗（北京）有限公司', '任彬', '于磊', '13811221692', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('838', '北京宇润铭泰环保科技有限公司', '刘丹', '陈勇刚', '15321158062', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('839', '北京暖赢高压水清洗科技有限公司', '崔暖侠', '张伟', '13718862599', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('840', '北京弘易源科技发展有限公司', '赵洪昌', '赵洪昌', '13911898478', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('841', '北京秦岭环境工程有限公司', '李栓强', '兰静', '13811332045', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('842', '北京高洁恒通科技有限责任公司', '刘庆斌', '刘庆斌', '13901097240', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('843', '北京丽洁环通保洁服务有限公司', '田玉伟', '田玉伟', '13811935318', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('844', '北京中森世纪环保科技有限公司', '崔秀花', '臧雪冬', '18911807251', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('845', '北京嘉梵玺盛环保科技有限公司', '赫一男', '赫一男', '18618263477', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('846', '北京鹏成清洁有限责任公司', '刘汝冬', '刘汝冬', '13910951367', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('847', '北京家兴通达保洁有限公司', '郭春生', '郭春生', '13718372996', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('848', '北京茗钧一涵商贸有限公司', '刘宁', '刘伟轮', '13701190380', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('849', '北京宜万家保洁有限公司', '刁宝龙', '朱仔倩', '13811342197', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('850', '庞德迪隆（北京）智能科技有限公司', '张多福', '苏正樱', '13911889094', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('851', '北京玖和恒昌伟业清洁服务有限公司', '杨先念', '杨先念', '13552311294', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('852', '易众创客（北京）企业管理有限责任公司', '祖国松', '赵仿', '15901510035', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('853', '北京顺安洁环保科技有限公司', '张文满', '张文满', '13911021290', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('854', '北京宏乐清洗服务有限公司', '张彬', '张彬', '张彬', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('855', '北京科蓝环保工程有限公司', '张洪伟', '郝立新', '13621252792', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('856', '北京泰迪沃清洁用品有限公司', '李印发', '李卫国', '13701156027', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('857', '北京亿洁净环保有限公司', '朱坤', '朱坤', '010-57454707', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('858', '北京同华兴达环境工程技术有限公司', '许丹华', '靳宝同', '18610308504', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('859', '北京蓝保清洁服务有限公司', '徐现成', '徐现成', '13811972261', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('860', '北京新朝商贸有限公司', '古连辉', '古连辉', '17772521503', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('861', '北京来菜乐科技有限公司', '靳军', '靳军', '18510880158', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('862', '北京东方舜景科技发展有限公司', '胡有恩', '张方方', '15601166669', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('863', '北京圣邦环境科技有限公司', '孙立峰', '李亚周', '18510088305', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('864', '北京嘉伯瑞科技有限公司', '李国荣', '李国荣', '13910003337', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('865', '北京峰涛立洁保洁有限公司', '李涛', '王越奇', '18901126770', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('866', '北京力佳洁环保科技有限公司', '李霞', '李霞', '17301074836', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('867', '北京众安美悦科技有限公司', '王胜堂', '王胜堂', '15311064655', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('868', '北京鑫淼一洁家政服务有限公司', '乔石', '乔石', '18611618555', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('869', '北京修哪儿互联网科技有限公司', '杨一萌', '马晓雨', '13801058260', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('870', '北京绿新源环保科技有限公司', '孙小梅', '罗志刚', '15311221587', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('871', '北京新风高科工程技术有限工公司', '曲军瑞', '王耀爽', '13810639335', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('872', '北京紫柏真可环保科技有限公司', '贾德保', '罗志刚', '15311221587', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('873', '北京嘉乐汇环保科技有限公司', '姚俊华', '13511025276', '13511025276', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('874', '北京豫洁雅环保科技有限公司', '刘传中', '呼利梅', '13521525374', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('875', '北京永信志成环保科技有限公司', '孙彪', '孙彪', '18311218708', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('876', '北京清尘环保科技有限公司', '张志灵', '呼利梅', '13521525374', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('877', '北京经典之家装饰工程有限公司', '李汉忠', '李汉忠', '13910885892', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('878', '北京爱洁环保服务有限公司', '邓意春', '邓意春', '13452603676', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('879', '绿众恒源（北京）环保科技有限公司', '谢为民', '谢为民', '15811166454', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('880', '北京创卫环境工程有限公司', '李国刚', '李国刚', '18518489969', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('881', '北京净邦到家保洁服务有限公司', '庞静', '庞静', '13011502099', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('882', '北京清新俞洁科技有限公司', '孙庆岭', '孙庆岭', '18911376031', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('883', '北京祥辰洁净环保科技有限公司', '白攀攀', '白攀攀', '15801335886', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('884', '北京永发平安环保科技有限公司', '张长有', '臧雪冬', '18911807251', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('885', '北京盛世茂宏环保科技有限公司', '高钰沛', '高钰沛', '18203885319', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('886', '北京鸿隅恒祥环保科技有限公司', '王志国', '张雪', '13683615045', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('887', '舜创（北京）环保科技有限公司', '刘颖达', '周琳', '13810284654', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('888', '北京鑫亿宏环保科技有限公司', '张超鹏', '张超鹏', '13910952871', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('889', '北京玖和恒昌环保科技有限公司', '胡小陆', '胡小陆', '13671179130 ', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('890', '北京鑫皓超燃厨具设备有限公司', '胡灵芝', '胡灵芝', '13371466667', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('891', '北京融成伟业物业管理有限公司', '娄成奎', '于杰', '17701303670', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('892', '北京中富麒麟商贸有限公司', '刘晓艳', '何治宏', '13718173107', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('893', '北京丰鑫宏业环保服务有限公司', '王洪锋', '王洪锋', '13717805881', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('894', '北京优阳盛隆科技有限公司', '申晓伟', '申晓伟', '13520255646', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('895', '北京鑫辰浩达环保设备科技有限公司', '吴艳', '黄海年', '17701259957', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('896', '北京千禧龙厨房设备有限公司', '陈进珍', '陈进珍', '13901139681', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('897', '北京凯达鑫环保科技有限公司', '刘亮', '刘亮', '17611425686', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('898', '北京恒博远通厨房设备有限公司', '于连奎', '于连奎', '13910813896', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('899', '北京宏达佳业保洁服务有限公司', '孙萌萌', '孙萌萌', '13261260117', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('900', '北京金航顺科技发展有限公司', '张鹏飞', '刘淼', '13581799820', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('901', '北京隆盛清洁服务有限公司', '王飞龙', '王飞龙', '18311470328', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('902', '北京燕雨灭虫服务有限公司', '李月东', '李春风', '18601383887', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('903', '北京世纪双节清洗有限公司', '史艳军', '史艳军', '13031011714', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('904', '晟天城（北京）环保科技有限公司', '陈宇超', '慈苒媚', '13126606665', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('905', '北京立清环保科技有限公司', '房国俊', '罗志刚', '15311221587', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('906', '北京利双业环保科技有限公司', '王晨菲', '熊一诺', '18518883641', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('907', '北京市万年青环保厨房设备有限责任公司', '潘志洪', '梁彩霞', '13321196325', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('908', '北京环城清洁服务有限公司', '于洪磊', '于红超', '15652770888', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('909', '卓一邦（北京）环保科技有限公司', '郭立会', '郭立金', '13651386615', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('910', '北京特丽洁环保科技有限公司', '杨德琴', '冯善扬', '13801263422', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('911', '京润天城（北京）建设有限公司', '葛辉', '崔国明', '13651006818', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('912', '北京青山绿水环保科技有限公司', '石建海', '石思', '18511111610', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('913', '北京京博奥达环保科技有限公司', '付斯琦', '许帅', '18301032591', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('914', '北京众意诚环境工程技术有限公司', '李渤海', '靳军', '18510880158', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('915', '北京宏博伟业科技有限公司', '窦长卫', '窦长卫', '18211166233', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('916', '北京仁友家政服务有限公司', '郭海艳', '马楠楠', '13141218436', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('917', '北京华辉上洁环保科技有限公司', '孙倩倩', '孙倩倩', '13910099329', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('918', '北京生辉鸿泰保洁服务有限公司', '刘秀萍', '刘秀萍', '15510714126', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('919', '北京俊励彬消防工程技术有限公司', '康彬蓉', '康彬蓉', '13311391421', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('920', '北京创美天成环保科技有限公司', '楚庆山', '杨海晓', '18600466635', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('921', '北京仡修物业服务有限公司', '董伟光', '董伟光', '18110075431', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('922', '北京瑞尔朗悦环保科技有限公司', '贾颖', '贾林', '13810956161', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('923', '北京永辉腾皇环保科技有限公司', '丁永飞', '丁永飞', '18310033692', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('924', '北京嘉美惠祥保洁服务有限公司', '谭爱凤', '谭志强', '18910905309', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('925', '北京华坤永安消防技术服务有限公司', '西志华', '田春艳', '13810371822', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('926', '北京逸林盛世环保科技有限公司', '李楷', '李楷', '13932606676', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('927', '北京生辉环保科技有限公司', '翟茹', '许东辉', '13161558000', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('928', '北京优能净环保科技有限公司', '何裕鹏', '何裕鹏', '13426439491', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('929', '中安洁业（北京）科技有限责任公司', '耿照亮', '夏佳丽', '18501020309', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('930', '北京厨安捷厨具维修服务有限公司', '王存金', '张经理', '15701635710', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('931', '北京煜德商贸有限公司', '杨伟', '杨伟', '13911688231', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('932', '北京淼森鑫清洁服务有限公司', '屈井亮', '屈井亮', '15010857119', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('933', '北京迅宇科技有限公司', '高雪', '高雪', '13331132657', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('934', '北京一凡雅清洁服务有限公司', '刘宏', '臧雪冬', '18911807251', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('935', '中成卓越(北京)厨房设备有限公司', '王进侠', '师中秀', '13501228011', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('936', '北京清溪绿荫环保工程有限公司', '朱泽超', '熊金龙', '18518883641', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('937', '北京净无忧兄弟清洁环保科技有限公司', '郝占宝', '郝占宝', '13901331605', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('938', '北京中兴众诚保洁服务有限公司', '田世海', '田世海', '13651249377', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('939', '北京世龙坤泰环保科技有限公司', '陈尔兵', '李玉华', '13601354204', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('940', '北京四季嘉业保洁服务有限公司', '张小刚', '张小刚', '15801010786', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('941', '北京杰明欣环保科技有限公司', '黎宙', '庞思博', '18171897405', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('942', '北京玖弘建设有限公司', '王国红', '石李涛', '13363869038', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('943', '亿嘉鑫（北京）环保科技有限公司', '马昆明', '马昆明', '17319206987', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('944', '深圳市安环技术有限公司', '洪洋', '洪楚望', '13602576769', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('945', '北京朔嘉伟业环保科技有限公司', '闫理伟', '熊金龙', '18518883641', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('946', '北京豪洋宏达科技有限公司', '肖现金', '肖现金', '13911573962', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('947', '北京凯旋佳业环保科技有限公司', 'undefined', '刘伟', '18001333816', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('948', '北京品格保洁服务有限公司', '张具飞', '贾德保', '13011009687', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('949', '北京江南山水装饰有限公司', '杨志忠', '熊金龙', '18518883641', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('950', '北京中泰佳环保科技有限公司', '李海娜', '王金富', '13681511682', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('951', '北京融易蓝环保科技有限公司', '程灏', '程灏', '18611176726', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('952', '北京森垚安泰环保科技有限公司', 'undefined', '王娇', '15120001301', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('953', '北京盛世佳业保洁服务有限公司', '王斌斌', '王斌斌', '17710398479', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('954', '北京彤旭佳业环保科技有限公司', '夏西忠', '夏西忠', '15110123656', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('955', '北京新财家业保洁有限公司', '李新财', '李新财', '13522334039', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('956', '北京海龙洁美保洁服务有限公司', '孙如海', '孙如海', '13671226321', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('957', '北京乐洁环保科技有限公司', '李静', '李静', '13621000650', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('958', '北京清泉洁美环保科技有限公司', '孙如友', '孙如友', '13910929783', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('959', '中泰民安安全服务集团有限公司', '赵性仓', '安波', '18910907078', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('960', '北京星驰佳业环保科技有限公司', '孙如亮', '孙如亮', '13341089870', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('961', '亚伯兰环保科技（北京）有限公司', '李海', '张志芳', '18516955623', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('962', '北京鸿远科蓝环保科技有限公司', '贾凤艳', '贾凤艳', '13911237152', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('963', '北京美佳美保洁服务有限公司', '马排', '马排', '13683260833', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('964', '北京鑫厨万佳厨房设备有限公司', '陈帝致', '庞思博', '18171897405', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('965', '北京爱能智亚科技有限公司', '金凤', '于洁', '13141248718', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('966', '北京润垚中恒科技有限公司', '刘现东', '于洁', '13141248718', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('967', '北京洪升源环保科技有限公司', '李苓', '李苓', '15210943804', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('968', '北京亿都嘉美环保科技有限公司', 'undefined', '姬腾振', '13521555202', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('969', '北京春海建设发展有限公司', 'undefined', '雒立伟', '18510833997', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('970', '北京人文鑫诚厨房设备有限公司', 'undefined', '庞仁文', '13718559591', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('971', '北京雨博环保科技有限公司', 'undefined', '菅洪亮', '18510322875', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('972', '北京文景利康保洁有限公司', 'undefined', '胥大其', '15910255533', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('973', '北京云科泽鑫科技有限公司', 'undefined', '孙艳荣', '13720042131', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('974', '北京京梁工程技术有限公司', 'undefined', '孙松', '13718808929', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('975', '北京朝力德厨房设备有限公司', 'undefined', '张恩朝', '15911012651', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('976', '北京静瑞雅环保科技有限公司', 'undefined', '方容', '13581959138', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('977', '跨越时代清洁服务（北京）有限公司', 'undefined', '刘自付', '13716704321', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('978', '北京合祥立业保洁服务有限公司', 'undefined', '郭雄', '13651232014', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('979', '北京万通清洁服务有限公司', 'undefined', '常宁', '15033497221', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('980', '北京光尘启元环保科技有限公司', 'undefined', '单立鹏', '18611020998', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('981', '北京众鑫八方劳务服务有限公司', 'undefined', '孙峰', '13511011069', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('982', '北京众信嘉华商业管理有限公司', 'undefined', '沙清华', '15210959619', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('983', '北京富宏保洁有限公司', 'undefined', '朱保红', '13552020675', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('984', '正博智远（北京）科技有限公司', 'undefined', '焦立波', '13304110929', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('985', '北京亨事物业管理有限公司', 'undefined', '陈紫意', '15313706164', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('986', '北京洁万家保洁服务有限公司', 'undefined', '郭义民', '13261766338', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('987', '北京瑞和众城环保科技有限公司', 'undefined', '宋瑞', '13911237152', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('988', '北京京锦天诚科技有限公司', 'undefined', '邱现东', '13671024196', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('989', '乐享源科技（北京）有限公司', 'undefined', '田贝贝', '15727302865', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('990', '北京亿鹏东方制冷设备维修有限公司', 'undefined', '李国东', '13651251963', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('991', '北京远洋同创保洁服务有限公司', 'undefined', '张洋', '18610625889', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('992', '北京诚涛科技有限公司', 'undefined', '颜斌斌', '18005761133', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('993', '北京巡城消防安全技术有限公司', 'undefined', '张玉芹', '18518185260', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('994', '北京华兴雨洁装饰工程有限公司', 'undefined', '孙明军', '13717580165', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('995', '北京浩华鼎景科技服务有限公司', 'undefined', '史小锋', '15911167718', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('996', '中天华源（北京）环保科技有限公司', 'undefined', '许勇虎', '13801252851', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('997', '北京绿色吉唐农业科技有限公司', 'undefined', '周明', '15810769986', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('998', '北京金源荣达保洁服务有限公司', 'undefined', '夏海荣', '13691385422', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('999', '北京瑞阳泰通科技有限公司', 'undefined', '龚群卫', '13801119688', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1000', '北京栋梁强晟科技有限公司', 'undefined', '张国良', '15811393826', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1001', '富瑞保洁服务(北京）有限公司', 'undefined', '刘占河', '13020041406', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1002', '北京鑫未来保洁服务有限公司', 'undefined', '屈清山', '18500546756', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1003', '北京中盛雅诺环保科技有限公司', 'undefined', '刘兵', '13581507939', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1004', '北京市奥佳保洁有限公司', 'undefined', '程新勇', '15811444200', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1005', '北京康安云瑞商贸有限公司', 'undefined', '王平凤', '18611295757', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1006', '北京隆盛天宇机械设备安装有限公司', 'undefined', '石丙忠', '15210478016', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1007', '北京兴垚嘉洁环保科技有限公司', 'undefined', '王伟', '15699809963', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1008', '北京安新瑜洁科技有限公司', 'undefined', '黄志泉', '18301033827', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1009', '北京力德通清洁服务有限公司', 'undefined', '刘玉岗', '13521565515', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1010', '航天屹邦（北京）国际环保科技有限公司', 'undefined', '刘长林', '13311073833', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1011', '北京金煜蓝天环保科技有限公司', 'undefined', '杨海峰', '13651305810', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1012', '北京顺达佳业科技有限公司', 'undefined', '夏晓华', '18511077618', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1013', '北京亿嘉鑫保洁服务有限公司', 'undefined', '赵非', '18911912192', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1014', '北京中科华兴环保有限公司', 'undefined', '徐世公', '18510992411', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1015', '北京望海环保科技有限公司', 'undefined', '何小军', '13366356635', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1016', '北京星空清洗服务有限公司', 'undefined', '赵小永', '13910516320', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1017', '北京吉宇鑫中央空调清洗有限公司', 'undefined', '徐建亭', '17611635635', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1018', '北京聚利泰佳环境科技有限公司', 'undefined', '王金富', '13811560668', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1019', '北京吉顺宇翔科贸有限公司', 'undefined', '葛艳敏', '13611208785', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1020', '北京福喜家政服务有限公司', 'undefined', '蔡春玲', '13601038837', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1021', '北京金石鸿泰清洗服务有限公司', 'undefined', '孔德立', '18610568005', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1022', '北京利博天方环保科技有限公司', 'undefined', '郭勇', '13522820743', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1023', '北京万达新保洁服务有限责任公司', 'undefined', '谭佳顺', '13001208265', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1024', '北京圣美伦清洁科技有限公司', 'undefined', '刘永彬', '13146388626', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1025', '北京青全清洁服务有限公司', 'undefined', '王春全', '13911197449', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1026', '北京瑞丰永兴科技有限公司', 'undefined', '牛冬辉', '13911931661', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1027', '北京永洁利民生物科技有限公司', 'undefined', '郭文香', '13621261796', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1028', '北京市双节清洗有限公司', 'undefined', '王晶', '13031017275', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1029', '北京佳德鸿运环保科技有限公司', 'undefined', '杨缓', '13681019932', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1030', '北京信通达成环保科技有限公司', 'undefined', '李俊芳', '13522205829', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1031', '北京睿沨环保科技有限公司', 'undefined', '李廷玉', '15210381215', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1032', '北京盛弘达云科技环保有限公司', 'undefined', '董建', '13391612012', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1033', '北京鑫洋家业环保科技有限公司', 'undefined', '钱典彪', '13910854085', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1034', '北京安莉斯环保科技有限公司', 'undefined', '袁振超', '15313705904', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1035', '北京海强兴隆厨房设备有限公司', 'undefined', '郭海强', '13311286419', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1036', '北京中威宏酒店设备有限公司', 'undefined', '张强', '13601173228', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1037', '北京龙佳建业环保科技有限公司', 'undefined', '陈鹏', '13811377405', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1038', '北京智博天琪科技发展有限公司', 'undefined', '张佳萌', '17801234707', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1039', '北京万山从商贸有限公司', 'undefined', '张秀存', '15001356346', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1040', '北京星磊宜洁环保科技有限公司', 'undefined', '相小红', '13522002686', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1041', '北京华妍餐饮服务有限公司', 'undefined', '张谦', '13910380002', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1042', '北京中亚九州环保科技有限公司', 'undefined', '陈宗平', '13910527932', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1043', '北京光尘环保科技股份有限公司', '张玲玲', '孙朝中', '13311127888', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1044', '北京鑫淼缘保洁服务有限公司', 'undefined', '包书名', '15010517319', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1045', '北京一凡雅保洁有限公司', 'undefined', '臧雪冬', '18910309095', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1046', '北京志恩远宏科技有限公司', 'undefined', '刘恩羽', '18518373777', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1047', '北京华宇宏润环保科技有限公司', 'undefined', '陈太平', '13886731671', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1048', '北京镇远安全保卫技术服务有限公司', 'undefined', '蔡金潮', '13901351841', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1049', '北京上地天浩科贸有限责任公司', 'undefined', '刘棣', '13371666686', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1050', '北京家兴邦科技有限公司', 'undefined', '张凤燕', '13301264057', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1051', '北京鼎立家政服务有限公司', 'undefined', '党军军', '15110197586', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1052', '北京广灿环境科技有限公司', 'undefined', '李寿会', '13718895193', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1053', '北京熙德净环保工程有限公司', 'undefined', '李朝霞', '13601007684', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1054', '北京开元易洁环保科技有限公司', 'undefined', '徐丹', '13717868806', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1055', '北京海润兴业物业管理有限公司', 'undefined', '何昭霞', '15313706413', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1056', '北京中检环能环保科技有限公司', 'undefined', '王建', '15330072881', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1057', '北京尚派科贸有限公司', 'undefined', '雷红霞', '13366120002', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1058', '北京鑫培安全自动化技术有限公司', 'undefined', '秦培杰', '18901278686', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1059', '北京信诚佳艺商贸有限公司', 'undefined', '宿春凯', '13651198786', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1060', '北京中建高科环保科技有限公司', 'undefined', '孙向国', '17301080959', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1061', '北京正元中大环保科技有限公司', 'undefined', '刘伟', '13031115198', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1062', '北京恒泰创艺装修装饰工程有限公司', 'undefined', '张社民', '18611859633', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1063', '北京意林新科技有限公司', 'undefined', '戚新国', '17743584339', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1064', '北京国顺安科技有限公司', 'undefined', '孙敬国', '13661377839', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1065', '中洁顺达（北京）保洁服务有限公司', 'undefined', '李侠', '15313705849', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1066', '北京诚慧清洁有限公司', 'undefined', '刘利婷', '15831811589', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1067', '北京清与净环保服务有限公司', 'undefined', '汪小清', '13901185284', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1068', '北京绿源同州环保科技有限公司', 'undefined', '吴桐', '17600169595', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1069', '亿寰（北京）环保科技发展有限公司', 'undefined', '张绪鹏', '13910520560', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1070', '上海樊登厨房设备清洗有限公司', 'undefined', '谢润朝', '18621620228', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1071', '北京立美净环保科技服务有限公司', 'undefined', '哈金龙', '13716236352', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1072', '北京溶绿源生态科技发展有限公司', 'undefined', '李志民', '18311336203', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1073', '北京蓝箭环保工程有限公司', 'undefined', '李新民', '15810131008', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1074', '睿卓伟业技术服务（北京）有限公司', 'undefined', '曹晓伟', '13681275421', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1075', '北京清之源消防技术有限公司', 'undefined', '尹银行', '15311199026', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1076', '北京阿美清洗保洁有限公司', 'undefined', '黄桂芹', '18501289196', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1077', '北京鸿源华博环保科技有限公司', 'undefined', '景卫忠', '13240052587', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1078', '北京创新环科环保科技有限公司', 'undefined', '孙艳青', '13601035925', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1079', '北京怡嘉良华清洁服务有限公司', 'undefined', '郑鑫磊', '18310255654', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1080', '北京三淼清洁服务有限公司', 'undefined', '贾东伟', '15811435598', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1081', '兆路伟业（北京）机电制冷设备有限公司', 'undefined', '张爱英', '13801254858', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1082', '北京晟瑞环境工程有限公司', 'undefined', '夏宇', '18600845995', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1083', '北京程辉腾达商贸有限公司', 'undefined', '田磊', '18500388541', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1084', '北京市京北园雅保洁服务有限公司', 'undefined', '冯宣岱', '13001068625', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1085', '北京安信捷创科技发展服务有限公司', 'undefined', '张宪明', '17710723312', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1086', '北京绿洁阳光环保科技有限公司', 'undefined', '郭哲', '13001922966', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1087', '北京万家洁新科技有限公司', '尹龙春', '黄剑', '13331090905', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1088', '北京天宸鸿晟环保服务有限公司', 'undefined', '白民辉', '18612886348', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1089', '北京尚仕洁保洁有限公司', 'undefined', '尚斌', '13910302107', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1090', '北京首郎科技有限公司', 'undefined', '赵建涛', '13501103949', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1091', '北京红运方华环保科技有限公司', 'undefined', '梁宾红', '15511380999', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1092', '上海久蔚环保技术有限公司北京分公司', 'undefined', '尚召侠', '18811126264', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1093', '北京鑫淼源保洁服务有限公司', 'undefined', '范奇林', '15810448567', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1094', '北京天宇玉慧清洁服务有限公司', 'undefined', '张付双', '13716526326', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1095', '北京曦晨瑞翔环保科技有限公司', 'undefined', '王臣臣', '17301278409', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1096', '北京可丽娜中央空调清洗有限公司', 'undefined', '张佳萌', '17801234707', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1097', '北京异特隆生物科技有限公司', 'undefined', '吉日嘎拉图', '18701081620', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1098', '北京三江四海环保科技有限公司', 'undefined', '巴瑞霞', '18811128123', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1099', '中交辉煌（北京）建设工程集团有限公司', 'undefined', '王锦飞', '13910113610', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1100', '北京宏宇景达科技有限公司', 'undefined', '王影', '13161173888', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1101', '北京消防协会', 'undefined', '督导', '18510391205', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1102', '北京星顺达保洁服务有限公司', '于彦敏', '张爽', '13911683987', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1103', '北京朗朗洁美保洁服务有限公司', '孙园园', '梅军满', '13661291679', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1104', '北京业佳琪科贸有限公司', '刘宝敬', '李广民', '13811386157', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1105', '北京美洁佳物业管理有限公司', '李伟', '孙士祥', '13051349808', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1106', '北京富东宏远消防技术有限公司', '王东', '王海威', '17800819606', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1107', '北京御宇环保科技有限公司', '陈宇', '陈宇', '18612645582', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1108', '北京煊煊佳业环保科技有限公司', '张卫星', '张卫星', '13693631283', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1109', '北京双达欣保洁服务有限公司', '周德珍', '刘利生', '13681507869', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1110', '北京维盛通技术服务有限公司', '唐建强', '衣晓梅', '18600012151', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1111', '北京宛清保洁服务有限责任公司', '孙源', '孙明阳', '13901221920', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1112', '北京华融义缘消防技术有限公司', '王亦男', '郭志成', '18611394145', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1113', '北京东方磊鑫建筑装饰工程有限公司', '阮传磊', '阮传磊', '010-89201824', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1114', '北京市京阳伟业安全技术有限责任公司', '罗京春', '张群', '62081585', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1115', '北京华升志远机电设备有限公司', '常秀兰', '曾金盼', '13910446787', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1116', '北京美思特保洁服务有限公司', '陈远远', '陈远远', '13716871786', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1117', '北京市创岚环保工程有限责任公司', '刘景', '赵颖', '13811378896', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1118', '北京绿港鼎鑫环保科技服务有限公司', '彭雨', '张晓光', '15901268322', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1119', '北京莱福灵商贸有限责任公司', '郭胜利', '于敏', '13601218581', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1120', '北京洁宁环境治理有限公司', '刘辉', '刘辉', '18003365808', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1121', '北京四海荣兴科技发展有限公司', '许章勇', '许章勇', '15110265823', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1122', '北京鑫智慧消防技术有限公司', '李楠', '李景镇', '13717736271', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1123', '北京中府消防检测有限公司', '高金龙', '金立珍', '15910271783', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1124', '北京三马机电工程有限公司', '金吉彪', '渠红', '18612455329', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1125', '北京顺安洁消防安全技术有限公司', '张文满', '张文满', '13911021290', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1126', '北京冉冉鸿泰保洁服务有限公司', '张倩', '刘志伟', '13581588848', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1127', '北京恒润博悦机电设备有限公司', '李素芬', '李文杰', '18500568111', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1128', '北京星磊百吉保洁有限公司', '成建民', '成建民', '13681023688', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1129', '北京路路通保洁服务有限公司', '袁党辉', '姜立强', '13311166878', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1130', '北京欣科建科技发展有限公司', '李国有', '张晓雯', '13810955168', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1131', '瑞华鑫机电设备安装（北京）有限公司', '赵昆', '赵昆', '13810963534', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1132', '北京宏安兴业消防技术有限公司', '朱海峰', '朱海峰', '13911321422', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1133', '北京海泰永成科技有限公司', '于喆', '于喆', '13501219936', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1134', '北京洁乐士环保科技有限公司', '刘春强', '魏超', '18811496866', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1135', '北京丽洁星保洁服务有限公司', '刘洋', '刘洋', '13021905807', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1136', '北京百洁鼎兴物业管理有限公司', '刘小龙', '刘超', '13511000587', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1137', '北京世纪中科清洁服务有限公司', '张中科', '张梦悦', '18871788872', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1138', '北京恩和物业服务有限公司', '卞红英', '卞红英', '13661226092', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1139', '北京大洋巨人环保科技有限公司', '郭洪波', '王峰', '010-67153330', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1140', '北京新百发缘科技有限公司', '黄大林', '陈永利', '13371676955', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1141', '北京华祺洋消防安全有限公司', '孟庆国', '曲丽华', '13693228538', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1142', '北京市慈航伟业环保科技有限公司', '刘红光', '刘红光', '13701114657', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1143', '北京卫京安烟道清洗中心', '秦立芳', '代娜娜', '13488799292', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1144', '北京宇润阳光清洗技术有限公司', '彭玉柏', '张家驹', '13391823535', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1145', '北京云港晶鑫环保科技有限公司', '仲崇健', '仲崇健', '13522131296', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1146', '北京家信展亮清洁服务有限公司', '付天水', '孟英丽', '15210224161', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1147', '北京德信龙光环保技术有限公司', '毛伟光', '毛伟光', '18611161122', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1148', '北京蘅之立业科技发展有限公司', '王春文', '王春文', '13910386649', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1149', '北京市今日阳光保洁有限公司', '王会君', '王建新', '13301139695', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1150', '北京帅安鸿运科技发展有限公司', '杜加森', '任朝国', '13167552951', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1151', '北京林海世通科技有限公司', '黄赛波', '黄赛波', '13439618587', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1152', '北京清江鸿达技术服务有限公司', '李洪', '李洪', '18001309478', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1153', '北京京豫鲁达科技发展有限公司', '杨金平', '赵保勇', '13520371641', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1154', '北京洁晟环保科技有限公司', '贺新', '王哲', '13901262143', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1155', '北京华宇顺成环保科技有限公司', '张爽', '张爽', '13911683987', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1156', '北京星宇首泰环保科技有限公司', '张立桥', '张立桥', '15810313871', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1157', '北京清源时代保洁服务有限公司', '王晓芳', '贺丽燕', '13520255126', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1158', '北京金瓯鼎建筑装饰工程有限公司', '冯艳永', '冯艳永', '13311186777', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1159', '北京诚信华宇环保科技有限公司', '张士成', '张士成', '13901333727', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1160', '北京星昊美物业管理有限公司', '迟彦军', '孙丽妹', '13611313191', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1161', '北京清江源技术服务有限公司', '周岳翠', '张家俊', '13801072483', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1162', '北京神吉啦商贸有限公司', '王艳奎', '马添翼', '13701136564', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1163', '北京鸿基消防文化发展有限公司', '韦安庆', '韦安庆', '13381326833', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1164', '一诺美家（北京）清洁服务有限公司', '李燕', '葛华彬', '18910211257', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1165', '北京绿源恒辉科技发展有限公司', '王国伍', '王兴东', '13911726682', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1166', '北京金玉升环保科技有限公司', '范文章', '张生玘', '13811781298', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1167', '北京信德扬天餐饮管理有限公司', '王洪涛', '王洪涛', '18600973976', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1168', '北京富邦新天地清洁服务有限公司', '廖佼', '廖佼', '15652625159', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1169', '北京芯泰环境科技有限公司', '赵峰', '刘蒙', '18801037572', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1170', '北京汇杰嘉业科技发展有限公司', '王仕刚', '陈莎', '13882146843', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1171', '北京佰易和环保工程有限公司', '牛红英', '王军', '13701286058', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1172', '北京天瑞平环保科技有限公司', '李丹丹', '封子庄', '13718949946', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1173', '北京众创蓝天环保科技有限公司', '刘春梅', '李变', '13439681186', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1174', '北京湘秦装饰材料有限公司', 'undefined', '李奇', '13691589165', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1175', '北京赛沃斯环保工程有限公司', '龚艳霞', '王正萍', '13691556138', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1176', '京盾消安（北京）环保科技有限公司', '崔平', '覃长城', '13910682117', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1177', '北京方超环保科技有限公司', '宋益芳', '向军超', '18301501929', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1178', '北京保盛科技有限公司', '胡康欢', '胡康欢', '18911644245', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1179', '北京丰盛清洁服务有限公司', '黄立祥', '黄立祥', '13683276919', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1180', '北京昊天雨晨科贸有限公司', '吴江涛', '吴晨风', '13011219015', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1181', '北京广达盛杰清洗服务有限公司', '王昌广', '王昌广', '18513000096', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1182', '北京红顺天厨房设备有限公司', '陈朝红', '陈朝红', '17710883989', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1183', '北京荣立信保洁服务有限公司', '何娟', '何娟', '13520639293', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1184', '北京京海康宁生物科技有限公司', '胡军', '胡军', '13701266359', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1185', '北京宇润大地环保科技有限公司', '唐本俊', '李桂红', '15901396188', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1186', '北京欧客物业管理有限公司', '张淑荣', '李之强', '18910167315', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1187', '北京壹壹肆环保科技有限公司', '霍达', '霍达', '18618149222', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1188', '北京京卫环环境科技有限公司', '齐青珍', '周新华', '13501036920', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1189', '北京冠良胜威科技有限公司', '张国良', '张国胜', '15727330899', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1190', '北京山河佳业保洁有限公司', '于海生', '于海生', '13910740744', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1191', '北京大晟顺利保洁服务有限公司', '张智晟', '王涛', '13911121152', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1192', '北京华清速洁消防技术有限公司', '鲁利娟', '刘卫东', '15810677322', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1193', '北京华清保洁服务有限公司', '宋海滨', '宋海滨', '1391182981', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1194', '中环清新科技发展（北京）有限公司', '宋长青', '魏晓雪', '13581804674', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1195', '北京顺诚合鑫科技发展有限公司', '温秀芹', '贾玉民', '13691106827', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1196', '北京运超保洁服务有限公司', '林庆勋', '林庆勋', '18211030989', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1197', '北京金鹏康达伟业保洁有限公司', '杨静静', '李健', '13671239092', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1198', '北京天润鹏缘厨房设备有限公司', '刘佰权', '刘佰权', '13911805427', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1199', '北京如韵春风商务服务有限公司', '赵大永', '罗敬', '18910016001', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1200', '北京怡帆汇通清洗服务有限公司', '谷占国', '史小峰', '18311097298', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1201', '北京百家修商贸有限公司', '曹崛', '王宏洲', '13466610417', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1202', '北京中豫信诚环保科技有限责任公司', '张素娟', '李帅军', '13651235773', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1203', '北京豫东信诚环保科技有限责任公司', '刘卫珍', '张志伟', '15101691883', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1204', '北京雨洛恬环保科技有限公司', '邱飞跃', '邱飞跃', '13671024169', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1205', '北京云瀚清洁工程有限公司', '姬霞', '李冬秀', '13901235067', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1206', '北京安舒保洁服务有限公司', '田苏华', '徐云龙', '15901560892', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1207', '北京春光好环保科技有限公司', '张立平', '徐建强', '18515502528', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1208', '北京市双节京诚油烟管道清洗有限公司', '乔书岭', '乔书岭', '13811870730', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1209', '北京卓屹方消防科技有限公司', '卢朝阳', '包京京', '18612760151', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1210', '北京天瑞恒保洁服务有限公司', '潘恒军', '潘恒军', '13522173786', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1211', '北京视觉保洁服务有限公司', '黄建民', '黄建民', '15811351658', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1212', '北京厨瑞达厨房设备有限公司', '宋红兴', '宋红兴', '18811040938', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1213', '北京白云消防工程服务有限公司', '黄永超', '黄永超', '18611685874', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1214', '北京合安利达保洁服务有限公司', '马建鲁', '马建鲁', '13520079559', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1215', '北京鑫诚佰顺保洁服务有限公司', '刘长江', '王平', '13466329975', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1216', '北京勃顺兴劳务服务有限公司', '周海顺', '周海顺', '13910626889', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1217', '北京特洁特清洗保洁服务中心', '石海燕', '黄自立', '15901259826', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1218', '北京光诚环保科技有限公司', '夏时光', '夏时光', '13681384359', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1219', '北京蓝冰宝环保技术有限公司', '许保利', '贾立强', '13011106080', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1220', '北京富铭远洋建筑装饰设计有限公司', '张晓坡', '张晓坡', '13910693163', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1221', '绿港蓝天（北京）环保科技有限公司', '侯瑞东', '侯瑞东', '13601358321', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1222', '北京齐航楼宇清洁有限公司', '张建宁', '陈立荣', '63328207', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1223', '北京贺贺佳业保洁服务有限公司', '张辉', '张辉', '18612086069', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1224', '北京宇航晟都保洁服务有限公司', '杨文强', '杨文强', '13511033890', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1225', '北京乐邦佳业保洁服务有限公司', '李京明', '夏文波', '18911821711', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1226', '北京佳佳慧福商贸有限公司', '姚慧敏', '赵福强', '13552534887', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1227', '北京卫利洁物业管理有限公司', '杨勇', '邹治亚', '13911719527', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1228', '北京军亿发餐饮管理有限公司', '侯殿军', '侯磊', '15611118388', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1229', '中富安泰（北京）智能科技有限公司', '王敬涛', '王敬涛', '18611865119', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1230', '北京中意悦杰厨房设备有限公司', '王志军', '王志军', '13910769767', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1231', '中强环宇（北京）科技有限公司', '宋爱', '王可', '13810870829', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1232', '北京海马岛净水设备有限公司', '高宝会', '高宝会', '13701182289', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1233', '北京靓洁安保洁服务有限责任公司', '周爱莲', '周爱莲', '13910183180', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1234', '北京德众国良环保科技有限公司', '周国梁', '李晶晶', '13260097024', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1235', '北京圣堡净雅保洁服务有限责任公司', '高辉', '杨红', '13311532856', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1236', '北京优沃普环境科技有限公司', '蒙晓东', '蒙晓东', '15901157678', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1237', '北京中维立洁科技有限公司', '李树龙', '李树龙', '13911795696', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1238', '北京康安洁科技发展有限公司', '孙安安', '孙安安', '18611133801', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1239', '北京鼎鸿东方保洁有限公司', '田东芳', '丁鸿亮', '18210888413', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1240', '北京快洁星保洁服务有限公司', '周英鹏', '周英鹏', '13811293155', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1241', '北京仟佰佳清洗服务有限公司', '陈颜东', '陈颜东', '13911048814', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1242', '北京消兴安顺清洗技术有限公司', '李凤珍', '周迎兵', '13691300332', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1243', '北京祥铭吉耀科技有限公司', '石海祥', '石海祥', '13911728531', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1244', '北京中科桐华环保科技有限公司', '何艳敏', '侯亮亮', '13718910033', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1245', '北京万事通保洁有限公司', '王喜英', '方兴才', '18710164335', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1246', '中交华远（北京）建设工程有限公司', '李世国', '邓桂', '010-87220218', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1247', '北京滨河世纪科贸有限公司', '于爽', '于爽', '13901314413', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1248', '北京锦祥辉消防工程有限公司', '丁泽坤', '丁泽坤', '18500311042', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1249', '北京英兰环保科技有限公司', '张庆春', '张庆春', '13661000787', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1250', '北京东富净化技术有限公司', '邹树铮', '翟玮', '16601033619', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1251', '北京志晨美家保洁清洗有限公司', '李慧', '陈县忠', '13366584368', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1252', '北京中泰鑫消防工程服务有限公司', '孙琳琳', '王江', '18610414098', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1253', '北京洁屋靓厨科技有限公司', '周举锋', '夏秀艳', '13391960910', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1254', '北京云渺峰上保洁服务有限公司', '王寒刚', '王寒刚', '13241878259', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1255', '北京海润保洁有限公司', '红山', '杨永生', '15510074132', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1256', '北京润泽民生商贸有限公司', '段俊立', '段俊立', '13901263984', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1257', '北京隆盛环境工程有限公司', '石东春', '石爱国', '010-69087398', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1258', '北京京安翔业机械设备有限公司', '李建海', '杨帆', '13910266563', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1259', '北京乙辉华强科贸有限公司', '郭军强', '孙艳华', '13651067499', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1260', '北京华宇众洁科技发展有限公司', '任燕玲', '任燕玲', '15011139024', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1261', '北京安泰洁佳保洁有限公司', '王亚岭', '王亚岭', '13691139112', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1262', '北京鑫太阳清洗服务有限公司', '夏喜霞', '李茂华', '13001978886', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1263', '北京碧诺鸿德环保科技有限公司', '周英德', '周英德', '13651213546', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1264', '北京嘉智佳美科技有限公司', '菅坤', '菅坤', '18911934516', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1265', '北京德裕盛清洁环保科技有限公司', '张海明', '张海明', '89372996 13031182761', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1266', '北京蓝天洁美环保科技有限公司', '刘俊国', '刘俊国', '15001052130', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1267', '北京特洁科技有限公司', '李忠辉', '李忠辉', '13051314880', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1268', '北京易达通慧商贸有限公司', '周其才', '杨玉杰', '13167538787', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1269', '北京富洁科贸有限公司', '郑孟青', '郑孟青', '13341192858', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1270', '北京安美佳保洁服务有限公司', '李远锋', '李远锋', '13911564814', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1271', '北京荣杰天使清洗服务有限责任公司', '王利杰', '庞世超', '15210189005', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1272', '北京双文保洁有限公司', '王志向', '王志向', '13141379941', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1273', '北京福海芮轩清洁服务有限责任公司', '孟令芝', '庞仁文', '13718559591', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1274', '北京天使霓裳科贸有限公司', '张金玲', '刁维利', '13520551895', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1275', '北京云海心诚清洁服务有限责任公司', '李玉云', '庞仁义', '13381408161', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1276', '北京德技盛科技有限公司', '刘强', '刘强', '13552252985', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1277', '北京东方净美厨房设备有限公司', '庞仁义', '庞仁义', '13381408161', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1278', '北京昊坤科技发展有限公司', '刘峰', '潘广海', '13311109070', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1279', '中海洋保洁服务(北京）有限公司', '郭永金', '闫新新', '17725562698', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1280', '北京延京富安消防科技有限公司', '陈曦', '余丽川', '18911282039', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1281', '北京金坡通德科技有限公司', '张金坡', '张金坡', '13910599234', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1282', '北京京荣顺达科技发展有限公司', '顾金荣', '王晨菲', '18910083816', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1283', '北京盛世宏业清洁服务有限责任公司', '李凤英', '李凤英', '13522089578', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1284', '北京天宇恒远厨房设备有限公司', '李玉荣', '李凤英', '13522089578', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1285', '北京海生亮洁环保科技有限公司', '李刚', '李刚', '13071161290', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1286', '北京都之洁清洗服务有限公司', '樊天明', '樊天明', '13621298379', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1287', '北京新亮洁建筑工程有限公司', '单心凯', '单心凯', '18310269982', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1288', '清淞（北京）科技发展有限公司', '邵雅琳', '郭忠军', '15726693358', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1289', '北京东永祥云环保科技有限公司', '顾小云', '顾小云', '18513589158', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1290', '北京凯悦通达机电安装有限公司', '高美彦', '高国锋', '18901165521', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1291', '北京世纪海源商贸有限公司', '朱勇敢', '潘风娟', '18939468088', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1292', '北京华安嘉成环保科技有限公司', '罗秀琴', '侯长林', '13810798312', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1293', '北京龙腾乐家环保科技有限公司', '姚现权', '姚现权', '13436853238', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1294', '北京洁都保洁服务有限公司', '郭永中', '郭永中', '13910258964', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1295', '天津小金手清洁服务有限公司北京分公司', '周玉萍', '运迺林', '13902003232', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1296', '北京云青堂环保科技有限公司', '王玉隆', '纪舒', '13811301879', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1297', '北京泓博香洁伟业保洁服务有限公司', '赵建伟', '赵建伟', '18514213969', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1298', '北京蓝海环宇科贸有限责任公司', '张晓红', '刘德华', '18813164595', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1299', '北京嘉合保洁服务有限公司', '杜少岗', '骆荣翠', '17310039771', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1300', '北京至浩众邦科贸有限公司', '史鑫', '史鑫', '18910818062', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1301', '北京佳洁家美保洁服务有限公司', '果长友', '果长友', '18310081593', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1302', '北京骐馨科技有限公司', '李领刚', '周海英', '13552493375', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1303', '北京远洋昊天厨房设备有限责任公司', '谢雪', '谢军', '13811982571', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1304', '北京万家安泰消防器材有限公司', '张释月', '张释月', '13001229502', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1305', '北京蓝博同创环保科技有限公司', '黄瑞春', '黄海萍', '13911829265', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1306', '北京速洁鑫源科技有限公司', '冯林英', '冯林英', '13717711718', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1307', '北京耀弘环保科技有限公司', '罗海燕', '刘硕', '13466633397', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1308', '北京康宇信达环保科技有限公司', '孙朝军', '孙朝军', '15210670258', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1309', '北京松诚普阳环保科技有限公司', '徐继春', '常福升', '13426487625', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1310', '北京博润立方环保科技有限公司', '彭成', '彭成', '15911163329', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1311', '北京普瑞天泽科技有限公司', '李筝', '董明', '13311106312', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1312', '北京晶慧焱保洁服务有限公司', '代先勤', '刘长成', '13521072364', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1313', '北京中青源环保科技有限公司', '刘于忠', '田海燕', '13366572648', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1314', '北京竣景科技有限责任公司', '卢群子', '卢群子', '13901070893', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1315', '北京京广兴业科技发展有限公司', '倪玲玉', '倪玲玉', '15210051801', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1316', '北京华清丽洁保洁服务有限公司', '杨先锋', '杨先锋', '13520312519', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1317', '北京青道夫科技有限公司', '孟祥金', '孟祥金', '15010862805', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1318', '北京鑫盛焰环境科技有限公司', '郭莹', '郭莹', '18147630361', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1319', '北京汇诚骏景科技有限公司', '李瑞鑫', '于祥杰', '18910136923', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1320', '北京丽丽环保科技有限公司', '张建军', '张建军', '13522786631', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1321', '北京福升兴泰环保科技有限公司', '梁东升', '梁东升', '18701259989', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1322', '北京华蕊清洗技术服务有限公司', '李德忠', '李杰', '13366608951', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1323', '北京晟煜知达科技有限公司', '马云飞', '马云飞', '13910413681', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1324', '北京京广兴业清洗服务有限公司', '吴龙飞', '吴长春', '13691352968', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1325', '中洁(北京)保洁服务有限责任公司', 'undefined', '刘康振', '15652699998', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1326', '北京市诚信佳保洁服务中心', '蒋淼驰', '蒋淼驰', '13611266057', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1327', '北京金鑫亚源环保科技有限公司', '刘金', '刘金', '13683581542', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1328', '北京云涵日昌科技发展有限公司', '陈福存', '陈福存', '13718679042', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1329', '北京海洋清洗有限公司', '谢明芳', '刘凤艳', '13552821905', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1330', '北京瑞祥顺保洁服务有限公司', '赵蕊', '赵蕊', '13716467246', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1331', '北京市鑫普健工贸中心', '陈立建', '田海征', '13716158224', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1332', '北京华旭卓越消防技术有限公司', '黄世恩', '黄世方', '15810416133', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1333', '北京盛世鸿业清洁服务有限责任公司', '吕绪锋', '吕绪锋', '13241068455', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1334', '北京时代美林安全防范技术有限公司', '解福华', '解福华', '13801061467', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1335', '北京华融达科技有限公司', '张林', '黄艳涛', '13810723916', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1336', '北京天锐杰厨房设备有限公司', '孙俊杰', '孙俊杰', '15010191019', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1337', '北京地道鼠环保科技有限公司', '韩丽', '赵金峰', '13681324592', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1338', '北京晶雅丽科贸有限公司', '杨建生', '张晶晶', '13718257307', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1339', '北京红门保洁有限公司', '王树峰', '李思广', '15701583836', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1340', '北京信利通物业管理有限公司', '胡永成', '张祎楠', '15011293168', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1341', '北京龙钊嘉业环保科技有限公司', '杨俊艳', '谭朝双', '13911464849', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1342', '北京聚美德馨环保科技有限公司', '谭冰江', '谭冰刚', '13552098339', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1343', '北京万和兴达科技发展有限公司', '张琳', '柴雪艳', '13911012781', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1344', '北京华融达国环科技有限公司', '宋洪黎', '陈小方', '18310401557', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1345', '通县节能技术推广站', '孙伟', '韩晓艳', '13522159078', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1346', '北京冰春莲科技有限公司', '徐善志', '徐善志', '13311599278', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1347', '北京国伟科技发展有限公司', '李国伟', '李国伟', '15901367082', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1348', '北京富春保洁服务有限公司', '赵洪富', '赵庆春', '13910188483', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1349', '北京大德空间环境科技有限公司', '郑美妹', '郑美妹', '13910797866', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1350', '北京孝善科技服务有限公司', '程秀峰', '程秀峰', '15510728849', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1351', '北京尚品嘉美保洁服务有限公司', '张苗', '张苗', '13581822586', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1352', '北京天怡大和投资管理有限公司', '孙树立', '李美霞', '13699279501', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1353', '北京广大宏朗联拓科技有限公司', '张景齐', '沈永革', '13661279231', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1354', '北京市必克机电设备有限责任公司', '王全红', '穆杨', '13911687610', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1355', '好师傅（北京）劳务服务有限公司', '张鹏', '王志奎', '13520021848', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1356', '北京鑫诚吉顺科贸有限公司', '张志国', '张彦辉', '18519888781', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1357', '北京芸众缘咨询服务有限公司', '李宏', '李宏', '13811020995', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1358', '北京洁帮盛世启峰环保科技有限责任公司', '崔海峰', '邵世杰', '17600359518', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1359', '北京嘉信邦科技有限公司', '李国忠', '陈婷', '18510908596', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1360', '北京海文博瑞科技有限公司', '陈文群', '宋加宏', '13311398330', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1361', '北京鸿泽达科技有限公司', '李小红', '韩浩', '13811583344', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1362', '北京茂鑫源物业管理服务有限公司', '杨松林', '王辉', '13501156246', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1363', '北京天城环保科技有限公司', '李红云', '陈效芸', '18810591629', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1364', '北京顾友环保科技有限公司', '吕淑萍', '李博乔', '18910984024', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1365', '北京通聚鑫科贸有限公司', '齐自林', '齐云', '13501121650', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1366', '北京恒安保洁有限公司', '曾新顺', '曾新顺', '13691143767', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1367', '北京馨净界家政服务有限公司', '刘秋杰', '高学明', '13311208977', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1368', '龙创蓝天（北京）科技有限公司', '曹卫东', '高迪', '13911362356', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1369', '北京恒远劳务服务有限公司', '檀瑞莲', '夏强委', '13910221668', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1370', '北京同鑫鸿祥厨房设备有限公司', '钱万俊', '钱万俊', '13911237833', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1371', '北京世纪隆泽环保科技有限公司', '马叶飞', '孙垚强', '13552775279', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1372', '北京天天有喜保洁服务有限公司', '张广顺', '张广顺', '13240417211', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1373', '北京鑫源祥瑞环保科技有限公司', '孙晓萌', '孙晓萌', '13911736219', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1374', '北京亿万佳保洁服务有限公司', '王刘杰', '王刘杰', '13693536128', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1375', '北京天赐良机冷却设备有限公司', '张治敏', '张治敏', '13911346713', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1376', '北京泽通源科贸有限公司', '赵玉敏', '赵玉敏', '13520133888', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1377', '北京融合清洗服务有限公司', '关艳梅', '关艳梅', '13811937910', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1378', '北京市金伟博清洁服务有限公司', '陈伟', '陈伟', '13381186972', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1379', '北京盛世开元环保有限公司', '徐云', '施升武', '13124796126', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1380', '北京嘉恒汇宝科技有限公司', '贾恒茂', '郑建锋', '13520906303', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1381', '北京久恒荣发环保科技有限公司', '张小玲', '胡风雷', '13717646691', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1382', '北京嘉乐清洁服务有限公司', '王振华', '王现伟', '13673944279', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1383', '北京圣喻环保科技有限公司', '姚新群', '姚新群', '13910534134', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1384', '北京亿维智慧科技有限公司', '刘杰', '李勇', '13901157918', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1385', '北京杰厨酒店设备有限公司分公司', '刘杰', '游伟志', '13910888459', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1386', '北京立华环保科技有限公司', '刘永宽', '刘永宽', '15811023346', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1387', '北京隆世康科贸有限公司', '焦乾龙', '焦乾龙', '15810660078', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1388', '北京美意美境物业管理服务有限公司', '卫峰兵', '杨明刚', '13001068625', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1389', '北京约洗吧清洁服务有限公司', '石国安', '石国安', '13391985818', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1390', '北京海淀晶晶科技有限公司', '聂群', '彭中文', '13911541057', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1391', '北京中泽万通能源管理有限公司', '张晓平', '杨文娟', '13810445030', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1392', '北京晋鸿运环保科技有限公司', '陈新户', '陈新户', '18801440638', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1393', '北京首津润通科技有限公司', '闫洪松', '付金辉', '18311387371', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1394', '汇欣时代（北京）清洁服务有限公司', '朱明彩', '王婷', '15205210440', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1395', '北京事易达清洗保洁服务有限公司', '高义满', '高义满', '13910772803', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1396', '北京丽实杞生物科技有限公司', '贾纪测', '贾纪测', '18810069244', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1397', '北京八方速达保洁服务有限公司', '秦先文', '秦经理', '18611196988', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1398', '北京八方快洁清洗保洁有限公司', '李凤林', '田必波', '13681479648', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1399', '北京华谊诚顺机电设备有限公司', '李穆', '李穆', '13911000581', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1400', '北京兴业通达清洁服务有限公司', '付艳华', '姜纪永', '13716167288', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1401', '北京天铖中盛清洁服务有限公司', '郑文建', '邓永辉', '18611113069', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1402', '松达绿缘科技发展(北京)有限公司', '崔德柱', '崔德柱', '13722828915', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1403', '北京中盛时达清洗保洁服务中心', '胡之河', '胡之河', '13264009276', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1404', '北京四季清科贸有限公司', '岳辉', '卜云广', '15011589194', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1405', '北京蓝天恒佳科技有限公司', '戚良宾', '党淑新', '1381868844', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1406', '北京巨雅环保科技有限公司', '李长庆', '李长庆', '18661658676', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1407', '北京吉时雨环保科技有限公司', '贾军磊', '贾军磊', '13717871717', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1408', '北京永盛宏达安全科技有限公司', '牛丽娜', '张彬', '13718359071', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1409', '北京即刻到家科技服务有限公司', '陈丽娜', '杨小同', '18518061916', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1410', '北京久合保洁有限公司', '张洋', '洪旭', '13146808666', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1411', '北京万里鲲鹏环保科技有限公司', '郑坤', '杨粉', '13521742840', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1412', '北京京鑫环境工程有限公司', '李广滢', '李广滢', '13366054767', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1413', '卫康（北京）生物科技有限公司', '李翠影', '王海涛', '13146602516', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1414', '北京中泉诺雅科贸有限公司', '孙训磊', '孙训磊', '13718184977', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1415', '北京翰拓教育科技有限公司', '孙忱', '孙忱', '13731021766', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1416', '北京绍晖信达消防安全技术有限公司', '赵江峰', '杨振光', '13910981762', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1417', '北京美华洁邦环保科技有限公司', '李萍', '胡召信', '13241906515', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1418', '北京丽锦清洗服务有限公司', '熊天镜', '张雪', '13683615045', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1419', '北京豪盛恒大科技有限公司', '许光春', '党小新', '13811868844', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1420', '北京浩可环保科技有限公司', '马士勇', '马士勇', '13611194132', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1421', '行征和环保科技（北京）有限公司', '李雍', '李雍', '13241723993', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1422', '北京新风绿洲环保科技有限公司', '徐景峰', '李丕拴', '13651052878', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1423', '北京雅斯丽保洁服务有限公司', '陈守银', '陈守银', '13910178131', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1424', '北京华海天地环保科技有限公司', '杨玄玄', '杨玄玄', '18600911741', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1425', '北京世纪洪源环保科技有限公司', '王禹', '王禹', '13521994632', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1426', '北京前景新缘物业服务有限公司', '高立军', '张帅', '13611136885', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1427', '北京优明佳保洁有限公司', '姜后平', '姜后平', '13212302222', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1428', '北京爱鑫清洁有限公司', '魏峰', '魏峰', '18811546063', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1429', '北京美怡家环保科技有限公司', '王新武', '谭朝双', '13911464849', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1430', '北京宇通远大科技有限责任公司', '周肖逸', '周肖逸', '13011133833', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1431', '北京宇龙建筑工程有限公司', '程青', '程青', '13910987613', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1432', '北京恒辉东方环保科技有限公司', '陈莉', '陈莉', '13439741237', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1433', '北京豪顺达不锈钢厨具制造有限公司', '郑国春', '陈效芸', '18810591629', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1434', '北京伟达嘉业保洁服务有限公司', '孙如伟', '孙如伟', '13521599904', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1435', '北京丰河佳业保洁服务有限公司', '夏丰收', '夏彪', '15010439564', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1436', '北京华淼环保工程有限公司', '汪亚硕', '汪亚硕', '13910803497', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1437', '北京华夏裕德建筑工程有限公司', '张书红', '王伟德', '17718425019', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1438', '北京市春益通保洁服务有限责任公司', '张士春', '任俊武', '13693573821', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1439', '北京玉龙易阳科技有限公司', '许玉龙', '许玉龙', '17631141339', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1440', '北京丽景仁亮环保科技有限公司', '张景仁', '庞微', '13701234847', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1441', '北京正彦环绿环保科技有限公司', '王诤', '王诤', '13910925161', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1442', '北京厨宝商用厨具有限公司', '杜坤', '杜爱云', '18600848750', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1443', '北京东方勤达保洁服务有限公司', '郝士军', '贾青枝', '18201505815', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1444', '北京京华屈佳清洁服务有限公司', '彭桂华', '屈兴红', '13910941154', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1445', '北京创森泓润环保科技有限公司', '许东辉', '许东辉', '13161558000', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1446', '北京富甲通达科技发展有限公司', '潘海英', '潘海英', '18210318711', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1447', '北京大润大富科技发展有限公司', '徐玉才', '徐玉才', '13240333203', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1448', '北京洁杰保洁有限公司', '耿春海', '耿春海', '13911850524', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1449', '北京乐晨环保科技有限公司', '许祥强', '许祥强', '13121516396', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1450', '北京乐创洁源家政服务有限公司', '孙健', '孙健', '15133913399', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1451', '北京扬帆洁美保洁服务有限公司', '韩军', '韩军', '13521778962', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1452', '北京贺宇兴程科技发展有限公司', '方华程', '方华程', '18911983356', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1453', '北京岳丰莹利厨房设备有限责任公司', '郭玉利', '宋永梅', '18612895328', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1454', '北京润晟科技有限公司', '宋欢', '宋欢', '17601605786', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1455', '北京东方华谊清洗服务有限公司', '曲桂彬', '马艳华', '13581529249', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1456', '北京兰玫环保科技有限责任公司', '李岩海', '李岩海', '13910994688', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1457', '北京富仕杰商用设备有限公司', '简宏', '张经理', '13521658445', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1458', '北京创科天脉清洁服务有限公司', '李志民', '李志民', '13621321981', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1459', '北京悦祥润达消防器材技术有限公司', '陈利利', '高杰', '13552010172', '查看', '烟道清洗');
INSERT INTO `t_test` VALUES ('1460', '北京众成泽兴消防科技有限公司', '陆志刚', '张元元', '18910733176', '查看', '灭火救援');
INSERT INTO `t_test` VALUES ('1461', '中泰民安安全服务集团有限公司', '赵性仓', '安波', '18910907078', '查看', '灭火救援');
INSERT INTO `t_test` VALUES ('1462', '北京消防协会', 'undefined', '督导', '18510391205', '查看', '灭火救援');
INSERT INTO `t_test` VALUES ('1463', '北京火正消防安全技术研究院有限公司', '侯军峰', '侯军峰', '13801107685', '查看', '灭火救援');
INSERT INTO `t_test` VALUES ('1464', '北京建锋消防工程有限公司', '刘建锋', '刘建锋', '15010192234', '查看', '灭火救援');
INSERT INTO `t_test` VALUES ('1465', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '灭火救援');
INSERT INTO `t_test` VALUES ('1466', '北京恒远劳务服务有限公司', '檀瑞莲', '夏强委', '13910221668', '查看', '灭火救援');
INSERT INTO `t_test` VALUES ('1467', '北京安氧特科技有限公司', '束克庆', '李霞', '13811936125', '查看', '灭火救援');
INSERT INTO `t_test` VALUES ('1468', '北京华商远大电力建设有限公司', '彭勇', '陈晓虹', '15801567953', '查看', '灭火救援');
INSERT INTO `t_test` VALUES ('1469', '北京市劳动保护科学研究所', '张斌', '王培怡', '13810100198', '查看', '事故调查');
INSERT INTO `t_test` VALUES ('1470', '北京泽惠风消防技术有限公司', '王文涛', '王小醒', '13911136208', '查看', '事故调查');
INSERT INTO `t_test` VALUES ('1471', '北京顺安洁消防安全技术有限公司', '张文满', '张文满', '13911021290', '查看', '事故调查');
INSERT INTO `t_test` VALUES ('1472', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '事故调查');
INSERT INTO `t_test` VALUES ('1473', '北京长城研修学院', '李儒树', '沈禛', '17600406718', '查看', '事故调查');
INSERT INTO `t_test` VALUES ('1474', '北京市城市规划设计研究院', 'undefined', '何闽', '88073950', '查看', '法规政策');
INSERT INTO `t_test` VALUES ('1475', '北京瑶新名媛商贸有限责任公司', 'undefined', '张配青', '18516951931', '查看', '法规政策');
INSERT INTO `t_test` VALUES ('1476', '北京火正消防安全技术研究院有限公司', '侯军峰', '侯军峰', '13801107685', '查看', '法规政策');
INSERT INTO `t_test` VALUES ('1477', '北京泽惠风消防技术有限公司', '王文涛', '王小醒', '13911136208', '查看', '法规政策');
INSERT INTO `t_test` VALUES ('1478', '北京博雅建业教育科技有限公司', '张帅', '张帅', '15210629033', '查看', '法规政策');
INSERT INTO `t_test` VALUES ('1479', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '法规政策');
INSERT INTO `t_test` VALUES ('1480', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '消防保险');
INSERT INTO `t_test` VALUES ('1481', '北京东方舜景科技发展有限公司', '胡有恩', '张方方', '15601166669', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1482', '北京广翰消防技术有限公司', '韩宗曙', '孙亚宁', '15718861520', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1483', '京润天城（北京）建设有限公司', '葛辉', '崔国明', '13651006818', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1484', '北京众成泽兴消防科技有限公司', '陆志刚', '张元元', '18910733176', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1485', '北京泰合安消防科技有限公司', 'undefined', '闫冬雪', '18210050289', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1486', '北京市朝航冷气设备有限公司', 'undefined', '米雪', '15910463927', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1487', '北京京达金鼎消防安全技术有限公司', '孙哲', '郑利俊', '13717792388', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1488', '北京泽惠风消防技术有限公司', '王文涛', '王小醒', '13911136208', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1489', '北京鹰翔风景消防科技有限公司', '高伟', '高伟', '13910101405', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1490', '北京华融义缘消防技术有限公司', '王亦男', '郭志成', '18611394145', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1491', '北京佰仕兴隆消防技术有限公司', '武海军', '崔庭婷', '13031020001', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1492', '北京金誉世华消防科技有限公司', '赵宏新', '赵宏新', '13911023512', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1493', '北京华祺洋消防安全有限公司', '孟庆国', '曲丽华', '13693228538', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1494', '北京坤钧枫消防技术有限公司', '韩宗曙', '孙亚宁', '15718861520', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1495', '北京宇伊安全防范技术咨询有限公司', '张洪岩', '张洪岩', '13521216633', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1496', '北京中德启锐安全设备有限公司', '马达伟', '姚婷婷', '18010110668', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1497', '北京弘仁消防安全检测有限公司', '董振亚', '董科跃', '13436575956', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1498', '中国建筑科学研究院有限公司建筑防火研究所', '邱仓虎', '时艳艳', '18001383179', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1499', '北京消兴安顺清洗技术有限公司', '李凤珍', '周迎兵', '13691300332', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1500', '中交华远（北京）建设工程有限公司', '李世国', '邓桂', '010-87220218', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1501', '北京建筑材料检验研究院有限公司', '张增寿', '沈炎明', '13381113002', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1502', '北京祈安顺达消防科技有限公司', '王福旺', '赵丽荣', '13683088605', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1503', '北京盈科创安科技有限公司', '王玉杰', '王玉杰', '13810238907', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1504', '北京秉承工程技术有限公司', '温计虎', '贾红艳', '010-51065003', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1505', '北京佳兴伟业建设工程有限公司', '赵明', '高源泽', '13716564044', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1506', '北京新风绿洲环保科技有限公司', '徐景峰', '李丕拴', '13651052878', '查看', '消防安全检查');
INSERT INTO `t_test` VALUES ('1507', '北京润晟科技有限公司', '宋欢', '宋欢', '17601605786', '查看', '消防安全检查');

-- ----------------------------
-- Table structure for t_test1
-- ----------------------------
DROP TABLE IF EXISTS `t_test1`;
CREATE TABLE `t_test1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `shehuima` varchar(255) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `jingyingdizhi` varchar(255) DEFAULT NULL,
  `faren` varchar(255) DEFAULT NULL,
  `farentel` varchar(255) DEFAULT NULL,
  `lianxiren` varchar(255) DEFAULT NULL,
  `lianxidianhua` varchar(255) DEFAULT NULL,
  `jianjie` varchar(255) DEFAULT NULL,
  `zcjingdu` varchar(255) DEFAULT NULL,
  `zcweidu` varchar(255) DEFAULT NULL,
  `jyjingdu` varchar(255) DEFAULT NULL,
  `jyweidu` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1033 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_test1
-- ----------------------------
INSERT INTO `t_test1` VALUES ('1', '北京攻垢清洁服务有限公司', '91110117MA00BAXP91', '北京市平谷区王辛庄镇北上营西路263号', '北京市平谷区王辛庄镇北上营西路263号', '马亮', '13501390681', '马亮', '13501390681', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('2', '北京航天三发高科技有限公司', '91110106102127600Q', '北京市丰台区云岗北区东里8号', '北京市丰台区云岗北区东里8号', '王延文', '\\N', '王春豪', '13910565205', null, '116.165237', '39.812314', '116.165237', '116.165237', '');
INSERT INTO `t_test1` VALUES ('3', '北京奥博瑞技术服务有限公司', '91110106306507007N', '北京市丰台区大成里秀园13号楼东侧楼三层(卢沟桥企业集中办公区）', '北京市丰台区大成里秀园13号楼东侧楼三层(卢沟桥企业集中办公区）', '周婷婷', '13910233476', '周婷婷', '13910233476', null, '116.2626', '39.892506', '116.2626', '116.2626', '');
INSERT INTO `t_test1` VALUES ('4', '北京岩铄永合环保科技有限公司', '91110108MN008HNE87', '北京市海淀区上庄镇上庄村279号', '北京市海淀区上庄镇上庄村279号', '陈运晓', '13683540653', '冀亚恒', '13520933602', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('5', '北京市城市规划设计研究院', '12110000400709406D', '北京市西城区南礼士路60号', '北京市西城区南礼士路60号', '\\N', '\\N', '何闽', '88073950', null, '116.353337', '39.910039', '116.353337', '116.353337', '');
INSERT INTO `t_test1` VALUES ('6', '北京市劳动保护科学研究所', '121100004006858114', '北京市西城区陶然亭路55号', '北京市西城区陶然亭路55号', '张斌', '010-63536974', '王培怡', '13810100198', null, '116.376448', '39.878889', '116.376448', '116.376448', '');
INSERT INTO `t_test1` VALUES ('7', '北京阿科普机电工程有限公司', '911101076000040059', '实兴大街30号院3号楼2层D-0943房间', '复兴路33号翠微大厦东座12层', '黄智勇', '13501170935', '张逸', '13031117851', null, '116.193593', '39.939335', '116.303904', '116.303904', '');
INSERT INTO `t_test1` VALUES ('8', '中消云（北京）物联网科技研究院有限公司', '91110113MA006NLW86', '北京市顺义区翼之城3号楼506室', '北京市顺义区翼之城3号楼', '肖祖德', '13723479034', '郑飞', '18862119119', null, '116.641562', '40.043012', '116.642234', '116.642234', '');
INSERT INTO `t_test1` VALUES ('9', '北京市洁迅达保洁服务有限公司', '91110102717786346G', '北京市通州区砖厂北里142号楼7层4707', '北京市通州区砖厂北里142号楼7层4707', '张中洲', '13601059285', '张丽娟', '18601229828', null, '116.698138', '39.875336', '116.698138', '116.698138', '');
INSERT INTO `t_test1` VALUES ('10', '琪舰消防工程有限责任公司', '911101137400609145', '北京市顺义区马坡镇毛家营村南大街2号', '北京市顺义区马坡镇毛家营村南大街2号', '范伟博', '13911760088', '赵然', '13811757523', null, '116.608098', '40.184214', '116.608098', '116.608098', '');
INSERT INTO `t_test1` VALUES ('11', '睿佳智慧（北京）科技发展有限公司', '91110101700246706B', '北京市东城区夕照寺西里9号', '北京78-9信箱', '李继东', '18611889189', '李继东', '李继东', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('12', '中国中元国际工程有限公司', '911100001000064426', '北京市海淀区西三环北路5号', '北京市海淀区西三环北路5号', '刘小虎', '68732660', '韩伟', '68732736', null, '116.308442', '39.958156', '116.308442', '116.308442', '');
INSERT INTO `t_test1` VALUES ('13', '中国建筑设计研究院有限公司', '91110000717843400B', '北京市西城区车公庄大街19号', '北京市西城区车公庄大街19号', '宋源', '88328002', '赵锂', '88328008', null, '116.338259', '39.933001', '116.338259', '116.338259', '');
INSERT INTO `t_test1` VALUES ('14', '北京市建设工程质量第二检测所有限公司', '91110102660522816W', '北京市西城区南礼士路62号10号楼', '北京市西城区南礼士路62号10号楼', '张胜', '01088043368', '刘媛', '13811182920', null, '116.354738', '39.908761', '116.354738', '116.354738', '');
INSERT INTO `t_test1` VALUES ('15', '北大青鸟环宇消防设备股份有限公司', '91130700730245739F', '北京市海淀区成府路207号北大青鸟楼', '北京市海淀区成府路207号北大青鸟楼', '蔡为民', '13301296567', '邹瑶', '18600013590', null, '116.318913', '39.993307', '116.318913', '116.318913', '');
INSERT INTO `t_test1` VALUES ('16', '北京科岚环保科技有限公司', '911101147662521138', '北京市昌平区北七家镇歇甲村', '北京市昌平区北七家镇歇甲村', '刘晓飞', '13051280726', '孙登霄', '13051286838', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('17', '北京众合平安消防科技有限责任公司', '91110229MA005HAR5G', '北京市延庆区八达岭镇营城子北路10号1幢一层', '北京市延庆区八达岭镇营城子北路10号1幢一层', '尹杰', '82032387', '李滨', '18519708498', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('18', '清大东方教育科技集团有限公司', '9133088175304020X8', '广渠东路3号中水电国际大厦801', '广渠东路3号中水电国际大厦801', '周金峰', '13906701777', '马浒利', '13701078130', null, '116.502155', '39.893717', '116.502155', '116.502155', '');
INSERT INTO `t_test1` VALUES ('19', '北京蔚穆嘉城科技有限公司', '91110112MA01K9L21G', '北京市通州区砖厂北里142号楼4层5442', '北京市通州区砖厂北里142号楼4层5442', '孙淑江', '13552494889', '张常龙', '13910725666', null, '116.698138', '39.875336', '116.698138', '116.698138', '');
INSERT INTO `t_test1` VALUES ('20', '京诚华信（北京）科技发展有限公司', '91110107MA01L9PM65', '北京市石景山区石景山路乙18号院5号楼12层1312', '北京市石景山区石景山路乙18号院5号楼12层1312', ' 陈少华', '13261625266', ' 陈少华', '13261625266', null, '116.224519', '39.905767', '116.224519', '116.224519', '');
INSERT INTO `t_test1` VALUES ('21', '北京振海名泉商贸有限公司', '91110105599655942N', '北京市朝阳区姚家园西里甲7号院1号楼1层24号', '北京市朝阳区姚家园西里甲7号院1号楼1层24号', '段海彦', '13911341897', '李振兵', '13269999979', null, '116.512438', '39942789', '116.512438', '116.512438', '');
INSERT INTO `t_test1` VALUES ('22', '北京东霖消防科技有限公司', '91110302064943470R', '北京经济技术开发区科创七街29号院4号楼', '北京经济技术开发区科创七街29号院4号楼', '晋宝生', '67806832', '白相东', '15503169743', null, '116.537842', '39.798308', '116.537842', '116.537842', '');
INSERT INTO `t_test1` VALUES ('23', '北京华恒智远环保科技有限公司', '91110112MA00GG2M0K', '北京市通州区经济开发区聚富苑产业园区聚和六街1号-1502', '北京市通州区经济开发区聚富苑产业园区聚和六街1号-1502', '王培', '13910726072', '胡燕', '15311191063', null, '116.703452', '39.686781', '116.703452', '116.703452', '');
INSERT INTO `t_test1` VALUES ('24', '北京华涛恒泰安全技术有限公司', '91110112MA01L97B1P', '北京市通州区张家湾镇北大化村116号9栋二层61', '北京市朝阳区东四环南路53号院2号楼706', '崔有华', '13051316015', '崔有华', '13051316015', null, '', '', '116.485537', '116.485537', '');
INSERT INTO `t_test1` VALUES ('25', '华信中安（北京）保安服务有限公司', '911101065674751381', '北京市丰台区丰北路甲45号楼2层201', '北京市丰台区郭庄子甲一号', '刘新', '63831616', '刘艺桐', '63831616-8216', null, '116.30037', '39.867035', '116.244927', '116.244927', '');
INSERT INTO `t_test1` VALUES ('26', '祖强科技(北京)有限公司', '91110114MA001BPB18', '北京市朝阳区酒仙桥东路18号B座7层', '北京市朝阳区酒仙桥东路18号B座7层', '宋建平', '18140228628', '骆升平', '15811046441', null, '116.499552', '39.974616', '116.499552', '116.499552', '');
INSERT INTO `t_test1` VALUES ('27', '北京环宇湘冀科技有限公司', '91110228MA00CWHU3B', '北京市密云区古北口镇古御路外街11号镇政府办公楼212室-1961（古北口镇集中办公区）', '北京市朝阳区新东郊商城南区南1门B327号', '王宇辉', '13810292726', '徐国瑞', '13366261066', null, '117.163902', '40.692092', '116.53723', '116.53723', '');
INSERT INTO `t_test1` VALUES ('28', '北京宏金华市政工程有限公司', '91110112MA00668K0K', '北京市通州区通朝大街233号（北京北机机电工业有限责任公司.1幢）', '北京市通州区通朝大街233号（北京北机机电工业有限责任公司.1幢）', '张新利', '13801051222', '韩潮', '13811188616', null, '116.63881', '39.892944', '116.63881', '116.63881', '');
INSERT INTO `t_test1` VALUES ('29', '北京吉麦克商贸有限公司', '91110108076605313R', '北京市海淀区远大路39号1号楼7层703-6号', '北京市海淀区远大路39号1号楼7层703-6号', '任朝富', '13911755263', '任朝富', '13911755263', null, '116.276718', '39.957192', '116.276718', '116.276718', '');
INSERT INTO `t_test1` VALUES ('30', '北京京盾永安消防设备销售中心', '91110108742606044N', '体院西路甲二号6号平房', '体院西路甲二号6号平房', '娄文连', '13701133984', '娄文连', '13701133984', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('31', '北京中消永汇科技有限公司', '91110113MA018XNP2E', '北京市顺义区南法信镇信中街12号院7号楼1层102室', '北京市顺义区南法信镇信中街12号院7号楼1层102室', '赵霞', '13910859688', '庞傲丽', '13717899907', null, '116.614336', '40.12057', '116.614336', '116.614336', '');
INSERT INTO `t_test1` VALUES ('32', '北京中宇京安工程技术有限公司', '911101050994470391', '朝阳路67号9号楼1单元1101', '朝阳路67号9号楼1单元1101', '姬芝', '13911197508', '张静静', '13681506756', null, '116.535989', '39.917004', '116.535989', '116.535989', '');
INSERT INTO `t_test1` VALUES ('33', '中建文化旅游发展有限公司', '91110101MA01G04Y95', '北京市东城区青龙胡同甲1号、3号2幢3层316室', '北京市海淀区三里河路15号中建大厦B座7层', '吴宜夏', '13801269744', '韩景夫', '18710047004', null, '116.423361', '39.948624', '116.332548', '116.332548', '');
INSERT INTO `t_test1` VALUES ('34', '北京和兴实盛科技有限公司', '91110111MA01JKNC05', '北京市房山区良乡凯旋大街建设路18号—D6746', '北京市房山区良乡凯旋大街建设路18号—D6746', '张占成', '15028880891', '张占成', '15028880891', null, '116.12697', '39.717786', '116.12697', '116.12697', '');
INSERT INTO `t_test1` VALUES ('35', '北京佳宝利都环保科技有限公司', '91110115692341673Y', '北京市大兴区西红门镇福星花园服务楼1幢3层301室', '北京市大兴区西红门镇福星花园服务楼1幢3层301室', '殷广朋', '13240005666', '殷广朋', '13240005666', null, '116.350331', '39.791206', '116.350331', '116.350331', '');
INSERT INTO `t_test1` VALUES ('36', '北京安瑞洁环保科技有限公司', '91110116MA01DG6U68', '北京市怀柔区北房镇安各庄村302号2门', '北京市怀柔区北房镇安各庄村302号2门', '赵峰', '18515442181', '赵峰', '18515442181', null, '116.702534', '40.334888', '116.702534', '116.702534', '');
INSERT INTO `t_test1` VALUES ('37', '北京感恩工程管理有限公司', '9111022830662200R', '北京市密云区西大桥路69号密云区投资促进局办公楼305室-1401', '北京市密云区西大桥路69号密云区投资促进局办公楼305室-1401', '王明朗', '13522216829', '王明朗', '13522216829', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('38', '北京金生浩达商贸有限公司', '91110116MA003JMG6G', '北京市怀柔区融城北路10号院162号楼405室', '北京市怀柔区融城北路10号院162号楼405室', '王浩达', '13552821905', '王浩达', '13552821905', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('39', '深圳市丰修科技有限公司', '914403003587573159', '北京市顺义区顺航路8号院3幢1层101', '北京市顺义区顺航路8号院3幢1层101', '曾治平', '13925022222', '吴鹏', '13311129865', null, '116.590077', '40.132007', '116.590077', '116.590077', '');
INSERT INTO `t_test1` VALUES ('40', '兰商(北京)科技有限公司', '91110105MA01AC742P', '北京市朝阳区高碑店兴隆西街2号兴隆小区综合楼6层623', '北京市朝阳区高碑店兴隆西街2号兴隆小区综合楼6层623', '刘现震', '13910639127', '刘现震', '13910639127', null, '116.5271', '39.916286', '116.5271', '116.5271', '');
INSERT INTO `t_test1` VALUES ('41', '北京明泰来环保科技有限公司', '91110112567443582A', '聚和一街1号7幢A室', '聚和一街1号7幢A室', '王慧平', '13910726072', '尤思晨', '15203229593', null, '116.702372', '39.674493', '116.702372', '116.702372', '');
INSERT INTO `t_test1` VALUES ('42', '北京正心同洁科技有限公司', '91110117MA01LJD4XJ', '北京市平谷区府前西街40号205室-1944', '十八里店乡孔家井9号', '孟庆岭', '13611121307', '孟庆岭', '13611121307', null, '117.100169', '40.139208', '116.527845，39.846313', '116.527845，39.846313', '');
INSERT INTO `t_test1` VALUES ('43', '北京鸿盛洁环保科技有限公司', '91110113MA01LKXW9M', '北京市顺义区顺畅大道14号院6号楼3层310', '北京市顺义区顺畅大道14号院6号楼3层310', '杨晓英', '15011255859', '徐国瑞', '13366261066', null, '116.598541', '40.128825', '116.598541', '116.598541', '');
INSERT INTO `t_test1` VALUES ('44', '北京嘉和乐保洁服务有限公司', '91110116MA00HA5E3W', '北京市怀柔区桥梓镇兴桥大街1号南楼203室', '北京市朝阳区黑庄户万子营', '屈红喜', '15110143963', '李永丽', '13552941030', null, '116.573816', '40.290222', '', '', '村');
INSERT INTO `t_test1` VALUES ('45', '北京玉海利华保洁有限公司', '911101066669146690', '北京市丰台区菜户营58号14层1407', '北京市丰台区菜户营58号14层1407', '季玉峰', '13641034054', '季玉峰', '13716245167', null, '116.347897', '39.872036', '116.347897', '116.347897', '');
INSERT INTO `t_test1` VALUES ('46', '北京艾德艾嘉商贸有限公司', '91110111MA00857X98', '北京市房山区窦店镇田家园村村委会北200米', '北京市房山区窦店镇田家园村村委会北200米', '杨丽', '18610153887', '杨丽', '18610153887', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('47', '北京信诚佳美保洁有限公司', '91110107565838927D', '北京市石景山区古城西路113号4层437', '北京市石景山区古城西路113号4层437', '刘丽', '18001375558', '张菁', '13910815027', null, '116.178315', '39.915077', '116.178315', '116.178315', '');
INSERT INTO `t_test1` VALUES ('48', '亚太龙润（北京）能源科技有限公司', '91110105MA0050NC9T', '北京市朝阳区十里堡1号118号楼120室', '北京市丰台区中福丽宫5号楼221室', '张洪伟', '13911830349', '张洪伟', '13911830349', null, '116.499315', '39.918147', '116.354809', '116.354809', '');
INSERT INTO `t_test1` VALUES ('49', '北京兴业恒达建设工程有限公司', '91110115MA01HNUE97', '北京市大兴区天华街9号院16号楼5层508', '北京市大兴区天华街9号院16号楼5层508', '付世余', '13263337888', '高亮', '13810818521', null, '116.311777', '39.685395', '116.311777', '116.311777', '');
INSERT INTO `t_test1` VALUES ('50', '北京顺兴顺通环保科技有限公司', '91110113L54034460M', '北京市顺义区李桥镇西大坨村幸福街9号', '北京市顺义区南彩镇左堤路1号', '周成斌', '15120061161', '周成斌', '15120061161', null, '', '', '116.682077', '116.682077', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('51', '北京策琳腾达消防工程服务有限公司', '91110106344276633J', '田园街四眼井合同36号', '北京市平谷区园田街四眼井胡同36号', '王航宇', '13661378200', '王翔宇', '13381226037', null, '117.125099', '40.135996', '117.125099', '117.125099', '');
INSERT INTO `t_test1` VALUES ('52', '北京海盛保洁服务有限公司', '91110105MA01LMYRX2', '北京市朝阳区红军营南路36号院2号楼1至7层101号6层625', '北京市朝阳区红军营南路36号院2号楼1至7层101号6层625', '杨冬生', '18600297328', '杨冬生', '18600297328', null, '116.415396', '40.032284', '116.415396', '116.415396', '');
INSERT INTO `t_test1` VALUES ('53', '北京鹏轩环保服务有限公司', '91110109MA01L82D32', '北京市门头沟区妙峰山镇政府大院南楼MFS1319室', '北京市门头沟区妙峰山镇政府大院南楼MFS1319室', '王小红', '13811927991', '王小红', '13811927991', null, '116.050366', '39.975815', '116.050366', '116.050366', '');
INSERT INTO `t_test1` VALUES ('54', '北京空港新风中央空调清洗有限公司', '911101136669206124', '北京市顺义区李桥镇任李路沿河段162号', '北京市顺义区李桥镇任李路沿河段162号', '聂晨毅', '13501006556', '李秀钰', '13811465625', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('55', '北京坤辰伟业环保科技有限公司', '91110112353002482J', '北京市通州区潞城镇胡郎路80号561室', '北京市通州区宋庄镇葛渠村284号', '辛建坤', '13552917028', '辛建坤', '13552917028', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('56', '北京华烨信通信息技术有限公司', '91110115678792638K', '北京市大兴区黄村镇香海园7号楼2单元302室', '北京市丰台区南四环西路128号诺德中心四号楼6层602', '石洁', '18612552225', '张寒灼', '18513660281', null, '116.298454', '39.829527', '116.298454', '116.298454', '');
INSERT INTO `t_test1` VALUES ('57', '北京新松融通机器人科技有限公司', '91110106MA01ELHA1T', '北京市丰台区南四环西路186号四区3号楼2层', '北京市丰台区南四环西路186号四区3号楼2层', '李胜', '18610033386', '乐丹', '13161166679', null, '116.29574', '39.820792', '116.29574', '116.29574', '');
INSERT INTO `t_test1` VALUES ('58', '北京四季共享环保科技有限公司', '91110113MA01LFB2XM', '高丽营镇文宫村北（临空二路1号科技创新功能区）', '高丽营镇文宫村北（临空二路1号科技创新功能区）', '龚会丽', '13717740346', '龚会丽', '13717877132', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('59', '北京鸿创佳誉环保科技有限公司', '91110228MA01HNPQSE', '北京市密云区长安商业街2号楼6号', '北京市密云区长安商业街2号楼6号一层', '穆蕊', '13911550025', '马跃', '18811184111', null, '116.84378', '40.374817', '116.84378', '116.84378', '');
INSERT INTO `t_test1` VALUES ('60', '北京利颖润洁环保科技有限公司', '91110116MA01FQRB2G', '北京市怀柔区庙城镇彩各庄村184号2门', '北京市怀柔区庙城镇彩各庄村184号2门', '傅颖秀', '18612038276', '石其海', '13693205160', null, '116.637649', '40.280275', '116.637649', '116.637649', '');
INSERT INTO `t_test1` VALUES ('61', '北京耀邦环保技术开发有限公司', '91110105766285660C', '北京市朝阳区金盏乡马各庄南工业区甲8号', '北京市朝阳区管庄路150号东方华瑞A座401室', '李刚', '13911229858', '王士友', '13810096896', null, '116.592457', '39.946735', '116.590995', '116.590995', '');
INSERT INTO `t_test1` VALUES ('62', '北京美雅洁环境科技有限公司', '91110106MA0096ED84', '北京市丰台区黄土岗村12号A座五层50235室', '北京市丰台区五里店南里小区37号楼8门001室', '姜立强', '13311166878', '姜立强', '13311166878', null, '116.330798', '39.831838', '116.257719', '116.257719', '');
INSERT INTO `t_test1` VALUES ('63', '北京中鼎华康环保科技有限公司', '91110116MA018LWE71', '北京市怀柔区雁栖经济开发区雁栖路33号院1号楼103室', '北京市怀柔区雁栖经济开发区雁栖路33号院1号楼103室', '武兆忠', '15011030061', '武兆忠', '15011030061', null, '116.683115', '40.352056', '116.683115', '116.683115', '');
INSERT INTO `t_test1` VALUES ('64', '北京久安正华消防科技有限公司', '91110107788981843H', '石景山区古城大街西侧古城旅馆1号楼一层2102室', '西城区鸭子桥路39号院9号楼2层', '孟凡龙', '13011179512', '孟凡龙', '13011179512', null, '116.186295', '39.910731', '116.345169', '116.345169', '');
INSERT INTO `t_test1` VALUES ('65', '北京中山消防保安技术有限公司', '91110228600054539E', '北京市密云区穆家峪镇穆峪南街1号镇政府办公楼401室-32（穆家峪镇集中办公区）', '北京市西城区金融街33号通泰大厦c915', '俞楚明', '13901058092', '刘洋', '18600269423', null, '116.943573', '40.41132', '116.358611', '116.358611', '');
INSERT INTO `t_test1` VALUES ('66', '北京鑫昊天成环保科技有限公司', '91110116MA01LBAP0A', '北京市怀柔区开放东路13号院4号楼第三层办公区302室', '北京市怀柔区开放东路13号院4号楼第三层办公区302室', '刘志伟', '13581582368', '刘志伟', '13581582368', null, '116.651816', '40.322918', '116.651816', '116.651816', '');
INSERT INTO `t_test1` VALUES ('67', '北京上元天下水处理设备中心', '91110106102231969T', '北京市丰台区小郭庄西路43号3层301 ', '北京市丰台区小郭庄西路43号3层301 ', '张海峰', '13693606613', '张海峰', '13693606613', null, '116.222482', '39.86374', '116.222482', '116.222482', '');
INSERT INTO `t_test1` VALUES ('68', '北京众邦京安消防工程有限公司', '91110113MA01D51GXW', '北京市顺义区怡馨家园13号楼208室', '北京市顺义区怡馨家园13号楼208室', '郎振东', '13911358596', '郎振东', '13810223539', null, '116.649305', '40.121462', '116.649305', '116.649305', '');
INSERT INTO `t_test1` VALUES ('69', '北安清洗（北京）有限公司', '91110117085481025Q', '北京市平谷区马坊镇金河街106号院5号楼7层720', '北京市平谷区马坊镇金河街106号院5号楼7层720', '任彬', '15301069110', '于磊', '13811221692', null, '117.009175', '40.058907', '117.009175', '117.009175', '');
INSERT INTO `t_test1` VALUES ('70', '北京宇润铭泰环保科技有限公司', '91110228MA00AP9E1N', '北京市密云区大城子镇政府东侧海惠城综合楼101室1762（大城子镇集中办公区）', '北京市密云区大城子镇政府东侧海惠城综合楼101室1762（大城子镇集中办公区）', '刘丹', '15321387818', '陈勇刚', '15321158062', null, '117.109668', '40.392935', '117.109668', '117.109668', '');
INSERT INTO `t_test1` VALUES ('71', '北京暖赢高压水清洗科技有限公司', '9111010530641576X1', '北京市朝阳区三间房乡西柳村中街（三间房动漫集中办公区1446号）', '北京市朝阳区三间房乡茶家坟道桥一分公司', '崔暖侠', '13855758532', '张伟', '13718862599', null, '116.569701', '39.903207', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('72', '北京金顿教育科技有限公司', '91110108327137164D', '北京市海淀区西郊北洼路1区195幢1层094', '北京市海淀区西郊北洼路1区195幢1层094', '于兵', '13366775506', '于兵', '13366775506', null, '116.340112', '40.042086', '116.340112', '116.340112', '');
INSERT INTO `t_test1` VALUES ('73', '北京弘易源科技发展有限公司', '9111011708550256XF', '北京市平谷区平谷镇金海小区14号楼1层（2）-1-2', '北京市平谷区平谷镇金海小区14号楼1层（2）-1-2', '赵洪昌', '13911898478', '赵洪昌', '13911898478', null, '117.096982', '40.136965', '117.096982', '117.096982', '');
INSERT INTO `t_test1` VALUES ('74', '北京秦岭环境工程有限公司', '91110112MA01LLX938', '北京市通州区恒业北七街6号院15号楼1层101', '北京市通州区恒业北七街6号院15号楼1层101', '李栓强', '13311386138', '兰静', '13811332045', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('75', '北京利金源消防工程有限公司', '911102283179522456', '高岭镇政府办公楼208室-518', '绿洲开发区', '刘晓华', '13701139250', '于海燕', '18516858768', null, '117.110965', '40.604451', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('76', '北京高洁恒通科技有限责任公司', '91110105560392647Q', '北京市朝阳区新源南路6号京城大厦2006A', '北京市朝阳区新源南路6号京城大厦2006A', '刘庆斌', '13901097240', '刘庆斌', '13901097240', null, '116.45303', '39.947381', '116.45303', '116.45303', '');
INSERT INTO `t_test1` VALUES ('77', '北京丽洁环通保洁服务有限公司', '91110106563659175M', '北京市丰台区青塔西路58号院21号楼1层07室', '北京市丰台区青塔西路58号院21号楼1层07室', '田玉伟', '13811935318', '田玉伟', '13811935318', null, '116.265283', '39.880579', '116.265283', '116.265283', '');
INSERT INTO `t_test1` VALUES ('78', '北京中森世纪环保科技有限公司', '911101060741836714', '和光里1号1层3单元1003', '和光里1号1层3单元1003', '崔秀花', '18911807251', '臧雪冬', '18911807251', null, '116.261716', '39.86225', '116.261716', '116.261716', '');
INSERT INTO `t_test1` VALUES ('79', '北京嘉梵玺盛环保科技有限公司', '91110116MA01M4E087', '北京市怀柔区开放东路1号1幢3层3052室', '北京市怀柔区开放东路1号1幢3层3052室', '赫一男', '18618263477', '赫一男', '18618263477', null, '116.658422', '40.321741', '116.658422', '116.658422', '');
INSERT INTO `t_test1` VALUES ('80', '北京鹏成清洁有限责任公司', '91110114MA01LCYX1F', '北京市昌平区城南街道北郝庄村191号北房001室', '北京市昌平区城南街道北郝庄村191号北房001室', '刘汝冬', '13910951367', '刘汝冬', '13910951367', null, '116.209877', '40.221882', '116.209877', '116.209877', '');
INSERT INTO `t_test1` VALUES ('81', '北京家兴通达保洁有限公司', '91110228MA0039F97T', '北京市密云区西田各庄镇黄坨子村西街801号', '北京市密云区西田各庄镇黄坨子村西街801号', '郭春生', '13718372996', '郭春生', '13718372996', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('82', '北京茗钧一涵商贸有限公司', '911101055548248294', '北京市朝阳区北苑2号院（北苑路66号）中国民用飞机开发公司宾馆内209室', '北京市朝阳区北苑2号院（北苑路66号）中国民用飞机开发公司宾馆内209室', '刘宁', '18611255990', '刘伟轮', '13701190380', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('83', '北京宜万家保洁有限公司', '91110228MA01M40Y75', '北京市密云区太师屯镇上庄子村不管峪167号', '北京市密云区太师屯镇上庄子村不管峪167号', '刁宝龙', '15801693317', '朱仔倩', '13811342197', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('84', '庞德迪隆（北京）智能科技有限公司', '91110228MA002NNFX3', '大桥路67号十里堡镇政府办公隆407室－2172', '大桥路67号十里堡镇政府办公隆407室－2172', '张多福', '13911889094', '苏正樱', '13911889094', null, '116.801516', '40.358509', '116.801516', '116.801516', '');
INSERT INTO `t_test1` VALUES ('85', '北京玖和恒昌伟业清洁服务有限公司', '91110106080474707M', '北京市房山区燕山岗北路2号D座二层3103', '北京市房山区燕山岗北路2号D座二层3103', '杨先念', '13552311294', '杨先念', '13552311294', null, '115.970304', '39.752569', '115.970304', '115.970304', '');
INSERT INTO `t_test1` VALUES ('86', '易众创客（北京）企业管理有限责任公司', '91110115MA01GP484E', '北京市大兴区金星路12号院4号楼3501室', '北京市大兴区金星路12号院4号楼3501室', '祖国松', '13331068329', '赵仿', '15901510035', null, '116.349475', '39.7621', '116.349475', '116.349475', '');
INSERT INTO `t_test1` VALUES ('87', '北京顺安洁环保科技有限公司', '91110112MA01LJM55E', '北京市通州区中关村科技园通州园金桥科技产业基地景盛南四街15号2号楼2G', '北京市通州区中关村科技园通州园金桥科技产业基地景盛南四街15号2号楼2G', '张文满', '13911021290', '张文满', '13911021290', null, '116.567905', '39.731393', '116.567905', '116.567905', '');
INSERT INTO `t_test1` VALUES ('88', '北京宏乐清洗服务有限公司', '91110108MA0048NG89', '北京市海淀区学清路甲18号西小楼一层1104室', '北京市海淀区学清路甲18号西小楼一层1104室', '张彬', '15010483518', '张彬', '张彬', null, '116.355866', '40.047147', '116.355866', '116.355866', '');
INSERT INTO `t_test1` VALUES ('89', '北京华盾永安消防科技有限公司', '91110140673324726', '回龙观镇发展路8号院5号楼1层109', '西北旺镇屯佃村临1号', '关永红', '18600945681', '关永红', '18600945681', null, '116.293998', '40.104927', '116.21377', '116.21377', '');
INSERT INTO `t_test1` VALUES ('90', '北京科蓝环保工程有限公司', '92110111L84431328F', '大石窝镇南尚乐村政府路9号', '大石窝镇南尚乐村政府路9号', '张洪伟', '13833039755', '郝立新', '13621252792', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('91', '北京泰迪沃清洁用品有限公司', '91110114786182407D', '北京市昌平区百善镇百善村948号', '北京市昌平区绿创环保大厦2号楼3A07室', '李印发', '65069292', '李卫国', '13701156027', null, '', '', '116.24863', '116.24863', '');
INSERT INTO `t_test1` VALUES ('92', '北京亿洁净环保有限公司', '91110113MA01ME0A8Y', '北京市顺义区仁和镇仁和园二街4号院7号楼5-201', '北京市顺义区仁和镇仁和园二街4号院7号楼5-201', '朱坤', '13240129885', '朱坤', '010-57454707', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('93', '北京同华兴达环境工程技术有限公司', '91110115MA01LUTH8W', '北京市大兴区旧桥路25号院9号楼3层305', '北京市大兴区旧桥路25号院9号楼3层305', '许丹华', '13436495327', '靳宝同', '18610308504', null, '116.45521', '39.792779', '116.45521', '116.45521', '');
INSERT INTO `t_test1` VALUES ('94', '北京蓝保清洁服务有限公司', '91110115MA01CUA411', '枣园路28号院1号楼2层201-145', '康庄中巷4号院5号楼6单元302', '徐现成', '13811972261', '徐现成', '13811972261', null, '116.314939', '39.752689', '116.311866', '116.311866', '');
INSERT INTO `t_test1` VALUES ('95', '北京一只船教育科技有限公司', '91110105MA003Y8Y5T', '北京市朝阳区劲松三区甲302楼13层1306A室', '北京市昌平区中腾建华商务大厦3层', '王凯飞', '18513115191', '王奥', '15200820901', null, '116.460244', '39.882901', '116.335924', '116.335924', '');
INSERT INTO `t_test1` VALUES ('96', '北京雅林士博建筑工程有限公司', '91110108101401639B', '北京市石景山区杨庄路70号院5号楼1层', '北京市石景山区杨庄路70号院5号楼1层', '林山', '13801137376', '王雅婷', '18600171758', null, '116.187987', '39.92179', '116.187987', '116.187987', '');
INSERT INTO `t_test1` VALUES ('97', '北京市西城区中磊职业技能培训学校', '521101025731502417', '北京市西城区宣武门外大街25号富豪写字楼四层401', '北京市西城区宣武门外大街25号富豪写字楼四层401', '张磊', '13911448084', '张磊', '13911448084', null, '116.373864', '39.897321', '116.373864', '116.373864', '');
INSERT INTO `t_test1` VALUES ('98', '北京新朝商贸有限公司', '91110111MA01M5FT4A', '北京市房山区窦店镇山水汇豪苑60号楼12层八单元1201', '北京市房山区窦店镇山水汇豪苑60号楼12层八单元1201', '古连辉', '17772521503', '古连辉', '17772521503', null, '116.072531', '39.647522', '116.072531', '116.072531', '');
INSERT INTO `t_test1` VALUES ('99', '北京来菜乐科技有限公司', '91110116MA008P4712', '雁栖经济开发区乐园大街38号', '融城北路10号院73号楼1层107', '靳军', '18510880158', '靳军', '18510880158', null, '116.672111', '40.345102', '116.635459', '116.635459', '');
INSERT INTO `t_test1` VALUES ('100', '北京百方教育咨询有限公司', '911101050741376165', '北京市顺义区天竺空港工业区B区安庆大街9号5幢2层202室', '北京市顺义区天竺空港工业区B区安庆大街9号5幢2层202室', '辛伟', '15210304868', '辛伟', '15210304868', null, '116.544738', '40.096554', '116.544738', '116.544738', '');
INSERT INTO `t_test1` VALUES ('101', '北京东方舜景科技发展有限公司', '91110105MA006QBL24', '双营路2号院12号楼一层105内105-2-2', '双营路2号院12号楼一层105内105-2-2', '胡有恩', '13426251312', '张方方', '15601166669', null, '116.426881', '40.037212', '116.426881', '116.426881', '');
INSERT INTO `t_test1` VALUES ('102', '北京圣邦环境科技有限公司', '91110114306392887B', '北京市昌平区南邵镇三合庄村三合街46号', '北京市昌平区南邵镇三合庄村三合街46号', '孙立峰', '18911957845', '李亚周', '18510088305', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('103', '北京龙链科技有限公司', '91110106MA002MAJ7M', '马家堡东路106号2号楼9层909', '马家堡东路106号2号楼9层909', '高彦彬', '18210429883', '高志超', '18210429883', null, '116.387015', '39.841377', '116.387015', '116.387015', '');
INSERT INTO `t_test1` VALUES ('104', '北京嘉伯瑞科技有限公司', '9111011635157417X3', '北京市怀柔区雁栖经济开发区乐园大街17号2层', '北京市怀柔区雁栖经济开发区乐园大街17号2层', '李国荣', '13910003337', '李国荣', '13910003337', null, '116.687279', '40.348705', '116.687279', '116.687279', '');
INSERT INTO `t_test1` VALUES ('105', '北京峰涛立洁保洁有限公司', '91110105071749078J', '北京市昌平区城北街道商业街30号三层302', '北京市昌平区城北街道商业街30号三层302', '李涛', '13311533523', '王越奇', '18901126770', null, '116.231687', '40.214909', '116.231687', '116.231687', '');
INSERT INTO `t_test1` VALUES ('106', '北京力佳洁环保科技有限公司', '91110114MA01MABU0P', '北京市昌平区科技园区振兴路28号2号楼324A', '北京市昌平区科技园区振兴路28号2号楼324A', '李霞', '17301074836', '李霞', '17301074836', null, '116.248617', '40.2076', '116.248617', '116.248617', '');
INSERT INTO `t_test1` VALUES ('107', '北京众安美悦科技有限公司', '91110108MA01L39B8L', '北京市海淀区志强北园30号楼1层125', '北京市海淀区志强北园30号楼1层125', '王胜堂', '15311064655', '王胜堂', '15311064655', null, '116.36613', '39.95407', '116.36613', '116.36613', '');
INSERT INTO `t_test1` VALUES ('108', '北京国禾安全技术有限公司', '91110105MA004ELR1H', '北京朝阳区高碑店乡西店村56号楼5号一层', '北京朝阳区高碑店乡西店村56号楼5号一层', '唐念嫄', '18618292972', '王硕', '13811705213', null, '116.519709', '39.904736', '116.519709', '116.519709', '');
INSERT INTO `t_test1` VALUES ('109', '北京鑫淼一洁家政服务有限公司', '91110116ma01mllw01', '北京市怀柔区融城北路10号院1号楼8层820', '北京市怀柔区融城北路10号院1号楼8层820', '乔石', '18611618555', '乔石', '18611618555', null, '116.6361', '40.297848', '116.6361', '116.6361', '');
INSERT INTO `t_test1` VALUES ('110', '北京修哪儿互联网科技有限公司', '91110108330337327R', '北京海淀区阜成路11号3号楼第四层419-421室', '北京市海淀区皂君庙路国家农业科技创新园北圃场', '杨一萌', '18501258927', '马晓雨', '13801058260', null, '116.326325', '39.921589', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('111', '北京绿新源环保科技有限公司', '91110228MA01M6R9X0', '北京市密云区雁密路97号院2号1层101等4套(2号楼1层101-120室)', '北京市密云区雁密路97号院2号1层101等4套(2号楼1层101-120室)', '孙小梅', '13910352852', '罗志刚', '15311221587', null, '116.756175', '40.366677', '116.756175', '116.756175', '');
INSERT INTO `t_test1` VALUES ('112', '北京新风高科工程技术有限工公司', '91110108787773209P', '上地佳园7号楼2单元302室', '永丰中路99号颐和山庄玉华园134号', '曲军瑞', '18518880285', '王耀爽', '13810639335', null, '116.240412', '40.047727', '116.240412', '116.240412', '');
INSERT INTO `t_test1` VALUES ('113', '北京紫柏真可环保科技有限公司', '91110105MA01MKML4M', '北京市朝阳区安翔路2号1幢一层房间17', '北京市朝阳区安翔路2号1幢一层房间17', '贾德保', '13146660809', '罗志刚', '15311221587', null, '116.38567', '39.990466', '116.38567', '116.38567', '');
INSERT INTO `t_test1` VALUES ('114', '北京嘉乐汇环保科技有限公司', '91110105MA01KTR91T', '北京市朝阳区拂林路9号16层A单元1802', '北京市朝阳区拂林路9号16层A单元1802', '姚俊华', '\\N', '13511025276', '13511025276', null, '116.413641', '40.023898', '116.413641', '116.413641', '');
INSERT INTO `t_test1` VALUES ('115', '北京豫洁雅环保科技有限公司', '911101060994473468', '北京市丰台区看丹村南8号1层-43', '北京市丰台区看丹村南8号1层-43', '刘传中', '13718646785', '呼利梅', '13521525374', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('116', '北京永信志成环保科技有限公司', '911110111MA01JU5J0L', '北京市房山区长阳万兴路86号-A5217', '北京市房山区长阳万兴路86号-A5217', '孙彪', '18311218708', '孙彪', '18311218708', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('117', '北京清尘环保科技有限公司', '91110111MA01DF0R02', '北京市房山区良乡拱辰大街181号1幢4层413', '北京市房山区良乡拱辰大街181号1幢4层413', '张志灵', '18511075060', '呼利梅', '13521525374', null, '116.141801', '39.732089', '116.141801', '116.141801', '');
INSERT INTO `t_test1` VALUES ('118', '北京经典之家装饰工程有限公司', '91110116L37967752R', '北京市怀柔区北房镇新房子村66号', '北京市怀柔区北房镇新房子村66号', '李汉忠', '13910885892', '李汉忠', '13910885892', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('119', '北京爱洁环保服务有限公司', '91110112MA01MJYG7T', '北京市通州区鑫隅三街11号院15号楼1层101-31', '北京市昌平区陈家营西路1号院', '邓意春', '13452603676', '邓意春', '13452603676', null, '', '', '116.399724', '116.399724', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('120', '绿众恒源（北京）环保科技有限公司', '	91110228MA01MJQ56M', '	北京市密云区车站路17号10幢等51幢(44幢1层101商业部分用于经营）', '	北京市密云区车站路17号10幢等51幢(44幢1层101商业部分用于经营）', '谢为民', '15811166454', '谢为民', '15811166454', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('121', '北京创卫环境工程有限公司', '91110116MA01MACYX7', '北京市怀柔区怀北镇怀北路308号', '北京市通州区白庙村105号', '李国刚', '18518489969', '李国刚', '18518489969', null, '116.688223', '40.389386', '', '', '村');
INSERT INTO `t_test1` VALUES ('122', '北京净邦到家保洁服务有限公司', '91110113MA01CHL89H', '北京市顺义区北小营府前街7号2幢1层133室', '北京市顺义区北小营府前街7号2幢1层133室', '庞静', '13011502099', '庞静', '13011502099', null, '116.729811', '40.19963', '116.729811', '116.729811', '');
INSERT INTO `t_test1` VALUES ('123', '北京易时分教育科技有限公司', '91110105MA006G8F7K', '北京市昌平区黄平路19号院2号9层912', '北京市昌平区黄平路19号院2号9层912', '白洋', '18634203221', '白洋', '18634203221', null, '116.348629', '40.066671', '116.348629', '116.348629', '');
INSERT INTO `t_test1` VALUES ('124', '北京安宏兴消防器材有限公司', '911101057376826917', '北京市朝阳区广渠东路3号院中水电国际大厦附楼4层432', '北京市朝阳区广渠东路3号院中水电国际大厦附楼4层432', '郜爱云', '13901036842', '郜风云', '13911861852', null, '116.501892', '39.894632', '116.501892', '116.501892', '');
INSERT INTO `t_test1` VALUES ('125', '北京清新俞洁科技有限公司', '91110106MA008UXTXP', '良乡凯旋大街建设路18号-D6420', '绿丰家园37号楼3单元401', '孙庆岭', '18911376031', '孙庆岭', '18911376031', null, '116.129157', '39.717095', '116.58105', '116.58105', '');
INSERT INTO `t_test1` VALUES ('126', '北京乐润永鑫消防工程有限公司', '911101056883579470', '北京市朝阳区广渠东路3号院中水电国际大厦7-435', '北京市朝阳区广渠东路3号院中水电国际大厦7-435', '郜爱云', '13901036842', '缪永军', '13911861852', null, '116.501805', '39.893739', '116.501805', '116.501805', '');
INSERT INTO `t_test1` VALUES ('127', '北京祥辰洁净环保科技有限公司', '91110116MA018PNG7N', '北京市怀柔区北房镇幸福西街1号301', '北京市怀柔区北房镇幸福西街1号301', '白攀攀', '15801335886', '白攀攀', '15801335886', null, '116.701645', '40.327', '116.701645', '116.701645', '');
INSERT INTO `t_test1` VALUES ('128', '北京永发平安环保科技有限公司', '91110105MA0188070G', '东三环南路19号院1号楼-2至15层101内三层A406号', '东三环南路19号院1号楼-2至15层101内三层A406号', '张长有', '16601190191', '臧雪冬', '18911807251', null, '116.459808', '39.868272', '116.459808', '116.459808', '');
INSERT INTO `t_test1` VALUES ('129', '北京盛世茂宏环保科技有限公司', '91110113MA01MPY45T', '北京市顺义区龙湾屯镇府前街13号东楼404 ', '北京市顺义区龙湾屯镇府前街13号东楼404 ', ' 高钰沛', '18203885319', ' 高钰沛', '18203885319', null, '116.857644', '40.232381', '116.857644', '116.857644', '');
INSERT INTO `t_test1` VALUES ('130', '防消网校教育科技（天津）有限公司', '91120118MA06PBG78R', '天津自贸试验区(中心商务区)熙元广场1-2012(天津市铠汇商务秘书有限公司托管第176号) ', '怀柔区九渡河镇安四路鳞象科技园', '任鹏丽', '18801231119', '赵建宝', '18888822230', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('131', '江苏壹壹玖教育科技有限公司北京分公司', '91110302MA01BE7T86', '北京市北京经济技术开发区地盛中路3号1幢A座203室 查看地址', '北京朝阳建外大街12号外贸办公大楼4层416', '王雪峰', '15801558457', '刘六成', '13911004727', null, '116.502024', '39.786919', '116.450101', '116.450101', '');
INSERT INTO `t_test1` VALUES ('132', '北京鸿隅恒祥环保科技有限公司', '91110111MA01MQ2K5M', '北京市房山区长阳万兴路86号-N518 ', '北京市房山区长阳万兴路86号-N518 ', '王志国', '13582788615', '张雪', '13683615045', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('133', '舜创（北京）环保科技有限公司', '91110105306341254X', '北京市朝阳区建国路77号2801内2807A单元', '北京市朝阳区十里堡甲3号都会国际A座18A', '刘颖达', '18601303101', '周琳', '13810284654', null, '116.480235', '39.909191', '116.501628', '116.501628', '');
INSERT INTO `t_test1` VALUES ('134', '北京鑫亿宏环保科技有限公司', '91110116MA01MQMF19', '北京市怀柔区开放东路13号院4号楼第三层办公区302室 ', '北京市怀柔区开放东路13号院4号楼第三层办公区302室 ', '张超鹏', '13910952871', '张超鹏', '13910952871', null, '116.651873', '40.32291', '116.651873', '116.651873', '');
INSERT INTO `t_test1` VALUES ('135', '北京玖和恒昌环保科技有限公司', '91110116MA0193P12L', '北京市怀柔区桥梓镇兴桥大街1号南楼203室', '北京市怀柔区桥梓镇兴桥大街1号南楼203室', '胡小陆', '13671179130 ', '胡小陆', '13671179130 ', null, '116.573816', '40.290222', '116.573816', '116.573816', '');
INSERT INTO `t_test1` VALUES ('136', '北京鑫皓超燃厨具设备有限公司', '911101063512824684', '北京市石景山区八角西街36号一号主楼一层105 ', '北京市石景山区八角西街36号一号主楼一层105 ', '胡灵芝', '15300248577', '胡灵芝', '13371466667', null, '116.199024', '39.913984', '116.199024', '116.199024', '');
INSERT INTO `t_test1` VALUES ('137', '北京融成伟业物业管理有限公司', '91110112MA00DH01R', '滨河中路281号1至2层281B区007', '娘娘府2号院28号楼', '娄成奎', '13621161619', '于杰', '17701303670', null, '116.691132', '39.901461', '116.240914', '116.240914', '');
INSERT INTO `t_test1` VALUES ('138', '北京中富麒麟商贸有限公司', '91110112MA01DF9903', '张家湾镇北大化村116号9幢二层D026', '朝新嘉园东里六区8号楼1302', '刘晓艳', '13718173107', '何治宏', '13718173107', null, '', '', '116.554556', '116.554556', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('139', '北京丰鑫宏业环保服务有限公司', '91110109MA01MAEB4D', '北京市门头沟区石龙工业区龙园路甲5号3幢103室', '北京市门头沟区石龙工业区龙园路甲5号3幢103室', '王洪锋', '13717805881', '王洪锋', '13717805881', null, '116.114142', '39.902296', '116.114142', '116.114142', '');
INSERT INTO `t_test1` VALUES ('140', '北京优阳盛隆科技有限公司', '91110228MA01KEMQ82', '北京市密云区太师屯镇永安街143号镇政府办公楼415室-3634(太师屯镇集中办公区)', '北京市密云区太师屯镇永安街143号镇政府办公楼415室-3634(太师屯镇集中办公区)', '申晓伟', '13520255646', '申晓伟', '13520255646', null, '117.128415', '40.537992', '117.128415', '117.128415', '');
INSERT INTO `t_test1` VALUES ('141', '北京鑫辰浩达环保设备科技有限公司', '91110113MA00GY3E0M', '高丽营镇张喜庄商业街东区68号', '高丽营镇张喜庄商业街东区68号', '吴艳', '17319169182', '黄海年', '17701259957', null, '116.56182', '40.149169', '116.56182', '116.56182', '');
INSERT INTO `t_test1` VALUES ('142', '北京千禧龙厨房设备有限公司', '91110105742641528W', '北京市朝阳区金盏乡沙窝村西', '北京市顺义区李桥镇沿河段37号', '陈进珍', '13901139681', '陈进珍', '13901139681', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('143', '北京凯达鑫环保科技有限公司', '91110115MA01MW1W3R', '北京市大兴区地铁大兴线生物医药基地站地上三层3F-167', '北京市大兴区地铁大兴线生物医药基地站地上三层3F-167', '刘亮', '17611425686', '刘亮', '17611425686', null, '116.321662', '39.68651', '116.321662', '116.321662', '');
INSERT INTO `t_test1` VALUES ('144', '北京恒博远通厨房设备有限公司', '91110116685119855T', '北京市怀柔区长哨营满族乡大沟村70号', '泉河街道开放路80-2', '于连奎', '13910813896', '于连奎', '13910813896', null, '', '', '116.645268', '116.645268', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('145', '北京宏达佳业保洁服务有限公司', '91110108593838668U', '北京市海淀区厢黄旗2号楼2层X06-878室 ', '北京市海淀区厢黄旗2号楼2层X06-878室 ', '孙萌萌 ', '13261260117', '孙萌萌 ', '13261260117', null, '116.29466', '40.024357', '116.29466', '116.29466', '');
INSERT INTO `t_test1` VALUES ('146', '北京金航顺科技发展有限公司', '91110113MA01KOLD7U', '北京市顺义区汇海南路1号院4号楼4层4-503', '北京市顺义区汇海南路1号院4号楼4层4-503', '张鹏飞', '15611111750', '刘淼', '13581799820', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('147', '北京隆盛清洁服务有限公司', '91110116MA01MENY03', '北京市怀柔区雁栖镇京加路18号', '北京市怀柔区雁栖镇京加路18号', '王飞龙', '18311470328', '王飞龙', '18311470328', null, '116.658866', '40.359959', '116.658866', '116.658866', '');
INSERT INTO `t_test1` VALUES ('148', '北京玛斯特系统工程有限公司', '911101177000697113', '北京市平谷区兴谷经济开发区6区302-32号', '北京市朝阳区朝外大街乙6号朝外SOHO B座0659室', '李海钧', '13810895518', '韩静', '18513612996', null, '', '', '116.454664', '116.454664', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('149', '北京广翰消防技术有限公司', '91110106MA00B2LX63', '北京市丰台区科技园富丰路4号21层21A01', '北京市丰台区科技园富丰路4号21层21A01', '韩宗曙', '13501359261', '孙亚宁', '15718861520', null, '116.2849', '39.83531', '116.2849', '116.2849', '');
INSERT INTO `t_test1` VALUES ('150', '浙江大华技术股份有限公司', '91330000727215176K ', '杭州市滨江区滨安路1187号', '杭州市滨江区滨安路1187号', '傅利泉', '0571-28939522 ', '张立波', '13910226463', null, '120.178742', '30.184103', '120.178742', '120.178742', '');
INSERT INTO `t_test1` VALUES ('151', '北京燕雨灭虫服务有限公司', '91110228MA01EWPU6Q', '北京市密云区永安街210号1至2层210-7', '北京市密云区永安街210号1至2层210-7', '李月东', '\\N', '李春风', '18601383887', null, '117.122431', '40.538324', '117.122431', '117.122431', '');
INSERT INTO `t_test1` VALUES ('152', '北京汉邦唐科技有限公司', '91110105MA01BGBE6R', '北京市朝阳区望京东园四区13号楼-4至33层101内A座8层808室', '北京市朝阳区望京东园四区13号楼-4至33层101内A座8层808室', '杜立静', '13911060921', '邢军', '18210391828', null, '116.489094', '39.999397', '116.489094', '116.489094', '');
INSERT INTO `t_test1` VALUES ('153', '北京世纪双节清洗有限公司', '91110106791609911A', '北京市丰台区海鹰路5号4层418室', '北京市丰台区海鹰路5号4层418室', '史艳军', '13031011714', '史艳军', '13031011714', null, '116.285604', '39.828862', '116.285604', '116.285604', '');
INSERT INTO `t_test1` VALUES ('154', '北京江南安泰消防安全技术有限公司', '91110112593885237Q', '北京市通州区潞苑南大街1093号商-069', '北京市通州区枣林庄村', '陈云水', '13501185028', '陈海波', '18611986506', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('155', '北京金淼鑫盾智慧物联安全科技有限公司', '91110113MA01CRKE9U', '北京市顺义区后沙峪镇安平街3号', '北京市顺义区后沙峪镇安平街3号', '周志民', '13911934829', '王志强', '13671393239', null, '116.562075', '40.119724', '116.562075', '116.562075', '');
INSERT INTO `t_test1` VALUES ('156', '晟天城（北京）环保科技有限公司', '91110111MA01D46LX9', '北京市房山区长阳万兴路86号-A2978', '北京市房山区阎村镇炒米店村', '陈宇超', '15010873817', '慈苒媚', '13126606665', null, '', '', '', '', '同146');
INSERT INTO `t_test1` VALUES ('157', '北京科华消防工程有限公司', '911101097000794770', '北京市门头沟区石龙经济开发区永安路20号3号楼A-6828室', '北京市西城区西直门内五根檩胡同11号金泰华云写字楼B座105', '鲍晓庆', '01062258427', '厉励', '13911266535', null, '116.127228', '39.896764', '116.362692', '116.362692', '');
INSERT INTO `t_test1` VALUES ('158', '金星恒大（北京）教育科技有限责任公司', '91110107MA004M8F2M', '北京市石景山区杨庄路110号院5号楼11层1105室', '北京市石景山区杨庄路110号院5号楼10层1007室', '王文娟', '13910949664', '武继旺', '13910061146', null, '116.189175', '39.922185', '116.189175', '116.189175', '');
INSERT INTO `t_test1` VALUES ('159', '北京立清环保科技有限公司', '91110108MA01N0BR4U ', '北京市海淀区中关村大街28-1号8层853', '北京市海淀区中关村大街28-1号8层853', '房国俊', '13261527339', '罗志刚', '15311221587', null, '116.319367', '39.976511', '116.319367', '116.319367', '');
INSERT INTO `t_test1` VALUES ('160', '北京利双业环保科技有限公司', '91110229MA01B0F97Q	', '北京市延庆区康庄镇龙庆·望都佳园6号楼1层2单元201号102室', '北京市朝阳区兴隆家园南区42号楼3单元202', '王晨菲', '王晨菲', '熊一诺', '18518883641', null, '115.896536', '40.377885', '116.524996', '116.524996', '');
INSERT INTO `t_test1` VALUES ('161', '北京市万年青环保厨房设备有限责任公司', '91110115802898078N', '北京市大兴区宏业路9号院8号楼10层1009', '北京市大兴区天贵街3号', '潘志洪', '13901037157', '梁彩霞', '13321196325', null, '116.323648', '39.786125', '116.306289', '116.306289', '');
INSERT INTO `t_test1` VALUES ('162', '北京科洛迪科技发展有限公司', '91110115MA019RA47X', '北京市大兴区春和路50号院7号楼7层713', '北京市大兴区春和路50号院7号楼7层713', '代金华', '15369806801', '张恒', '13263281918', null, '116.355732', '39.771752', '116.355732', '116.355732', '');
INSERT INTO `t_test1` VALUES ('163', '北京环城清洁服务有限公司', '91110106MA004A743R', '成寿寺路1号楼11层1120', '成寿寺路1号楼11层1120', '于洪磊', '13521094887', '于红超', '15652770888', null, '116.444429', '39.85812', '116.444429', '116.444429', '');
INSERT INTO `t_test1` VALUES ('164', '卓一邦（北京）环保科技有限公司', '91110111MA01MUNY45', '北京市房山区窦店镇沁园春景商业楼A号楼2层A-17', '北京市房山区窦店镇沁园春景商业楼A号楼2层A-17', '郭立会', '18610416397', '郭立金', '13651386615', null, '116.068914', '39.668477', '116.068914', '116.068914', '');
INSERT INTO `t_test1` VALUES ('165', '北京安征昊消防技术服务有限公司', '911101067601083646', '新发地京良桥西侧2000米路北6号楼5单元201室', '新发地京良桥西侧2000米路北6号楼5单元201室', '姜松华', '13801313894', '徐莉菲', '63929383', null, '116.334322', '39.802366', '116.334322', '116.334322', '');
INSERT INTO `t_test1` VALUES ('166', '北京特丽洁环保科技有限公司', '91110116MA018LD28J', '北京市怀柔区杨宋镇凤翔东大街9号A座A2233室', '北京市怀柔区杨宋镇凤翔东大街9号A座A2233室', '杨德琴', '18911845485', '冯善扬', '13801263422', null, '116.684876', '40.295285', '116.684876', '116.684876', '');
INSERT INTO `t_test1` VALUES ('167', '京润天城（北京）建设有限公司', '91110109MA00FDCP56', '北京市门头沟区杨坨粮库院内CZ0596室', '北京经济技术开发区宏达北路10号万元商务中心407', '葛辉', '010-67869986', '崔国明', '13651006818', null, '', '', '116.507593', '116.507593', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('168', '北京立达卓消防技术有限公司', '91110107569464790C', '北京市石景山区石景山路23号科研楼016房间', '北京市石景山区石景山路23号科研楼016房间', '姜颐兰', '13522584679', '吴昱', '13901238144', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('169', '北京青山绿水环保科技有限公司', '91110113757708190E', '北京市顺义区林河南大街9号院14号楼1层24室', '北京市顺义牛栏山镇嘉寓集团北侧胡同1门', '石建海', '13911727888', '石思', '18511111610', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('170', '北京京博奥达环保科技有限公司', '91110228MA01M1ET7T', '北京市密云区溪翁庄镇环湖路66号镇政府1号楼110室-3191(溪翁庄镇集中办公区)', '北京市密云区溪翁庄镇环湖路66号镇政府1号楼110室-3191(溪翁庄镇集中办公区)', '付斯琦', '18618197675', '许帅', '18301032591', null, '116.854003', '40.475309', '116.854003', '116.854003', '');
INSERT INTO `t_test1` VALUES ('171', '北京市巨龙工程有限公司', '91110107700100512E', '实兴大街30号院3号楼2层D-0974房间', '南四环西路188号12区11楼', '孙敏', '13901071970', '郑庆芳', '13810606532', null, '116.193593', '39.939335', '116.287806', '116.287806', '');
INSERT INTO `t_test1` VALUES ('172', '北京众意诚环境工程技术有限公司', '91110116MA01MNWT1X', '北京市怀柔区九渡河镇黄坎村735号', '北京市怀柔区九渡河镇黄坎村735号', '李渤海', '13718781968', '靳军', '18510880158', null, '116.468377', '40.36079', '116.468377', '116.468377', '');
INSERT INTO `t_test1` VALUES ('173', '北京宏博伟业科技有限公司', '91110228MA009GKR86', '北京市密云区石城镇政府办公楼402室-696(石城镇集中办公区)', '北京市海淀区苏州街大恒科技大厦南座5层', '窦长卫', '18211166233', '窦长卫', '18211166233', null, '116.820079', '40.541341', '116.305224', '116.305224', '');
INSERT INTO `t_test1` VALUES ('174', '北京仁友家政服务有限公司', '91110114589109649K', '北京市昌平区城北街道永安路22号楼1-3层22-1', '北京市昌平区城北街道永安路22号楼1-3层22-1', '郭海艳', '13466630324', '马楠楠', '13141218436', null, '116.234982', '40.207848', '116.234982', '116.234982', '');
INSERT INTO `t_test1` VALUES ('175', '北京华辉上洁环保科技有限公司', ' 91110109MA01K9Q58M', '北京市门头沟区门头沟路11号院5号楼8层821', '北京市门头沟区门头沟路11号院5号楼8层821', ' 孙倩倩', '13910099329', ' 孙倩倩', '13910099329', null, '116.09504', '39.944652', '116.09504', '116.09504', '');
INSERT INTO `t_test1` VALUES ('176', '北京生辉鸿泰保洁服务有限公司', '911101063273139307', '北京市丰台区六圈村田何庄11号一层119室', '北京市朝阳区黑庄户万子营东村129号', '刘秀萍', '15510714126', '刘秀萍', '15510714126', null, '', '', '116.59775', '116.59775', '');
INSERT INTO `t_test1` VALUES ('177', '北京俊励彬消防工程技术有限公司', '91110228MA01H9BW7N', '北京市密云区滨河路46号文锦大厦北楼二层220室-776（不老屯镇集中办公区）', '北京市密云区滨河路46号文锦大厦北楼二层220室-776（不老屯镇集中办公区）', '康彬蓉', '13311391421', '康彬蓉', '13311391421', null, '116.838586', '40.370429', '116.838586', '116.838586', '');
INSERT INTO `t_test1` VALUES ('178', '北京创美天成环保科技有限公司', '91110116MA01F83E5C', '北京市怀柔区渤海镇怀沙路536号', '北京市海淀区闵庄南路8号', '楚庆山', '13371729058', '杨海晓', '18600466635', null, '116.612056', '40.3465', '116.2501', '116.2501', '');
INSERT INTO `t_test1` VALUES ('179', '北京众智博睿教育科技有限公司', '91110108MAO1AHRJ68', '北京市北京经济技术开发区经海三路109号院32号楼4层403室', '北京市朝阳区北苑13号院领地大厦C座1010室', '李文振', '18322417315', '时小静', '18600555061', null, '116.559328', '39.788189', '116.414522', '116.414522', '');
INSERT INTO `t_test1` VALUES ('180', '北京仡修物业服务有限公司', '91110117MA01H9NH01', '北京市平谷区中关村科技园区平谷园物流基地5号-5142 ', '北京市平谷区中关村科技园区平谷园物流基地5号-5142 ', '董伟光', '18110075431', '董伟光', '18110075431', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('181', '北京江山永安消防安全设备有限公司', '9111010607853159X5', '北京市丰台区晓月五里6号楼101-89', '北京市丰台区西洪泰庄11号', '周志军', '13520522848', '李海萍', '13693088079', null, '116.237595', '39.834634', '116.25067', '116.25067', '');
INSERT INTO `t_test1` VALUES ('182', '北京途方教育科技有限公司', '91110115MA01C5RU48', '北京市大兴区天华街9号院19号楼7层706', '北京市大兴区天华街9号院19号楼7层706', '战营', '18698664129', '战营', '18698664129', null, '116.314257', '39.685015', '116.314257', '116.314257', '');
INSERT INTO `t_test1` VALUES ('183', '北京瑞尔朗悦环保科技有限公司', '91110113MA01M2TH70', '北京市顺义区李遂镇赵庄村中街4号', '北京市顺义区李遂镇赵庄村中街4号', '贾颖', '15001167931', '贾林', '13810956161', null, '116.782087', '40.037377', '116.782087', '116.782087', '');
INSERT INTO `t_test1` VALUES ('184', '北京永辉腾皇环保科技有限公司', '91110116MA008HU328', '北京市怀柔区桥梓镇兴桥大街1号南楼203室 ', '北京市怀柔区桥梓镇兴桥大街1号南楼203室 ', '丁永飞', '18310033692', '丁永飞', '18310033692', null, '116.57385', '40.290321', '116.57385', '116.57385', '');
INSERT INTO `t_test1` VALUES ('185', '北京嘉美惠祥保洁服务有限公司', '9111010558253428X0', '北京市朝阳区东柳西里5号楼2门411号', '北京市朝阳区东柳西里5号楼2门411号', '谭爱凤', '13311160485', '谭志强', '18910905309', null, '116.574129', '39.900785', '116.574129', '116.574129', '');
INSERT INTO `t_test1` VALUES ('186', '北京华坤永安消防技术服务有限公司', '91110113MA01GYUGXC', '北京市顺义区乾安路3号院三区12号楼6层2单元605', '北京市顺义区乾安路3号院三区12号楼6层2单元605', '西志华', '13911265157', '田春艳', '13810371822', null, '116.651783', '40.179817', '116.651783', '116.651783', '');
INSERT INTO `t_test1` VALUES ('187', '北京逸林盛世环保科技有限公司', '91110116MA01M1KR9T', ' 北京市怀柔区九渡河镇黄坎村735号 ', ' 北京市怀柔区九渡河镇黄坎村735号 ', '李楷', '13932606676', '李楷', '13932606676', null, '116.468377', '40.36079', '116.468377', '116.468377', '');
INSERT INTO `t_test1` VALUES ('188', '北京生辉环保科技有限公司', '91110302MA01N1JW91', '北京市经济技术开发区天华东路5号院2号楼负一层008.009', '北京市经济技术开发区天华东路5号院2号楼负一层008.009', '翟茹', '13241397996', '许东辉', '13161558000', null, '116.497843', '39.802042', '116.497843', '116.497843', '');
INSERT INTO `t_test1` VALUES ('189', '北京润龙建筑工程有限责任公司', '91110109MA01FQ7Y3W', '北京市门头沟区石龙经济开发区永安路20号1楼14层2单元1402室', '北京市丰台区马家堡180-352', '孙利民', '13501348182', '孙利民', '13911680353', null, '116.127288', '39.896818', '116.379676', '116.379676', '');
INSERT INTO `t_test1` VALUES ('190', '北京优能净环保科技有限公司', '91110111MA01N5Y46N ', '北京市房山区良乡凯旋大街建设路18号—D10467', '海鑫北路10号院', '何裕鹏', '15732750822', '何裕鹏', '13426439491', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('191', '中安洁业（北京）科技有限责任公司', '91110111MA01FRXC14', '北京市房山区良乡凯旋大街建设路18号-D3535', '北京市房山区良乡凯旋大街建设路18号-D3535', '耿照亮', '18519850919', '夏佳丽', '18501020309', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('192', '北京厨安捷厨具维修服务有限公司', '91110112MA00E1T272', '北京市通州区中关村科技园区通州园金桥科技产业基地环科中路17号26幢1至3层101-A074', '北京市通州区中关村科技园区通州园金桥科技产业基地环科中路17号26幢1至3层101-A074', '王存金', '15701635710', '张经理', '15701635710', null, '116.555038', '39.730525', '116.555038', '116.555038', '');
INSERT INTO `t_test1` VALUES ('193', '北京璟洛网络科技有限公司', '91110111MA01HNKK4M', '北京市房山区阎富路69号院46号楼1至4层101二层11', '北京市房山区阎富路69号院46号楼1至4层101二层11', '苏宇', '18612720724', '张祥', '18801102375', null, '116.04498', '39.714471', '116.04498', '116.04498', '');
INSERT INTO `t_test1` VALUES ('194', '北京煜德商贸有限公司', '91110115MA01HGAF0G', '黄村镇兴华大街（三段）1号51幢3层51-1', '黄村镇兴华大街（三段）1号51幢3层51-1', '杨伟', '13911688231', '杨伟', '13911688231', null, '116.331561', '39.737043', '116.331561', '116.331561', '');
INSERT INTO `t_test1` VALUES ('195', '北京淼森鑫清洁服务有限公司', '91110105096445281p', '北京市朝阳区三间房动漫集中办公室2278号', '北京市朝阳区三间房动漫集中办公室2278号', '屈井亮', '15010857119', '屈井亮', '15010857119', null, '116.562261', '39.903723', '116.562261', '116.562261', '');
INSERT INTO `t_test1` VALUES ('196', '北京迅宇科技有限公司', '91110302MA01N2QW61', '北京市北京经济技术开发区地盛西路6号院3号楼二层202-2室 ', '北京市北京经济技术开发区地盛西路6号院3号楼二层202-2室 ', '高雪', '13331132657', '高雪', '13331132657', null, '116.499891', '39.785832', '116.499891', '116.499891', '');
INSERT INTO `t_test1` VALUES ('197', '北京一凡雅清洁服务有限公司', '911101056857737697', '高碑店乡半壁店村惠河南街1089号1层K1119', '东三环南路联合国际大厦甲段615', '刘宏', '18910230538', '臧雪冬', '18911807251', null, '116.49939', '39.905277', '116.459834', '116.459834', '');
INSERT INTO `t_test1` VALUES ('198', '中成卓越(北京)厨房设备有限公司', '911101120918821756', '北京市通州区西集镇国防路43号A座508', '北京市通州区九棵树西路90号,英特商务园写字楼A座东冀小楼', '王进侠', '13501228011', '师中秀', '13501228011', null, '116.879456', '39.815719', '116.651208', '116.651208', '');
INSERT INTO `t_test1` VALUES ('199', '北京清溪绿荫环保工程有限公司', '91110228MA01FTF395', '北京市密云区溪翁庄镇环湖路66号镇政府1号楼110室-3089（溪翁庄镇集中办公区）', '北京市海淀区苏州街大恒科技大厦南座5层', '朱泽超', '18612345267', '熊金龙', '18518883641', null, '116.854003', '40.475309', '116.30533', '116.30533', '');
INSERT INTO `t_test1` VALUES ('200', '北京净无忧兄弟清洁环保科技有限公司', ' 91110105669138490P', '北京市昌平区小汤山镇沙顺路91号院3号4层416-1', '北京市昌平区小汤山镇沙顺路91号院3号4层416-1', '郝占宝', '13901331605', '郝占宝', '13901331605', null, '116.394193', '40.181881', '116.394193', '116.394193', '');
INSERT INTO `t_test1` VALUES ('201', '多易点教育科技（北京）有限公司', '91110302MA01JYH293', '北京市北京经济技术开发区科创十三街29号院一区3号楼8层801-02', '北京市北京经济技术开发区科创十三街29号院一区3号楼8层801-02', '张宝', '13716347672', '李跃辉', '18660832810', null, '116.557622', '39.781027', '116.557622', '116.557622', '');
INSERT INTO `t_test1` VALUES ('202', '赛诺创意（北京）科技发展有限公司', '91110108MA004XB5X8', '北京市海淀区四季青路8号7层732-4', '北京市海淀区四季青路8号7层732-4', '贾大梅', '18210593966', '赵培', '13718317577', null, '116.271234', '39.953758', '116.271234', '116.271234', '');
INSERT INTO `t_test1` VALUES ('203', '北京众成泽兴消防科技有限公司', '91110111MA01KX9C2H', '北京市房山区房山马各庄村西南（厂区）135幢一层101室', '北京市房山区房山马各庄村西南（厂区）1956创业园消防楼', '陆志刚', '010- 50689119', '张元元', '18910733176', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('204', '北京慧和网教育科技有限责任公司', '91110108MA01JWD287', '北京市海淀区马连洼北路8号C座四层406-C239', '北京市海淀区马连洼北路8号C座四层406-C239', '何安标', '\\N', '张超', '17301287493', null, '116.297513', '40.033555', '116.297513', '116.297513', '');
INSERT INTO `t_test1` VALUES ('205', '北京中兴众诚保洁服务有限公司', '91110113685144794X', '北京市顺义区南彩镇南彩村新农村大街六条13号', '北京市顺义区南彩镇南彩村新农村大街六条13号', '田世海', '13651249377', '田世海', '13651249377', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('206', '北京智行火种教育科技有限公司', '91110111MA0074FJ75', '北京市房山区良乡凯旋大街建设路18号-D1108', '北京市房山区恰和北路5号院4号院7层701', '甘芸', '1', '王晓伟', '13366625619', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('207', '北京屹嵘消防安全技术有限公司', '91110106MA01MWA68L', '北京市丰台区城南嘉园益城园16号楼12层2-1206', '北京市丰台区城南嘉园益城园16号楼12层2-1206', '鹿真星', '15300070387', '鹿真星', '15300070387', null, '116.368792', '39.832716', '116.368792', '116.368792', '');
INSERT INTO `t_test1` VALUES ('208', '北京环球兴学科技发展有限公司', '91110108756728341R', '北京市海淀区知春路知春路7号致真大厦D座403室', '北京市海淀区知春路知春路7号致真大厦D座403室', '伊贵业', '01062126633', '刘宁', '13581883237', null, '116.35125', '39.977761', '116.35125', '116.35125', '');
INSERT INTO `t_test1` VALUES ('209', '北京世龙坤泰环保科技有限公司', '91110108MA01NPR89F', '北京市海淀区清河西三旗东新都东站南27幢平房033', '北京市海淀区清河西三旗东新都东站南27幢平房033', '陈尔兵', '13910039347', '李玉华', '13601354204', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('210', '北京四季嘉业保洁服务有限公司', '91110111MA01HQ9U4K', '北京市房山区长阳万兴路86号-N397', '北京市房山区长阳万兴路86号-N397', '张小刚', '15801010786', '张小刚', '15801010786', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('211', '北京杰明欣环保科技有限公司', '911101078022978034', '北京市石景山区红卫路1号', '北京市石景山区红卫路1号', '黎宙', '18610253039', '庞思博', '18171897405', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('212', '北京智汇火种教育科技有限公司', '91110114MA01B74TXM', '北京市房山区怡和北路5号院4号楼7层701', '北京市房山区怡和北路5号院4号楼7层701', '\\N', '\\N', '李云飞', '13366625619', null, '116.208647', '39.762941', '116.208647', '116.208647', '');
INSERT INTO `t_test1` VALUES ('213', '北京国兴仁安消防科技有限责任公司', '91110112MA01NAN31B', '北京市通州区临河里1号楼1单元1621室', '北京市通州区新华北路117号东方集贤写字楼1-169室', '李树宽', '18519791494', '李树宽', '18519791494', null, '116.685925', '39.882247', '116.65655', '116.65655', '');
INSERT INTO `t_test1` VALUES ('214', '北京玖弘建设有限公司', '91110114MA00A9H63E', '北京市昌平区沙河镇兆丰家园10-8-106底商', '北京市昌平区小汤山御汤山东三区22', '王国红', '18601969666', '石李涛', '13363869038', null, '116.284122', '40.150836', '116.395695', '116.395695', '');
INSERT INTO `t_test1` VALUES ('215', '亿嘉鑫（北京）环保科技有限公司', '91110229MA01MKLJ1J', '北京市延庆区延庆镇广积屯村278号02室', '北京市延庆区延庆镇广积屯村278号02室', '马昆明', '17319206987', '马昆明', '17319206987', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('216', '深圳市安环技术有限公司', '914403001923282886', '深圳市南山区蛇口水湾村9排3号', '房山区拱辰街道办事处二街村金花商业大厦', '洪洋', '0755-83251164', '洪楚望', '13602576769', null, '116.142426', '39.732274', '116.142426', '116.142426', '');
INSERT INTO `t_test1` VALUES ('217', '北京天恒安科集团有限公司', '9111011533554363X3', '北京市大兴区庞各庄镇瓜乡路10号3号楼1层', '北京市大兴区庞各庄镇瓜乡路10号3号楼1层', '杨金锋', '010-81297200', '李文婷', '13683611379', null, '116.311658', '39.620381', '116.311658', '116.311658', '');
INSERT INTO `t_test1` VALUES ('218', '北京朔嘉伟业环保科技有限公司', '91110116MA01N97456', '北京市怀柔区开放东路13号院4号楼第三层办公区302室', '北京市海淀区苏州街大恒科技大厦南座5层', '闫理伟', '18611117761', '熊金龙', '18518883641', null, '116.651873', '40.32291', '116.30533', '116.30533', '');
INSERT INTO `t_test1` VALUES ('219', '北京豪洋宏达科技有限公司', '91110117306555391L', '北京市平谷区林荫北街13号信息大厦802室', '北京市平谷区林荫北街13号信息大厦802室', '肖现金', '13911573962', '肖现金', '13911573962', null, '117.105101', '40.141105', '117.105101', '117.105101', '');
INSERT INTO `t_test1` VALUES ('220', '北京龙辰泉消防设备安装工程有限公司', '91110106573194260T', '北京市丰台区南四环西路188号十二区11号楼6层', '北京市丰台区南四环西路188号十二区11号楼6层', '李霞 ', '\\N', '王辉', '63702701', null, '116.287819', '39.82063', '116.287819', '116.287819', '');
INSERT INTO `t_test1` VALUES ('221', '北京凯旋佳业环保科技有限公司', '91110116ＭA001TE15T', '北京市丰台区南三环西路91号院1号楼301·—535号', '北京市丰台区南三环西路91号院1号南楼301—535号', '\\N', '\\N', '刘伟', '18001333816', null, '116.33291', '39.85026', '116.33291', '116.33291', '');
INSERT INTO `t_test1` VALUES ('222', '航天海鹰安全技术工程有限公司', '914600006200100585', '云岗西路7号', '云岗西路7号', '高志国', '01068375976', '白文生', '15901178901', null, '116.158901', '39.810313', '116.158901', '116.158901', '');
INSERT INTO `t_test1` VALUES ('223', '北京品格保洁服务有限公司', '911101135548400011', '北京市顺义区赵全营镇牛板路板桥段43号', '北京市顺义区赵全营镇牛板路板桥段43号', '张具飞', '13661088466', '贾德保', '13011009687', null, '116.510906', '40.210329', '116.510906', '116.510906', '');
INSERT INTO `t_test1` VALUES ('224', '北京江南山水装饰有限公司', '911101177481304971', '北京市平谷区熊儿寨乡工业区1区36号', '北京市海淀区苏州街大恒科技大厦南座5层', '杨志忠', '13911659686', '熊金龙', '18518883641', null, '116.30533', '39.982357', '116.30533', '116.30533', '');
INSERT INTO `t_test1` VALUES ('225', '北京中泰佳环保科技有限公司', '91110106662174034C', '北京市丰台区小井村296号', '北京市丰台区小井村296号', '李海娜', '13811560668', '王金富', '13681511682', null, '116.295894', '39.878661', '116.295894', '116.295894', '');
INSERT INTO `t_test1` VALUES ('226', '北京融易蓝环保科技有限公司', '91110111MA01MHHR38', '良乡凯旋大街建设路18号-D9014', '丰台科学城外环西路26号院70号楼 -1层', '程灏', '18611176726', '程灏', '18611176726', null, '', '', '116.279321', '116.279321', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('227', '北京森垚安泰环保科技有限公司', '91110304MA01FA0K0D', '燕山岗北路2号D座配楼二层2067', '燕山岗北路2号D座配楼二层2067', '\\N', '\\N', '王娇', '15120001301', null, '115.969301', '39.752932', '115.969301', '115.969301', '');
INSERT INTO `t_test1` VALUES ('228', '北京盛世佳业保洁服务有限公司', '911101083396843254', '北京市平谷区夏各庄镇王都庄村东路9号', '东北望南路29号院3号楼1层1262室', '王斌斌', '17710398479', '王斌斌', '17710398479', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('229', '北京彤旭佳业环保科技有限公司', '91110108348291611B', '北京市房山区长阳万兴路86号-A4184', '北京市房山区长阳万兴路86号-A4184', '夏西忠', '15110123656', '夏西忠', '15110123656', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('230', '北京新财家业保洁有限公司', '9111010606963129XT', '北京市房山区良乡凯旋大街建设路18号—D7296 ', '北京市房山区良乡凯旋大街建设路18号—D7296 ', '李新财', '13522334039', '李新财', '13522334039', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('231', '北京海龙洁美保洁服务有限公司', '91110108348291590T', '良乡凯旋大街建设路18号-D8846', '良乡凯旋大街建设路18号-D8846', '孙如海', '13671226321', '孙如海', '13671226321', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('232', '北京乐洁环保科技有限公司', '91110106330286988', '马家堡东路121号院7号楼10层1159', '马家堡东路121号院7号楼10层1159', '李静', '13621000650', '李静', '13621000650', null, '116.384504', '39.83944', '116.384504', '116.384504', '');
INSERT INTO `t_test1` VALUES ('233', '北京清泉洁美环保科技有限公司', '91110108593840047J', '史家营乡大村涧村村委会北440米 ', '史家营乡大村涧村村委会北440米 ', '孙如友', '13910929783', '孙如友', '13910929783', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('234', '中泰民安安全服务集团有限公司', '911101157817313581', '北京市大兴区春和路39号院1号楼C座906', '北京市大兴区春和路39号院1号楼C座906', '赵性仓', '13911286333', '安波', '18910907078', null, '116.359767', '39.772653', '116.359767', '116.359767', '');
INSERT INTO `t_test1` VALUES ('235', '北京星驰佳业环保科技有限公司', '91110108686941808L', '温泉镇白家疃村174号平房 ', '温泉镇白家疃村174号平房 ', '孙如亮', '13341089870', '孙如亮', '13341089870', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('236', '亚伯兰环保科技（北京）有限公司', '91110105MA00E9QQ60', '北京市顺义区空港工业区B区裕华路28号2幢2层A203室', '北京市顺义区空港工业区B区裕华路28号2幢2层A203室', '李海', '13701003384', '张志芳', '18516955623', null, '116.552456', '40.095008', '116.552456', '116.552456', '');
INSERT INTO `t_test1` VALUES ('237', '北京华海峰消防器材维修有限责任公司', '91110108633065234H', '北京市海淀区西苑挂甲屯5号', '北京市海淀区冷泉东咯龙城货运院内', '吴永安', '13901140861', '张艳', '13910612028', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('238', '北京鸿远科蓝环保科技有限公司', '91110111MA01NHPH89', '北京市房山区城关街道顾八路1区1号-A464', '北京市房山区城关街道顾八路1区1号-A464', '贾凤艳', '13911237152', '贾凤艳', '13911237152', null, '116.01599', '39.70597', '116.01599', '116.01599', '');
INSERT INTO `t_test1` VALUES ('239', '北京美佳美保洁服务有限公司', '911101160854957697', '北京市怀柔区杨宋镇风翔东大街9号A座7096室', '北京市怀柔区杨宋镇风翔东大街9号A座7096室', '马排', '13683260833', '马排', '13683260833', null, '116.684876', '40.295285', '116.684876', '116.684876', '');
INSERT INTO `t_test1` VALUES ('240', '北京鑫厨万佳厨房设备有限公司', '91110115683595663T', '北京市大兴区黄村镇天堂河纬四路西庄工业区1-3幢', '北京市石景山区隆恩寺路99号院', '陈帝致', '15701328760', '庞思博', '18171897405', null, '116.361743', '39.668613', '116.12482', '116.12482', '');
INSERT INTO `t_test1` VALUES ('241', '北京爱能智亚科技有限公司', '91110101697749651G', '北京市东城区永定门内东街中里9-17号482室', '北京市东城区永定门内东街中里9-17号482室', '金凤', '13811981453', '于洁', '13141248718', null, '116.409633', '39.873212', '116.409633', '116.409633', '');
INSERT INTO `t_test1` VALUES ('242', '北京润垚中恒科技有限公司', '91110302MA00BX98XR', '北京市北京经济技术开发区隆庆街18号1幢4层V221室', '北京市北京经济技术开发区隆庆街18号1幢4层V221室', '刘现东', '15810066182', '于洁', '13141248718', null, '116.518135', '39.805317', '116.518135', '116.518135', '');
INSERT INTO `t_test1` VALUES ('243', '北京力升高科科技有限公司', '91110108MA00GQ857U', '北京市海淀区中关村东路1号院3号楼11层1109', '北京市海淀区中关村东路1号院3号楼11层1109', '罗万贵', '\\N', '李曼', '18610501360', null, '116.329288', '39.995324', '116.329288', '116.329288', '');
INSERT INTO `t_test1` VALUES ('244', '北京洪升源环保科技有限公司', '91110105MA01GT557G', '北京市朝阳区高碑店乡半壁店村惠河南街1089号1层K1097 ', '北京市朝阳区高碑店乡半壁店村惠河南街1089号1层K1097 ', '李苓', '15210943804', '李苓', '15210943804', null, '116.49939', '39.905277', '116.49939', '116.49939', '');
INSERT INTO `t_test1` VALUES ('245', '北京亿都嘉美环保科技有限公司', '91110302MA01L23N51', '北京市北京经济技术开发区科创五街38号院1号楼C座4层C4179号', '北京市北京经济技术开发区科创五街38号院1号楼C座4层C4179号', '\\N', '\\N', '姬腾振', '13521555202', null, '116.532681', '39.802631', '116.532681', '116.532681', '');
INSERT INTO `t_test1` VALUES ('246', '北京春海建设发展有限公司', '91110113102550273M', '北京市顺义区北小营镇前礼务村委会西200米', '北京市顺义区北小营镇前礼务村委会西200米', '\\N', '\\N', '雒立伟', '18510833997', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('247', '北京人文鑫诚厨房设备有限公司', '91110116MA00920M1R', '北京市怀柔区桥梓镇兴桥大街1号南楼203室', '北京市怀柔区桥梓镇兴桥大街1号南楼203室', '\\N', '\\N', '庞仁文', '13718559591', null, '116.573816', '40.290222', '116.573816', '116.573816', '');
INSERT INTO `t_test1` VALUES ('248', '北京雨博环保科技有限公司', '91110116MA00BDMX2B', '北京市怀柔区庙城镇庙城村临300号401室', '北京市朝阳区高碑店小郊亭村169号', '\\N', '\\N', '菅洪亮', '18510322875', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('249', '北京文景利康保洁有限公司', '91110114MA01NC866R', '北京市昌平区马池口镇奤夿屯村东临90号-31', '北京市昌平区马池口镇奤夿屯村东临90号-31', '\\N', '\\N', '胥大其', '15910255533', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('250', '北京坤泰信安建设工程有限公司', '91110109MA01GM6J9F', '北京市门头沟区双峪路35号院1号7层F701-276', '北京市丰台区纪家庙8号天丰大厦623室', '\\N', '\\N', '周日强', '13601313166', null, '116.11338', '39.935433', '116.334364', '116.334364', '');
INSERT INTO `t_test1` VALUES ('251', '北京云科泽鑫科技有限公司', '92110114L287200960', '北京市昌平区马池口镇葛村242号', '北京市昌平区马池口镇葛村242号', '\\N', '\\N', '孙艳荣', '13720042131', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('252', '北京海博智恒电气防火科技有限公司', '91110112769913597K', '马驹桥联东U谷北一区9号楼4层', '马驹桥联东U谷北一区9号楼4层', '\\N', '\\N', '董卫国', '13801105055', null, '116.572595', '39.73466', '116.572595', '116.572595', '');
INSERT INTO `t_test1` VALUES ('253', '北京京梁工程技术有限公司', '91110117MA008J9W1E', '北京市平谷区大华山镇后北宫路甲24号', '北京市平谷区大华山镇后北宫路甲24号', '\\N', '\\N', '孙松', '13718808929', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('254', '三人万物教育科技（北京）有限公司', '91110105MA01E2LH2M', '北京市朝阳区高井文化园路8号东亿国际传媒产业园区元君书苑F1号楼1层105室', '北京市朝阳区高井文化园路8号东亿国际传媒产业园区元君书苑F1号楼1层105室', '\\N', '\\N', '于允', '18600261568', null, '116.538381', '39.913211', '116.538381', '116.538381', '');
INSERT INTO `t_test1` VALUES ('255', '北京中公教育科技有限公司', '91110108551426892J', '北京市海淀区学清路38号B座9层911室', '北京市海淀区学清路38号B座9层911室', '\\N', '\\N', '刘伟', '13381155646', null, '116.354114', '40.001724', '116.354114', '116.354114', '');
INSERT INTO `t_test1` VALUES ('256', '北京泰合安消防科技有限公司', '911101066977070216', '北京市丰台区纪家庙8号21号楼528号', '北京市丰台区纪家庙8号21号楼528号', '\\N', '\\N', '闫冬雪', '18210050289', null, '116.334364', '39.847139', '116.334364', '116.334364', '');
INSERT INTO `t_test1` VALUES ('257', '北京朝力德厨房设备有限公司', '91110229MA01JG3M4H', '北京市延庆区井庄镇张伍堡村30号', '北京市延庆区人合家和建材城一号门面', '\\N', '\\N', '张恩朝', '15911012651', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('258', '北京静瑞雅环保科技有限公司', '911101063355505657', '北京市房山区卓秀北街10号院5号楼12层1211', '北京市房山区卓秀北街10号院5号楼12层1211', '\\N', '\\N', '方容', '13581959138', null, '116.181557', '39.728882', '116.181557', '116.181557', '');
INSERT INTO `t_test1` VALUES ('259', '跨越时代清洁服务（北京）有限公司', '91110117MA006ELA34', '北京市平谷区东高村镇赵家务西路196号', '北京市平谷区东高村镇赵家务村西路196号', '\\N', '\\N', '刘自付', '13716704321', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('260', '北京东方京安消防工程有限公司', '911101026742671233', '北京市西城区马连道南街6号院1号楼6层6B-15号', '北京市丰台区万丰路300号主楼7层', '\\N', '\\N', '姜建强', '13801126779', null, '116.293845', '39.86953', '116.293845', '116.293845', '');
INSERT INTO `t_test1` VALUES ('261', '北京合祥立业保洁服务有限公司', '91110106691696026C', '北京市丰台区东管头村289号乔金桥招待所211房间', '北京市丰台区东管头村289号乔金桥招待所211房间', '\\N', '\\N', '郭雄', '13651232014', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('262', '北京浩沣信达消防技术有限公司', '91110115059205721K', '北京市大兴区金苑路26号1幢2层219室', '北京市大兴区金苑路26号1幢2层219室', '\\N', '\\N', '廖晓丽', '18600884775', null, '116.36066', '39.758967', '116.36066', '116.36066', '');
INSERT INTO `t_test1` VALUES ('263', '北京万通清洁服务有限公司', '91110111MA01N93K07', '北京市房山区城关街道顾八路1区1号-A299', '北京市房山区城关街道顾八路1区1号-A299', '\\N', '\\N', '常宁', '15033497221', null, '116.015969', '39.70597', '116.015969', '116.015969', '');
INSERT INTO `t_test1` VALUES ('264', '北京光尘启元环保科技有限公司', '91110111MA01GKWA55', '长阳万兴路86号-A3959', '长阳万兴路86号-A3959', '\\N', '\\N', '单立鹏', '18611020998', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('265', '北京众鑫八方劳务服务有限公司', '91110113MA006H4K5L', '北京市顺义区仁和地区河南村平安北路50号', '北京市顺义区仁和镇塔河村委会西侧', '\\N', '\\N', '孙峰', '13511011069', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('266', '北京众信嘉华商业管理有限公司', '91110101MA01NANC53', '东安门大街55号七层727B', '交道口东大街85号东城区第一图书馆', '\\N', '\\N', '沙清华', '15210959619', null, '116.407235', '39.916067', '116.412732', '116.412732', '');
INSERT INTO `t_test1` VALUES ('267', '北京亚太银河消防科技集团有限公司', '91110115MA01NL0B07', '北京市石景山区鲁谷大街53号2层213-10', '北京市石景山区鲁谷大街53号2层213-10', '\\N', '\\N', '权麦玲', '13520609505', null, '116.231485', '39.889953', '116.231485', '116.231485', '');
INSERT INTO `t_test1` VALUES ('268', '北京京顺华安消防设备有限公司', '91110106589109374K', '北京市丰台区花乡宜兰园三区底商10号', '北京市丰台区花乡宜兰园三区底商10号', '\\N', '\\N', '赵争光', '13910650447', null, '116.333935', '39.827017', '116.333935', '116.333935', '');
INSERT INTO `t_test1` VALUES ('269', '北京富宏保洁有限公司', '91110108MA00EJTJ5E', '北京市房山区康泽路3号院12号楼5层2单元509', '北京市房山区康泽路3号院12号楼5层2单元509', '\\N', '\\N', '朱保红', '13552020675', null, '116.214041', '39.769855', '116.214041', '116.214041', '');
INSERT INTO `t_test1` VALUES ('270', '正博智远（北京）科技有限公司', '9111010530656583XW', '五里桥二街2号院6号楼4层0410', '五里桥二街1号院7号楼0118', '\\N', '\\N', '焦立波', '13304110929', null, '116.617235', '39.92855', '116.617235', '116.617235', '');
INSERT INTO `t_test1` VALUES ('271', '北京亨事物业管理有限公司', '	91110111MA01AWWB3J', '北京市房山区良乡长虹西路翠柳东街1号-4097', '北京市房山区良乡长虹西路翠柳东街1号-4097', '\\N', '\\N', '陈紫意', '15313706164', null, '116.127211', '39.726692', '116.127211', '116.127211', '');
INSERT INTO `t_test1` VALUES ('272', '北京洁万家保洁服务有限公司', '91110116MA009M5F06', '北京市怀柔区迎宾南路25号院10号1层105室', '北京市怀柔区迎宾南路25号院10号1层105室', '\\N', '\\N', '郭义民', '13261766338', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('273', '北京卓炜消防科技有限公司', '91110112MA018T0Y9A', '北京市通州区中关村科技园区通州园金桥科技产业基地景盛中街2号2号楼2层', '北京市通州区中关村科技园区通州园金桥科技产业基地景盛中街2号2号楼2层', '\\N', '\\N', '白立华', '17717128115', null, '116.580196', '39.738535', '116.580196', '116.580196', '');
INSERT INTO `t_test1` VALUES ('274', '北京瑞和众城环保科技有限公司', '91110111MA01NR0D3W', '北京市房山区良乡凯旋大街建设路18号-D11264', '北京市房山区良乡凯旋大街建设路18号-D11264', '\\N', '\\N', '宋瑞', '13911237152', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('275', '北京市朝航冷气设备有限公司', '911101136336973973', '北京市朝阳区首都机场宿舍区西平街甲1号', '北京市朝阳区首都机场宿舍区西平街甲1号', '\\N', '\\N', '米雪', '15910463927', null, '116.591633', '40.048803', '116.591633', '116.591633', '');
INSERT INTO `t_test1` VALUES ('276', '北京京锦天诚科技有限公司', '91110114590649191R', '北京市顺义区马坡镇京密路马坡段30号院3幢1号', '东小口镇店上村委会', '\\N', '\\N', '邱现东', '13671024196', null, '', '', '116.381371', '116.381371', '');
INSERT INTO `t_test1` VALUES ('277', '乐享源科技（北京）有限公司', '91110108MA01NL9T55', '创业中路32号楼32-1-1-470', '创业中路32号楼32-1-1-470', '\\N', '\\N', '田贝贝', '15727302865', null, '116.312873', '40.038407', '116.312873', '116.312873', '');
INSERT INTO `t_test1` VALUES ('278', '北京众合安消防技术有限公司', '91110302MA01MUFPXW', '北京市北京经济技术开发区西环南路18号A幢3层办公7', '北京市北京经济技术开发区西环南路18号A幢3层办公7', '\\N', '\\N', '赵富松', '13552168636', null, '116.532742', '39.766239', '116.532742', '116.532742', '');
INSERT INTO `t_test1` VALUES ('279', '北京渊大教育科技有限公司', '911101055585979348', '北京市朝阳区高碑店乡北花园村388号华汇大厦A座四层A4011号', '北京市朝阳区双桥2049文创产业园A25-8', '\\N', '\\N', '辛明江', '15313743549', null, '116.550603', '39.907859', '116.573389', '116.573389', '');
INSERT INTO `t_test1` VALUES ('280', '北京亿鹏东方制冷设备维修有限公司', '91110114L27466698P', '北京市昌平区城北街道鼓楼东街33号3等9幢楼9号楼一层9101室', '北京市昌平区城北街道鼓楼东街33号3等9幢楼9号楼一层9101室', '\\N', '\\N', '李国东', '13651251963', null, '116.237163', '40.22462', '116.237163', '116.237163', '');
INSERT INTO `t_test1` VALUES ('281', '北京远洋同创保洁服务有限公司', '91110105752628781X', '北京市朝阳区双龙南里边128号2幢一层116', '北京市朝阳区双龙南里边128号2幢一层116', '\\N', '\\N', '张洋', '18610625889', null, '116.48362', '39.869673', '116.48362', '116.48362', '');
INSERT INTO `t_test1` VALUES ('282', '北京龙德天成教育科技有限公司', '91110105MA005LKU4A', '北京市朝阳区汤立路201号院1号楼2层A-209', '北京市昌平区科星西路龙跃苑43号楼3层2-102', '\\N', '\\N', '于振', '15652573210', null, '116.411293', '40.054548', '116.358694', '116.358694', '');
INSERT INTO `t_test1` VALUES ('283', '北京诚涛科技有限公司', '91110111MA01NTTT48', '北京市房山区良乡凯旋大街建设路18号-D11350', '北京市西城区煤市街142', '\\N', '\\N', '颜斌斌', '18005761133', null, '', '', '116.394793', '116.394793', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('284', '北京巡城消防安全技术有限公司', '911101123067359158', '北京市通州区西集镇后寨府村115号', '北京市通州区西集镇后寨府村115号', '\\N', '\\N', '张玉芹', '18518185260', null, '', '', '', '', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('285', '北京华兴雨洁装饰工程有限公司', '91110228MA01DWYTXY', '北京市密云区西大桥路67号十里堡镇政府办公楼407室-3043（十里堡镇集中办公区）', '北京市密云区西大桥路67号十里堡镇政府办公楼407室-3043（十里堡镇集中办公区）', '\\N', '\\N', '孙明军', '13717580165', null, '116.801516', '40.358509', '116.801516', '116.801516', '');
INSERT INTO `t_test1` VALUES ('286', '北京浩华鼎景科技服务有限公司', '91110115MA01K7C021', '北京市大兴区瀛吉街8号院3号楼15层1504', '北京市大兴区瀛吉街8号院3号楼15层1504', '\\N', '\\N', '史小锋', '15911167718', null, '116.449923', '39.76311', '116.449923', '116.449923', '');
INSERT INTO `t_test1` VALUES ('287', '中天华源（北京）环保科技有限公司', '91110102575198089W', '北京市房山区良乡凯旋大街建设路18号-D4219', '北京市房山区良乡凯旋大街建设路18号-D4279', '\\N', '\\N', '许勇虎', '13801252851', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('288', '北京安锐达消防设备有限公司', '91110116MA00D4BM9E', '北京市怀柔区开放路113号南四层409室', '北京市丰台区东铁匠营横一条31号金泰翔达院内平房', '\\N', '\\N', '沈玉松', '13501091921', null, '116.644101', '40.334055', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('289', '北京绿色吉唐农业科技有限公司', '91110113MA01MUT12L', '北京市顺义区南彩镇彩达二街2号196号', '北京市顺义区南彩镇彩达二街2号196号', '\\N', '\\N', '周明', '15810769986', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('290', '北京金源荣达保洁服务有限公司', '91110105573154904B', '北京市朝阳区管庄乡小寺村149号', '北京市朝阳区管庄乡小寺村149号', '\\N', '\\N', '夏海荣', '13691385422', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('291', '北京中泰亿鑫工程有限公司', '911101067000892885', '北京市门头沟区军庄镇军庄路2号院JZ1424室 ', '北京市丰台区马家堡西里13号楼', '\\N', '\\N', '陶学东', '13811680760', null, '', '', '116.374448', '116.374448', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('292', '北京瑞阳泰通科技有限公司', '911101153354369140', '北京市大兴区旧桥路25号院7号楼1806', '北京市大兴区旧桥路25号院7号楼1806', '\\N', '\\N', '龚群卫', '13801119688', null, '116.45651', '39.79319', '116.45651', '116.45651', '');
INSERT INTO `t_test1` VALUES ('293', '北京瑶新名媛商贸有限责任公司', '911101016774479126 ', '北京市东城区火桥北里6号楼一层6-4 ', '北京市西城区平原里21-4', '\\N', '\\N', '张配青', '18516951931', null, '116.433896', '39.882189', '116.373732', '116.373732', '');
INSERT INTO `t_test1` VALUES ('294', '北京栋梁强晟科技有限公司', '北京栋梁强晟科技有限公司', '北京市通州区中关村科技园区通州园金桥科技产业基地环科中路17号26幢1至3层102-Y050 ', '北京市通州区中关村科技园区通州园金桥科技产业基地环科中路17号26幢1至3层102-Y050 ', '\\N', '\\N', '张国良', '15811393826', null, '116.554905', '39.73051', '116.554905', '116.554905', '');
INSERT INTO `t_test1` VALUES ('295', '富瑞保洁服务(北京）有限公司', '91110115MA01N2FUXL', '北京市大兴区龙发大街1号院1号楼1层2单元101', '北京市大兴区龙发大街1号院1号楼1层2单元101', '\\N', '\\N', '刘占河', '13020041406', null, '116.401205', '39.683567', '116.401205', '116.401205', '');
INSERT INTO `t_test1` VALUES ('296', '北京鑫未来保洁服务有限公司', '91110111MA01EWUTXU', '北京市房山区良乡凯旋大街建设路18号A1378', '北京市房山区良乡凯旋大街建设路18号A1387', '\\N', '\\N', '屈清山', '18500546756', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('297', '北京中盛雅诺环保科技有限公司', '91110116MA01NGU40T', '北京市怀柔区融城北路10号院46号楼1005', '北京市怀柔区融城北路10号院46号楼1005', '\\N', '\\N', '刘兵', '13581507939', null, '116.6361', '40.297848', '116.6361', '116.6361', '');
INSERT INTO `t_test1` VALUES ('298', '北京市奥佳保洁有限公司', '91110105674268425W', '北京市朝阳区将台乡东八间房108', '北京市朝阳区将台乡东八间房108', '\\N', '\\N', '程新勇', '15811444200', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('299', '北京康安云瑞商贸有限公司', '91110117MA008GH475', '北京市平谷区王辛庄镇贾各庄北街65号', '北京市平谷区王辛庄镇贾各庄北街65号', '\\N', '\\N', '王平凤', '18611295757', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('300', '北京隆盛天宇机械设备安装有限公司', '91110114306351591J', '北京市房山区城关街道东瓜地村村委会东130米', '北京市房山区城关街道东瓜地村村委会东130米', '\\N', '\\N', '石丙忠', '15210478016', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('301', '北京兴垚嘉洁环保科技有限公司', '91110114M01GNUE3E', '城北街道昌崔路198号院2号楼2层214', '城北街道昌崔路198号院2号楼2层214', '\\N', '\\N', '王伟', '15699809963', null, '116.266601', '40.219329', '116.266601', '116.266601', '');
INSERT INTO `t_test1` VALUES ('302', '北京新盾恒润消防设备有限公司', '911101150648641584', '北京市大兴区经济开发区盛坊路1号3号楼1层3门102', '北京市大兴区经济开发区盛坊路1号1号楼502', '\\N', '\\N', '史万军', '13693064065', null, '116.345379', '39.770115', '116.345379', '116.345379', '');
INSERT INTO `t_test1` VALUES ('303', '北京安新瑜洁科技有限公司', '911102283273013238', '北京市密云区巨各庄镇蔡家洼产业基地办公楼105室-752', '北京市密云区巨各庄镇蔡家洼产业基地办公楼105室-752', '\\N', '\\N', '黄志泉', '18301033827', null, '116.894269', '40.368583', '116.894269', '116.894269', '');
INSERT INTO `t_test1` VALUES ('304', '英才在线（北京）教育科技有限公司', '91110107MA01H2GM8R', '北京市石景山区实兴东街11号2层2322室', '北京市石景山区实兴东街11号2层2322室', '\\N', '\\N', '赵冰', '13920394118', null, '116.18841', '39.93757', '116.18841', '116.18841', '');
INSERT INTO `t_test1` VALUES ('305', '北京天恒有孚教育科技有限责任公司', '91110105593818421U', '北京市朝阳区汤立路218号7层832', '北京市朝阳区汤立路218号7层832', '\\N', '\\N', '刘雪松', '18301438802', null, '116.413736', '40.050236', '116.413736', '116.413736', '');
INSERT INTO `t_test1` VALUES ('306', '北京力德通清洁服务有限公司', '91110108057373721D', '北京市海淀区清河三街95号综合服务楼12-024室', '北京市丰台区杨公庄1号1897科创城N34-104', '\\N', '\\N', '刘玉岗', '13521565515', null, '116.34406', '40.032503', '116.197646', '116.197646', '');
INSERT INTO `t_test1` VALUES ('307', '北京名丰教育科技有限公司', '91110114MA01FYKBXG', '北京市昌平区黄平路19号院2号6层613', '北京市昌平区黄平路19号院2号6层613', '\\N', '\\N', '罗礼明', '18801354625', null, '116.348698', '40.066676', '116.348698', '116.348698', '');
INSERT INTO `t_test1` VALUES ('308', '北京腾飞红鹏科技发展有限公司', '911101065906769903', '北京市丰台区东铁匠营横一条31号6楼3层3042号', '北京市丰台区东铁匠营横一条31号6楼3层3042号', '\\N', '\\N', '王蛇扣', '18511325849', null, '116.434063', '39.848946', '116.434063', '116.434063', '');
INSERT INTO `t_test1` VALUES ('309', '航天屹邦（北京）国际环保科技有限公司', '911101066787854978', '北京市通州区朱家垡村西900号院', '科创四街36号院3-507', '\\N', '\\N', '刘长林', '13311073833', null, '116.623017', '39.839303', '116.528312', '116.528312', '');
INSERT INTO `t_test1` VALUES ('310', '北京金煜蓝天环保科技有限公司', '91110302MA0014DF9P', '北京市北京经济技术开发区景园北街2号院67号楼11层1209', '北京市朝阳区十八里店乡老君堂村甲五号院三号楼二单元303', '\\N', '\\N', '杨海峰', '13651305810', null, '116.51928', '39.777855', '116.512011', '116.512011', '');
INSERT INTO `t_test1` VALUES ('311', '北京顺达佳业科技有限公司', '91110105MA002AG745', '北京市房山区良乡凯旋大街建设路18号-D3438', '北京市房山区良乡凯旋大街建设路18号-D3438', '\\N', '\\N', '夏晓华', '18511077618', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('312', '北京亿嘉鑫保洁服务有限公司', '91110116MA019KEHX9', '北京市怀柔区雁栖经济开发区雁栖路33号院1号楼103室', '北京市怀柔区雁栖经济开发区雁栖路33号院1号楼103室', '\\N', '\\N', '赵非', '18911912192', null, '116.68341', '40.35204', '116.68341', '116.68341', '');
INSERT INTO `t_test1` VALUES ('313', '北京中科华兴环保有限公司', '91110114MA01MQNB5A', '北京市昌平区西关路20号2号楼2层2-222', '北京市昌平区琥珀郡4号楼618室', '\\N', '\\N', '徐世公', '18510992411', null, '116.219861', '40.223542', '116.22086', '116.22086', '');
INSERT INTO `t_test1` VALUES ('314', '北京望海环保科技有限公司', '911101146908219997', '北京市昌平区科技园区超前路37号院16号楼2层B0072号', '北京市昌平区科技园区超前路37号院6号楼B单元808室', '\\N', '\\N', '何小军', '13366356635', null, '116.256021', '40.20611', '116.256021', '116.256021', '');
INSERT INTO `t_test1` VALUES ('315', '北京星空清洗服务有限公司', '91110105673840047E', '北京市朝阳区八里庄西里97号1106室', '北京市朝阳区大黄庄西路3号院', '\\N', '\\N', '赵小永', '13910516320', null, '116.495471', '39.914609', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('316', '北京吉宇鑫中央空调清洗有限公司', '9111010576994406XJ', '北京市朝阳区幸福二村20号住宅楼11层1101室', '北京市朝阳区幸福二村20号住宅楼11层1101室', '\\N', '\\N', '徐建亭', '17611635635', null, '116.445281', '39.939344', '116.445281', '116.445281', '');
INSERT INTO `t_test1` VALUES ('317', '北京聚利泰佳环境科技有限公司', '91110106355222542F', '北京市丰台区造甲街110号2号平方', '丰台区太子峪白草洼', '\\N', '\\N', '王金富', '13811560668', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('318', '北京勉学教育科技有限公司', '91110302MA01F4CFXY', '北京市通州区马头村西4号一幢2层2282', '北京市通州区马头村西4号一幢2层2282', '\\N', '\\N', '张薇', '13502193839', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('319', '北京吉顺宇翔科贸有限公司', '  91110106589109403Y', '德润街6号院8号楼17层1708', '德润街6号院8号楼17层1708', '\\N', '\\N', ' 葛艳敏', '13611208785', null, '116.01043', '39.712413', '116.01043', '116.01043', '');
INSERT INTO `t_test1` VALUES ('320', '北京福喜家政服务有限公司', '91110113MA005Q7855', '北京顺义区李桥镇顺通路李桥段60-188', '北京顺义区李桥镇顺通路李桥段60-188', '\\N', '\\N', '蔡春玲', '13601038837', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('321', '北京圣泰珈皓消防科技有限公司', '91110117697745423H', '北京市平谷区夏各庄镇纪太务村南街61号', '北京市平谷区夏各庄镇纪太务村南街61号', '\\N', '\\N', '贾炳友', '13381202036', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('322', '北京金石鸿泰清洗服务有限公司', '9111011431806491XU', '北京市昌平区回龙观镇西大街35号院3号楼3层350', '北京市昌平区回龙观镇西大街35号院3号楼3层350', '\\N', '\\N', '孔德立', '18610568005', null, '116.332889', '40.080187', '116.332889', '116.332889', '');
INSERT INTO `t_test1` VALUES ('323', '北京利博天方环保科技有限公司', '91110116MA00D5MB1B', '北京市怀柔区雁栖经济开发区雁栖大街13号3层', '台湖蒋辛庄村60号', '\\N', '\\N', '郭勇', '13522820743', null, '116.696794', '40.362202', '', '', '村');
INSERT INTO `t_test1` VALUES ('324', '北京京盾西科姆电子安全有限公司', '91110000600039005A', '北京市朝阳区八里庄西里100号住邦2000商务中心东区5层', '北京市朝阳区八里庄西里100号住邦2000商务中心东区5层', '\\N', '\\N', '温桂勇', '13701387921', null, '116.495157', '39.915158', '116.495157', '116.495157', '');
INSERT INTO `t_test1` VALUES ('325', '北京万达新保洁服务有限责任公司', '911101057940800722', '北京市朝阳区朝阳路十里堡综合楼618室', '北京市朝阳区朝阳路十里堡综合楼618室', '\\N', '\\N', '谭佳顺', '13001208265', null, '116.503031', '39.916337', '116.503031', '116.503031', '');
INSERT INTO `t_test1` VALUES ('326', '北京圣美伦清洁科技有限公司', '9111010263308753X7', '北京市西城区平原里小区20号楼陶然居B-103', '北京市丰台区玉泉营桥南京开大厦三层3FA21-25', '\\N', '\\N', '刘永彬', '13146388626', null, '116.373629', '39.882311', '116.344719', '116.344719', '');
INSERT INTO `t_test1` VALUES ('327', '北京华夏众安科技有限公司', '91110105MA01LGD929', '北京市朝阳区高碑店乡西店村42号楼7号二层', '北京市朝阳区高碑店乡西店村42号楼7号二层', '\\N', '\\N', '高云', '13581911446', null, '116.520988', '39.904933', '116.520988', '116.520988', '');
INSERT INTO `t_test1` VALUES ('328', '北京金星铭吉消防安全设备有限公司', '91110111MA01ND2X1U', '北京市房山区良乡凯旋大街建设路18号-D10576', '北京市房山区良乡凯旋大街建设路18号-D10576', '\\N', '\\N', '吴琦', '18801119919', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('329', '北京青全清洁服务有限公司', '91110107071722887Q', '北京市石景山区广宁村新立街25号托儿所207室', '北京市石景山区广宁村新立街25号托儿所207室', '\\N', '\\N', '王春全', '13911197449', null, '116.144471', '39.929276', '116.144471', '116.144471', '');
INSERT INTO `t_test1` VALUES ('330', '北京瑞丰永兴科技有限公司', '91110109MA01P3520H', '北京市门头沟区三家店东街42号3幢1412', '北京市门头沟区三家店东街42号3幢1412', '\\N', '\\N', '牛冬辉', '13911931661', null, '116.110875', '39.961725', '116.110875', '116.110875', '');
INSERT INTO `t_test1` VALUES ('331', '北京永洁利民生物科技有限公司', '911101055844844235', '北京市朝阳区幸福一村八巷北侧1号楼三层 3011室', '北京市朝阳区幸福一村八巷北侧1号楼三层 3011室', '\\N', '\\N', '郭文香', '13621261796', null, '116.448413', '39.934685', '116.448413', '116.448413', '');
INSERT INTO `t_test1` VALUES ('332', '北京市双节清洗有限公司', '911101065548862453', '北京市丰台区星火路1号Q517室', '北京市丰台区星火路1号Q517室', '\\N', '\\N', '王晶', '13031017275', null, '116.285413', '39.834476', '116.285413', '116.285413', '');
INSERT INTO `t_test1` VALUES ('333', '北京佳德鸿运环保科技有限公司', '91110116MA01P00H3C', '北京市怀柔区怀北镇怀北路308号', '北京市朝阳区黑庄户万子营村170号', '\\N', '\\N', '杨缓', '13681019932', null, '116.688223', '40.389386', '', '', '村');
INSERT INTO `t_test1` VALUES ('334', '北京信通达成环保科技有限公司', '91110228MS01KXC033', '新西路2号果园街道办事处办公楼515室', '平房乡亮马厂村', '\\N', '\\N', '李俊芳', '13522205829', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('335', '北京睿沨环保科技有限公司', '91110108MA005J4R2R', '北京市海淀区阜成路81号院1号楼五层529房间', '北京市海淀区阜成路81号院1号楼五层529房间', '\\N', '\\N', '李廷玉', '15210381215', null, '116.292851', '39.925051', '116.292851', '116.292851', '');
INSERT INTO `t_test1` VALUES ('336', '北京学尔德教育科技有限公司', '911101170828810908', '北京市平谷区林荫北街13号信息大厦808室', '北京市平谷区林荫北街13号信息大厦808室', '\\N', '\\N', '胡志超', '15810685241', null, '117.104984', '40.141049', '117.104984', '117.104984', '');
INSERT INTO `t_test1` VALUES ('337', '北京盛弘达云科技环保有限公司', '91110228MA01NPFB7P', '北庄镇杨家堡村黄岩口3号', '檀营小区7号楼3单元402', '\\N', '\\N', '董建', '13391612012', null, '', '', '116.861131', '116.861131', '注册地址为村');
INSERT INTO `t_test1` VALUES ('338', '北京鑫洋家业环保科技有限公司', '91110116MA01G1HJ1Q', '北京市怀柔区九渡河镇黄坎村735号', '北京市怀柔区九渡河镇黄坎村735号', '\\N', '\\N', '钱典彪', '13910854085', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('339', '北京安莉斯环保科技有限公司', '91110106MA005C7A36', '北京市丰台区南四环西路128号院4号楼12层1515-1516(园区)', '北京市丰台区南四环西路128号院4号楼12层1515-1516(园区)', '\\N', '\\N', '袁振超', '15313705904', null, '116.298639', '39.829504', '116.298639', '116.298639', '');
INSERT INTO `t_test1` VALUES ('340', '北京海强兴隆厨房设备有限公司', '91110229L33949928T', '北京市延庆区香营乡香营村一区13号', '北京市延庆区香营乡香营村一区13号', '\\N', '\\N', '郭海强', '13311286419', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('341', '北京中威宏酒店设备有限公司', '91110111663700948N', '琉璃河镇白庄村9区1号', '琉璃河镇白庄村9区1号', '\\N', '\\N', '张强', '13601173228', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('342', '北京安全象消防技术有限公司', '91110105MA00E0Y50T', '北京市朝阳区高碑店西店村56号楼5号一层', '北京市朝阳区高碑店西店村56号楼5号一层', '\\N', '\\N', '王硕', '15718807713', null, '116.519692', '39.904742', '116.519692', '116.519692', '');
INSERT INTO `t_test1` VALUES ('343', '北京龙佳建业环保科技有限公司', '91110229MA01NXC264', '延庆镇高塔街甲58号1幢-1层-131号', '延庆镇高塔街甲58号1幢-1层-131号', '\\N', '\\N', '陈鹏', '13811377405', null, '115.986862', '40.465748', '115.986862', '115.986862', '');
INSERT INTO `t_test1` VALUES ('344', '北京卫消安消防技术咨询有限公司', '91110111MA01BPPH43', '北京市房山区长阳万兴路86号-A2593', '北京市房山区长阳万兴路86号-A2593', '\\N', '\\N', '赵冬冬', '15321336371', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('345', '北京智博天琪科技发展有限公司', '91110112590651953A	', '北京市通州区宋庄镇徐辛庄大街1号373室', '北京市通州区宋庄镇徐辛庄大街1号373室', '\\N', '\\N', '张佳萌', '17801234707', null, '116.69811', '39.990517', '116.69811', '116.69811', '村');
INSERT INTO `t_test1` VALUES ('346', '北京万山从商贸有限公司', '911102293183109492', '北京市延庆区永宁镇北关小区6号楼102', '中关村南大街方圆大厦优客工场2层', '\\N', '\\N', '张秀存', '15001356346', null, '115.967868', '40.46476', '116.329601', '116.329601', '');
INSERT INTO `t_test1` VALUES ('347', '北京志远鸿达消防设备有限公司', '9111010976753768XP', '北京市门头沟区城子大街31号', '玲珑路恩济西园8号楼8101室', '\\N', '\\N', '李雪松', '13301265868', null, '', '', '116.282924', '116.282924', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('348', '北京星磊宜洁环保科技有限公司', '91110111MA01NXKN9H', '北京市房山区长阳万兴路86号-N2162', '北京市房山区长阳万兴路86号-N2162', '\\N', '\\N', '相小红', '13522002686', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('349', '北京华妍餐饮服务有限公司', '92110115MA00CXY33G', '北京市大兴区长子营镇朱庄村东口商业街门脸房2号', '北京市大兴区长子营镇朱庄村东口商业街门脸房2号', '\\N', '\\N', '张谦', '13910380002', null, '116.593277', '39.639991', '116.593277', '116.593277', '');
INSERT INTO `t_test1` VALUES ('350', '北京中亚九州环保科技有限公司', '911101087747402562', '北京市海淀区西郊半壁店59号1号楼0528室', '北京市海淀区西郊半壁店59号1号楼0528室', '\\N', '\\N', '陈宗平', '13910527932', null, '116.26008', '39.930835', '116.26008', '116.26008', '');
INSERT INTO `t_test1` VALUES ('351', '北京明远嘉诚教育咨询有限公司', '91110228059284781G', '北京市密云区西大桥路67号十里堡镇政府办公楼407室-314', '北京市通州区新华大街绿地中央广场一期805', '\\N', '\\N', '张馨', '13370155004', null, '116.8018', '40.358112', '116.65838', '116.65838', '');
INSERT INTO `t_test1` VALUES ('352', '北京国泰宏业消防安全检测有限公司', '91110106765008813N', '北京市丰台区新发地京良桥西侧2000米路北北京新发地丰和顺农产品市场7号楼3单元302室', '北京市丰台区新发地京良桥西侧2000米路北北京新发地丰和顺农产品市场7号楼3单元302室', '\\N', '\\N', '于淑敏', '15901345032', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('353', '北京光尘环保科技股份有限公司', '911101086669309843', '北京市房山区良乡凯旋大街建设路18号－E858', '北京市丰台区富丰桥外杨柳垂钓园内', '张玲玲', '13701373100', '孙朝中', '13311127888', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('354', '北京鑫淼缘保洁服务有限公司', '91110113MA01N7JF69', '北京市顺义区南法信镇金关北二路2号院1号楼4层442', '北京市顺义区南法信镇金关北二路2号院1号楼4层442', '\\N', '\\N', '包书名', '15010517319', null, '116.612531', '40.116513', '116.612531', '116.612531', '');
INSERT INTO `t_test1` VALUES ('355', '北京一凡雅保洁有限公司', '911101057601068016', '城南嘉园益城园16号楼8层3-0810', '东三环南路联合国际大厦甲段611', '\\N', '\\N', '臧雪冬', '18910309095', null, '116.368792', '39.832716', '116.459834', '116.459834', '');
INSERT INTO `t_test1` VALUES ('356', '北京志恩远宏科技有限公司', '91110107MA008NW07D', '北京市石景山区古城大街特钢公司十一区（首特创业基地A座）二层248号', '八大处甲1号院', '\\N', '\\N', '刘恩羽', '18518373777', null, '116.179346', '39.914909', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('357', '北京华宇宏润环保科技有限公司', '91110228MA01NGDU54', '新西路2号果园街道办事处办公楼515室-436', '青云店镇小张本村', '\\N', '\\N', '陈太平', '13886731671', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('358', '北京皓德恒溥教育科技有限公司', '911101055923854683', '北京市朝阳区酒仙桥2号院内（707厂）【5-2】1层', '北京市朝阳区酒仙桥2号院内（707厂）【5-2】1层', '\\N', '\\N', '郑惠芳', '13820774761', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('359', '北京镇远安全保卫技术服务有限公司', '911101117614123091', '房山区良乡镇安南小区C区四排2号', '房山区良乡镇安南小区C区四排2号', '\\N', '\\N', '蔡金潮', '13901351841', null, '116.118079', '39.749876', '116.118079', '116.118079', '');
INSERT INTO `t_test1` VALUES ('360', '北京上地天浩科贸有限责任公司', '91110108678214272X', '苏家坨镇后沙涧村第三小区99号 ', '苏家坨镇后沙涧村第三小区99号 ', '\\N', '\\N', '刘棣', '13371666686', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('361', '中财建讯(北京)教育科技有限公司', '91110105MA019G131N', '北京市朝阳区朝阳路71号17层2008', '瑞城国际2008', '\\N', '\\N', '郑士海', '18500540316', null, '116.531024', '39.917483', '116.531024', '116.531024', '');
INSERT INTO `t_test1` VALUES ('362', '北京家兴邦科技有限公司', '91110116MA009U470K', '北京市怀柔区庙城镇庙城村临300号401室', '北京市大兴区瀛海朗苑一号楼二单元1301', '\\N', '\\N', '张凤燕', '13301264057', null, '116.640008', '40.293112', '116.441779', '116.441779', '');
INSERT INTO `t_test1` VALUES ('363', '北京鼎立家政服务有限公司', '91110116MA01AYWQ1G', '怀北镇怀北路308号 ', '怀北镇怀北路308号 ', '\\N', '\\N', '党军军', '15110197586', null, '116.688223', '40.389386', '116.688223', '116.688223', '');
INSERT INTO `t_test1` VALUES ('364', '北京广灿环境科技有限公司', '91110116MA01P5Y55L', '北京市怀柔区北房镇幸福西街3号1幢101室', '北京市怀柔区北房镇幸福西街3号1幢101室', '\\N', '\\N', '李寿会', '13718895193', null, '116.702435', '40.326262', '116.702435', '116.702435', '');
INSERT INTO `t_test1` VALUES ('365', '北京熙德净环保工程有限公司', '91110117MA00DNEN8X', '北京市平谷区大华山镇大华山南路256号', '北京市平谷区大华山镇大华山南路256号', '\\N', '\\N', '李朝霞', '13601007684', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('366', '北京开元易洁环保科技有限公司', '91110111MA01P2PD57', '北京市房山区长阳万兴路86号-N2185', '北京市海淀区五道口华清嘉园12—18号千鹤', '\\N', '\\N', '徐丹', '13717868806', null, '', '', '116.33683', '116.33683', '同116');
INSERT INTO `t_test1` VALUES ('367', '北京海润兴业物业管理有限公司', '91110228306499764X', '北京市密云区鼓楼东大街3号山水大厦3层313室-477', '北京市密云区鼓楼东大街3号山水大厦3层313室-477', '\\N', '\\N', '何昭霞', '15313706413', null, '116.864069', '40.376774', '116.864069', '116.864069', '');
INSERT INTO `t_test1` VALUES ('368', '北京中检环能环保科技有限公司', '91110229MA01PAJP7D', '北京市延庆区康庄镇商业街77号201室', '北京市延庆区康庄镇商业街77号201室', '\\N', '\\N', '王建', '15330072881', null, '115.901146', '40.376436', '115.901146', '115.901146', '');
INSERT INTO `t_test1` VALUES ('369', '北京尚派科贸有限公司', '91110105663134608G', '北京市朝阳区百子湾炉25号11幢平房046室', '北京市朝阳区百子湾炉25号11幢平房046室', '\\N', '\\N', '雷红霞', '13366120002', null, '116.486148', '39.900834', '116.486148', '116.486148', '');
INSERT INTO `t_test1` VALUES ('370', '北京中巨建设工程有限公司', '91110113MA00AKEU0K', '北京市房山区石楼镇梨元店村村委会东330米', '亦庄经济技术开发区宏达工业园7号楼永昌商务中心3层301室', '\\N', '\\N', '孔工', '15300066005', null, '', '', '116.509486', '116.509486', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('371', '北京鑫培安全自动化技术有限公司', '91110106094561465L', '龙兴南二路6号院3号楼25层2508', '张仪村甲96号', '\\N', '\\N', '秦培杰', '18901278686', null, '116.142205', '39.897635', '', '', '村');
INSERT INTO `t_test1` VALUES ('372', '北京五岳朝天消防设备有限公司', '91110106MA008P6E15', '良乡凯旋大街建设路18号-D7182', '李桥镇任李路沿河段81号', '\\N', '\\N', '林福真', '18310916119', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('373', '北京信诚佳艺商贸有限公司', '911101173066675968', '北京市平谷区中关村科技园区平谷园兴谷A区6号-521', '小汤山镇尚信村口', '\\N', '\\N', '宿春凯', '13651198786', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('374', '北京中建高科环保科技有限公司', '91110114095176665A', '北京市昌平区回龙观镇发展路8号院8号楼10层1011', '回龙观大厦818室', '\\N', '\\N', '孙向国', '17301080959', null, '116.294754', '40.104082', '', '', '没有回龙观大厦');
INSERT INTO `t_test1` VALUES ('375', '北京正元中大环保科技有限公司', '91110302MA01PC0K0W', '北京市北京经济技术开发区科创十四街20号院1号楼6层656室', '北京市北京经济技术开发区科创十四街20号院1号楼6层656室', '\\N', '\\N', '刘伟', '13031115198', null, '116.559049', '39.774879', '116.559049', '116.559049', '');
INSERT INTO `t_test1` VALUES ('376', '北京恒泰创艺装修装饰工程有限公司', '91110117MA002X8B91', '黄松峪乡黄松峪东街402号', '黄松峪乡黄松峪东街402号', '\\N', '\\N', '张社民', '18611859633', null, '117.26473', '40.225599', '117.26473', '117.26473', '');
INSERT INTO `t_test1` VALUES ('377', '北京意林新科技有限公司', '91110114MA01P4QN9C', '立汤路175号院1号楼-4至5层101内一层1303室', '天竺镇楼台村幸福西街19号', '\\N', '\\N', '戚新国', '17743584339', null, '116.412141', '40.064093', '116.593913', '116.593913', '');
INSERT INTO `t_test1` VALUES ('378', '北京国顺安科技有限公司', '91110228MA006CL570', '北京市密云区西田各庄镇雁密路99号601室-1724(西田各庄镇集中办公区) ', '北京市密云区西田各庄镇雁密路99号601室-1724(西田各庄镇集中办公区) ', '\\N', '\\N', '孙敬国', '13661377839', null, '116.754733', '40.367147', '116.754733', '116.754733', '');
INSERT INTO `t_test1` VALUES ('379', '中洁顺达（北京）保洁服务有限公司', '91110111MA01PD9C56', '北京市房山区城关街道顾八路1区1号-T899', '北京市房山区阎村镇小十三里居委会', '\\N', '\\N', '李侠', '15313705849', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('380', '北京诚慧清洁有限公司', '91110304MA01FXN228', '北京市房山区燕山大件路（集联北区）2号楼二层B区8031', '北京市朝阳区金盏乡小店村', '\\N', '\\N', '刘利婷', '15831811589', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('381', '北京清与净环保服务有限公司', '91110116MA01NLFP07', '雁栖经济开发区雁栖路33号院1号楼103室', '十八里店乡大洋路市场西门酒店用品二楼办公室', '\\N', '\\N', '汪小清', '13901185284', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('382', '北京绿源同州环保科技有限公司', '91110228MA01KQRL17', '北京市密云区新北路15号投资促进局办公楼205室-163（投资促进局集中办公区）', '北京市密云区河南寨镇提辖庄村养殖小区内', '\\N', '\\N', '吴桐', '17600169595', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('383', '亿寰（北京）环保科技发展有限公司', '91110102MA01PF881D', '北京市西城区新华里16号院10号楼1单元103', '北京市东城区大雅宝胡同8号', '\\N', '\\N', '张绪鹏', '13910520560', null, '116.352086', '39.933869', '116.433166', '116.433166', '');
INSERT INTO `t_test1` VALUES ('384', '上海樊登厨房设备清洗有限公司', '91310120MA1HN6B22H', '上海市奉贤区南桥镇宏伟路24号5幢10075室', '北京市朝阳区惠新西街5号院2号楼1106室', '\\N', '\\N', '谢润朝', '18621620228', null, '121.457924', '30.91375', '116.415771', '116.415771', '');
INSERT INTO `t_test1` VALUES ('385', '北京普思顿教育科技有限公司', '91110108306618815D', '北京市昌平区东小口镇立汤路188号院1号楼9层0908', '北京市昌平区东小口镇立汤路188号院1号楼9层0908', '\\N', '\\N', '孙影', '13070187010', null, '116.41494', '40.056439', '116.41494', '116.41494', '');
INSERT INTO `t_test1` VALUES ('386', '必优拓普（北京）科技发展有限公司', '911101055844682123', '清河营东路2号院3号楼8层825内1', '清河营东路2号院3号楼8层825内1', '\\N', '\\N', '徐邦荣', '17326877701', null, '116.438243', '40.049863', '116.438243', '116.438243', '');
INSERT INTO `t_test1` VALUES ('387', '北京立美净环保科技服务有限公司', '91110105MA01PDFEXY', '北京市朝阳区望京东园四区13号楼-4至33层101内19层19A502室', '北京市顺义区高丽营镇七村北街3号', '\\N', '\\N', '哈金龙', '13716236352', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('388', '北京炬飞消防设备有限公司', '91110117MA0043E9XJ', '王辛庄镇放光前街35号', '王辛庄镇放光前街35号', '\\N', '\\N', '贾光炬', '13661170873', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('389', '北京中消创安教育科技有限公司', '91110105MA0090MQ9G', '北苑东路19号院1号楼13层', '建材城西路中腾建华商务大厦三楼', '\\N', '\\N', '曹广进', '13220198583', null, '116.440925', '40.041983', '116.335924', '116.335924', '');
INSERT INTO `t_test1` VALUES ('390', '北京广桥金安消防器材有限公司', '91110105753333993J', '北京市朝阳区安外北苑大羊坊', '北京市朝阳区安外北苑大羊坊', '\\N', '\\N', '穆萱泽', '18801472300', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('391', '宁波环峰消防技术有限公司', '913302063089921147', '北仑区小港纬三路33号1幢1号-5', '北仑区小港振兴西路360号', '\\N', '\\N', '李满', '18658286110', null, '121.707545', '29.926307', '121.712797', '121.712797', '');
INSERT INTO `t_test1` VALUES ('392', '北京溶绿源生态科技发展有限公司', '91110112MA0069Q26F', '北京市通州区潞通大街191号2层01-2A69D', '北京市通州区珠江国际城一区23号楼3单元201室', '\\N', '\\N', '李志民', '18311336203', null, '116.697814', '39.907308', '116.687717', '116.687717', '');
INSERT INTO `t_test1` VALUES ('393', '北京尤氏腾达新能源科技有限公司', '91110105MA0059BGXF', '北京经济开发区兴盛街17号', '北京经济开发区兴盛街17号', '\\N', '\\N', '张勇', '18896687999', null, '116.523602', '39.79589', '116.523602', '116.523602', '');
INSERT INTO `t_test1` VALUES ('394', '北京蓝箭环保工程有限公司', '91110113MA01M91X97', '北京市顺义区空港街道安华大街1号1幢1层4086号', '北京市顺义区空港街道安华大街1号1幢1层4086号', '\\N', '\\N', '李新民', '15810131008', null, '116.554949', '40.081677', '116.554949', '116.554949', '');
INSERT INTO `t_test1` VALUES ('395', '北京市西城区外施建筑业职工培训中心', '5211010257515393XN', '北京市西城区南滨河路31号华亨大厦6层611', '北京市西城区南滨河路31号华亨大厦6层611', '\\N', '\\N', '张风华', '13683604247', null, '116.348424', '39.880779', '116.348424', '116.348424', '');
INSERT INTO `t_test1` VALUES ('396', '睿卓伟业技术服务（北京）有限公司', '91110105MA00635C8L', '北京市朝阳区小红门鸿博家园1区9号楼5单元102底商', '北京市朝阳区小红门鸿博家园1区9号楼5单元102底商', '\\N', '\\N', '曹晓伟', '13681275421', null, '116.475546', '39.829145', '116.475546', '116.475546', '');
INSERT INTO `t_test1` VALUES ('397', '北京京安民业安全防范技术有限公司', '91110116MA01AYBG67', '北京市怀柔区渤海镇怀沙路536号', '朝阳区双桥东路10号院5号楼1804', '\\N', '\\N', '王利军', '13671330855', null, '116.612056', '40.3465', '116.604094', '116.604094', '');
INSERT INTO `t_test1` VALUES ('398', '北京清之源消防技术有限公司', '91110112MA01P6LQ73', '北京市通州区榆景东路5号院55号楼2层 101室2753', '北京朝阳区西直河王村路107号', '\\N', '\\N', '尹银行', '15311199026', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('399', '北京阿美清洗保洁有限公司', '9111010980236181XJ', '北京市门头沟区七棵树东大街46号', '北京市门头沟区七棵树东大街46号', '\\N', '\\N', '黄桂芹', '18501289196', null, '116.094768', '39.949316', '116.094768', '116.094768', '');
INSERT INTO `t_test1` VALUES ('400', '北京鸿源华博环保科技有限公司', '91110115MA01PKGR14', '大兴区龙达大街1号院2号楼1层4单元108', '大兴区龙达大街1号院2号楼1层4单元108', '\\N', '\\N', '景卫忠', '13240052587', null, '', '', '', '', '没有找到龙达大街');
INSERT INTO `t_test1` VALUES ('401', '北京创新环科环保科技有限公司', '91110108551418569T', '北京市东城区天坛东路74号三层309室', '北京市东城区天坛东路74号三层309室', '\\N', '\\N', '孙艳青', '13601035925', null, '116.421504', '39.87699', '116.421504', '116.421504', '');
INSERT INTO `t_test1` VALUES ('402', '北京怡嘉良华清洁服务有限公司', '91110111MA01N2QB40', '北京市房山区良乡凯旋大街建设路18号-D10367', '北京市房山区良乡凯旋大街建设路18号-D10367', '\\N', '\\N', '郑鑫磊', '18310255654', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('403', '北京中民园博教育科技有限公司', '91110229MA01EGURXC', '北京市延庆区中关村延庆园风谷四路8号院27号楼2466 ', '北京市延庆区妫水北街5号院中关村现代园2号楼4层', '\\N', '\\N', '李艳东', '18722012256', null, '115.921775', '40.368058', '115.975924', '115.975924', '');
INSERT INTO `t_test1` VALUES ('404', '北京中佳安消防科技有限公司', '91110113MA01JB9L0N', '北京市顺义区北小营镇南市路西13号', '南彩镇前郝家疃村', '\\N', '\\N', '段金良', '18801103744', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('405', '上海盛善电气有限公司', '913101077872463103', '上海市普陀区祁连山南路2891弄200号C楼5层', '上海市普陀区祁连山南路2891弄200号C楼5层', '\\N', '\\N', '曹科', '13761118810', null, '121.373321', '31.267464', '121.373321', '121.373321', '');
INSERT INTO `t_test1` VALUES ('406', '北京三淼清洁服务有限公司', '91110229MA01GQF87U', '北京市延庆区四海镇大吉祥村0114号 ', '北京市延庆区四海镇大吉祥村0114号 ', '\\N', '\\N', '贾东伟', '15811435598', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('407', '兆路伟业（北京）机电制冷设备有限公司', '91110106571206766Q', '北京市门头沟区雁翅镇高芹路1号院YC-0511号', '北京市门头沟区雁翅镇高芹路1号院YC-0511号', '\\N', '\\N', '张爱英', '13801254858', null, '115.876725', '40.038707', '115.876725', '115.876725', '');
INSERT INTO `t_test1` VALUES ('408', '北京晟瑞环境工程有限公司', '91110115MA01PMJY39', '北京市大兴区长恒路20号院20号楼2层201', '北京市大兴区长恒路20号院20号楼2层201', '\\N', '\\N', '夏宇', '18600845995', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('409', '北京程辉腾达商贸有限公司', '91110228MA008FR548', '北京市密云区北庄镇土门村苇子峪西沟199号', '北京市海淀区清河嘉园东区甲1号1345', '\\N', '\\N', '田磊', '18500388541', null, '', '', '116.346597', '116.346597', '注册地址为村');
INSERT INTO `t_test1` VALUES ('410', '北京市京北园雅保洁服务有限公司', '911101056923305953', '北京市朝阳区崔各庄乡南皋村65号', '北京市海淀区八里庄街道八宝庄2号楼4门01地下室', '\\N', '\\N', '冯宣岱', '13001068625', null, '', '', '116.295116', '116.295116', '注册地址为村');
INSERT INTO `t_test1` VALUES ('411', '北京安信捷创科技发展服务有限公司', '91110106MA001Y6P8G', '北京市丰台区南三环西路91号院1号楼301-1018号', '北京市丰台区南三环西路91号院1号楼301-1018号', '\\N', '\\N', '张宪明', '17710723312', null, '116.332656', '39.850293', '116.332656', '116.332656', '');
INSERT INTO `t_test1` VALUES ('412', '北京木火通明消防科技有限公司', '91110228MA005TEW4R', '北京市密云区东邵渠镇东邵渠村578号', '北京市密云区康馨雅苑38号楼1单元102', '\\N', '\\N', '王海彬', '13811991391', null, '', '', '116.82467', '116.82467', '注册地址为村');
INSERT INTO `t_test1` VALUES ('413', '北京学信无忧教育咨询有限公司', '91110105MA009WAT4Y', '北京市昌平区回龙观镇黄平路19号院2号16层1617', '北京市昌平区回龙观镇黄平路19号院2号16层1617 ', '\\N', '\\N', '高波', '13521421807', null, '116.348698', '40.066676', '116.348698', '116.348698', '');
INSERT INTO `t_test1` VALUES ('414', '北京绿洁阳光环保科技有限公司', '91110115085487515J', '北京市大兴区团河路48号院2号楼115室', '北京市大兴区刘一村村委会', '\\N', '\\N', '郭哲', '13001922966', null, '116.354087', '39.736448', '116.374628', '116.374628', '');
INSERT INTO `t_test1` VALUES ('415', '北京万家洁新科技有限公司', '91110108MA01C1DRXE', '海淀南路36号三层0312-A024', '玉泉路5号', '尹龙春', '13331090905', '黄剑', '13331090905', null, '116.302452', '39.974064', '116.247867', '116.247867', '');
INSERT INTO `t_test1` VALUES ('416', '北京天宸鸿晟环保服务有限公司', '91110111MA01PJ8H6W', '北京市房山区良乡凯旋大街建设路18号-D11927', '北京市房山区良乡凯旋大街建设路18号-D11927', '\\N', '\\N', '白民辉 ', '18612886348', null, '', '', '', '', '');
INSERT INTO `t_test1` VALUES ('417', '北京华奥众诚安全防范技术咨询有限公司', '91110116MA005N103H', '雁栖经济开发区杨雁路88号', '亚运村汇园公寓K座12门125室', '\\N', '\\N', '王思佳', '15110144405', null, '116.685744', '40.342753', '116.40225', '116.40225', '');
INSERT INTO `t_test1` VALUES ('418', '北京尚仕洁保洁有限公司', '91110105671724819D', '北京市朝阳区平房乡姚家园村275室', '北京市朝阳区平房乡姚家园村275室', '\\N', '\\N', '尚斌', '13910302107', null, '', '', '', '', '');
INSERT INTO `t_test1` VALUES ('419', '北京通汇恒泰安防科技有限公司', '91110228MA01MRRQ6H', '密云镇大唐庄村委会综合办公楼三层305房间', '密云镇大唐庄村委会综合办公楼三层305房间', '\\N', '\\N', '郭东梅', '13911088402', null, '116.834787', '40.387014', '116.834787', '116.834787', '');
INSERT INTO `t_test1` VALUES ('420', '北京红运方华环保科技有限公司', '91110112MA01PDEL0R', '潞苑南大街甲560号B区103-B7', '潞苑南大街甲560号B区103-B7', '\\N', '\\N', '梁宾红', '15511380999', null, '116.673678', '39.927876', '116.673678', '116.673678', '');
INSERT INTO `t_test1` VALUES ('421', '北京荣安永信消防科技服务中心', '91110106MA00468H56', '南四环西路128号院4号楼12层1515-1516园区', '双桥路金隅可乐B座925', '\\N', '\\N', '李美欣', '18911035878', null, '116.298639', '39.829504', '116.576665', '116.576665', '');
INSERT INTO `t_test1` VALUES ('422', '北京万民安消防科技服务中心', '91110106MA00149T8Q', '北京市丰台区汽车博物馆东路6号3号楼1单元12层1201-G52（园区））', '通州区中山大街61号北京one5号楼2单元3205', '\\N', '\\N', '邵长柱', '13522558119', null, '116.30412', '39.826866', '116.655113', '116.655113', '');
INSERT INTO `t_test1` VALUES ('423', '上海久蔚环保技术有限公司北京分公司', '91110112MA01PWMR29', '景盛中街13号8幢2层310', '名流未来大厦1417室', '\\N', '\\N', '尚召侠', '18811126264', null, '116.564821', '39.738887', '116.371319', '116.371319', '');
INSERT INTO `t_test1` VALUES ('424', '北京兴业富江清洗有限公司', '91110115L493037936', '北京市大兴区西红门镇十一村宏盛路8号', '北京市大兴区西红门镇兴海家园月苑15号楼5单元302', '\\N', '\\N', '刘万江', '13381382991', null, '116.336146', '39.794179', '116.337989', '116.337989', '');
INSERT INTO `t_test1` VALUES ('425', '北京鼎盛创安消防技术有限公司', '91110108599691378Q', '海淀南路13号亿方大厦后院201室', '海淀南路13号亿方大厦后院201室', '\\N', '\\N', '杨勇刚', '13693693998', null, '116.306831', '39.976089', '116.306831', '116.306831', '');
INSERT INTO `t_test1` VALUES ('426', '北京鑫淼源保洁服务有限公司', '91110113MA01GBWW0B', '北京市顺义区仁和镇军营街16号院8号楼2层203', '北京市顺义区仁和镇军营街16号院8号楼2层203', '\\N', '\\N', '范奇林', '15810448567', null, '116.631227', '40.107898', '116.631227', '116.631227', '');
INSERT INTO `t_test1` VALUES ('427', '北京育人阳光教育科技有限公司', '911101056804779522', '五里桥二街一号院7号楼一层0118', '五里桥二街一号院7号楼一层0118', '\\N', '\\N', '孟晨阳', '18911668142', null, '116.617065', '39.928639', '116.617065', '116.617065', '');
INSERT INTO `t_test1` VALUES ('428', '北京盛海伟业消防安全科技有限公司', '91110228318157729J', '北京市密云区康馨雅苑38号楼1单元102', '北京市密云区康馨雅苑38号楼1单元102', '\\N', '\\N', '于亚伟', '13161452322', null, '116.82467', '40.37552', '116.82467', '116.82467', '');
INSERT INTO `t_test1` VALUES ('429', '北京学研领航教育科技有限公司', '9111010735524598XH', '实兴大街30号院3号楼2层A-1211房间', '阎村镇开古庄1里84号', '\\N', '\\N', '周莎', '15801420562', null, '116.193436', '39.939397', '', '', '村');
INSERT INTO `t_test1` VALUES ('430', '北京消防协会', '11111', '111', '111', '\\N', '\\N', '督导', '18510391205', null, '', '', '116.491649', '116.491649', '');
INSERT INTO `t_test1` VALUES ('431', '测试调试数据-无需处理', '111', '11111', '1111', '\\N', '\\N', '222', '18911196809', null, '', '', '', '', '');
INSERT INTO `t_test1` VALUES ('432', '北京太平机电设备安装有限责任公司', '91110107101227618D', '北京市石景山区五里坨车站路1号', '北京市朝阳区姚家园路105号观湖国际1座1903', '张海建', '13701170380', '杨培', '18810781703', null, '116.126101', '39.956449', '116.494315', '116.494315', '');
INSERT INTO `t_test1` VALUES ('433', '北京奥得海消防设备有限公司', '9111010774937088XM', '北京市石景山区西下庄2-2-16', '北京市石景山区西下庄2-2-16', '邢瑞丰', '13651290335', '邢瑞丰', '13651290335', null, '116.19954', '39.945661', '116.19954', '116.19954', '');
INSERT INTO `t_test1` VALUES ('434', '北京海安博大电气消防安全检测有限公司', '91110108787773022Q', '香山门头新村2号南侧三层307室', '香山门头新村2号南侧三层307室', '魏美玲', '\\N', '敖日塔', '13911111574', null, '116.235821', '39.975678', '116.235821', '116.235821', '');
INSERT INTO `t_test1` VALUES ('435', '北京中安质环技术评价中心有限公司', '911101057400838849', '北京市朝阳区东三环南路58号富顿中心A座22层', '北京市朝阳区东三环南路58号富顿中心A座22层', '任磊', '13910968888', '罗金安', '13264278158', null, '116.462163', '39.885122', '116.462163', '116.462163', '');
INSERT INTO `t_test1` VALUES ('436', '北京虹仪消防技术服务有限公司', '91110304671717678Y', '北京市房山区燕山燕东路动力厂对面', '北京市房山区燕山燕东路动力厂对面', '李铁刚', '13001953456', '文东义', '13521392198', null, '', '', '', '', '');
INSERT INTO `t_test1` VALUES ('437', '北京永信安保公共安全技术有限公司', '91110105758212349K', '北京市朝阳区利泽中2路1号4层3A18', '北京市朝阳区高碑店文化新大街1718A', '刘刚', '13311515922', '秦宁宁', '13910723892', null, '116.472068', '40.013762', '116.5449', '116.5449', '');
INSERT INTO `t_test1` VALUES ('438', '北京安宁威尔应急消防安全科技有限公司', '9111010807657174XT', '彩和坊路8号3层301', '彩和坊路8号3层301', '陶铁牛', '13901193615', '许丹', '18211056560', null, '116.308813', '39.981458', '116.308813', '116.308813', '');
INSERT INTO `t_test1` VALUES ('439', '北京泽仪市政工程有限公司', '91110106678763941Y', '北京市北京经济技术开发区科创十三街31号院二区15号楼2层201-1', '北京市北京经济技术开发区科创十三街31号院二区15号楼2层201-1', '张碧华', '18601210166', '张琪', '15901207967', null, '116.554542', '39.777447', '116.554542', '116.554542', '');
INSERT INTO `t_test1` VALUES ('440', '北京逆火文化传媒有限公司', '91110106MA019NCW8E', '北京市丰台区丽泽路1号院9号楼201-1号', '北京市丰台区丽泽路1号院9号楼201-1号', '王立新', '13701285932', '王梦丽', '18248743126', null, '116.341425', '39.869784', '116.341425', '116.341425', '');
INSERT INTO `t_test1` VALUES ('441', '北京星顺达保洁服务有限公司', '91110105633662899P', '北京市朝阳区驼房营南路2号院18号楼4单元101室', '北京市朝阳区驼房营南路2号院18号楼4单元101室', '于彦敏', '13901333727', '张爽', '13911683987', null, '116.507489', '39.959532', '116.507489', '116.507489', '');
INSERT INTO `t_test1` VALUES ('442', '北京中视华业电视工程有限公司', '91110101101300061L', '北京市东城区禄米仓胡同71号24号楼101', '北京市东城区禄米仓胡同71号24号楼101', '芦燕生', '13311012776', '马长青', '13501064709', null, '116.428683', '39.917631', '116.428683', '116.428683', '');
INSERT INTO `t_test1` VALUES ('443', '北京安富伟业消防安全检测有限公司', '91110106779541299K', '北京市丰台区', '北京市丰台区京铁家园1区4号楼2层', '姜子华', '\\N', '杨建民', '18101203011', null, '116.28053', '39.894823', '116.28053', '116.28053', '');
INSERT INTO `t_test1` VALUES ('444', '北京火正消防安全技术研究院有限公司', '91110105MA0091KW', '北京市朝阳区北苑路40号14号楼三层西侧', '北京市朝阳区北苑路40号14号楼三层西侧', '侯军峰', '13801107685', '侯军峰', '13801107685', null, '116.419044', '40.034669', '116.419044', '116.419044', '');
INSERT INTO `t_test1` VALUES ('445', '北京安泰诚信消防器材有限公司', '91110105742304097K', '北京市朝阳区向军南里二巷5号', '北京市朝阳区向军南里二巷5号', '龚建英', '13801198192', '朱岐', '13671195351', null, '116.459771', '39.922132', '116.459771', '116.459771', '');
INSERT INTO `t_test1` VALUES ('446', '北京朗朗洁美保洁服务有限公司', '91110106335547382F', '北京市丰台区造甲街110号', '北京市丰台区造甲街110号2号平房', '孙园园', '13439212827', '梅军满', '13661291679', null, '116.296068', '39.843842', '116.296068', '116.296068', '');
INSERT INTO `t_test1` VALUES ('447', '北京业佳琪科贸有限公司', '91110105064913482T', '北京市朝阳区望京园609号楼11层1202', '北京市朝阳区望京园609号楼11层1202', '刘宝敬', '15612466793', '李广民', '13811386157', null, '116.476509', '39.989729', '116.476509', '116.476509', '');
INSERT INTO `t_test1` VALUES ('448', '北京华安泰达消防科技有限公司', '91110106751344971B', '北京市丰台区大红门南苑路84-5', '北京市丰台区大红门南苑路84-5', '王杨', '13910773519', '刘荣华', '13910322511', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('449', '北京富锦博消防科技有限公司', '91110113697727292F', '北京市顺义区赵全营镇豹房村北丰路6号', '北京市顺义区赵全营镇豹房村北丰路6号', '刘海军', '010-67889190', '马李淼', '13717573907', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('450', '富锦博（北京）建筑工程有限公司', '91110302MA00EH2U85', '北京市北京经济技术开发区科创五街38号院3号楼12层1205', '北京市北京经济技术开发区科创五街38号院3号楼12层1205', '马诗峰', '13681767457', '马庆灿', '18811648855', null, '116.533937', '39.801709', '116.533937', '116.533937', '');
INSERT INTO `t_test1` VALUES ('451', '北京蓝剑天亭科技开发有限责任公司', '91110106754669413W', '北京市丰台区海鹰路5号', '北京市丰台区海鹰路5号', '曹志勇', '13901076053', '孙亚东', '13522077000', null, '116.285604', '39.828862', '116.285604', '116.285604', '');
INSERT INTO `t_test1` VALUES ('452', '北京美洁佳物业管理有限公司', '91110102774068703G', '北京市西城区北三环裕民中路6号17号楼506室', '北京市西城区北三环裕民中路6号17号楼506室', '李伟', '18610953888', '孙士祥', '13051349808', null, '116.389406', '39.971995', '116.389406', '116.389406', '');
INSERT INTO `t_test1` VALUES ('453', '北京市昌平区清大东方消防职业技能培训学校', '52110114681200904D', '北七家镇宏福创业园17号院', '北七家镇宏福创业园17号院', '程水荣', '\\N', '应卫华', '13910757096', null, '116.367064', '40.105487', '116.367064', '116.367064', '');
INSERT INTO `t_test1` VALUES ('454', '北京中消世纪消防安全检测技术服务有限公司', '911101067404084313', '北京市北京经济技术开发区科创十三街31号院15号楼2层201-2', '北京市北京经济技术开发区科创十三街31号院15号楼2层201-2', '陈炫炫', '13501010628', '张琪', '15901207967', null, '116.554542', '39.777447', '116.554542', '116.554542', '');
INSERT INTO `t_test1` VALUES ('455', '北京富东宏远消防技术有限公司', '91110111MA01H0L63U', '北京市房山区康泽路3号院12号楼7层2单元706', '十八里店老君塘综合服务中心对面', '王东', '13301075605', '王海威', '17800819606', null, '116.214041', '39.769855', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('456', '北京御宇环保科技有限公司', '91110106MA007HC67E', '北京市丰台区南四环西路186号一区1号楼2层1931', '北京市丰台区南四环西路186号一区1号楼2层1931', '陈宇', '18612645582', '陈宇', '18612645582', null, '116.295802', '39.827879', '116.295128', '116.295128', '');
INSERT INTO `t_test1` VALUES ('457', '北京博峰消防技术有限公司', '91110113080495495J', '北京市顺义区马坡镇毛家营村南大街2号', '北京市顺义区马坡镇毛家营村南大街2号', '李月云', '13910990160', '刘学军', '13911061989', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('458', '北京京达金鼎消防安全技术有限公司', '91110105763539389L  ', '北京市朝阳区十八里店乡横街子村209-3号', '北京市朝阳区十八里店乡横街子村209-3号', '孙哲', '13911443873', '郑利俊 ', '13717792388', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('459', '哲翰（北京）科技服务有限公司', '91110108MA01B08Q1B', ' 北京市海淀区北三环西路甲18号中鼎大厦A座7层723室', ' 北京市海淀区北三环西路甲18号中鼎大厦A座7层723室', '朱坤', '13911043135', '朱坤', '13911043135', null, '116.341149', '39.966861', '116.341149', '116.341149', '');
INSERT INTO `t_test1` VALUES ('460', '北京煊煊佳业保洁服务有限公司', '91110304MA01AHW88M', '北京市房山区燕山凤凰亭北里1号楼3-0164', '北京市房山区燕山凤凰亭北里1号楼3-0164', '张卫星', '13693631283', '张卫星', '13693631283', null, '115.945753', '39.739679', '115.945753', '115.945753', '');
INSERT INTO `t_test1` VALUES ('461', '北京聚元隆安全技术有限公司', '91110304783973254A', '北京市房山区燕山北庄路甲1号院内', '燕山迎风2里2巷3号院', '陆天华', '13381025655', '梁庆新', '13521590877', null, '', '', '115.952908', '115.952908', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('462', '北京顺和安消防安全检测有限公司', '91110116756027270D', '北京市怀柔区迎宾中路乙10号二层', '北京市怀柔区迎宾中路乙10号二层', '谢长海', '13901371773', '郭秋菊', '13681366686', null, '116.638554', '40.3095', '116.638554', '116.638554', '');
INSERT INTO `t_test1` VALUES ('463', '北京京安宏业消防安全检测中心', '91110108747510201D', '北京市海淀区西杉创意园二区13号楼1至2层01', '北京市海淀区西杉创意园二区13号楼1至2层01', '庞艳霞', '13439996336', '李建新', '13601124407', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('464', '北京京盾消防设备工程有限公司', '911101068022249975', '北京市丰台区花乡黄土岗宜兰园三区32号楼楼底商10号', '北京市丰台区花乡黄土岗宜兰园三区32号楼楼底商10号', '檀国敏', '13718850191', '高淑英', '13911041553', null, '116.334368', '39.827024', '116.334368', '116.334368', '');
INSERT INTO `t_test1` VALUES ('465', '北京泽惠风消防技术有限公司', '911101067715748628', '北京市丰台区西四环南路46号A座2801', '北京市丰台区西四环南路46号A座2801', '王文涛', '13901222517', '王小醒', '13911136208', null, '116.282328', '39.869867', '116.282328', '116.282328', '');
INSERT INTO `t_test1` VALUES ('466', '中翔消防工程有限公司', '911101067719692744', '北京市丰台区马家堡角门14号楼商业酒店14层1727', '北京市海淀区西四环北路140号京鼎原商务楼512', '姜梅敏', '01063858899', '杜微', '13301152832', null, '', '', '116.275827', '116.275827', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('467', '北京双达欣保洁服务有限公司', '91110106690829560Q', '北京市丰台区西马场北里17号楼3层2-302', '北京市丰台区西马场北里17号楼3层2-302', '周德珍', '63381002', '刘利生', '13681507869', null, '116.379769', '39.843386', '116.379769', '116.379769', '');
INSERT INTO `t_test1` VALUES ('468', '北京鹰翔风景消防科技有限公司', '91110106579074876k', '北京市丰台区首经贸中街1号院1号楼01-022', '北京市丰台区首经贸中街1号院1号楼01-022', '高伟', '13910101405', '高伟', '13910101405', null, '116.324956', '39.840897', '116.324956', '116.324956', '');
INSERT INTO `t_test1` VALUES ('469', '北京广安顺合消防科技有限公司', '911101097650357747', '葡东20号楼办公室6-1-35-36', '葡东20号楼办公室6-1-35-36', '张小垒', '\\N', '赵骞', '18600601940', null, '116.117348', '39.926083', '116.117348', '116.117348', '');
INSERT INTO `t_test1` VALUES ('470', '北京维盛通技术服务有限公司', '91110229699605643B', '北京市延庆区大榆树镇高庙屯村西3幢6号（北京同悦朋商行院内）', '北京市朝阳区和平西街青年沟路23号', '唐建强', '65272363', '衣晓梅', '18600012151', null, '', '', '116.416886', '116.416886', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('471', '力景（北京）系统技术有限公司', '911191917461426895', '北京市东城区东四十条甲22号南新仓商务大厦A1503', '北京市东城区东四十条甲22号南新仓商务大厦A1503', '田瑞', '13701171993', '李蔷微', '18611725078', null, '116.430925', '39.932801', '116.430925', '116.430925', '');
INSERT INTO `t_test1` VALUES ('472', '北京宛清保洁服务有限责任公司', '91110106718739779J', '北京市丰台区晓月五里6号楼501-21', '北京市丰台区晓月五里6号楼501-21', '孙源', '13901221920', '孙明阳', '13901221920', null, '6.23763', '39.834647', '6.23763', '6.23763', '');
INSERT INTO `t_test1` VALUES ('473', '北京中泰伟业消防设备技术有限公司', '91110105584458161P', '来广营乡来广营西路316号108室', '物流园六街12号宝供物流基地B座3层', '徐珠蓉', '13811529692', '张丽英', '18610334880', null, '116.452338', '40.020543', '116.590183', '116.590183', '');
INSERT INTO `t_test1` VALUES ('474', '北京华融义缘消防技术有限公司', '91110113576857760N', '北京市顺义区杨镇地区老庄户村环镇北街30号', '北京市顺义区杨镇地区老庄户村环镇北街30号', '王亦男', '13601377844', '郭志成', '18611394145', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('475', '北京东方磊鑫建筑装饰工程有限公司', '91110115076593500K', '北京市大兴区魏善庄镇后大营村后禄街12号', '北京市大兴区魏善庄镇后大营村后禄街12号', '阮传磊', '13366771828', '阮传磊', '010-89201824', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('476', '北京五岳朝天消防技术有限公司', '911101095808418093', '北京市门头沟区石龙经济技术开发区永安路20号', '北京市通州区宋庄镇前夏邢各庄20号', '王志民', '13716699986', '皮连欣', '15801696082', null, '116.126834', '39.89659', '', '', '村');
INSERT INTO `t_test1` VALUES ('477', '北京市京阳伟业安全技术有限责任公司', '9111010569765752XY', '北京市朝阳区四惠桥南侧一号伊莎文化中心主楼A01B', '北京市朝阳区四惠桥南侧一号伊莎文化中心主楼A01B', '罗京春', '62081585', '张群', '62081585', null, '116.49651', '39.90358', '116.49651', '116.49651', '');
INSERT INTO `t_test1` VALUES ('478', '北京华升志远机电设备有限公司', '91110105330315769H', '北京市朝阳区西大望路甲12号（国家广告产业园区）2号楼2层21119', '北京市朝阳区西大望路34号金丰尚商务楼423室', '常秀兰', '13429503821', '曾金盼', '13910446787', null, '116.473281', '39.903338', '116.476798', '116.476798', '');
INSERT INTO `t_test1` VALUES ('479', '北京美思特保洁服务有限公司', '91110105MA01F9TE32', '北京市朝阳区吉庆里6号楼4层407', '北京市朝阳区吉庆里6号楼4层407', '陈远远', '13716871786', '陈远远', '13716871786', null, '116.440739', '39.927748', '116.440739', '116.440739', '');
INSERT INTO `t_test1` VALUES ('480', '北京市创岚环保工程有限责任公司', '9111010260046145XA', '北京市西城区西直门外大街135号展览馆宾馆6211室', '北京市西城区西直门外大街135号展览馆宾馆6211室', '刘景', '68365958', '赵颖', '13811378896', null, '116.346323', '39.941691', '116.346323', '116.346323', '');
INSERT INTO `t_test1` VALUES ('481', '北京绿港鼎鑫环保科技服务有限公司', '91110113MA001GN745A', '北京市顺义区南法信镇焦各庄街2号院2号楼6层3单元606', '北京市顺义区南法信镇焦各庄街2号院2号楼6层3单元606', '彭雨', '18600084008', '张晓光', '15901268322', null, '116.619101', '40.132104', '116.619101', '116.619101', '');
INSERT INTO `t_test1` VALUES ('482', '北京鑫雨盛安消防科技有限公司', '91110115317922767K', '天水大街46号院1号楼10层1006', '天水大街46号院1号楼10层1006', '南新华', '13161855222', '南新华', '13161855222', null, '116.318954', '39.669796', '116.318954', '116.318954', '');
INSERT INTO `t_test1` VALUES ('483', '北京莱福灵商贸有限责任公司', '91110229MA00F3MG87', '北京市延庆区沈家营镇八里店村', '北京市延庆区沈家营镇八里店村', '郭胜利', '18801162688', '于敏', '13601218581', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('484', '北京洁宁环境治理有限公司', '91110114MA01FQY58C', '北京市昌平区回龙观镇回龙观西大街35号院1号楼1层165A ', '北京市昌平区回龙观镇回龙观西大街35号院1号楼1层165A ', '刘辉', '18003365808', '刘辉', '18003365808', null, '116.329748', '40.079299', '116.329748', '116.329748', '');
INSERT INTO `t_test1` VALUES ('485', '北京洋河消防安全技术有限公司', '91110112MA01AU0W6M', '于家务乡国际种业科技园区聚合七街2号-258', '丁各庄66号院', '马军', '15311434081', '马伟洋', '17710548087', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('486', '北京四海荣兴科技发展有限公司', '911101177848498291', '北京市平谷区马昌营镇天井大街甲2号', '北京市朝阳区十八里店乡西直河村918号', '许章勇', '15110265823', '许章勇', '15110265823', null, '117.018359', '40.112555', '', '', '村');
INSERT INTO `t_test1` VALUES ('487', '北京佰仕兴隆消防技术有限公司', '911102285568749856', '密云镇大唐庄村西450米', '密云镇大唐庄村西450米', '武海军', '13031098096', '崔庭婷', '13031020001', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('488', '北京鑫智慧消防技术有限公司', '911101056812403918', '朝阳区大 洋路333号微沃办公区B209-1室', '朝阳区大 洋路333号微沃办公区B209-1室', '李楠', '13810955168', '李景镇', '13717736271', null, '116.480749', '39.853321', '116.480749', '116.480749', '');
INSERT INTO `t_test1` VALUES ('489', '北京鑫湘宁消防检测有限公司', '9111010579598177X2', '东土城路4号3幢2层206、207、209、210室', '东土城路4号3幢2层206、207、209、210室', '贾景印', '13240407536', '王歆舒', '13121011281', null, '116.432276', '39.958796', '116.432276', '116.432276', '');
INSERT INTO `t_test1` VALUES ('490', '北京天一星熙消防安全技术检测有限公司', '9111010969167031X4', '北京市朝阳区博大路3号院9号楼6层613', '北京市朝阳区博大路3号院9号楼6层613', '胡梅玉', '15901011524', '胡梅玉', '15901011524', null, '116.472935', '39.836491', '116.472935', '116.472935', '');
INSERT INTO `t_test1` VALUES ('491', '北京清大同恒消防安全技术研究院有限公司', '91110114663122201Y', '北京市昌平区北七家镇七北路42号院4号楼11层3单元1101', '北京市昌平区北七家镇七北路42号院4号楼11层3单元1101', '李振锁', '18901070119', '郑军霞', '18600573628', null, '116.365587', '40.098719', '116.365587', '116.365587', '');
INSERT INTO `t_test1` VALUES ('492', '北京精诚安保消防工程有限责任公司', '91110105633686903X', '北京市朝阳区百子湾路16号5号楼A1101室', '北京市朝阳区百子湾路16号5号楼A1101室', '殷胜利', '010-87766666', '李力', '010-87766888', null, '116.485276', '39.900229', '116.485276', '116.485276', '');
INSERT INTO `t_test1` VALUES ('493', '北京华腾互通科技有限公司', '91110114MA001UHTX0', '沙河镇昌平路97号8幢B203-1', '北清路68号院3号楼1层北侧', '于成伟', '13522365586', '田甜', '15210059181', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('494', '北京中府消防检测有限公司', '91110113MA01EF8650', '北京市顺义区林河北大街21号院4幢7层809', '梅香街7号院9-2-801', '高金龙', '18513191111', '金立珍', '15910271783', null, '116.662554', '40.095821', '116.639022', '116.639022', '');
INSERT INTO `t_test1` VALUES ('495', '北京三马机电工程有限公司', '91110108737689543G', '青龙桥西街67号南院', '青龙桥西街67号南院', '金吉彪', '18611108366', '渠红', '18612455329', null, '116.26623', '40.0029', '116.26623', '116.26623', '');
INSERT INTO `t_test1` VALUES ('496', '北京顺安洁消防安全技术有限公司', '9111011375132433XG', '北京市顺义区张镇雁户庄村雁北路14号', '北京市顺义区张镇雁户庄村雁北路14号', '张文满', '13911021290', '张文满', '13911021290', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('497', '北京冉冉鸿泰保洁服务有限公司', '911101066851260273', '太平桥西里甲1号楼东1-1幢109室', '太平桥西里甲1号楼东1-1幢109室', '张倩', '010-66548284', '刘志伟', '13581588848', null, '116.314218', '39.885162', '116.314218', '116.314218', '');
INSERT INTO `t_test1` VALUES ('498', '北京禹顺消防科技有限公司', '911101025585030880Q', '北京市西城区', '西交民巷114号', '葛广顺', '13911798057', '刘永平', '13241091166', null, '116.386894', '39.901913', '116.386894', '116.386894', '');
INSERT INTO `t_test1` VALUES ('499', '北京恒润博悦机电设备有限公司', '91110106560443643x', '北京市丰台区北京南站换乘层快1维保楼213室', '北京市丰台区北京南站换乘层快1维保楼213室', '李素芬', '13501184099', '李文杰', '18500568111', null, '116.380172', '39.864676', '116.380172', '116.380172', '');
INSERT INTO `t_test1` VALUES ('500', '北京金誉世华消防科技有限公司', '91110105675740760C', '北京市朝阳区五里桥二街1号院7号楼201室', '北京市朝阳区五里桥二街1号院7号楼201室', '赵宏新', '13911023512', '赵宏新', '13911023512', null, '116.617144', '39.928683', '116.617144', '116.617144', '');
INSERT INTO `t_test1` VALUES ('501', '北京星磊百吉保洁有限公司', '91110109576856442R', '北京市门头沟区石龙经济开发区永安路20号3幢B1-1102室', '斋堂镇军饷村JXC003', '成建民', '13621034139', '成建民', '13681023688', null, '116.12743', '39.89679', '', '', '村');
INSERT INTO `t_test1` VALUES ('502', '北京路路通保洁服务有限公司', '911101066337730899', '北京市丰台区五里店小区33号人防地下室', '北京市丰台区五里店小区33号人防地下室', '袁党辉', '18910205800', '姜立强', '13311166878', null, '116.258801', '39.85339', '116.258801', '116.258801', '');
INSERT INTO `t_test1` VALUES ('503', '北京欣科建科技发展有限公司', '911101057364863576', '北京市朝阳区百子湾路29号4排4号', '北京市朝阳区微沃办公区B座213-1', '李国有', '13601356002', '张晓雯', '13810955168', null, '', '', '116.480749', '116.480749', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('504', '北京卫安诚信消防技术有限公司', '91110105760109228H', '北京市朝阳区十八里店乡十八里店村868号院内', '北京市大兴亦庄经济技术开发区同济中路2号狮岛索龙大厦302室', '\\N', '\\N', '冯海涛', '13301178713', null, '116.497617', '39.82997', '116.522388', '116.522388', '');
INSERT INTO `t_test1` VALUES ('505', '瑞华鑫机电设备安装（北京）有限公司', '911101133303895147', '北京市顺义区南法信镇焦各庄街2号院1号楼7层2单元704', '北京市顺义区南法信镇焦各庄街2号院1号楼7层2单元704', '赵昆', '13810963534', '赵昆', '13810963534', null, '116.620511', '40.132475', '116.620511', '116.620511', '');
INSERT INTO `t_test1` VALUES ('506', '北京华安全鼎消防科技有限公司', '911101067334685165', '北京市丰台区太平桥路15号3层321室', '北京市丰台区太平桥路15号3层321室', '刘宝辉', '63373733', '江朝晖', '13601253551', null, '116.317332', '39.879493', '116.317332', '116.317332', '');
INSERT INTO `t_test1` VALUES ('507', '北京宏安兴业消防技术有限公司', '911101130613080179', '北京市顺义区张镇雁户庄村雁北路14号', '北京市顺义区张镇雁户庄村雁北路14号', '朱海峰', '13911321422', '朱海峰', '13911321422', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('508', '北京久久神龙咨询服务有限公司', '91110115082867328R', '北京市大兴区采育镇北京采育经济开发区育祥街1号', '北京市大兴区采育镇北京采育经济开发区育祥街1号', '杨洋', '13701017110', '李骋', '13601209040', null, '116.63733', '39.651199', '116.63733', '116.63733', '');
INSERT INTO `t_test1` VALUES ('509', '北京力天京安消防科技有限公司', '91110102556865253R', '北京市西城区马连道南街6号院1号楼6B-15', '北京市西城区马连道南街6号院1号楼6B-15', '汪亮', '13801193512', '苏檀华', '13811129697', null, '116.324692', '39.883194', '116.324692', '116.324692', '');
INSERT INTO `t_test1` VALUES ('510', '北京重泰安消防技术服务有限责任公司', '91110102763511044B', '北京市西城区马连道路9号安华景苑饭店3031室', '北京市西城区马连道路9号安华景苑饭店3031室', '李征', '13701234010', '王宝新', '13581577745', null, '116.326214', '39.886747', '116.326214', '116.326214', '');
INSERT INTO `t_test1` VALUES ('511', '北京安亿通消防安全技术有限公司', '91110109778631495J', '门头沟区石龙经济开发区永安路20号2号楼3单元6层', '门头沟区石龙经济开发区永安路20号2号楼3单元6层', '徐堂卿', '13511078588', '肖志义', '13910699231', null, '116.125978', '39.896277', '116.125978', '116.125978', '');
INSERT INTO `t_test1` VALUES ('512', '北京中安颐合消防技术有限公司', '911101066819866448', '北京市丰台区辛庄村大灰厂东路甲26号', '广安门外大街182号远见国际2606', '李方玉', '13901197206', '朱建海', '18611718786', null, '', '', '116.336597', '116.336597', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('513', '北京安泰德科技有限公司', '911101056337015289', '北京市朝阳区金盏乡金盏大街55号', '北京市朝阳区金盏乡金盏大街55号', '张春龙', ' 010-84639601', '任晗光', '13520671103', null, '116.568801', '40.006944', '116.568801', '116.568801', '');
INSERT INTO `t_test1` VALUES ('514', '北京海泰永成科技有限公司', '91110105788615173Y', '北京市朝阳区左安门外饮马井1号院2号楼1层1单元104', '北京市朝阳区左安门外饮马井1号院2号楼1层1单元104', '于喆', '13501219936', '于喆', '13501219936', null, '116.443794', '39.868587', '116.443794', '116.443794', '');
INSERT INTO `t_test1` VALUES ('515', '北京洁乐士环保科技有限公司', '91110105MA008M8F4X', '北京市大兴区旧桥路25号院7号楼1402', '北京市大兴区104国道瀛海段22号2幢4层8402室', '刘春强', '18811496866', '魏超', '18811496866', null, '116.45651', '39.79319', '116.448191', '116.448191', '');
INSERT INTO `t_test1` VALUES ('516', '北京宝凤翔通消防技术检测有限公司', '91110116677435428Y', '北京市怀柔区庙城镇庙城村北十字街A03号', '北京市怀柔区庙城镇庙城村北十字街A03号', '谢玉凤', '15911027539', '刘建国', '13071153456', null, '116.628435', '40.294601', '116.628435', '116.628435', '');
INSERT INTO `t_test1` VALUES ('517', '北京丽洁星保洁服务有限公司', '91110105078547030D', '北京市朝阳区霞光里66号院1号楼商业A01', '北京市朝阳区十八里店乡小武基村八队', '刘洋', '13021905807', '刘洋', '13021905807', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('518', '北京百洁鼎兴物业管理有限公司', '9111011259234843XU', '潞邑西路6号8-12号2层', '武兴路15号', '刘小龙', '13811081172', '刘超', '13511000587', null, '116.691764', '39.934388', '116.798122', '116.798122', '');
INSERT INTO `t_test1` VALUES ('519', '北京世纪中科清洁服务有限公司', '91110105679643896K', '北京市朝阳区博大路3号院3号楼2层207', '北京市朝阳区博大路3号院3号楼2层207', '张中科', '18911586995', '张梦悦', '18871788872', null, '474194', '39.835818', '474194', '474194', '');
INSERT INTO `t_test1` VALUES ('520', '北京市富熙豪安防技术有限公司', '91110105756720040G', '北京市朝阳区广顺北大街31号院3号楼3层B-305', '北京市朝阳区广顺北大街31号院3号楼3层B-305', '徐晓永', '13911823253', '徐晓永', '13911823253', null, '116.467373', '39.996197', '116.467373', '116.467373', '');
INSERT INTO `t_test1` VALUES ('521', '北京恩和物业服务有限公司', '911101025808342112', '北京市西城区人定湖北巷1号楼', '北京市朝阳区龙万基商务楼315房间', '卞红英', '13661226092', '卞红英', '13661226092', null, '116.38761', '39.962829', '116.493007', '116.493007', '');
INSERT INTO `t_test1` VALUES ('522', '北京鑫淼润泽消防设施检测有限公司', '91110116318081365B', '北京市怀柔区雁栖经济开发区雁栖东二路17号2幢205、206室', '北京市怀柔区雁栖经济开发区雁栖东二路17号2幢205、206室', '赵建军', '13601061150', '肖珊珊', '010-69698559', null, '116.690882', '40.361833', '116.690882', '116.690882', '');
INSERT INTO `t_test1` VALUES ('523', '北京天汇中方消防技术检测有限公司', '91110105740442306Y', '北京市朝阳区慧忠北里111号楼3层308室', '北京市朝阳区慧忠北里111号楼3层308室', '续庆祝', '13901070225', '刘东明', '13911239713', null, '116.405613', '40.005597', '116.405613', '116.405613', '');
INSERT INTO `t_test1` VALUES ('524', '北京大洋巨人环保科技有限公司', '91110101762997038M', '北京市东城区东大地街1号P9室', '北京市东城区东大地街1号P9室', '郭洪波', '010-87696262', '王峰', '010-67153330', null, '116.419865', '39.888899', '116.419865', '116.419865', '');
INSERT INTO `t_test1` VALUES ('525', '北京大德润生消防检测有限公司', '91110101756019158D', '北京市东城区东打磨厂街3号', '北京市东城区东打磨厂街3号', '彭宝秋', '\\N', '岳建', '13810151861', null, '116.415829', '39.899417', '116.415829', '116.415829', '');
INSERT INTO `t_test1` VALUES ('526', '北京京安福伟业消防安全检测有限公司', '911101065530626315', '北京市房山区天星街1号院11号楼5层503室', '北京市房山区天星街1号院11号楼5层503室', '于清', '15911186618', '葛杰', '17801078817', null, '116.159721', '39.755325', '116.159721', '116.159721', '');
INSERT INTO `t_test1` VALUES ('527', '北京顺安盛消防科技有限公司', '911101027655298382', '北京市朝阳区垡头村北人集团公司第十印刷机械厂24幢、41幢', '北京市朝阳区垡头村北人集团公司第十印刷机械厂24幢、41幢', '商会娥', '13693679811', '陈莹', '13718687708', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('528', '北京市澳际智能消防安全工程有限责任公司', '91110101634301956Y', '北京市东城区安化寺幸福家园11幢1705号', '北京市东城区东打磨厂街3号', '彭素平', '\\N', '杨旭', '18611130539', null, '116.429469', '39.891443', '116.415829', '116.415829', '');
INSERT INTO `t_test1` VALUES ('529', '北京英特莱科技有限公司', '911101147334473015', '城北街道西环路76号', '城北街道西环路76号', '刘学锋', '010-69742811', '颜会芬', '15110031152', null, '116.229025', '40.216647', '116.229025', '116.229025', '');
INSERT INTO `t_test1` VALUES ('530', '北京新百发缘科技有限公司', '91110302771986912R', '北京市大兴区旧桥路25号院3号楼7层708', '北京市大兴区旧桥路25号院3号楼7层708', '黄大林', '13371676955', '陈永利', '13371676955', null, '116.454791', '39.793625', '116.454791', '116.454791', '');
INSERT INTO `t_test1` VALUES ('531', '北京中联行消防工程有限责任公司', '91110101777072062C', '北京市东城区东打磨厂街3号楼704', '北京市东城区东打磨厂街3号楼704', '陈亚丽', '\\N', '田红卫', '13501145753', null, '116.415829', '39.899417', '116.415829', '116.415829', '');
INSERT INTO `t_test1` VALUES ('532', '北京华祺洋消防安全有限公司', '91110101634308058L', '北京市北京经济技术开发区天华北街11号院2号楼15层1507', '北京市北京经济技术开发区天华北街11号院2号楼15层1507', '孟庆国', '64066047', '曲丽华', '13693228538', null, '116.500797', '39.802888', '116.500797', '116.500797', '');
INSERT INTO `t_test1` VALUES ('533', '北京城建天宁消防有限责任公司', '911101061015434771', '科技园富丰路4号3层03B04（园区）', '长椿街西里7号楼', '粟付芃', '63039182', '刘光美', '63183995', null, '116.28492', '39.835453', '116.359233', '116.359233', '');
INSERT INTO `t_test1` VALUES ('534', '北京国泰怡安电子有限公司', '911101017002531133', '北京市东城区东打磨厂街3号楼707室', '北京市朝阳区华威南路弘善家园118号楼', '彭宝秋', '\\N', '赵豫龙  ', '18333561199 ', null, '116.415829', '39.899417', '116.455043', '116.455043', '');
INSERT INTO `t_test1` VALUES ('535', '北京市慈航伟业环保科技有限公司', '91110106696396188M', '北京丰台区西三环南路201号融达国际613', '北京丰台区西三环南路201号融达国际613', '刘红光', '13701114657', '刘红光', '13701114657', null, '116.319473', '39.852327', '116.319473', '116.319473', '');
INSERT INTO `t_test1` VALUES ('536', '北京天川科技发展有限公司', '91110108633053807K', '远大路远大居住区二期住宅商务中心A区南端9A号（住宅）', '四季青路7号郦城工作区806室', '李惠忠', '13901105314', '张娜', '13611128300', null, '116.280837', '39.95308', '116.271429', '116.271429', '');
INSERT INTO `t_test1` VALUES ('537', '北京安泰达消防技术检测有限公司', '91110109686945470P', '北京市门头沟区妙峰山镇政府大院南楼MFS1108室', '北京市门头沟区妙峰山镇陇驾庄东庄子临40号陇上工业园区东楼101室', '张金阳', '13910023322', '张金亮', '18600379076', null, '116.050366', '39.975815', '116.055947', '116.055947', '');
INSERT INTO `t_test1` VALUES ('538', '北京卫京安烟道清洗中心', '911101177000725827', '北京市平谷区新平西路14号-30', '北京市平谷区新平西路14号-30', '秦立芳', '13901103527', '代娜娜', '13488799292', null, '117.100478', '40.134075', '117.100478', '117.100478', '');
INSERT INTO `t_test1` VALUES ('539', '北京航天常兴科技发展股份有限公司', '91110115801172283G', '北京市大兴区金星路30号5号院6层', '北京市大兴区金星路30号5号院6层', '王德坤', '13601271316', '丁鹏忠', '18610132220', null, '116.364862', '39.761272', '116.364862', '116.364862', '');
INSERT INTO `t_test1` VALUES ('540', '北京安博楼宇设施管理有限公司', '91110105053635181L', '北京市朝阳区甘露园南里25号（三期）8号楼18层1805', '北京市朝阳区甘露园南里25号（三期）8号楼18层1805', '陈菊音', '13436567761', '唐振明', '13501027455', null, '116.517213', '39.917035', '116.517213', '116.517213', '');
INSERT INTO `t_test1` VALUES ('541', '北京宇润阳光清洗技术有限公司', '91110112688354789D', '北京市通州区砖厂北里154号楼406', '朝阳区金盏西村农行大院', '彭玉柏', '18801063535', '张家驹', '13391823535', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('542', '北京三和永安消防设施检测有限公司', '91110108753313570C', '北京市海淀区阜成路58号8层801', '北京市海淀区阜成路58号8层801', '康永生', '84853217', '程少英', '18911607197', null, '116.286584', '39.923512', '116.286584', '116.286584', '');
INSERT INTO `t_test1` VALUES ('543', '北京京铁安达消防技术检测有限公司', '91110102769384920U', '北京市西城区广安门外南街63号天健宾馆南楼二层8201', '北京市西城区广安门外南街63号天健宾馆南楼二层8201', '刘喜臣', '18901398861', '石文珍', '13801108835', null, '116.373738', '39.920107', '116.373738', '116.373738', '');
INSERT INTO `t_test1` VALUES ('544', '北京云港晶鑫环保科技有限公司', '91110107348298186R', '北京市石景山区西井路17号1号楼6层638室', '北京市石景山区西井路17号1号楼6层638室', '仲崇健', '13522131296', '仲崇健', '13522131296', null, '116.186179', '39.934882', '116.186179', '116.186179', '');
INSERT INTO `t_test1` VALUES ('545', '北京家信展亮清洁服务有限公司', '9111010669004654XM', '北京市丰台区南四环路西路128号院4号楼12层1515-1516（园区））', '北京市大兴区西红门宏盛西区22号楼4单元103室', '付天水', '13641197051', '孟英丽', '15210224161', null, '116.333386', '39.794808', '116.333386', '116.333386', '');
INSERT INTO `t_test1` VALUES ('546', '北京德信龙光环保技术有限公司', '91110228MA019AHQ5P', '北京市通州区中关村科技园区通州金桥产业基地景盛南二街12号11号楼7层714', '北京市通州区中关村科技园区通州金桥产业基地景盛南二街12号11号楼7层714', '毛伟光', '18611161122', '毛伟光', '18611161122', null, '116.545193', '39.733007', '116.545193', '116.545193', '');
INSERT INTO `t_test1` VALUES ('547', '北京蘅之立业科技发展有限公司', '911101066812052626', '北京市丰台区鑫福里小区1号楼', '北京市丰台区鑫福里小区1号楼', '王春文', '13910386649', '王春文', '13910386649', null, '116.392754', '39.848526', '116.392754', '116.392754', '');
INSERT INTO `t_test1` VALUES ('548', '北京市今日阳光保洁有限公司', '9111010566913932XU', '北京市朝阳区博大路3号院7号楼8层804', '北京市朝阳区博大路3号院7号楼8层804', '王会君', '17801309070', '王建新', '13301139695', null, '116.473338', '39.835392', '116.473338', '116.473338', '');
INSERT INTO `t_test1` VALUES ('549', '北京帅安鸿运科技发展有限公司', '91110112399068401E', '北京市通州区西集镇国防路43号A座1105室', '北京市通州区通湖大街百合湾21-1-1302室', '杜加森', '13501208457', '任朝国', '13167552951', null, '116.881604', '39.815384', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('550', '北京金和顺消防安全技术有限公司', '91110106683574352X', '北京市丰台区丰台镇东货场路38号11栋403室', '北京市丰台区丰台镇东货场路38号11栋403室', '徐俊', '13522258888', '刘玉琴', '15311218891', null, '116.296838', '39.853832', '116.296838', '116.296838', '');
INSERT INTO `t_test1` VALUES ('551', '北京智朗卓越消防科技有限公司', '911101025768618230', '北京市西城区广义街5号5层2-508', '北京市西城区广义街5号5层2-508', '安军臣', '15830627590', '鱼洋', '13601277017', null, '116.355346', '39.890857', '116.355346', '116.355346', '');
INSERT INTO `t_test1` VALUES ('552', '北京坤钧枫消防技术有限公司', '911101067693903199', '北京市丰台区南四环西路188号十五区2号楼2层202室', '北京市丰台区南四环西路188号十五区2号楼2层202室', '韩宗曙', '13501359261', '孙亚宁', '15718861520', null, '116.288485', '39.820927', '116.288485', '116.288485', '');
INSERT INTO `t_test1` VALUES ('553', '北京林海世通科技有限公司', '91110203MA019BF539', '北京市北京经济技术开发区地盛北街1号院18号楼2层226室', '北京市北京经济技术开发区地盛北街1号院18号楼2层226室', '黄赛波', '13439618587', '黄赛波', '13439618587', null, '116.497103', '39.782837', '116.497103', '116.497103', '');
INSERT INTO `t_test1` VALUES ('554', '北京诚安顺消防科技有限公司', '91110106597705256A', '北京市丰台区广安路1幢-1层1202', '北京市丰台区广安路1幢-1层1202', '徐军', '13911597518', '徐军', '13911597518', null, '116.324994', '39.890724', '116.324994', '116.324994', '');
INSERT INTO `t_test1` VALUES ('555', '北京骥中建消防科技有限公司', '91110106778633941G', '北京市丰台区西三环南路57号6层608', '北京市丰台区大灰厂东路槐树岭4号院', '张建忠', '13901254152', '张宁宁', '13501183762', null, '116.309371', '39.863869', '116.169632', '116.169632', '');
INSERT INTO `t_test1` VALUES ('556', '北京清江鸿达技术服务有限公司', '91110106MA00BFHU1E', '北京市房山区辰光东路16号院4号楼5层504', '北京市房山区辰光东路16号院4号楼5层504', '李洪', '18001309478', '李洪', '18001309478', null, '116.186733', '39.749957', '116.186733', '116.186733', '');
INSERT INTO `t_test1` VALUES ('557', '北京久久神龙消防器材有限公司', '911101157546606112', '北京市大兴区采育镇京津塘科技园东西二路1号', '北京市大兴区采育镇京津塘科技园东西二路1号', '贾香娥', '13801026609', '张大志', '13552200937', null, '116.674846', '39.652346', '116.674846', '116.674846', '');
INSERT INTO `t_test1` VALUES ('558', '中建亚泰消防技术（北京）有限公司', '91110106061337088F', '北京市丰台区南四环西路186号四区3号楼3层03-04单元', '北京市丰台区南四环西路186号四区3号楼3层03-04单元', '郭长星', '13311378827', '常娜', '13811292915、010-83609112', null, '116.295731', '39.820691', '116.295731', '116.295731', '');
INSERT INTO `t_test1` VALUES ('559', '北京京豫鲁达科技发展有限公司', '91110105560391441K', '朝阳区黑庄户乡大鲁店二村', '朝阳区黑庄户乡大鲁店二村', '杨金平', '18801333197', '赵保勇', '13520371641', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('560', '北京英豪建筑装饰设计工程有限公司', '911101086916528672', '北京市通州区环科中路16号32幢1层101', '北京市通州区环科中路16号32幢1层101', '叶三樟', '15019288881', '叶洲池', '17718412195', null, '116.557639', '39.732793', '116.557639', '116.557639', '');
INSERT INTO `t_test1` VALUES ('561', '北京升鼎浩瀚消防安全检测有限公司', '9111011669080673X5', '开放东路11号2幢三层', '开放东路11号2幢三层', '李征', '13910510527', '刘莹', '13810772498', null, '116.650586', '40.325424', '116.650586', '116.650586', '');
INSERT INTO `t_test1` VALUES ('562', '北京市金安华瑞消防工程技术有限公司', '9111010877159322XT', '海淀区紫竹院路116号嘉豪国际D座702', '海淀区紫竹院路116号嘉豪国际D座702', '郑玉焜', '13381066686', '梁丽', '15300016212', null, '116.292049', '39.946678', '116.292049', '116.292049', '');
INSERT INTO `t_test1` VALUES ('563', '北京洁晟环保科技有限公司', '91110106MA00EGH48T', '丰桥路8号院甲14号1层08', '角门18号枫竹苑2区1号', '贺新', '13910990312', '王哲', '13901262143', null, '116.371319', '39.834107', '116.371319', '116.371319', '');
INSERT INTO `t_test1` VALUES ('564', '北京华宇顺成环保科技有限公司', '9111011355856880XF', '北京市顺义区张镇雁户庄村村委会东150米', '北京市顺义区张镇雁户庄村村委会东150米', '张爽', '13911683987', '张爽', '13911683987', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('565', '小蜜蜂互联（北京）消防信息技术有限公司', '91110102MA00ATBY96', '北京市西城区西直门外大街1号西环广场T2座17C5', '北京市西城区西直门外大街1号西环广场T2座19层', '李晓华', '13693557698', '刘晶', '13693557698', null, '116.352522', '39.941582', '116.352522', '116.352522', '');
INSERT INTO `t_test1` VALUES ('566', '北京星宇首泰环保科技有限公司', '91110106580888869F', '北京市丰台区卢沟桥城北路1号62幢014', '北京市丰台区卢沟桥城北路1号62幢014', '张立桥', '15810313871', '张立桥', '15810313871', null, '116.222435', '39.853105', '116.222435', '116.222435', '');
INSERT INTO `t_test1` VALUES ('567', '北京清源时代保洁服务有限公司', '91110117MA0034T09Y', '北京市平谷区夏各庄镇王都庄村东路9号', '北京市平谷区夏各庄镇王都庄村东路9号', '王晓芳', '18611863666', '贺丽燕', '13520255126', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('568', '北京金瓯鼎建筑装饰工程有限公司', '91110106694999460L', '北京市房山区拱辰大街98号 8层0901', '北京市房山区拱辰大街98号 8层0901', '冯艳永', '13311186777', '冯艳永', '13311186777', null, '116.142541', '39.732393', '116.142541', '116.142541', '');
INSERT INTO `t_test1` VALUES ('569', '北京诚信华宇环保科技有限公司', '911101176705582066', '北京市平谷区马昌营镇天井大街甲2号', '北京市平谷区马昌营镇天井大街甲2号', '张士成', '13901333727 ', '张士成', '13901333727  ', null, '117.018359', '40.112555', '117.018359', '117.018359', '');
INSERT INTO `t_test1` VALUES ('570', '北京点阵建设工程有限公司', '91110111MA00H7GD7Q', '北京市房山区良乡凯旋大街建设路18号-D1703', '北京市丰台区嘉园三里8号楼', '王希东', '\\N', '方奇', '13801362290', null, '116.366058', '39.844009', '116.366058', '116.366058', '');
INSERT INTO `t_test1` VALUES ('571', '北京星昊美物业管理有限公司', '911101016977193995', '北京市东城区广渠门南小街3号楼2单元1204号', '北京市东城区广渠门南小街3号楼2单元1204', '迟彦军', '13801377515 ', '孙丽妹', '13611313191', null, '116.441089', '39.89299', '116.441089', '116.441089', '');
INSERT INTO `t_test1` VALUES ('572', '北京弘锐消防科技服务有限公司', '911101065636083274', '北京市大兴区春和路39号院3号楼2-511', '北京市大兴区春和路39号院3号楼2-511', '詹春阳', '13311363587', '宋玉龙', '13146556682', null, '116.356057', '39.773162', '116.356057', '116.356057', '');
INSERT INTO `t_test1` VALUES ('573', '北京清江源技术服务有限公司', '911101067763780005', '北京市丰台区长兴路16号院1号楼6层617', '北京市丰台区长兴路16号院1号楼6层617', '周岳翠', '13520133020', '张家俊', '13801072483', null, '116.186144', '39.832429', '116.186144', '116.186144', '');
INSERT INTO `t_test1` VALUES ('574', '北京东方雄安消防技术服务有限公司', '91110106596026892J', '北京市丰台区六里桥甲1号01号楼（悦都大酒店1716-1719室）', '北京市丰台区六里桥甲1号01号楼（悦都大酒店1716-1719室）', '吕珍', '13718197078', '吕珍', '13718197078', null, '116.306304', '39.883805', '116.306304', '116.306304', '');
INSERT INTO `t_test1` VALUES ('575', '北京神吉啦商贸有限公司', '9111 0106 5891 3513 4E', '北京市丰台区马家堡路88号5号楼1门2210室', '北京市丰台区马家堡路88号5号楼1门2210室', '王艳奎', '13910265888', '马添翼', '13701136564', null, '116.384112', '39.854127', '116.384112', '116.384112', '');
INSERT INTO `t_test1` VALUES ('576', '北京亚太鸿基建设工程有限公司', '91110111MA00F5A65B', '北京市房山区城关街道顾八路1区1号-T365', '北京市石景山区鲁谷大街53号西富港写字楼420', '李新年', '18511975333', '焦辉', '15701639672', null, '', '', '116.231382', '116.231382', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('577', '北京鸿基消防文化发展有限公司', '91110105339783243A', '北京市石景山区八宝山南路重兴嘉园4号楼4层402-18', '北京市石景山区鲁谷大街53号西富港写字楼418', '韦安庆 ', '13381326833', '韦安庆 ', '13381326833', null, '116.230811', '39.891019', '116.231382', '116.231382', '');
INSERT INTO `t_test1` VALUES ('578', '一诺美家（北京）清洁服务有限公司', '91110106076641349L', '北京市丰台区丰管路22号院12幢203-1', '北京市丰台区丰管路22号院12幢203-1', '李燕', '15101087517', '葛华彬', '18910211257', null, '116.313866', '39.857754', '116.313866', '116.313866', '');
INSERT INTO `t_test1` VALUES ('579', '北京市大兴区众合平安消防职业技能培训学校', '52110115MJ0340469F', '北京市经济技术开发区地盛中路3号中辉世纪传媒大厦', '北京市经济技术开发区地盛中路3号中辉世纪传媒大厦', '林森', '13001070388', '韩忠', '13051258251', null, '116.50158', '39.786866', '116.50158', '116.50158', '');
INSERT INTO `t_test1` VALUES ('580', '北京博亚盛技术检测有限公司', '911101063063601640', '北京市海淀区金庄1号院1号楼3层301室', '北京市海淀区金庄1号院1号楼3层301室', '孙新华', '13311088111', '郭静', '13810999920', null, '116.281743', '39.943767', '116.281743', '116.281743', '');
INSERT INTO `t_test1` VALUES ('581', '北京绿源恒辉科技发展有限公司', '91110106MA002UFX5J', '科学城海鹰路8号1号楼8层095室', '科学城海鹰路8号1号楼8层095室', '王国伍', '18611079008', '王兴东', '13911726682', null, '116.281137', '39.826773', '116.281137', '116.281137', '');
INSERT INTO `t_test1` VALUES ('582', '北京金玉升环保科技有限公司', '91110229MA0045TY52', '北京市延庆区八达岭经济开发区康西路2055号', '北京市延庆区八达岭经济开发区康西路2055号', '范文章', '18901191067', '张生玘', '13811781298', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('583', '北京信德扬天餐饮管理有限公司', '9111010934838309X0', '双峪路35号院2号10层1001', '双峪路35号院2号10层1001', '王洪涛', '18600973976', '王洪涛', '18600973976', null, '116.113725', '39.935702', '116.113725', '116.113725', '');
INSERT INTO `t_test1` VALUES ('584', '北京富邦新天地清洁服务有限公司', '91110105099315087P', '北京市朝阳区石佛营西里12号楼2层07房间', '北京市朝阳区石佛营西里12号楼2层07房间', '廖佼', '15652625159', '廖佼', '15652625159', null, '116.499929', '39.932548', '116.499929', '116.499929', '');
INSERT INTO `t_test1` VALUES ('585', '北京芯泰环境科技有限公司', '91110114MA001KY03L', '北京市昌平区回龙观镇北清路1号院7号楼7-3Ｂ-155', '北京市昌平区回龙观镇北清路1号院7号楼7-3Ｂ-155', '赵峰', '13911750087', '刘蒙', '18801037572', null, '116.287724', '40.098231', '116.287724', '116.287724', '');
INSERT INTO `t_test1` VALUES ('586', '北京汇杰嘉业科技发展有限公司', '91110302MA01GBJ81D', '北京市经济开发区荣都东街3号1棟7层2单元510', '北京市经济开发区荣都东街3号1棟7层2单元510', '王仕刚', '13716204622', '陈莎', '13882146843', null, '', '', '', '', '查无此地');
INSERT INTO `t_test1` VALUES ('587', '北京佰易和环保工程有限公司', '911101065514125467', '北京市区刘家村127号西3号', '北京市区刘家村127号西3号', '牛红英', '13811680089', '王军', '13701286058', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('588', '北京天瑞平环保科技有限公司', '911101086774300535', '北京市朝阳区化工路59号院1号楼1至14层01内B座六层706室', '北京市朝阳区化工路59号院1号楼1至14层01内B座六层706室', '李丹丹', '010-52870605', '封子庄', '13718949946', null, '116.531795', '39.85117', '116.531795', '116.531795', '');
INSERT INTO `t_test1` VALUES ('589', '北京众创蓝天环保科技有限公司', '91110105MA00C1T77K', '北京市朝阳区酒仙桥路2号院内（707厂）（5-2）2层212', '北京市朝阳区西直河152号', '刘春梅', '13811009335', '李变', '13439681186', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('590', '北京隆安鸿运消防设施技术检测有限公司', '91110117783206389G', '北京市平谷区平谷镇民迎路6号', '北京市平谷区平谷镇民迎路6号', '祝春松', '13801290942', '祝春松', '13801290942', null, '117.125163', '40.160482', '117.125163', '117.125163', '');
INSERT INTO `t_test1` VALUES ('591', '北京博霖翔皓消防科技有限公司', '911101065938263928', '北京市丰台区马连道卫强校村118号483室', '北京市丰台区马连道卫强校村118号483室', '刘军伟', '13911190139', '刘春', '15810925817', null, '116.328337', '39.874475', '116.328337', '116.328337', '');
INSERT INTO `t_test1` VALUES ('592', '北京三通伟业安全自动化工程有限公司', '911101087684639180', '北京市昌平区城北街道昌崔路198号院9号楼6层610', '北京市海淀区金庄1号院1号楼3层301室', '孙新华', '13311088111', '郭静', '13810999920', null, '116.265525', '40.217485', '116.28068', '116.28068', '');
INSERT INTO `t_test1` VALUES ('593', '北京世纪昊诚消防安全科技有限公司', '91110105576887660M', '北京市朝阳区西大望路27号[2-1]42幢3层301', '北京市朝阳区西大望路27号[2-1]42幢3层301', '李宗堂', '13301337870', '马冲', '13366672139', null, '116.47786', '39.884807', '116.47786', '116.47786', '');
INSERT INTO `t_test1` VALUES ('594', '北京湘秦装饰材料有限公司', '91110106397179052F', '北京市丰台区方庄芳星园二区13号楼2号平台52号', '大红门西里19号院', '\\N', '\\N', '李奇', '13691589165', null, '116.43419', '39.86556', '116.401824', '116.401824', '');
INSERT INTO `t_test1` VALUES ('595', '北京赛沃斯环保工程有限公司', '91110111MA007H079Q', '北京市房山区城关街道顾八路1区1号-L293', '北京市丰台区小屯路89号航天石化大厦九层920', '龚艳霞', '13521564735', '王正萍', '13691556138', null, '116.016452', '39.705629', '116.251369', '116.251369', '');
INSERT INTO `t_test1` VALUES ('596', '北京中加全成消防科技有限公司', '91110106074107660Y', '北京市丰台区石榴园北里42号楼一层2-3单元115', '北京市丰台区石榴园北里42号楼一层2-3单元115', '丁德胜', '13366882608', '丁永其', '17661936691', null, '116.419804', '39.846638', '116.419804', '116.419804', '');
INSERT INTO `t_test1` VALUES ('597', '奥来国信（北京）检测技术有限责任公司', '91110113717737106F', '北京市顺义区高丽营镇顺于路高丽营段138号院', '北京市顺义区高丽营镇顺于路高丽营段138号院', '孙文伟', '13901035996', '彭文浩', '13683206462', null, '116.55798', '40.13108', '116.55798', '116.55798', '');
INSERT INTO `t_test1` VALUES ('598', '京盾消安（北京）环保科技有限公司', '91110116MA01C4C275', '北京市怀柔区九渡河镇石湖峪村106号', '北京市怀柔区九渡河镇石湖峪村106号', '崔平', '13716480997', '覃长城', '13910682117', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('599', '北京方超环保科技有限公司', '91110112MA01GTDL9P', '北京市通州区景盛南四街17号院49号楼5层101-521A', '北京市通州区景盛南四街17号院49号楼5层101-521A', '宋益芳', '13552508208', '向军超', '18301501929', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('600', '北京卫京安消防培训中心', '91110117762164001H', '北京市平谷区新平西路14号-31', '北京市平谷区新平西路14号-31', '温书云', '13901103527', '代娜娜', '13488799292', null, '117.101399', '40.134629', '117.101399', '117.101399', '');
INSERT INTO `t_test1` VALUES ('601', '北京保盛科技有限公司', '91110108MA01BMDN96', '北京市海淀区东北旺西路8号院4号楼四层430-2', '北京市海淀区东北旺西路8号院4号楼四层430-2', '胡康欢', '18911644245', '胡康欢', '18911644245', null, '116.298203', '40.047753', '116.298203', '116.298203', '');
INSERT INTO `t_test1` VALUES ('602', '北京丰盛清洁服务有限公司', '91110106MA002Tu593', '北京市丰台区槐房西路316号院二号楼二2007室', '大兴区狼垡四村', '黄立祥', '13683276919', '黄立祥', '13683276919', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('603', '北京昊天雨晨科贸有限公司', '911101063179091839', '北京市丰台区卢沟桥南里10号院8号楼1至3层1单元01号-1010', '北京市丰台区卢沟桥南里10号院8号楼1至3层1单元01号-1010', '吴江涛', '13261992884', '吴晨风', '13011219015', null, '116.23394', '39.84631', '116.23394', '116.23394', '');
INSERT INTO `t_test1` VALUES ('604', '北京宇伊安全防范技术咨询有限公司', '91110108MA01B87X4X', '中关村东路123号1号楼三层8306', '安宁庄东路18号光华创业园4号楼三层', '张洪岩', '13521216633', '张洪岩', '13521216633', null, '116.333443', '39.970989', '116.33216', '116.33216', '');
INSERT INTO `t_test1` VALUES ('605', '北京广达盛杰清洗服务有限公司', '91110105671713095W', '北京市朝阳区安慧东里2号院1号楼1007室', '北京市朝阳区安慧东里2号院1号楼1007室', '王昌广', '18513000096', '王昌广', '18513000096', null, '116.421691', '39.992816', '116.421691', '116.421691', '');
INSERT INTO `t_test1` VALUES ('606', '北京红顺天厨房设备有限公司', '91110106061310547J', '北京市通州区环科中路6号2号楼1层', '北京市通州区环科中路6号2号楼1层', '陈朝红', '13810912360', '陈朝红', '17710883989', null, '116.557246', '39.741776', '116.557246', '116.557246', '');
INSERT INTO `t_test1` VALUES ('607', '北京众安晓育教育科技有限公司', '91110108MA0186964U', '北京市海淀区白家疃尚水园4号楼9层3单元907', '北京市海淀区高里掌路3号院17号楼3层301', '翟媛媛', '13911935249', '李斌', '13810692510', null, '116.185768', '40.045361', '116.154196', '116.154196', '');
INSERT INTO `t_test1` VALUES ('608', '北京金水永和消防科技有限公司', '911101065996914252', '北京市丰台区造甲街110号2号平房（新村企业集中办公区）', '北京市丰台区造甲街110号2号平房（新村企业集中办公区）', '姜献华', '13671224366', '周灵燕', '13683201663', null, '116.295835', '39.844578', '116.295835', '116.295835', '');
INSERT INTO `t_test1` VALUES ('609', '北京荣立信保洁服务有限公司', '91110112MA004R2T23', '北京市通州区新华南路39号63幢三层N区003号', '北京市通州区四员厅街36号院7号楼A604', '何娟', '13520639293', '何娟', '13520639293', null, '116.658713', '39.902759', '116.658713', '116.658713', '');
INSERT INTO `t_test1` VALUES ('610', '北京中消永安消防安全技术有限公司', '91110106085537359J', '北京市丰台区南四环西路128号院2号楼4层507室', '北京市朝阳区十八里店乡吕家营村1422号', '郑书萍', '13911892788', '孙小慧', '18610868590', null, '116.299794', '39.82923', '', '', '村');
INSERT INTO `t_test1` VALUES ('611', '北京森源达消防科技有限公司', '91110111MA00GL44XM', '北京市房山区天星街1号院11号楼5层504室', '北京市房山区天星街1号院11号楼5层504室', '葛杰', '17801078817', '葛杰', '17801078817', null, '116.159845', '39.755501', '116.159845', '116.159845', '');
INSERT INTO `t_test1` VALUES ('612', '北京中天建科消防安全检测有限责任公司', '91110113738236933w', '北京市顺义区南法信镇信中街12号院7号楼102', '北京市顺义区南法信镇信中街12号院7号楼102', '王新', '15901450288', '赵雪梅', '18910871189', null, '116.61503', '40.120279', '116.61503', '116.61503', '');
INSERT INTO `t_test1` VALUES ('613', '北京达安顺消防科技有限公司', '911101065808620798', '北京市丰台区科学城恒富中街2号院一号楼二层2058室', '北京市丰台区科学城恒富中街2号院一号楼二层2058室', '裴雷', '13011179142', '陆群', '18518098766', null, '116.296093', '39.836692', '116.296093', '116.296093', '');
INSERT INTO `t_test1` VALUES ('614', '北京京海康宁生物科技有限公司', '91110108758706680A', '北京市海淀区阜外高甲店1号恩济西园产业园产业孵化区二层201室', '北京市海淀区阜外高甲店1号恩济西园产业园产业孵化区二层201室', '胡军', '13701266359', '胡军', '13701266359', null, '116.280316', '39.930635', '116.280316', '116.280316', '');
INSERT INTO `t_test1` VALUES ('615', '北京宇润大地环保科技有限公司', '91110108099024335H', '北京市门头沟区金沙西街10号院5号楼5层508', '北京市门头沟区金沙西街10号院5号楼5层508', '唐本俊', '13910697318', '李桂红', '15901396188', null, '116.128845', '39.904796', '116.128845', '116.128845', '');
INSERT INTO `t_test1` VALUES ('616', '北京欧客物业管理有限公司', '91110113593855871K', '北京市顺义区李遂镇龙太路1-99号', '北京市顺义区李遂镇龙太路1-99号', '张淑荣', '13501199928', '李之强', '18910167315', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('617', '北京壹壹肆环保科技有限公司', '91110115MA001HJ50C', '北京市大兴区中关村科技园区大兴生物医药产业基地天华大街9号院12号楼7层707室', '北京市大兴区中关村科技园区大兴生物医药产业基地天华大街9号院12号楼7层707室', '霍达', '18618149222', '霍达', '18618149222', null, '116.314687', '39.686278', '116.314687', '116.314687', '');
INSERT INTO `t_test1` VALUES ('618', '北京京卫环环境科技有限公司', '91110114560383089H', '北京市昌平区回龙观镇回龙观西大街35号院1号楼2层238-2', '北京市昌平区回龙观镇回龙观西大街35号院1号楼2层238-2', '齐青珍', '13718478578', '周新华', '13501036920', null, '116.329748', '40.079299', '116.329748', '116.329748', '');
INSERT INTO `t_test1` VALUES ('619', '北京丽泽恒安消防安全设备有限公司', '91110106344407349B', '北京市丰台区花乡纪家庙南188号一层6号', '北京市丰台区花乡纪家庙南188号一层6号', '李志成', '13910505139', '彭月英', '13911501992', null, '116.32589', '39.845813', '116.32589', '116.32589', '');
INSERT INTO `t_test1` VALUES ('620', '北京冠良胜威科技有限公司', '91110112MA017YC801', '北京市通州区中关村科技园区通州园金桥科技产业基地环科中路17号26幢1至3层102-Y050', '北京市通州区中关村科技园区通州园金桥科技产业基地环科中路17号26幢1至3层102-Y050', '张国良', '13521933552', '张国胜', '15727330899', null, '116.554895', '39.73053', '116.554895', '116.554895', '');
INSERT INTO `t_test1` VALUES ('621', '北京山河佳业保洁有限公司', '9111011177405415XG', '北京市房山区良乡长虹西路翠柳东街1-388号', '北京市朝阳区汤立路218号明天生活馆1058室', '于海生', '13910740744', '于海生', '13910740744', null, '', '', '116.413736', '116.413736', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('622', '北京大晟顺利保洁服务有限公司', '911101173182241192', '北京市平谷区光明西小区72号', '北京市平谷区光明西小区72号', '张智晟', '13810575848', '王涛', '13911121152', null, '117.117309', '40.148405', '117.117309', '117.117309', '');
INSERT INTO `t_test1` VALUES ('623', '北京华清速洁消防技术有限公司', '91110114562140494C', '北京市昌平区东小口镇天通东苑三区56号楼16门', '北京市昌平区东小口镇天通东苑三区56号楼16门', '鲁利娟', '13810453888', '刘卫东', '15810677322', null, '116.437019', '40.070271', '116.437019', '116.437019', '');
INSERT INTO `t_test1` VALUES ('624', '北京华清保洁服务有限公司', '91110117690806342A', '北京市平谷区平谷镇金海小区3号楼（1）-1-2', '北京市平谷区平谷镇金海小区3号楼（1）-1-2', '宋海滨', '13911823981', '宋海滨', '1391182981', null, '117.099741', '40.137011', '117.099741', '117.099741', '');
INSERT INTO `t_test1` VALUES ('625', '中环清新科技发展（北京）有限公司', '91110105567485985K', '北京市朝阳区北辰西路69号8层1单元902号', '北京市朝阳区望花路西里16号', '宋长青', '13901379220', '魏晓雪', '13581804674', null, '116.387187', '39.98324', '116.470556', '116.470556', '');
INSERT INTO `t_test1` VALUES ('626', '北京中消长城消防安全工程有限公司', '91110112802431136B', '北京市通州区工业开发区', '北京丰台科学城富丰路4号工商联大厦B座604、605', '许鹭', '13911837518', '谷爱新', '13910988650', null, '', '', '116.284991', '116.284991', '');
INSERT INTO `t_test1` VALUES ('627', '北京顺诚合鑫科技发展有限公司', '91110113MA01C3R89Q', '北京市顺义区南法信镇南陈路南法信段13号9幢1层', '北京市顺义区南法信镇南陈路南法信段13号9幢1层', '温秀芹', '13691106827', '贾玉民', '13691106827', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('628', '北京博雅建业教育科技有限公司', '91110105MA007PLE1E', '北京市朝阳区黄厂路3号院6号楼3层320', '北京市朝阳区黄厂路3号院6号楼3层320', '张帅', '15210629033', '张帅', '15210629033', null, '116.550981', '39.855248', '116.550981', '116.550981', '');
INSERT INTO `t_test1` VALUES ('629', '北京运超保洁服务有限公司', '91110229MA019CCD2K', '大庄科乡汉家川河南村12号北数第4间', '大庄科乡汉家川河南村12号北数第4间', '林庆勋', '18211030989', '林庆勋', '18211030989', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('630', '北京金鹏康达伟业保洁有限公司', '911101065585681802', '北京市丰台区分中寺关家坑206号', '北京市丰台区分中寺关家坑206号', '杨静静', '13693124241', '李健', '13671239092', null, '', '', '', '', '');
INSERT INTO `t_test1` VALUES ('631', '北京川消消防设备有限公司', '91110105MA00D3EA7Q', '建国路15号院甲1号北岸1292三间房创意生活园区8-2169', '南三环西路16号搜宝商务中心2号楼1211室', '吴文质', '15601333999', '吴文质', '15601333999', null, '116.582199', '39.910757', '116.3681', '116.3681', '');
INSERT INTO `t_test1` VALUES ('632', '北京天润鹏缘厨房设备有限公司', '91110115576937365F', '北京市大兴区西红门镇新安里S1商业1-2层4号', '北京市大兴区西红门镇新安里S1商业1-2层4号', '刘佰权', '13911805427', '刘佰权', '13911805427', null, '116.354784', '39.741788', '116.354784', '116.354784', '');
INSERT INTO `t_test1` VALUES ('633', '北京如韵春风商务服务有限公司', '9111010930677202XF', '北京市门头沟区妙峰山镇水丁路1号院', '北京市门头沟区妙峰山镇水丁路1号院', '赵大永', '18910016000', '罗敬', '18910016001', null, '116.050313', '39.97573', '116.050313', '116.050313', '');
INSERT INTO `t_test1` VALUES ('634', '北京京盾恒安消防科技有限公司', '911101120896103731', '北京市通州区景盛中街2号院2号楼1层101', '北京市通州区景盛中街2号院2号楼1层101', '边鹤龙', '13521653165', '张文静', '13161906585', null, '116.58029', '39.738272', '116.58029', '116.58029', '');
INSERT INTO `t_test1` VALUES ('635', '北京昕亿华消防工程有限公司', '911101086337903805', '四季青镇北辛庄路北软双新科创园B座204房间', '实兴大街30号院16号楼1007室', '李欣欣', '88797952', '王丽', '13811278702', null, '116.213455', '39.969672', '116.191696', '116.191696', '');
INSERT INTO `t_test1` VALUES ('636', '北京市海淀区众安晓育消防职业技能培训学校', '52110108MJ0252776P', '北京市海淀区高里掌路3号院17号楼3层301', '北京市海淀区高里掌路3号院17号楼3层301', '王阳', '13911255207', '李斌', '13810692510', null, '116.154196', '40.064763', '116.154196', '116.154196', '');
INSERT INTO `t_test1` VALUES ('637', '北京阜达宏安系统工程有限公司', '91110112700259021H', '新华北街75号', '大郊亭中街2号院华腾国际3号楼9A', '任东剑', '13810380576', '刘涛', '13581912805', null, '116.638953', '39.905445', '116.486185', '116.486185', '');
INSERT INTO `t_test1` VALUES ('638', '北京安华元消防技术检测有限公司', '91110105089656048J', '北京市朝阳区高碑店乡北花园村花园中路花园金地写字楼A座113', '北京市朝阳区高碑店乡北花园村花园中路花园金地写字楼A座113', '席玉龙', '13910323527', '徐巧凌', '13801208647', null, '116.553526', '39.902429', '116.553526', '116.553526', '');
INSERT INTO `t_test1` VALUES ('639', '北京怡帆汇通清洗服务有限公司', '91110115681220227X', '北京市大兴区瀛吉街8号院3号楼15层1504', '北京市大兴区瀛吉街8号院3号楼15层1504', '谷占国', '13693354296', '史小峰', '18311097298', null, '116.449923', '39.76311', '116.449923', '116.449923', '');
INSERT INTO `t_test1` VALUES ('640', '中消安（北京）消防工程有限公司', '911101057704229207', '北京市朝阳区高碑店乡北花园村花园中路花园金地写字楼B座一层113', '北京市朝阳区高碑店乡北花园村花园中路花园金地写字楼B座一层113', '姜云', '13601360829', '姜云', '13601360829', null, '116.553526', '39.902429', '116.553526', '116.553526', '');
INSERT INTO `t_test1` VALUES ('641', '北京百家修商贸有限公司', '91110114MA01CJF00N', '北京市昌平区昌平镇鼓楼西街12号楼1至三层19', '北京市昌平区昌平镇鼓楼西街12号楼1至三层19', '曹崛', '13501350923', '王宏洲', '13466610417', null, '116.231065', '40.223986', '116.231065', '116.231065', '');
INSERT INTO `t_test1` VALUES ('642', '北京中豫信诚环保科技有限责任公司', '91110106076631589C', '北京市丰台区五里店北里一区4号楼2A19号', '北京市丰台区五里店北里一区4号楼2A19号', '张素娟', '18201695507', '李帅军', '13651235773', null, '116.262785', '39.863742', '116.262785', '116.262785', '');
INSERT INTO `t_test1` VALUES ('643', '北京豫东信诚环保科技有限责任公司', '911101060785987944', '北京市丰台区青塔西路甲1号万丰嘉信商务酒店6-23', '北京市丰台区青塔西路甲1号万丰嘉信商务酒店6-23', '刘卫珍', '13939441380', '张志伟', '15101691883', null, '116.263359', '39.878126', '116.263359', '116.263359', '');
INSERT INTO `t_test1` VALUES ('644', '北京雨洛恬环保科技有限公司', '91110116MA005R796U', '怀柔区庙城镇庙城村十字街南320号', '昌平区东小口镇店上村15号', '邱飞跃', '13671024196', '邱飞跃', '13671024169', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('645', '北京港洁物业管理有限公司', '91110113102568705J', '北京市顺义区临空经济核心区汇海南路1号院5号楼6层5-702', '北京市顺义区临空经济核心区汇海南路1号院5号楼6层5-702', '张弘扬', '13401115608', '米雪', '15210111455', null, '116.64138', '40.045353', '116.64138', '116.64138', '');
INSERT INTO `t_test1` VALUES ('646', '北京云瀚清洁工程有限公司', '91110107102989403N', '北京市石景山区古城大街75号院3号楼2层1单元201', '北京市石景山区实兴大街30号3号楼10层', '姬霞', '13810377056', '刘国琴', '18610085597', null, '116.186009', '39.908063', '116.193512', '116.193512', '');
INSERT INTO `t_test1` VALUES ('647', '北京安舒保洁服务有限公司', '91110112802433596N', '北京市通州区富河园15号楼', '北京市通州区富河园15号楼', '田苏华', '13691021982', '徐云龙', '15901560892', null, '116.653489', '39.927151', '116.653489', '116.653489', '');
INSERT INTO `t_test1` VALUES ('648', '北京励拓新安安全防范技术有限公司', '91110108590658311P', '古城大街（特钢公司厂内）北京国际汽车贸易园区F区16号九层926室', '古城大街（特钢公司厂内）北京国际汽车贸易园区F区16号九层926室', '刘立新', '13701215752', '刘红琳', '13521373928', null, '116.181269', '39.917065', '116.181269', '116.181269', '');
INSERT INTO `t_test1` VALUES ('649', '北京春光好环保科技有限公司', '91110117MA01HMDDXA', '邑上原著31号楼3单元101', '邑上原著31号楼3单元101', '张立平', '18601366306', '徐建强', '18515502528', null, '117.104191', '40.154613', '117.104191', '117.104191', '');
INSERT INTO `t_test1` VALUES ('650', '北京市双节京诚油烟管道清洗有限公司', '9111010679161258XN', '北京市丰台区星火路1号3A1-3室（园区）', '北京市丰台区星火路1号3A1-3室（园区）', '乔书岭', '13811870730', '乔书岭', '13811870730', null, '116.28527', '39.834475', '116.28527', '116.28527', '');
INSERT INTO `t_test1` VALUES ('651', '准信智慧消防股份有限公司', '91350200612034447X', '北京市西城区西外大街1号西环广场2号楼19层', '北京市西城区西外大街1号西环广场2号楼19层', '李杰', '18600188585', '侯颖', '18600188585', null, '116.352466', '39.941692', '116.352466', '116.352466', '');
INSERT INTO `t_test1` VALUES ('652', '北京中德启锐安全设备有限公司', '91110304758231347H', '北京市房山区阎村镇大董村西街119号', '北京市房山区阎村镇大董村西街119号', '马达伟', '13051093290', '姚婷婷', '18010110668', null, '116.053754', '39.715996', '116.053754', '116.053754', '');
INSERT INTO `t_test1` VALUES ('653', '北京卓屹方消防科技有限公司', '911101060627544730', '北京市东城区珠市口东大街11号四层412', '北京市东城区珠市口东大街11号四层412', '卢朝阳', '13810277786', '包京京', '18612760151', null, '116.408665', '39.893174', '116.408665', '116.408665', '');
INSERT INTO `t_test1` VALUES ('654', '北京天瑞恒保洁服务有限公司', '91110106MA00241R6U', '北京市房山区燕山大件路（集联北区）2号楼二层B区7068', '北京市房山区燕山大件路（集联北区）2号楼二层B区7068', '潘恒军', '13522173786', '潘恒军', '13522173786', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('655', '北京中炬启航教育科技发展有限公司', '91110113MA01A1E397', '北京市顺义区物流园六街12号3幢三层301', '北京市顺义区物流园六街12号3幢三层301', '徐珠蓉', '01084714008', '宋威', '18831657109', null, '116.590644', '40.12366', '116.590644', '116.590644', '');
INSERT INTO `t_test1` VALUES ('656', '北京派尔德教育科技有限公司', '91110105MA00DJA465', '北京市朝阳区北苑东路19号院3号楼4层413', '北京市朝阳区北苑东路19号院3号楼4层413', '师海维', '13581670842', '龚峰强', '13581670842', null, '116.440537', '40.041465', '116.440537', '116.440537', '');
INSERT INTO `t_test1` VALUES ('657', '北京桑迪餐饮娱乐管理有限公司', '911101050695565097', '北京市朝阳区工体西路6号二层北区部分', '北京市朝阳区工体西路6号二层北区部分', '章李成', '18911581518', '杨文广', '13811359413', null, '116.444226', '39.929801', '116.444226', '116.444226', '');
INSERT INTO `t_test1` VALUES ('658', '北京视觉保洁服务有限公司', '9111011405927484XJ', '北京市昌平区东小口镇白坊村东利康虹桥新发服装百货市场内8号', '北京市昌平区东小口镇白坊村东利康虹桥新发服装百货市场内8号', '黄建民', '15811351658', '黄建民', '15811351658', null, '116.443854', '40.07015', '116.443854', '116.443854', '');
INSERT INTO `t_test1` VALUES ('659', '北京厨瑞达厨房设备有限公司', '91110229590647399C', '北京市延庆区延庆镇京张路口南（化肥库）2幢12号', '北京市延庆区延庆镇京张路口南（化肥库）2幢12号', '宋红兴', '18811040938', '宋红兴', '18811040938', null, '116.002818', '40.461044', '116.002818', '116.002818', '');
INSERT INTO `t_test1` VALUES ('660', '北京白云消防工程服务有限公司', '91110228339687622M', '密云区鼓楼东大街山水大厦3层313室', '密云区鼓楼东大街山水大厦3层313室', '黄永超', '13718984805', '黄永超', '18611685874', null, '116.864069', '40.376774', '116.864069', '116.864069', '');
INSERT INTO `t_test1` VALUES ('661', '北京建锋消防工程有限公司', '91110228330287964Y', '北京市密云区信远大厦3段3层316室-236', '北京市密云区大唐庄工业园5号', '刘建锋', '15010192234', '刘建锋', '15010192234', null, '116.850518', '40.37679', '116.822039', '116.822039', '');
INSERT INTO `t_test1` VALUES ('662', '北京胜华消防科技有限公司', '91110115317921908L', '北京市大兴区金星路12号院3号楼8层0910', '北京市大兴区金星路12号院3号楼8层0910', '刘景周', '18611132119', '宋耀东', '13910048119', null, '116.349572', '39.762453', '116.349572', '116.349572', '');
INSERT INTO `t_test1` VALUES ('663', '中国中安消防安全工程有限公司', '91110108100007373N', '北京市海淀区复兴路33号翠微大厦写字楼七层C段', '北京市海淀区复兴路33号翠微大厦写字楼七层C段', '李炜', '010-68167795', '王怡轩', '010-68167948-6605', null, '116.303904', '39.908238', '116.303904', '116.303904', '');
INSERT INTO `t_test1` VALUES ('664', '北京华信达消防工程有限公司', '91110111MA01DLLD6Ⅹ', '北京市房山区良 乡凯旋大街建设路18号-E 810', '北京市朝阳区芍药居北里101号世奥中心A座1008室', '杨启生', '13661383424', '李腾', '13811814863', null, '116.431306', '39.988224', '116.431306', '116.431306', '');
INSERT INTO `t_test1` VALUES ('665', '国琳（天津）科技有限公司北京分公司', '91110106MA01ELXCXP', '北京市丰台区南四环西路188号总部基地十八区21号楼1至11层101内7层702室', '北京市丰台区南四环西路188号总部基地十八区21号楼1至11层101内7层702室', '周庆念', '010-53561006', '葛毅', '13520063962', null, '116.291847', '39.820206', '116.291847', '116.291847', '');
INSERT INTO `t_test1` VALUES ('666', '北京天赐金消防设备有限公司', '911101060648526084', '北京市北京经济技术开发区荣华南路16号1幢19层A座1902', '北京市北京经济技术开发区荣华南路16号1幢19层A座1902', '马明霞', '13311291175', '李智东', '13311291175', null, '116.517961', '39.784629', '116.517961', '116.517961', '');
INSERT INTO `t_test1` VALUES ('667', '北京国泰瑞安消防工程有限公司', '91110106682884148D', '北京市丰台区郭公庄中街20号院3号楼8层809', '北京市丰台区郭公庄中街20号院3号楼8层809', '胡红亮', '13901116159', '邱小方', '18600231169', null, '116.301286', '39.812973', '116.301286', '116.301286', '');
INSERT INTO `t_test1` VALUES ('668', '北京合安利达保洁服务有限公司', '91110105680457355X', '北京市朝阳区金盏乡盏西大队村179号', '北京市朝阳区金盏乡盏西大队村179号', '马建鲁', '13520079559', '马建鲁', '13520079559', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('669', '北京鑫诚佰顺保洁服务有限公司', '91110105339768887H', '北京市朝阳区南新园中路106号西侧平房', '北京市朝阳区南新园中路106号西侧平房', '刘长江', '13801283441', '王平', '13466329975', null, '116.466638', '39.86849', '116.466638', '116.466638', '');
INSERT INTO `t_test1` VALUES ('670', '北京华安北海机电工程有限公司', '911101016000153884', '永定门内东街中里9-17号楼274室', '大郊亭中街2号华腾国际2号楼5层', '张国玲', '87952265', '钟晓芳', '87952265', null, '116.486848', '39.888238', '116.486848', '116.486848', '');
INSERT INTO `t_test1` VALUES ('671', '北京建和兴业电气防火安全检测中心', '91110106747514253Q', '北京市丰台区丰体北路5号1幢410室', '北京市丰台区丰体北路5号1幢410室', '朱凌波', '13901370463', '谢辉', '15010516223', null, '116.27947', '39.86864', '116.27947', '116.27947', '');
INSERT INTO `t_test1` VALUES ('672', '北京勃顺兴劳务服务有限公司', '91110105700375938C', '北京市朝阳区金盏乡小店村', '北京市朝阳区金盏乡小店村', '周海顺', '13910626889', '周海顺', '13910626889', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('673', '北京特洁特清洗保洁服务中心', '91110106666936198H', '丰台区五里店路189号', '平房乡亮马厂村229号', '石海燕', '13241311508', '黄自立', '15901259826', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('674', '北京六合成消防技术有限公司', '91110108802214895E', '北京市海淀区西四环北路140号5层509、512室', '北京市海淀区西四环北路140号京鼎原商务楼509室', '姜凌', '13910703969', '姜彤华', '13661251987', null, '116.275827', '39.936944', '116.275827', '116.275827', '');
INSERT INTO `t_test1` VALUES ('675', '北京智德宏业消防工程有限公司', '91110109MA018J724H', '北京市门头沟区大台商贸公司玉皇庙门市部2幢1至2层DT0963', '北京市门头沟区大台商贸公司玉皇庙门市部2幢1至2层DT0963', '李斌', '13701058057', '赵春杰', '13810369101', null, '', '', '', '', '查无地址');
INSERT INTO `t_test1` VALUES ('676', '北京利华消防工程有限公司', '91110101101295004Y', '和平里七区18号楼', '和平里七区18号楼', '常立明', '010-64219813', '刘明', '18611146685', null, '116.423791', '39.961059', '116.423791', '116.423791', '');
INSERT INTO `t_test1` VALUES ('677', '北京光诚环保科技有限公司', '91110108MA00GYLW2K', '北京市房山区康泽路3号院12号楼7层2单元709', '北京市海淀区彰化路智业园A座15A', '夏时光', '13681384359', '夏时光', '13681384359', null, '116.214041', '39.769855', '116.288956', '116.288956', '');
INSERT INTO `t_test1` VALUES ('678', '北京优诺科技发展有限公司', '911101055604077736', '北京市朝阳区大郊亭中街2号院2号楼5层2-5A', '北京市朝阳区大郊亭中街2号院2号楼5层2-5A', '赵朝阳', '87952276', '孟林雁', '13910889402', null, '116.486848', '39.888238', '116.486848', '116.486848', '');
INSERT INTO `t_test1` VALUES ('679', '北京蓝冰宝环保技术有限公司', '911101056675218247', '北京市朝阳区八里庄西里98号15层1807室', '北京市朝阳区八里庄西里98号15层1807室', '许保利', '010-57195982', '贾立强', '13011106080', null, '116.494421', '39.914647', '116.494421', '116.494421', '');
INSERT INTO `t_test1` VALUES ('680', '北京市顺诚东消防器材有限公司', '911101137415631508', '北京市顺义区顺平路南侧（加油站）', '北京市顺义区顺平路南侧（加油站）', '赵贺民', '13901183893', '赵贺民', '13901183893', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('681', '北京火政殷实消防技术有限公司', '91110302745473208U', '北京市经济技术开发区永昌中路甲6号院2号楼502室', '北京市经济技术开发区永昌中路甲6号院2号楼502室', '胡涛', '17600134149', '苏恩情', '18611657808', null, '116.519928', '39.794989', '116.519928', '116.519928', '');
INSERT INTO `t_test1` VALUES ('682', '北京富铭远洋建筑装饰设计有限公司', '91110229MA00183P80', '北京市延庆区大榆树镇北京科技职业学院八达岭校区13号楼126室', '北京市延庆区大榆树镇北京科技职业学院八达岭校区13号楼126室', '张晓坡', '13910693163', '张晓坡', '13910693163', null, '116.023735', '40.416489', '116.023735', '116.023735', '');
INSERT INTO `t_test1` VALUES ('683', '绿港蓝天（北京）环保科技有限公司', '91110113MAO1H89C8R', '北京市顺义区高丽营镇文化营村北（临空二路1号科技创新 功能区）', '北京市顺义区高丽营镇文化营村北（临空二路1号科技创新功能区）', '侯瑞东', '13601358321', '侯瑞东', '13601358321', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('684', '北京齐航楼宇清洁有限公司', '91110102751320064A', '北京市西城区广安门外南街50号院2号楼205室', '北京市西城区广安门外南街50号院2号楼205室', '张建宁', '18911181522', '陈立荣', '63328207', null, '116.347108', '39.882914', '116.347108', '116.347108', '');
INSERT INTO `t_test1` VALUES ('685', '北京贺贺佳业保洁服务有限公司', '91110304MA0199BJ7T', '北京市房山区燕山凤凰亭北里1号楼3-0161', '北京市房山区燕山凤凰亭北里1号楼3-0161', '张辉', '18612086069', '张辉', '18612086069', null, '115.945772', '39.739661', '115.945772', '115.945772', '');
INSERT INTO `t_test1` VALUES ('686', '北京宇航晟都保洁服务有限公司', '91110113MA003QDA96', '北京市顺义区大孙各庄镇薛庄村五街二条3号', '京市顺义区大孙各庄镇薛庄村五街二条3号', '杨文强', '13511033890', '杨文强', '13511033890', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('687', '北京乐邦佳业保洁服务有限公司', '911101026916643662', '北京市西城区前面西大街8号楼西侧二层206室', '北京市朝阳区十八里店老君堂新平方117号', '李京明', '13381201091', '夏文波', '18911821711', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('688', '北京佳佳慧福商贸有限公司', '91110106317982620H', '北京市丰台区造甲街110号2号平房', '北京市大兴区滨河东里20号', '姚慧敏', '13699206922', '赵福强', '13552534887', null, '116.297507', '39.843967', '116.342126', '116.342126', '');
INSERT INTO `t_test1` VALUES ('689', '北京圣元天享工贸有限公司', '91110111678790659G', '北京市房山区燕山丁东路11号', '北京市房山区燕山丁东路11号', '赵佩武', '13501057676', '李洪娟', '13621281792', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('690', '北京华安恒信消防科技有限公司', '911101057577499294', '北京市朝阳区松榆南路54号3层54-3内B01、B09、C03', '北京市朝阳区松榆南路54号3层54-3内B01、B09、C03', '张恒', '13901100338', '孙正', '13911805500', null, '116.464106', '39.870731', '116.464106', '116.464106', '');
INSERT INTO `t_test1` VALUES ('691', '北京金玉航辉消防安全技术有限公司', '91110108758212760U', '昆明湖南路九号-9号商业楼权金城国际酒店603室', '长安新城商业中心B座3层', '\\N', '\\N', '吴月美', '18001036225', null, '116.264167', '39.888823', '116.264167', '116.264167', '');
INSERT INTO `t_test1` VALUES ('692', '北京利达华信电子有限公司', '91110302762993192T', '北京市北京经济技术开发区荣京东街17号2幢1-4层', '北京市北京经济技术开发区荣京东街17号2幢1-4层', '涂燕平', '67876688', '任丽璇', '13611014635', null, '116.522693', '39.799809', '116.522693', '116.522693', '');
INSERT INTO `t_test1` VALUES ('693', '北京利达恒信科技发展有限公司', '91110302740402363U', '北京市北京经济技术开发区荣京东街17号3幢二层、三层', '北京市北京经济技术开发区荣京东街17号 ', '涂燕平', '67876688', '任丽璇', '13611014635', null, '116.522693', '39.799809', '116.522693', '116.522693', '');
INSERT INTO `t_test1` VALUES ('694', '北京盛安益达科技发展中心', '91110111796741663J', '北京市阎村镇张庄村西', '北京市阎村镇张庄村西', '李克元', '13601085219', '黄长生', '13001204339', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('695', '北京东汉阳光科技有限公司', '911101057868774280', '北京市朝阳区来广营西路5号院诚盈中心5号楼901、908室', '北京市朝阳区来广营西路5号院诚盈中心5号楼901、908室', '李峭玲', '010-84895628', '李妍', '010-84895628', null, '116.465176', '40.021117', '116.465176', '116.465176', '');
INSERT INTO `t_test1` VALUES ('696', '北京卫利洁物业管理有限公司', '91110108355251837U', '北京丰台区汽车博物馆东路1号院2号楼3层南座317', '北京丰台区汽车博物馆东路1号院2号楼3层南座317', '杨勇', '13911831515', '邹治亚', '13911719527', null, '116.300888', '39.827032', '116.300888', '116.300888', '');
INSERT INTO `t_test1` VALUES ('697', '北京天泰丰源建筑工程有限公司', '91110111MA007XNT90', '北京市房山区良乡长虹西路翠柳东街1号-3627', '北京市朝阳区十八里店乡小武基村武基路5号-1', '王敬涛', '18611865119', '王敬涛', '18611865119', null, '116.127211', '39.726692', '116.504358', '116.504358', '');
INSERT INTO `t_test1` VALUES ('698', '北京军亿发餐饮管理有限公司', '91110113MA01CYR246', '顺义区南彩镇彩达二街2号', '顺义区南彩镇彩达二街2号', '侯殿军', '13910736151', '侯磊', '15611118388', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('699', '北京弘仁消防安全检测有限公司', '911101146995863746', '北七家镇天通苑东苑一区4号楼1至4层2', '新发地宜兰园一区南门96号院', '董振亚', '13321190012', '董科跃', '13436575956', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('700', '北京市琦联锋电气消防安全检测有限公司', '91110111733483580C', '北京市房山区城关镇西大街7号五层', '北京市房山区城关镇西大街7号五层', '王淑华', '15801271953', '李斌琦', '13901108121', null, '115.982714', '39.703294', '115.982714', '115.982714', '');
INSERT INTO `t_test1` VALUES ('701', '中富安泰（北京）智能科技有限公司', '91110105596095601B', '北京市朝阳区十八里店乡小武基村武基路5号-2', '经海四路11号院4号楼6层', '王敬涛', '18611865119', '王敬涛', '18611865119', null, '116.504358', '39.844444', '116.534677', '116.534677', '');
INSERT INTO `t_test1` VALUES ('702', '北京惟泰安全设备有限公司', '91110108699631008C', '北京市海淀区闵庄路3号26号楼一层', '北京市海淀区闵庄路3号26号楼一层', '朱刚', '\\N', '常久洋', '13716110025', null, '116.255434', '39.975796', '116.255434', '116.255434', '');
INSERT INTO `t_test1` VALUES ('703', '北京京苑龙安消防器材有限公司', '91110105777679112Q', '北京市朝阳区北苑东路19号院4号楼18层1810', '北京市顺义区高丽营镇闫家营20号', '柴云妹', '15010682119', '赵世忠', '13701038696', null, '116.439735', '40.041749', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('704', '北京华欣博瑞消防工程有限公司', '911101170765812271', '北京市平谷区夏各庄镇纪太务村南街61号', '北京市平谷区夏各庄镇纪太务村南街61号', '贾炳友', '13381202036', '贾炳友', '13381202036', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('705', '北京科安达消防工程有限公司', '911101016343574906', '珠市口东大街3号119室', '同济中路2号狮岛索龙大厦302', '\\N', '\\N', '张媛', '01067866752', null, '116.415656', '39.893473', '116.522388', '116.522388', '');
INSERT INTO `t_test1` VALUES ('706', '北京中意悦杰厨房设备有限公司', '911101065548352455', '北京市丰台区丰管路16号1号楼', '北京市丰台区丰管路16号1号楼', '王志军', '13910769767', '王志军', '13910769767', null, '116.311187', '39.856214', '116.311187', '116.311187', '');
INSERT INTO `t_test1` VALUES ('707', '中强环宇（北京）科技有限公司', '911101056631138740', '北京市朝阳区化工路5号（西院）1号楼4层421室', '北京市朝阳区化工路5号（西院）1号楼4层421室', '宋爱', '13601153459', '王可', '13810870829', null, '116.518245', '39.859079', '116.518245', '116.518245', '');
INSERT INTO `t_test1` VALUES ('708', '北京海马岛净水设备有限公司', '91110112055573025K', '北京市通州区葛布店南里17号楼361', '北京市通州区葛布店南里17号楼361', '高宝会', '13701182289', '高宝会', '13701182289', null, '116.660986', '39.890708', '116.660986', '116.660986', '');
INSERT INTO `t_test1` VALUES ('709', '北京靓洁安保洁服务有限责任公司', '911101067795211675', '和义西里三区20幢1单元302号', '和义西里三区20幢1单元302号', '周爱莲', '13910183180', '周爱莲', '13910183180', null, '116.394923', '39.81421', '116.394923', '116.394923', '');
INSERT INTO `t_test1` VALUES ('710', '北京友安盛防火技术有限公司', '911101097002844890', '北京市门头沟区石龙经济开发区永安路20号3号楼A-3990室', '北京市朝阳区北三环东路30号防火所207', '王文铎', '13901099331', '杨洋', '13910234566', null, '116.126994', '39.896732', '116.41335', '116.41335', '');
INSERT INTO `t_test1` VALUES ('711', '北京远佳成消防安全技术有限公司', '91110111584450813C', '北京市房山区拱辰街道天星街1号院2号楼202', '北京市房山区拱辰街道天星街1号院2号楼202', '沈少明', '13501197873', '侯井龙', '13501018915', null, '116.160536', '39.756275', '116.160536', '116.160536', '');
INSERT INTO `t_test1` VALUES ('712', '中国建筑科学研究院有限公司建筑防火研究所', '911100004000011410', '北京市朝阳区北三环东路30号', '北京市朝阳区北三环东路30号', '邱仓虎', '64517698', '时艳艳', '18001383179', null, '116.413569', '39.968255', '116.413569', '116.413569', '');
INSERT INTO `t_test1` VALUES ('713', '中国空间技术研究院', '12100000400014049H', '北京市海淀区中关村南大街31号', '北京市海淀区友谊路104号', '张洪太', '-', '乔雨', '68117708', null, '116.32104', '39.947439', '116.278422', '116.278422', '');
INSERT INTO `t_test1` VALUES ('714', '北京德众国良环保科技有限公司', '911101145636454516', '昌平区城区镇宽街综合楼二层201号', '海淀区西三旗桥南泰山饭店17层', '周国梁', '13910879367', '李晶晶', '13260097024', null, '116.233416', '40.214981', '116.329417', '116.329417', '');
INSERT INTO `t_test1` VALUES ('715', '北京京朝顺达消防器材设备有限公司', '91110105780984740R', '北京市朝阳区广渠东路华能电厂西门', '北京市朝阳区广渠东路华能电厂西门', '张燕涛', '13801182878', '张燕涛', '13801182878', null, '116.53464', '39.885495', '116.53464', '116.53464', '');
INSERT INTO `t_test1` VALUES ('716', '北京中卓时代消防工程有限公司', '9111633015077G', '荣昌东街甲5号2号楼6层604', '荣昌东街甲5号2号楼6层604', '王东方', '67806366', '王凤磊', '67806366', null, '116.524757', '39.783618', '116.524757', '116.524757', '');
INSERT INTO `t_test1` VALUES ('717', '北京圣堡净雅保洁服务有限责任公司', '91110105563658359M', '黑庄乡万子营村512', '黑庄乡万子营村512', '高辉', '13261892128', '杨红', '13311532856', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('718', '恒泰安顺（北京）智能科技有限公司', '91110106080513542U', '北京市丰台区马家堡路180号7层812', '北京市丰台区马家堡路180号7层812', '尤胜祥', '13716357119', '朱钧钰', '18601960667', null, '116.379676', '39.834896', '116.379676', '116.379676', '');
INSERT INTO `t_test1` VALUES ('719', '北京优沃普环境科技有限公司', '91110111348399083D', '北京市房山区青龙湖镇西庄户村委会东210米', '北京市房山区青龙湖镇西庄户村委会东210米', '蒙晓东', '15901157678', '蒙晓东', '15901157678', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('720', '北京中维立洁科技有限公司', '9111010569955011XE', '北京市朝阳区来广营乡新生村万乐家工业园106号', '北京市朝阳区来广营乡新生村万乐家工业园106号', '李树龙', '13911795696', '李树龙', '13911795696', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('721', '北京市安康诺盾科技有限公司', '91110115317901595E', '北京市朝阳区日坛北路17号17号楼1号院14层1418', '北京市朝阳区日坛北路17号17号楼1号院14层1418', '\\N', '\\N', '刘毅', '17701143999', null, '116.442991', '39.919131', '116.442991', '116.442991', '');
INSERT INTO `t_test1` VALUES ('722', '北京航天海泉测试技术有限公司', '911101065585207508', '北京市房山区石楼镇石楼村石楼镇政府东200米', '北京市房山区石楼镇石楼村石楼镇政府东200米', '蒋如蓉', '15810917122', '吴焱宇', '18610033059', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('723', '北京中安精益科技发展有限公司', '91110108579040430Y', '北京市丰台区六里桥甲1号弘利苑大厦4001-4004,4010-4015', '北京市丰台区六里桥甲1号弘利苑大厦4001-4004,4010-4015', '田灵钦', '13601246126', '田灵钦', '13601246126', null, '116.305695', '39.883182', '116.305695', '116.305695', '');
INSERT INTO `t_test1` VALUES ('724', '北京鑫源绿地科技有限公司', '911101173065609327', '北京市平谷区马坊镇河奎村北小街13号', '北京市海淀区增光路33号', '王红梅', '17743535542', '梁宝义', '13701006380', null, '', '', '116.323542', '116.323542', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('725', '北京康安洁科技发展有限公司', '91110115MA01EM9R28', '大兴区金星路12号院2号楼2层2059室', '大兴区金星路12号院2号楼2层2059室', '孙安安', '18611133801', '孙安安', '18611133801', null, '116.350068', '39.762312', '116.350068', '116.350068', '');
INSERT INTO `t_test1` VALUES ('726', '北京鼎鸿东方保洁有限公司', '911101060994483221', '北京市丰台区丰管路22号院12幢2210室', '北京市丰台区丰管路22号院12幢2210室', '田东芳', '15010608215', '丁鸿亮', '18210888413', null, '116.313866', '39.857754', '116.313866', '116.313866', '');
INSERT INTO `t_test1` VALUES ('727', '北京快洁星保洁服务有限公司', '911101056932993580', '北京市朝阳区小武基村8队9排81号', '北京市朝阳区小武基村8队9排81号', '周英鹏', '010-67387302', '周英鹏', '13811293155', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('728', '北京仟佰佳清洗服务有限公司', '91110105679639299E', '北京市朝阳区北花园街甲一号A-214', '北京市朝阳区北花园街甲一号A-214', '陈颜东', '13911048814', '陈颜东', '13911048814', null, '116.565618', '39.905198', '116.565618', '116.565618', '');
INSERT INTO `t_test1` VALUES ('729', '北京消兴安顺清洗技术有限公司', '91110115064857011J', '上筑家园11号楼1层15室', '上筑家园11号楼1层15室', '李凤珍', '18911623385', '周迎兵', '13691300332', null, '116.464759', '39.79651', '116.464759', '116.464759', '');
INSERT INTO `t_test1` VALUES ('730', '北京祥铭吉耀科技有限公司', '91110113MA1GR6C5J', '北京市顺义区南彩镇南彩祥东路16号1幢1层110室', '北京市顺义区仁和镇河南村平安北路2号', '石海祥', '13911728531', '石海祥', '13911728531', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('731', '北京中科桐华环保科技有限公司', '91110106071708831E', '旧宫镇旧宫西路93号7幢4层412室', '旧宫镇旧宫西路93号7幢4层412室', '何艳敏', '18511192933', '侯亮亮', '13718910033', null, '116.424944', '39.80376', '116.424944', '116.424944', '');
INSERT INTO `t_test1` VALUES ('732', '北京万事通保洁有限公司', '9111010530641867X2', '北京市朝阳区三间房乡西柳村中街（三间房动漫集中办公区1341号）', '北京市朝阳区三间房乡西柳村中街（三间房动漫集中办公区1341号）', '王喜英', '15210203228', '方兴才', '18710164335', null, '116.569961', '39.903283', '116.569961', '116.569961', '');
INSERT INTO `t_test1` VALUES ('733', '中交华远（北京）建设工程有限公司', '91110109MA00EEYE29', '北京市北京经济技术开发区荣华南路9号院2号楼7层701-1', '北京市北京经济技术开发区荣华南路9号院2号楼7层701-1', '李世国', '13366608046', '邓桂', '010-87220218', null, '116.515079', '39.78534', '116.515079', '116.515079', '');
INSERT INTO `t_test1` VALUES ('734', '北京滨河世纪科贸有限公司', '91110115MA01F6CX2Q', '通州区寨辛庄前街4号院3号楼4层407', '通州区寨辛庄前街4号院3号楼4层407', '于爽', '13901314413', '于爽', '13901314413', null, '116.666752', '40.005726', '116.666752', '116.666752', '');
INSERT INTO `t_test1` VALUES ('735', '北京和安消防工程有限公司', '911101167809546724', '北京市怀柔区青春路26号', '北京市丰台区大成路6号', '张洮', '13801132689', '朱亚红', '13811382689', null, '116.630842', '40.319345', '116.272011', '116.272011', '');
INSERT INTO `t_test1` VALUES ('736', '北京市顺义区人力资源和社会保障局高级技工学校', '1113133001001', '北京市顺义区牛栏山镇牛富路10号', '北京市顺义区牛栏山镇牛富路10号', '李征艳', '69419700', '卢立明', '18811318207', null, '116.655832', '40.221979', '116.655832', '116.655832', '');
INSERT INTO `t_test1` VALUES ('737', '北京锦祥辉消防工程有限公司', '91110115MA01F4CC52', '北京市大兴区瀛吉街8号院3号楼4层403', '北京市大兴区瀛吉街8号院3号楼4层403', '丁泽坤', '18500311042', '丁泽坤', '18500311042', null, '116.449923', '39.76311', '116.449923', '116.449923', '');
INSERT INTO `t_test1` VALUES ('738', '北京金焦耳安全技术有限公司', '91110108560416100F', '北京市西城区茶马街8号院5号楼2层2116', '北京市西城区茶马街8号院5号楼2层2116', '黄标', '13901029977', '常宏友', '18911059162', null, '116.3286', '39.878701', '116.3286', '116.3286', '');
INSERT INTO `t_test1` VALUES ('739', '中消联盟（北京）消防工程技术有限公司', '91110111MA0012E15T', '北京市房山区良乡长虹西路翠柳东街1号-3081', '北京市丰台区长辛店镇射击场路15号园博园一号服务区103室', '成劲松', '13801268091', '杨晓娟', '18654511314', null, '', '', '116.197885', '116.197885', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('740', '北京英兰环保科技有限公司', '91110112l168057702', '北京市通州区张家湾镇齐善庄村208号', '北京市通州区张家湾镇齐善庄村208号', '张庆春', '13661000787', '张庆春', '13661000787', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('741', '北京东富净化技术有限公司', '911103026675332514', '北京经济技术开发区科创五街38号院2号楼930', '北京经济技术开发区科创五街38号院2号楼930', '邹树铮', '13601304672', '翟玮', '16601033619', null, '116.532232', '39.801369', '116.532232', '116.532232', '');
INSERT INTO `t_test1` VALUES ('742', '北京志晨美家保洁清洗有限公司', '91110106MA017LGEXR', '北京市丰台区丰管路22号院12幢2331室', '北京市丰台区丰管路22号院12幢2331室', '李慧', '13521789883', '陈县忠', '13366584368', null, '116.313866', '39.857754', '116.313866', '116.313866', '');
INSERT INTO `t_test1` VALUES ('743', '北京中泰鑫消防工程服务有限公司', '91110117MA003TF910', '北京市平谷区马昌营镇天井大街甲2号', '北京市通州区次渠铺西路1号', '孙琳琳', '15810467456', '王江', '18610414098', null, '117.018359', '40.112555', '116.577804', '116.577804', '');
INSERT INTO `t_test1` VALUES ('744', '北京洁屋靓厨科技有限公司', '911101053183876123', '北京市朝阳区南磨房路37号1701-1703', '华腾北塘集中办公区179771号', '周举锋', '15330015131', '夏秀艳', '13391960910', null, '116.467435', '39.885132', '116.467435', '116.467435', '');
INSERT INTO `t_test1` VALUES ('745', '北京云渺峰上保洁服务有限公司', '91110116MA01CFU48Y', '北京市怀柔区雁栖经济开发区雁栖大街13号3层', '北京市朝阳区工人体育场北路8号院2号楼4层2526', '王寒刚', '13241878259', '王寒刚', '13241878259', null, '116.696758', '40.362199', '116.453432', '116.453432', '');
INSERT INTO `t_test1` VALUES ('746', '北京海润保洁有限公司', '91110108796703747P', '北京市顺义区北务镇政府街9号-379', '北京市顺义区北务镇政府街9号-379', '红山', '13911699178', '杨永生', '15510074132', null, '116.829432', '40.066328', '116.829432', '116.829432', '');
INSERT INTO `t_test1` VALUES ('747', '北京润泽民生商贸有限公司', '91110105593821268F', '通惠家园惠泽园13号楼1层1-5', '通惠家园惠泽园13号楼1层1-5', '段俊立', '13901263984', '段俊立', '13901263984', null, '116.499751', '39.908907', '116.499751', '116.499751', '');
INSERT INTO `t_test1` VALUES ('748', '北京隆盛环境工程有限公司', '91110228742320441L', '北京市密云区西门外大街8号楼3号房二层', '北京市密云区西门外大街8号', '石东春', '010-69087398', '石爱国', '010-69087398', null, '116.832954', '40.377407', '116.832954', '116.832954', '');
INSERT INTO `t_test1` VALUES ('749', '北京京安翔业机械设备有限公司', '911101127740586952', '北京市朝阳区博大路鸿博家园一期B区2号楼3单元1802', '北京市朝阳区博大路鸿博家园一期B区2号楼3单元1802', '李建海', '13683336723', '杨帆', '13910266563', null, '116.472722', '39.831305', '116.472722', '116.472722', '');
INSERT INTO `t_test1` VALUES ('750', '北京陆顺佳安交通消防安全设备有限公司', '911101060924391240', '北京市丰台区六合庄', '北京市丰台区六合庄恒润公寓5号院', '郁茂峰', '18801265788', '郁茂峰', '18801265788', null, '', '', '116.419197', '116.419197', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('751', '北京乙辉华强科贸有限公司', '91110106076645761H', '葆台北路8号院1区1号楼1-7-1', '葆台北路8号院1区1号楼1-7-1', '郭军强', '13911797569', '孙艳华', '13651067499', null, '116.286194', '39.804798', '116.286194', '116.286194', '');
INSERT INTO `t_test1` VALUES ('752', '北京华宇众洁科技发展有限公司', '911101060855479286', '北京市丰台区花乡郑王坟万柳桥南97号6号楼101室', '北京市丰台区花乡郑王坟万柳桥南97号6号楼101室', '任燕玲', '15011139024', '任燕玲', '15011139024', null, '116.332194', '39.842604', '116.332194', '116.332194', '');
INSERT INTO `t_test1` VALUES ('753', '北京安泰洁佳保洁有限公司', '911101076843712900', '北京市石景山区双峪路35号爱玛裕家居购物广场', '北京市石景山区双峪路35号爱玛裕家居购物广场', '王亚岭', '13691139112', '王亚岭', '13691139112', null, '116.118649', '39.939575', '116.118649', '116.118649', '');
INSERT INTO `t_test1` VALUES ('754', '北京鑫太阳清洗服务有限公司', '9111010633979944N', '北京市房山区卓秀北街8号院8号楼6层604', '北京市房山区卓秀北街8号院8号楼6层604', '夏喜霞', '13520083848', '李茂华', '13001978886', null, '116.18172', '39.731569', '116.18172', '116.18172', '');
INSERT INTO `t_test1` VALUES ('755', '北京华烨消防科技有限公司', '91110109078594902E', '北京市房山区良乡凯旋大街建设路18号-D2727', '北京市房山区青龙湖镇小马村146号', '梁立山', '18911009865', '梁立山', '18911009865', null, '', '', '116.086704', '116.086704', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('756', '北京碧诺鸿德环保科技有限公司', '91110108599610277R', '北京市海淀区上庄馨瑞嘉园1号楼1-2层1单元103-4', '长兴路12号中体奥园25号楼103', '周英德', '13651213546', '周英德', '13651213546', null, '116.216034', '40.126218', '116.185523', '116.185523', '');
INSERT INTO `t_test1` VALUES ('757', '北京嘉智佳美科技有限公司', '91110116MA0069QK3H', '北京市怀柔区开放路113号南四层409室', '北京市怀柔区开放路113号南四层409室', '菅坤', '18911934516', '菅坤', '18911934516', null, '116.644101', '40.334055', '116.644101', '116.644101', '');
INSERT INTO `t_test1` VALUES ('758', '北京德裕盛清洁环保科技有限公司', '91110111785539275P', '北京市房山区良乡苏庄东街9号西侧1幢3层330', '北京市房山区良乡苏庄东街9号西侧1幢3层330', '张海明', '13031182761', '张海明', '89372996    13031182761', null, '116.126772', '39.726797', '116.126772', '116.126772', '');
INSERT INTO `t_test1` VALUES ('759', '北京巨安顺鑫消防科技有限责任公司', '91110115770413928Y', '采育镇沙窝店村村富街1号', '采育镇沙窝店村村富街1号', '李富群', '18611916778', '姜超', '13511015929', null, '', '', '', '', '查无此数据');
INSERT INTO `t_test1` VALUES ('760', '北京蓝天洁美环保科技有限公司', '91110116MA003NA0XM', '北京市怀柔区青春路26号1幢6008室', '朝阳区黑庄户乡万子营村', '刘俊国', '15001052130', '刘俊国', '15001052130', null, '116.630395', '40.319487', '', '', '村');
INSERT INTO `t_test1` VALUES ('761', '北京特洁科技有限公司', '91110106MA007ACH8A', '北京市丰台区黄土岗高场村2号A座六层6630', '北京市丰台区黄土岗高场村2号A座六层6630', '李忠辉', '13051314880', '李忠辉', '13051314880', null, '116.327703', '39.832977', '116.327703', '116.327703', '');
INSERT INTO `t_test1` VALUES ('762', '北京易达通慧商贸有限公司', '91110115744710566T', '旧宫镇吉庆庄旧宫西路南三条12号', '十八里店乡西直河村271号', '周其才', '13269222626', '杨玉杰', '13167538787', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('763', '北京富洁科贸有限公司', '91110105MA0092RW5D', '北京市朝阳区安苑北里23号南楼5层507', '北京市朝阳区小红门乡鸿博家园二期A区', '郑孟青', '13341192858', '郑孟青', '13341192858', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('764', '北京安美佳保洁服务有限公司', '9111011168288720XW', '北京市朝阳区王四营乡观音堂文化大道甲6号北二楼218室', '北京市朝阳区王四营乡观音堂文化大道甲6号北二楼218室', '李远锋', '13911564814', '李远锋', '13911564814', null, '116.531516', '39.872975', '116.531516', '116.531516', '');
INSERT INTO `t_test1` VALUES ('765', '北京荣杰天使清洗服务有限责任公司', '91110115MA018JPG3D', '北京市大兴区旧宫镇旧宫西路93号3幢3层3317室', '北京市大兴区旧宫镇旧宫西路93号3幢3层3317室', '王利杰', '13331128164', '庞世超', '15210189005', null, '116.424321', '39.804449', '116.424321', '116.424321', '');
INSERT INTO `t_test1` VALUES ('766', '北京双文保洁有限公司', '91110106786165105R', '北京市丰台区方庄芳群园四区3号楼1204室', '丰台区长辛店白草洼246号', '王志向', '13141379941', '王志向', '13141379941', null, '116.429771', '39.861066', '', '', '村');
INSERT INTO `t_test1` VALUES ('767', '北京福海芮轩清洁服务有限责任公司', '91110105099449819T', '北京市朝阳区十八里店乡老君堂村新平房186号', '北京市朝阳区十八里店乡老君堂村新平房186号', '孟令芝', '13121840774', '庞仁文', '13718559591', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('768', '北京顺新消防科技有限公司', '91110228771978816P', '北京市密云区鼓楼西区6号楼3单元102室', '北京市密云区鼓楼西区6号楼3单元102室', '宋桂宝', '13901165225', '耿新秀', '13901236702', null, '116.845909', '40.380373', '116.845909', '116.845909', '');
INSERT INTO `t_test1` VALUES ('769', '北京天使霓裳科贸有限公司', '911101066656242809', '北京市通州区经海六路1号院9号楼3层301室', '北京市通州区经海六路1号院9号楼3层301室', '张金玲', '18911089416', ' 刁维利', '13520551895', null, '', '', '116.540153', '116.540153', '');
INSERT INTO `t_test1` VALUES ('770', '北京云海心诚清洁服务有限责任公司', '9111010578996982XK', '北京市朝阳区十八里店乡老君堂新平房185号', '北京市朝阳区十八里店乡老君堂新平房185号', '李玉云', '15120046076', '庞仁义', '13381408161', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('771', '北京德技盛科技有限公司', '911101065514161926', '北京市丰台区分中寺关家坑200号院421', '北京市朝阳区博大路3号院8号楼701室', '刘强', '13552252985', '刘强', '13552252985', null, '', '', '116.473231', '116.473231', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('772', '北京东方净美厨房设备有限公司', '91110228MA00ABJ7XJ', '北京市密云区大城子镇政府东侧海惠诚综合楼101室-1737', '北京市密云区大城子镇政府东侧海惠诚综合楼101室-1737', '庞仁义', '13381408161', '庞仁义', '13381408161', null, '117.109769', '40.392925', '117.109769', '117.109769', '');
INSERT INTO `t_test1` VALUES ('773', '北京昊坤科技发展有限公司', '91110107772584130K', '北京市石景山区苹果园南路69号院1号楼15层1513号', '北京市朝阳区成寿寺路150号店铺425-426室', '刘峰', '13301290110', '潘广海', '13311109070', null, '116.178976', '39.926351', '116.448619', '116.448619', '');
INSERT INTO `t_test1` VALUES ('774', '中海洋保洁服务(北京）有限公司', '91110304MA01EG8T68', '燕山岗北路2号楼B座201', '长辛店珠江御景7号楼4-501', '郭永金', '15801319718', '闫新新', '17725562698', null, '115.969301', '39.752932', '116.176552', '116.176552', '');
INSERT INTO `t_test1` VALUES ('775', '玉鼎云华(北京）信息技术有限责任公司', '9111022606961692xf', '北京市通州区宋庄镇文化创意产业集聚公共服务平台', '北京市通州区宋庄镇文化创意产业集聚公共服务平台545号', '王全亮', '13911333918', '徐长丰', '13681627615', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('776', '北京延京富安消防科技有限公司', '91110229MA00CEYU2B', '延庆镇卓家营', '延庆镇卓家营', '陈曦', '13801176000', '余丽川', '18911282039', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('777', '北京金坡通德科技有限公司', '91110116563645435D', '北京市怀柔区乐园西大街15号院19号楼1层1单元19-6', '北京市怀柔区乐园西大街15号院19号楼1层1单元19-6', '张金坡', '13910599234', '张金坡', '13910599234', null, '116.65551', '40.348949', '116.65551', '116.65551', '');
INSERT INTO `t_test1` VALUES ('778', '北京京荣顺达科技发展有限公司', '91110115679615027Q', '北京市大兴区兴华大街（二段）13号院2号楼901', '北京市朝阳区兴隆家园南区37号楼2单元302', '顾金荣', '13611048337', '王晨菲', '18910083816', null, '116.33079', '39.764637', '116.524447', '116.524447', '');
INSERT INTO `t_test1` VALUES ('779', '北京盛世宏业清洁服务有限责任公司', '911101056908172528', '北京市朝阳区十八里店乡西直河第四生产队', '北京市朝阳区十八里店乡西直河第四生产队', '李凤英', '13522089578', '李凤英', '13522089578', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('780', '北京天宇恒远厨房设备有限公司', '91110228MA00ABRN13', '密云区育才路9号檀营乡政府办公室215室-699（檀营集中办公区）', '密云区育才路9号檀营乡政府办公室215室-699（檀营集中办公区）', '李玉荣', '13021035157', '李凤英', '13522089578', null, '116.846891', '40.378001', '116.846891', '116.846891', '');
INSERT INTO `t_test1` VALUES ('781', '北京江山利达消防科技有限公司', '91110115756706759G', '北京市大兴区天水大街46号院2号楼2层227', '北京市大兴区天水大街46号院2号楼2层227', '毛炳达', '13311228058', '毛炳达', '13311228058', null, '116.319351', '39.669054', '116.319351', '116.319351', '');
INSERT INTO `t_test1` VALUES ('782', '北京海生亮洁环保科技有限公司', '911101090828163361', '北京市大兴区黄村镇兴业大街76号1至2层13', '北京市大兴区黄村镇兴业大街76号1至2层13', '李刚', '13071161290', '李刚', '13071161290', null, '116.328227', '39.728553', '116.328227', '116.328227', '');
INSERT INTO `t_test1` VALUES ('783', '北京都之洁清洗服务有限公司', '9111010930637163X1', '北京市门头沟区桥东街13楼北118-13室', '北京市门头沟区桥东街13楼北118-13室', '樊天明', '13621298379', '樊天明', '13621298379', null, '116.103058', '39.945683', '116.103058', '116.103058', '');
INSERT INTO `t_test1` VALUES ('784', '北京中消伟业安全技术工程有限公司', '911101066337867953', '北京市丰台区南三环东路23号安泰小区1号楼4层04西段办公02', '北京市丰台区南三环东路23号安泰小区1号楼4层04西段办公02', '穆重廉', '13901207578', '陈春兰', '13621150530', null, '116.427057', '39.858917', '116.427057', '116.427057', '');
INSERT INTO `t_test1` VALUES ('785', '北京新亮洁建筑工程有限公司', '91110117MA018FC766', '马坊镇金河街106号院5号楼5层513', '马坊镇金河街106号院5号楼5层513', '单心凯', '18310269982', '单心凯', '18310269982', null, '117.009279', '40.059276', '117.009279', '117.009279', '');
INSERT INTO `t_test1` VALUES ('786', '北京天富消防科技有限公司', '91110109306723041B', '石龙经济开发区永安路20号3号楼A-2649室', '马驹桥镇姚辛庄村422号', '李自朋', '18210580586', '李自朋', '18210580586', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('787', '清淞（北京）科技发展有限公司', '9111010131824358X0', '和平里中街甲27号2幢甲810室', '和平里中街甲27号2幢甲810室', '邵雅琳', '13398672833', '郭忠军', '15726693358', null, '116.415927', '39.957296', '116.415927', '116.415927', '');
INSERT INTO `t_test1` VALUES ('788', '北京铧盛建筑工程有限公司', '91110105MA0081X700', '北京市房山区长阳镇广阳新路7号院3号楼705室', '北京市房山区长阳镇广阳新路7号院3号楼705室', '刘志刚', '13911360213', '田丽丽', '18701498969', null, '116.212602', '39.753485', '116.212602', '116.212602', '');
INSERT INTO `t_test1` VALUES ('789', '北京浩通博宇消防安全技术有限公司', '911102296916651667', '北京市延庆区八达岭经济开发区康西路967号', '北京市经济技术开发区隆庆街4号', '叶翔', '13720053516', '叶翔', '13720053516', null, '', '', '116.507158', '116.507158', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('790', '北京东永祥云环保科技有限公司', '91110116MA00F6QJ6R', '北京市怀柔区雁栖湖经济开发区乐园大街38号', '北京市怀柔区雁栖湖经济开发区乐园大街38号', '顾小云', '18513589158', '顾小云', '18513589158', null, '116.672111', '40.345102', '116.672111', '116.672111', '');
INSERT INTO `t_test1` VALUES ('791', '北京市融安消防职业技能培训学校', '521101056757041104', '北京市朝阳区双泉堡甲1号3号楼（商业配套）', '北京市朝阳区双泉堡甲1号3号楼（商业配套）', '袁永刚', '\\N', '林琳', '15611982646', null, '116.367902', '40.006117', '116.367902', '116.367902', '');
INSERT INTO `t_test1` VALUES ('792', '北京永安泰消防工程有限公司', '91110102739386618T', '北京市西城区冠英园西区28号楼1032房间', '北京市西城区冠英园西区28号楼1032房间', '冯海春', '13311210706', '冯琦', '13439458006', null, '116.366887', '39.937825', '116.366887', '116.366887', '');
INSERT INTO `t_test1` VALUES ('793', '北京凯悦通达机电安装有限公司', '9111011579066456C', '北京市大兴区黄村镇大庄京开公路东侧大兴国家粮食储备库院内', '北京市大兴区永兴路5号院7号楼201', '高美彦', '13901165521', '高国锋', '18901165521', null, '116.331148', '39.686918', '116.32264', '116.32264', '');
INSERT INTO `t_test1` VALUES ('794', '北京北安消防工程技术有限公司', '9111011159234501XY', '北京市房山区城关街道顾八路1区1号-P12', '安华里二区13号院甲7号四层', '孙勇', '18101065959', '孙勇', '18101065959', null, '', '', '116.403864', '116.403864', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('795', '北京世纪海源商贸有限公司', '911101156883540339', '北京市大兴区旧宫镇四村北京千山雪装饰工程有限责任公司1楼102室', '北京市大兴区旧宫镇四村北京千山雪装饰工程有限责任公司1楼102室', '朱勇敢', '13522376046', '潘风娟', '18939468088', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('796', '北京华安嘉成环保科技有限公司', '911101066883988886', '北京市大兴区魏善庄镇龙发大街1号院1号楼2单元6层', '北京市大兴区魏善庄镇龙发大街1号院1号楼2单元6层', '罗秀琴', '13683124788', '侯长林', '13810798312', null, '116.401169', '39.683485', '116.401169', '116.401169', '');
INSERT INTO `t_test1` VALUES ('797', '北京龙腾乐家环保科技有限公司', '91110111MA01J4F911', '北京市房山区大石窝镇石窝村北岗区21号', '北京市房山区大石窝镇石窝村北岗区21号', '姚现权', '13436853238', '姚现权', '13436853238', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('798', '北京京安四海消防科技有限责任公司', '91110106592365002J', '东铁匠营横一条31号6楼605室', '东铁营横一条31号金泰彤翔南院写字楼对面平房', '冯庆如', '01067283586', '徐萌萌', '15011523763', null, '', '', '', '', '根据单位名称与经营地址查询，百度地图与高德地图无法定位准确位置');
INSERT INTO `t_test1` VALUES ('799', '北京洁都保洁服务有限公司', '91110105801751226W', '北京市朝阳区十里河村469号', '北京市朝阳区十里河村469号', '郭永中', '13910258964', '郭永中', '13910258964', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('800', '天津小金手清洁服务有限公司北京分公司', '91110302MA01JY7Q18', '北京经济技术开发区文化园西路8号院39号楼10层1001', '北京经济技术开发区文化园西路8号院39号楼10层1001', '周玉萍', '18522955688', '运迺林', '13902003232', null, '116.492689', '39.8067', '116.492689', '116.492689', '');
INSERT INTO `t_test1` VALUES ('801', '北京云青堂环保科技有限公司', '91110106MA01BPPEX6', '北京市丰台区菜户营58号1315', '北京市丰台区菜户营58号1315', '王玉隆', '13801188617', '纪舒', '13811301879', null, '116.347876', '39.871893', '116.347876', '116.347876', '');
INSERT INTO `t_test1` VALUES ('802', '北京久思信息技术有限公司', '91110116MA017R5L3L', '北京市怀柔区九渡河镇黄坎村735号', '北京市朝阳区北苑路13号', '王彩', '18610333037', '张云涛', '13366267161', null, '116.468377', '40.36079', '116.414615', '116.414615', '');
INSERT INTO `t_test1` VALUES ('803', '北京泓博香洁伟业保洁服务有限公司', '91110106089655985P', '北京市丰台区永外宋庄路11号1号楼3层3F30', '北京市丰台区永外宋庄路11号1号楼3层3F30', '赵建伟', '18514213969', '赵建伟', '18514213969', null, '116.428189', '39.853895', '116.428189', '116.428189', '');
INSERT INTO `t_test1` VALUES ('804', '北京建筑材料检验研究院有限公司', '91110107795114924J', '北京市石景山区实兴大街30号院3号楼9层9059房间', '北京市房山区窦店镇亚新路15号', '张增寿', '13701107003', '沈炎明', '13381113002', null, '116.193454', '39.939404', '116.114356', '116.114356', '');
INSERT INTO `t_test1` VALUES ('805', '北京育人四海教育科技有限公司', '91110108MA01C7LY49', '北京市海淀区上地十街1号院1号楼6层604', '北京市海淀区上地十街1号院1号楼6层604', '杜广敬', '18210616316', '张耀蓝', '18810192820', null, '116.302405', '40.053317', '116.302405', '116.302405', '');
INSERT INTO `t_test1` VALUES ('806', '北京蓝海环宇科贸有限责任公司', '91110107MA01E8FF4M', '八宝山南路重兴园甲2号1层128', '八宝山南路重兴园甲2号1层128', '张晓红', '18601281918', '刘德华', '18813164595', null, '116.227983', '39.892551', '116.227983', '116.227983', '');
INSERT INTO `t_test1` VALUES ('807', '北京市泰隆全消防安全设备有限公司', '91110112775494237X', '北京市通州区通胡大街11号-1A2', '北京市通州区通胡大街11号-1A2', '王斌', '15811389555', '邵海英', '13716071136', null, '116.693451', '39.916542', '116.693451', '116.693451', '');
INSERT INTO `t_test1` VALUES ('808', '北京嘉合保洁服务有限公司', '91110115074109519F', '北京市大兴区安定镇安定北街北京安创投资有限责任公司院内二层202室', '北京市大兴区安定镇安定北街北京安创投资有限责任公司院内二层202室', '杜少岗', '13366693624', '骆荣翠', '17310039771', null, '116.513026', '39.62194', '116.513026', '116.513026', '');
INSERT INTO `t_test1` VALUES ('809', '北京至浩众邦科贸有限公司', '911101060804774810', '晓月五里六号楼101-126', '晓月五里六号楼101-126', '史鑫', '18910818062', '史鑫', '18910818062', null, '116.237623', '39.834605', '116.237623', '116.237623', '');
INSERT INTO `t_test1` VALUES ('810', '北京中闳安技术服务有限公司', '9111010509964792X6', '北京市朝阳区高碑店乡高碑店村民俗文化节1376号主楼630室', '北京市朝阳区高碑店润坤大厦315室', '娄岩', '13901253515', '郝建', '13126926344', null, '116.544037', '39.894243', '116.544037', '116.544037', '');
INSERT INTO `t_test1` VALUES ('811', '北京佳洁家美保洁服务有限公司', '91110228MA001J82E', '北京市密云区北庄镇抗峪村丰峪11号', '北京市密云区北庄镇抗峪村丰峪11号', '果长友', '18310081593', '果长友', '18310081593', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('812', '北京骐馨科技有限公司', '91110113MA017WAP18', '北京顺义区赵全营镇北郎中村昌金路段31号', '北京顺义区赵全营镇北郎中村昌金路段31号', '李领刚', '18813180420', '周海英', '13552493375', null, '116.564145', '40.209552', '116.564145', '116.564145', '');
INSERT INTO `t_test1` VALUES ('813', '北京远洋昊天厨房设备有限责任公司', '911101125548760129', '北京市通州区云景东路5-2号2层2-3室', '北京市通州区云景东路5-2号2层2-3室', '谢雪', '13301329516', '谢军', '13811982571', null, '116.666578', '39.883118', '116.666578', '116.666578', '');
INSERT INTO `t_test1` VALUES ('814', '北京万家安泰消防器材有限公司', '91110105556843863A', '北京朝阳区建国路15号院甲1号北岸12922三间房创意生活园区5-537', '北京朝阳区建国路15号院甲1号北岸12922三间房创意生活园区5-537', '张释月', '13001229502', '张释月', '13001229502', null, '116.582199', '39.910757', '116.582199', '116.582199', '');
INSERT INTO `t_test1` VALUES ('815', '北京蓝博同创环保科技有限公司', '911101137577230324', '北京市顺义区高丽营镇六村玉石井东街38号', '北京市顺义区高丽营镇六村玉石井东街38号', '黄瑞春', '18811080067', '黄海萍', '13911829265', null, '116.510723', '40.173861', '116.510723', '116.510723', '');
INSERT INTO `t_test1` VALUES ('816', '北京速洁鑫源科技有限公司', '91110106MA0019E143', '北京市丰台区汽车博物馆东路6号3号楼1单元12层1201-E38（园区）', '北京市朝阳区绿岛', '冯林英', '13717711718', '冯林英', '13717711718', null, '116.30412', '39.826866', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('817', '北京耀弘环保科技有限公司', '92110113MA0199CE2G', '北京市顺义区石园东区28号楼1-102', '北京市顺义区石园东区28号楼1-102', '罗海燕', '18510332158', '刘硕', '13466633397', null, '116.665293', '40.111527', '116.665293', '116.665293', '');
INSERT INTO `t_test1` VALUES ('818', '北京康宇信达环保科技有限公司', '91110106MA006K119P', '北京市房山区顾八路1区1号-S928', '北京市朝阳区成寿寺路150号天雅五金机电城2层B06', '孙朝军', '15210670258', '孙朝军', '15210670258', null, '116.015978', '39.705956', '116.448619', '116.448619', '');
INSERT INTO `t_test1` VALUES ('819', '北京松诚普阳环保科技有限公司', '91110108082837698N', '北京市海淀区清河朱房南街临甲6号', '北京市海淀区清河朱房南街临甲6号', '徐继春', '13811051402', '常福升', '13426487625', null, '', '', '', '', '');
INSERT INTO `t_test1` VALUES ('820', '北京隆开源消防安全检测中心', '911101027393884960', '北京市西城区北三环中路甲29号院2号楼A-303室', '北京市西城区北三环中路甲29号院2号楼A-303室', '谢金建', '13501011551', '崔亚峰', '13701125551', null, '116.382891', '39.971464', '116.382891', '116.382891', '');
INSERT INTO `t_test1` VALUES ('821', '北京博润立方环保科技有限公司', '91110106MA0024P24T', '南三环西路91号院1号楼301-733室', '南三环西路91号院1号楼301-733室', '彭成', '15911163329', '彭成', '15911163329', null, '116.33291', '39.85026', '116.33291', '116.33291', '');
INSERT INTO `t_test1` VALUES ('822', '北京普瑞天泽科技有限公司', '911101087675488569', '幸福大街甲39号', '幸福大街甲39号', '李筝', '52880867', '董明', '13311106312', null, '116.43047', '39.888768', '116.43047', '116.43047', '');
INSERT INTO `t_test1` VALUES ('823', '中超伟业建筑工程有限公司', '91110109MA00DQUC89', '北京市门头沟区斋堂大街45号科技楼ZT082室', '北京市丰台区南三环西路91号院宝隆大厦三层', '陈明芽', '13911987666', '陈志新', '18611665605', null, '115.69639', '39.972376', '116.332672', '116.332672', '');
INSERT INTO `t_test1` VALUES ('824', '北京晶慧焱保洁服务有限公司', '91110116062822974U', '北京市怀柔区迎宾南路11号五幢二层2213室', '北京市怀柔区迎宾南路11号五幢二层2213室', '代先勤', '13621161004', '刘长成', '13521072364', null, '116.639796', '40.302257', '116.639796', '116.639796', '');
INSERT INTO `t_test1` VALUES ('825', '北京中青源环保科技有限公司', '91110106MA004P103H', '北京市大兴区黄村镇芦花路1号院24号楼1层1-1号A101-10', '北京市大兴区黄村镇芦花路1号院24号楼1层', '刘于忠', '13910149229', '田海燕', '13366572648', null, '116.285307', '39.787947', '116.285307', '116.285307', '');
INSERT INTO `t_test1` VALUES ('826', '北京长城研修学院', '121100004006406644', '凉水河一街20号', '凉水河一街20号', '李儒树', '13911891241', '沈禛', '17600406718', null, '116.511311', '39.765965', '116.511311', '116.511311', '');
INSERT INTO `t_test1` VALUES ('827', '北京中兴久安技术检测有限公司', '91110102688360177F', '北京市西城区黄寺大街26号院德胜置业大厦5号楼1003室', '北京市西城区黄寺大街26号院德胜置业大厦5号楼1003室', '李铁寅', '15601290868', '张权', '13321152440', null, '116.382403', '39.961865', '116.382403', '116.382403', '');
INSERT INTO `t_test1` VALUES ('828', '北京竣景科技有限责任公司', '91110304MA01B0FP88', '北京市房山区燕山燕东路（原化一幼儿园）B座二区2—0138', '北京市房山区燕山燕东路（原化一幼儿园）B座二区2—0138', '卢群子', '13901070893', '卢群子', '13901070893', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('829', '北京京广兴业科技发展有限公司', '91110108067299713W', '北京市大兴区团结路19号院20号楼4层2单元408', '北京市大兴区团结路19号院20号楼4层2单元408', '倪玲玉', '15210051801', '倪玲玉', '15210051801', null, '116.31676', '39.630617', '116.31676', '116.31676', '');
INSERT INTO `t_test1` VALUES ('830', '北京华清丽洁保洁服务有限公司', '91110106569535413G', '北京市丰台区南四环西路186号一区1号楼2层1822(园区)', '北京市朝阳区黑庄户万子营东村', '杨先锋', '13520312519', '杨先锋', '13520312519', null, '116.294769', '39.820443', '', '', '村');
INSERT INTO `t_test1` VALUES ('831', '北京青道夫科技有限公司', '91110105MA01B2QK27', '北京市房山区长阳万兴路86号-A3491', '北京市房山区长阳万兴路86号-A3491', '孟祥金', '15010862805', '孟祥金', '15010862805', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('832', '北京鑫盛焰环境科技有限公司', '91110111MA01FXR44B', '北京市房山区长阳万兴路86号-A4424', '北京市房山区长阳万兴路86号-A4424', '郭莹', '18147630361', '郭莹', '18147630361', null, '', '', '', '', '同116');
INSERT INTO `t_test1` VALUES ('833', '北京汇诚骏景科技有限公司', '91110105699565653A', '北京市朝阳区东坝乡东小井甲1号', '北京市朝阳区东坝乡东小井甲1号', '李瑞鑫', '010-65001686', '于祥杰', '18910136923', null, '116.589689', '39.946422', '116.589689', '116.589689', '');
INSERT INTO `t_test1` VALUES ('834', '北京四方亚明安防工程有限公司', '91110108743346715U', '阜成路115号北京印象1号楼1门1018号', '阜成路115号北京印象1号楼1门1018号', '于小明', '13801022664', '李冬梅', '13601205645', null, '116.278252', '39.925054', '116.278252', '116.278252', '');
INSERT INTO `t_test1` VALUES ('835', '北京高炜懿德消防检测有限公司', '91110102571214723T', '北京市大兴区龙发大街1号院2号楼2单元一层B104', '北京市大兴区龙发大街1号院2号楼2单元一层B104', '高令辉', '13552188777', '刘鹏举', '13910835119', null, '116.399017', '39.682436', '116.399017', '116.399017', '');
INSERT INTO `t_test1` VALUES ('836', '北京丽丽环保科技有限公司', '91110106MA00ATP776', '北京市丰台区大红门桥东53号J1-224', '北京市丰台区大红门桥东53号J1-224', '张建军', '13522786631', '张建军', '13522786631', null, '116.406535', '39.830654', '116.406535', '116.406535', '');
INSERT INTO `t_test1` VALUES ('837', '北京华祥永安消防工程有限公司', '911101065790537099', '南三环西路78号B座5层8号', '南三环西路78号B座5层8号', '陈永芬', '13910115837', '王永枫', '13912557525', null, '116.3399', '39.847117', '116.3399', '116.3399', '');
INSERT INTO `t_test1` VALUES ('838', '北京祈安顺达消防科技有限公司', '91110115696356645N', '旧宫镇庑殿路16号楼105', '旧宫镇庑殿路16号楼105', '王福旺', '13801100265', '赵丽荣', '13683088605', null, '116.438224', '39.81934', '116.438224', '116.438224', '');
INSERT INTO `t_test1` VALUES ('839', '北京福升兴泰环保科技有限公司', '91110229MA01F8247J', '北京市延庆区中关村延庆园风谷四路8号院27号楼1991', '北京市延庆区中关村延庆园风谷四路8号院27号楼1991', '梁东升', '18701259989', '梁东升', '18701259989', null, '115.921775', '40.368058', '115.921775', '115.921775', '');
INSERT INTO `t_test1` VALUES ('840', '北京华蕊清洗技术服务有限公司', '91110106344250417N', '北京市大兴区黄村镇芦花路1号院10号楼1层138室', '北京市大兴区黄村镇芦花路1号院10号楼1层138室', '李德忠', '13366608951', '李杰', '13366608951', null, '116.284536', '39.79096', '116.284536', '116.284536', '');
INSERT INTO `t_test1` VALUES ('841', '北京晟煜知达科技有限公司', '91110106399517043B', '北京市大兴区兴华大街二段波普中心4号楼1710', '北京市大兴区兴华大街二段波普中心4号楼1710', '马云飞', '13910413681', '马云飞', '13910413681', null, '116.331083', '39.74736', '116.331083', '116.331083', '');
INSERT INTO `t_test1` VALUES ('842', '北京京广兴业清洗服务有限公司', '91110102554878616N', '北京市大兴区团结路19号院20号楼4层2单元408', '北京市大兴区团结路19号院20号楼4层2单元408', '吴龙飞', '13521103900', '吴长春', '13691352968', null, '116.31729', '39.630882', '116.31729', '116.31729', '');
INSERT INTO `t_test1` VALUES ('843', '中洁(北京)保洁服务有限责任公司', '91110111MA01FDTJ5Y', '北京市房山区康泽路3号院12号楼6层2单元605', '北京市海淀区肖家河新村西区16号楼1单元801', '\\N', '\\N', '刘康振', '15652699998', null, '116.22002', '39.768118', '116.283386', '116.283386', '');
INSERT INTO `t_test1` VALUES ('844', '北京市诚信佳保洁服务中心', '911101077454511640', '北京市石景山区永乐东区（燕川楼北侧）', '北京市石景山区永乐东区（燕川楼北侧）', '蒋淼驰', '13701097569', '蒋淼驰', '13611266057', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('845', '北京金鑫亚源环保科技有限公司', '91110106092927937E', '北京市丰台区郑常庄326号C座一层8118室', '北京市丰台区郑常庄326号C座一层8118室', '刘金', '13683581542', '刘金', '13683581542', null, '116.275442', '39.887337', '116.275442', '116.275442', '');
INSERT INTO `t_test1` VALUES ('846', '北京奥信建筑工程设备安装有限公司', '91110105700279882K', '来广营西路5号院诚盈中心5号楼902、903、904单元', '来广营西路5号院诚盈中心5号楼902、903、904单元', '赵剑', '84630667', '马赛', '84630667', null, '116.465176', '40.021117', '116.465176', '116.465176', '');
INSERT INTO `t_test1` VALUES ('847', '北京京盾中安消防安全设备有限公司', '911101065769246287', '大成里秀园13号楼东侧楼（卢沟桥企业集中办公区）', '大成里秀园13号楼东侧楼（卢沟桥企业集中办公区）', '姜忠', '18801260568', '姜忠', '18801260568', null, '116.26303', '39.892486', '116.26303', '116.26303', '');
INSERT INTO `t_test1` VALUES ('848', '北京云涵日昌科技发展有限公司', '911101050592762202', '北京市朝阳区东三环南路19号院1号楼-2至15层101内十五层1505室', '北京市朝阳区东三环南路19号院北区', '陈福存', '13718679042', '陈福存', '13718679042', null, '116.460023', '39.868717', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('849', '北京中江旺盛消防装备有限公司', '9111010667572041XY', '北京市丰台区卢沟桥晓月中路30-28', '北京市丰台区张仪村甲70号', '朱东均', '18001218151', '朱东均', '18001218151', null, '', '', '116.221685', '116.221685', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('850', '北京海洋清洗有限公司', '91110116558502720K', '北京市怀柔区庙城镇庙城293号院3号楼1层110', '北京市怀柔区庙城镇庙城293号院3号楼1层110', '谢明芳', '60691645', '刘凤艳', '13552821905', null, '116.622481', '40.296195', '116.622481', '116.622481', '');
INSERT INTO `t_test1` VALUES ('851', '北京信诚环宇消防技术服务有限公司', '91110115685781013G', '大兴区金星路12号院2号楼11层1213室', '大兴区金星路12号院2号楼11层1213室', '贾娜', '18888840508', '邓守龙', '18610385899', null, '116.350673', '39.762394', '116.350673', '116.350673', '');
INSERT INTO `t_test1` VALUES ('852', '北京熠昇蓝天环保科技有限公司', '91110113MA00B0XT4J', '龙湾屯镇焦庄户村后中小巷42号', '龙湾屯镇焦庄户村后中小巷42号', '张红杰', '13699140325', '王新', '15611231618', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('853', '北京瑞祥顺保洁服务有限公司', '91110113MA01E8X81A', '北京市顺义区天竺地区府前一街13号5幢4层406室', '北京市顺义区天竺地区府前一街13号5幢4层406室', '赵蕊', '13716467246', '赵蕊', '13716467246', null, '116.580521', '40.061658', '116.580521', '116.580521', '');
INSERT INTO `t_test1` VALUES ('854', '北京市鑫普健工贸中心', '91110113102566339W', '北京市顺义区南法信镇政府东侧（健普公司内）', '北京市顺义区南法信镇政府东侧（健普公司内）', '陈立建', '13801397511', '田海征', '13716158224', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('855', '北京华旭卓越消防技术有限公司', '91110114074132575F', '回龙观镇金榜园小区会馆写字楼207室', '苏家坨镇后沙涧5区43号', '黄世恩', '13910809843', '黄世方', '15810416133', null, '116.327945', '40.060887', '116.146046', '116.146046', '');
INSERT INTO `t_test1` VALUES ('856', '北京盈科创安科技有限公司', '91110116MA00F32Q21', '北京市怀柔区怀北镇怀北路308号', '北京市朝阳区江南文化创意产业园19号楼-2', '王玉杰', '13810238907', '王玉杰', '13810238907', null, '116.688223', '40.389386', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('857', '北京费尔消防技术工程有限公司', '91110108102060004R', '北京市海淀区三里河路17号甘家口大厦805室', '北京市海淀区三里河路17号甘家口大厦805室', '付奇光', '010-88392130', '杨女士', '010-88392130', null, '116.333266', '39.927493', '116.333266', '116.333266', '');
INSERT INTO `t_test1` VALUES ('858', '北京盛世鸿业清洁服务有限责任公司', '91110105MA005RPN53', '北京市朝阳区北苑东路19号院1号楼', '北京市朝阳区北苑东路19号院1号楼', '吕绪锋', '13241068455', '吕绪锋', '13241068455', null, '116.440528', '40.042172', '116.440528', '116.440528', '');
INSERT INTO `t_test1` VALUES ('859', '北京三友安泰科技有限公司', '91110116095352817C', '北京市怀柔区迎宾南路11号五幢二层2213室', '北京市朝阳区江南文化创意产业园19-2', '闫海', '13601006766', '张玉琦', '15735150492 /01069513862', null, '116.639675', '40.302296', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('860', '北京时代美林安全防范技术有限公司', '91110106771959236E', '北京市丰台区菜户营甲88号2A号楼1605室', '北京市丰台区菜户营甲88号2A号楼1605室', '解福华', '13801061467', '解福华', '13801061467', null, '116.347835', '39.870728', '116.347835', '116.347835', '');
INSERT INTO `t_test1` VALUES ('861', '北京华融达科技有限公司', '91110105721426204J', '十里堡甲3号5号楼31A', '十里堡甲3号5号楼31A', '张林', '13011291562', '黄艳涛', '13810723916', null, '116.50146', '39.913609', '116.50146', '116.50146', '');
INSERT INTO `t_test1` VALUES ('862', '北京天锐杰厨房设备有限公司', '9111010666157356X6', '北京市丰台区角门18号枫竹苑二区1号楼7层705', '北京市大兴区世界之花假日广场C4栋1001室', '孙俊杰', '15010191019', '孙俊杰', '15010191019', null, '116.371319', '39.834107', '116.420344', '116.420344', '');
INSERT INTO `t_test1` VALUES ('863', '北京秉承工程技术有限公司', '9111010809189669XT', '北京市海淀区蓝靛厂东路2号院2号楼（金源时代商务中心2号楼）1单元（A座）10D', '北京市朝阳区北苑路13号院领地2-3-101', '温计虎', '010-51095003', '贾红艳', '010-51065003', null, '116.288113', '39.960956', '116.413828', '116.413828', '');
INSERT INTO `t_test1` VALUES ('864', '北京兴安盾消防器材有限公司', '91110115053570867L', '北京市大兴区西红门镇金大路6号1幢一层3室', '新媒体产业基地金星路15号（小二涮肉）', '刘连乙', '13911902025', '刘冬', '13366669082', null, '', '', '116.348188', '116.348188', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('865', '北京地道鼠环保科技有限公司', '911101063443477452', '北京经济技术开发区地盛北街1号院19号楼1层1单元101-04', '北京经济技术开发区地盛北街1号院19号楼1层1单元101-04', '韩丽', '18701505098', '赵金峰', '13681324592', null, '116.497271', '39.782911', '116.497271', '116.497271', '');
INSERT INTO `t_test1` VALUES ('866', '北京晶雅丽科贸有限公司', '911101065732467299', '北京市丰台区大红门南里10号楼1单元303室', '北京市丰台区大红门南里10号楼1单元303室', '杨建生', '13261311763', '张晶晶', '13718257307', null, '116.402539', '39.836213', '116.402539', '116.402539', '');
INSERT INTO `t_test1` VALUES ('867', '北京红门保洁有限公司', '91110106MA007D190G', '北京市丰台区南四环西路186号1区1号楼2层1810室', '北京市丰台区南四环西路186号1区1号楼2层1810室', '王树峰', '13671003999', '李思广', '15701583836', null, '116.295802', '39.827879', '116.295802', '116.295802', '');
INSERT INTO `t_test1` VALUES ('868', '北京军威义消防科技有限公司', '91110101567432234D', '宝钞胡同107号118室', '方庄南路方恒偶2号楼B座307/308', '邱小军', '13911839372', '朱晓宁', '13911832887', null, '116.39939', '39.942041', '116.438327', '116.438327', '');
INSERT INTO `t_test1` VALUES ('869', '北京信利通物业管理有限公司', '91110113330386989Y', '北京市顺义区顺仁路57号院1号楼2层248', '北京市顺义区顺仁路57号院1号楼2层248', '胡永成', '13641053252', '张祎楠', '15011293168', null, '116.663438', '40.086004', '116.663438', '116.663438', '');
INSERT INTO `t_test1` VALUES ('870', '北京龙钊嘉业环保科技有限公司', '91110106053624140W', '北京市丰台区丰葆路华英园12号3层313室', '北京市丰台区丰葆路华英园12号3层313室', '杨俊艳', '13315929069', '谭朝双', '13911464849', null, '116.291053', '39.815417', '116.291053', '116.291053', '');
INSERT INTO `t_test1` VALUES ('871', '北京全安达消防器材维修中心', '91110105748837193U', '北京市朝阳区垡头西里一区12楼4门4-12', '北京市朝阳区垡头西里一区12楼4门4-12', '罗六海', '13701177535', '罗六海', '13701177535', null, '116.510815', '39.865903', '116.510815', '116.510815', '');
INSERT INTO `t_test1` VALUES ('872', '北京聚美德馨环保科技有限公司', '91110116MA018KNJ8Y', '北京市怀柔区雁栖经济开发区雁西路33号院1号楼103室', '北京市怀柔区雁栖经济开发区雁西路33号院1号楼103室', '谭冰江', '13522473060', '谭冰刚', '13552098339', null, '116.683023', '40.35204', '116.683023', '116.683023', '');
INSERT INTO `t_test1` VALUES ('873', '北京万和兴达科技发展有限公司', '91110105795984655M', '北京市大兴区旧桥路25号院11号楼9层905', '北京市大兴区旧宫镇德茂庄华宇公寓14门201室', '张琳', '13021905916', '柴雪艳', '13911012781', null, '116.45367', '39.792792', '116.444332', '116.444332', '');
INSERT INTO `t_test1` VALUES ('874', '北京华融达国环科技有限公司', '91110108760104750F', '马神庙1号二区19号楼74单元701室', '马神庙1号二区19号楼74单元701室', '宋洪黎', '13011291559', '陈小方', '18310401557', null, '116.306409', '39.926368', '116.306409', '116.306409', '');
INSERT INTO `t_test1` VALUES ('875', '通县节能技术推广站', '91110112102439671N', '北京市通州区新华大街248号', '北京市通州区小堡村南3号院', '孙伟', '15510503811', '韩晓艳', '13522159078', null, '116.647325', '39.905885', '116.723278', '116.723278', '');
INSERT INTO `t_test1` VALUES ('876', '北京联城正安智能消防安全技术有限公司', '91110114080484059K', '北京市昌平区流村镇工业企业总公司东二楼259号', '北京市昌平区流村镇工业企业总公司东二楼259号', '柴元香', '18613878482', '18613878482', '18613878482', null, '116.106898', '40.173721', '116.106898', '116.106898', '');
INSERT INTO `t_test1` VALUES ('877', '北京冰春莲科技有限公司', '91110106697740286K', '北京市丰台区巴庄子139号62栋128室', '北京市丰台区巴庄子139号62栋128室', '徐善志', '13311599278', '徐善志', '13311599278', null, '116.326447', '39.834572', '116.326447', '116.326447', '');
INSERT INTO `t_test1` VALUES ('878', '北京国伟科技发展有限公司', '91110228MA004QHLXR', '北京市密云区太师屯镇政府办公楼415室-683(太师屯镇集中办公区）', '北京市密云区太师屯镇政府办公楼415室-683(太师屯镇集中办公区）', '李国伟', '15901367082', '李国伟', '15901367082', null, '117.126707', '40.540628', '117.126707', '117.126707', '');
INSERT INTO `t_test1` VALUES ('879', '北京富春保洁服务有限公司', '911101166675053813', '北京市怀柔区北房镇安各庄村349号', '北京市怀柔区北房镇安各庄村349号', '赵洪富', '13716487278', '赵庆春', '13910188483', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('880', '北京中江兴胜消防器材有限公司', '91110105MA005CCY1J', '北京市朝阳区十八里店乡横街子村209号', '北京市朝阳区十八里店乡横街子村209号', '吴兴', '13910258384', '吴兴', '18911325119', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('881', '北京大德空间环境科技有限公司', '91110105560399873D', '北京市朝阳区北苑路170号6号楼15层1506', '北京市朝阳区北苑路170号6号楼15层1506', '郑美妹', '13910797866', '郑美妹', '13910797866', null, '116.418803', '39.997507', '116.418803', '116.418803', '');
INSERT INTO `t_test1` VALUES ('882', '北京孝善科技服务有限公司', '91110117358312156H', '北京市平谷区镇罗营镇上营中路12号', '北京市平谷区镇罗营镇上营中路12号', '程秀峰', '15510728849', '程秀峰', '15510728849', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('883', '北京尚品嘉美保洁服务有限公司', '91110117339788730W', '北京市平谷区林荫北街13号信息大厦802室', '北京市平谷区林荫北街13号信息大厦802室', '张苗', '13581822586', '张苗', '13581822586', null, '117.105101', '40.141105', '117.105101', '117.105101', '');
INSERT INTO `t_test1` VALUES ('884', '北京中置天龙科技发展有限公司', '91110115791630649C', '北京市大兴区乐园路4号院3号楼5层601', '北京市通州区永乐经济开发区恒业北七街6号及6号院5号楼', '陈兆伟', '13901302276', '陈兆伟', '13901302276', null, '116.333777', '39.765348', '116.78691', '116.78691', '');
INSERT INTO `t_test1` VALUES ('885', '北京天怡大和投资管理有限公司', '911101057832035837', '北京市朝阳区安立路101号1号楼906', '北京市朝阳区安立路101号1号楼906', '孙树立', '13901208791', '李美霞', '13699279501', null, '116.405015', '39.99534', '116.405015', '116.405015', '');
INSERT INTO `t_test1` VALUES ('886', '北京广大宏朗联拓科技有限公司', '91110106575194395F', '北京市丰台区新村巴庄子124号8号', '北京市丰台区双庙125号院2号楼', '张景齐', '13901222120', '沈永革', '13661279231', null, '116.428937', '39.837723', '116.428937', '116.428937', '');
INSERT INTO `t_test1` VALUES ('887', '北京市必克机电设备有限责任公司', '91110108700154879D', '北京市海淀区远大路39号1号楼B1层B-19号', '北京市海淀区西四环北路10号院1号楼2层', '王全红', '13901182467', '穆杨', '13911687610', null, '116.27649', '39.967721', '116.27649', '116.27649', '');
INSERT INTO `t_test1` VALUES ('888', '好师傅（北京）劳务服务有限公司', '91110115MA00GE4J32', '北京市大兴区兴华大街（二段）3号院1号楼5层607', '北京市大兴区兴华大街（二段）3号院1号楼5层607', '张鹏', '13911350289', '王志奎', '13520021848', null, '116.33114', '39.749808', '116.33114', '116.33114', '');
INSERT INTO `t_test1` VALUES ('889', '北京鑫诚吉顺科贸有限公司', '91110112799982278Q', '北京市通州区永顺镇乔庄村商业街69号', '北京市通州区永顺镇乔庄村商业街69号', '张志国', '13911084906', '张彦辉', '18519888781', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('890', '北京芸众缘咨询服务有限公司', '91110105MA008N7J3F', '北京市朝阳区百子湾西里402号楼12层1212', '北京市昌平区小汤山工业区北侧流西路', '李宏', '13811020995', '李宏', '13811020995', null, '116.494728', '39.894778', '', '', '经营地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('891', '北京洁帮盛世启峰环保科技有限责任公司', '91110116MA01JEEGXR', '北京市怀柔区庙城镇庙城村临300号401室', '吴家场路1号盛今佳园3号楼', '崔海峰', '17611388618', '邵世杰', '17600359518', null, '', '', '116.307547', '116.307547', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('892', '北京江山诚信消防器材有限公司', '91110105X003848684', '北京市朝阳区高碑店乡半壁店村315号', '北京市朝阳区高碑店乡半壁店村315号', '严朝德', '13601208108', '严恒', '18257130067', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('893', '北京嘉信邦科技有限公司', '91110116MA00HCXE70', '雁栖经济开发区乐园大街38号', '雁栖经济开发区乐园大街38号', '李国忠', '18611156143', '陈婷', '18510908596', null, '116.672111', '40.345102', '116.672111', '116.672111', '');
INSERT INTO `t_test1` VALUES ('894', '北京优锘科技有限公司', '91110108593809883R', '北京市海淀区建材城西路50号2号楼二层280室	', '北京市朝阳区花家地北里14号楼北京国际画材中心5层	', '马烈', '010-84914126', '杨阳', '13810924284', null, '116.333341', '40.056766', '116.465064', '116.465064', '');
INSERT INTO `t_test1` VALUES ('895', '北京海文博瑞科技有限公司', '91110113330299164T', '高丽营镇文化营村北（临空二路1号）', '高丽营镇文化营村北（临空二路1号）', '陈文群', '18910279065', '宋加宏', '13311398330', null, '116.578569', '40.170088', '116.578569', '116.578569', '');
INSERT INTO `t_test1` VALUES ('896', '北京蓝箭消防设备有限公司', '91110111569460933N', '北京市房山区良乡昌宏西路翠柳东街1号-1737', '北京市房山区良乡昌宏西路翠柳东街1号-1737', '李涛', '18611751986', '李涛', '18611751986', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('897', '北京鸿泽达科技有限公司', '911101087187008828', '北京市海淀区长智路5号长运财智会馆329室', '北京市海淀区长智路5号长运财智会馆329室', '李小红', '13911815472', '韩浩', '13811583344', null, '116.30151', '39.942713', '116.30151', '116.30151', '');
INSERT INTO `t_test1` VALUES ('898', '北京茂鑫源物业管理服务有限公司', '91110115666926061C', '旧宫镇小红门路西11幢平房-2号', '旧宫镇小红门路西11幢平房-2号', '杨松林', '13801031472', '王辉', '13501156246', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('899', '北京天城环保科技有限公司', '91110229351274265M', '北京市延庆区延庆经济开发区百泉街10号3栋162-1室', '北京市西城区安德路112号132室', '李红云', '17611282890', '陈效芸', '18810591629', null, '115.983285', '40.440911', '116.38776', '116.38776', '');
INSERT INTO `t_test1` VALUES ('900', '北京金鑫盾消防安全科技有限公司', '91110106554853654T', '北京市丰台区马家堡路180号6层658', '北京市丰台区马家堡路180号6层658', '祝钦锋', '83811826', '李冰', '1885611959', null, '116.379614', '39.834924', '116.379614', '116.379614', '');
INSERT INTO `t_test1` VALUES ('901', '北京华信恒泰建设工程有限公司', '91110111MA01EQXY3X', '北京市房山区良乡凯旋大街建设路18号-A1376', '北京市丰台区中福丽宫品牌基地5号楼208室', '李立威', '13910327281', '刘丽', '13331137119', null, '', '', '116.354809', '116.354809', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('902', '北京顾友环保科技有限公司', '91110106MA017DQQXY', '北京市丰台区万芳园一区1号楼1层104', '北京市丰台区万芳园一区1号楼1层104', '吕淑萍', '13910507275', '李博乔', '18910984024', null, '116.320236', '39.847567', '116.320236', '116.320236', '');
INSERT INTO `t_test1` VALUES ('903', '北京宝仑工贸有限公司', '91110106661569632Q', '北京市丰台区槐房西路316号院二号楼三层3001室', '北京市丰台区槐房西路316号院二号楼三层3001室', '杨亚超', '13901327774', '陈金', '13501033552', null, '116.369397', '39.808081', '116.369397', '116.369397', '');
INSERT INTO `t_test1` VALUES ('904', '辰安天泽智联技术有限公司', '91340111MA2T0EPN2J', '北京市海淀区丰秀中路3号院1号楼4层101-408', '北京市海淀区丰秀中路3号院1号楼4层101-408', '王宇', '13301168378', '李振铎', '18500425913', null, '116.2379', '40.075919', '116.2379', '116.2379', '');
INSERT INTO `t_test1` VALUES ('905', '北京绸缪消防科技有限公司', '91110111MA007WPM1G', '北京市房山区石楼镇吉羊村北一区54号', '北京市房山区城关科技产业园', '赵秀敏', '13520992321', '张中华', '13601297694', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('906', '北京通聚鑫科贸有限公司', '91110106795996875P', '北京市大兴区旧宫镇世界之花C3公寓1106', '北京市大兴区旧宫镇世界之花C3公寓1106', '齐自林', '18600390079', '齐云', '13501121650', null, '116.420473', '39.819048', '116.420473', '116.420473', '');
INSERT INTO `t_test1` VALUES ('907', '北京恒安保洁有限公司', '91110108587694469N', '北京市海淀区西郊北洼路1区195幢2层142', '北京市海淀区西郊北洼路1区195幢2层142', '曾新顺', '13691143767', '曾新顺', '13691143767', null, '116.340112', '40.042086', '116.340112', '116.340112', '');
INSERT INTO `t_test1` VALUES ('908', '北京柔兴兴消防器材有限公司', '911101167002672917', '北京市怀柔区开放路113号', '北京市怀柔区开放路11号', '于占江', '13901023297', '杨洁', '13810060758', null, '116.644119', '40.333708', '116.644264', '116.644264', '');
INSERT INTO `t_test1` VALUES ('909', '北京东方盛辉消防器材有限公司', ' 911101057855329542', '北京市朝阳区左家庄15号4号楼8108室', '北京市朝阳区左家庄15号4号楼8108室', '李剑辉', '13601237637', '李剑辉', '13910112972', null, '116.44365', '39.952622', '116.44365', '116.44365', '');
INSERT INTO `t_test1` VALUES ('910', '北京红吉利消防设备服务中心', '91110229103057456F', '北京市张山营镇晏家堡村东区3号', '北京市昌平区东小口镇贺村', '张石平', '13701095178', '张石平', '13701095178', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('911', '北京馨净界家政服务有限公司', '92110114MA00F91R0H', '景园北街2号60栋13层', '景园北街2号60栋13层', '刘秋杰', '13810010848', '高学明', '13311208977', null, '116.520768', '39.779336', '116.520768', '116.520768', '');
INSERT INTO `t_test1` VALUES ('912', '龙创蓝天（北京）科技有限公司', '91110302MA04H0K97', '北京市海淀区青清商厦310', '北京市海淀区青清商厦310', '曹卫东', '13911708435', '高迪', '13911362356', null, '116.276751', '39.957428', '116.276751', '116.276751', '');
INSERT INTO `t_test1` VALUES ('913', '北京恒远劳务服务有限公司', '91110113MA00CHKKXJ', '北京市顺义区林河工业开发区顺仁路53号1幢3层3005室', '北京市顺义区林河工业开发区顺仁路53号1幢3层3005室', '檀瑞莲', '13611311561', '夏强委', '13910221668', null, '116.66446', '40.090967', '116.66446', '116.66446', '');
INSERT INTO `t_test1` VALUES ('914', '北京同鑫鸿祥厨房设备有限公司', '91110101399007799X', '东花市南里东区15号楼-01层3-F01-02', '东花市南里东区15号楼-01层3-F01-02', '钱万俊', '13911237833', '钱万俊', '13911237833', null, '116.437769', '39.894409', '116.437769', '116.437769', '');
INSERT INTO `t_test1` VALUES ('915', '北京京安恒达消防安全设备有限公司', '911101063397122690', '北京市丰台区马连道卫强校村118号（万丰基业）D122室', '北京市丰台区马连道卫强校村118号（万丰基业）D122室', '张齐', '18612897119', '张齐', '18612897119', null, '116.328334', '39.87449', '116.328334', '116.328334', '');
INSERT INTO `t_test1` VALUES ('916', '北京卓越恒美环保科技有限公司', '91110106590614167b', '北京市丰台区太平桥西里甲一号塔楼东1-3幢103室', '青云店小张本四海超市', '王章兰', '010-89266506', '王章兰', '18210760332', null, '116.312978', '39.885369', '116.448869', '116.448869', '');
INSERT INTO `t_test1` VALUES ('917', '北京世纪隆泽环保科技有限公司', '91110106MA01CT5P9Q', '北京市丰台区汽车博物馆东路1号院2号楼8层北座910', '北京市丰台区汽车博物馆东路1号院2号楼8层北座910', '马叶飞', '13522930304', '孙垚强', '13552775279', null, '116.300888', '39.827032', '116.300888', '116.300888', '');
INSERT INTO `t_test1` VALUES ('918', '北京天天有喜保洁服务有限公司', '91110117306770905A', '北京市平谷区林荫北街13号信息大厦802室', '北京市平谷区林荫北街13号信息大厦802室', '张广顺', '13240417211', '张广顺', '13240417211', null, '117.105101', '40.141105', '117.105101', '117.105101', '');
INSERT INTO `t_test1` VALUES ('919', '北京中昌盛业建筑工程有限公司', '91110109MA00C70M11', '北京市门头沟区军庄镇军庄路2号院JZ1405室', '北京市石景山区古城南街9号院5号楼1111室', '姜祥根', '18500222278', '卢会玲', '15215707663', null, '116.185554', '39.904703', '116.185554', '116.185554', '');
INSERT INTO `t_test1` VALUES ('920', '北京鑫源祥瑞环保科技有限公司', '91110116MA01CM9T8T', '北京市怀柔区雁栖经济开发区雁栖路33号院1号楼103室', '方庄镇芳群公寓5栋203', '孙晓萌', '13911736219', '孙晓萌', '13911736219', null, '116.425203', '39.85935', '116.425203', '116.425203', '');
INSERT INTO `t_test1` VALUES ('921', '北京亿万佳保洁服务有限公司', '91110117339788853X', '北京市平谷区林荫北街13号信息大厦802室', '北京市平谷区林荫北街13号信息大厦802室', '王刘杰', '13693536128', '王刘杰', '13693536128', null, '117.105101', '40.141105', '117.105101', '117.105101', '');
INSERT INTO `t_test1` VALUES ('922', '北京天赐良机冷却设备有限公司', '91110105399066908X', '北京市朝阳区五里桥二街2号院5号楼5层0530', '北京市朝阳区五里桥二街2号院5号楼5层0530', '张治敏', '13911346713', '张治敏', '13911346713', null, '116.615988', '39.925287', '116.615988', '116.615988', '');
INSERT INTO `t_test1` VALUES ('923', '北京泽通源科贸有限公司', '91110111348460788Y', '北京市房山区阜盛东街60号院3号楼4层410', '北京市房山区阜盛东街60号院3号楼4层410', '赵玉敏', '13520133888', '赵玉敏', '13520133888', null, '116.190095', '39.733442', '116.190095', '116.190095', '');
INSERT INTO `t_test1` VALUES ('924', '北京融合清洗服务有限公司', '91110105MA01GRWQ59', '北京市朝阳区高碑店乡半壁店村惠河南街1089号1层k1096', '北京市朝阳区高碑店乡半壁店村惠河南街1089号1层k1096', '关艳梅', '13811937910', '关艳梅', '13811937910', null, '116.499578', '39.905204', '116.499578', '116.499578', '');
INSERT INTO `t_test1` VALUES ('925', '北京市金伟博清洁服务有限公司', '91110105680465652T', '北京市朝阳区崔各庄乡南皋村130号', '司辛庄55号', '陈伟', '13381186972', '陈伟', '13381186972', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('926', '北京盛世开元环保有限公司', '91110109MA01JHU68R', '北京市门头沟区双峪路35号院1号12层1215', '北京市门头沟区双峪路35号院1号12层1215', '徐云', '13466710960', '施升武', '13124796126', null, '116.11338', '39.935433', '116.11338', '116.11338', '');
INSERT INTO `t_test1` VALUES ('927', '北京嘉恒汇宝科技有限公司', '91110111592328738X', '北京市房山区长阳镇嘉州水郡225号9层1-936', '北京市房山区长阳镇嘉州水郡225号9层1-936', '贾恒茂', '17610603273', '郑建锋', '13520906303', null, '116.168908', '39.7715', '116.168908', '116.168908', '');
INSERT INTO `t_test1` VALUES ('928', '北京双虹电气有限公司', '911101027655408269', '经济技术开发区文化园西路8号院21号楼10层1103', '经济技术开发区文化园西路8号院21号楼10层1103', '孙翔', '13911097707', '戴陈君', '13552015207', null, '116.11338', '39.935433', '116.11338', '116.11338', '');
INSERT INTO `t_test1` VALUES ('929', '北京久恒荣发环保科技有限公司', '91110106085495476F', '北京市大兴区金星路12号院2号楼2层2077室', '北京市大兴区金星路12号院2号楼2层2077室', '张小玲', '13716719585', '胡风雷', '13717646691', null, '116.350068', '39.762312', '116.350068', '116.350068', '');
INSERT INTO `t_test1` VALUES ('930', '北京安氧特科技有限公司', '91110108589085640G', '北京市海淀区永丰产业基地永捷北路3号B座2层201室', '北京市海淀区永丰产业基地永捷北路3号B座2层201室', '束克庆', '13901385099', '李霞', '13811936125', null, '116.243081', '40.082568', '116.243081', '116.243081', '');
INSERT INTO `t_test1` VALUES ('931', '北京嘉乐清洁服务有限公司', '91110112MA01JN6E76', '怡乐中路303号院1号楼-B104', '怡乐中路303号院1号楼-B104', '王振华', '18143941339', '王现伟', '13673944279', null, '116.635014', '39.879314', '116.635014', '116.635014', '');
INSERT INTO `t_test1` VALUES ('932', '北京圣喻环保科技有限公司', '91110106MA019WGB6Q', '北京市丰台区新丰驾校南院2层205-208', '北京市丰台区游泳场北路9号院2号楼2单元301', '姚新群', '13910534134', '姚新群', '13910534134', null, '', '', '116.291489', '116.291489', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('933', '北京市京久龙消防科技有限公司', '911101057802028339', '北京市朝阳区博大路3号院9号楼222号', '北京市朝阳区博大路3号院9号楼222号', '方文梅', '13701137952', '徐华飞', '13716213285', null, '116.473292', '39.836434', '116.473292', '116.473292', '');
INSERT INTO `t_test1` VALUES ('934', '京利堡集团有限公司', '91110102802935668B', '北京市西城区广义街5号广益大厦7层A707室', '北京市西城区广义街5号广益大厦7层A707室', '安书迎', '63361905', '李娇', '18601180790', null, '116.355712', '39.890735', '116.355712', '116.355712', '');
INSERT INTO `t_test1` VALUES ('935', '北京京达美洁物业管理有限公司', 'MA0023GWX8', '顺义区北务镇政府街9号H-3', '顺义区北务镇政府街9号H-3', '朱威风', '13521233281', '朱威风', '13521233281', null, '116.829432', '40.066328', '116.829432', '116.829432', '');
INSERT INTO `t_test1` VALUES ('936', '北京优奕建筑工程有限公司', '91110304MA01HRHW4F', '北京市房山区燕山岗北路26号87号一层西侧1015', '北京市朝阳区德元九和大厦1002', '郝书涛', '13911968871', '郝书涛', '13911968871', null, '115.964179', '39.750061', '116.462612', '116.462612', '');
INSERT INTO `t_test1` VALUES ('937', '北京亿维智慧科技有限公司', '91110101589111028F', '左安门内大街19号龙潭湖体育产业园1-108室', '左安门内大街19号龙潭湖体育产业园1-216室', '刘杰', '13911216006', '李勇', '13901157918', null, '116.437919', '39.87615', '116.437919', '116.437919', '');
INSERT INTO `t_test1` VALUES ('938', '北京杰厨酒店设备有限公司分公司', '911101010741274937', '东花市南里四区2号楼2单元121', '东花市南里四区2号楼2单元121', '刘杰', '13911216006', '游伟志', '13910888459', null, '116.435174', '39.894826', '116.435174', '116.435174', '');
INSERT INTO `t_test1` VALUES ('939', '北京立华环保科技有限公司', '911101060828562662', '北京市丰台区草桥欣园一区五号楼底商三层高德优品快捷连锁酒店A306室', '北京市丰台区草桥欣园一区五号楼底商三层高德优品快捷连锁酒店A306室', '刘永宽', '15811023346', '刘永宽', '15811023346', null, '116.358535', '39.84645', '116.358535', '116.358535', '');
INSERT INTO `t_test1` VALUES ('940', '北京隆世康科贸有限公司', '91110105096447711B', '管庄乡1号1幢2层2075号', '管庄乡1号1幢2层2075号', '焦乾龙', '15810660078', '焦乾龙', '15810660078', null, '116.595715', '39.909706', '116.595715', '116.595715', '');
INSERT INTO `t_test1` VALUES ('941', '北京诚同消防科技有限公司', ' 91110106MA00BRTUON', ' 北京市房山区燕山岗北路2号E座配楼二层2059 ', '北京市丰台区石榴园北里42号楼四层三单元407 ', '李亚丽 ', '13718193326 ', '郜玥', '13693221622', null, '115.970304', '39.752569', '116.419804', '116.419804', '');
INSERT INTO `t_test1` VALUES ('942', '北京市燕山工业燃气设备有限公司', '91110114802654233Y', '北京市昌平区科技园区中兴路10号', '安外外馆东后街35号', '陈力生', '13801332701', '孙燕', '13717926727', null, '116.234185', '40.19456', '116.405438', '116.405438', '');
INSERT INTO `t_test1` VALUES ('943', '北京美意美境物业管理服务有限公司', '91110106MA00C6NX50', '北京市丰台区东铁营苇子坑109号2幢223室', '北京市海淀区八里庄街道八宝庄2号楼4门01地下室', '卫峰兵', '13901299065', '杨明刚', '13001068625', null, '116.434426', '39.848026', '116.295116', '116.295116', '');
INSERT INTO `t_test1` VALUES ('944', '北京约洗吧清洁服务有限公司', '911101053271709095 ', '北京经济技术开发区科创五街38号院3号楼1108 ', '北京市大兴京珠盛世科技园2幢307', '石国安', '13391985818', '石国安', '13391985818', null, '116.534344', '39.801264', '116.501535', '116.501535', '');
INSERT INTO `t_test1` VALUES ('945', '北京海淀晶晶科技有限公司', '9110108101951438G', '学院路20号院北教楼三层307号', '学院路20号院北教楼三层307号', '聂群', '010-82475403', '彭中文', '13911541057', null, '116.361152', '39.995434', '116.361152', '116.361152', '');
INSERT INTO `t_test1` VALUES ('946', '北京中泽万通能源管理有限公司', '91110113MA002FX5X1', '后沙峪镇安富街8号院1号楼101-A15', '后沙峪镇安富街8号院1号楼101-A15', '张晓平', '13601286080', '杨文娟', '13810445030', null, '116.55508', '40.112105', '116.55508', '116.55508', '');
INSERT INTO `t_test1` VALUES ('947', '北京晋鸿运环保科技有限公司', '91110106MA004FG444', '丰台镇游泳场北路9号院71幢6层611室', '丰台区北大地四里18号楼一单元102室', '陈新户', '18801440638', '陈新户', '18801440638', null, '116.292512', '39.855439', '116.283329', '116.283329', '');
INSERT INTO `t_test1` VALUES ('948', '北京首津润通科技有限公司', '91110107082844089A', '北京市石景山区模式口村西口102号2号楼1层125房间', '北京市石景山区模式口村西口102号2号楼1层125房间', '闫洪松', '13671034387', '付金辉', '18311387371', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('949', '北京北燃环能科技发展有限公司', '91110105MA018WDJ7U', '北京市密云区经济开发区兴盛南路8号开发区办公楼501室-2015（经济开发区集中办公区）', '北京市朝阳区安外外馆东后街35号', '车立新', '\\N', '孙燕', '13717926727', null, '116.817438', '40.35304', '116.405438', '116.405438', '');
INSERT INTO `t_test1` VALUES ('950', '汇欣时代（北京）清洁服务有限公司', '911101065513861575', '北京市丰台区成寿寺路5号楼16层1607', '北京市丰台区成寿寺路鑫源国际5号楼302室', '朱明彩', '13439413114', '王婷', '15205210440', null, '116.444359', '39.85741', '116.444359', '116.444359', '');
INSERT INTO `t_test1` VALUES ('951', '北京开拓明光消防设备有限公司', '9111010673645745XE', '北京市丰台区万芳园二区3号楼2层201-125号', '北京市朝阳区十八里店南桥', '席宝水', '13520482851', '席宝水', '13520482851', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('952', '北京事易达清洗保洁服务有限公司', '911101025808232139', '北京市房山区城关街道顾八路1区1号-Q132', '北京市房山区城关街道顾八路1区1号-Q132', '高义满', '13910772803', '高义满', '13910772803', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('953', '北京丽实杞生物科技有限公司', '91110111MA01J1XX4Q', '北京市房山区文水家园1号1层1-23-6', '北京市房山区文水家园1号1层1-23-6', '贾纪测', '18810069244', '贾纪测', '18810069244', null, '116.138014', '39.745099', '116.138014', '116.138014', '');
INSERT INTO `t_test1` VALUES ('954', '北京八方速达保洁服务有限公司', '9111010659389722XC', '北京市通州区工业开发区光华路15号3层523', '北京市通州区工业开发区光华路15号3层523', '秦先文', '13161147700', '秦经理', '18611196988', null, '116.721312', '39.856253', '116.721312', '116.721312', '');
INSERT INTO `t_test1` VALUES ('955', '北京八方快洁清洗保洁有限公司', '91110105569479298p', '北京市朝阳区管庄西里65号楼601室', '北京市朝阳区管庄西里65号楼601室', '李凤林', '18600887948', '田必波', '13681479648', null, '116.588607', '39.913133', '116.588607', '116.588607', '');
INSERT INTO `t_test1` VALUES ('956', '北京华谊诚顺机电设备有限公司', '91110115MA01DH806G', '庞各庄镇瓜乡路10号3号楼一层135室', '庞各庄镇瓜乡路10号3号楼一层135室', '李穆', '13911000581', '李穆', '13911000581', null, '116.312105', '39.620547', '116.312105', '116.312105', '');
INSERT INTO `t_test1` VALUES ('957', '北京万强安全技术有限公司', '91110115348295794K', '金苑路文化都汇3号楼802 ', '金苑路文化都汇3号楼802 ', '李景克', '13701003556', '郜洁', '13811715389', null, '116.356936', '39.75994', '116.356936', '116.356936', '');
INSERT INTO `t_test1` VALUES ('958', '北京兴业通达清洁服务有限公司', '91110117MA01GKBE4C', '北京市平谷区山东庄镇府前路9号', '朝阳区新房路3号院4号楼5层609', '付艳华', '13011185858', '姜纪永', '13716167288', null, '117.15878', '40.188205', '116.560368', '116.560368', '');
INSERT INTO `t_test1` VALUES ('959', '北京天铖中盛清洁服务有限公司', '91110117344245183T', '北京市平谷区中关村科技园区平谷园兴谷B区1号—850', '北京市丰台区科学城星火路10号—132室', '郑文建', '13911730788', '邓永辉', '18611113069', null, '', '', '116.280588', '116.280588', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('960', '松达绿缘科技发展(北京)有限公司', '91110111MA01K03J11', '	北京市房山区良乡凯旋大街建设路18号-D7559 ', '	北京市房山区长阳镇朱岗子村睦宁小家公寓', '崔德柱', '13722828915', '崔德柱', '13722828915', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('961', '北京中盛时达清洗保洁服务中心', '92110106L41072118W', '程庄北里7号楼1-102', '程庄北里7号楼1-102', '胡之河', '13264009276', '胡之河', '13264009276', null, '116.264761', '39.855243', '116.264761', '116.264761', '');
INSERT INTO `t_test1` VALUES ('962', '北京长信久安消防科技有限公司', '91110304MA01E1HG6L', '北京市房山区燕山岗北路2号A座二层2024', '北京市朝阳区大屯里金泉时代1单元519', '\\N', '\\N', '马会忍', '15510710575', null, '115.969301', '39.752932', '116.41567', '116.41567', '');
INSERT INTO `t_test1` VALUES ('963', '北京四季清科贸有限公司', '91110111565796894U', '北京市房山区城关街道顾八路1区1号-M85', '北京市昌平区霍营街道资金新干线四区7号楼1单元1002室', '岳辉', '15201382614', '卜云广', '15011589194', null, '', '', '116.382116', '116.382116', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('964', '北京蓝天恒佳科技有限公司', '911101066819726480', '北京市怀柔区九渡河镇东宫村352号', '北京市怀柔区九渡河镇东宫村352号', '戚良宾', '18612541431', '党淑新', '1381868844', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('965', '北京巨雅环保科技有限公司', '91110113MA01K59AXJ', '北京市顺义区金穗路2号院8号楼2层208', '北京市顺义区金穗路2号院8号楼2层208', '李长庆', '18661658676', '李长庆', '18661658676', null, '116.609006', '40.112676', '116.609092', '116.609092', '');
INSERT INTO `t_test1` VALUES ('966', '北京黑农优选餐饮服务有限公司', '92110113MA011P7J1C', '北京市顺义区李桥镇南半壁店小区路100号', '北京市顺义区李桥镇南半壁店小区路100号', '田林', '13552044888', '田林', '13552044888', null, '116.628525', '40.028064', '116.628525', '116.628525', '');
INSERT INTO `t_test1` VALUES ('967', '北京吉时雨环保科技有限公司', '91110114306312189U', '北京市昌平区昌平镇鼓楼南街4号楼206', '北京市昌平区昌平镇鼓楼南街4号楼206', '贾军磊', '13717871717', '贾军磊', '13717871717', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('968', '北京永盛宏达安全科技有限公司', '911101065858356357', '北京市丰台区晓月五里6号楼二层梧桐晓月宾馆8201', '索家坟小区12号楼102室', '牛丽娜', '13911273502', '张彬', '13718359071', null, '116.237592', '39.834654', '116.359543', '116.359543', '');
INSERT INTO `t_test1` VALUES ('969', '北京即刻到家科技服务有限公司', '911101173064859605', '北京市平谷区中关村科技园区平谷园物流基地5号-918号', '北京市平谷区平谷大街18-18号', '陈丽娜', '18518061912', '杨小同', '18518061916', null, '', '', '117.115873', '117.115873', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('970', '北京佳兴伟业建设工程有限公司', '91110116799008547K', '北京市怀柔区怀柔镇王化村898号', '北京市怀柔区怀柔镇王化村898号', '赵明', '13501242233', '高源泽', '13716564044', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('971', '北京久合保洁有限公司', '91110113MA01K5PU59', '北京市顺义区仁和镇军营街16号院10号楼912室', '教场口6号院1号楼6单元602', '张洋', '13801307817', '洪旭', '13146808666', null, '', '', '116.380556', '116.380556', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('972', '北京万里鲲鹏环保科技有限公司', '91110116MA00GE862P', '桥梓镇兴桥大街1号南楼203室', '桥梓镇兴桥大街1号南楼203室', '郑坤', '13552100782', '杨粉', '13521742840', null, '116.574154', '40.290516', '116.574154', '116.574154', '');
INSERT INTO `t_test1` VALUES ('973', '北京京鑫环境工程有限公司', '91110116MA01GA1N7M', '北京市怀柔区湖光小区5号楼2幢422室', '北京市怀柔区湖光小区5号楼2幢422室', '李广滢', '13366054767', '李广滢', '13366054767', null, '116.630252', '40.325655', '116.630252', '116.630252', '');
INSERT INTO `t_test1` VALUES ('974', '卫康（北京）生物科技有限公司', '911101050977163114', '北京市朝阳区南磨房路37号1701 - 1703室', '北京市朝阳区高碑店文化新大街1743号', '李翠影', '13263423899', '王海涛', '13146602516', null, '116.467161', '39.885065', '116.539069', '116.539069', '');
INSERT INTO `t_test1` VALUES ('975', '北京中泉诺雅科贸有限公司', '91110106694984074F', '北京市丰台区西四环南路56号望园大厦12层1212室', '北京市丰台区西四环南路56号望园大厦12层1212室', '孙训磊', '13718184977', '孙训磊', '13718184977', null, '116.284233', '39.867232', '116.284233', '116.284233', '');
INSERT INTO `t_test1` VALUES ('976', '北京中江伟业消防工程有限公司', '91110113MA00H1WL8Q', '北京市顺义区杨镇地区纵一路7-1-6号', '北京市顺义区杨镇地区纵一路7-1-6号', '吴建海', '13801009458', '王璐', '18310189958', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('977', '九江市浩川消防装备有限公司', '91360406568695300W', '江西省九江市经济开发区城西港区通港东路6号', '江西省九江市经济开发区城西港区通港东路6号', '宋敏', '\\N', '夏志敏', '18879265668', null, '115.90453', '29.711169', '115.90453', '115.90453', '');
INSERT INTO `t_test1` VALUES ('978', '北京翰拓教育科技有限公司', '91110114MA01B81P0Y', '昌平区东小口镇天通苑西苑二区17号楼2单元101二层210', '昌平区东小口镇立汤路188号院北方明珠大厦3号楼1103', '孙忱', '13731021766', '孙忱', '13731021766', null, '116.414994', '40.056124', '116.414994', '116.414994', '');
INSERT INTO `t_test1` VALUES ('979', '北京绍晖信达消防安全技术有限公司', '91110115750115720D', '北京市大兴区庞各庄镇福上村村委会东500米', '北京市丰台区大成路28号院3号楼6单元639室', '赵江峰', '13910981762', '杨振光', '13910981762', null, '', '', '116.256823', '116.256823', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('980', '北京美华洁邦环保科技有限公司', '9111010635835054X1', '北京市丰台区南四环西路128号院4号楼12层1515-1516（园区镕辉佳特企业集中办公区）', '北京市丰台区南四环西路128号院4号楼12层1515-1516（园区镕辉佳特企业集中办公区）', '李萍', '13261269678', '胡召信', '13241906515', null, '116.298639', '39.829504', '116.298639', '116.298639', '');
INSERT INTO `t_test1` VALUES ('981', '北京丽锦清洗服务有限公司', '91110114MA00G8PM5D', '北京市昌平区沙河镇北街家园五区2号楼6层4单元625', '北京市昌平区沙河镇北街家园五区2号楼6层4单元625', '熊天镜', '13651119203', '张雪', '13683615045', null, '116.270214', '40.166092', '116.270214', '116.270214', '');
INSERT INTO `t_test1` VALUES ('982', '北京豪盛恒大科技有限公司', '91110115790666770M', '北京市大兴区祥云路北四条208号1号楼202', '北京市大兴区青云店大东社区华联创意园4号楼', '许光春', '13901392395', '党小新', '13811868844', null, '116.490646', '39.688182', '116.537454', '116.537454', '');
INSERT INTO `t_test1` VALUES ('983', '北京浩可环保科技有限公司', '91110107MA00549L69', '北京石景山区实兴大街30号院3号楼2层A-1949房间', '北京石景山区实兴大街30号院3号楼2层A-1949房间', '马士勇', '13611194132', '马士勇', '13611194132', null, '116.193454', '39.939404', '116.193454', '116.193454', '');
INSERT INTO `t_test1` VALUES ('984', '行征和环保科技（北京）有限公司', '91110108674282147K', '北京市海淀区万泉庄路17号写字楼A座二层229室', '北京市海淀区万泉庄路17号写字楼A座二层229室', '李雍', '13241723993', '李雍', '13241723993', null, '116.298735', '39.969467', '116.298735', '116.298735', '');
INSERT INTO `t_test1` VALUES ('985', '北京新风绿洲环保科技有限公司', '91110105778605588C', '北京市顺义区临空经济核心区汇海南路1号院8号楼8层911', '北京市顺义区临空经济核心区汇海南路1号院8号楼8层911', '徐景峰', '13810609929', '李丕拴', '13651052878', null, '', '', '', '', '同146');
INSERT INTO `t_test1` VALUES ('986', '北京雅斯丽保洁服务有限公司', '91110106L379481722', '北京市丰台区岳各庄167号', '北京市丰台区岳各庄167号', '陈守银', '13910178131', '陈守银', '13910178131', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('987', '北京中消平程消防安全技术有限公司', '91110105MA01KMBR8D', '北京市朝阳区建国路15号院甲1号北岸1292三间房创意生活园区8号楼4层216', '北京市朝阳区建国路15号院甲1号北岸1292三间房创意生活园区8号楼4层216', '张磊', '13393534099', '张磊', '13393534099', null, '116.582199', '39.910757', '116.582199', '116.582199', '');
INSERT INTO `t_test1` VALUES ('988', '北京华海天地环保科技有限公司', '91110116MA009XKM3Y', '北京市怀柔区桥梓镇兴桥大街1号南楼203室', '北京市怀柔区桥梓镇兴桥大街1号南楼203室', '杨玄玄', '15210174486', '杨玄玄', '18600911741', null, '116.573816', '40.290222', '116.573816', '116.573816', '');
INSERT INTO `t_test1` VALUES ('989', '北京世纪洪源环保科技有限公司', '91110106327281692P', '北京市丰台区菜户营58号1102室', '北京市丰台区菜户营58号1102室', '王禹', '13521994632', '王禹', '13521994632', null, '116.347876', '39.871893', '116.347876', '116.347876', '');
INSERT INTO `t_test1` VALUES ('990', '北京前景新缘物业服务有限公司', '91110113563670526W', '北京市顺义区李桥镇北庄头村中东街5号', '北京市顺义区李桥镇北庄头村中东街5号', '高立军', '13501184259', '张帅', '13611136885', null, '116.756995', '40.032941', '116.756995', '116.756995', '');
INSERT INTO `t_test1` VALUES ('991', '北京优明佳保洁有限公司', '91110116MA01JK989B', '北京市怀柔区渤海镇怀沙路536号', '北京市朝阳区白鹿司路2号院2底商', '姜后平', '13212302222', '姜后平', '13212302222', null, '116.555067', '39.874296', '116.555067', '116.555067', '');
INSERT INTO `t_test1` VALUES ('992', '北京爱鑫清洁有限公司', '91110109MA01HJFJ32', '北京市门头沟区双峪路6号6幢113', '北京市门头沟区双峪路6号6幢113', '魏峰', '18911886838', '魏峰', '18811546063', null, '116.109152', '39.935437', '116.109152', '116.109152', '');
INSERT INTO `t_test1` VALUES ('993', '北京美怡家环保科技有限公司', '91110116MA0199YY62', '北京市怀柔区桥梓镇兴桥大街1号南楼203室', '北京市怀柔区桥梓镇兴桥大街1号南楼203室', '王新武', '15010862427', '谭朝双', '13911464849', null, '116.573816', '40.290222', '116.573816', '116.573816', '');
INSERT INTO `t_test1` VALUES ('994', '北京宇通远大科技有限责任公司', '91110113MA01KNPA03', '北京市顺义区牛栏山镇府前街9号-159', '北京市顺义区牛栏山镇府前街9号-159', '周肖逸', '13011133833', '周肖逸', '13011133833', null, '116.654896', '40.210249', '116.654896', '116.654896', '');
INSERT INTO `t_test1` VALUES ('995', '北京星聚国际企业管理有限公司', '91110112MA0050LM8R', '北京市通州区梨园镇刘老公庄东侧（北京英特塑料机械总厂）81幢8037号', '北京市通州区梨园镇刘老公庄东侧（北京英特塑料机械总厂）81幢8037号', '张琪明', '15699916806', '张琪明', '15699916806', null, '116.651349', '39.88383', '116.651349', '116.651349', '');
INSERT INTO `t_test1` VALUES ('996', '北京宇龙建筑工程有限公司', '911101080854834853', '北京市昌平区东小口镇天通中苑二区40号楼12层1208内101室', '北京市昌平区东小口镇天通中苑二区40号楼12层1208内101室', '程青', '13910987613', '程青', '13910987613', null, '116.415969', '40.069642', '116.415969', '116.415969', '');
INSERT INTO `t_test1` VALUES ('997', '北京恒辉东方环保科技有限公司', '91110105693233842Y', '顺义区龙湾屯镇府前街13号北2号楼140', '顺义区龙湾屯镇府前街13号北2号楼140', '陈莉', '13439741237', '陈莉', '13439741237', null, '116.857644', '40.232381', '116.857644', '116.857644', '');
INSERT INTO `t_test1` VALUES ('998', '东方神韵中坤环境服务（北京）有限公司', '9111022809919289XW', '北京市密云区溪翁庄镇七孔桥西', '北京市密云区溪翁庄镇七孔桥西', '刘永国', '69015195', '曾宪利', '69015195', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('999', '北京豪顺达不锈钢厨具制造有限公司', '9111010875014947XB', '北京市海定区清河安宁庄东路18号2号办公楼2155室', '北京市顺义区高丽营镇西王路村中路9号', '郑国春', '13901232687', '陈效芸', '18810591629', null, '116.333018', '40.041343', '', '', '村');
INSERT INTO `t_test1` VALUES ('1000', '华夏竣诚（北京）智能建筑工程有限公司', '9111010877548117XA', '北京市海淀区瀚河园113号-1层01', '北京市西城区广安门内广益大厦B508', '孙巍', '13901185359', '宋荃', '13811626347', null, '116.234372', '39.975844', '116.3553', '116.3553', '');
INSERT INTO `t_test1` VALUES ('1001', '北京伟达嘉业保洁服务有限公司', '911101083064732303', '北京市海淀区信息路甲28号B座（二层）02C室-441号', '北京市海淀区信息路甲28号B座（二层）02C室-441号', '孙如伟', '13521599904', '孙如伟', '13521599904', null, '116.311919', '40.034977', '116.311919', '116.311919', '');
INSERT INTO `t_test1` VALUES ('1002', '北京丰河佳业保洁服务有限公司', '91110108306473265M', '北京市海淀区信息路甲28号B座（二层）02C室', '北京市海淀区马连洼北路151号药用植物所院内', '夏丰收', '13521234603', '夏彪', '15010439564', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('1003', '北京华淼环保工程有限公司', '92110113L264150718', '北京市顺义区牛栏山镇张家庄村南边路13号', '北京市顺义区牛栏山镇张家庄村南边路13号', '汪亚硕', '13910803497', '汪亚硕', '13910803497', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('1004', '北京华夏裕德建筑工程有限公司', '91110116MA003Q6R3N', '怀柔区怀北镇怀北路308号', '魏善庄镇伊庄村', '张书红', '13263446956', '王伟德', '17718425019', null, '116.688223', '40.389386', '', '', '村');
INSERT INTO `t_test1` VALUES ('1005', '北京市春益通保洁服务有限责任公司', '91110112801744165A', '北京市通州区宋庄镇内军庄村355号', '北京市通州区宋庄镇内军庄村355号', '张士春', '13901030738', '任俊武', '13693573821', null, '116.698759', '40.006357', '116.698759', '116.698759', '');
INSERT INTO `t_test1` VALUES ('1006', '北京睿图科技有限公司', '91110117327277458C', '北京市朝阳区化工路59号院4号楼5层', '北京市朝阳区化工路59号院4号楼5层', '\\N', '\\N', '徐宁涛', '18600051885', null, '116.529579', '39.850959', '116.529579', '116.529579', '');
INSERT INTO `t_test1` VALUES ('1007', '北京玉龙易阳科技有限公司', '911101173066397126', '北京市平谷区平谷镇园田小区南路88号院', '北京市朝阳区十八里店乡西直河村276号', '许玉龙', '17631141339', '许玉龙', '17631141339', null, '117.123256', '40.133742', '', '', '村');
INSERT INTO `t_test1` VALUES ('1008', '北京丽景仁亮环保科技有限公司', '91110105MA01CGMM7L', '北京市朝阳区红庙北里4号楼1层1-4', '北京市朝阳区红庙北里4号楼1层1-4', '张景仁', '13840011288', '庞微', '13701234847', null, '116.481833', '39.921053', '116.481833', '116.481833', '');
INSERT INTO `t_test1` VALUES ('1009', '北京正彦环绿环保科技有限公司', '91110107MA00HDEB4L', '北京市石景山区实兴大街30号院3号楼2层A-0131房间', '北京市丰台区西四环南路辅路101号创新大厦6033', '王诤', '13910925161', '王诤', '13910925161', null, '116.193454', '39.939404', '116.285669', '116.285669', '');
INSERT INTO `t_test1` VALUES ('1010', '北京厨宝商用厨具有限公司', '91110114306324454G', '北京市昌平区城北街道西环路32-4一层', '北京市昌平区城北街道西环路32-4一层', '杜坤', '13301287676', '杜爱云', '18600848750', null, '116.229773', '40.223751', '116.229773', '116.229773', '');
INSERT INTO `t_test1` VALUES ('1011', '北京东方勤达保洁服务有限公司', '91110101344329292J', '小黄庄一区8-10号', '化工路官悦欣园22号楼', '郝士军', '13381215135', '贾青枝', '18201505815', null, '116.408732', '39.962142', '116.49985', '116.49985', '');
INSERT INTO `t_test1` VALUES ('1012', '北京京华屈佳清洁服务有限公司', '91110105573160132M', '北京市怀柔区桥梓镇平义分村532号', '北京市怀柔区桥梓镇平义分村532号', '彭桂华', '13693261980', '屈兴红', '13910941154', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('1013', '北京创森泓润环保科技有限公司', '91110115MA00893UX4', '北京市大兴区华佗路9号院3号楼4层437', '北京市大兴区黄村富强路4号', '许东辉', '13161558000', '许东辉', '13161558000', null, '116.319574', '39.675105', '116.342155', '116.342155', '');
INSERT INTO `t_test1` VALUES ('1014', '北京富甲通达科技发展有限公司', '91110115MA01HBW985', '天华街9号院14号楼10层1009', '天华街9号院14号楼10层1009', '潘海英', '18210318711', '潘海英', '18210318711', null, '116.313644', '39.684862', '116.313644', '116.313644', '');
INSERT INTO `t_test1` VALUES ('1015', '北京大润大富科技发展有限公司', '91110115MA01KMM66U', '北京市大兴区黄村镇海子角小区南侧', '（黄徐路48号）1幢1层B56室', '徐玉才', '13240333203', '徐玉才', '13240333203', null, '', '', '116.346829', '116.346829', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('1016', '北京洁杰保洁有限公司', '91110116MA018GER5R', '北京市怀柔区渤海镇怀沙路536号', '北京市怀柔区渤海镇怀沙路536号', '耿春海', '13911850524', '耿春海', '13911850524', null, '116.612056', '40.3465', '116.612056', '116.612056', '');
INSERT INTO `t_test1` VALUES ('1017', '北京乐晨环保科技有限公司', '91110105MA00FN95X4', '北京市朝阳区东三环南路19号院1号楼-2至15层101内四层A452号', '北京市朝阳区东三环南路19号院1号楼-2至15层101内四层A452号', '许祥强', '13121516396', '许祥强', '13121516396', null, '116.460917', '39.86847', '116.460917', '116.460917', '');
INSERT INTO `t_test1` VALUES ('1018', '北京乐创洁源家政服务有限公司', '91110112MA01J0PR1G', '北京市通州区新华西街58号院2号楼23层2314', '北京市通州区新华西街58号院2号楼23层2314', '孙健', '15133913399', '孙健', '15133913399', null, '116.642084', '39.905523', '116.642084', '116.642084', '');
INSERT INTO `t_test1` VALUES ('1019', '北京扬帆洁美保洁服务有限公司', '91110106318129306N', '北京市丰台区马家堡西路36号院6号楼4层509 ', '北京市丰台区马家堡西路36号院6号楼4层509 ', '韩军', '13521778962', '韩军', '13521778962', null, '116.372153', '39.836292', '116.372153', '116.372153', '');
INSERT INTO `t_test1` VALUES ('1020', '北京贺宇兴程科技发展有限公司', '91110106MA01KTQ875', '北京市丰台区黄土岗高场村2号2-A013室', '北京市朝阳区黑庄户乡大鲁店二队74号4号', '方华程', '18911983356', '方华程', '18911983356', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('1021', '北京岳丰莹利厨房设备有限责任公司', '91110106L05374960G', '北京市丰台区小井村236号', '北京市丰台区小井村236号', '郭玉利', '13910831673', '宋永梅', '18612895328', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('1022', '北京华商远大电力建设有限公司', '911101027355940142', '前门西大街41号14号楼101室', '科兴路3号', '彭勇', '63125325', '陈晓虹', '15801567953', null, '116.390528', '39.900628', '116.294881', '116.294881', '');
INSERT INTO `t_test1` VALUES ('1023', '金舟消防工程（北京）股份有限公司', '91110105101759286D', '北京市朝阳区八里庄西里61号楼22层2207、2208、2209', '北京经济技术开发区鸿坤云时代B3座12层', '田桂兰', '85861500', '杨铮', '15011351278', null, '116.49124', '39.912373', '116.575396', '116.575396', '');
INSERT INTO `t_test1` VALUES ('1024', '北京润晟科技有限公司', '91110115MA01L0BN3H', '北京市大兴区西红门镇西红门路12号22幢2号平房', '北京市大兴区西红门镇西红门路12号22幢2号平房', '宋欢', '17601605786', '宋欢', '17601605786', null, '', '', '', '', '无法准确定位');
INSERT INTO `t_test1` VALUES ('1025', '北京东方华谊清洗服务有限公司', '91110114785517631B', '北京市昌平区沙河镇南一村115号', '北京市昌平区沙河镇南一村115号', '曲桂彬', '13910519692', '马艳华', '13581529249', null, '', '', '', '', '村');
INSERT INTO `t_test1` VALUES ('1026', '北京玉鼎磊诺气体科技有限公司', '91110229051362693K', '北京市延庆区八达岭经济技术开发区康西路1426号（中关村延庆园）', '北京市延庆区八达岭经济技术开发区康西路1426号（中关村延庆园）', '侯玉柱', '13601204361', '赵兴', '18800154557', null, '115.932832', '40.363185', '115.932832', '115.932832', '');
INSERT INTO `t_test1` VALUES ('1027', '北京兰玫环保科技有限责任公司', '911101015858168642', '北京经济技术开发区经海三路109号院26号楼2层201', '怡海花园富润园7号1610室', '李岩海', '13910994688', '李岩海', '13910994688', null, '116.554035', '39.782837', '116.301382', '116.301382', '');
INSERT INTO `t_test1` VALUES ('1028', '北京富仕杰商用设备有限公司', '91110112687604125k', '北京市通州区宋庄镇草寺村委会南600米', '北京市通州区九棵树西路90号英特商务园A座2层', '简宏', '13501262258', '张经理', '13521658445', null, '', '', '116.651207', '116.651207', '注册地址无法查询准确定位');
INSERT INTO `t_test1` VALUES ('1029', '北京中宇启航建设工程有限公司', '91110113MA01B68Y3A', '南法信镇府前街56号院1号楼7层2-711', '南法信镇府前街56号院1号楼7层2-711', '张永成', '13601268887', '张静静', '17310552899', null, '116.613573', '40.120319', '116.613573', '116.613573', '');
INSERT INTO `t_test1` VALUES ('1030', '北京创科天脉清洁服务有限公司', '91110109MA01L6T62H', '北京市门头沟区大台商贸公司玉皇庙门市部2幢1至2层DT0310', '北京市门头沟区大台商贸公司玉皇庙门市部2幢1至2层DT0310', '李志民', '13621321981', '李志民', '13621321981', null, '', '', '', '', '查无地址');
INSERT INTO `t_test1` VALUES ('1031', '北京拓思教育咨询有限公司', '91110105MA002R7Y46', '北京市朝阳区天朗园c座3层03商业(丰收孵化器984号) ', '北京市朝阳区天朗园c座3层03商业(丰收孵化器984号) ', '黄东', ' 13500339080 ', '黄东', '13500339080 ', null, '116.414097', '40.032276', '116.414097', '116.414097', '');
INSERT INTO `t_test1` VALUES ('1032', '北京悦祥润达消防器材技术有限公司', '91110105085532718F', '柳芳南里甲5号1号楼1至5层1-1三层3164号', '柳芳南里甲5号1号楼1至5层1-1三层3164号', '陈利利', '18801339626', '高杰', '13552010172', null, '116.438571', '39.952792', '116.438571', '116.438571', '');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(256) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(256) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `IS_TAB` char(1) DEFAULT NULL COMMENT '是否开启tab，0关闭 1开启',
  `THEME` varchar(10) DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(512) DEFAULT NULL COMMENT '描述',
  `POLITICAL_AFFIL` varchar(255) DEFAULT NULL,
  `EX_SERVICEMAN` varchar(255) DEFAULT NULL,
  `COMPANY` varchar(255) DEFAULT NULL,
  `NATION` varchar(255) DEFAULT NULL,
  `NATIVE_PLACE` varchar(255) DEFAULT NULL,
  `HEIGHT` varchar(255) DEFAULT NULL,
  `EDUCATION` varchar(255) DEFAULT NULL,
  `TRUENAME` varchar(255) DEFAULT NULL,
  `IS_DUTY` varchar(255) DEFAULT NULL COMMENT '1：上岗  0：离岗',
  `LON` varchar(255) DEFAULT NULL,
  `LAT` varchar(255) DEFAULT NULL,
  `EXT1` varchar(255) DEFAULT NULL COMMENT '1：超级管理员 2：站点负责人 3：普通用户',
  `EXT2` varchar(255) DEFAULT NULL COMMENT '员工编号',
  `EXT3` varchar(255) DEFAULT NULL COMMENT '职务',
  `EXT4` varchar(255) DEFAULT NULL,
  `EXT5` varchar(255) DEFAULT NULL,
  `EXT6` varchar(255) DEFAULT NULL,
  `EXT7` varchar(255) DEFAULT NULL,
  `EXT8` varchar(255) DEFAULT NULL,
  `EXT9` varchar(255) DEFAULT NULL,
  `EXT10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('8', 'admin', '856aea89ad509f163284abb75579dcfc', '1', 'ztman25808@ztman.cn', 'admin', '1', '2020-03-04 14:37:37', '2020-03-10 13:48:26', '2020-03-25 16:50:50', '0', '1', 'black', '1d22f3e41d284f50b2c8fc32e0788698.jpeg', '注册用户', '无', '是', '', '', '', '', '', '管理员', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('11', '13911286333', '9523dc71f23909a464ac70d7973dfdfc', '1', '', '13911286333', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:25:06', '0', '1', 'black', 'default.jpg', '注册用户', '党员', '否', '中泰民安保安服务有限公司', '', '', '', '', '赵性仓', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('12', '13810547219', 'a86129a1d2b0773175dd07ce0f418990', '1', '', '13810547219', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '党员', '否', '中泰民安保安服务有限公司', '', '', '', '', '孟令升', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('13', '13811850007', '41574f7364e95d17aae8fe0d72f262ec', '1', '', '13811850007', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '党员', '是', '中泰民安保安服务有限公司', '', '', '', '', '于洪浩', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('14', '18501930534', 'a15b4144d505ab02abb8b22ed5854c32', '2', '', '18501930534', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 16:46:56', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '四川', '', '', '秦建', '0', '116.34159', '39.72684', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('15', '13403423374', '48e3b851cff721378cbd8e94d66ba26a', '2', '', '13403423374', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-17 10:10:32', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '山西', '175', '初中', '邓红建', '1', '116.34159', '39.72684', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('16', '13718689783', '84ce438c662f7d391cc84a3e8c213ae7', '2', '', '13718689783', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '山西', '167', '高中', '苗存志', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('17', '17600179744', '75a974c7c0da76907153316a5c0f86a9', '2', '', '17600179744', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '辽宁', '178', '初中', '陈元博', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('18', '15652019933', '59f5b74405896b84709019c87d466ef9', '2', '', '15652019933', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '哈尔滨', '171', '高中', '段志远', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('19', '18610132262', 'ca7b1fe57d77e331b6b5633f8f39998f', '2', '', '18610132262', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '山东', '175', '初中', '陈胜利', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('20', '13520432758', '83cd488534e85b4e963cbd08f3df04ff', '2', '', '13520432758', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '回', '北京', '175', '初中', '刘全喜', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('21', '17642105520', '3dbe4eb3d80a60e0a28ac66c2fba4f24', '2', '', '17642105520', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '辽宁', '176', '初中', '郭涛', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('22', '17600057907', '1f564fe284e3b736d8f8642287e9316b', '2', '', '17600057907', '1', '2020-03-05 09:21:34', '2020-03-25 10:25:19', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '河北', '167', '高中', '甄东升', '0', '0', '0', null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('23', '15600028321', 'd5ab056dc159d09e4a25f483435efb76', '2', '', '15600028321', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '山西', '170', '高中', '卢涛', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('24', '18811141043', '2f6c20398a40b9084e030187cb1a6b17', '3', '', '18811141043', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '河北', '170', '高中', '孙  杭', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('25', '15311535558', '9b26b6360080a2430377ef0ad4e63c87', '3', '', '15311535558', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '山东', '178', '初中', '王兴', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('26', '13521394187', '8d2fd4439e910dea542371301944ee4b', '3', '', '13521394187', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '北京', '174', '初中', '李正鹏', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('27', '13260140978', '7e01c4bf4e1417f542fbf4749276dba2', '3', '', '13260140978', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '河北', '171', '高中', '薛立云', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('28', '15120022789', '099eafadc7ed13d05abe9d7b260510dc', '3', '', '15120022789', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '黑龙江', '178', '初中', '赵晓东', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('29', '15184607186', '8ead18060faa2877129ca018c6a1ec84', '3', '', '15184607186', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '黑龙江', '170', '初中', '崔军', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('30', '15227327157', '3cb989849990a86b27fa3f0f1057dd5c', '3', '', '15227327157', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '河北', '182', '初中', '赵立勇', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('31', '17079095987', '72b277c0ed585c23695a7f5aa66fc66b', '3', '', '17079095987', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '黑龙江', '178', '初中', '白云轩', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('32', '15011171068', 'fde4ab72eeabcd60ffd1c637b0f1b8d5', '3', '', '15011171068', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '山东', '170', '初中', '吕晓光', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('33', '15904692908', '6149345f2642fb1f2476ea876ffdc794', '3', '', '15904692908', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '黑龙江', '180', '初中', '白云发', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('34', '13963799938', '144d9e89415528083579b69a714e1a80', '4', '', '13963799938', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '山东', '187', '初中', '吕来保', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('35', '15810535907', 'aa9fe8f68c81143e7a74a0d29d071504', '4', '', '15810535907', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '北京', '165', '大学', '刘宇', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('36', '17710727552', '55bfa03520eb786bc04e21daaba7a1ca', '4', '', '17710727552', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '甘肃', '175', '初中', '高银峰', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('37', '13521475999', '2487b5e22cb9aa2da6f16dc03b91296c', '4', '', '13521475999', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '河北', '170', '初中', '陈昌喜', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('38', '13716779456', '320c86204ffa0b609b2de29c7df63be7', '4', '', '13716779456', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '吉林', '181', '初中', '刘宝财', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('39', '15110149929', '254c9655e2f1ee6c4cc9d6177ae63347', '4', '', '15110149929', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '甘肃', '173', '初中', '陈铁峰', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('40', '15510189444', '508cf3b50db3da88bf785c37678a5aa4', '4', '', '15510189444', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '黑龙江', '181', '中专', '腾卫加', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('41', '18910250829', '0530cbb2cbb896416ef7cefcc28cbaf7', '4', '', '18910250829', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '山东', '182', '大专', '卜令刚', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('42', '15588757778', '6c5e83cb92c781b230ac67de59d4b319', '4', '', '15588757778', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '山东', '178', '初中', '何强', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('43', '13520738894', '3d5c68da30df8976b640fa168a7151d2', '4', '', '13520738894', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '黑龙江', '178', '高中', '马建设', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('44', '17310066516', 'daa1a5788908afdb0ac0a281ab0d4664', '5', '', '17310066516', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '山东', '174', '高中', '候典庆', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('45', '15311760080', 'd3da1fe7624588e4d87b51aa21ed58dc', '5', '', '15311760080', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '辽宁', '187', '高中', '丁辉', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('46', '18646419380', 'c58f4d3c8895d312b699063fd0c8a151', '5', '', '18646419380', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '黑龙江 ', '173', '初中', '梁宏健', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('47', '15943286168', 'ea775226083ce09bd70268fe1ea2f967', '5', '', '15943286168', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '吉林 ', '180', '高中', '田 禾', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('48', '18801011165', 'a57d60fddcc890a54b701aeec52a3272', '5', '', '18801011165', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '黑龙江', '172', '初中', '杨宗生', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('49', '15965202113', '0af71a22d7b07a5e6b5446215ad9bab5', '5', '', '15965202113', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '山东', '170', '初中', '刘卫华', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('50', '13846695096', '6c1bdd3cbe18b6ef93562a312b69cfc9', '5', '', '13846695096', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '黑龙江 ', '175', '初中', '周维东', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('51', '13439775520', 'de48477f1032ebf04797bd9bd167623c', '5', '', '13439775520', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '黑龙江', '170', '初中', '张春', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('52', '13120329416', 'f45dab4433370a4942be931c185aabc5', '5', '', '13120329416', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '黑龙江 ', '170', '初中', '杨建波', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('53', '15509489047', '82b154fea8f255fbe8287fd952916d1c', '5', '', '15509489047', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '甘肃', '177', '初中', '李博', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('54', '18911654771', '707c8e4e76ead1949a1e39fb421dcf7d', '6', '', '18911654771', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '内蒙古', '178', '初中', '张宝林', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('55', '13126567678', '73703129206d704a008e20b9df542075', '6', '', '13126567678', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '黑龙江', '185', '初中', '吕天强', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('56', '15910474803', 'ffc6a6cfbbc1bc46d8313208bf8d13ed', '6', '', '15910474803', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '黑龙江', '165', '高中', '张伟', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('57', '15619499777', 'fbaf72f84f790a9abc16e57e3c56f7de', '6', '', '15619499777', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '黑龙江', '170', '初中', '郑子斌', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('58', '13366677714', '32137b88710c187d66218db80c581f93', '6', '', '13366677714', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '黑龙江', '170', '中专', '王志禹', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('59', '13346170353', 'dbdc16af1ff6523db6feaf0bcf881846', '6', '', '13346170353', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '浙江', '175', '高中', '章才配', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('60', '18513345596', '7a70d8ff2267b124b17eb06f88a03c64', '6', '', '18513345596', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '辽宁省 ', '178', '初中', '倪冰', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('61', '13846431103', '30e91dd79f14db05c0191cacc1297b9c', '6', '', '13846431103', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '黑龙江', '165', '初中', '张凤宝', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('62', '18001200567', 'ef2f6e28b4b42ddfe091986b6b3c3151', '6', '', '18001200567', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '山东', '170', '初中', '赵延政', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('63', '15840169851', '79dd597b35ca44f1ad68a97876edc7c5', '6', '', '15840169851', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '辽宁', '175', '高中', '张涛', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('64', '15010851672', '8685e8233ce40e9cdcc5816effbeb83f', '7', '', '15010851672', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '团员', '是', '中泰民安保安服务有限公司', '回', '北京', '183', '大专', '石博', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('65', '18642687206', 'c1b70615788ff3aab5b4be435807dee4', '7', '', '18642687206', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '吉林省 ', '170', '初中', '张立冬', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('66', '13522237042', 'cce4f50015655a492a09b1a75d3c4a0f', '7', '', '13522237042', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '团员', '否', '中泰民安保安服务有限公司', '汉', '山东', '175', '高中', '孙清江', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('67', '13790313774', '16f034520e9460ab8a3ff37ca02289df', '7', '', '13790313774', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '团员', '否', '中泰民安保安服务有限公司', '汉', '河南', '170', '28', '尚正全', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('68', '15210591519', 'f7c84503e32beaac56a57411514ce1ca', '7', '', '15210591519', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '河南', '170', '初中', '宁龙涛', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('69', '18511238366', '43231f742c38eaefca5501941c1e65e8', '7', '', '18511238366', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '黑龙江', '170', '初中', '阎金东', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('70', '18510466636', '20f5fd290297aa819d1f7f6d0c0cc6c4', '7', '', '18510466636', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '黑龙江', '160', '初中', '邹天文', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('71', '18724246164', '47dcc122c9adc34230c306945fca8722', '7', '', '18724246164', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '是', '中泰民安保安服务有限公司', '汉', '黑龙江', '175', '初中', '周俊才', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('72', '15112007727', '9a89fa40458a15feaeb2ad6879e9f5e3', '7', '', '15112007727', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '黑龙江', '170', '初中', '郭丰权', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('73', '18439440098', 'c10d36353ea1126b834f00a0c11c6e13', '7', '', '18439440098', '1', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '2020-03-05 09:21:34', '0', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '河南', '171', '高中', '商富涛', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('75', '18514255265', '52b11a2acbebe1a5fccf1644a758e01d', '12', null, '18514255265', '1', '2020-03-09 17:58:25', '2020-03-24 10:33:14', '2020-03-23 10:10:42', '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '李松融', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('76', '13684763653', 'a4e850d0955641b26f7a618bb5c08f53', '13', null, '13684763653', '1', '2020-03-17 10:25:58', '2020-03-24 10:54:12', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '王春杰', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('77', '15081201631', 'dc7ccb1a01595fe3334dcac9cb160f20', '13', '15081201631@163.com', '15081201631', '1', '2020-03-17 10:26:08', '2020-03-24 10:54:39', '2020-03-24 09:33:10', '2', '1', 'black', 'default.jpg', '注册用户', '群众', '否', '中泰民安保安服务有限公司', '汉', '河南', '171', '高中', '陈正荣', '0', '116.35400390625', '39.7711067199707', null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('78', '18701530462', '653f4e73a5f9f5b8cd07ba9cccce906a', '13', null, '18701530462', '1', '2020-03-17 10:26:17', '2020-03-24 10:55:13', null, '2', '1', 'black', 'default.jpg', '注册用户', '', null, null, '', '', '', '', '孔维平', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('79', '15801089430', 'da3525a0f4477d0feb461ddc74168621', '14', null, '15801089430', '1', '2020-03-17 10:26:26', '2020-03-24 10:55:35', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '于军', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('80', '13301367013', '322524508855a3f35d8156f7adc007d1', '15', null, '13301367013', '1', '2020-03-17 10:26:34', '2020-03-24 10:56:06', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '李敬峰', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('81', '15652567721', 'fa68f83abdf529db1111c98f25921092', '16', null, '15652567721', '1', '2020-03-17 10:26:42', '2020-03-24 10:56:29', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '徐冬立', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('82', '18301103546', 'e0ed0b380c577c54a4f015f48480239f', '17', null, '18301103546', '1', '2020-03-17 10:26:52', '2020-03-24 10:56:50', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '高大山', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('83', '15822367888', 'c9746da100d5c7654f38bf8683b3fd19', '18', null, '15822367888', '1', '2020-03-17 10:27:01', '2020-03-24 10:57:09', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '黄志强', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('84', '13753922787', '1fc87cb44e09c99354b7156538d2897d', '19', null, '13753922787', '1', '2020-03-17 10:27:08', '2020-03-24 10:57:25', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '卫俊侠', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('85', '13848567343', 'b0f4186146f8c1e086dc0da47dd960cd', '21', null, '13848567343', '1', '2020-03-17 10:27:47', '2020-03-24 10:58:44', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '李彦海', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('86', '15668518091', 'f671775245c9153e9f71328f0a81390c', '22', null, '15668518091', '1', '2020-03-17 10:27:58', '2020-03-24 10:59:00', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '徐德伟', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('87', '17621985784', 'c844307c233f0f2aab496baca49a49c6', '23', null, '17621985784', '1', '2020-03-17 10:28:07', '2020-03-24 10:59:19', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '宋红亮', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('88', '15001056027', 'e300486db53a80b474073281d5b03f2e', '24', null, '15001056027', '1', '2020-03-17 10:28:15', '2020-03-24 10:59:35', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '孙文周', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('89', '13716781770', 'c62aa899903cfffb529dffec07a707e9', '25', null, '13716781770', '1', '2020-03-17 10:28:23', '2020-03-24 10:59:52', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '董克宪', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('90', '13503741392', '1b9d2a536f9712c81cea7c6b0708304a', '26', null, '13503741392', '1', '2020-03-17 10:28:32', '2020-03-24 11:00:14', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '王宏亮', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('91', '13233486626', '0c6f3620a8cbc68000300164778461f7', '27', null, '13233486626', '1', '2020-03-17 10:28:41', '2020-03-24 13:53:11', null, '2', '1', 'black', 'default.jpg', '注册用户', null, null, null, '', '', '', '', '郭建红', '0', null, null, null, null, '', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('94', '18311085721', 'bc188a2369ec79b777de8cece06e0595', '1', '', '18311085721', '1', '2020-03-17 15:39:38', '2020-03-17 21:25:01', '2020-03-18 13:30:39', '0', '1', 'black', 'default.jpg', '4444', null, null, null, '汉族', '河南', '173', '大专', '姚海涛', null, null, null, '2', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('95', '18311085722', '483fe2d3580c7ae3ef96c3d5e98cc97c', '11', null, '18311085722', '1', '2020-03-18 09:57:24', '2020-03-18 14:59:45', null, '1', '1', 'black', 'default.jpg', '22222', null, null, null, '11', '11', '11', '11', '姚海涛', null, null, null, '1', null, '2', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1');
INSERT INTO `t_user_role` VALUES ('2', '2');
INSERT INTO `t_user_role` VALUES ('3', '77');
INSERT INTO `t_user_role` VALUES ('4', '78');
INSERT INTO `t_user_role` VALUES ('5', '79');
INSERT INTO `t_user_role` VALUES ('6', '80');
INSERT INTO `t_user_role` VALUES ('7', '78');
INSERT INTO `t_user_role` VALUES ('7', '79');
INSERT INTO `t_user_role` VALUES ('7', '80');
INSERT INTO `t_user_role` VALUES ('11', '81');
INSERT INTO `t_user_role` VALUES ('12', '82');
INSERT INTO `t_user_role` VALUES ('13', '83');
INSERT INTO `t_user_role` VALUES ('14', '84');
INSERT INTO `t_user_role` VALUES ('15', '85');
INSERT INTO `t_user_role` VALUES ('16', '85');
INSERT INTO `t_user_role` VALUES ('17', '85');
INSERT INTO `t_user_role` VALUES ('18', '85');
INSERT INTO `t_user_role` VALUES ('19', '85');
INSERT INTO `t_user_role` VALUES ('20', '85');
INSERT INTO `t_user_role` VALUES ('21', '85');
INSERT INTO `t_user_role` VALUES ('23', '85');
INSERT INTO `t_user_role` VALUES ('24', '84');
INSERT INTO `t_user_role` VALUES ('25', '85');
INSERT INTO `t_user_role` VALUES ('26', '85');
INSERT INTO `t_user_role` VALUES ('27', '85');
INSERT INTO `t_user_role` VALUES ('28', '85');
INSERT INTO `t_user_role` VALUES ('29', '85');
INSERT INTO `t_user_role` VALUES ('30', '85');
INSERT INTO `t_user_role` VALUES ('31', '85');
INSERT INTO `t_user_role` VALUES ('32', '85');
INSERT INTO `t_user_role` VALUES ('33', '85');
INSERT INTO `t_user_role` VALUES ('34', '84');
INSERT INTO `t_user_role` VALUES ('35', '85');
INSERT INTO `t_user_role` VALUES ('36', '85');
INSERT INTO `t_user_role` VALUES ('37', '85');
INSERT INTO `t_user_role` VALUES ('38', '85');
INSERT INTO `t_user_role` VALUES ('39', '85');
INSERT INTO `t_user_role` VALUES ('40', '85');
INSERT INTO `t_user_role` VALUES ('41', '85');
INSERT INTO `t_user_role` VALUES ('42', '85');
INSERT INTO `t_user_role` VALUES ('43', '85');
INSERT INTO `t_user_role` VALUES ('44', '84');
INSERT INTO `t_user_role` VALUES ('45', '85');
INSERT INTO `t_user_role` VALUES ('46', '85');
INSERT INTO `t_user_role` VALUES ('47', '85');
INSERT INTO `t_user_role` VALUES ('48', '85');
INSERT INTO `t_user_role` VALUES ('49', '85');
INSERT INTO `t_user_role` VALUES ('50', '85');
INSERT INTO `t_user_role` VALUES ('51', '85');
INSERT INTO `t_user_role` VALUES ('52', '85');
INSERT INTO `t_user_role` VALUES ('53', '85');
INSERT INTO `t_user_role` VALUES ('54', '84');
INSERT INTO `t_user_role` VALUES ('55', '85');
INSERT INTO `t_user_role` VALUES ('56', '85');
INSERT INTO `t_user_role` VALUES ('57', '85');
INSERT INTO `t_user_role` VALUES ('58', '85');
INSERT INTO `t_user_role` VALUES ('59', '85');
INSERT INTO `t_user_role` VALUES ('60', '85');
INSERT INTO `t_user_role` VALUES ('61', '85');
INSERT INTO `t_user_role` VALUES ('62', '85');
INSERT INTO `t_user_role` VALUES ('63', '85');
INSERT INTO `t_user_role` VALUES ('64', '84');
INSERT INTO `t_user_role` VALUES ('65', '85');
INSERT INTO `t_user_role` VALUES ('66', '85');
INSERT INTO `t_user_role` VALUES ('67', '85');
INSERT INTO `t_user_role` VALUES ('68', '85');
INSERT INTO `t_user_role` VALUES ('69', '85');
INSERT INTO `t_user_role` VALUES ('70', '85');
INSERT INTO `t_user_role` VALUES ('71', '85');
INSERT INTO `t_user_role` VALUES ('72', '85');
INSERT INTO `t_user_role` VALUES ('73', '85');
INSERT INTO `t_user_role` VALUES ('8', '1');
INSERT INTO `t_user_role` VALUES ('74', '2');
INSERT INTO `t_user_role` VALUES ('94', '86');
INSERT INTO `t_user_role` VALUES ('95', '84');
INSERT INTO `t_user_role` VALUES ('75', '84');
INSERT INTO `t_user_role` VALUES ('76', '85');
INSERT INTO `t_user_role` VALUES ('77', '85');
INSERT INTO `t_user_role` VALUES ('78', '85');
INSERT INTO `t_user_role` VALUES ('79', '85');
INSERT INTO `t_user_role` VALUES ('80', '85');
INSERT INTO `t_user_role` VALUES ('81', '85');
INSERT INTO `t_user_role` VALUES ('82', '85');
INSERT INTO `t_user_role` VALUES ('83', '85');
INSERT INTO `t_user_role` VALUES ('84', '85');
INSERT INTO `t_user_role` VALUES ('85', '85');
INSERT INTO `t_user_role` VALUES ('86', '85');
INSERT INTO `t_user_role` VALUES ('87', '85');
INSERT INTO `t_user_role` VALUES ('88', '85');
INSERT INTO `t_user_role` VALUES ('89', '85');
INSERT INTO `t_user_role` VALUES ('90', '85');
INSERT INTO `t_user_role` VALUES ('91', '85');
INSERT INTO `t_user_role` VALUES ('22', '85');
