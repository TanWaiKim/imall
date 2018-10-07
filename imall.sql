/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : imall

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-10-27 12:34:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `imall_ad`
-- ----------------------------
DROP TABLE IF EXISTS `imall_ad`;
CREATE TABLE `imall_ad` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '自增ID号',
  `ad_name` varchar(60) NOT NULL COMMENT '该条广告记录的广告名称',
  `ad_link` varchar(255) NOT NULL COMMENT '广告链接地址',
  `ad_code` text COMMENT '广告链接的表现,文字广告就是文字或图片和flash就是它们的地址',
  `link_man` varchar(60) DEFAULT NULL COMMENT '广告联系人',
  `link_phone` varchar(60) DEFAULT NULL COMMENT '广告联系人的电话',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imall_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `imall_cart`
-- ----------------------------
DROP TABLE IF EXISTS `imall_cart`;
CREATE TABLE `imall_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `checked` int(11) DEFAULT NULL COMMENT '是否选择,1=已勾选,0=未勾选',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imall_cart
-- ----------------------------
INSERT INTO `imall_cart` VALUES ('126', '21', '26', '1', '1', '2017-04-13 21:27:06', '2017-04-13 21:27:06');

-- ----------------------------
-- Table structure for `imall_category`
-- ----------------------------
DROP TABLE IF EXISTS `imall_category`;
CREATE TABLE `imall_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别Id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `name` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '类别状态1-正常,2-已废弃',
  `sort_order` int(4) DEFAULT NULL COMMENT '排序编号,同类展示顺序,数值相等则自然排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100053 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imall_category
-- ----------------------------
INSERT INTO `imall_category` VALUES ('100001', '0', '家用电器', '1', null, '2017-03-25 16:46:00', '2017-03-25 16:46:00');
INSERT INTO `imall_category` VALUES ('100002', '0', '数码3C', '1', null, '2017-03-25 16:46:21', '2017-03-25 16:46:21');
INSERT INTO `imall_category` VALUES ('100003', '0', '服装箱包', '1', null, '2017-03-25 16:49:53', '2017-03-25 16:49:53');
INSERT INTO `imall_category` VALUES ('100004', '0', '食品生鲜', '1', null, '2017-03-25 16:50:19', '2017-03-25 16:50:19');
INSERT INTO `imall_category` VALUES ('100005', '0', '酒水饮料', '1', null, '2017-03-25 16:50:29', '2017-03-25 16:50:29');
INSERT INTO `imall_category` VALUES ('100006', '100001', '冰箱', '1', null, '2017-03-25 16:52:15', '2017-03-25 16:52:15');
INSERT INTO `imall_category` VALUES ('100007', '100001', '电视', '1', null, '2017-03-25 16:52:26', '2017-03-25 16:52:26');
INSERT INTO `imall_category` VALUES ('100008', '100001', '洗衣机', '1', null, '2017-03-25 16:52:39', '2017-03-25 16:52:39');
INSERT INTO `imall_category` VALUES ('100009', '100001', '空调', '1', null, '2017-03-25 16:52:45', '2017-03-25 16:52:45');
INSERT INTO `imall_category` VALUES ('100010', '100001', '电热水器', '1', null, '2017-03-25 16:52:54', '2017-03-25 16:52:54');
INSERT INTO `imall_category` VALUES ('100011', '100002', '电脑', '1', null, '2017-03-25 16:53:18', '2017-03-25 16:53:18');
INSERT INTO `imall_category` VALUES ('100012', '100002', '手机', '1', null, '2017-03-25 16:53:27', '2017-03-25 16:53:27');
INSERT INTO `imall_category` VALUES ('100013', '100002', '平板电脑', '1', null, '2017-03-25 16:53:35', '2017-03-25 16:53:35');
INSERT INTO `imall_category` VALUES ('100014', '100002', '数码相机', '1', null, '2017-03-25 16:53:56', '2017-03-25 16:53:56');
INSERT INTO `imall_category` VALUES ('100015', '100002', '3C配件', '1', null, '2017-03-25 16:54:07', '2017-03-25 16:54:07');
INSERT INTO `imall_category` VALUES ('100016', '100003', '女装', '1', null, '2017-03-25 16:54:44', '2017-03-25 16:54:44');
INSERT INTO `imall_category` VALUES ('100017', '100003', '帽子', '1', null, '2017-03-25 16:54:51', '2017-03-25 16:54:51');
INSERT INTO `imall_category` VALUES ('100018', '100003', '旅行箱', '1', null, '2017-03-25 16:55:02', '2017-03-25 16:55:02');
INSERT INTO `imall_category` VALUES ('100019', '100003', '手提包', '1', null, '2017-03-25 16:55:09', '2017-03-25 16:55:09');
INSERT INTO `imall_category` VALUES ('100020', '100003', '保暖内衣', '1', null, '2017-03-25 16:55:18', '2017-03-25 16:55:18');
INSERT INTO `imall_category` VALUES ('100021', '100004', '零食', '1', null, '2017-03-25 16:55:30', '2017-03-25 16:55:30');
INSERT INTO `imall_category` VALUES ('100022', '100004', '生鲜', '1', null, '2017-03-25 16:55:37', '2017-03-25 16:55:37');
INSERT INTO `imall_category` VALUES ('100023', '100004', '半成品菜', '1', null, '2017-03-25 16:55:47', '2017-03-25 16:55:47');
INSERT INTO `imall_category` VALUES ('100024', '100004', '速冻食品', '1', null, '2017-03-25 16:55:56', '2017-03-25 16:55:56');
INSERT INTO `imall_category` VALUES ('100025', '100004', '进口食品', '1', null, '2017-03-25 16:56:06', '2017-03-25 16:56:06');
INSERT INTO `imall_category` VALUES ('100026', '100005', '白酒', '1', null, '2017-03-25 16:56:22', '2017-03-25 16:56:22');
INSERT INTO `imall_category` VALUES ('100027', '100005', '红酒', '1', null, '2017-03-25 16:56:30', '2017-03-25 16:56:30');
INSERT INTO `imall_category` VALUES ('100028', '100005', '饮料', '1', null, '2017-03-25 16:56:37', '2017-03-25 16:56:37');
INSERT INTO `imall_category` VALUES ('100029', '100005', '调制鸡尾酒', '1', null, '2017-03-25 16:56:45', '2017-03-25 16:56:45');
INSERT INTO `imall_category` VALUES ('100030', '100005', '进口洋酒', '1', null, '2017-03-25 16:57:05', '2017-03-25 16:57:05');
INSERT INTO `imall_category` VALUES ('100031', '100003', '童装', '1', null, '2017-10-27 00:11:00', '2017-10-27 00:11:00');
INSERT INTO `imall_category` VALUES ('100032', '0', '汽车生活', '1', null, '2017-10-27 08:40:18', '2017-10-27 08:40:18');
INSERT INTO `imall_category` VALUES ('100033', '100032', '汽车用品', '1', null, '2017-10-27 08:41:36', '2017-10-27 08:41:36');
INSERT INTO `imall_category` VALUES ('100034', '0', '鞋靴', '1', null, '2017-10-27 08:48:22', '2017-10-27 08:48:22');
INSERT INTO `imall_category` VALUES ('100035', '100034', '运动鞋', '1', null, '2017-10-27 08:48:46', '2017-10-27 08:48:46');
INSERT INTO `imall_category` VALUES ('100036', '0', '运动户外', '1', null, '2017-10-27 08:50:41', '2017-10-27 08:50:41');
INSERT INTO `imall_category` VALUES ('100037', '100036', '头巾', '1', null, '2017-10-27 08:50:58', '2017-10-27 08:50:58');
INSERT INTO `imall_category` VALUES ('100038', '0', '钟表', '1', null, '2017-10-27 08:52:27', '2017-10-27 08:52:27');
INSERT INTO `imall_category` VALUES ('100039', '100038', '挂钟', '1', null, '2017-10-27 08:52:53', '2017-10-27 08:52:53');
INSERT INTO `imall_category` VALUES ('100040', '0', '配饰', '1', null, '2017-10-27 08:55:47', '2017-10-27 08:55:47');
INSERT INTO `imall_category` VALUES ('100041', '100040', '珠宝', '1', null, '2017-10-27 08:55:57', '2017-10-27 08:55:57');
INSERT INTO `imall_category` VALUES ('100042', '100036', '足球', '1', null, '2017-10-27 08:57:34', '2017-10-27 08:57:34');
INSERT INTO `imall_category` VALUES ('100043', '0', '个护化妆', '1', null, '2017-10-27 08:59:16', '2017-10-27 08:59:16');
INSERT INTO `imall_category` VALUES ('100044', '100043', '喷雾', '1', null, '2017-10-27 08:59:45', '2017-10-27 08:59:45');
INSERT INTO `imall_category` VALUES ('100045', '0', '房子周边', '1', null, '2017-10-27 09:03:05', '2017-10-27 09:03:05');
INSERT INTO `imall_category` VALUES ('100046', '100045', '家具', '1', null, '2017-10-27 09:03:27', '2017-10-27 09:03:27');
INSERT INTO `imall_category` VALUES ('100047', '100045', '家装', '1', null, '2017-10-27 09:05:23', '2017-10-27 09:05:23');
INSERT INTO `imall_category` VALUES ('100048', '0', '生活用品', '1', null, '2017-10-27 09:12:53', '2017-10-27 09:12:53');
INSERT INTO `imall_category` VALUES ('100049', '100048', '清洁', '1', null, '2017-10-27 09:13:04', '2017-10-27 09:13:04');
INSERT INTO `imall_category` VALUES ('100050', '100048', '纸巾', '1', null, '2017-10-27 09:15:47', '2017-10-27 09:15:47');
INSERT INTO `imall_category` VALUES ('100051', '0', '母婴', '1', null, '2017-10-27 09:17:06', '2017-10-27 09:17:06');
INSERT INTO `imall_category` VALUES ('100052', '100051', '婴儿奶粉', '1', null, '2017-10-27 09:17:15', '2017-10-27 09:17:15');

-- ----------------------------
-- Table structure for `imall_order`
-- ----------------------------
DROP TABLE IF EXISTS `imall_order`;
CREATE TABLE `imall_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_no` bigint(20) DEFAULT NULL COMMENT '订单号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `shipping_id` int(11) DEFAULT NULL,
  `payment` decimal(20,2) DEFAULT NULL COMMENT '实际付款金额,单位是元,保留两位小数',
  `payment_type` int(4) DEFAULT NULL COMMENT '支付类型,1-在线支付',
  `postage` int(10) DEFAULT NULL COMMENT '运费,单位是元',
  `status` int(10) DEFAULT NULL COMMENT '订单状态:0-已取消-10-未付款，20-已付款，40-已发货，50-交易成功，60-交易关闭',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `send_time` datetime DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no_index` (`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imall_order
-- ----------------------------
INSERT INTO `imall_order` VALUES ('103', '1491753014256', '1', '25', '13998.00', '1', '0', '10', null, null, null, null, '2017-04-09 23:50:14', '2017-04-09 23:50:14');
INSERT INTO `imall_order` VALUES ('104', '1491830695216', '1', '26', '13998.00', '1', '0', '10', null, null, null, null, '2017-04-10 21:24:55', '2017-04-10 21:24:55');
INSERT INTO `imall_order` VALUES ('105', '1492089528889', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:18:48', '2017-04-13 21:18:48');
INSERT INTO `imall_order` VALUES ('106', '1492090946105', '1', '29', '27894.00', '1', '0', '20', '2017-04-13 21:42:40', null, null, null, '2017-04-13 21:42:26', '2017-04-13 21:42:41');
INSERT INTO `imall_order` VALUES ('107', '1492091003128', '1', '29', '8597.00', '1', '0', '20', '2017-04-13 21:43:38', null, null, null, '2017-04-13 21:43:23', '2017-04-13 21:43:38');
INSERT INTO `imall_order` VALUES ('108', '1492091051313', '1', '29', '1999.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:11', '2017-04-13 21:44:11');
INSERT INTO `imall_order` VALUES ('109', '1492091061513', '1', '29', '6598.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:21', '2017-04-13 21:44:21');
INSERT INTO `imall_order` VALUES ('110', '1492091069563', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:29', '2017-04-13 21:44:29');
INSERT INTO `imall_order` VALUES ('111', '1492091076073', '1', '29', '4299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:36', '2017-04-13 21:44:36');
INSERT INTO `imall_order` VALUES ('112', '1492091083720', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:43', '2017-04-13 21:44:43');
INSERT INTO `imall_order` VALUES ('113', '1492091089794', '1', '29', '6999.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:49', '2017-04-13 21:44:49');
INSERT INTO `imall_order` VALUES ('114', '1492091096400', '1', '29', '6598.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:56', '2017-04-13 21:44:56');
INSERT INTO `imall_order` VALUES ('115', '1492091102371', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:45:02', '2017-04-13 21:45:02');
INSERT INTO `imall_order` VALUES ('116', '1492091110004', '1', '29', '8598.00', '1', '0', '40', '2017-04-13 21:55:16', '2017-04-13 21:55:31', null, null, '2017-04-13 21:45:09', '2017-04-13 21:55:31');
INSERT INTO `imall_order` VALUES ('117', '1492091141269', '1', '29', '22894.00', '1', '0', '40', '2017-04-13 21:46:06', '2017-10-10 17:11:26', null, null, '2017-04-13 21:45:41', '2017-10-10 17:11:26');
INSERT INTO `imall_order` VALUES ('118', '1507682290913', '1', '29', '6999.00', '1', '0', '10', null, null, null, null, '2017-10-11 08:38:10', '2017-10-11 08:38:10');
INSERT INTO `imall_order` VALUES ('119', '1507682343083', '1', '29', '6999.00', '1', '0', '10', null, null, null, null, '2017-10-11 08:39:03', '2017-10-11 08:39:03');
INSERT INTO `imall_order` VALUES ('120', '1507682729053', '1', '29', '9897.00', '1', '0', '10', null, null, null, null, '2017-10-11 08:45:29', '2017-10-11 08:45:29');
INSERT INTO `imall_order` VALUES ('121', '1507683093768', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-10-11 08:51:33', '2017-10-11 08:51:33');
INSERT INTO `imall_order` VALUES ('122', '1507683913991', '1', '29', '16495.00', '1', '0', '10', null, null, null, null, '2017-10-11 09:05:13', '2017-10-11 09:05:13');
INSERT INTO `imall_order` VALUES ('123', '1507684709874', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-10-11 09:18:29', '2017-10-11 09:18:29');
INSERT INTO `imall_order` VALUES ('124', '1507685005465', '1', '29', '12897.00', '1', '0', '0', null, null, null, null, '2017-10-11 09:23:25', '2017-10-11 09:23:25');
INSERT INTO `imall_order` VALUES ('125', '1507685028597', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-10-11 09:23:48', '2017-10-11 09:23:48');
INSERT INTO `imall_order` VALUES ('126', '1507686239682', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-10-11 09:43:59', '2017-10-11 09:43:59');
INSERT INTO `imall_order` VALUES ('127', '1507686682532', '1', '29', '8598.00', '1', '0', '10', null, null, null, null, '2017-10-11 09:51:22', '2017-10-11 09:51:22');
INSERT INTO `imall_order` VALUES ('128', '1507689042939', '1', '29', '19794.00', '1', '0', '10', null, null, null, null, '2017-10-11 10:30:42', '2017-10-11 10:30:42');
INSERT INTO `imall_order` VALUES ('129', '1507689869085', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-10-11 10:44:29', '2017-10-11 10:44:29');
INSERT INTO `imall_order` VALUES ('130', '1507690611536', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-10-11 10:56:51', '2017-10-11 10:56:51');
INSERT INTO `imall_order` VALUES ('131', '1507691569730', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-10-11 11:12:49', '2017-10-11 11:12:49');
INSERT INTO `imall_order` VALUES ('132', '1507857163388', '1', '30', '3299.00', '1', '0', '10', null, null, null, null, '2017-10-13 09:12:43', '2017-10-13 09:12:43');
INSERT INTO `imall_order` VALUES ('133', '1507879454924', '22', '31', '23093.00', '1', '0', '10', null, null, null, null, '2017-10-13 15:24:14', '2017-10-13 15:24:14');
INSERT INTO `imall_order` VALUES ('134', '1508206690213', '1', '29', '9897.00', '1', '0', '10', null, null, null, null, '2017-10-17 10:18:10', '2017-10-17 10:18:10');
INSERT INTO `imall_order` VALUES ('135', '1508469290833', '1', '29', '16495.00', '1', '0', '20', '2017-10-13 21:55:16', '2017-10-13 21:55:16', null, null, '2017-10-20 11:14:50', '2017-10-20 11:14:50');
INSERT INTO `imall_order` VALUES ('136', '1509071500316', '1', '30', '10097.00', '1', '0', '10', null, null, null, null, '2017-10-27 10:31:40', '2017-10-27 10:31:40');

-- ----------------------------
-- Table structure for `imall_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `imall_order_item`;
CREATE TABLE `imall_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单子表id',
  `user_id` int(11) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `product_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `product_image` varchar(500) DEFAULT NULL COMMENT '商品图片地址',
  `current_unit_price` decimal(20,2) DEFAULT NULL COMMENT '生成订单时的商品单价，单位是元,保留两位小数',
  `quantity` int(10) DEFAULT NULL COMMENT '商品数量',
  `total_price` decimal(20,2) DEFAULT NULL COMMENT '商品总价,单位是元,保留两位小数',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_no_index` (`order_no`) USING BTREE,
  KEY `order_no_user_id_index` (`user_id`,`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imall_order_item
-- ----------------------------
INSERT INTO `imall_order_item` VALUES ('113', '1', '1491753014256', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '2', '13998.00', '2017-04-09 23:50:14', '2017-04-09 23:50:14');
INSERT INTO `imall_order_item` VALUES ('114', '1', '1491830695216', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '2', '13998.00', '2017-04-10 21:24:55', '2017-04-10 21:24:55');
INSERT INTO `imall_order_item` VALUES ('115', '1', '1492089528889', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:18:48', '2017-04-13 21:18:48');
INSERT INTO `imall_order_item` VALUES ('116', '1', '1492090946105', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '2', '8598.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26');
INSERT INTO `imall_order_item` VALUES ('117', '1', '1492090946105', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '1', '1999.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26');
INSERT INTO `imall_order_item` VALUES ('118', '1', '1492090946105', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26');
INSERT INTO `imall_order_item` VALUES ('119', '1', '1492090946105', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '2', '13998.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26');
INSERT INTO `imall_order_item` VALUES ('120', '1', '1492091003128', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '2', '6598.00', '2017-04-13 21:43:23', '2017-04-13 21:43:23');
INSERT INTO `imall_order_item` VALUES ('121', '1', '1492091003128', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '1', '1999.00', '2017-04-13 21:43:23', '2017-04-13 21:43:23');
INSERT INTO `imall_order_item` VALUES ('122', '1', '1492091051313', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '1', '1999.00', '2017-04-13 21:44:11', '2017-04-13 21:44:11');
INSERT INTO `imall_order_item` VALUES ('123', '1', '1492091061513', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '2', '6598.00', '2017-04-13 21:44:21', '2017-04-13 21:44:21');
INSERT INTO `imall_order_item` VALUES ('124', '1', '1492091069563', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:44:29', '2017-04-13 21:44:29');
INSERT INTO `imall_order_item` VALUES ('125', '1', '1492091076073', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '1', '4299.00', '2017-04-13 21:44:36', '2017-04-13 21:44:36');
INSERT INTO `imall_order_item` VALUES ('126', '1', '1492091083720', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:44:43', '2017-04-13 21:44:43');
INSERT INTO `imall_order_item` VALUES ('127', '1', '1492091089794', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '1', '6999.00', '2017-04-13 21:44:49', '2017-04-13 21:44:49');
INSERT INTO `imall_order_item` VALUES ('128', '1', '1492091096400', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '2', '6598.00', '2017-04-13 21:44:56', '2017-04-13 21:44:56');
INSERT INTO `imall_order_item` VALUES ('129', '1', '1492091102371', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:45:02', '2017-04-13 21:45:02');
INSERT INTO `imall_order_item` VALUES ('130', '1', '1492091110004', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '2', '8598.00', '2017-04-13 21:45:09', '2017-04-13 21:45:09');
INSERT INTO `imall_order_item` VALUES ('131', '1', '1492091141269', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '1', '6999.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41');
INSERT INTO `imall_order_item` VALUES ('132', '1', '1492091141269', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41');
INSERT INTO `imall_order_item` VALUES ('133', '1', '1492091141269', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '2', '8598.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41');
INSERT INTO `imall_order_item` VALUES ('134', '1', '1492091141269', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '2', '3998.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41');
INSERT INTO `imall_order_item` VALUES ('135', '1', '1507682290913', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '1', '6999.00', '2017-10-11 08:38:10', '2017-10-11 08:38:10');
INSERT INTO `imall_order_item` VALUES ('136', '1', '1507682343083', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '1', '6999.00', '2017-10-11 08:39:03', '2017-10-11 08:39:03');
INSERT INTO `imall_order_item` VALUES ('137', '1', '1507682729053', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '3', '9897.00', '2017-10-11 08:45:29', '2017-10-11 08:45:29');
INSERT INTO `imall_order_item` VALUES ('138', '1', '1507683093768', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-10-11 08:51:33', '2017-10-11 08:51:33');
INSERT INTO `imall_order_item` VALUES ('139', '1', '1507683913991', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '5', '16495.00', '2017-10-11 09:05:14', '2017-10-11 09:05:14');
INSERT INTO `imall_order_item` VALUES ('140', '1', '1507684709874', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-10-11 09:18:29', '2017-10-11 09:18:29');
INSERT INTO `imall_order_item` VALUES ('141', '1', '1507685005465', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '3', '12897.00', '2017-10-11 09:23:25', '2017-10-11 09:23:25');
INSERT INTO `imall_order_item` VALUES ('142', '1', '1507685028597', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-10-11 09:23:48', '2017-10-11 09:23:48');
INSERT INTO `imall_order_item` VALUES ('143', '1', '1507686239682', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-10-11 09:43:59', '2017-10-11 09:43:59');
INSERT INTO `imall_order_item` VALUES ('144', '1', '1507686682532', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '2', '8598.00', '2017-10-11 09:51:22', '2017-10-11 09:51:22');
INSERT INTO `imall_order_item` VALUES ('145', '1', '1507689042939', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '6', '19794.00', '2017-10-11 10:30:42', '2017-10-11 10:30:42');
INSERT INTO `imall_order_item` VALUES ('146', '1', '1507689869085', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-10-11 10:44:29', '2017-10-11 10:44:29');
INSERT INTO `imall_order_item` VALUES ('147', '1', '1507690611536', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-10-11 10:56:51', '2017-10-11 10:56:51');
INSERT INTO `imall_order_item` VALUES ('148', '1', '1507691569730', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-10-11 11:12:49', '2017-10-11 11:12:49');
INSERT INTO `imall_order_item` VALUES ('149', '1', '1507857163388', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-10-13 09:12:43', '2017-10-13 09:12:43');
INSERT INTO `imall_order_item` VALUES ('150', '22', '1507879454924', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '7', '23093.00', '2017-10-13 15:24:15', '2017-10-13 15:24:15');
INSERT INTO `imall_order_item` VALUES ('151', '1', '1508206690213', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '3', '9897.00', '2017-10-17 10:18:10', '2017-10-17 10:18:10');
INSERT INTO `imall_order_item` VALUES ('152', '1', '1508469290833', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '5', '16495.00', '2017-10-20 11:14:50', '2017-10-20 11:14:50');
INSERT INTO `imall_order_item` VALUES ('153', '1', '1509071500316', '43', '箭牌（ARROW） 卫浴实木浴室柜APGM348陶瓷洗手台洗脸盆柜组合套装挂墙式卫浴柜 浴室柜+1118马桶300孔距+3310花洒 浴室柜家装', 'ec26f7c4-59c2-4589-9ccd-afd2752c4e91.jpg', '3899.00', '1', '3899.00', '2017-10-27 10:31:40', '2017-10-27 10:31:40');
INSERT INTO `imall_order_item` VALUES ('154', '1', '1509071500316', '47', '现货当天发 Xiaomi/小米 小米MIX 2 全面屏手机原封正品小米mix2', '25a48567-ff07-4287-b4fa-e3a0ce188f2c.jpg', '3099.00', '2', '6198.00', '2017-10-27 10:31:40', '2017-10-27 10:31:40');

-- ----------------------------
-- Table structure for `imall_pay_info`
-- ----------------------------
DROP TABLE IF EXISTS `imall_pay_info`;
CREATE TABLE `imall_pay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `order_no` bigint(20) DEFAULT NULL COMMENT '订单号',
  `pay_platform` int(10) DEFAULT NULL COMMENT '支付平台:1-支付宝,2-微信',
  `platform_number` varchar(200) DEFAULT NULL COMMENT '支付宝支付流水号',
  `platform_status` varchar(20) DEFAULT NULL COMMENT '支付宝支付状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imall_pay_info
-- ----------------------------
INSERT INTO `imall_pay_info` VALUES ('53', '1', '1492090946105', '1', '2017041321001004300200116250', 'WAIT_BUYER_PAY', '2017-04-13 21:42:33', '2017-04-13 21:42:33');
INSERT INTO `imall_pay_info` VALUES ('54', '1', '1492090946105', '1', '2017041321001004300200116250', 'TRADE_SUCCESS', '2017-04-13 21:42:41', '2017-04-13 21:42:41');
INSERT INTO `imall_pay_info` VALUES ('55', '1', '1492091003128', '1', '2017041321001004300200116251', 'WAIT_BUYER_PAY', '2017-04-13 21:43:31', '2017-04-13 21:43:31');
INSERT INTO `imall_pay_info` VALUES ('56', '1', '1492091003128', '1', '2017041321001004300200116251', 'TRADE_SUCCESS', '2017-04-13 21:43:38', '2017-04-13 21:43:38');
INSERT INTO `imall_pay_info` VALUES ('57', '1', '1492091141269', '1', '2017041321001004300200116252', 'WAIT_BUYER_PAY', '2017-04-13 21:45:59', '2017-04-13 21:45:59');
INSERT INTO `imall_pay_info` VALUES ('58', '1', '1492091141269', '1', '2017041321001004300200116252', 'TRADE_SUCCESS', '2017-04-13 21:46:07', '2017-04-13 21:46:07');
INSERT INTO `imall_pay_info` VALUES ('59', '1', '1492091110004', '1', '2017041321001004300200116396', 'WAIT_BUYER_PAY', '2017-04-13 21:55:08', '2017-04-13 21:55:08');
INSERT INTO `imall_pay_info` VALUES ('60', '1', '1492091110004', '1', '2017041321001004300200116396', 'TRADE_SUCCESS', '2017-04-13 21:55:17', '2017-04-13 21:55:17');

-- ----------------------------
-- Table structure for `imall_product`
-- ----------------------------
DROP TABLE IF EXISTS `imall_product`;
CREATE TABLE `imall_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `category_id` int(11) NOT NULL COMMENT '分类id,对应mmall_category表的主键',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '商品副标题',
  `main_image` varchar(500) DEFAULT NULL COMMENT '产品主图,url相对地址',
  `sub_images` text COMMENT '图片地址,json格式,扩展用',
  `detail` text COMMENT '商品详情',
  `price` decimal(20,2) NOT NULL COMMENT '价格,单位-元保留两位小数',
  `stock` int(11) NOT NULL COMMENT '库存数量',
  `status` int(6) DEFAULT '1' COMMENT '商品状态.1-在售 2-下架 3-删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imall_product
-- ----------------------------
INSERT INTO `imall_product` VALUES ('26', '100002', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', 'iPhone 7，现更以红色呈现。', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg,b6c56eb0-1748-49a9-98dc-bcc4b9788a54.jpeg,92f17532-1527-4563-aa1d-ed01baa0f7b2.jpeg,3adbe4f7-e374-4533-aa79-cc4a98c529bf.jpeg', '<p><img alt=\"10000.jpg\" src=\"http://img.happymmall.com/00bce8d4-e9af-4c8d-b205-e6c75c7e252b.jpg\" width=\"790\" height=\"553\"><br></p><p><img alt=\"20000.jpg\" src=\"http://img.happymmall.com/4a70b4b4-01ee-46af-9468-31e67d0995b8.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"30000.jpg\" src=\"http://img.happymmall.com/0570e033-12d7-49b2-88f3-7a5d84157223.jpg\" width=\"790\" height=\"365\"><br></p><p><img alt=\"40000.jpg\" src=\"http://img.happymmall.com/50515c02-3255-44b9-a829-9e141a28c08a.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"50000.jpg\" src=\"http://img.happymmall.com/c138fc56-5843-4287-a029-91cf3732d034.jpg\" width=\"790\" height=\"525\"><br></p><p><img alt=\"60000.jpg\" src=\"http://img.happymmall.com/c92d1f8a-9827-453f-9d37-b10a3287e894.jpg\" width=\"790\" height=\"525\"><br></p><p><br></p><p><img alt=\"TB24p51hgFkpuFjSspnXXb4qFXa-1776456424.jpg\" src=\"http://img.happymmall.com/bb1511fc-3483-471f-80e5-c7c81fa5e1dd.jpg\" width=\"790\" height=\"375\"><br></p><p><br></p><p><img alt=\"shouhou.jpg\" src=\"http://img.happymmall.com/698e6fbe-97ea-478b-8170-008ad24030f7.jpg\" width=\"750\" height=\"150\"><br></p><p><img alt=\"999.jpg\" src=\"http://img.happymmall.com/ee276fe6-5d79-45aa-8393-ba1d210f9c89.jpg\" width=\"790\" height=\"351\"><br></p>', '6999.00', '9989', '1', null, '2017-10-11 08:39:03');
INSERT INTO `imall_product` VALUES ('27', '100006', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', '送品牌烤箱，五一大促', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg,4bb02f1c-62d5-48cc-b358-97b05af5740d.jpeg,36bdb49c-72ae-4185-9297-78829b54b566.jpeg', '<p><img alt=\"miaoshu.jpg\" src=\"http://img.happymmall.com/9c5c74e6-6615-4aa0-b1fc-c17a1eff6027.jpg\" width=\"790\" height=\"444\"><br></p><p><img alt=\"miaoshu2.jpg\" src=\"http://img.happymmall.com/31dc1a94-f354-48b8-a170-1a1a6de8751b.jpg\" width=\"790\" height=\"1441\"><img alt=\"miaoshu3.jpg\" src=\"http://img.happymmall.com/7862594b-3063-4b52-b7d4-cea980c604e0.jpg\" width=\"790\" height=\"1442\"><img alt=\"miaoshu4.jpg\" src=\"http://img.happymmall.com/9a650563-dc85-44d6-b174-d6960cfb1d6a.jpg\" width=\"790\" height=\"1441\"><br></p>', '3299.00', '8839', '1', '2017-04-13 18:51:54', '2017-10-20 11:14:50');
INSERT INTO `imall_product` VALUES ('28', '100012', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', 'NOVA青春版1999元', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg,13da2172-4445-4eb5-a13f-c5d4ede8458c.jpeg,58d5d4b7-58d4-4948-81b6-2bae4f79bf02.jpeg', '<p><img alt=\"11TB2fKK3cl0kpuFjSsziXXa.oVXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/5c2d1c6d-9e09-48ce-bbdb-e833b42ff664.jpg\" width=\"790\" height=\"966\"><img alt=\"22TB2YP3AkEhnpuFjSZFpXXcpuXXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/9a10b877-818f-4a27-b6f7-62887f3fb39d.jpg\" width=\"790\" height=\"1344\"><img alt=\"33TB2Yyshk.hnpuFjSZFpXXcpuXXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/7d7fbd69-a3cb-4efe-8765-423bf8276e3e.jpg\" width=\"790\" height=\"700\"><img alt=\"TB2diyziB8kpuFjSspeXXc7IpXa_!!1777180618.jpg\" src=\"http://img.happymmall.com/1d7160d2-9dba-422f-b2a0-e92847ba6ce9.jpg\" width=\"790\" height=\"393\"><br></p>', '1999.00', '9994', '1', '2017-04-13 18:57:18', '2017-04-13 21:45:41');
INSERT INTO `imall_product` VALUES ('29', '100008', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '门店机型 德邦送货', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg,42b1b8bc-27c7-4ee1-80ab-753d216a1d49.jpeg,2f1b3de1-1eb1-4c18-8ca2-518934931bec.jpeg', '<p><img alt=\"1TB2WLZrcIaK.eBjSspjXXXL.XXa_!!2114960396.jpg\" src=\"http://img.happymmall.com/ffcce953-81bd-463c-acd1-d690b263d6df.jpg\" width=\"790\" height=\"920\"><img alt=\"2TB2zhOFbZCO.eBjSZFzXXaRiVXa_!!2114960396.jpg\" src=\"http://img.happymmall.com/58a7bd25-c3e7-4248-9dba-158ef2a90e70.jpg\" width=\"790\" height=\"1052\"><img alt=\"3TB27mCtb7WM.eBjSZFhXXbdWpXa_!!2114960396.jpg\" src=\"http://img.happymmall.com/2edbe9b3-28be-4a8b-a9c3-82e40703f22f.jpg\" width=\"790\" height=\"820\"><br></p>', '4299.00', '9988', '1', '2017-04-13 19:07:47', '2017-10-11 09:51:22');
INSERT INTO `imall_product` VALUES ('34', '100033', '汽车头枕 护颈枕 真皮车用头枕车载枕头 车内腰靠 四季通用一对装', '采用优质水牛皮缝制而成，内置车用活性炭与天然纤维。', 'cb588412-5136-46cb-88cc-a9bd2bd3ee9d.jpg', 'cb588412-5136-46cb-88cc-a9bd2bd3ee9d.jpg', '<p><img alt=\"222.jpeg\" src=\"http://img.happymmall.com/714b278b-7cbc-441b-815a-1be43f372f3a.jpeg\" width=\"790\" height=\"849\"><img alt=\"333.jpeg\" src=\"http://img.happymmall.com/5e16251e-86d3-494a-8807-9c5b8353fb4c.jpeg\" width=\"790\" height=\"1002\"><img alt=\"444.jpeg\" src=\"http://img.happymmall.com/0a07950b-3a5d-4ff3-909d-705a4c7dc1a3.jpeg\" width=\"790\" height=\"981\"><img alt=\"555.jpeg\" src=\"http://img.happymmall.com/2c792735-4a3a-4d2c-851b-7a94d4b2627a.jpeg\" width=\"790\" height=\"675\"><br></p>', '73.00', '1002', '1', '2017-10-27 08:45:09', '2017-10-27 08:45:09');
INSERT INTO `imall_product` VALUES ('35', '100031', '童装童鞋男童秋装套装2017新款韩版中大童儿童春秋季两件套男孩卫衣潮', '不起球 不褪色 时尚设计 王子新衣', '4547e77f-e205-4c52-8ac7-aeb3ed0fa801.jpeg', '4547e77f-e205-4c52-8ac7-aeb3ed0fa801.jpeg,3d95c760-0dab-4a86-9198-7f0e5195628e.jpeg,a7b244de-dc69-41f8-b4d5-354678ecf137.jpeg', '<p><img alt=\"444.jpg\" src=\"http://img.happymmall.com/cd3e3bed-8159-4526-87aa-e0ddebaa4556.jpg\" width=\"790\" height=\"1479\"><img alt=\"555.jpg\" src=\"http://img.happymmall.com/acf109d2-0a3d-4912-9a42-afd6ea91e20f.jpg\" width=\"790\" height=\"958\"><img alt=\"666.jpg\" src=\"http://img.happymmall.com/8af087e7-01ac-4f73-98dd-e3c45d9f9722.jpg\" width=\"790\" height=\"516\"><img alt=\"777.jpg\" src=\"http://img.happymmall.com/450803ff-2f76-4478-a16f-6c3d85c9a1da.jpg\" width=\"790\" height=\"663\"><br></p>', '99.00', '355', '1', '2017-10-27 08:47:15', '2017-10-27 08:47:15');
INSERT INTO `imall_product` VALUES ('36', '100035', '安踏男鞋跑鞋 2017新款学生减震耐磨休闲跑步鞋运动鞋靴男', '轻便舒适健走鞋', '67ab1781-56e4-40af-a969-1730b1e3e54a.jpg', '67ab1781-56e4-40af-a969-1730b1e3e54a.jpg,c23cbe83-1042-4cc9-85b4-3efb5c826809.jpg,1d3192c8-4faf-4f4d-8362-678fabcffd99.jpg', '<p><img alt=\"444.jpg\" src=\"http://img.happymmall.com/a57d67c9-bd25-45b3-8d19-c6362ef93990.jpg\" width=\"790\" height=\"177\"><img alt=\"555.jpg\" src=\"http://img.happymmall.com/590b91ea-65ef-4eb6-ae9a-c2865f83afda.jpg\" width=\"790\" height=\"1430\"><img alt=\"666.jpg\" src=\"http://img.happymmall.com/8ee6cc44-16a5-4222-8853-e4b6ff187d94.jpg\" width=\"790\" height=\"1233\"><img alt=\"777.jpg\" src=\"http://img.happymmall.com/f20c93dc-a7e3-4387-8082-d71b35d64e04.jpg\" width=\"790\" height=\"1125\"><br></p>', '169.00', '755', '1', '2017-10-27 08:49:48', '2017-10-27 08:49:48');
INSERT INTO `imall_product` VALUES ('37', '100037', '迪纳利户外运动魔术头巾骑行面罩防晒脖套围脖全脸面巾', '面料升级版头巾，比旧款更具弹性，更透气、柔软、亲肤！', 'a50e7645-1f23-48b7-82fc-9c35c770fbab.jpg', 'a50e7645-1f23-48b7-82fc-9c35c770fbab.jpg,53e6fe29-2061-45c0-962a-af64dd4357bd.jpg,740f2e62-cb36-46a3-badd-134f5c718fc2.jpg', '<p><img alt=\"444.jpg\" src=\"http://img.happymmall.com/7bd55e9a-6ebf-419d-aba5-7beefa098a0a.jpg\" width=\"750\" height=\"668\"><img alt=\"555.jpg\" src=\"http://img.happymmall.com/64870138-4546-4d9e-8ae2-07589f0a00d5.jpg\" width=\"750\" height=\"720\"><img alt=\"666.jpg\" src=\"http://img.happymmall.com/98903378-8673-4e72-baab-e40bf6c44f7b.jpg\" width=\"750\" height=\"1278\"><img alt=\"777.jpg\" src=\"http://img.happymmall.com/91b4463c-9a73-4309-9804-377c5de61da4.jpg\" width=\"750\" height=\"568\"><br></p>', '28.00', '655', '1', '2017-10-27 08:52:02', '2017-10-27 08:52:02');
INSERT INTO `imall_product` VALUES ('38', '100039', '七王星挂钟客厅大方形复古创意中式家庭电子石英钟表日历时钟挂表', '静音准时 闪电发货 性价比高 破损补寄', '9b1fd6a3-75ec-4849-b198-9464f0ac872c.jpg', '9b1fd6a3-75ec-4849-b198-9464f0ac872c.jpg,8732822d-d437-4730-8349-7558a9be7124.jpg,3a58501a-1517-419b-83a2-ac104872a19e.jpg', '<p><img alt=\"444.jpg\" src=\"http://img.happymmall.com/4d7e07ab-10a2-417c-b04c-996b15de3fde.jpg\" width=\"790\" height=\"780\"><img alt=\"555.jpg\" src=\"http://img.happymmall.com/e621caf7-9fd8-46b6-8ab3-39ae5e53d09e.jpg\" width=\"790\" height=\"1066\"><img alt=\"666.jpg\" src=\"http://img.happymmall.com/5b8121de-6b3a-4d1a-82f4-dd7bc888a6c6.jpg\" width=\"790\" height=\"1025\"><img alt=\"777.jpg\" src=\"http://img.happymmall.com/af9f7694-47bf-47bb-b5b8-101df879210a.jpg\" width=\"790\" height=\"1216\"><br></p>', '46.90', '455', '1', '2017-10-27 08:54:25', '2017-10-27 08:54:25');
INSERT INTO `imall_product` VALUES ('39', '100041', '珍妮芙 11-12-13mm正圆强光白亮淡水大真珍珠项链正品 送妈妈珠宝', '有近万人和您一样选择了这款优选真珍珠项链', 'c34d90a8-99c2-4779-8f32-cf84e6c654e7.jpg', 'c34d90a8-99c2-4779-8f32-cf84e6c654e7.jpg,30ae058d-0cd7-4c9d-a756-36717d15f414.jpg,8d43f1f2-eac4-4030-b3a6-2960ac749ced.jpg', '<p><img alt=\"444.jpg\" src=\"http://img.happymmall.com/2d50344e-4203-4fae-869b-7dd085cccecc.jpg\" width=\"790\" height=\"657\"><img alt=\"555.jpg\" src=\"http://img.happymmall.com/b3e5a668-ad5a-46da-bd35-d5f6ee6ce47f.jpg\" width=\"790\" height=\"376\"><img alt=\"666.jpg\" src=\"http://img.happymmall.com/c953dce7-e944-47ac-824d-c09b99ff205e.jpg\" width=\"790\" height=\"606\"><img alt=\"777.jpg\" src=\"http://img.happymmall.com/82829953-5262-4efa-9146-701e428260ee.jpg\" width=\"790\" height=\"1004\"><br></p>', '299.00', '366', '1', '2017-10-27 08:56:44', '2017-10-27 08:56:44');
INSERT INTO `imall_product` VALUES ('40', '100042', '欧冠足球 无缝热粘合5号4号比赛训练儿童英超足球颗粒防滑送气筒', '默认发百世汇通快递!本店加入了退货运费险，让您购物无忧', 'f4c6b4c5-659b-4dbb-9ec9-67fbca06edf5.jpg', 'f4c6b4c5-659b-4dbb-9ec9-67fbca06edf5.jpg,7156f6d4-dca8-4ca3-86a5-bc9dd6f10066.jpg,5130da80-fcea-4ede-99a1-8716443f2dc2.jpg', '<p><img alt=\"444.jpg\" src=\"http://img.happymmall.com/352da56a-daa2-4f21-9604-6c50b163ba86.jpg\" width=\"750\" height=\"486\"><img alt=\"555.jpg\" src=\"http://img.happymmall.com/d44894b0-46c1-4b40-953b-0dc73524a017.jpg\" width=\"750\" height=\"750\"><img alt=\"666.jpg\" src=\"http://img.happymmall.com/8d9db26a-d946-4d37-9d5c-b7fe5016d844.jpg\" width=\"750\" height=\"1422\"><img alt=\"777.jpg\" src=\"http://img.happymmall.com/ce7b73ed-8675-49bf-8877-837d4453125c.jpg\" width=\"750\" height=\"1422\"><br></p>', '38.00', '455', '1', '2017-10-27 08:58:18', '2017-10-27 08:58:18');
INSERT INTO `imall_product` VALUES ('41', '100044', '雅漾（Avene）舒护活泉喷雾300ML个护化妆（大喷 爽肤水 补水保湿舒缓定妆湿敷）', '买大喷即享小喷50ML*2,面膜纸*2,数量有限,赠完即止!', 'f45ccdc5-a423-46f9-98e5-a31f30d78dfa.jpg', 'f45ccdc5-a423-46f9-98e5-a31f30d78dfa.jpg,2dd4bcc7-d885-428b-a9e2-865a63574ba3.jpg,5954e525-fc4b-4125-9dae-de1ddc0d491c.jpg', '<p><img alt=\"59a7b337Nd2f57d20.jpg\" src=\"http://img.happymmall.com/a80ac336-67aa-48d4-89df-33150b71428f.jpg\" width=\"750\" height=\"527\"><img alt=\"59a664c0Nf4822939.jpg\" src=\"http://img.happymmall.com/1aaa9050-81de-42b6-afc1-d56a3e558d8e.jpg\" width=\"750\" height=\"764\"><img alt=\"59a664c2N7c1a3945.jpg\" src=\"http://img.happymmall.com/361c6396-7534-407b-b732-8f49eaee26ce.jpg\" width=\"750\" height=\"803\"><img alt=\"59a664c2Ne5d338b3.jpg\" src=\"http://img.happymmall.com/cc063cc0-eb26-4bf2-9924-33012a77e414.jpg\" width=\"750\" height=\"1169\"><br></p>', '186.00', '288', '1', null, '2017-10-27 09:09:17');
INSERT INTO `imall_product` VALUES ('42', '100046', '一号豪庭美式电视柜简约客厅家具实木茶几电视机影视柜组合 胡桃色 电视柜', '【全店三免一】店内满件即减，二件7.5折，一件也享8折优惠', '49eb5a95-2b07-4be0-9040-6071739609bf.jpg', '49eb5a95-2b07-4be0-9040-6071739609bf.jpg,085844ad-cc76-403f-8922-32603393af87.jpg,c88d49cd-e13e-4869-b68a-c202ff77e4b2.jpg', '<p><img alt=\"59a268abN0c8c85c0.jpg\" src=\"http://img.happymmall.com/23a2eecd-fb44-4d22-a067-1b54d371c476.jpg\" width=\"750\" height=\"863\"><img alt=\"59a268abNa233c788.jpg\" src=\"http://img.happymmall.com/785e8317-8e40-4f4b-b0eb-51d30e97ac5c.jpg\" width=\"750\" height=\"596\"><img alt=\"59a268abNf971cdaf.jpg\" src=\"http://img.happymmall.com/47f39741-c551-4beb-bb86-1410dc28a641.jpg\" width=\"750\" height=\"681\"><br></p>', '2736.00', '654', '1', '2017-10-27 09:11:09', '2017-10-27 09:11:09');
INSERT INTO `imall_product` VALUES ('43', '100047', '箭牌（ARROW） 卫浴实木浴室柜APGM348陶瓷洗手台洗脸盆柜组合套装挂墙式卫浴柜 浴室柜+1118马桶300孔距+3310花洒 浴室柜家装', '【10月特惠 限时24小时，触底好价，包破损 先验货再签收】服务区送安详情咨询客服', 'ec26f7c4-59c2-4589-9ccd-afd2752c4e91.jpg', 'ec26f7c4-59c2-4589-9ccd-afd2752c4e91.jpg,f12b43d1-2de0-4c76-b556-7f2b787bbce9.jpg,85b75c44-c5e1-4f64-8255-8a46ab6f7e72.jpg,0ff581bd-5494-4a8e-b9f3-8204e90b5294.jpg', '<p><img alt=\"58ca2f82Ndf5ab67f.jpg\" src=\"http://img.happymmall.com/29d56c2d-3442-4a76-9442-ff6da16686bd.jpg\" width=\"990\" height=\"438\"><img alt=\"57621c44N33676b5c.jpg\" src=\"http://img.happymmall.com/8bb32a8f-194d-4601-9808-1446e3683168.jpg\" width=\"790\" height=\"834\"><img alt=\"593216cdN39c1669a.png\" src=\"http://img.happymmall.com/68668e71-47ab-4e18-baa7-703a10f3e1bb.png\" width=\"791\" height=\"698\"><br></p>', '3899.00', '521', '1', '2017-10-27 09:12:21', '2017-10-27 10:31:40');
INSERT INTO `imall_product` VALUES ('44', '100049', '百家好世旋转拖把桶拖布双驱动好神拖免手洗地拖墩布【共6拖把头】清洁', '【共6块拖布/保价30天/不满意包退换】【升级省力拖把杆/省力省时】', '09f6b05f-a4b3-4cef-87b7-8f114df45d76.jpg', '09f6b05f-a4b3-4cef-87b7-8f114df45d76.jpg,a459f8b5-bd67-417a-bf7b-1889cc69b355.jpg,df62f6bd-df31-4d9b-b05f-f5e3e92385c0.jpg', '<p><img alt=\"59b7832dN213c943b.jpg\" src=\"http://img.happymmall.com/df1b568f-70df-43bd-8671-31db93d6bdb4.jpg\" width=\"790\" height=\"621\"><img alt=\"59b7832dNd3bcacf9.jpg\" src=\"http://img.happymmall.com/70587e72-dd9c-4816-a88f-1efa0558dc1b.jpg\" width=\"790\" height=\"1396\"><img alt=\"59b7832eN04e2668f.jpg\" src=\"http://img.happymmall.com/e0d5a75c-5433-490b-b393-6230034b0b02.jpg\" width=\"790\" height=\"1307\"><br></p>', '69.90', '355', '1', '2017-10-27 09:14:46', '2017-10-27 09:14:46');
INSERT INTO `imall_product` VALUES ('45', '100050', '维达(Vinda) 抽纸 超韧3层150抽软抽*24包(中规格) 纸品整箱销售', '整箱特惠!超韧细密,湿水不易破!乐享假期,萌动出行,9.9出行包超值换购 随机立减 10元封顶~', '7f8b1db5-f75a-48ad-a7b6-ad1ea4703b87.jpg', '7f8b1db5-f75a-48ad-a7b6-ad1ea4703b87.jpg,ae5d03ab-28b3-4367-b02b-b73a21a21162.jpg,addeae89-4f96-4b21-bc65-30738b15b44f.jpg', '<p><img alt=\"57b3e06cNee4be7b2.jpg\" src=\"http://img.happymmall.com/0fda94cd-ece6-4fb2-b3fa-e428578b40cb.jpg\" width=\"750\" height=\"856\"><img alt=\"57c3ed41Nb696a2a5.jpg\" src=\"http://img.happymmall.com/1aea93c2-5f04-4668-a2db-dabc5b1c61b3.jpg\" width=\"750\" height=\"543\"><img alt=\"57e4f0bdNc0ecfd25.gif\" src=\"http://img.happymmall.com/f35b85cf-1d66-4d11-8645-3b50689379e3.gif\" width=\"750\" height=\"796\"><img alt=\"595de31eNb33d7cc8.jpg\" src=\"http://img.happymmall.com/fc85acb8-9327-4c46-bbca-2cb511288dd4.jpg\" width=\"750\" height=\"544\"><br></p>', '76.90', '456', '1', '2017-10-27 09:16:29', '2017-10-27 09:16:29');
INSERT INTO `imall_product` VALUES ('46', '100052', '雀巢（nestle）超级能恩 幼儿配方奶粉 3段（12-36个月适用）800克（德国原装进口）', '德国原装原罐进口，适度水解工艺，小分子蛋白易吸收，延续妈妈温和而强大的保护。', 'cb319e38-817e-4516-8f77-a55745d37e7d.jpg', 'cb319e38-817e-4516-8f77-a55745d37e7d.jpg,2cbca36a-9fd0-41b6-99d4-80d8dcb72a83.jpg,f3b131e4-e15b-4787-a7cf-67803d5f4f0d.jpg', '<p><img alt=\"59608d5cNaf8782e3.jpg\" src=\"http://img.happymmall.com/1f03e1b0-3204-4ca3-87a0-0a14fd74515c.jpg\" width=\"750\" height=\"410\"><img alt=\"59608d62N70ea1ecd.jpg\" src=\"http://img.happymmall.com/5a0ff4b8-18fe-41bb-829b-dce2b0790f77.jpg\" width=\"750\" height=\"334\"><img alt=\"59608d65N3b48cab5.jpg\" src=\"http://img.happymmall.com/4c12503e-68dc-4b3a-95c7-57796179bd82.jpg\" width=\"750\" height=\"419\"><img alt=\"59608d68N58d9fba0.jpg\" src=\"http://img.happymmall.com/ce91cbd4-da8b-4729-afaa-ddbc599c8f47.jpg\" width=\"750\" height=\"690\"><br></p>', '266.00', '536', '1', '2017-10-27 09:18:19', '2017-10-27 09:18:19');
INSERT INTO `imall_product` VALUES ('47', '100012', '现货当天发 Xiaomi/小米 小米MIX 2 全面屏手机原封正品小米mix2', '现货已到，特惠抢购仅限3天。原封正品带发票，支持任何渠道验货。全国联保，顺丰当天发出！', '25a48567-ff07-4287-b4fa-e3a0ce188f2c.jpg', '25a48567-ff07-4287-b4fa-e3a0ce188f2c.jpg,33a70980-9475-48d6-8c1a-407b152510fe.jpg,d2103530-2cc8-4a49-bb10-39a9aba8fc17.jpg', '<p><img alt=\"444.jpg\" src=\"http://img.happymmall.com/e6ace4f6-124e-4473-aec5-e17bb8aec27f.jpg\" width=\"750\" height=\"513\"><img alt=\"555.jpg\" src=\"http://img.happymmall.com/c3a7cad5-d699-4bcd-bf33-5048e2384298.jpg\" width=\"750\" height=\"679\"><img alt=\"666.jpg\" src=\"http://img.happymmall.com/ec794fff-877a-4730-a30f-52b9a15cc111.jpg\" width=\"750\" height=\"641\"><img alt=\"777.jpg\" src=\"http://img.happymmall.com/239d8625-e0e6-4d07-ad9b-3e3579337e43.jpg\" width=\"750\" height=\"776\"><br></p>', '3099.00', '5485', '1', '2017-10-27 09:26:55', '2017-10-27 10:31:40');
INSERT INTO `imall_product` VALUES ('48', '100021', '三只松鼠旗舰店坚果大礼包1208g零食特产年货礼盒6袋装全国包邮', '深秋滋补、美味难当，三只松鼠囤货季', 'bd7085e9-9caa-4179-8adc-cc93221aa3b3.jpg', 'bd7085e9-9caa-4179-8adc-cc93221aa3b3.jpg,ad012e26-a67a-4e89-b124-fad6da3b4f0e.jpg,eb56b8fc-5b27-4072-80bb-098a6dca7da0.jpg', '<p><img alt=\"56eb.jpg\" src=\"http://img.happymmall.com/5bf402d9-6965-4d39-8c2c-6d8fad874e0f.jpg\" width=\"750\" height=\"587\"><img alt=\"111.jpg\" src=\"http://img.happymmall.com/35f4da7c-8fad-4327-a1a9-315fad7304b1.jpg\" width=\"750\" height=\"646\"><img alt=\"de2.jpg\" src=\"http://img.happymmall.com/b6f357ba-c4b5-4544-973e-1c5a2a9fee1d.jpg\" width=\"750\" height=\"491\"><br></p>', '22.90', '655', '1', '2017-10-27 09:51:47', '2017-10-27 09:51:47');
INSERT INTO `imall_product` VALUES ('49', '100021', '百草味 夹心麻薯210gx3袋 休闲零食美食 糕点小吃点心早餐 台湾风味 三种口味各一包', '美味抢先购', 'ddab59cb-86b2-4107-9ce4-7f43649e47b4.jpg', 'ddab59cb-86b2-4107-9ce4-7f43649e47b4.jpg,c6af36b8-4326-46d1-b78a-63b56e023ba0.jpg,fe942686-90d3-4b58-bedd-a1c4458289d2.jpg', '<p><img alt=\"15d.jpg\" src=\"http://img.happymmall.com/a44e6903-ed5e-4961-a915-0b95e914830e.jpg\" width=\"990\" height=\"932\"><img alt=\"57b.jpg\" src=\"http://img.happymmall.com/11394c85-6032-4ebd-8be4-08dbc810ffe5.jpg\" width=\"990\" height=\"1111\"><img alt=\"57b55d26N1af86889.jpg\" src=\"http://img.happymmall.com/2d0612ae-0fd8-4832-843b-0aae63b126c0.jpg\" width=\"990\" height=\"760\"><img alt=\"811d.jpg\" src=\"http://img.happymmall.com/61e78814-33f9-4013-89d7-890000c7f3a8.jpg\" width=\"990\" height=\"643\"><br></p>', '25.80', '122', '1', '2017-10-27 09:57:27', '2017-10-27 09:57:27');
INSERT INTO `imall_product` VALUES ('50', '100001', 'QUEENSENSE（电器） GK2003玻璃电热烧水壶家用304不锈钢自动断电家用电器', '高硼硅玻璃 耐冷热交替 好评如潮 买就送除垢剂', 'dd06ee44-ee66-4b5b-83b7-60a336e94563.jpg', 'dd06ee44-ee66-4b5b-83b7-60a336e94563.jpg,7ebd7121-592f-4f0c-af07-c5a77d06c22d.jpg,3d47e827-82af-43b7-ba1d-0de04622b7f7.jpg', '<p><img alt=\"444.jpg\" src=\"http://img.happymmall.com/15f61970-2345-462e-8355-0d23fcc19e18.jpg\" width=\"790\" height=\"1484\"><img alt=\"555.jpg\" src=\"http://img.happymmall.com/dcff6c88-ed72-4fc6-9e90-68ff0145df1a.jpg\" width=\"790\" height=\"1484\"><img alt=\"666.jpg\" src=\"http://img.happymmall.com/f34e8b2a-a543-48ca-a0bb-e4db0ad4b4ed.jpg\" width=\"790\" height=\"1484\"><br></p>', '69.90', '333', '1', '2017-10-27 09:59:32', '2017-10-27 09:59:32');
INSERT INTO `imall_product` VALUES ('51', '100030', '洋酒原装进口 百利甜酒奶油利口酒BAILEYS力娇酒鸡尾酒基酒', '简单饮法：一般加冰饮，混合2份水喝流行。加入冰激凌和咖啡、红茶也是不错选择。也是B52轰炸机必不可少的。B52轰炸机材料：露咖啡力娇酒+百利甜酒+深蓝伏特加', '44f7a0e4-4c00-44d1-b228-8c26c784f3ed.jpg', '44f7a0e4-4c00-44d1-b228-8c26c784f3ed.jpg,a7a4de6d-9d24-439c-88af-359b249ac806.jpg', '<p><img alt=\"333.jpg\" src=\"http://img.happymmall.com/21631ee7-fb7e-46d6-a8ec-4c2d9dbf14bf.jpg\" width=\"734\" height=\"702\"><img alt=\"444.jpg\" src=\"http://img.happymmall.com/17e20352-1669-47f5-9b21-267039bb9d83.jpg\" width=\"717\" height=\"696\"><img alt=\"555.jpg\" src=\"http://img.happymmall.com/940dd3a9-0a9b-45a4-b828-4f466e8e3e46.jpg\" width=\"790\" height=\"1302\"><br></p>', '71.00', '455', '1', '2017-10-27 10:00:27', '2017-10-27 10:00:27');
INSERT INTO `imall_product` VALUES ('52', '100016', '特大码女装胖妹妹复古百褶裙 秋冬毛呢风琴半身裙显瘦中长裙200斤', '大码胖MM复古风琴百褶裙毛呢格子半身裙显瘦气质高腰中长裙秋冬女', 'bc78a3bd-4ecf-48ca-a15e-d07f4cdfe6a1.jpg', 'bc78a3bd-4ecf-48ca-a15e-d07f4cdfe6a1.jpg,864b0241-8328-4338-ad6e-c80005067133.jpg,a4e11e31-37d6-45f6-84b0-d2ce9357ca3e.jpg', '<p><img alt=\"444.jpg\" src=\"http://img.happymmall.com/539c1742-7970-4b99-8c9e-bddb85fbd261.jpg\" width=\"570\" height=\"469\"><img alt=\"555.jpg\" src=\"http://img.happymmall.com/e9610dcc-af22-4ec5-90f2-2c41c2061547.jpg\" width=\"524\" height=\"370\"><img alt=\"666.jpg\" src=\"http://img.happymmall.com/3a14f977-a676-47c0-ba15-4685887c1ac9.jpg\" width=\"753\" height=\"633\"><br></p>', '69.00', '233', '1', '2017-10-27 10:01:25', '2017-10-27 10:01:25');

-- ----------------------------
-- Table structure for `imall_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `imall_shipping`;
CREATE TABLE `imall_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `receiver_name` varchar(20) DEFAULT NULL COMMENT '收货姓名',
  `receiver_phone` varchar(20) DEFAULT NULL COMMENT '收货固定电话',
  `receiver_mobile` varchar(20) DEFAULT NULL COMMENT '收货移动电话',
  `receiver_province` varchar(20) DEFAULT NULL COMMENT '省份',
  `receiver_city` varchar(20) DEFAULT NULL COMMENT '城市',
  `receiver_district` varchar(20) DEFAULT NULL COMMENT '区/县',
  `receiver_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `receiver_zip` varchar(6) DEFAULT NULL COMMENT '邮编',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imall_shipping
-- ----------------------------
INSERT INTO `imall_shipping` VALUES ('4', '13', 'geely', '010', '18688888888', '北京', '北京市', '海淀区', '中关村', '100000', '2017-01-22 14:26:25', '2017-01-22 14:26:25');
INSERT INTO `imall_shipping` VALUES ('7', '17', 'Rosen', '13800138000', '13800138000', '北京', '北京', null, '中关村', '100000', '2017-03-29 12:11:01', '2017-03-29 12:11:01');
INSERT INTO `imall_shipping` VALUES ('29', '1', 'Wikim', '13800138000', null, '广东省', '东莞', null, '海淀区中关村', '100000', null, '2017-10-11 09:51:17');
INSERT INTO `imall_shipping` VALUES ('30', '1', 'Tom', '13800138000', null, '北京', '北京', null, '北京国际酒店', '253698', '2017-10-13 09:12:39', '2017-10-13 09:12:39');
INSERT INTO `imall_shipping` VALUES ('31', '22', 'TanWaiKim', '13731689632', null, '广东省', '湛江', null, '湛江人民大道1号', '524569', '2017-10-13 15:24:10', '2017-10-13 15:24:10');

-- ----------------------------
-- Table structure for `imall_user`
-- ----------------------------
DROP TABLE IF EXISTS `imall_user`;
CREATE TABLE `imall_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '用户密码，MD5加密',
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL COMMENT '找回密码问题',
  `answer` varchar(100) DEFAULT NULL COMMENT '找回密码答案',
  `role` int(4) NOT NULL COMMENT '角色0-管理员,1-普通用户',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imall_user
-- ----------------------------
INSERT INTO `imall_user` VALUES ('1', 'admin', '427338237BD929443EC5D48E24FD2B1A', 'admin@happymmall.com', '13800138000', '这是问题', '这是答案', '1', '2016-11-06 16:56:45', '2017-04-04 19:27:36');
INSERT INTO `imall_user` VALUES ('13', 'geely', '08E9A6EA287E70E7E3F7C982BF7923AC', 'geely@happymmall.com', '13800138000', '问题', '答案', '0', '2016-11-19 22:19:25', '2016-11-19 22:19:25');
INSERT INTO `imall_user` VALUES ('17', 'rosen', '095AC193FE2212EEC7A93E8FEFF11902', 'rosen1@happymmall.com', '13800138000', '问题', '答案', '0', '2017-03-17 10:51:33', '2017-04-09 23:13:26');
INSERT INTO `imall_user` VALUES ('21', 'soonerbetter', 'DE6D76FE7C40D5A1A8F04213F2BEFBEE', 'test06@happymmall.com', '13800138000', '105204', '105204', '0', '2017-04-13 21:26:22', '2017-04-13 21:26:22');
INSERT INTO `imall_user` VALUES ('22', 'TanWaiKim', 'D8F80B67499E434EA61ADAF6E6219BF2', '365214598@qq.com', '13631731789', '我要问什么', '我要答什么', '0', '2017-10-13 15:22:36', '2017-10-13 15:22:36');
INSERT INTO `imall_user` VALUES ('24', 'Tan', '3F33FFFC21DC9372EE9301C0ED210883', '863550179@qq.com', '13631789635', '这是我的问题', '这是我的答案', '0', '2017-10-17 15:35:34', '2017-10-17 15:35:34');
INSERT INTO `imall_user` VALUES ('25', 'Li', '0E01FE7416960FFB196BCB9A1DC81448', '69854256@qq.com', '13631789635', '这是我的问题', '这是我的答案', '0', '2017-10-17 15:40:10', '2017-10-17 15:40:10');
INSERT INTO `imall_user` VALUES ('27', 'wei', '448BD0F6C026AE1C09D273CBF21C176D', '863550178@qq.com', '13631789638', '这是我的新问题', '这是我的新答案', '0', '2017-10-17 20:41:09', '2017-10-17 20:41:09');
INSERT INTO `imall_user` VALUES ('28', 'jian', '7EEFFABAEED113FAAC89A2A8510ABA2B', '863550678@qq.com', '13631389638', '这是我的新问题', '这是我的新答案', '0', '2017-10-17 20:41:33', '2017-10-17 20:41:33');
