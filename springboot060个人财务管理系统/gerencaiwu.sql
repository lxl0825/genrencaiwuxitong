/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : gerencaiwu

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 28/02/2024 19:48:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for a_fenlei
-- ----------------------------
DROP TABLE IF EXISTS `a_fenlei`;
CREATE TABLE `a_fenlei`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类名称',
  `userId` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '账单分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_fenlei
-- ----------------------------
INSERT INTO `a_fenlei` VALUES (5, '学习', 1);
INSERT INTO `a_fenlei` VALUES (6, '游戏', 1);
INSERT INTO `a_fenlei` VALUES (7, '饮食', 1);
INSERT INTO `a_fenlei` VALUES (8, '游戏', 100);
INSERT INTO `a_fenlei` VALUES (9, '交通', 100);
INSERT INTO `a_fenlei` VALUES (10, '饮食', 100);

-- ----------------------------
-- Table structure for a_shouru
-- ----------------------------
DROP TABLE IF EXISTS `a_shouru`;
CREATE TABLE `a_shouru`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账单名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账单类型',
  `payAmount` double(10, 2) NULL DEFAULT NULL COMMENT '收入金额',
  `payWay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收入方式',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '收入日期',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `userId` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `typeId` int(0) NULL DEFAULT NULL COMMENT '类型id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '收入账单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_shouru
-- ----------------------------
INSERT INTO `a_shouru` VALUES (10, '11', NULL, 100.00, '现金', '2024-02-23 00:00:00', NULL, 1, '300', 5);
INSERT INTO `a_shouru` VALUES (11, '收入', '游戏', 200.00, '现金', '2024-02-23 00:00:00', 'admin', 1, '333', 6);
INSERT INTO `a_shouru` VALUES (12, '333', NULL, 400.00, '现金', '2024-02-23 00:00:00', NULL, 1, '333', 7);
INSERT INTO `a_shouru` VALUES (13, '1', NULL, 100.00, '现金', '2024-02-23 00:00:00', NULL, 100, '33', 8);
INSERT INTO `a_shouru` VALUES (14, '2', NULL, 300.00, '转账', '2024-02-24 00:00:00', NULL, 100, NULL, 9);
INSERT INTO `a_shouru` VALUES (15, '3', NULL, 200.00, '转账', '2024-02-24 00:00:00', NULL, 100, '3', 10);

-- ----------------------------
-- Table structure for a_yusuan
-- ----------------------------
DROP TABLE IF EXISTS `a_yusuan`;
CREATE TABLE `a_yusuan`  (
  `id` int(0) NOT NULL,
  `typeId` int(0) NULL DEFAULT NULL COMMENT '分类id',
  `amount` double(10, 2) NULL DEFAULT NULL COMMENT '预算金额',
  `userId` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '预算管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_yusuan
-- ----------------------------
INSERT INTO `a_yusuan` VALUES (8, 8, 500.00, 100);
INSERT INTO `a_yusuan` VALUES (9, 9, 300.00, 100);

-- ----------------------------
-- Table structure for a_zhaiwu
-- ----------------------------
DROP TABLE IF EXISTS `a_zhaiwu`;
CREATE TABLE `a_zhaiwu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '债务名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '债务类型',
  `payAmount` double(10, 2) NULL DEFAULT NULL COMMENT '债务金额',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '债务日期',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `userId` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '债务列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_zhaiwu
-- ----------------------------
INSERT INTO `a_zhaiwu` VALUES (6, '1', '欠款', 200.00, '2024-02-23 00:00:00', NULL, 1, '333');
INSERT INTO `a_zhaiwu` VALUES (7, '大大', '追债', 200.00, '2024-02-22 00:00:00', NULL, 1, '33');
INSERT INTO `a_zhaiwu` VALUES (8, '1', '欠款', 200.00, '2024-02-23 00:00:00', NULL, 100, NULL);
INSERT INTO `a_zhaiwu` VALUES (9, '2', '追债', 300.00, '2024-02-23 00:00:00', NULL, 100, '3');
INSERT INTO `a_zhaiwu` VALUES (10, '3', '欠款', 300.00, '2024-02-23 00:00:00', NULL, 100, NULL);

-- ----------------------------
-- Table structure for a_zhaiwulishi
-- ----------------------------
DROP TABLE IF EXISTS `a_zhaiwulishi`;
CREATE TABLE `a_zhaiwulishi`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `zhaiwuId` int(0) NULL DEFAULT NULL COMMENT '债务id',
  `amount` double(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `userId` int(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '债务历史' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_zhaiwulishi
-- ----------------------------
INSERT INTO `a_zhaiwulishi` VALUES (15, 6, 100.00, '欠款', '2024-02-23 00:18:08', 1, '1');
INSERT INTO `a_zhaiwulishi` VALUES (16, 8, 100.00, '欠款', '2024-02-23 00:40:57', 100, '1');
INSERT INTO `a_zhaiwulishi` VALUES (17, 9, 100.00, '追债', '2024-02-23 00:41:18', 100, '2');

-- ----------------------------
-- Table structure for a_zhichu
-- ----------------------------
DROP TABLE IF EXISTS `a_zhichu`;
CREATE TABLE `a_zhichu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账单名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账单类型',
  `payAmount` double(10, 2) NULL DEFAULT NULL COMMENT '支出金额',
  `payWay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '支出方式',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '支出日期',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `userId` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `typeId` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '支出账单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_zhichu
-- ----------------------------
INSERT INTO `a_zhichu` VALUES (7, '333', NULL, 300.00, '转账', '2024-02-24 00:00:00', NULL, 1, '333', 7);
INSERT INTO `a_zhichu` VALUES (8, '333', NULL, 400.00, '现金', '2024-02-23 00:00:00', NULL, 1, '333', 6);
INSERT INTO `a_zhichu` VALUES (9, '333', NULL, 400.00, '现金', '2024-02-23 00:00:00', NULL, 1, '33', 5);
INSERT INTO `a_zhichu` VALUES (10, '1', NULL, 200.00, '现金', '2024-02-23 00:00:00', NULL, 100, '3', 8);
INSERT INTO `a_zhichu` VALUES (11, '2', NULL, 300.00, '现金', '2024-02-23 00:00:00', NULL, 100, '3', 9);
INSERT INTO `a_zhichu` VALUES (12, '3', NULL, 300.00, '现金', '2024-02-23 00:00:00', NULL, 100, '3', 10);
INSERT INTO `a_zhichu` VALUES (14, '4', NULL, 400.00, '现金', '2024-02-23 00:00:00', NULL, 100, '3', 8);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'a_fenlei', '账单分类', NULL, NULL, 'Fenlei', 'crud', '', 'com.gerencaiwu.system', 'system', 'fenlei', '账单分类', 'gerencaiwu', '0', '/', NULL, 'admin', '2024-02-21 20:17:29', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (2, 'a_shouru', '收入账单', NULL, NULL, 'Shouru', 'crud', '', 'com.gerencaiwu.system', 'system', 'shouru', '收入账单', 'gerencaiwu', '0', '/', NULL, 'admin', '2024-02-21 20:17:29', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (3, 'a_yusuan', '预算管理', NULL, NULL, 'Yusuan', 'crud', '', 'com.gerencaiwu.system', 'system', 'yusuan', '预算管理', 'gerencaiwu', '0', '/', NULL, 'admin', '2024-02-21 20:17:29', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (4, 'a_zhaiwu', '债务列表', NULL, NULL, 'Zhaiwu', 'crud', '', 'com.gerencaiwu.system', 'system', 'zhaiwu', '债务列', 'gerencaiwu', '0', '/', NULL, 'admin', '2024-02-21 20:17:29', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (5, 'a_zhaiwulishi', '债务历史', NULL, NULL, 'Zhaiwulishi', 'crud', '', 'com.gerencaiwu.system', 'system', 'zhaiwulishi', '债务历史', 'gerencaiwu', '0', '/', NULL, 'admin', '2024-02-21 20:17:29', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (6, 'a_zhichu', '支出账单', NULL, NULL, 'Zhichu', 'crud', '', 'com.gerencaiwu.system', 'system', 'zhichu', '支出账单', 'gerencaiwu', '0', '/', NULL, 'admin', '2024-02-21 20:17:29', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(0) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', NULL, 'int', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (2, 1, 'name', '分类名称', 'varchar(255)', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (3, 2, 'id', NULL, 'int', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (4, 2, 'name', '账单名称', 'varchar(255)', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (5, 2, 'type', '账单类型', 'varchar(255)', 'String', 'type', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (6, 2, 'payAmount', '收入金额', 'double(10,2)', 'BigDecimal', 'payAmount', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (7, 2, 'payWay', '收入方式', 'varchar(255)', 'String', 'payWay', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (8, 2, 'time', '收入日期', 'datetime', 'Date', 'time', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (9, 2, 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (10, 2, 'userId', '用户id', 'int', 'Long', 'userId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (11, 2, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (12, 3, 'id', NULL, 'int', 'Long', 'id', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (13, 3, 'typeId', '分类id', 'int', 'Long', 'typeId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (14, 3, 'amount', '预算金额', 'double(10,2)', 'BigDecimal', 'amount', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (15, 4, 'id', NULL, 'int', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (16, 4, 'name', '债务名称', 'varchar(255)', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (17, 4, 'type', '债务类型', 'varchar(255)', 'String', 'type', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (18, 4, 'payAmount', '债务金额', 'double(10,2)', 'BigDecimal', 'payAmount', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (19, 4, 'time', '债务日期', 'datetime', 'Date', 'time', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (20, 4, 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (21, 4, 'userId', '用户id', 'int', 'Long', 'userId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (22, 4, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (23, 5, 'id', NULL, 'int', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (24, 5, 'zhaiwuId', '债务id', 'int', 'Long', 'zhaiwuId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (25, 5, 'amount', '金额', 'double(10,2)', 'BigDecimal', 'amount', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (26, 5, 'type', '类型', 'varchar(255)', 'String', 'type', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (27, 5, 'time', '时间', 'datetime', 'Date', 'time', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (28, 6, 'id', NULL, 'int', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, 6, 'name', '账单名称', 'varchar(255)', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (30, 6, 'type', '账单类型', 'varchar(255)', 'String', 'type', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (31, 6, 'payAmount', '支出金额', 'double(10,2)', 'BigDecimal', 'payAmount', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (32, 6, 'payWay', '支出方式', 'varchar(255)', 'String', 'payWay', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, 6, 'time', '支出日期', 'datetime', 'Date', 'time', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (34, 6, 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (35, 6, 'userId', '用户id', 'int', 'Long', 'userId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2024-02-21 20:17:29', '', NULL);
INSERT INTO `gen_table_column` VALUES (36, 6, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2024-02-21 20:17:29', '', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-02-19 22:58:56', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-02-19 22:58:56', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-02-19 22:58:56', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-02-19 22:58:56', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-02-19 22:58:56', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-02-19 22:58:56', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-02-19 22:58:56', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'a2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2024-02-21 20:10:47');
INSERT INTO `sys_logininfor` VALUES (101, 'a2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2024-02-21 20:10:50');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-21 20:11:03');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-21 20:48:04');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-21 20:48:09');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-21 20:50:15');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-21 20:59:42');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-21 22:11:03');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 11:05:02');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 14:02:47');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 14:46:43');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 18:10:04');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 19:15:35');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-22 19:22:16');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 19:22:19');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-22 19:29:48');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2024-02-22 19:29:51');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 19:29:54');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-22 19:35:39');
INSERT INTO `sys_logininfor` VALUES (119, 'ry', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 19:35:47');
INSERT INTO `sys_logininfor` VALUES (120, 'ry', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-22 19:35:54');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 19:36:02');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 21:11:52');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-22 23:58:35');
INSERT INTO `sys_logininfor` VALUES (124, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 23:58:45');
INSERT INTO `sys_logininfor` VALUES (125, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-22 23:58:56');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2024-02-22 23:59:08');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2024-02-22 23:59:10');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-22 23:59:17');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:01:01');
INSERT INTO `sys_logininfor` VALUES (130, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:01:08');
INSERT INTO `sys_logininfor` VALUES (131, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:04:51');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:05:00');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:06:05');
INSERT INTO `sys_logininfor` VALUES (134, 'abo', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:06:13');
INSERT INTO `sys_logininfor` VALUES (135, 'abo', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:06:26');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:06:32');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:20:10');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:20:17');
INSERT INTO `sys_logininfor` VALUES (139, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:20:28');
INSERT INTO `sys_logininfor` VALUES (140, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:29:17');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:30:11');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:32:31');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:32:37');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:34:07');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:34:11');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:35:16');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:35:22');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:36:06');
INSERT INTO `sys_logininfor` VALUES (149, 'abo', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:36:15');
INSERT INTO `sys_logininfor` VALUES (150, 'abo', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:38:02');
INSERT INTO `sys_logininfor` VALUES (151, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:38:08');
INSERT INTO `sys_logininfor` VALUES (152, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:42:36');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:42:44');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:43:52');
INSERT INTO `sys_logininfor` VALUES (155, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:43:59');
INSERT INTO `sys_logininfor` VALUES (156, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:44:18');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:44:25');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-23 00:44:48');
INSERT INTO `sys_logininfor` VALUES (159, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-23 00:44:57');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2024-02-24 10:05:46');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2024-02-24 10:05:49');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-24 10:05:53');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2024-02-24 10:23:48');
INSERT INTO `sys_logininfor` VALUES (164, '123', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2024-02-24 10:24:06');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(0) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(0) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2043 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 100, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-02-19 22:58:56', 'admin', '2024-02-21 20:44:53', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 98, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-02-19 22:58:56', 'admin', '2024-02-21 20:45:05', '系统监控目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-02-19 22:58:56', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-02-19 22:58:56', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-02-19 22:58:56', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-02-19 22:58:56', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-02-19 22:58:56', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-02-19 22:58:56', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-02-19 22:58:56', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-02-19 22:58:56', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-02-19 22:58:56', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-02-19 22:58:56', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-02-19 22:58:56', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-02-19 22:58:56', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-02-19 22:58:56', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-02-19 22:58:56', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '账单分类', 0, 5, 'fenlei', 'system/fenlei/index', NULL, 1, 0, 'C', '0', '0', 'system:fenlei:list', 'row', 'admin', '2024-02-21 20:27:56', 'admin', '2024-02-21 20:45:36', '账单分类菜单');
INSERT INTO `sys_menu` VALUES (2001, '账单分类查询', 2000, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:fenlei:query', '#', 'admin', '2024-02-21 20:27:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '账单分类新增', 2000, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:fenlei:add', '#', 'admin', '2024-02-21 20:27:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '账单分类修改', 2000, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:fenlei:edit', '#', 'admin', '2024-02-21 20:27:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '账单分类删除', 2000, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:fenlei:remove', '#', 'admin', '2024-02-21 20:27:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '账单分类导出', 2000, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:fenlei:export', '#', 'admin', '2024-02-21 20:27:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '收入账单', 0, 1, 'shouru', 'system/shouru/index', NULL, 1, 0, 'C', '0', '0', 'system:shouru:list', 'money', 'admin', '2024-02-21 20:28:04', 'admin', '2024-02-21 20:36:15', '收入账单菜单');
INSERT INTO `sys_menu` VALUES (2007, '收入账单查询', 2006, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:shouru:query', '#', 'admin', '2024-02-21 20:28:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '收入账单新增', 2006, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:shouru:add', '#', 'admin', '2024-02-21 20:28:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '收入账单修改', 2006, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:shouru:edit', '#', 'admin', '2024-02-21 20:28:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '收入账单删除', 2006, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:shouru:remove', '#', 'admin', '2024-02-21 20:28:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '收入账单导出', 2006, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:shouru:export', '#', 'admin', '2024-02-21 20:28:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '预算管理', 0, 4, 'yusuan', 'system/yusuan/index', NULL, 1, 0, 'C', '0', '0', 'system:yusuan:list', 'form', 'admin', '2024-02-21 20:28:10', 'admin', '2024-02-21 20:45:32', '预算管理菜单');
INSERT INTO `sys_menu` VALUES (2013, '预算管理查询', 2012, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:yusuan:query', '#', 'admin', '2024-02-21 20:28:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '预算管理新增', 2012, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:yusuan:add', '#', 'admin', '2024-02-21 20:28:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '预算管理修改', 2012, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:yusuan:edit', '#', 'admin', '2024-02-21 20:28:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '预算管理删除', 2012, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:yusuan:remove', '#', 'admin', '2024-02-21 20:28:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '预算管理导出', 2012, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:yusuan:export', '#', 'admin', '2024-02-21 20:28:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '债务历史', 2042, 2, 'zhaiwulishi', 'system/zhaiwulishi/index', NULL, 1, 0, 'C', '0', '0', 'system:zhaiwulishi:list', 'date', 'admin', '2024-02-21 20:28:16', 'admin', '2024-02-21 23:06:12', '债务历史菜单');
INSERT INTO `sys_menu` VALUES (2019, '债务历史查询', 2018, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhaiwulishi:query', '#', 'admin', '2024-02-21 20:28:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '债务历史新增', 2018, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhaiwulishi:add', '#', 'admin', '2024-02-21 20:28:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '债务历史修改', 2018, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhaiwulishi:edit', '#', 'admin', '2024-02-21 20:28:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '债务历史删除', 2018, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhaiwulishi:remove', '#', 'admin', '2024-02-21 20:28:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '债务历史导出', 2018, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhaiwulishi:export', '#', 'admin', '2024-02-21 20:28:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '债务列表', 2042, 1, 'zhaiwu', 'system/zhaiwu/index', NULL, 1, 0, 'C', '0', '0', 'system:zhaiwu:list', 'documentation', 'admin', '2024-02-21 20:28:31', 'admin', '2024-02-21 20:41:39', '债务列菜单');
INSERT INTO `sys_menu` VALUES (2031, '债务列查询', 2030, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhaiwu:query', '#', 'admin', '2024-02-21 20:28:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '债务列新增', 2030, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhaiwu:add', '#', 'admin', '2024-02-21 20:28:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '债务列修改', 2030, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhaiwu:edit', '#', 'admin', '2024-02-21 20:28:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '债务列删除', 2030, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhaiwu:remove', '#', 'admin', '2024-02-21 20:28:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '债务列导出', 2030, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhaiwu:export', '#', 'admin', '2024-02-21 20:28:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '支出账单', 0, 2, 'zhichu', 'system/zhichu/index', NULL, 1, 0, 'C', '0', '0', 'system:zhichu:list', 'list', 'admin', '2024-02-21 20:28:37', 'admin', '2024-02-21 20:45:12', '支出账单菜单');
INSERT INTO `sys_menu` VALUES (2037, '支出账单查询', 2036, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhichu:query', '#', 'admin', '2024-02-21 20:28:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '支出账单新增', 2036, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhichu:add', '#', 'admin', '2024-02-21 20:28:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '支出账单修改', 2036, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhichu:edit', '#', 'admin', '2024-02-21 20:28:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '支出账单删除', 2036, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhichu:remove', '#', 'admin', '2024-02-21 20:28:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '支出账单导出', 2036, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:zhichu:export', '#', 'admin', '2024-02-21 20:28:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '债务管理', 0, 3, 'zhaiwuguanli', NULL, NULL, 1, 0, 'M', '0', '0', '', 'people', 'admin', '2024-02-21 20:38:28', 'admin', '2024-02-22 21:14:08', '');
INSERT INTO `sys_menu` VALUES (2043, '财务报表', 0, 6, 'caiwu', 'system/caiwu/index', NULL, 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2024-02-21 20:46:10', 'admin', '2024-02-22 19:34:52', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-02-19 22:58:57', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(0) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 255 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.gerencaiwu.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"a_yusuan,a_fenlei,a_zhichu,a_shouru,a_zhaiwulishi,a_zhaiwu\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:17:29', 154);
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.gerencaiwu.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"a_fenlei,a_shouru,a_yusuan,a_zhaiwu,a_zhaiwulishi,a_zhichu\"}', NULL, 0, NULL, '2024-02-21 20:17:44', 313);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 8, 'com.gerencaiwu.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"a_fenlei,a_shouru,a_yusuan,a_zhaiwu,a_zhaiwulishi,a_zhichu\"}', NULL, 0, NULL, '2024-02-21 20:20:21', 117);
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/zhaiwu/index\",\"createTime\":\"2024-02-21 20:28:31\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"债务列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"zhaiwu\",\"perms\":\"system:zhaiwu:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:33:10', 19);
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 3, 'com.gerencaiwu.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-02-21 20:33:29', 9);
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 3, 'com.gerencaiwu.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-02-21 20:34:51', 2);
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/fenlei/index\",\"createTime\":\"2024-02-21 20:27:56\",\"icon\":\"row\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"账单分类\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"fenlei\",\"perms\":\"system:fenlei:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:35:36', 17);
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/shouru/index\",\"createTime\":\"2024-02-21 20:28:04\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"收入账单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"shouru\",\"perms\":\"system:shouru:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:36:16', 17);
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/yusuan/index\",\"createTime\":\"2024-02-21 20:28:10\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"预算管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"yusuan\",\"perms\":\"system:yusuan:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:36:31', 19);
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/zhichu/index\",\"createTime\":\"2024-02-21 20:28:37\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2036,\"menuName\":\"支出账单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"zhichu\",\"perms\":\"system:zhichu:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:36:53', 16);
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 1, 'com.gerencaiwu.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"债务管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"zhaiwu\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:38:28', 19);
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-02-21 20:38:28\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2042,\"menuName\":\"债务管理\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"zhaiwu\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:38:58', 8);
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/zhaiwulishi/index\",\"createTime\":\"2024-02-21 20:28:16\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"债务历史\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2042,\"path\":\"zhaiwulishi\",\"perms\":\"system:zhaiwulishi:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:39:54', 17);
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/zhaiwu/index\",\"createTime\":\"2024-02-21 20:28:31\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"债务列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2042,\"path\":\"zhaiwu\",\"perms\":\"system:zhaiwu:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:40:04', 15);
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-02-21 20:38:28\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2042,\"menuName\":\"债务管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"zhaiwu\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:40:50', 17);
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/zhaiwulishi/index\",\"createTime\":\"2024-02-21 20:28:16\",\"icon\":\"date\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"债务历史\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2042,\"path\":\"zhaiwulishi\",\"perms\":\"system:zhaiwulishi:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:41:31', 17);
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/zhaiwu/index\",\"createTime\":\"2024-02-21 20:28:31\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"债务列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2042,\"path\":\"zhaiwu\",\"perms\":\"system:zhaiwu:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:41:39', 15);
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-02-19 22:58:56\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":100,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:44:53', 16);
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-02-19 22:58:56\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":99,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:45:00', 16);
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-02-19 22:58:56\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":98,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:45:05', 18);
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/zhichu/index\",\"createTime\":\"2024-02-21 20:28:37\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2036,\"menuName\":\"支出账单\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"zhichu\",\"perms\":\"system:zhichu:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:45:12', 17);
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-02-21 20:38:28\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2042,\"menuName\":\"债务管理\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"zhaiwu\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:45:23', 16);
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/yusuan/index\",\"createTime\":\"2024-02-21 20:28:10\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"预算管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"yusuan\",\"perms\":\"system:yusuan:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:45:32', 16);
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/fenlei/index\",\"createTime\":\"2024-02-21 20:27:56\",\"icon\":\"row\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"账单分类\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"fenlei\",\"perms\":\"system:fenlei:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:45:36', 16);
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 1, 'com.gerencaiwu.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"财务报表\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"baobiao\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:46:10', 17);
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-02-21 20:46:10\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2043,\"menuName\":\"财务报表\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"baobiao\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 20:46:17', 15);
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/zhaiwulishi/index\",\"createTime\":\"2024-02-21 20:28:16\",\"icon\":\"date\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"债务历史\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2042,\"path\":\"zhaiwulishi\",\"perms\":\"system:zhaiwulishi:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 23:06:12', 24);
INSERT INTO `sys_oper_log` VALUES (127, '通知公告', 3, 'com.gerencaiwu.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-21 23:23:58', 9);
INSERT INTO `sys_oper_log` VALUES (128, '账单分类', 1, 'com.gerencaiwu.web.controller.system.controller.FenleiController.add()', 'POST', 1, 'admin', '研发部门', '/system/fenlei', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"饮食\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 11:05:58', 11);
INSERT INTO `sys_oper_log` VALUES (129, '账单分类', 1, 'com.gerencaiwu.web.controller.system.controller.FenleiController.add()', 'POST', 1, 'admin', '研发部门', '/system/fenlei', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"娱乐\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 11:06:03', 16);
INSERT INTO `sys_oper_log` VALUES (130, '账单分类', 1, 'com.gerencaiwu.web.controller.system.controller.FenleiController.add()', 'POST', 1, 'admin', '研发部门', '/system/fenlei', '127.0.0.1', '内网IP', '{\"id\":3,\"name\":\"交通\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 11:06:07', 6);
INSERT INTO `sys_oper_log` VALUES (131, '账单分类', 1, 'com.gerencaiwu.web.controller.system.controller.FenleiController.add()', 'POST', 1, 'admin', '研发部门', '/system/fenlei', '127.0.0.1', '内网IP', '{\"id\":4,\"name\":\"游戏\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 11:20:39', 22);
INSERT INTO `sys_oper_log` VALUES (132, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"我的\",\"params\":{},\"payAmount\":1.33,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-22\",\"typeId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 14:47:02', 23);
INSERT INTO `sys_oper_log` VALUES (133, '收入账单', 5, 'com.gerencaiwu.web.controller.system.controller.ShouruController.export()', 'POST', 1, 'admin', '研发部门', '/system/shouru/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"typeId\":\"1\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-02-22 14:52:41', 590);
INSERT INTO `sys_oper_log` VALUES (134, '收入账单', 2, 'com.gerencaiwu.web.controller.system.controller.ShouruController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"我的\",\"params\":{},\"payAmount\":1.33,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-22\",\"type\":\"饮食\",\"typeId\":2,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:06:47', 25);
INSERT INTO `sys_oper_log` VALUES (135, '收入账单', 2, 'com.gerencaiwu.web.controller.system.controller.ShouruController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"我的\",\"params\":{},\"payAmount\":1.33,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-22\",\"type\":\"饮食\",\"typeId\":2,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:06:55', 3);
INSERT INTO `sys_oper_log` VALUES (136, '收入账单', 2, 'com.gerencaiwu.web.controller.system.controller.ShouruController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"我的\",\"params\":{},\"payAmount\":1.33,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-22\",\"type\":\"饮食\",\"typeId\":2,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:07:26', 33);
INSERT INTO `sys_oper_log` VALUES (137, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"1\",\"params\":{},\"payAmount\":1,\"payWay\":\"现金\",\"remark\":\"33\",\"time\":\"2024-02-22\",\"type\":\"2\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:12:58', 21);
INSERT INTO `sys_oper_log` VALUES (138, '支出账单', 3, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/zhichu/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:14:33', 25);
INSERT INTO `sys_oper_log` VALUES (139, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"33\",\"params\":{},\"payAmount\":1.33,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-22\",\"typeId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:18:12', 36);
INSERT INTO `sys_oper_log` VALUES (140, '支出账单', 2, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"33\",\"params\":{},\"payAmount\":1.33,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-22\",\"type\":\"饮食\",\"typeId\":2,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:18:17', 7);
INSERT INTO `sys_oper_log` VALUES (141, '支出账单', 5, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.export()', 'POST', 1, 'admin', '研发部门', '/system/zhichu/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-02-22 15:19:58', 369);
INSERT INTO `sys_oper_log` VALUES (142, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"1\",\"params\":{},\"payAmount\":2.3,\"remark\":\"1\",\"time\":\"2024-02-22\",\"type\":\"欠款\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:42:26', 91);
INSERT INTO `sys_oper_log` VALUES (143, '债务列', 2, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"1\",\"params\":{},\"payAmount\":2.3,\"remark\":\"1\",\"time\":\"2024-02-22\",\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:43:11', 22);
INSERT INTO `sys_oper_log` VALUES (144, '债务列', 3, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/zhaiwu/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:43:16', 11);
INSERT INTO `sys_oper_log` VALUES (145, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"1\",\"params\":{},\"payAmount\":2,\"remark\":\"3\",\"time\":\"2024-02-22\",\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:43:21', 9);
INSERT INTO `sys_oper_log` VALUES (146, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":3,\"name\":\"1\",\"params\":{},\"payAmount\":3,\"remark\":\"3\",\"time\":\"2024-02-22\",\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 15:44:47', 143);
INSERT INTO `sys_oper_log` VALUES (147, '债务列', 5, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.export()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-02-22 15:45:04', 398);
INSERT INTO `sys_oper_log` VALUES (148, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"payAmount\":1,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 16:23:50', 130);
INSERT INTO `sys_oper_log` VALUES (149, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"payAmount\":1,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 16:24:10', 13);
INSERT INTO `sys_oper_log` VALUES (150, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"payAmount\":1,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 16:24:57', 11);
INSERT INTO `sys_oper_log` VALUES (151, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"payAmount\":1,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 16:24:59', 24);
INSERT INTO `sys_oper_log` VALUES (152, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"payAmount\":1,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 16:25:50', 21);
INSERT INTO `sys_oper_log` VALUES (153, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"payAmount\":3,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 16:27:31', 90);
INSERT INTO `sys_oper_log` VALUES (154, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":4,\"name\":\"3\",\"params\":{},\"payAmount\":2,\"remark\":\"3\",\"time\":\"2024-02-23\",\"type\":\"追债\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 16:27:45', 24);
INSERT INTO `sys_oper_log` VALUES (155, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":4,\"params\":{},\"payAmount\":2,\"type\":\"追债\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 16:27:48', 20);
INSERT INTO `sys_oper_log` VALUES (156, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":0,\"id\":1,\"params\":{},\"typeName\":\"饮食\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:09:04', 8);
INSERT INTO `sys_oper_log` VALUES (157, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":0,\"id\":3,\"params\":{},\"typeName\":\"交通\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:09:44', 3);
INSERT INTO `sys_oper_log` VALUES (158, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":0,\"id\":3,\"params\":{},\"typeName\":\"交通\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:11:42', 2);
INSERT INTO `sys_oper_log` VALUES (159, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":3,\"id\":1,\"params\":{},\"typeName\":\"饮食\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:12:56', 2);
INSERT INTO `sys_oper_log` VALUES (160, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":3,\"id\":1,\"params\":{},\"typeName\":\"饮食\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:15:04', 1);
INSERT INTO `sys_oper_log` VALUES (161, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":3,\"id\":1,\"params\":{},\"typeName\":\"饮食\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:15:21', 2);
INSERT INTO `sys_oper_log` VALUES (162, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":3,\"id\":1,\"params\":{},\"typeName\":\"饮食\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:16:48', 2);
INSERT INTO `sys_oper_log` VALUES (163, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":3,\"id\":2,\"params\":{},\"typeId\":2,\"typeName\":\"娱乐\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:18:01', 2);
INSERT INTO `sys_oper_log` VALUES (164, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":3,\"id\":2,\"params\":{},\"typeId\":2,\"typeName\":\"娱乐\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:18:03', 2);
INSERT INTO `sys_oper_log` VALUES (165, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":3,\"id\":2,\"params\":{},\"typeId\":2,\"typeName\":\"娱乐\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:20:54', 14);
INSERT INTO `sys_oper_log` VALUES (166, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":3,\"id\":2,\"params\":{},\"typeId\":2,\"typeName\":\"娱乐\",\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-02-22 17:22:20', 27634);
INSERT INTO `sys_oper_log` VALUES (167, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":3,\"id\":1,\"params\":{},\"typeId\":1,\"typeName\":\"饮食\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 17:23:09', 121);
INSERT INTO `sys_oper_log` VALUES (168, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":34,\"id\":1,\"params\":{},\"typeId\":1,\"typeName\":\"饮食\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 17:23:13', 19);
INSERT INTO `sys_oper_log` VALUES (169, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":354,\"id\":1,\"params\":{},\"typeId\":1,\"typeName\":\"饮食\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 17:23:19', 7);
INSERT INTO `sys_oper_log` VALUES (170, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":354,\"id\":1,\"params\":{},\"typeId\":1,\"typeName\":\"饮食\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 17:24:40', 59722);
INSERT INTO `sys_oper_log` VALUES (171, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":354,\"id\":1,\"params\":{},\"typeId\":1,\"typeName\":\"饮食\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 17:24:53', 3203);
INSERT INTO `sys_oper_log` VALUES (172, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"1\",\"params\":{},\"payAmount\":3,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-22\",\"typeId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 18:10:30', 20);
INSERT INTO `sys_oper_log` VALUES (173, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":3,\"name\":\"想的\",\"params\":{},\"payAmount\":33,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-22\",\"typeId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 18:23:23', 129);
INSERT INTO `sys_oper_log` VALUES (174, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":4,\"name\":\"341231\",\"params\":{},\"payAmount\":6666,\"payWay\":\"现金\",\"remark\":\"33\",\"time\":\"2024-02-22\",\"typeId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 18:23:41', 17);
INSERT INTO `sys_oper_log` VALUES (175, '债务列', 3, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/zhaiwu/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 19:15:41', 18);
INSERT INTO `sys_oper_log` VALUES (176, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"payAmount\":3,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 19:25:25', 111);
INSERT INTO `sys_oper_log` VALUES (177, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"payAmount\":5,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 19:25:27', 19);
INSERT INTO `sys_oper_log` VALUES (178, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"payAmount\":3,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 19:29:48', 91900);
INSERT INTO `sys_oper_log` VALUES (179, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"1\",\"params\":{},\"payAmount\":3,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 19:30:23', 15);
INSERT INTO `sys_oper_log` VALUES (180, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-02-21 20:46:10\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2043,\"menuName\":\"财务报表\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"caiwu\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 19:32:18', 13);
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system:caiwu:index\",\"createTime\":\"2024-02-21 20:46:10\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2043,\"menuName\":\"财务报表\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"caiwu\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 19:33:07', 17);
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/caiwu/index\",\"createTime\":\"2024-02-21 20:46:10\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2043,\"menuName\":\"财务报表\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"caiwu\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 19:34:52', 8);
INSERT INTO `sys_oper_log` VALUES (183, '用户管理', 2, 'com.gerencaiwu.web.controller.system.controller.SysUserController.resetPwd()', 'PUT', 1, 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 19:35:14', 80);
INSERT INTO `sys_oper_log` VALUES (184, '角色管理', 2, 'com.gerencaiwu.web.controller.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-02-19 22:58:56\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2042,2030,2031,2032,2033,2034,2035,2018,2019,2020,2021,2022,2023,2043],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 19:35:36', 33);
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 2, 'com.gerencaiwu.web.controller.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-02-21 20:38:28\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2042,\"menuName\":\"债务管理\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"zhaiwuguanli\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 21:14:09', 18);
INSERT INTO `sys_oper_log` VALUES (186, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:43:23', 163);
INSERT INTO `sys_oper_log` VALUES (187, '收入账单', 3, 'com.gerencaiwu.web.controller.system.controller.ShouruController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/shouru/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:43:26', 13);
INSERT INTO `sys_oper_log` VALUES (188, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":4,\"name\":\"4\",\"params\":{},\"payAmount\":3,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-22\",\"typeId\":3,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:43:49', 22);
INSERT INTO `sys_oper_log` VALUES (189, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":5,\"name\":\"3\",\"params\":{},\"payAmount\":2,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-23\",\"typeId\":4,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:43:58', 18);
INSERT INTO `sys_oper_log` VALUES (190, '收入账单', 2, 'com.gerencaiwu.web.controller.system.controller.ShouruController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"我的\",\"params\":{},\"payAmount\":200,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-22\",\"type\":\"娱乐\",\"typeId\":2,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:44:05', 17);
INSERT INTO `sys_oper_log` VALUES (191, '收入账单', 2, 'com.gerencaiwu.web.controller.system.controller.ShouruController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"1\",\"params\":{},\"payAmount\":300,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-22\",\"type\":\"饮食\",\"typeId\":1,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:44:09', 8);
INSERT INTO `sys_oper_log` VALUES (192, '收入账单', 2, 'com.gerencaiwu.web.controller.system.controller.ShouruController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":4,\"name\":\"4\",\"params\":{},\"payAmount\":400,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-22\",\"type\":\"交通\",\"typeId\":3,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:44:14', 15);
INSERT INTO `sys_oper_log` VALUES (193, '收入账单', 2, 'com.gerencaiwu.web.controller.system.controller.ShouruController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":5,\"name\":\"3\",\"params\":{},\"payAmount\":500,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-23\",\"type\":\"游戏\",\"typeId\":4,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:44:19', 16);
INSERT INTO `sys_oper_log` VALUES (194, '支出账单', 2, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":4,\"name\":\"341231\",\"params\":{},\"payAmount\":500,\"payWay\":\"现金\",\"remark\":\"33\",\"time\":\"2024-02-22\",\"type\":\"饮食\",\"typeId\":1,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:44:33', 19);
INSERT INTO `sys_oper_log` VALUES (195, '支出账单', 2, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":3,\"name\":\"想的\",\"params\":{},\"payAmount\":200,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-22\",\"type\":\"饮食\",\"typeId\":1,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:44:44', 17);
INSERT INTO `sys_oper_log` VALUES (196, '支出账单', 2, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"33\",\"params\":{},\"payAmount\":300,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-22\",\"type\":\"娱乐\",\"typeId\":2,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:46:25', 25);
INSERT INTO `sys_oper_log` VALUES (197, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":5,\"name\":\"3\",\"params\":{},\"payAmount\":2,\"payWay\":\"转账\",\"remark\":\"333\",\"time\":\"2024-02-23\",\"typeId\":3,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:46:35', 11);
INSERT INTO `sys_oper_log` VALUES (198, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":6,\"name\":\"3123\",\"params\":{},\"payAmount\":21312,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-23\",\"typeId\":4,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:46:44', 17);
INSERT INTO `sys_oper_log` VALUES (199, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"1\",\"params\":{},\"payAmount\":333,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:46:52', 25);
INSERT INTO `sys_oper_log` VALUES (200, '债务列', 2, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"1\",\"params\":{},\"payAmount\":100,\"remark\":\"3\",\"time\":\"2024-02-22\",\"type\":\"欠款\",\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:47:03', 7);
INSERT INTO `sys_oper_log` VALUES (201, '债务列', 2, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":4,\"name\":\"3\",\"params\":{},\"payAmount\":200,\"remark\":\"3\",\"time\":\"2024-02-23\",\"type\":\"欠款\",\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:47:47', 7);
INSERT INTO `sys_oper_log` VALUES (202, '支出账单', 2, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":6,\"name\":\"3123\",\"params\":{},\"payAmount\":300,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-23\",\"type\":\"游戏\",\"typeId\":4,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:48:04', 15);
INSERT INTO `sys_oper_log` VALUES (203, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":5,\"name\":\"33\",\"params\":{},\"payAmount\":333,\"remark\":\"3\",\"time\":\"2024-02-23\",\"type\":\"追债\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:50:54', 15);
INSERT INTO `sys_oper_log` VALUES (204, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":5,\"name\":\"33\",\"params\":{},\"payAmount\":100,\"type\":\"追债\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:51:14', 12);
INSERT INTO `sys_oper_log` VALUES (205, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":4,\"name\":\"3\",\"params\":{},\"payAmount\":100,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:51:20', 12);
INSERT INTO `sys_oper_log` VALUES (206, '用户管理', 2, 'com.gerencaiwu.web.controller.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-02-19 22:58:56\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":105,\"email\":\"\",\"loginDate\":\"2024-02-22 19:35:48\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"hello\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:56:35', 31);
INSERT INTO `sys_oper_log` VALUES (207, '用户管理', 3, 'com.gerencaiwu.web.controller.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/user/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:56:46', 14);
INSERT INTO `sys_oper_log` VALUES (208, '用户管理', 1, 'com.gerencaiwu.web.controller.system.controller.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"1\",\"params\":{},\"postIds\":[],\"roleIds\":[2],\"sex\":\"0\",\"status\":\"0\",\"userId\":100,\"userName\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-22 23:58:23', 94);
INSERT INTO `sys_oper_log` VALUES (209, '角色管理', 2, 'com.gerencaiwu.web.controller.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-02-19 22:58:56\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2006,2007,2008,2009,2010,2011,2036,2037,2038,2039,2040,2041,2042,2030,2031,2032,2033,2034,2035,2018,2019,2020,2021,2022,2023,2012,2013,2014,2015,2016,2017,2000,2001,2002,2003,2004,2005,2043],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:00:55', 21);
INSERT INTO `sys_oper_log` VALUES (210, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, '123', NULL, '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":6,\"name\":\"11\",\"params\":{},\"payAmount\":200,\"payWay\":\"现金\",\"remark\":\"33\",\"time\":\"2024-02-24\",\"typeId\":1,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:01:45', 16);
INSERT INTO `sys_oper_log` VALUES (211, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, '123', NULL, '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":7,\"name\":\"33\",\"params\":{},\"payAmount\":300,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-24\",\"typeId\":1,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:02:05', 18);
INSERT INTO `sys_oper_log` VALUES (212, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, '123', NULL, '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":8,\"name\":\"444\",\"params\":{},\"payAmount\":400,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-23\",\"typeId\":3,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:02:28', 8);
INSERT INTO `sys_oper_log` VALUES (213, '收入账单', 2, 'com.gerencaiwu.web.controller.system.controller.ShouruController.edit()', 'PUT', 1, '123', NULL, '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":7,\"name\":\"33\",\"params\":{},\"payAmount\":300,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-24\",\"type\":\"饮食\",\"typeId\":2,\"userId\":100,\"username\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:02:33', 7);
INSERT INTO `sys_oper_log` VALUES (214, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, '123', NULL, '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":9,\"name\":\"333\",\"params\":{},\"payAmount\":300,\"payWay\":\"现金\",\"remark\":\"2222\",\"time\":\"2024-02-24\",\"typeId\":4,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:02:46', 16);
INSERT INTO `sys_oper_log` VALUES (215, '角色管理', 1, 'com.gerencaiwu.web.controller.system.controller.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,108,500,1039,1040,1041,501,1042,1043,1044,1045],\"params\":{},\"roleId\":100,\"roleKey\":\"guanli\",\"roleName\":\"管理员\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:05:33', 30);
INSERT INTO `sys_oper_log` VALUES (216, '用户管理', 1, 'com.gerencaiwu.web.controller.system.controller.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"abo\",\"params\":{},\"postIds\":[],\"remark\":\"guanli\",\"roleIds\":[100],\"sex\":\"0\",\"status\":\"0\",\"userId\":101,\"userName\":\"abo\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:06:01', 103);
INSERT INTO `sys_oper_log` VALUES (217, '账单分类', 1, 'com.gerencaiwu.web.controller.system.controller.FenleiController.add()', 'POST', 1, 'admin', '研发部门', '/system/fenlei', '127.0.0.1', '内网IP', '{\"id\":5,\"name\":\"学习\",\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:15:14', 156);
INSERT INTO `sys_oper_log` VALUES (218, '账单分类', 1, 'com.gerencaiwu.web.controller.system.controller.FenleiController.add()', 'POST', 1, 'admin', '研发部门', '/system/fenlei', '127.0.0.1', '内网IP', '{\"id\":6,\"name\":\"游戏\",\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:15:18', 20);
INSERT INTO `sys_oper_log` VALUES (219, '账单分类', 1, 'com.gerencaiwu.web.controller.system.controller.FenleiController.add()', 'POST', 1, 'admin', '研发部门', '/system/fenlei', '127.0.0.1', '内网IP', '{\"id\":7,\"name\":\"饮食\",\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:15:21', 16);
INSERT INTO `sys_oper_log` VALUES (220, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":10,\"name\":\"11\",\"params\":{},\"payAmount\":100,\"payWay\":\"现金\",\"remark\":\"300\",\"time\":\"2024-02-23\",\"typeId\":5,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:15:51', 28);
INSERT INTO `sys_oper_log` VALUES (221, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":11,\"name\":\"收入\",\"params\":{},\"payAmount\":33,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-23\",\"typeId\":6,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:16:00', 7);
INSERT INTO `sys_oper_log` VALUES (222, '收入账单', 2, 'com.gerencaiwu.web.controller.system.controller.ShouruController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":11,\"name\":\"收入\",\"params\":{},\"payAmount\":200,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-23\",\"type\":\"游戏\",\"typeId\":6,\"userId\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:16:10', 18);
INSERT INTO `sys_oper_log` VALUES (223, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, 'admin', '研发部门', '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":12,\"name\":\"333\",\"params\":{},\"payAmount\":400,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-23\",\"typeId\":7,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:16:24', 18);
INSERT INTO `sys_oper_log` VALUES (224, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":7,\"name\":\"333\",\"params\":{},\"payAmount\":300,\"payWay\":\"转账\",\"remark\":\"333\",\"time\":\"2024-02-24\",\"typeId\":7,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:16:45', 18);
INSERT INTO `sys_oper_log` VALUES (225, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":8,\"name\":\"333\",\"params\":{},\"payAmount\":400,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-23\",\"typeId\":6,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:16:56', 17);
INSERT INTO `sys_oper_log` VALUES (226, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":9,\"name\":\"333\",\"params\":{},\"payAmount\":400,\"payWay\":\"现金\",\"remark\":\"33\",\"time\":\"2024-02-23\",\"typeId\":5,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:17:08', 7);
INSERT INTO `sys_oper_log` VALUES (227, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":6,\"name\":\"1\",\"params\":{},\"payAmount\":300,\"remark\":\"333\",\"time\":\"2024-02-23\",\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:17:48', 11);
INSERT INTO `sys_oper_log` VALUES (228, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.add()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":7,\"name\":\"大大\",\"params\":{},\"payAmount\":200,\"remark\":\"33\",\"time\":\"2024-02-22\",\"type\":\"追债\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:17:59', 16);
INSERT INTO `sys_oper_log` VALUES (229, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, 'admin', '研发部门', '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":6,\"name\":\"1\",\"params\":{},\"payAmount\":100,\"type\":\"欠款\",\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:18:08', 26);
INSERT INTO `sys_oper_log` VALUES (230, '账单分类', 1, 'com.gerencaiwu.web.controller.system.controller.FenleiController.add()', 'POST', 1, '123', NULL, '/system/fenlei', '127.0.0.1', '内网IP', '{\"id\":8,\"name\":\"游戏\",\"params\":{},\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:22:18', 137);
INSERT INTO `sys_oper_log` VALUES (231, '账单分类', 1, 'com.gerencaiwu.web.controller.system.controller.FenleiController.add()', 'POST', 1, '123', NULL, '/system/fenlei', '127.0.0.1', '内网IP', '{\"id\":9,\"name\":\"交通\",\"params\":{},\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:22:22', 17);
INSERT INTO `sys_oper_log` VALUES (232, '账单分类', 1, 'com.gerencaiwu.web.controller.system.controller.FenleiController.add()', 'POST', 1, '123', NULL, '/system/fenlei', '127.0.0.1', '内网IP', '{\"id\":10,\"name\":\"饮食\",\"params\":{},\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:22:26', 10);
INSERT INTO `sys_oper_log` VALUES (233, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, '123', NULL, '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":13,\"name\":\"1\",\"params\":{},\"payAmount\":100,\"payWay\":\"现金\",\"remark\":\"33\",\"time\":\"2024-02-23\",\"typeId\":8,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:25:39', 162);
INSERT INTO `sys_oper_log` VALUES (234, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, '123', NULL, '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":14,\"name\":\"2\",\"params\":{},\"payAmount\":300,\"payWay\":\"转账\",\"time\":\"2024-02-24\",\"typeId\":9,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:25:53', 17);
INSERT INTO `sys_oper_log` VALUES (235, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, '123', NULL, '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":15,\"name\":\"3\",\"params\":{},\"payAmount\":200,\"payWay\":\"转账\",\"remark\":\"3\",\"time\":\"2024-02-24\",\"typeId\":10,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:26:07', 10);
INSERT INTO `sys_oper_log` VALUES (236, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, '123', NULL, '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":10,\"name\":\"1\",\"params\":{},\"payAmount\":200,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-23\",\"typeId\":8,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:27:43', 154);
INSERT INTO `sys_oper_log` VALUES (237, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, '123', NULL, '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":11,\"name\":\"2\",\"params\":{},\"payAmount\":300,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-23\",\"typeId\":9,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:27:54', 9);
INSERT INTO `sys_oper_log` VALUES (238, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, '123', NULL, '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":12,\"name\":\"3\",\"params\":{},\"payAmount\":300,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-23\",\"typeId\":10,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:28:03', 21);
INSERT INTO `sys_oper_log` VALUES (239, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.add()', 'POST', 1, '123', NULL, '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":8,\"name\":\"1\",\"params\":{},\"payAmount\":300,\"time\":\"2024-02-23\",\"type\":\"欠款\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:28:14', 10);
INSERT INTO `sys_oper_log` VALUES (240, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.add()', 'POST', 1, '123', NULL, '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":9,\"name\":\"2\",\"params\":{},\"payAmount\":400,\"remark\":\"3\",\"time\":\"2024-02-23\",\"type\":\"追债\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:28:21', 18);
INSERT INTO `sys_oper_log` VALUES (241, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, '123', NULL, '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":500,\"id\":8,\"params\":{},\"typeId\":8,\"typeName\":\"游戏\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:28:52', 22);
INSERT INTO `sys_oper_log` VALUES (242, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, '123', NULL, '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":13,\"name\":\"4\",\"params\":{},\"payAmount\":500,\"payWay\":\"现金\",\"time\":\"2024-02-23\",\"typeId\":8,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:29:10', 17);
INSERT INTO `sys_oper_log` VALUES (243, '个人信息', 2, 'com.gerencaiwu.web.controller.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"你会\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:35:06', 18);
INSERT INTO `sys_oper_log` VALUES (244, '收入账单', 1, 'com.gerencaiwu.web.controller.system.controller.ShouruController.add()', 'POST', 1, '123', NULL, '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":16,\"name\":\"4\",\"params\":{},\"payAmount\":300,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-24\",\"typeId\":10,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:39:04', 17);
INSERT INTO `sys_oper_log` VALUES (245, '收入账单', 2, 'com.gerencaiwu.web.controller.system.controller.ShouruController.edit()', 'PUT', 1, '123', NULL, '/system/shouru', '127.0.0.1', '内网IP', '{\"id\":16,\"name\":\"4\",\"params\":{},\"payAmount\":400,\"payWay\":\"现金\",\"remark\":\"333\",\"time\":\"2024-02-24\",\"type\":\"饮食\",\"typeId\":10,\"userId\":100,\"username\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:39:10', 18);
INSERT INTO `sys_oper_log` VALUES (246, '收入账单', 3, 'com.gerencaiwu.web.controller.system.controller.ShouruController.remove()', 'DELETE', 1, '123', NULL, '/system/shouru/16', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:39:13', 13);
INSERT INTO `sys_oper_log` VALUES (247, '支出账单', 2, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.edit()', 'PUT', 1, '123', NULL, '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":13,\"name\":\"4\",\"params\":{},\"payAmount\":400,\"payWay\":\"现金\",\"time\":\"2024-02-23\",\"type\":\"游戏\",\"typeId\":8,\"userId\":100,\"username\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:39:44', 19);
INSERT INTO `sys_oper_log` VALUES (248, '支出账单', 3, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.remove()', 'DELETE', 1, '123', NULL, '/system/zhichu/13', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:39:48', 17);
INSERT INTO `sys_oper_log` VALUES (249, '支出账单', 1, 'com.gerencaiwu.web.controller.system.controller.ZhichuController.add()', 'POST', 1, '123', NULL, '/system/zhichu', '127.0.0.1', '内网IP', '{\"id\":14,\"name\":\"4\",\"params\":{},\"payAmount\":400,\"payWay\":\"现金\",\"remark\":\"3\",\"time\":\"2024-02-23\",\"typeId\":8,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:40:16', 18);
INSERT INTO `sys_oper_log` VALUES (250, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.add()', 'POST', 1, '123', NULL, '/system/zhaiwu', '127.0.0.1', '内网IP', '{\"id\":10,\"name\":\"3\",\"params\":{},\"payAmount\":300,\"time\":\"2024-02-23\",\"type\":\"欠款\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:40:31', 21);
INSERT INTO `sys_oper_log` VALUES (251, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, '123', NULL, '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":8,\"name\":\"1\",\"params\":{},\"payAmount\":100,\"type\":\"欠款\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:40:57', 17);
INSERT INTO `sys_oper_log` VALUES (252, '债务列', 1, 'com.gerencaiwu.web.controller.system.controller.ZhaiwuController.change()', 'POST', 1, '123', NULL, '/system/zhaiwu/changeZhaiwu', '127.0.0.1', '内网IP', '{\"id\":9,\"name\":\"2\",\"params\":{},\"payAmount\":100,\"type\":\"追债\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:41:17', 24);
INSERT INTO `sys_oper_log` VALUES (253, '预算管理', 2, 'com.gerencaiwu.web.controller.system.controller.YusuanController.edit()', 'PUT', 1, '123', NULL, '/system/yusuan', '127.0.0.1', '内网IP', '{\"amount\":300,\"id\":9,\"params\":{},\"typeId\":9,\"typeName\":\"交通\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:42:05', 14);
INSERT INTO `sys_oper_log` VALUES (254, '角色管理', 2, 'com.gerencaiwu.web.controller.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-02-19 22:58:56\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2006,2007,2008,2009,2010,2011,2036,2037,2038,2039,2040,2041,2042,2030,2031,2032,2033,2034,2035,2018,2019,2020,2021,2022,2023,2012,2013,2014,2015,2016,2017,2000,2001,2002,2003,2004,2005,2043,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:43:49', 43);
INSERT INTO `sys_oper_log` VALUES (255, '角色管理', 2, 'com.gerencaiwu.web.controller.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-02-19 22:58:56\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2006,2007,2008,2009,2010,2011,2036,2037,2038,2039,2040,2041,2042,2030,2031,2032,2033,2034,2035,2018,2019,2020,2021,2022,2023,2012,2013,2014,2015,2016,2017,2000,2001,2002,2003,2004,2005,2043],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-23 00:44:45', 26);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-02-19 22:58:56', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-02-19 22:58:56', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-02-19 22:58:56', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-02-19 22:58:56', 'admin', '2024-02-23 00:44:45', '普通角色');
INSERT INTO `sys_role` VALUES (100, '管理员', 'guanli', 0, '1', 1, 1, '0', '0', 'admin', '2024-02-23 00:05:33', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2008);
INSERT INTO `sys_role_menu` VALUES (2, 2009);
INSERT INTO `sys_role_menu` VALUES (2, 2010);
INSERT INTO `sys_role_menu` VALUES (2, 2011);
INSERT INTO `sys_role_menu` VALUES (2, 2012);
INSERT INTO `sys_role_menu` VALUES (2, 2013);
INSERT INTO `sys_role_menu` VALUES (2, 2014);
INSERT INTO `sys_role_menu` VALUES (2, 2015);
INSERT INTO `sys_role_menu` VALUES (2, 2016);
INSERT INTO `sys_role_menu` VALUES (2, 2017);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (2, 2019);
INSERT INTO `sys_role_menu` VALUES (2, 2020);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2022);
INSERT INTO `sys_role_menu` VALUES (2, 2023);
INSERT INTO `sys_role_menu` VALUES (2, 2030);
INSERT INTO `sys_role_menu` VALUES (2, 2031);
INSERT INTO `sys_role_menu` VALUES (2, 2032);
INSERT INTO `sys_role_menu` VALUES (2, 2033);
INSERT INTO `sys_role_menu` VALUES (2, 2034);
INSERT INTO `sys_role_menu` VALUES (2, 2035);
INSERT INTO `sys_role_menu` VALUES (2, 2036);
INSERT INTO `sys_role_menu` VALUES (2, 2037);
INSERT INTO `sys_role_menu` VALUES (2, 2038);
INSERT INTO `sys_role_menu` VALUES (2, 2039);
INSERT INTO `sys_role_menu` VALUES (2, 2040);
INSERT INTO `sys_role_menu` VALUES (2, 2041);
INSERT INTO `sys_role_menu` VALUES (2, 2042);
INSERT INTO `sys_role_menu` VALUES (2, 2043);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 101);
INSERT INTO `sys_role_menu` VALUES (100, 102);
INSERT INTO `sys_role_menu` VALUES (100, 105);
INSERT INTO `sys_role_menu` VALUES (100, 106);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 109);
INSERT INTO `sys_role_menu` VALUES (100, 110);
INSERT INTO `sys_role_menu` VALUES (100, 111);
INSERT INTO `sys_role_menu` VALUES (100, 112);
INSERT INTO `sys_role_menu` VALUES (100, 113);
INSERT INTO `sys_role_menu` VALUES (100, 114);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1000);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1007);
INSERT INTO `sys_role_menu` VALUES (100, 1008);
INSERT INTO `sys_role_menu` VALUES (100, 1009);
INSERT INTO `sys_role_menu` VALUES (100, 1010);
INSERT INTO `sys_role_menu` VALUES (100, 1011);
INSERT INTO `sys_role_menu` VALUES (100, 1012);
INSERT INTO `sys_role_menu` VALUES (100, 1013);
INSERT INTO `sys_role_menu` VALUES (100, 1014);
INSERT INTO `sys_role_menu` VALUES (100, 1015);
INSERT INTO `sys_role_menu` VALUES (100, 1025);
INSERT INTO `sys_role_menu` VALUES (100, 1026);
INSERT INTO `sys_role_menu` VALUES (100, 1027);
INSERT INTO `sys_role_menu` VALUES (100, 1028);
INSERT INTO `sys_role_menu` VALUES (100, 1029);
INSERT INTO `sys_role_menu` VALUES (100, 1030);
INSERT INTO `sys_role_menu` VALUES (100, 1031);
INSERT INTO `sys_role_menu` VALUES (100, 1032);
INSERT INTO `sys_role_menu` VALUES (100, 1033);
INSERT INTO `sys_role_menu` VALUES (100, 1034);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 1046);
INSERT INTO `sys_role_menu` VALUES (100, 1047);
INSERT INTO `sys_role_menu` VALUES (100, 1048);
INSERT INTO `sys_role_menu` VALUES (100, 1049);
INSERT INTO `sys_role_menu` VALUES (100, 1050);
INSERT INTO `sys_role_menu` VALUES (100, 1051);
INSERT INTO `sys_role_menu` VALUES (100, 1052);
INSERT INTO `sys_role_menu` VALUES (100, 1053);
INSERT INTO `sys_role_menu` VALUES (100, 1054);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '你会', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-02-24 10:05:53', 'admin', '2024-02-19 22:58:56', '', '2024-02-24 10:05:53', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', 'hello', '00', '', '15666666666', '1', '', '$2a$10$7s56PzD5PusvuxADWP3T2Owh3M0p6u6ylU6i8ZTY9jAVOXPWsrukm', '0', '2', '127.0.0.1', '2024-02-22 19:35:48', 'admin', '2024-02-19 22:58:56', 'admin', '2024-02-22 23:56:35', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, '123', '1', '00', '', '', '0', '', '$2a$10$c35OE0mxbsROZ/rtmaEFBuBfl5zJqrHvuo5wjWkbK/Xzn52kNX52u', '0', '0', '127.0.0.1', '2024-02-24 10:24:07', 'admin', '2024-02-22 23:58:23', '', '2024-02-24 10:24:06', NULL);
INSERT INTO `sys_user` VALUES (101, NULL, 'abo', 'abo', '00', '', '', '0', '', '$2a$10$BwliSaop6lviEoZWENY6GOXG2XRA7TMMGENNoFSeqM15JVFwaAGhq', '0', '0', '127.0.0.1', '2024-02-23 00:36:16', 'admin', '2024-02-23 00:06:01', '', '2024-02-23 00:36:15', 'guanli');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (100, 2);
INSERT INTO `sys_user_role` VALUES (101, 100);

SET FOREIGN_KEY_CHECKS = 1;
