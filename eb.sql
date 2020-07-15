/*
 Navicat Premium Data Transfer

 Source Server         : mk
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : localhost:3306
 Source Schema         : eb

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : 65001

 Date: 01/12/2018 21:43:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `createTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `creatTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `PK__EASYBUY___C63B5EE724927208`(`id`) USING BTREE,
  UNIQUE INDEX `UQ__EASYBUY___C12AD09D276EDEB3`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 704 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (531, '会员特惠月开始了', '会员特惠月开始了,亲们赶快下单啊,不到剁手誓不罢休啊,不到离婚誓不清空购物车啊。更多优惠，尽在易买网。', '2010-12-22', NULL);
INSERT INTO `news` VALUES (597, '迎双旦促销大酬宾', '迎双旦促销大酬宾', '2010-12-24', NULL);
INSERT INTO `news` VALUES (649, '加入会员，赢千万大礼包', '加入会员，赢千万大礼包', '2010-12-22', NULL);
INSERT INTO `news` VALUES (650, '新年不夜天，通宵也是开张了', '新年不夜天，通宵也是开张了', '2011-05-22', NULL);
INSERT INTO `news` VALUES (651, '积分兑换开始了', '积分兑换开始了', '2010-12-22', NULL);
INSERT INTO `news` VALUES (653, '团购阿迪1折起', '团购阿迪1折起', '2010-12-22', NULL);
INSERT INTO `news` VALUES (664, '最新酷睿笔记本', 'IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。', '2013-08-05', NULL);
INSERT INTO `news` VALUES (675, 'aa', '012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789', '2013-08-14', NULL);
INSERT INTO `news` VALUES (676, 'ResultR', 'ResultResultResultResultResu', '2016-03-28', NULL);
INSERT INTO `news` VALUES (677, '会员特惠月开始了1', '会员特惠月开始了', '2010-12-22', NULL);
INSERT INTO `news` VALUES (678, '迎双旦促销大酬宾2', '迎双旦促销大酬宾', '2010-12-24', NULL);
INSERT INTO `news` VALUES (679, '加入会员，赢千万大礼包3', '加入会员，赢千万大礼包', '2010-12-22', NULL);
INSERT INTO `news` VALUES (680, '新年不夜天，通宵也是开张了4', '新年不夜天，通宵也是开张了', '2011-05-22', NULL);
INSERT INTO `news` VALUES (681, '积分兑换开始了5', '积分兑换开始了', '2010-12-22', NULL);
INSERT INTO `news` VALUES (682, '团购阿迪1折起6', '团购阿迪1折起', '2010-12-22', NULL);
INSERT INTO `news` VALUES (683, '最新酷睿笔记本7', 'IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。', '2013-08-05', NULL);
INSERT INTO `news` VALUES (684, 'aa8', '012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789', '2013-08-14', NULL);
INSERT INTO `news` VALUES (685, 'ResultR9', 'ResultResultResultResultResu', '2016-03-28', NULL);
INSERT INTO `news` VALUES (686, '会员特惠月开始了11', '会员特惠月开始了', '2010-12-22', NULL);
INSERT INTO `news` VALUES (687, '迎双旦促销大酬宾21', '迎双旦促销大酬宾', '2010-12-24', NULL);
INSERT INTO `news` VALUES (688, '加入会员，赢千万大礼包31', '加入会员，赢千万大礼包', '2010-12-22', NULL);
INSERT INTO `news` VALUES (689, '新年不夜天，通宵也是开张了41', '新年不夜天，通宵也是开张了', '2011-05-22', NULL);
INSERT INTO `news` VALUES (690, '积分兑换开始了51', '积分兑换开始了', '2010-12-22', NULL);
INSERT INTO `news` VALUES (691, '团购阿迪1折起61', '团购阿迪1折起', '2010-12-22', NULL);
INSERT INTO `news` VALUES (692, '最新酷睿笔记本71', 'IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。', '2013-08-05', NULL);
INSERT INTO `news` VALUES (693, 'aa81', '012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789', '2013-08-14', NULL);
INSERT INTO `news` VALUES (694, 'ResultR91', 'ResultResultResultResultResu', '2016-03-28', NULL);
INSERT INTO `news` VALUES (695, '会员特惠月开始了111', '会员特惠月开始了', '2010-12-22', NULL);
INSERT INTO `news` VALUES (696, '迎双旦促销大酬宾211', '迎双旦促销大酬宾', '2010-12-24', NULL);
INSERT INTO `news` VALUES (697, '加入会员，赢千万大礼包311', '加入会员，赢千万大礼包', '2010-12-22', NULL);
INSERT INTO `news` VALUES (698, '新年不夜天，通宵也是开张了411', '新年不夜天，通宵也是开张了', '2011-05-22', NULL);
INSERT INTO `news` VALUES (699, '积分兑换开始了511', '积分兑换开始了', '2010-12-22', NULL);
INSERT INTO `news` VALUES (700, '团购阿迪1折起611', '团购阿迪1折起', '2010-12-22', NULL);
INSERT INTO `news` VALUES (701, '最新酷睿笔记本711', 'IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。', '2013-08-05', NULL);
INSERT INTO `news` VALUES (702, 'aa811', '012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789', '2013-08-14', NULL);
INSERT INTO `news` VALUES (703, 'ResultR911', 'ResultResultResultResultResu', '2016-03-28', NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(255) NULL DEFAULT NULL COMMENT '用户主键',
  `productId` int(11) NOT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `cost` float NULL DEFAULT NULL COMMENT '总消费',
  `creatTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `serialNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `useraddressId` int(11) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_user__fk`(`userId`) USING BTREE,
  INDEX `orders_product__fk`(`productId`) USING BTREE,
  INDEX `orders_useraddress__fk`(`useraddressId`) USING BTREE,
  CONSTRAINT `order_user__fk` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_product__fk` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_useraddress__fk` FOREIGN KEY (`useraddressId`) REFERENCES `useraddress` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (89, 1, 796, 1, 0, '2018-11-27 10:59:41', '94WT22YS3W', 4, 1);
INSERT INTO `orders` VALUES (90, 1, 784, 1, 0, '2018-11-27 11:02:35', 'N92G132N3V', 5, 1);
INSERT INTO `orders` VALUES (91, 1, 788, 1, 0, '2018-11-27 11:03:21', 'R3H24PQ6IG', 1, 1);
INSERT INTO `orders` VALUES (92, 1, 789, 1, 0, '2018-11-27 11:16:05', '3X2212Y534', 4, 1);
INSERT INTO `orders` VALUES (93, 1, 797, 1, 0, '2018-11-27 11:17:05', '4GOUCWN7VA', 2, 1);
INSERT INTO `orders` VALUES (94, 1, 790, 1, 0, '2018-11-27 11:27:02', 'BN6YNR53A3', 3, 1);
INSERT INTO `orders` VALUES (103, 1, 791, 1, 0, '2018-11-28 08:52:27', '3GRX5GGRG2', 5, 1);
INSERT INTO `orders` VALUES (104, 1, 791, 1, 0, '2018-11-28 08:52:29', '3GRX5GGRG2', 5, 1);
INSERT INTO `orders` VALUES (105, 1, 871, 4, 0, '2018-11-30 07:25:33', '2336W5GVSF', 1, 1);
INSERT INTO `orders` VALUES (107, 1, 788, 2, 0, '2018-12-01 07:43:14', 'G28UHE3CWR', 1, 1);
INSERT INTO `orders` VALUES (108, 1, 800, 3, 0, '2018-12-01 07:58:46', 'B0PSX3AUK2', 1, 1);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `price` float NOT NULL COMMENT '价格',
  `count` int(10) NOT NULL COMMENT '库存',
  `type1Id` int(10) NULL DEFAULT NULL COMMENT '分类1',
  `type2Id` int(10) NULL DEFAULT NULL COMMENT '分类2',
  `type3Id` int(10) NULL DEFAULT NULL COMMENT '分类3',
  `fileName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `isDelete` int(1) NULL DEFAULT 0 COMMENT '是否删除(1：删除 0：未删除)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `PK__EASYBUY___94F6E55132E0915F`(`id`) USING BTREE,
  INDEX `product_type1__fk`(`type1Id`) USING BTREE,
  INDEX `product_type2__fk`(`type2Id`) USING BTREE,
  INDEX `product_type3__fk`(`type3Id`) USING BTREE,
  CONSTRAINT `product_type1__fk` FOREIGN KEY (`type1Id`) REFERENCES `type1` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_type2__fk` FOREIGN KEY (`type2Id`) REFERENCES `type2` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_type3__fk` FOREIGN KEY (`type3Id`) REFERENCES `type3` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1194 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '电脑', '联想电脑', 500, 10, 697, 697, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (2, '球', '篮球', 400, 10, 697, 697, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (780, '香奈儿222', '香奈儿222', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (781, '洗面奶', '洗面奶', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (782, '啫喱水', '啫喱水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (783, '香水5852', '香水5852', 152, 152, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (784, '香水', '香水', 152, 152, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (785, '润肤露', '润肤露', 45, 45, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (786, '洁面装', '洁面装', 156, 156, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (787, '电饭锅', '电饭锅', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (788, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (789, '坚果套餐', '坚果套餐', 158, 158, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (790, '超甜蜜崭', '超甜蜜崭', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (791, '华为2566', '华为2566', 589, 589, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (792, '荣耀3C', '荣耀3C', 589, 589, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (793, '小米手环', '小米手环', 963, 963, 698, 698, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (794, '华为2265', '华为2265', 896, 896, 699, 699, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (795, '越南坚果', '越南坚果', 520, 520, 700, 700, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (796, '日本进口马桶', '日本进口马桶', 5866, 5866, 701, 701, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (797, '联想Y系列', '联想Y系列', 569, 569, 702, 702, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (798, '脑白金1号', '脑白金1号', 589, 589, 697, 697, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (799, '香奈儿222', '香奈儿222', 152, 152, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (800, '洗面奶', '洗面奶', 152, 152, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (801, '啫喱水', '啫喱水', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (802, '香水5852', '香水5852', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (803, '香水', '香水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (804, '润肤露', '润肤露', 45, 45, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (805, '洁面装', '洁面装', 156, 156, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (806, '电饭锅', '电饭锅', 158, 158, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (807, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (808, '坚果套餐', '坚果套餐', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (809, '超甜蜜崭', '超甜蜜崭', 589, 589, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (810, '华为2566', '华为2566', 589, 589, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (811, '荣耀3C', '荣耀3C', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (812, '小米手环', '小米手环', 963, 963, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (813, '华为2265', '华为2265', 896, 896, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (814, '越南坚果', '越南坚果', 520, 520, 698, 701, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (815, '日本进口马桶', '日本进口马桶', 5866, 5866, 699, 702, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (816, '联想Y系列', '联想Y系列', 569, 569, 700, 697, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (817, '脑白金1号', '脑白金1号', 589, 589, 701, 698, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (818, '莫里斯按', '香奈儿222', 589, 589, 702, 699, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (819, '三鹿好奶粉', '洗面奶', 859, 859, 697, 700, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (820, '儿童牛奶', '啫喱水', 5896, 5896, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (821, '软沙发', '香水5852', 8596, 8596, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (822, '收纳盒', '香水', 5966, 5966, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (823, '洗衣液', '润肤露', 58, 58, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (824, '红短沙发', '洁面装', 596, 596, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (825, '新西兰奶粉', '电饭锅', 5896, 5896, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (826, '婴儿车', '婴儿喂奶装', 11000, 11000, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (827, '夏款婴儿车', '坚果套餐', 963, 963, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (828, '抗压旅行箱', '超甜蜜崭', 569, 569, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (829, '透明手提箱', '华为2566', 8596, 8596, 698, 701, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (830, '婴儿果粉', '荣耀3C', 5896, 5896, 699, 702, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (831, '椰子粉', '小米手环', 5963, 5963, 700, 697, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (832, '坚果蛋糕', '华为2265', 200, 200, 701, 698, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (833, '编制手提箱', '越南坚果', 5896, 5896, 702, 699, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (834, '纸箱', '日本进口马桶', 5896, 5896, 697, 700, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (835, '健胃液', '联想Y系列', 152, 152, 698, 701, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (836, '联想NTC', '脑白金1号', 8596, 8596, 699, 702, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (837, '香水1', '香奈儿222', 100, 100, 700, 697, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (838, '香水2', '洗面奶', 100, 100, 701, 698, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (839, '香水3', '啫喱水', 100, 100, 702, 699, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (840, '香水4', '香水5852', 100, 100, 697, 700, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (841, '香水5', '香水', 100, 100, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (842, '香水6', '润肤露', 1, 1, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (843, '香奈儿222', '洁面装', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (844, '洗面奶', '电饭锅', 152, 152, 698, 701, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (845, '啫喱水', '婴儿喂奶装', 152, 152, 699, 702, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (846, '香水5852', '坚果套餐', 152, 152, 700, 697, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (847, '香水', '超甜蜜崭', 152, 152, 701, 698, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (848, '香奈儿222', '华为2566', 45, 45, 702, 699, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (849, '洗面奶', '荣耀3C', 156, 156, 697, 700, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (850, '啫喱水', '小米手环', 158, 158, 698, 701, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (851, '香水5852', '华为2265', 569, 569, 699, 702, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (852, '香水', '越南坚果', 158, 158, 700, 697, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (853, '润肤露', '日本进口马桶', 589, 589, 701, 698, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (854, '洁面装', '联想Y系列', 589, 589, 702, 699, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (855, '电饭锅', '脑白金1号', 589, 589, 697, 700, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (856, '婴儿喂奶装', '香奈儿222', 963, 963, 698, 701, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (857, '坚果套餐', '洗面奶', 896, 896, 699, 702, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (858, '超甜蜜崭', '啫喱水', 520, 520, 700, 697, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (859, '华为2566', '香水5852', 5866, 5866, 701, 701, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (860, '荣耀3C', '香水', 569, 569, 702, 702, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (861, '小米手环', '润肤露', 589, 589, 697, 697, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (862, '华为2265', '洁面装', 589, 589, 697, 698, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (863, '越南坚果', '电饭锅', 859, 859, 697, 699, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (864, '日本进口马桶', '婴儿喂奶装', 5896, 5896, 697, 700, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (865, '联想Y系列', '坚果套餐', 8596, 8596, 698, 701, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (866, '脑白金1号', '超甜蜜崭', 5966, 5966, 699, 702, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (867, '莫里斯按', '华为2566', 58, 58, 700, 697, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (868, '三鹿好奶粉', '荣耀3C', 596, 596, 701, 698, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (869, '儿童牛奶', '小米手环', 5896, 5896, 702, 699, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (870, '软沙发', '华为2265', 11000, 11000, 697, 700, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (871, '收纳盒', '越南坚果', 963, 963, 698, 701, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (872, '洗衣液', '日本进口马桶', 569, 569, 699, 702, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (873, '红短沙发', '联想Y系列', 8596, 8596, 700, 697, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (874, '新西兰奶粉', '脑白金1号', 5896, 5896, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (875, '婴儿车', '香奈儿222', 5963, 5963, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (876, '夏款婴儿车', '洗面奶', 200, 200, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (877, '抗压旅行箱', '啫喱水', 5896, 5896, 698, 698, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (878, '透明手提箱', '香水5852', 5896, 5896, 699, 699, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (879, '婴儿果粉', '香水', 152, 152, 700, 700, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (880, '椰子粉', '润肤露', 8596, 8596, 701, 701, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (881, '坚果蛋糕', '洁面装', 100, 100, 702, 702, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (882, '编制手提箱', '电饭锅', 100, 100, 697, 697, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (883, '纸箱', '婴儿喂奶装', 100, 100, 697, 698, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (884, '健胃液', '坚果套餐', 100, 100, 697, 699, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (885, '联想NTC', '超甜蜜崭', 100, 100, 697, 700, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (985, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (986, '坚果套餐', '坚果套餐', 158, 158, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (987, '超甜蜜崭', '超甜蜜崭', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (988, '华为2566', '华为2566', 589, 589, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (989, '荣耀3C', '荣耀3C', 589, 589, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (990, '小米手环', '小米手环', 963, 963, 698, 698, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (991, '华为2265', '华为2265', 896, 896, 699, 699, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (992, '越南坚果', '越南坚果', 520, 520, 700, 700, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (993, '日本进口马桶', '日本进口马桶', 5866, 5866, 701, 701, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (994, '联想Y系列', '联想Y系列', 569, 569, 702, 702, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (995, '脑白金1号', '脑白金1号', 589, 589, 697, 697, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (996, '香奈儿222', '香奈儿222', 152, 152, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (997, '洗面奶', '洗面奶', 152, 152, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (998, '啫喱水', '啫喱水', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (999, '香水5852', '香水5852', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (1000, '香水', '香水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (1001, '润肤露', '润肤露', 45, 45, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (1002, '洁面装', '洁面装', 156, 156, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (1003, '电饭锅', '电饭锅', 158, 158, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (1004, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (1005, '坚果套餐', '坚果套餐', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (1006, '超甜蜜崭', '超甜蜜崭', 589, 589, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (1007, '华为2566', '华为2566', 589, 589, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (1008, '荣耀3C', '荣耀3C', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (1009, '小米手环', '小米手环', 963, 963, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (1010, '华为2265', '华为2265', 896, 896, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (1011, '越南坚果', '越南坚果', 520, 520, 698, 701, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (1012, '日本进口马桶', '日本进口马桶', 5866, 5866, 699, 702, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (1013, '联想Y系列', '联想Y系列', 569, 569, 700, 697, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (1014, '脑白金1号', '脑白金1号', 589, 589, 701, 698, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (1015, '莫里斯按', '香奈儿222', 589, 589, 702, 699, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (1016, '三鹿好奶粉', '洗面奶', 859, 859, 697, 700, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (1017, '儿童牛奶', '啫喱水', 5896, 5896, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1018, '软沙发', '香水5852', 8596, 8596, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1019, '收纳盒', '香水', 5966, 5966, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1020, '电脑', '联想电脑', 500, 10, 697, 697, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1021, '球', '篮球', 400, 10, 697, 697, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1022, '香奈儿222', '香奈儿222', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1023, '洗面奶', '洗面奶', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (1024, '啫喱水', '啫喱水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (1025, '香水5852', '香水5852', 152, 152, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (1026, '香水', '香水', 152, 152, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (1027, '润肤露', '润肤露', 45, 45, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (1028, '洁面装', '洁面装', 156, 156, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (1029, '电饭锅', '电饭锅', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (1030, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (1031, '坚果套餐', '坚果套餐', 158, 158, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (1032, '超甜蜜崭', '超甜蜜崭', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (1033, '华为2566', '华为2566', 589, 589, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (1034, '荣耀3C', '荣耀3C', 589, 589, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (1035, '小米手环', '小米手环', 963, 963, 698, 698, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (1036, '华为2265', '华为2265', 896, 896, 699, 699, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (1037, '越南坚果', '越南坚果', 520, 520, 700, 700, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (1038, '日本进口马桶', '日本进口马桶', 5866, 5866, 701, 701, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (1039, '联想Y系列', '联想Y系列', 569, 569, 702, 702, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (1040, '脑白金1号', '脑白金1号', 589, 589, 697, 697, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (1041, '香奈儿222', '香奈儿222', 152, 152, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1042, '洗面奶', '洗面奶', 152, 152, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1043, '啫喱水', '啫喱水', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1044, '香水5852', '香水5852', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (1045, '香水', '香水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (1046, '润肤露', '润肤露', 45, 45, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (1047, '洁面装', '洁面装', 156, 156, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (1048, '电饭锅', '电饭锅', 158, 158, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (1049, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (1050, '坚果套餐', '坚果套餐', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (1051, '超甜蜜崭', '超甜蜜崭', 589, 589, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (1052, '华为2566', '华为2566', 589, 589, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (1053, '荣耀3C', '荣耀3C', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (1054, '小米手环', '小米手环', 963, 963, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (1055, '华为2265', '华为2265', 896, 896, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (1056, '越南坚果', '越南坚果', 520, 520, 698, 701, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (1057, '日本进口马桶', '日本进口马桶', 5866, 5866, 699, 702, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (1058, '联想Y系列', '联想Y系列', 569, 569, 700, 697, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (1059, '脑白金1号', '脑白金1号', 589, 589, 701, 698, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (1060, '莫里斯按', '香奈儿222', 589, 589, 702, 699, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (1061, '三鹿好奶粉', '洗面奶', 859, 859, 697, 700, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (1062, '儿童牛奶', '啫喱水', 5896, 5896, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1063, '软沙发', '香水5852', 8596, 8596, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1064, '收纳盒', '香水', 5966, 5966, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1065, '电脑', '联想电脑', 500, 10, 697, 697, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1066, '球', '篮球', 400, 10, 697, 697, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1067, '香奈儿222', '香奈儿222', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1068, '洗面奶', '洗面奶', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (1069, '啫喱水', '啫喱水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (1070, '香水5852', '香水5852', 152, 152, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (1071, '香水', '香水', 152, 152, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (1072, '润肤露', '润肤露', 45, 45, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (1073, '洁面装', '洁面装', 156, 156, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (1074, '电饭锅', '电饭锅', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (1075, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (1076, '坚果套餐', '坚果套餐', 158, 158, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (1077, '超甜蜜崭', '超甜蜜崭', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (1078, '华为2566', '华为2566', 589, 589, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (1079, '荣耀3C', '荣耀3C', 589, 589, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (1080, '小米手环', '小米手环', 963, 963, 698, 698, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (1081, '华为2265', '华为2265', 896, 896, 699, 699, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (1082, '越南坚果', '越南坚果', 520, 520, 700, 700, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (1083, '日本进口马桶', '日本进口马桶', 5866, 5866, 701, 701, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (1084, '电脑', '联想电脑', 500, 10, 697, 697, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1085, '联想Y系列', '联想Y系列', 569, 569, 702, 702, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (1086, '球', '篮球', 400, 10, 697, 697, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1087, '脑白金1号', '脑白金1号', 589, 589, 697, 697, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (1088, '香奈儿222', '香奈儿222', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1089, '香奈儿222', '香奈儿222', 152, 152, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1090, '洗面奶', '洗面奶', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (1091, '洗面奶', '洗面奶', 152, 152, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1092, '啫喱水', '啫喱水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (1093, '啫喱水', '啫喱水', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1094, '香水5852', '香水5852', 152, 152, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (1095, '香水5852', '香水5852', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (1096, '香水', '香水', 152, 152, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (1097, '香水', '香水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (1098, '润肤露', '润肤露', 45, 45, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (1099, '润肤露', '润肤露', 45, 45, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (1100, '洁面装', '洁面装', 156, 156, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (1101, '洁面装', '洁面装', 156, 156, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (1102, '电饭锅', '电饭锅', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (1103, '电饭锅', '电饭锅', 158, 158, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (1104, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (1105, '坚果套餐', '坚果套餐', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (1106, '超甜蜜崭', '超甜蜜崭', 589, 589, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (1107, '华为2566', '华为2566', 589, 589, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (1108, '荣耀3C', '荣耀3C', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (1109, '小米手环', '小米手环', 963, 963, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (1110, '华为2265', '华为2265', 896, 896, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (1111, '越南坚果', '越南坚果', 520, 520, 698, 701, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (1112, '日本进口马桶', '日本进口马桶', 5866, 5866, 699, 702, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (1113, '联想Y系列', '联想Y系列', 569, 569, 700, 697, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (1114, '脑白金1号', '脑白金1号', 589, 589, 701, 698, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (1115, '莫里斯按', '香奈儿222', 589, 589, 702, 699, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (1116, '三鹿好奶粉', '洗面奶', 859, 859, 697, 700, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (1117, '儿童牛奶', '啫喱水', 5896, 5896, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1118, '软沙发', '香水5852', 8596, 8596, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1119, '收纳盒', '香水', 5966, 5966, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1120, '电脑', '联想电脑', 500, 10, 697, 697, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1121, '球', '篮球', 400, 10, 697, 697, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1122, '香奈儿222', '香奈儿222', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1123, '洗面奶', '洗面奶', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (1124, '啫喱水', '啫喱水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (1125, '香水5852', '香水5852', 152, 152, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (1126, '香水', '香水', 152, 152, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (1127, '润肤露', '润肤露', 45, 45, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (1128, '洁面装', '洁面装', 156, 156, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (1129, '电饭锅', '电饭锅', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (1130, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (1131, '坚果套餐', '坚果套餐', 158, 158, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (1132, '超甜蜜崭', '超甜蜜崭', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (1133, '华为2566', '华为2566', 589, 589, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (1134, '荣耀3C', '荣耀3C', 589, 589, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (1135, '小米手环', '小米手环', 963, 963, 698, 698, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (1136, '华为2265', '华为2265', 896, 896, 699, 699, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (1137, '越南坚果', '越南坚果', 520, 520, 700, 700, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (1138, '日本进口马桶', '日本进口马桶', 5866, 5866, 701, 701, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (1139, '联想Y系列', '联想Y系列', 569, 569, 702, 702, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (1140, '脑白金1号', '脑白金1号', 589, 589, 697, 697, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (1141, '香奈儿222', '香奈儿222', 152, 152, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1142, '洗面奶', '洗面奶', 152, 152, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1143, '啫喱水', '啫喱水', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1144, '香水5852', '香水5852', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (1145, '香水', '香水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (1146, '润肤露', '润肤露', 45, 45, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (1147, '洁面装', '洁面装', 156, 156, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (1148, '电饭锅', '电饭锅', 158, 158, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (1149, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (1150, '坚果套餐', '坚果套餐', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (1151, '超甜蜜崭', '超甜蜜崭', 589, 589, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (1152, '华为2566', '华为2566', 589, 589, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (1153, '荣耀3C', '荣耀3C', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (1154, '小米手环', '小米手环', 963, 963, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (1155, '华为2265', '华为2265', 896, 896, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (1156, '越南坚果', '越南坚果', 520, 520, 698, 701, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (1157, '日本进口马桶', '日本进口马桶', 5866, 5866, 699, 702, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (1158, '联想Y系列', '联想Y系列', 569, 569, 700, 697, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (1159, '脑白金1号', '脑白金1号', 589, 589, 701, 698, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (1160, '莫里斯按', '香奈儿222', 589, 589, 702, 699, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (1161, '三鹿好奶粉', '洗面奶', 859, 859, 697, 700, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (1162, '儿童牛奶', '啫喱水', 5896, 5896, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1163, '软沙发', '香水5852', 8596, 8596, 697, 702, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1164, '收纳盒', '香水', 5966, 5966, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1165, '电脑', '联想电脑', 500, 10, 697, 697, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1166, '球', '篮球', 400, 10, 697, 697, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1167, '香奈儿222', '香奈儿222', 152, 152, 697, 697, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1168, '洗面奶', '洗面奶', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (1169, '啫喱水', '啫喱水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (1170, '香水5852', '香水5852', 152, 152, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (1171, '香水', '香水', 152, 152, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (1172, '润肤露', '润肤露', 45, 45, 702, 702, 702, 'baby_6.jpg', 0);
INSERT INTO `product` VALUES (1173, '洁面装', '洁面装', 156, 156, 697, 697, 699, 'bk_2.jpg', 0);
INSERT INTO `product` VALUES (1174, '电饭锅', '电饭锅', 158, 158, 698, 698, 700, 'bk_1.jpg', 0);
INSERT INTO `product` VALUES (1175, '婴儿喂奶装', '婴儿喂奶装', 569, 569, 699, 699, 701, 'bk_3.jpg', 0);
INSERT INTO `product` VALUES (1176, '坚果套餐', '坚果套餐', 158, 158, 700, 700, 702, 'bk_4.jpg', 0);
INSERT INTO `product` VALUES (1177, '超甜蜜崭', '超甜蜜崭', 589, 589, 701, 701, 700, 'bk_5.jpg', 0);
INSERT INTO `product` VALUES (1178, '华为2566', '华为2566', 589, 589, 702, 702, 701, 'de1.jpg', 0);
INSERT INTO `product` VALUES (1179, '荣耀3C', '荣耀3C', 589, 589, 697, 697, 702, 'de2.jpg', 0);
INSERT INTO `product` VALUES (1180, '小米手环', '小米手环', 963, 963, 698, 698, 701, 'de3.jpg', 0);
INSERT INTO `product` VALUES (1181, '华为2265', '华为2265', 896, 896, 699, 699, 702, 'de4.jpg', 0);
INSERT INTO `product` VALUES (1182, '越南坚果', '越南坚果', 520, 520, 700, 700, 701, 'de5.jpg', 0);
INSERT INTO `product` VALUES (1183, '日本进口马桶', '日本进口马桶', 5866, 5866, 701, 701, 702, 'food_1.jpg', 0);
INSERT INTO `product` VALUES (1184, '联想Y系列', '联想Y系列', 569, 569, 702, 702, 701, 'food_2.jpg', 0);
INSERT INTO `product` VALUES (1185, '脑白金1号', '脑白金1号', 589, 589, 697, 697, 702, 'food_3.jpg', 0);
INSERT INTO `product` VALUES (1186, '香奈儿222', '香奈儿222', 152, 152, 697, 701, 697, '2.jpg', 0);
INSERT INTO `product` VALUES (1187, '洗面奶', '洗面奶', 152, 152, 697, 713, 697, '3.jpg', 0);
INSERT INTO `product` VALUES (1188, '啫喱水', '啫喱水', 152, 152, 697, 713, 697, 'baby_1.jpg', 0);
INSERT INTO `product` VALUES (1189, '香水5852', '香水5852', 152, 152, 698, 698, 698, 'baby_2.jpg', 0);
INSERT INTO `product` VALUES (1190, '香水', '香水', 152, 152, 699, 699, 699, 'baby_3.jpg', 0);
INSERT INTO `product` VALUES (1191, '润肤露', '润肤露', 45, 45, 700, 700, 700, 'baby_4.jpg', 0);
INSERT INTO `product` VALUES (1192, '洁面装', '洁面装', 156, 156, 701, 701, 701, 'baby_5.jpg', 0);
INSERT INTO `product` VALUES (1193, '电饭锅', '电饭锅', 158, 158, 702, 702, 702, 'baby_6.jpg', 0);

-- ----------------------------
-- Table structure for type1
-- ----------------------------
DROP TABLE IF EXISTS `type1`;
CREATE TABLE `type1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `PK__EASYBUY___9EC2A4E236B12243`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 707 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type1
-- ----------------------------
INSERT INTO `type1` VALUES (697, '家用');
INSERT INTO `type1` VALUES (698, '化妆品');
INSERT INTO `type1` VALUES (699, '运动系列');
INSERT INTO `type1` VALUES (700, '电子产品');
INSERT INTO `type1` VALUES (701, '吃货必备');
INSERT INTO `type1` VALUES (702, '打折促销');
INSERT INTO `type1` VALUES (703, '家居');

-- ----------------------------
-- Table structure for type2
-- ----------------------------
DROP TABLE IF EXISTS `type2`;
CREATE TABLE `type2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `parentId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `PK__EASYBUY___9EC2A4E236B12243`(`id`) USING BTREE,
  INDEX `type2_type1__fk`(`parentId`) USING BTREE,
  CONSTRAINT `type2_type1__fk` FOREIGN KEY (`parentId`) REFERENCES `type1` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 727 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type2
-- ----------------------------
INSERT INTO `type2` VALUES (697, '洗漱', 697);
INSERT INTO `type2` VALUES (698, '面部护理', 699);
INSERT INTO `type2` VALUES (699, '餐具', 699);
INSERT INTO `type2` VALUES (700, '位具', 700);
INSERT INTO `type2` VALUES (701, '零食', 700);
INSERT INTO `type2` VALUES (702, '手机', 701);
INSERT INTO `type2` VALUES (703, '手环', 702);
INSERT INTO `type2` VALUES (704, '老年营养品', 702);
INSERT INTO `type2` VALUES (705, '中年营养品', 698);
INSERT INTO `type2` VALUES (706, '小孩零食', 698);
INSERT INTO `type2` VALUES (707, '旅行箱', 702);
INSERT INTO `type2` VALUES (708, '手提箱', 699);
INSERT INTO `type2` VALUES (709, '电脑', 700);
INSERT INTO `type2` VALUES (710, '客厅专用', 701);
INSERT INTO `type2` VALUES (711, '家具', 702);
INSERT INTO `type2` VALUES (712, '书籍', 698);
INSERT INTO `type2` VALUES (713, '游戏', 697);
INSERT INTO `type2` VALUES (714, '动漫', 699);
INSERT INTO `type2` VALUES (715, '影视', 699);
INSERT INTO `type2` VALUES (716, '家电', 700);
INSERT INTO `type2` VALUES (717, '数码', 700);
INSERT INTO `type2` VALUES (718, '影视', 701);
INSERT INTO `type2` VALUES (719, '美食', 702);
INSERT INTO `type2` VALUES (720, '生鲜', 702);
INSERT INTO `type2` VALUES (721, '零食', 698);
INSERT INTO `type2` VALUES (722, '工具', 698);
INSERT INTO `type2` VALUES (723, '装修', 702);
INSERT INTO `type2` VALUES (724, '建材', 699);
INSERT INTO `type2` VALUES (725, '汽车', 700);
INSERT INTO `type2` VALUES (726, '二手品', 701);

-- ----------------------------
-- Table structure for type3
-- ----------------------------
DROP TABLE IF EXISTS `type3`;
CREATE TABLE `type3`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `parentId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `PK__EASYBUY___9EC2A4E236B12243`(`id`) USING BTREE,
  INDEX `type3_type2__fk`(`parentId`) USING BTREE,
  CONSTRAINT `type3_type2__fk` FOREIGN KEY (`parentId`) REFERENCES `type2` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 734 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type3
-- ----------------------------
INSERT INTO `type3` VALUES (697, '洗发', 697);
INSERT INTO `type3` VALUES (698, '叉子', 697);
INSERT INTO `type3` VALUES (699, '锅', 698);
INSERT INTO `type3` VALUES (700, '坚果', 699);
INSERT INTO `type3` VALUES (701, '蜜饯', 700);
INSERT INTO `type3` VALUES (702, '孕期教育', 701);
INSERT INTO `type3` VALUES (703, '华为手机', 702);
INSERT INTO `type3` VALUES (704, '联想手机', 703);
INSERT INTO `type3` VALUES (705, '小米手环', 704);
INSERT INTO `type3` VALUES (706, '脑白金', 705);
INSERT INTO `type3` VALUES (707, '大型', 706);
INSERT INTO `type3` VALUES (708, '小型', 707);
INSERT INTO `type3` VALUES (709, '美妆', 714);
INSERT INTO `type3` VALUES (710, '洗护', 715);
INSERT INTO `type3` VALUES (711, '眼睛', 716);
INSERT INTO `type3` VALUES (712, '书架', 717);
INSERT INTO `type3` VALUES (713, '花架', 718);
INSERT INTO `type3` VALUES (714, '电脑椅', 719);
INSERT INTO `type3` VALUES (715, '餐桌', 720);
INSERT INTO `type3` VALUES (716, '珍珠', 721);
INSERT INTO `type3` VALUES (717, '钻石', 722);
INSERT INTO `type3` VALUES (718, '项链', 723);
INSERT INTO `type3` VALUES (719, '儿童床', 724);
INSERT INTO `type3` VALUES (720, '床垫', 725);
INSERT INTO `type3` VALUES (721, '床单', 726);
INSERT INTO `type3` VALUES (722, '被子', 714);
INSERT INTO `type3` VALUES (723, '被罩', 715);
INSERT INTO `type3` VALUES (724, '茶几', 716);
INSERT INTO `type3` VALUES (725, '电视柜', 717);
INSERT INTO `type3` VALUES (726, '衣柜', 718);
INSERT INTO `type3` VALUES (727, '桌布', 719);
INSERT INTO `type3` VALUES (728, '抱枕', 720);
INSERT INTO `type3` VALUES (729, '创可贴', 697);
INSERT INTO `type3` VALUES (730, '消毒品', 697);
INSERT INTO `type3` VALUES (731, '体温计', 697);
INSERT INTO `type3` VALUES (732, '叉子', 713);
INSERT INTO `type3` VALUES (733, '毛笔', 713);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '性别(1:男 0：女)',
  `identityCode` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `fileName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `PK__EASYBUY___C96109CC3A81B327`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '马凯', 'makai', '123123', '男', '610502199505126616', '123123@qq.com', '15619184702', '2.jpg', NULL);

-- ----------------------------
-- Table structure for useraddress
-- ----------------------------
DROP TABLE IF EXISTS `useraddress`;
CREATE TABLE `useraddress`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `useraddress_user__fk`(`userId`) USING BTREE,
  CONSTRAINT `useraddress_user__fk` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of useraddress
-- ----------------------------
INSERT INTO `useraddress` VALUES (1, 1, '小寨');
INSERT INTO `useraddress` VALUES (2, 1, '凤栖原');
INSERT INTO `useraddress` VALUES (3, 1, '陕西西安小寨');
INSERT INTO `useraddress` VALUES (4, 1, '陕西宝鸡九龙山');
INSERT INTO `useraddress` VALUES (5, 1, '陕西西安小寨村');

SET FOREIGN_KEY_CHECKS = 1;
