/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50650
 Source Host           : localhost:3306
 Source Schema         : supplierbarcode

 Target Server Type    : MySQL
 Target Server Version : 50650
 File Encoding         : 65001

 Date: 28/11/2024 16:55:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'sys_deliver_order', '送货单表', NULL, NULL, 'SysDeliverOrder', 'crud', 'element-ui', 'com.ruoyi.system', 'deliver', 'order', '送货单', 'liyanru', '0', '/', '{}', 'admin', '2024-09-18 08:50:33', '', '2024-09-18 09:46:41', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (27, '4', 'deliver_id', '送货单ID', 'int(11)', 'Long', 'deliverId', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (28, '4', 'deliver_order_number', '送货订单编号', 'int(100)', 'Long', 'deliverOrderNumber', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (29, '4', 'purchase_order_number', '采购订单编号', 'int(100)', 'Long', 'purchaseOrderNumber', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (30, '4', 'factory', '工厂', 'varchar(255)', 'String', 'factory', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (31, '4', 'line_number', '行号', 'int(20)', 'Long', 'lineNumber', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (32, '4', 'project_category', '项目类别', 'varchar(255)', 'String', 'projectCategory', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (33, '4', 'order_date', '下单日期', 'datetime', 'Date', 'orderDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (34, '4', 'delivery_date', '交货日期', 'datetime', 'Date', 'deliveryDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (35, '4', 'material_code', '物料编码', 'varchar(255)', 'String', 'materialCode', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (36, '4', 'material_description', '物料描述', 'varchar(255)', 'String', 'materialDescription', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (37, '4', 'order_quantity', '下单数量', 'double(8,1) unsigned zerofill', 'BigDecimal', 'orderQuantity', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (38, '4', 'delivered_quantity', '已交货数量', 'double(8,1) unsigned zerofill', 'BigDecimal', 'deliveredQuantity', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (39, '4', 'delivery_quantity', '送货数量', 'double(8,1) unsigned zerofill', 'BigDecimal', 'deliveryQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (40, '4', 'label_number', '标签数量', 'double(4,1) unsigned zerofill', 'BigDecimal', 'labelNumber', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (41, '4', 'label_weight', '标签重量', 'double(4,1) unsigned zerofill', 'BigDecimal', 'labelWeight', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (42, '4', 'material', '材质', 'varchar(255)', 'String', 'material', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (43, '4', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (44, '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (45, '4', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 19, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (46, '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 20, 'admin', '2024-09-14 09:12:03', '', '2024-09-14 09:16:01');
INSERT INTO `gen_table_column` VALUES (47, '1', 'deliver_id', '送货单ID', 'int(11)', 'Long', 'deliverId', '1', '1', '0', '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (48, '1', 'supplieId', '供应商编码', 'int(11)', 'String', 'supplieId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (49, '1', 'asnNo', '送货订单编号(送货单单号)', 'int(100)', 'String', 'asnNo', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (50, '1', 'poNo', '采购订单编号(采购单单号)', 'int(100)', 'String', 'poNo', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (51, '1', 'factory', '工厂', 'varchar(255)', 'String', 'factory', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (52, '1', 'line_number', '送货单行号', 'int(20)', 'Long', 'lineNumber', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (53, '1', 'project_category', '采购组', 'varchar(255)', 'String', 'projectCategory', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (54, '1', 'order_date', '生产日期', 'datetime', 'Date', 'orderDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (55, '1', 'delivery_date', '送货日期', 'datetime', 'Date', 'deliveryDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (56, '1', 'sku', '物料编码(物料号)', 'char(40)', 'String', 'sku', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (57, '1', 'skuDescr', '物料描述（物料名）', 'varchar(255)', 'String', 'skuDescr', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (58, '1', 'order_quantity', '下单数量', 'double(8,1) unsigned zerofill', 'BigDecimal', 'orderQuantity', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (59, '1', 'lotatt15', '业务范围（工厂3012）', 'varchar(255)', 'String', 'lotatt15', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (60, '1', 'delivered_quantity', '已交货数量', 'double(8,1) unsigned zerofill', 'BigDecimal', 'deliveredQuantity', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (61, '1', 'expectedQty', '送货数量', 'double(8,1) unsigned zerofill', 'BigDecimal', 'expectedQty', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (62, '1', 'totalNetWeight', '送货重量', 'double(8,1) unsigned zerofill', 'BigDecimal', 'totalNetWeight', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (63, '1', 'packUom', '基本计量单位', 'varchar(255)', 'String', 'packUom', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (64, '1', 'udf03', '重量单位', 'varchar(255)', 'String', 'udf03', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (65, '1', 'overRcvPercentage', '过量收货比例', 'varchar(255)', 'String', 'overRcvPercentage', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (66, '1', 'udf04', '无限制收货', 'varchar(255)', 'String', 'udf04', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (67, '1', 'qcStatus', '收到质检库存（x表示质检\r\n空表示不需质检）', 'varchar(255)', 'String', 'qcStatus', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 22, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (68, '1', 'lotatt09', 'SAP库存地点', 'varchar(255)', 'String', 'lotatt09', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (69, '1', 'lotatt14', '收货工厂编码', 'varchar(255)', 'String', 'lotatt14', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (70, '1', 'label_number', '标签数量', 'double(4,1) unsigned zerofill', 'BigDecimal', 'labelNumber', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (71, '1', 'label_weight', '标签重量', 'double(4,1) unsigned zerofill', 'BigDecimal', 'labelWeight', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (72, '1', 'material', '材质', 'varchar(255)', 'String', 'material', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (73, '1', 'expectedArriveTime1', '计划到达日期->失效日期', 'datetime', 'Date', 'expectedArriveTime1', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 28, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (74, '1', 'placeOfDelivery', '送达地点', 'varchar(255)', 'String', 'placeOfDelivery', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 29, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (75, '1', 'addWho', '创建者', 'varchar(64)', 'String', 'addWho', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 30, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (76, '1', 'addTime', '创建时间', 'datetime', 'Date', 'addTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 31, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (77, '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 32, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (78, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 33, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (79, '1', 'poLineNo', '行号', 'int(20)', 'Long', 'poLineNo', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 34, 'admin', '2024-09-18 08:50:33', '', '2024-11-11 13:18:53');
INSERT INTO `gen_table_column` VALUES (80, '1', 'id', '序号id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, '', '2024-11-11 13:18:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (81, '1', 'specification', '规格', 'varchar(255)', 'String', 'specification', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 35, '', '2024-11-11 13:18:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (82, '1', 'review_status', '审核状态0 1 ', 'varchar(4)', 'String', 'reviewStatus', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 36, '', '2024-11-11 13:18:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (83, '1', 'machine', '机台', 'varchar(4)', 'String', 'machine', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 37, '', '2024-11-11 13:18:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (84, '1', 'cancel_bill', '冲销说明(取消过账)', 'varchar(255)', 'String', 'cancelBill', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 38, '', '2024-11-11 13:18:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (85, '1', '\r\nremain_deliver', '剩余发货数', 'int(20)', 'Long', '\r\nremainDeliver', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 39, '', '2024-11-11 13:18:53', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-09-12 09:21:48', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-09-12 09:21:48', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-09-12 09:21:48', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'Y', 'admin', '2024-09-12 09:21:48', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-09-12 09:21:48', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_deliver_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_deliver_order`;
CREATE TABLE `sys_deliver_order`  (
  `deliver_id` int(11) NULL DEFAULT NULL COMMENT '送货单ID',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号id',
  `supplieId` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `asnNo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送货订单编号(送货单单号)',
  `poNo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购订单编号(采购单单号)',
  `factory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工厂',
  `line_number` int(20) NULL DEFAULT NULL COMMENT '送货单行号',
  `project_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购组',
  `order_date` datetime NULL DEFAULT NULL COMMENT '生产日期',
  `delivery_date` datetime NULL DEFAULT NULL COMMENT '送货日期',
  `sku` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编码(物料号)',
  `skuDescr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料描述（物料名）',
  `order_quantity` double(8, 1) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '下单数量',
  `lotatt15` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务范围（工厂3012）',
  `delivered_quantity` double(8, 1) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '已交货数量',
  `expectedQty` double(8, 1) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '送货数量',
  `totalNetWeight` double(8, 1) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '送货重量',
  `packUom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本计量单位',
  `udf03` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '重量单位',
  `overRcvPercentage` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '过量收货比例',
  `udf04` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '无限制收货',
  `qcStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收到质检库存（x表示质检\r\n空表示不需质检）',
  `stockLocat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SAP库存地点',
  `manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓管人',
  `lotatt14` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货工厂编码',
  `label_number` double(4, 1) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '标签数量',
  `label_weight` double(4, 1) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '标签重量',
  `material` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '材质',
  `expectedArriveTime1` datetime NULL DEFAULT NULL COMMENT '计划到达日期->失效日期',
  `placeOfDelivery` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送达地点',
  `addWho` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `addTime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `poLineNo` int(20) NULL DEFAULT NULL COMMENT '行号',
  `specification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `review_status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核状态0 1 ',
  `machine` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机台',
  `cancel_bill` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冲销说明(取消过账)',
  `remain_deliver` int(20) NULL DEFAULT NULL COMMENT '剩余送货数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 150 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '送货单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_deliver_order
-- ----------------------------
INSERT INTO `sys_deliver_order` VALUES (NULL, 109, '100083', 'DG202410240001', '5500079323', '3012', 10, 'B06', NULL, NULL, '91101000439', 'C1100/1.2(+0/-0.03)*92(+0.05/-0.1)', 010000.0, '3012', NULL, 000110.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '紫铜', NULL, NULL, '', '2024-11-14 15:34:46', '', '2024-11-14 15:34:46', 10, '抗拉强度245-315N/MM2，硬度HV100°±20°', '已审核', NULL, '冲销说明冲销说明冲销说明冲销说明', NULL);
INSERT INTO `sys_deliver_order` VALUES (NULL, 110, '100083', 'DG202410240002', '5500079323', '3012', 10, 'B06', NULL, NULL, '91101000439', 'C1100/1.2(+0/-0.03)*92(+0.05/-0.1)', 010000.0, '3012', NULL, 000210.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '紫铜', NULL, NULL, '', '2024-11-14 15:34:47', '', '2024-11-14 15:34:47', 10, '抗拉强度245-315N/MM2，硬度HV100°±20°', '已审核', NULL, NULL, NULL);
INSERT INTO `sys_deliver_order` VALUES (NULL, 111, '100083', 'DG202410240003', '5500079323', '3012', 10, 'B06', NULL, NULL, '91101000439', 'C1100/1.2(+0/-0.03)*92(+0.05/-0.1)', 010000.0, '3012', NULL, 000099.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '紫铜', NULL, NULL, '', '2024-11-14 15:34:53', '', '2024-11-14 15:34:53', 10, '抗拉强度245-315N/MM2，硬度HV100°±20°', '已审核', NULL, NULL, NULL);
INSERT INTO `sys_deliver_order` VALUES (NULL, 112, '100084', 'DG202410250001', '5500079324', '3012', 10, 'B06', NULL, NULL, '10062000192', 'DG250-3.5-1100A大焊脚镀锡', 001000.0, '3012', NULL, 000200.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '磷青铜C5210', NULL, NULL, '', '2024-10-25 08:53:53', '', '2024-10-25 08:53:53', 10, '(特殊品)CU底2UM以上,NI底0.3UM以上,SN层4UM以上', '已审核', NULL, NULL, NULL);
INSERT INTO `sys_deliver_order` VALUES (NULL, 113, '100084', 'DG202410250002', '5500076396', '3012', 10, 'B05', NULL, NULL, '10062000274', 'DG228-3.5-02P钢接线体(X000003660)镀锡', 089080.0, '3012', NULL, 001025.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢SPCC+进口不锈钢', NULL, NULL, '', '2024-10-25 11:15:02', '', NULL, 10, '冲击镍1UM以上,CU底1UM以上,SN层4UM以上', '未审核', NULL, NULL, NULL);
INSERT INTO `sys_deliver_order` VALUES (NULL, 114, '100388', 'DG202411150001', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000200.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 11:25:53', '', '2024-11-15 11:25:53', 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 9800);
INSERT INTO `sys_deliver_order` VALUES (NULL, 115, '100388', 'DG202411150002', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000200.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 11:41:09', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 9800);
INSERT INTO `sys_deliver_order` VALUES (NULL, 116, '100388', 'DG202411150003', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000200.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 11:44:26', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 9600);
INSERT INTO `sys_deliver_order` VALUES (NULL, 117, '100388', 'DG202411150004', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000200.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 13:32:00', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 9400);
INSERT INTO `sys_deliver_order` VALUES (NULL, 118, '100388', 'DG202411150005', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000200.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 13:32:26', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 9200);
INSERT INTO `sys_deliver_order` VALUES (NULL, 119, '100388', 'DG202411150006', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000200.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 13:44:19', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 9000);
INSERT INTO `sys_deliver_order` VALUES (NULL, 120, '100388', 'DG202411150007', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000200.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 13:52:25', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 8800);
INSERT INTO `sys_deliver_order` VALUES (NULL, 121, '100388', 'DG202411150008', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000200.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 13:52:53', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 8600);
INSERT INTO `sys_deliver_order` VALUES (NULL, 122, '100388', 'DG202411150009', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000200.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 13:54:57', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 8400);
INSERT INTO `sys_deliver_order` VALUES (NULL, 123, '100388', 'DG202411150010', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000200.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 13:58:01', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 8200);
INSERT INTO `sys_deliver_order` VALUES (NULL, 124, '100388', 'DG202411150011', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000001.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 13:59:24', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 8000);
INSERT INTO `sys_deliver_order` VALUES (NULL, 125, '100388', 'DG202411150012', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000008.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 13:59:58', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7999);
INSERT INTO `sys_deliver_order` VALUES (NULL, 126, '100388', 'DG202411150013', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000001.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:02:34', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7991);
INSERT INTO `sys_deliver_order` VALUES (NULL, 127, '100388', 'DG202411150014', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000090.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:09:37', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7990);
INSERT INTO `sys_deliver_order` VALUES (NULL, 128, '100388', 'DG202411150015', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000100.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:12:55', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7900);
INSERT INTO `sys_deliver_order` VALUES (NULL, 129, '100388', 'DG202411150016', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000006.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:15:16', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7800);
INSERT INTO `sys_deliver_order` VALUES (NULL, 130, '100388', 'DG202411150017', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000004.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:16:20', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7794);
INSERT INTO `sys_deliver_order` VALUES (NULL, 131, '100388', 'DG202411150018', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000006.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:17:25', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7790);
INSERT INTO `sys_deliver_order` VALUES (NULL, 132, '100388', 'DG202411150019', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000004.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:17:53', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7784);
INSERT INTO `sys_deliver_order` VALUES (NULL, 133, '100388', 'DG202411150020', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000002.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:18:47', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7780);
INSERT INTO `sys_deliver_order` VALUES (NULL, 134, '100388', 'DG202411150021', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000008.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:20:03', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7778);
INSERT INTO `sys_deliver_order` VALUES (NULL, 135, '100388', 'DG202411150022', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000005.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:22:38', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7770);
INSERT INTO `sys_deliver_order` VALUES (NULL, 136, '100388', 'DG202411150023', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000005.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:24:26', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7765);
INSERT INTO `sys_deliver_order` VALUES (NULL, 137, '100388', 'DG202411150024', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000005.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:26:41', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7760);
INSERT INTO `sys_deliver_order` VALUES (NULL, 138, '100388', 'DG202411150025', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000005.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:27:54', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7755);
INSERT INTO `sys_deliver_order` VALUES (NULL, 139, '100388', 'DG202411150026', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000005.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:32:13', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7750);
INSERT INTO `sys_deliver_order` VALUES (NULL, 140, '100388', 'DG202411150027', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000010.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:35:09', '', '2024-11-15 14:35:09', 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7745);
INSERT INTO `sys_deliver_order` VALUES (NULL, 141, '100388', 'DG202411150028', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000005.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:35:52', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7735);
INSERT INTO `sys_deliver_order` VALUES (NULL, 142, '100388', 'DG202411150029', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000005.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:39:30', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7730);
INSERT INTO `sys_deliver_order` VALUES (NULL, 143, '100388', 'DG202411150030', '4800038376', '3012', 10, 'B06', NULL, NULL, '92100000176', 'DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金', 010000.0, '3013', NULL, 000005.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢C1018/1022', NULL, NULL, '', '2024-11-15 14:43:39', '', NULL, 20, '镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H', '未审核', NULL, NULL, 7725);
INSERT INTO `sys_deliver_order` VALUES (NULL, 144, '100084', 'DG202411150031', '5500079342', '3012', 10, 'B07', NULL, NULL, '10042000025', 'DG124-83A焊脚镀锡', 001000.0, '3012', NULL, 000050.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '黄铜H70', NULL, NULL, '', '2024-11-15 15:17:02', '', NULL, 10, '(特殊品)CU底2UM以上,NI底0.3UM以上,SN层4UM以上', '未审核', NULL, NULL, 1000);
INSERT INTO `sys_deliver_order` VALUES (NULL, 145, '100084', 'DG202411150032', '5500079343', '3012', 10, 'B07', NULL, NULL, '10042000025', 'DG124-83A焊脚镀锡', 001000.0, '3012', NULL, 000050.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '黄铜H70', NULL, NULL, '', '2024-11-15 15:47:10', '', NULL, 10, '(特殊品)CU底2UM以上,NI底0.3UM以上,SN层4UM以上', '未审核', NULL, NULL, 1000);
INSERT INTO `sys_deliver_order` VALUES (NULL, 146, '100084', 'DG202411190001', '5500076935', '3012', 10, 'B05', NULL, NULL, '12042000063', 'DG88焊脚镀雾锡', 021780.0, '3012', NULL, 000170.0, NULL, NULL, NULL, '0', NULL, NULL, '仓库1', '张三', NULL, 00.0, 00.0, '紫铜C1100', NULL, NULL, '', '2024-11-19 16:20:19', '', '2024-11-19 16:20:19', 10, '镀雾锡:CU底2UM以上,NI底2UM以上,SN层4UM以上', '已审核', NULL, NULL, 21780);
INSERT INTO `sys_deliver_order` VALUES (NULL, 147, '100084', 'DG202411200001', '5500076396', '3012', 10, 'B05', NULL, NULL, '10062000274', 'DG228-3.5-02P钢接线体(X000003660)镀锡', 089080.0, '3012', NULL, 000055.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '钢SPCC+进口不锈钢', NULL, NULL, '', '2024-11-20 08:30:16', '', NULL, 10, '冲击镍1UM以上,CU底1UM以上,SN层4UM以上', '未审核', NULL, NULL, 88055);
INSERT INTO `sys_deliver_order` VALUES (NULL, 148, '100084', 'DG202411200002', '5500076374', '3012', 10, 'B05', NULL, NULL, '12022000059', 'DG45R-B-200A焊脚镀锡', 016470.0, '3012', NULL, 000070.0, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 00.0, 00.0, '黄铜H62', NULL, NULL, '', '2024-11-20 13:46:00', '', NULL, 10, '(特殊品)CU底2-4UM,NI底0.3-0.7UM,SN层4-8UM', '未审核', NULL, NULL, 16470);
INSERT INTO `sys_deliver_order` VALUES (NULL, 149, '100084', 'DG202411210001', '5500076374', '3012', 10, 'B05', NULL, NULL, '12022000059', 'DG45R-B-200A焊脚镀锡', 016470.0, '3012', NULL, 000070.0, NULL, NULL, NULL, '0', NULL, NULL, '5001', '', NULL, 00.0, 00.0, '黄铜H62', NULL, NULL, '', '2024-11-21 09:23:02', '', '2024-11-21 09:23:02', 10, '(特殊品)CU底2-4UM,NI底0.3-0.7UM,SN层4-8UM', '已审核', NULL, NULL, 16400);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '高松电子', 0, '清清', '15888888888', 'qqq@qq.com', '0', '0', 'admin', '2024-09-12 09:21:45', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '清清', '15888888888', 'qqq@qq.com', '0', '0', 'admin', '2024-09-12 09:21:45', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '清清', '15888888888', 'qqq@qq.com', '0', '0', 'admin', '2024-09-12 09:21:45', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 3, '清清', '15888888888', 'qqq@qq.com', '0', '0', 'admin', '2024-09-12 09:21:45', 'admin', '2024-10-11 08:54:58');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '清清', '15888888888', 'qqq@qq.com', '0', '0', 'admin', '2024-09-12 09:21:45', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '清清', '15888888888', 'qqq@qq.com', '0', '0', 'admin', '2024-09-12 09:21:45', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '清清', '15888888888', 'qqq@qq.com', '0', '0', 'admin', '2024-09-12 09:21:45', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '清清', '15888888888', 'qqq@qq.com', '0', '0', 'admin', '2024-09-12 09:21:45', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '清清', '15888888888', 'qqq@qq.com', '0', '0', 'admin', '2024-09-12 09:21:45', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '清清', '15888888888', 'qqq@qq.com', '0', '0', 'admin', '2024-09-12 09:21:45', '', NULL);
INSERT INTO `sys_dept` VALUES (110, 101, '0,100,101', '采购部门', 0, '李艳茹', '18465827695', 'lyr@qq.com', '0', '0', 'admin', '2024-10-11 08:51:40', 'admin', '2024-10-11 08:54:37');
INSERT INTO `sys_dept` VALUES (111, 101, '0,100,101', '供应商部门', 1, 'yara', '18465827695', 'lyr@qq.com', '0', '0', 'admin', '2024-10-11 08:52:13', 'admin', '2024-10-11 08:56:40');
INSERT INTO `sys_dept` VALUES (112, 110, '0,100,101,110', 'A1', 0, 'lya', '15845621587', 'lya@qq.com', '0', '0', 'admin', '2024-10-11 08:55:51', 'admin', '2024-10-11 10:15:02');
INSERT INTO `sys_dept` VALUES (113, 110, '0,100,101,110', 'A2', 0, 'lyr', '15865426655', 'lyr@qq.com', '0', '0', 'admin', '2024-10-11 08:56:23', 'admin', '2024-11-19 16:16:13');
INSERT INTO `sys_dept` VALUES (114, 110, '0,100,101,110', 'B06', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-10-17 10:02:45', '', NULL);
INSERT INTO `sys_dept` VALUES (115, 110, '0,100,101,110', 'B07', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-10-18 11:07:39', 'admin', '2024-10-18 11:22:20');
INSERT INTO `sys_dept` VALUES (116, 110, '0,100,101,110', 'B05', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-11-19 16:16:05', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-09-12 09:21:48', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-09-12 09:21:49', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-09-12 09:21:49', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-09-12 09:21:49', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 849 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 09:48:46');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 09:50:49');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 09:54:01');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 09:56:52');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:06:51');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:11:34');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:17:40');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:42:32');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:42:51');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:42:52');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:46:27');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:46:48');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:48:05');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:48:07');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:48:08');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:48:11');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:48:13');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:48:17');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 10:48:19');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:01:24');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:01:25');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:01:51');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:01:52');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:17:22');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:17:24');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:17:26');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:17:27');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:17:50');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:17:51');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:17:54');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:18:36');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:18:45');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:18:46');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:18:52');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:18:53');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:18:59');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:19:01');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:19:03');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:19:06');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:19:09');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:22:22');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:25:37');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:25:48');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:25:50');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:25:55');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:25:59');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:36:51');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:36:52');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:37:01');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:37:03');
INSERT INTO `sys_logininfor` VALUES (150, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '登录用户：100388 不存在', '2024-09-12 11:37:08');
INSERT INTO `sys_logininfor` VALUES (151, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '登录用户：100388 不存在', '2024-09-12 11:37:24');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-09-12 11:37:29');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-12 11:37:29');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误2次', '2024-09-12 11:37:30');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-12 11:37:30');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误3次', '2024-09-12 11:37:32');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-12 11:37:32');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误4次', '2024-09-12 11:37:54');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-12 11:37:54');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次', '2024-09-12 11:37:57');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-12 11:37:57');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:38:09');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:38:09');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:38:23');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:38:23');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:38:26');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:38:26');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:38:41');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:38:41');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:38:50');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:38:50');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:41:10');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2024-09-12 11:41:10');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:53:18');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 11:53:46');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 13:54:43');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 13:54:44');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 15:14:40');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 15:16:12');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 15:17:21');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-12 15:20:53');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 08:33:33');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 09:09:54');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 09:10:16');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 09:13:58');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 09:14:05');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 09:23:42');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 10:19:57');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 10:21:18');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 11:07:20');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 11:07:22');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 11:43:02');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 13:40:08');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 14:45:23');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-13 14:56:52');
INSERT INTO `sys_logininfor` VALUES (196, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-09-13 14:57:03');
INSERT INTO `sys_logininfor` VALUES (197, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-13 14:57:03');
INSERT INTO `sys_logininfor` VALUES (198, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 14:57:09');
INSERT INTO `sys_logininfor` VALUES (199, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 15:28:56');
INSERT INTO `sys_logininfor` VALUES (200, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-13 15:58:22');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-13 15:58:28');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-09-13 15:58:28');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 15:58:32');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 17:15:18');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-13 17:18:04');
INSERT INTO `sys_logininfor` VALUES (206, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-13 17:18:09');
INSERT INTO `sys_logininfor` VALUES (207, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-09-13 17:18:09');
INSERT INTO `sys_logininfor` VALUES (208, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 17:18:14');
INSERT INTO `sys_logininfor` VALUES (209, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-13 17:22:19');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-13 17:22:23');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-09-13 17:22:23');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-13 17:22:28');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 08:17:13');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 08:20:35');
INSERT INTO `sys_logininfor` VALUES (215, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 08:20:41');
INSERT INTO `sys_logininfor` VALUES (216, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 08:21:42');
INSERT INTO `sys_logininfor` VALUES (217, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 08:21:46');
INSERT INTO `sys_logininfor` VALUES (218, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 08:22:26');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 08:22:31');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 08:59:47');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 09:01:48');
INSERT INTO `sys_logininfor` VALUES (222, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 09:01:52');
INSERT INTO `sys_logininfor` VALUES (223, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 09:03:07');
INSERT INTO `sys_logininfor` VALUES (224, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 09:03:11');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 09:03:14');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 09:46:59');
INSERT INTO `sys_logininfor` VALUES (227, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 09:47:03');
INSERT INTO `sys_logininfor` VALUES (228, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 10:05:15');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 10:05:22');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 10:14:34');
INSERT INTO `sys_logininfor` VALUES (231, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 10:14:37');
INSERT INTO `sys_logininfor` VALUES (232, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 10:15:20');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 10:15:24');
INSERT INTO `sys_logininfor` VALUES (234, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 10:20:28');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 13:49:15');
INSERT INTO `sys_logininfor` VALUES (236, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 13:49:56');
INSERT INTO `sys_logininfor` VALUES (237, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 14:21:54');
INSERT INTO `sys_logininfor` VALUES (238, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 14:21:57');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-14 14:32:53');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 14:32:57');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 15:21:44');
INSERT INTO `sys_logininfor` VALUES (242, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 15:25:22');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 17:01:46');
INSERT INTO `sys_logininfor` VALUES (244, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-14 17:02:08');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 08:19:18');
INSERT INTO `sys_logininfor` VALUES (246, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 08:20:50');
INSERT INTO `sys_logininfor` VALUES (247, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 09:40:13');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 10:15:16');
INSERT INTO `sys_logininfor` VALUES (249, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 10:36:39');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 11:07:48');
INSERT INTO `sys_logininfor` VALUES (251, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 11:13:19');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 14:47:18');
INSERT INTO `sys_logininfor` VALUES (253, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 14:52:54');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 16:08:13');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 16:54:23');
INSERT INTO `sys_logininfor` VALUES (256, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-18 16:59:19');
INSERT INTO `sys_logininfor` VALUES (257, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 08:05:37');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 08:05:50');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 08:05:55');
INSERT INTO `sys_logininfor` VALUES (260, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 08:46:36');
INSERT INTO `sys_logininfor` VALUES (261, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 09:30:43');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 09:44:28');
INSERT INTO `sys_logininfor` VALUES (263, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 10:08:44');
INSERT INTO `sys_logininfor` VALUES (264, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 13:39:50');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 13:40:03');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 14:15:12');
INSERT INTO `sys_logininfor` VALUES (267, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 15:11:43');
INSERT INTO `sys_logininfor` VALUES (268, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 16:10:11');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 16:31:53');
INSERT INTO `sys_logininfor` VALUES (270, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-19 17:24:19');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 08:06:32');
INSERT INTO `sys_logininfor` VALUES (272, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 08:06:54');
INSERT INTO `sys_logininfor` VALUES (273, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 10:19:39');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 10:27:35');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-09-20 10:27:48');
INSERT INTO `sys_logininfor` VALUES (276, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 10:27:54');
INSERT INTO `sys_logininfor` VALUES (277, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-09-20 10:29:23');
INSERT INTO `sys_logininfor` VALUES (278, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 10:29:31');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 10:30:41');
INSERT INTO `sys_logininfor` VALUES (280, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-09-20 10:30:41');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 10:30:50');
INSERT INTO `sys_logininfor` VALUES (282, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 10:30:55');
INSERT INTO `sys_logininfor` VALUES (283, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 10:30:58');
INSERT INTO `sys_logininfor` VALUES (284, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 10:33:56');
INSERT INTO `sys_logininfor` VALUES (285, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-09-20 10:43:43');
INSERT INTO `sys_logininfor` VALUES (286, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 11:15:29');
INSERT INTO `sys_logininfor` VALUES (287, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 13:53:23');
INSERT INTO `sys_logininfor` VALUES (288, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 13:55:08');
INSERT INTO `sys_logininfor` VALUES (289, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 13:55:38');
INSERT INTO `sys_logininfor` VALUES (290, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-09-20 13:55:47');
INSERT INTO `sys_logininfor` VALUES (291, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 13:55:49');
INSERT INTO `sys_logininfor` VALUES (292, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-09-20 13:55:59');
INSERT INTO `sys_logininfor` VALUES (293, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 13:56:11');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 14:21:52');
INSERT INTO `sys_logininfor` VALUES (295, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 15:22:35');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 15:24:41');
INSERT INTO `sys_logininfor` VALUES (297, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 15:26:13');
INSERT INTO `sys_logininfor` VALUES (298, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 15:26:17');
INSERT INTO `sys_logininfor` VALUES (299, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 15:26:28');
INSERT INTO `sys_logininfor` VALUES (300, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 15:26:34');
INSERT INTO `sys_logininfor` VALUES (301, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 15:28:32');
INSERT INTO `sys_logininfor` VALUES (302, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 15:28:36');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 15:28:58');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 15:29:01');
INSERT INTO `sys_logininfor` VALUES (305, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 16:01:23');
INSERT INTO `sys_logininfor` VALUES (306, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 16:13:05');
INSERT INTO `sys_logininfor` VALUES (307, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 16:13:30');
INSERT INTO `sys_logininfor` VALUES (308, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 16:13:49');
INSERT INTO `sys_logininfor` VALUES (309, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 16:14:00');
INSERT INTO `sys_logininfor` VALUES (310, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 16:16:51');
INSERT INTO `sys_logininfor` VALUES (311, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 16:16:57');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 16:18:36');
INSERT INTO `sys_logininfor` VALUES (313, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 16:36:04');
INSERT INTO `sys_logininfor` VALUES (314, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-09-20 16:37:50');
INSERT INTO `sys_logininfor` VALUES (315, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-09-20 16:37:54');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 16:46:19');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 16:46:27');
INSERT INTO `sys_logininfor` VALUES (318, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 16:52:21');
INSERT INTO `sys_logininfor` VALUES (319, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 16:52:23');
INSERT INTO `sys_logininfor` VALUES (320, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-20 16:54:06');
INSERT INTO `sys_logininfor` VALUES (321, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 16:54:10');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-20 17:24:14');
INSERT INTO `sys_logininfor` VALUES (323, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 08:21:09');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 08:21:14');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 09:37:31');
INSERT INTO `sys_logininfor` VALUES (326, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 10:09:41');
INSERT INTO `sys_logininfor` VALUES (327, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 10:42:09');
INSERT INTO `sys_logininfor` VALUES (328, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 13:35:18');
INSERT INTO `sys_logininfor` VALUES (329, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 15:45:41');
INSERT INTO `sys_logininfor` VALUES (330, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 16:26:38');
INSERT INTO `sys_logininfor` VALUES (331, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-23 16:26:42');
INSERT INTO `sys_logininfor` VALUES (332, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 16:26:45');
INSERT INTO `sys_logininfor` VALUES (333, '100388', '192.168.91.86', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 17:19:18');
INSERT INTO `sys_logininfor` VALUES (334, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 17:26:01');
INSERT INTO `sys_logininfor` VALUES (335, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-23 17:26:06');
INSERT INTO `sys_logininfor` VALUES (336, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-23 17:26:08');
INSERT INTO `sys_logininfor` VALUES (337, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-24 08:07:31');
INSERT INTO `sys_logininfor` VALUES (338, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-24 10:32:00');
INSERT INTO `sys_logininfor` VALUES (339, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-24 13:46:09');
INSERT INTO `sys_logininfor` VALUES (340, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-24 15:01:39');
INSERT INTO `sys_logininfor` VALUES (341, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-24 16:26:53');
INSERT INTO `sys_logininfor` VALUES (342, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-25 08:03:23');
INSERT INTO `sys_logininfor` VALUES (343, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-25 08:03:49');
INSERT INTO `sys_logininfor` VALUES (344, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-25 11:01:48');
INSERT INTO `sys_logininfor` VALUES (345, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-25 13:36:31');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-25 15:08:12');
INSERT INTO `sys_logininfor` VALUES (347, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-25 16:01:59');
INSERT INTO `sys_logininfor` VALUES (348, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 08:16:49');
INSERT INTO `sys_logininfor` VALUES (349, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 08:19:18');
INSERT INTO `sys_logininfor` VALUES (350, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 09:19:01');
INSERT INTO `sys_logininfor` VALUES (351, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 10:09:17');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 11:25:58');
INSERT INTO `sys_logininfor` VALUES (353, 'purchase', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-26 11:52:46');
INSERT INTO `sys_logininfor` VALUES (354, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 11:52:49');
INSERT INTO `sys_logininfor` VALUES (355, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 13:38:17');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 13:50:07');
INSERT INTO `sys_logininfor` VALUES (357, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 14:21:34');
INSERT INTO `sys_logininfor` VALUES (358, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 15:35:47');
INSERT INTO `sys_logininfor` VALUES (359, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-26 15:37:49');
INSERT INTO `sys_logininfor` VALUES (360, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 08:05:48');
INSERT INTO `sys_logininfor` VALUES (361, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 08:06:18');
INSERT INTO `sys_logininfor` VALUES (362, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 09:48:46');
INSERT INTO `sys_logininfor` VALUES (363, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 09:51:16');
INSERT INTO `sys_logininfor` VALUES (364, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-09-27 09:51:30');
INSERT INTO `sys_logininfor` VALUES (365, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 09:52:29');
INSERT INTO `sys_logininfor` VALUES (366, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-27 11:04:58');
INSERT INTO `sys_logininfor` VALUES (367, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 11:05:08');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-27 11:06:15');
INSERT INTO `sys_logininfor` VALUES (369, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-27 11:06:48');
INSERT INTO `sys_logininfor` VALUES (370, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 11:06:57');
INSERT INTO `sys_logininfor` VALUES (371, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 11:08:00');
INSERT INTO `sys_logininfor` VALUES (372, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-27 11:10:16');
INSERT INTO `sys_logininfor` VALUES (373, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 11:10:23');
INSERT INTO `sys_logininfor` VALUES (374, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 13:35:37');
INSERT INTO `sys_logininfor` VALUES (375, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 14:17:27');
INSERT INTO `sys_logininfor` VALUES (376, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 14:46:49');
INSERT INTO `sys_logininfor` VALUES (377, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-27 16:11:30');
INSERT INTO `sys_logininfor` VALUES (378, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-29 08:15:13');
INSERT INTO `sys_logininfor` VALUES (379, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-29 10:15:02');
INSERT INTO `sys_logininfor` VALUES (380, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-29 10:15:52');
INSERT INTO `sys_logininfor` VALUES (381, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-29 11:14:47');
INSERT INTO `sys_logininfor` VALUES (382, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-29 13:41:09');
INSERT INTO `sys_logininfor` VALUES (383, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-29 13:50:42');
INSERT INTO `sys_logininfor` VALUES (384, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-29 14:21:51');
INSERT INTO `sys_logininfor` VALUES (385, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-29 15:10:30');
INSERT INTO `sys_logininfor` VALUES (386, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-30 08:04:40');
INSERT INTO `sys_logininfor` VALUES (387, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-30 08:19:48');
INSERT INTO `sys_logininfor` VALUES (388, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-30 09:31:51');
INSERT INTO `sys_logininfor` VALUES (389, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-30 10:33:46');
INSERT INTO `sys_logininfor` VALUES (390, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-30 11:13:47');
INSERT INTO `sys_logininfor` VALUES (391, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-30 11:28:40');
INSERT INTO `sys_logininfor` VALUES (392, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-30 13:40:48');
INSERT INTO `sys_logininfor` VALUES (393, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-08 09:38:33');
INSERT INTO `sys_logininfor` VALUES (394, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-08 09:38:55');
INSERT INTO `sys_logininfor` VALUES (395, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-08 13:11:26');
INSERT INTO `sys_logininfor` VALUES (396, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-08 13:53:44');
INSERT INTO `sys_logininfor` VALUES (397, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-08 13:58:47');
INSERT INTO `sys_logininfor` VALUES (398, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-09 08:29:28');
INSERT INTO `sys_logininfor` VALUES (399, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-09 08:35:33');
INSERT INTO `sys_logininfor` VALUES (400, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-09 09:08:31');
INSERT INTO `sys_logininfor` VALUES (401, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-09 10:54:34');
INSERT INTO `sys_logininfor` VALUES (402, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-09 13:06:45');
INSERT INTO `sys_logininfor` VALUES (403, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-09 14:17:56');
INSERT INTO `sys_logininfor` VALUES (404, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-10 08:51:00');
INSERT INTO `sys_logininfor` VALUES (405, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-10 13:04:47');
INSERT INTO `sys_logininfor` VALUES (406, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-10 14:23:39');
INSERT INTO `sys_logininfor` VALUES (407, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-10 16:15:41');
INSERT INTO `sys_logininfor` VALUES (408, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 08:11:42');
INSERT INTO `sys_logininfor` VALUES (409, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 08:11:57');
INSERT INTO `sys_logininfor` VALUES (410, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 08:59:42');
INSERT INTO `sys_logininfor` VALUES (411, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 09:01:25');
INSERT INTO `sys_logininfor` VALUES (412, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 09:01:44');
INSERT INTO `sys_logininfor` VALUES (413, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 09:27:06');
INSERT INTO `sys_logininfor` VALUES (414, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 09:27:15');
INSERT INTO `sys_logininfor` VALUES (415, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 09:30:25');
INSERT INTO `sys_logininfor` VALUES (416, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 09:30:35');
INSERT INTO `sys_logininfor` VALUES (417, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 10:11:21');
INSERT INTO `sys_logininfor` VALUES (418, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 10:30:34');
INSERT INTO `sys_logininfor` VALUES (419, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 10:30:41');
INSERT INTO `sys_logininfor` VALUES (420, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 10:43:52');
INSERT INTO `sys_logininfor` VALUES (421, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 10:44:13');
INSERT INTO `sys_logininfor` VALUES (422, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 10:45:36');
INSERT INTO `sys_logininfor` VALUES (423, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 10:45:43');
INSERT INTO `sys_logininfor` VALUES (424, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 10:46:01');
INSERT INTO `sys_logininfor` VALUES (425, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 10:46:07');
INSERT INTO `sys_logininfor` VALUES (426, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 13:13:15');
INSERT INTO `sys_logininfor` VALUES (427, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 13:24:26');
INSERT INTO `sys_logininfor` VALUES (428, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 13:24:33');
INSERT INTO `sys_logininfor` VALUES (429, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 13:37:24');
INSERT INTO `sys_logininfor` VALUES (430, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 13:48:30');
INSERT INTO `sys_logininfor` VALUES (431, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 13:48:58');
INSERT INTO `sys_logininfor` VALUES (432, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 13:51:55');
INSERT INTO `sys_logininfor` VALUES (433, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 13:52:01');
INSERT INTO `sys_logininfor` VALUES (434, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 14:20:12');
INSERT INTO `sys_logininfor` VALUES (435, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 14:20:18');
INSERT INTO `sys_logininfor` VALUES (436, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 14:21:27');
INSERT INTO `sys_logininfor` VALUES (437, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 14:21:31');
INSERT INTO `sys_logininfor` VALUES (438, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 14:24:54');
INSERT INTO `sys_logininfor` VALUES (439, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 14:25:03');
INSERT INTO `sys_logininfor` VALUES (440, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-11 14:29:37');
INSERT INTO `sys_logininfor` VALUES (441, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-11 14:33:10');
INSERT INTO `sys_logininfor` VALUES (442, 'purchase1', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-11 14:33:36');
INSERT INTO `sys_logininfor` VALUES (443, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 14:35:34');
INSERT INTO `sys_logininfor` VALUES (444, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-11 14:35:45');
INSERT INTO `sys_logininfor` VALUES (445, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 14:35:49');
INSERT INTO `sys_logininfor` VALUES (446, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 14:36:21');
INSERT INTO `sys_logininfor` VALUES (447, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 14:36:27');
INSERT INTO `sys_logininfor` VALUES (448, 'purchase1', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-11 14:36:31');
INSERT INTO `sys_logininfor` VALUES (449, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-11 14:36:38');
INSERT INTO `sys_logininfor` VALUES (450, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-11 14:37:08');
INSERT INTO `sys_logininfor` VALUES (451, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 15:49:26');
INSERT INTO `sys_logininfor` VALUES (452, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 15:49:45');
INSERT INTO `sys_logininfor` VALUES (453, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-11 15:56:39');
INSERT INTO `sys_logininfor` VALUES (454, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 15:56:44');
INSERT INTO `sys_logininfor` VALUES (455, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 16:51:04');
INSERT INTO `sys_logininfor` VALUES (456, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-11 16:53:49');
INSERT INTO `sys_logininfor` VALUES (457, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 09:47:29');
INSERT INTO `sys_logininfor` VALUES (458, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 09:48:29');
INSERT INTO `sys_logininfor` VALUES (459, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-12 09:49:08');
INSERT INTO `sys_logininfor` VALUES (460, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 09:51:55');
INSERT INTO `sys_logininfor` VALUES (461, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 09:54:06');
INSERT INTO `sys_logininfor` VALUES (462, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-12 09:54:28');
INSERT INTO `sys_logininfor` VALUES (463, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 09:54:31');
INSERT INTO `sys_logininfor` VALUES (464, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-12 09:55:40');
INSERT INTO `sys_logininfor` VALUES (465, 'pruchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-12 09:55:50');
INSERT INTO `sys_logininfor` VALUES (466, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 09:55:57');
INSERT INTO `sys_logininfor` VALUES (467, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-12 10:00:17');
INSERT INTO `sys_logininfor` VALUES (468, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 10:00:22');
INSERT INTO `sys_logininfor` VALUES (469, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-12 11:12:59');
INSERT INTO `sys_logininfor` VALUES (470, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 11:13:05');
INSERT INTO `sys_logininfor` VALUES (471, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 11:13:59');
INSERT INTO `sys_logininfor` VALUES (472, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-12 11:28:10');
INSERT INTO `sys_logininfor` VALUES (473, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 11:28:22');
INSERT INTO `sys_logininfor` VALUES (474, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-12 11:46:37');
INSERT INTO `sys_logininfor` VALUES (475, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 11:46:43');
INSERT INTO `sys_logininfor` VALUES (476, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 13:10:45');
INSERT INTO `sys_logininfor` VALUES (477, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-12 13:11:50');
INSERT INTO `sys_logininfor` VALUES (478, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 13:11:58');
INSERT INTO `sys_logininfor` VALUES (479, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 13:15:59');
INSERT INTO `sys_logininfor` VALUES (480, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 13:42:39');
INSERT INTO `sys_logininfor` VALUES (481, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-12 13:51:21');
INSERT INTO `sys_logininfor` VALUES (482, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 13:51:27');
INSERT INTO `sys_logininfor` VALUES (483, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-12 15:55:38');
INSERT INTO `sys_logininfor` VALUES (484, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-14 08:14:52');
INSERT INTO `sys_logininfor` VALUES (485, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-14 08:32:51');
INSERT INTO `sys_logininfor` VALUES (486, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-14 09:09:01');
INSERT INTO `sys_logininfor` VALUES (487, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-14 09:19:20');
INSERT INTO `sys_logininfor` VALUES (488, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-14 11:09:27');
INSERT INTO `sys_logininfor` VALUES (489, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-14 13:49:49');
INSERT INTO `sys_logininfor` VALUES (490, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-14 14:42:51');
INSERT INTO `sys_logininfor` VALUES (491, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-14 15:41:49');
INSERT INTO `sys_logininfor` VALUES (492, '100388', '192.168.91.22', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-14 17:19:59');
INSERT INTO `sys_logininfor` VALUES (493, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-15 08:20:48');
INSERT INTO `sys_logininfor` VALUES (494, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-15 11:19:26');
INSERT INTO `sys_logininfor` VALUES (495, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-15 13:18:46');
INSERT INTO `sys_logininfor` VALUES (496, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-15 14:16:59');
INSERT INTO `sys_logininfor` VALUES (497, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-16 08:14:54');
INSERT INTO `sys_logininfor` VALUES (498, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-16 09:40:11');
INSERT INTO `sys_logininfor` VALUES (499, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-16 11:49:04');
INSERT INTO `sys_logininfor` VALUES (500, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-16 13:11:25');
INSERT INTO `sys_logininfor` VALUES (501, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-16 14:31:19');
INSERT INTO `sys_logininfor` VALUES (502, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-16 15:34:35');
INSERT INTO `sys_logininfor` VALUES (503, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 08:14:12');
INSERT INTO `sys_logininfor` VALUES (504, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 08:14:37');
INSERT INTO `sys_logininfor` VALUES (505, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 08:29:54');
INSERT INTO `sys_logininfor` VALUES (506, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 08:30:04');
INSERT INTO `sys_logininfor` VALUES (507, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 08:35:33');
INSERT INTO `sys_logininfor` VALUES (508, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 08:35:36');
INSERT INTO `sys_logininfor` VALUES (509, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 09:05:44');
INSERT INTO `sys_logininfor` VALUES (510, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 09:37:53');
INSERT INTO `sys_logininfor` VALUES (511, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 10:01:45');
INSERT INTO `sys_logininfor` VALUES (512, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 10:01:50');
INSERT INTO `sys_logininfor` VALUES (513, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 10:07:25');
INSERT INTO `sys_logininfor` VALUES (514, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 10:07:39');
INSERT INTO `sys_logininfor` VALUES (515, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 10:12:52');
INSERT INTO `sys_logininfor` VALUES (516, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 10:13:00');
INSERT INTO `sys_logininfor` VALUES (517, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 10:16:25');
INSERT INTO `sys_logininfor` VALUES (518, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-17 10:16:28');
INSERT INTO `sys_logininfor` VALUES (519, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 10:16:35');
INSERT INTO `sys_logininfor` VALUES (520, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 11:14:33');
INSERT INTO `sys_logininfor` VALUES (521, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 11:14:41');
INSERT INTO `sys_logininfor` VALUES (522, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 11:15:28');
INSERT INTO `sys_logininfor` VALUES (523, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 11:15:34');
INSERT INTO `sys_logininfor` VALUES (524, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 11:33:26');
INSERT INTO `sys_logininfor` VALUES (525, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 11:33:32');
INSERT INTO `sys_logininfor` VALUES (526, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 13:13:58');
INSERT INTO `sys_logininfor` VALUES (527, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 13:16:21');
INSERT INTO `sys_logininfor` VALUES (528, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 14:38:12');
INSERT INTO `sys_logininfor` VALUES (529, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 14:38:17');
INSERT INTO `sys_logininfor` VALUES (530, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 14:39:23');
INSERT INTO `sys_logininfor` VALUES (531, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 14:39:30');
INSERT INTO `sys_logininfor` VALUES (532, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 14:46:07');
INSERT INTO `sys_logininfor` VALUES (533, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 14:46:12');
INSERT INTO `sys_logininfor` VALUES (534, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-17 14:50:03');
INSERT INTO `sys_logininfor` VALUES (535, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-17 14:51:52');
INSERT INTO `sys_logininfor` VALUES (536, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-17 14:52:01');
INSERT INTO `sys_logininfor` VALUES (537, 'purchase', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-17 15:13:58');
INSERT INTO `sys_logininfor` VALUES (538, 'purchase', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-17 15:14:02');
INSERT INTO `sys_logininfor` VALUES (539, 'purchaser', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-17 15:14:08');
INSERT INTO `sys_logininfor` VALUES (540, 'purchase', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-17 15:14:15');
INSERT INTO `sys_logininfor` VALUES (541, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 15:26:50');
INSERT INTO `sys_logininfor` VALUES (542, 'purchase1', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-17 15:37:50');
INSERT INTO `sys_logininfor` VALUES (543, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-17 15:39:39');
INSERT INTO `sys_logininfor` VALUES (544, 'purchase1', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-17 15:41:36');
INSERT INTO `sys_logininfor` VALUES (545, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-17 15:41:42');
INSERT INTO `sys_logininfor` VALUES (546, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 15:42:10');
INSERT INTO `sys_logininfor` VALUES (547, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-17 15:42:30');
INSERT INTO `sys_logininfor` VALUES (548, 'admin123', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-17 15:42:38');
INSERT INTO `sys_logininfor` VALUES (549, 'admin123', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-17 15:43:09');
INSERT INTO `sys_logininfor` VALUES (550, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-17 15:44:30');
INSERT INTO `sys_logininfor` VALUES (551, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-17 15:44:34');
INSERT INTO `sys_logininfor` VALUES (552, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 15:44:42');
INSERT INTO `sys_logininfor` VALUES (553, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-17 15:44:53');
INSERT INTO `sys_logininfor` VALUES (554, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 15:44:55');
INSERT INTO `sys_logininfor` VALUES (555, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 15:45:16');
INSERT INTO `sys_logininfor` VALUES (556, 'purchase3', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-17 15:45:28');
INSERT INTO `sys_logininfor` VALUES (557, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 15:47:35');
INSERT INTO `sys_logininfor` VALUES (558, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 15:47:40');
INSERT INTO `sys_logininfor` VALUES (559, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 15:47:46');
INSERT INTO `sys_logininfor` VALUES (560, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 15:53:27');
INSERT INTO `sys_logininfor` VALUES (561, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 15:53:36');
INSERT INTO `sys_logininfor` VALUES (562, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-17 16:05:20');
INSERT INTO `sys_logininfor` VALUES (563, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 16:05:24');
INSERT INTO `sys_logininfor` VALUES (564, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-17 16:33:52');
INSERT INTO `sys_logininfor` VALUES (565, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-17 16:34:05');
INSERT INTO `sys_logininfor` VALUES (566, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 09:28:04');
INSERT INTO `sys_logininfor` VALUES (567, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 09:33:35');
INSERT INTO `sys_logininfor` VALUES (568, 'purchase1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 09:56:42');
INSERT INTO `sys_logininfor` VALUES (569, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 09:56:53');
INSERT INTO `sys_logininfor` VALUES (570, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 09:58:17');
INSERT INTO `sys_logininfor` VALUES (571, '10043', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 09:58:29');
INSERT INTO `sys_logininfor` VALUES (572, '10043', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 10:01:38');
INSERT INTO `sys_logininfor` VALUES (573, '100043', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 10:01:52');
INSERT INTO `sys_logininfor` VALUES (574, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 10:17:01');
INSERT INTO `sys_logininfor` VALUES (575, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-18 10:17:10');
INSERT INTO `sys_logininfor` VALUES (576, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 10:17:16');
INSERT INTO `sys_logininfor` VALUES (577, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 10:18:23');
INSERT INTO `sys_logininfor` VALUES (578, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 10:18:32');
INSERT INTO `sys_logininfor` VALUES (579, '100043', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 10:30:23');
INSERT INTO `sys_logininfor` VALUES (580, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 10:30:31');
INSERT INTO `sys_logininfor` VALUES (581, '100372', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 10:37:06');
INSERT INTO `sys_logininfor` VALUES (582, '100372', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 10:37:29');
INSERT INTO `sys_logininfor` VALUES (583, '100372', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 10:37:43');
INSERT INTO `sys_logininfor` VALUES (584, '100372', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 10:38:19');
INSERT INTO `sys_logininfor` VALUES (585, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 10:38:35');
INSERT INTO `sys_logininfor` VALUES (586, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 10:43:24');
INSERT INTO `sys_logininfor` VALUES (587, '100372', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 10:43:40');
INSERT INTO `sys_logininfor` VALUES (588, '100372', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-18 10:53:45');
INSERT INTO `sys_logininfor` VALUES (589, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-18 10:53:56');
INSERT INTO `sys_logininfor` VALUES (590, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-18 10:56:44');
INSERT INTO `sys_logininfor` VALUES (591, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 11:01:13');
INSERT INTO `sys_logininfor` VALUES (592, '100083', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 11:01:20');
INSERT INTO `sys_logininfor` VALUES (593, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 11:01:41');
INSERT INTO `sys_logininfor` VALUES (594, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-18 11:02:17');
INSERT INTO `sys_logininfor` VALUES (595, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 11:02:20');
INSERT INTO `sys_logininfor` VALUES (596, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 11:06:41');
INSERT INTO `sys_logininfor` VALUES (597, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-18 11:26:07');
INSERT INTO `sys_logininfor` VALUES (598, 'purchase2', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-18 11:26:10');
INSERT INTO `sys_logininfor` VALUES (599, 'purchase2', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-18 11:26:12');
INSERT INTO `sys_logininfor` VALUES (600, 'purchase2', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 11:26:20');
INSERT INTO `sys_logininfor` VALUES (601, '100083', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 11:44:49');
INSERT INTO `sys_logininfor` VALUES (602, '100083', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 11:52:23');
INSERT INTO `sys_logininfor` VALUES (603, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 11:52:31');
INSERT INTO `sys_logininfor` VALUES (604, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 11:52:50');
INSERT INTO `sys_logininfor` VALUES (605, '100083', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 11:52:59');
INSERT INTO `sys_logininfor` VALUES (606, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-18 11:57:44');
INSERT INTO `sys_logininfor` VALUES (607, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-18 11:57:53');
INSERT INTO `sys_logininfor` VALUES (608, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 11:57:57');
INSERT INTO `sys_logininfor` VALUES (609, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 13:08:34');
INSERT INTO `sys_logininfor` VALUES (610, '100083', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-18 13:45:27');
INSERT INTO `sys_logininfor` VALUES (611, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 13:47:39');
INSERT INTO `sys_logininfor` VALUES (612, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-18 14:59:26');
INSERT INTO `sys_logininfor` VALUES (613, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-21 08:07:58');
INSERT INTO `sys_logininfor` VALUES (614, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-21 08:21:24');
INSERT INTO `sys_logininfor` VALUES (615, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-21 09:00:29');
INSERT INTO `sys_logininfor` VALUES (616, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-21 09:00:41');
INSERT INTO `sys_logininfor` VALUES (617, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-21 09:12:34');
INSERT INTO `sys_logininfor` VALUES (618, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-21 09:12:41');
INSERT INTO `sys_logininfor` VALUES (619, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-21 09:13:01');
INSERT INTO `sys_logininfor` VALUES (620, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-21 09:13:06');
INSERT INTO `sys_logininfor` VALUES (621, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-21 10:47:14');
INSERT INTO `sys_logininfor` VALUES (622, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-21 11:19:58');
INSERT INTO `sys_logininfor` VALUES (623, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-21 13:08:35');
INSERT INTO `sys_logininfor` VALUES (624, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 08:10:02');
INSERT INTO `sys_logininfor` VALUES (625, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 08:41:54');
INSERT INTO `sys_logininfor` VALUES (626, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 13:29:52');
INSERT INTO `sys_logininfor` VALUES (627, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 13:54:56');
INSERT INTO `sys_logininfor` VALUES (628, '100203', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-22 13:55:02');
INSERT INTO `sys_logininfor` VALUES (629, '100203', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-22 13:55:04');
INSERT INTO `sys_logininfor` VALUES (630, '100203', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-22 13:55:09');
INSERT INTO `sys_logininfor` VALUES (631, '100203', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:00:10');
INSERT INTO `sys_logininfor` VALUES (632, '100203', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 14:00:49');
INSERT INTO `sys_logininfor` VALUES (633, '100203', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-22 14:00:52');
INSERT INTO `sys_logininfor` VALUES (634, '100203', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:00:57');
INSERT INTO `sys_logininfor` VALUES (635, '100203', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 14:01:26');
INSERT INTO `sys_logininfor` VALUES (636, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:05:05');
INSERT INTO `sys_logininfor` VALUES (637, '600130', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:24:57');
INSERT INTO `sys_logininfor` VALUES (638, '600130', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 14:26:05');
INSERT INTO `sys_logininfor` VALUES (639, '600130', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:26:08');
INSERT INTO `sys_logininfor` VALUES (640, '600130', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 14:30:02');
INSERT INTO `sys_logininfor` VALUES (641, '600130', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:30:56');
INSERT INTO `sys_logininfor` VALUES (642, '600130', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 14:31:14');
INSERT INTO `sys_logininfor` VALUES (643, '600054', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:31:55');
INSERT INTO `sys_logininfor` VALUES (644, '600054', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 14:32:24');
INSERT INTO `sys_logininfor` VALUES (645, '101873', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:32:28');
INSERT INTO `sys_logininfor` VALUES (646, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 14:38:09');
INSERT INTO `sys_logininfor` VALUES (647, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:38:13');
INSERT INTO `sys_logininfor` VALUES (648, '101873', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 14:38:47');
INSERT INTO `sys_logininfor` VALUES (649, '101873', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:54:47');
INSERT INTO `sys_logininfor` VALUES (650, '101873', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 14:54:51');
INSERT INTO `sys_logininfor` VALUES (651, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 14:54:59');
INSERT INTO `sys_logininfor` VALUES (652, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 15:49:31');
INSERT INTO `sys_logininfor` VALUES (653, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 15:49:37');
INSERT INTO `sys_logininfor` VALUES (654, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 15:51:36');
INSERT INTO `sys_logininfor` VALUES (655, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 15:51:42');
INSERT INTO `sys_logininfor` VALUES (656, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-22 16:12:09');
INSERT INTO `sys_logininfor` VALUES (657, '100388', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 16:12:14');
INSERT INTO `sys_logininfor` VALUES (658, '100372', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-22 17:08:16');
INSERT INTO `sys_logininfor` VALUES (659, '100372', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 08:08:51');
INSERT INTO `sys_logininfor` VALUES (660, '100372', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 08:54:02');
INSERT INTO `sys_logininfor` VALUES (661, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 09:10:54');
INSERT INTO `sys_logininfor` VALUES (662, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-23 09:26:30');
INSERT INTO `sys_logininfor` VALUES (663, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 09:26:34');
INSERT INTO `sys_logininfor` VALUES (664, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 09:26:45');
INSERT INTO `sys_logininfor` VALUES (665, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-23 09:28:27');
INSERT INTO `sys_logininfor` VALUES (666, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 09:28:32');
INSERT INTO `sys_logininfor` VALUES (667, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 10:14:17');
INSERT INTO `sys_logininfor` VALUES (668, 'admin123', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-23 10:14:46');
INSERT INTO `sys_logininfor` VALUES (669, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 10:14:52');
INSERT INTO `sys_logininfor` VALUES (670, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-23 10:15:02');
INSERT INTO `sys_logininfor` VALUES (671, 'purchase2', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-23 10:15:05');
INSERT INTO `sys_logininfor` VALUES (672, 'purchase2', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 10:15:09');
INSERT INTO `sys_logininfor` VALUES (673, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 10:15:26');
INSERT INTO `sys_logininfor` VALUES (674, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 11:25:35');
INSERT INTO `sys_logininfor` VALUES (675, '100372', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 11:34:29');
INSERT INTO `sys_logininfor` VALUES (676, '100372', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-23 11:34:53');
INSERT INTO `sys_logininfor` VALUES (677, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 11:35:05');
INSERT INTO `sys_logininfor` VALUES (678, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-23 11:35:27');
INSERT INTO `sys_logininfor` VALUES (679, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 11:35:31');
INSERT INTO `sys_logininfor` VALUES (680, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-23 11:51:29');
INSERT INTO `sys_logininfor` VALUES (681, '100372', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 11:51:38');
INSERT INTO `sys_logininfor` VALUES (682, '100372', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 13:13:54');
INSERT INTO `sys_logininfor` VALUES (683, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 13:24:58');
INSERT INTO `sys_logininfor` VALUES (684, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-23 13:41:55');
INSERT INTO `sys_logininfor` VALUES (685, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 13:42:00');
INSERT INTO `sys_logininfor` VALUES (686, '100372', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-23 13:45:16');
INSERT INTO `sys_logininfor` VALUES (687, '100372', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 13:45:20');
INSERT INTO `sys_logininfor` VALUES (688, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 14:08:50');
INSERT INTO `sys_logininfor` VALUES (689, '100372', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 14:46:00');
INSERT INTO `sys_logininfor` VALUES (690, '100372', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-23 14:59:26');
INSERT INTO `sys_logininfor` VALUES (691, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 14:59:37');
INSERT INTO `sys_logininfor` VALUES (692, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 15:41:36');
INSERT INTO `sys_logininfor` VALUES (693, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-23 15:42:26');
INSERT INTO `sys_logininfor` VALUES (694, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 15:42:35');
INSERT INTO `sys_logininfor` VALUES (695, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 16:01:52');
INSERT INTO `sys_logininfor` VALUES (696, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 16:04:42');
INSERT INTO `sys_logininfor` VALUES (697, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-23 16:05:18');
INSERT INTO `sys_logininfor` VALUES (698, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 16:05:23');
INSERT INTO `sys_logininfor` VALUES (699, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 16:19:37');
INSERT INTO `sys_logininfor` VALUES (700, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 16:20:49');
INSERT INTO `sys_logininfor` VALUES (701, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 16:42:36');
INSERT INTO `sys_logininfor` VALUES (702, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-23 16:50:13');
INSERT INTO `sys_logininfor` VALUES (703, '100083', '192.168.10.42', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-23 16:54:47');
INSERT INTO `sys_logininfor` VALUES (704, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 08:04:58');
INSERT INTO `sys_logininfor` VALUES (705, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 08:05:24');
INSERT INTO `sys_logininfor` VALUES (706, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 09:16:17');
INSERT INTO `sys_logininfor` VALUES (707, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-24 09:26:02');
INSERT INTO `sys_logininfor` VALUES (708, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-24 09:32:05');
INSERT INTO `sys_logininfor` VALUES (709, '100083', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 09:32:09');
INSERT INTO `sys_logininfor` VALUES (710, 'admin123', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-24 09:32:16');
INSERT INTO `sys_logininfor` VALUES (711, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-24 09:32:29');
INSERT INTO `sys_logininfor` VALUES (712, 'admin', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-24 09:41:03');
INSERT INTO `sys_logininfor` VALUES (713, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-24 09:41:11');
INSERT INTO `sys_logininfor` VALUES (714, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-24 09:41:14');
INSERT INTO `sys_logininfor` VALUES (715, 'purchase3', '192.168.10.140', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2024-10-24 09:44:53');
INSERT INTO `sys_logininfor` VALUES (716, 'purchase3', '192.168.10.140', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2024-10-24 09:45:46');
INSERT INTO `sys_logininfor` VALUES (717, 'purchase3', '192.168.10.140', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2024-10-24 09:46:02');
INSERT INTO `sys_logininfor` VALUES (718, 'purchase3', '192.168.10.140', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2024-10-24 09:48:08');
INSERT INTO `sys_logininfor` VALUES (719, '100083', '192.168.10.140', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2024-10-24 09:48:43');
INSERT INTO `sys_logininfor` VALUES (720, '100083', '192.168.10.140', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2024-10-24 09:52:42');
INSERT INTO `sys_logininfor` VALUES (721, '100038', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-10-24 10:21:18');
INSERT INTO `sys_logininfor` VALUES (722, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 10:21:24');
INSERT INTO `sys_logininfor` VALUES (723, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-24 11:28:01');
INSERT INTO `sys_logininfor` VALUES (724, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 11:28:07');
INSERT INTO `sys_logininfor` VALUES (725, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 13:06:23');
INSERT INTO `sys_logininfor` VALUES (726, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-24 13:17:03');
INSERT INTO `sys_logininfor` VALUES (727, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-10-24 13:17:38');
INSERT INTO `sys_logininfor` VALUES (728, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-24 13:17:50');
INSERT INTO `sys_logininfor` VALUES (729, 'purchase3', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-10-24 13:19:05');
INSERT INTO `sys_logininfor` VALUES (730, 'purchase3', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-24 13:19:09');
INSERT INTO `sys_logininfor` VALUES (731, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 13:21:10');
INSERT INTO `sys_logininfor` VALUES (732, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-24 13:31:10');
INSERT INTO `sys_logininfor` VALUES (733, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 13:31:22');
INSERT INTO `sys_logininfor` VALUES (734, 'purchase2', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-24 13:31:40');
INSERT INTO `sys_logininfor` VALUES (735, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 13:31:43');
INSERT INTO `sys_logininfor` VALUES (736, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-24 13:53:01');
INSERT INTO `sys_logininfor` VALUES (737, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-24 13:54:35');
INSERT INTO `sys_logininfor` VALUES (738, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 13:54:43');
INSERT INTO `sys_logininfor` VALUES (739, 'purchase3', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-24 14:02:48');
INSERT INTO `sys_logininfor` VALUES (740, 'purchase3', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 14:04:28');
INSERT INTO `sys_logininfor` VALUES (741, '100083', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 15:14:49');
INSERT INTO `sys_logininfor` VALUES (742, '100083', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-24 15:22:51');
INSERT INTO `sys_logininfor` VALUES (743, 'purchase3', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 15:23:11');
INSERT INTO `sys_logininfor` VALUES (744, 'purchase3', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-24 15:31:13');
INSERT INTO `sys_logininfor` VALUES (745, '100083', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 15:31:20');
INSERT INTO `sys_logininfor` VALUES (746, '100083', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-24 15:56:53');
INSERT INTO `sys_logininfor` VALUES (747, '100083', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 16:24:41');
INSERT INTO `sys_logininfor` VALUES (748, '100083', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-24 16:27:52');
INSERT INTO `sys_logininfor` VALUES (749, 'purchase3', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 16:28:08');
INSERT INTO `sys_logininfor` VALUES (750, 'purchase3', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2024-10-24 16:28:41');
INSERT INTO `sys_logininfor` VALUES (751, '100083', '192.168.10.140', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2024-10-24 16:28:47');
INSERT INTO `sys_logininfor` VALUES (752, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-25 08:13:33');
INSERT INTO `sys_logininfor` VALUES (753, '100084', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-25 08:50:20');
INSERT INTO `sys_logininfor` VALUES (754, 'purchase3', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-10-25 08:53:50');
INSERT INTO `sys_logininfor` VALUES (755, '100083', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-25 11:03:24');
INSERT INTO `sys_logininfor` VALUES (756, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-25 11:14:29');
INSERT INTO `sys_logininfor` VALUES (757, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-25 13:04:09');
INSERT INTO `sys_logininfor` VALUES (758, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-31 13:28:51');
INSERT INTO `sys_logininfor` VALUES (759, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-04 15:26:36');
INSERT INTO `sys_logininfor` VALUES (760, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-04 16:47:10');
INSERT INTO `sys_logininfor` VALUES (761, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 08:20:39');
INSERT INTO `sys_logininfor` VALUES (762, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 08:57:06');
INSERT INTO `sys_logininfor` VALUES (763, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-06 10:21:30');
INSERT INTO `sys_logininfor` VALUES (764, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 10:49:39');
INSERT INTO `sys_logininfor` VALUES (765, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-06 11:16:59');
INSERT INTO `sys_logininfor` VALUES (766, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-06 11:17:23');
INSERT INTO `sys_logininfor` VALUES (767, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 11:17:29');
INSERT INTO `sys_logininfor` VALUES (768, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 11:25:20');
INSERT INTO `sys_logininfor` VALUES (769, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 11:27:51');
INSERT INTO `sys_logininfor` VALUES (770, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 11:28:36');
INSERT INTO `sys_logininfor` VALUES (771, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-06 11:29:35');
INSERT INTO `sys_logininfor` VALUES (772, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 11:29:37');
INSERT INTO `sys_logininfor` VALUES (773, '100084', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-11-06 11:31:41');
INSERT INTO `sys_logininfor` VALUES (774, '100084', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-11-06 11:31:47');
INSERT INTO `sys_logininfor` VALUES (775, '100084', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-11-06 11:31:54');
INSERT INTO `sys_logininfor` VALUES (776, '100084', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-11-06 11:32:07');
INSERT INTO `sys_logininfor` VALUES (777, '100084', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-11-06 11:32:09');
INSERT INTO `sys_logininfor` VALUES (778, '100084', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-11-06 11:32:14');
INSERT INTO `sys_logininfor` VALUES (779, '100084', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-11-06 11:32:16');
INSERT INTO `sys_logininfor` VALUES (780, '100084', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-11-06 11:32:24');
INSERT INTO `sys_logininfor` VALUES (781, '600053', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-11-06 15:16:38');
INSERT INTO `sys_logininfor` VALUES (782, '600118', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-06 15:17:53');
INSERT INTO `sys_logininfor` VALUES (783, '600118', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 15:17:58');
INSERT INTO `sys_logininfor` VALUES (784, '600053', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-11-06 15:19:44');
INSERT INTO `sys_logininfor` VALUES (785, '600056', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-11-06 15:19:53');
INSERT INTO `sys_logininfor` VALUES (786, '600057', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-11-06 15:19:57');
INSERT INTO `sys_logininfor` VALUES (787, '600057', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-11-06 15:20:09');
INSERT INTO `sys_logininfor` VALUES (788, '600058', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-11-06 15:20:15');
INSERT INTO `sys_logininfor` VALUES (789, '600058', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '退出成功', '2024-11-06 15:20:23');
INSERT INTO `sys_logininfor` VALUES (790, '600059', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-11-06 15:20:34');
INSERT INTO `sys_logininfor` VALUES (791, '600118', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-06 15:21:21');
INSERT INTO `sys_logininfor` VALUES (792, '600059', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 15:21:38');
INSERT INTO `sys_logininfor` VALUES (793, '600059', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-06 15:30:08');
INSERT INTO `sys_logininfor` VALUES (794, '600060', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 15:30:16');
INSERT INTO `sys_logininfor` VALUES (795, '600066', '10.10.10.157', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 15:39:47');
INSERT INTO `sys_logininfor` VALUES (796, '600066', '10.10.10.157', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-06 15:43:40');
INSERT INTO `sys_logininfor` VALUES (797, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-07 13:41:53');
INSERT INTO `sys_logininfor` VALUES (798, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 11:15:44');
INSERT INTO `sys_logininfor` VALUES (799, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-11 13:05:59');
INSERT INTO `sys_logininfor` VALUES (800, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-12 08:08:47');
INSERT INTO `sys_logininfor` VALUES (801, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 08:04:23');
INSERT INTO `sys_logininfor` VALUES (802, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 09:17:55');
INSERT INTO `sys_logininfor` VALUES (803, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 10:57:11');
INSERT INTO `sys_logininfor` VALUES (804, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-13 10:57:53');
INSERT INTO `sys_logininfor` VALUES (805, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 10:58:03');
INSERT INTO `sys_logininfor` VALUES (806, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-13 10:58:35');
INSERT INTO `sys_logininfor` VALUES (807, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 10:58:39');
INSERT INTO `sys_logininfor` VALUES (808, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 14:47:25');
INSERT INTO `sys_logininfor` VALUES (809, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-14 08:24:25');
INSERT INTO `sys_logininfor` VALUES (810, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-14 09:30:46');
INSERT INTO `sys_logininfor` VALUES (811, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-14 09:32:28');
INSERT INTO `sys_logininfor` VALUES (812, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-14 11:42:20');
INSERT INTO `sys_logininfor` VALUES (813, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-14 13:08:36');
INSERT INTO `sys_logininfor` VALUES (814, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-14 14:11:41');
INSERT INTO `sys_logininfor` VALUES (815, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 08:39:07');
INSERT INTO `sys_logininfor` VALUES (816, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 13:31:01');
INSERT INTO `sys_logininfor` VALUES (817, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-11-15 15:05:51');
INSERT INTO `sys_logininfor` VALUES (818, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-11-15 15:05:56');
INSERT INTO `sys_logininfor` VALUES (819, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-11-15 15:06:13');
INSERT INTO `sys_logininfor` VALUES (820, '100388', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '1', '用户不存在/密码错误', '2024-11-15 15:06:22');
INSERT INTO `sys_logininfor` VALUES (821, '100084', '192.168.10.42', '内网IP', 'Chrome 12', 'Windows 7', '0', '登录成功', '2024-11-15 15:06:29');
INSERT INTO `sys_logininfor` VALUES (822, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 15:07:46');
INSERT INTO `sys_logininfor` VALUES (823, '100388', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-15 15:08:04');
INSERT INTO `sys_logininfor` VALUES (824, '100257', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 15:08:26');
INSERT INTO `sys_logininfor` VALUES (825, '100257', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 15:10:04');
INSERT INTO `sys_logininfor` VALUES (826, '100257', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 15:10:15');
INSERT INTO `sys_logininfor` VALUES (827, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 15:10:21');
INSERT INTO `sys_logininfor` VALUES (828, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 15:13:28');
INSERT INTO `sys_logininfor` VALUES (829, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 08:44:00');
INSERT INTO `sys_logininfor` VALUES (830, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 09:22:59');
INSERT INTO `sys_logininfor` VALUES (831, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-18 10:56:43');
INSERT INTO `sys_logininfor` VALUES (832, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 10:56:46');
INSERT INTO `sys_logininfor` VALUES (833, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 11:32:18');
INSERT INTO `sys_logininfor` VALUES (834, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 13:11:23');
INSERT INTO `sys_logininfor` VALUES (835, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 15:47:47');
INSERT INTO `sys_logininfor` VALUES (836, 'B06', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-19 16:13:45');
INSERT INTO `sys_logininfor` VALUES (837, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 16:13:57');
INSERT INTO `sys_logininfor` VALUES (838, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-19 16:19:18');
INSERT INTO `sys_logininfor` VALUES (839, 'B05001', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 16:19:27');
INSERT INTO `sys_logininfor` VALUES (840, 'B05001', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 16:20:08');
INSERT INTO `sys_logininfor` VALUES (841, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-20 08:28:21');
INSERT INTO `sys_logininfor` VALUES (842, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-20 13:14:04');
INSERT INTO `sys_logininfor` VALUES (843, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-20 13:45:15');
INSERT INTO `sys_logininfor` VALUES (844, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 08:32:19');
INSERT INTO `sys_logininfor` VALUES (845, '100084', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 09:17:58');
INSERT INTO `sys_logininfor` VALUES (846, 'B05001', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 09:22:09');
INSERT INTO `sys_logininfor` VALUES (847, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 08:14:23');
INSERT INTO `sys_logininfor` VALUES (848, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 08:32:08');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由名称',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1087 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-09-12 09:21:46', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-09-12 09:21:46', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-09-12 09:21:46', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', NULL, 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2024-09-12 09:21:46', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', NULL, 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-09-12 09:21:46', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', NULL, 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-09-12 09:21:46', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', NULL, 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-09-12 09:21:46', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', NULL, 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-09-12 09:21:46', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', NULL, 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-09-12 09:21:46', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', NULL, 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-09-12 09:21:46', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', NULL, 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-09-12 09:21:46', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', NULL, 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-09-12 09:21:46', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', NULL, 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-09-12 09:21:46', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', NULL, 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-09-12 09:21:46', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', NULL, 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-09-12 09:21:46', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', NULL, 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-09-12 09:21:46', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', NULL, 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-09-12 09:21:46', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', NULL, 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-09-12 09:21:46', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', NULL, 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-09-12 09:21:46', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', NULL, 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-09-12 09:21:46', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', NULL, 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-09-12 09:21:46', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', NULL, 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-09-12 09:21:46', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', NULL, 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-09-12 09:21:46', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', NULL, 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-09-12 09:21:46', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', NULL, 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', NULL, 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-09-12 09:21:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1069, '送货列表', 0, 8, 'deliver', 'deliver/order/index', NULL, NULL, 1, 0, 'C', '0', '0', 'deliver:order:list', 'table', 'admin', '2024-09-14 09:32:33', 'admin', '2024-09-27 11:48:12', '送货单菜单');
INSERT INTO `sys_menu` VALUES (1070, '送货单查询', 1069, 1, '#', '', NULL, NULL, 1, 0, 'F', '0', '0', 'deliver:order:query', '#', 'admin', '2024-09-14 09:32:33', 'admin', '2024-09-18 11:15:33', '');
INSERT INTO `sys_menu` VALUES (1071, '送货单新增', 1069, 2, '#', '', NULL, NULL, 1, 0, 'F', '0', '0', 'deliver:order:add', '#', 'admin', '2024-09-14 09:32:33', 'admin', '2024-09-18 11:15:10', '');
INSERT INTO `sys_menu` VALUES (1072, '送货单修改', 1069, 3, '#', '', NULL, NULL, 1, 0, 'F', '0', '0', 'deliver:order:edit', '#', 'admin', '2024-09-14 09:32:33', 'admin', '2024-09-18 11:15:51', '');
INSERT INTO `sys_menu` VALUES (1073, '送货单删除', 1069, 4, '#', '', NULL, NULL, 1, 0, 'F', '0', '0', 'deliver:order:remove', '#', 'admin', '2024-09-14 09:32:33', 'admin', '2024-09-18 11:16:00', '');
INSERT INTO `sys_menu` VALUES (1074, '送货单导出', 1069, 5, '#', '', NULL, NULL, 1, 0, 'F', '0', '0', 'deliver:order:export', '#', 'admin', '2024-09-14 09:32:33', 'admin', '2024-09-18 11:16:08', '');
INSERT INTO `sys_menu` VALUES (1082, '送货导入', 1069, 6, '', NULL, NULL, NULL, 1, 0, 'F', '0', '0', 'deliver:order:import', '#', 'admin', '2024-09-18 16:59:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1083, '采购标签', 0, 6, 'print', 'print', NULL, NULL, 1, 0, 'C', '0', '0', '', 'table', 'admin', '2024-09-27 10:54:48', 'admin', '2024-09-27 14:34:58', '');
INSERT INTO `sys_menu` VALUES (1084, '工单标签', 0, 7, 'outsourcing', 'outsourcing', NULL, NULL, 1, 0, 'C', '0', '0', '', 'table', 'admin', '2024-09-27 10:57:20', 'admin', '2024-09-27 14:36:09', '');
INSERT INTO `sys_menu` VALUES (1085, '审核成功', 1069, 7, '', NULL, NULL, NULL, 1, 0, 'F', '0', '0', 'deliver:order:status', '#', 'admin', '2024-10-10 16:34:43', 'admin', '2024-10-11 15:15:56', '');
INSERT INTO `sys_menu` VALUES (1086, '提交审核', 1069, 8, '', NULL, NULL, NULL, 1, 0, 'F', '0', '0', 'deliver:order:put', '#', 'admin', '2024-10-11 15:16:58', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 高松供应商条码新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-09-12 09:21:49', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 高松供应商条码系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-09-12 09:21:49', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT NULL COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 378 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"送货列表\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"deliver\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-13 10:50:30', NULL);
INSERT INTO `sys_oper_log` VALUES (2, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-09-13 10:50:30\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1061,\"menuName\":\"送货列表\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"deliver\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-13 10:51:21', NULL);
INSERT INTO `sys_oper_log` VALUES (3, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"mag_deliver_order\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-13 10:56:18', NULL);
INSERT INTO `sys_oper_log` VALUES (4, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"100388\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":3,\"userName\":\"100388\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-13 14:53:28', NULL);
INSERT INTO `sys_oper_log` VALUES (5, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-09-13 14:53:28\",\"delFlag\":\"0\",\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"100388\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[2],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":3,\"userName\":\"100388\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-13 14:55:01', NULL);
INSERT INTO `sys_oper_log` VALUES (6, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-13 16:00:10', NULL);
INSERT INTO `sys_oper_log` VALUES (7, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"mag_deliver_order\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-13 16:01:29', NULL);
INSERT INTO `sys_oper_log` VALUES (8, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-13 16:07:15', NULL);
INSERT INTO `sys_oper_log` VALUES (9, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"mag_deliver_order\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-13 16:07:26', NULL);
INSERT INTO `sys_oper_log` VALUES (10, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"deliver\",\"className\":\"MagDeliverOrder\",\"columns\":[{\"capJavaField\":\"DeliveryId\",\"columnComment\":\"送货单ID\",\"columnId\":11,\"columnName\":\"delivery_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-09-13 16:07:26\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"deliveryId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Factory\",\"columnComment\":\"工厂\",\"columnId\":12,\"columnName\":\"factory\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-09-13 16:07:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"factory\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PurchaseOrderNumber\",\"columnComment\":\"采购订单编号\",\"columnId\":13,\"columnName\":\"purchase_order_number\",\"columnType\":\"int(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-09-13 16:07:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"purchaseOrderNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"LineNumber\",\"columnComment\":\"行号\",\"columnId\":14,\"columnName\":\"line_number\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-09-13 16:07:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"lin', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-13 16:11:12', NULL);
INSERT INTO `sys_oper_log` VALUES (11, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"mag_deliver_order\"}', NULL, 0, NULL, '2024-09-13 16:11:26', NULL);
INSERT INTO `sys_oper_log` VALUES (12, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '0', 0, NULL, '2024-10-09 10:11:14', 69);
INSERT INTO `sys_oper_log` VALUES (13, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":37,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:02:32', 53);
INSERT INTO `sys_oper_log` VALUES (14, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '0', 0, NULL, '2024-10-09 11:02:32', 70);
INSERT INTO `sys_oper_log` VALUES (15, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '0', 0, NULL, '2024-10-09 11:10:23', 7);
INSERT INTO `sys_oper_log` VALUES (16, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":38,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:10:23', 55);
INSERT INTO `sys_oper_log` VALUES (17, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '0', 0, NULL, '2024-10-09 11:10:57', 7);
INSERT INTO `sys_oper_log` VALUES (18, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":39,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:10:58', 37);
INSERT INTO `sys_oper_log` VALUES (19, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":40,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:21:18', 35);
INSERT INTO `sys_oper_log` VALUES (20, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '0', 0, NULL, '2024-10-09 11:21:18', 10);
INSERT INTO `sys_oper_log` VALUES (21, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '0', 0, NULL, '2024-10-09 11:22:38', 9);
INSERT INTO `sys_oper_log` VALUES (22, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":41,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:22:38', 25);
INSERT INTO `sys_oper_log` VALUES (23, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":42,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:31:50', 70);
INSERT INTO `sys_oper_log` VALUES (24, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 11:31:50', 51);
INSERT INTO `sys_oper_log` VALUES (25, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":43,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:33:16', 32);
INSERT INTO `sys_oper_log` VALUES (26, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 11:33:16', 11);
INSERT INTO `sys_oper_log` VALUES (27, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":44,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:33:50', 32);
INSERT INTO `sys_oper_log` VALUES (28, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 11:33:51', 6);
INSERT INTO `sys_oper_log` VALUES (29, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":45,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:36:37', 45);
INSERT INTO `sys_oper_log` VALUES (30, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 11:36:37', 5);
INSERT INTO `sys_oper_log` VALUES (31, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":46,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:47:43', 36);
INSERT INTO `sys_oper_log` VALUES (32, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 11:47:43', 5);
INSERT INTO `sys_oper_log` VALUES (33, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":47,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:49:09', 37);
INSERT INTO `sys_oper_log` VALUES (34, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 11:49:10', 4);
INSERT INTO `sys_oper_log` VALUES (35, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 11:50:29', 19);
INSERT INTO `sys_oper_log` VALUES (36, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":48,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:50:29', 37);
INSERT INTO `sys_oper_log` VALUES (37, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 11:55:06', 7);
INSERT INTO `sys_oper_log` VALUES (38, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":49,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 11:55:06', 51);
INSERT INTO `sys_oper_log` VALUES (39, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 13:13:04', 8);
INSERT INTO `sys_oper_log` VALUES (40, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":50,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:13:04', 35);
INSERT INTO `sys_oper_log` VALUES (41, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 13:18:41', 4);
INSERT INTO `sys_oper_log` VALUES (42, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":51,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:18:41', 41);
INSERT INTO `sys_oper_log` VALUES (43, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 13:22:02', 60);
INSERT INTO `sys_oper_log` VALUES (44, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":52,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:22:02', 67);
INSERT INTO `sys_oper_log` VALUES (45, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 13:23:10', 12);
INSERT INTO `sys_oper_log` VALUES (46, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":53,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:23:10', 37);
INSERT INTO `sys_oper_log` VALUES (47, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 13:24:52', 9);
INSERT INTO `sys_oper_log` VALUES (48, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410090001\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":54,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:24:52', 24);
INSERT INTO `sys_oper_log` VALUES (49, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410090001\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":55,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"钢\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":20,\"poNo\":4500029947,\"sku\":\"92100000016\",\"skuDescr\":\"2EDG-1000A(M3)＂-＂字螺丝镀盐水镍\",\"specification\":\"(特殊品)镀盐水镍:CU底2UM以上,NI底2UM以上,盐雾72H以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:25:40', 35);
INSERT INTO `sys_oper_log` VALUES (50, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn2024100910100002\"', 0, NULL, '2024-10-09 13:25:40', 4);
INSERT INTO `sys_oper_log` VALUES (51, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn2024100910100002\"', 0, NULL, '2024-10-09 13:31:18', 34);
INSERT INTO `sys_oper_log` VALUES (52, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":56,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:31:18', 89);
INSERT INTO `sys_oper_log` VALUES (53, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090001\"', 0, NULL, '2024-10-09 13:34:12', 10);
INSERT INTO `sys_oper_log` VALUES (54, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410090001\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:34:12', 43);
INSERT INTO `sys_oper_log` VALUES (55, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn2024100910100002\"', 0, NULL, '2024-10-09 13:34:44', 8);
INSERT INTO `sys_oper_log` VALUES (56, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn2024100910100002\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":58,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"钢\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":20,\"poNo\":4500029947,\"sku\":\"92100000016\",\"skuDescr\":\"2EDG-1000A(M3)＂-＂字螺丝镀盐水镍\",\"specification\":\"(特殊品)镀盐水镍:CU底2UM以上,NI底2UM以上,盐雾72H以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:34:45', 21);
INSERT INTO `sys_oper_log` VALUES (57, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn2024100900003\"', 0, NULL, '2024-10-09 13:36:51', 16);
INSERT INTO `sys_oper_log` VALUES (58, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn2024100900003\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":59,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"钢\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":20,\"poNo\":4500029947,\"sku\":\"92100000016\",\"skuDescr\":\"2EDG-1000A(M3)＂-＂字螺丝镀盐水镍\",\"specification\":\"(特殊品)镀盐水镍:CU底2UM以上,NI底2UM以上,盐雾72H以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:36:51', 33);
INSERT INTO `sys_oper_log` VALUES (59, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn2024100910004\"', 0, NULL, '2024-10-09 13:40:17', 18);
INSERT INTO `sys_oper_log` VALUES (60, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn2024100910004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":60,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:40:17', 32);
INSERT INTO `sys_oper_log` VALUES (61, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn2024100900005\"', 0, NULL, '2024-10-09 13:41:09', 34);
INSERT INTO `sys_oper_log` VALUES (62, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn2024100900005\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":61,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:41:09', 42);
INSERT INTO `sys_oper_log` VALUES (63, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn20241009100006\"', 0, NULL, '2024-10-09 13:42:40', 28);
INSERT INTO `sys_oper_log` VALUES (64, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn20241009100006\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":62,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:42:41', 42);
INSERT INTO `sys_oper_log` VALUES (65, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410090007\"', 0, NULL, '2024-10-09 13:43:18', 27);
INSERT INTO `sys_oper_log` VALUES (66, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410090007\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":63,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 13:43:18', 50);
INSERT INTO `sys_oper_log` VALUES (67, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410100001\"', 0, NULL, '2024-10-10 08:53:08', 51);
INSERT INTO `sys_oper_log` VALUES (68, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410100001\",\"expectedQty\":1010,\"factory\":\"高松技术\",\"id\":64,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-10 08:53:09', 41);
INSERT INTO `sys_oper_log` VALUES (69, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410100002\"', 0, NULL, '2024-10-10 08:55:23', 14);
INSERT INTO `sys_oper_log` VALUES (70, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410100002\",\"expectedQty\":1010,\"factory\":\"高松技术\",\"id\":65,\"labelNumber\":0.0,\"labelWeight\":0.0,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-10 08:55:23', 39);
INSERT INTO `sys_oper_log` VALUES (71, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410100003\"', 0, NULL, '2024-10-10 08:58:38', 6);
INSERT INTO `sys_oper_log` VALUES (72, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410100003\",\"expectedQty\":1010,\"factory\":\"高松技术\",\"id\":66,\"labelNumber\":0.0,\"labelWeight\":0.0,\"lineNumber\":10,\"material\":\"黄铜H65\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-10 08:58:38', 48);
INSERT INTO `sys_oper_log` VALUES (73, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"提交审核\",\"menuType\":\"F\",\"orderNum\":7,\"params\":{},\"parentId\":1069,\"perms\":\"deliver:order:status\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-10 16:34:43', 43);
INSERT INTO `sys_oper_log` VALUES (74, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-14 14:15:31\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1083,1084,1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":3,\"roleKey\":\"user\",\"roleName\":\"供应商\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-10 16:45:59', 94);
INSERT INTO `sys_oper_log` VALUES (75, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:39:51\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":4,\"roleKey\":\"purchase1\",\"roleName\":\"采购1组\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-10 16:46:09', 80);
INSERT INTO `sys_oper_log` VALUES (76, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:50:30\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":5,\"roleKey\":\"purchase2\",\"roleName\":\"采购2组\",\"roleSort\":5,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-10 16:46:16', 37);
INSERT INTO `sys_oper_log` VALUES (77, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:50:47\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":6,\"roleKey\":\"purchase3\",\"roleName\":\"采购3组\",\"roleSort\":6,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-10 16:46:21', 36);
INSERT INTO `sys_oper_log` VALUES (78, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-10 16:14:32\"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'review_status\' in \'class com.ruoyi.system.domain.SysDeliverOrder\'', '2024-10-10 16:53:26', 35);
INSERT INTO `sys_oper_log` VALUES (79, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-10 16:14:32\"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'review_status\' in \'class com.ruoyi.system.domain.SysDeliverOrder\'', '2024-10-10 16:56:46', 3);
INSERT INTO `sys_oper_log` VALUES (80, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":67,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-10 16:14:32\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-10 17:01:24', 70);
INSERT INTO `sys_oper_log` VALUES (81, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '研发部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":68,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-10 16:14:32\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-10 17:03:27', 38);
INSERT INTO `sys_oper_log` VALUES (82, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"采购部门\",\"email\":\"lyr@qq.com\",\"leader\":\"李艳茹\",\"orderNum\":3,\"params\":{},\"parentId\":100,\"phone\":\"18465827695\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:51:40', 42);
INSERT INTO `sys_oper_log` VALUES (83, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"供应商部门\",\"email\":\"lyr@qq.com\",\"leader\":\"yara\",\"orderNum\":4,\"params\":{},\"parentId\":100,\"phone\":\"18465827695\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:52:13', 33);
INSERT INTO `sys_oper_log` VALUES (84, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":110,\"deptName\":\"采购部门\",\"email\":\"lyr@qq.com\",\"leader\":\"李艳茹\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"parentName\":\"高松电子\",\"phone\":\"18465827695\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:54:27', 66);
INSERT INTO `sys_oper_log` VALUES (85, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":110,\"deptName\":\"采购部门\",\"email\":\"lyr@qq.com\",\"leader\":\"李艳茹\",\"orderNum\":0,\"params\":{},\"parentId\":101,\"parentName\":\"深圳总公司\",\"phone\":\"18465827695\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:54:37', 59);
INSERT INTO `sys_oper_log` VALUES (86, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":111,\"deptName\":\"供应商部门\",\"email\":\"lyr@qq.com\",\"leader\":\"yara\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"parentName\":\"高松电子\",\"phone\":\"18465827695\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:54:49', 59);
INSERT INTO `sys_oper_log` VALUES (87, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"研发部门\",\"email\":\"qqq@qq.com\",\"leader\":\"清清\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"parentName\":\"深圳总公司\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:54:58', 87);
INSERT INTO `sys_oper_log` VALUES (88, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101,110\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"采购A1\",\"email\":\"lya@qq.com\",\"leader\":\"lya\",\"orderNum\":0,\"params\":{},\"parentId\":110,\"phone\":\"15845621587\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:55:51', 38);
INSERT INTO `sys_oper_log` VALUES (89, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101,110\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"采购A2\",\"email\":\"lyr@qq.com\",\"leader\":\"lyr\",\"orderNum\":1,\"params\":{},\"parentId\":110,\"phone\":\"15865426655\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:56:23', 32);
INSERT INTO `sys_oper_log` VALUES (90, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":111,\"deptName\":\"供应商部门\",\"email\":\"lyr@qq.com\",\"leader\":\"yara\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"parentName\":\"深圳总公司\",\"phone\":\"18465827695\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:56:40', 66);
INSERT INTO `sys_oper_log` VALUES (91, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-09-13 14:53:28\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"研发部门\",\"leader\":\"清清\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":111,\"email\":\"\",\"loginDate\":\"2024-10-11 08:11:58\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"100388\",\"params\":{},\"phonenumber\":\"18788887777\",\"postIds\":[2],\"roleIds\":[3],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":3,\"roleKey\":\"user\",\"roleName\":\"供应商\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":3,\"userName\":\"100388\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:57:31', 66);
INSERT INTO `sys_oper_log` VALUES (92, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-09-26 11:51:46\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"高松电子\",\"leader\":\"清清\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":112,\"email\":\"\",\"loginDate\":\"2024-09-27 11:06:58\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"采购人员1\",\"params\":{},\"phonenumber\":\"18788888888\",\"postIds\":[],\"roleIds\":[4],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":4,\"roleKey\":\"purchase1\",\"roleName\":\"采购1组\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":4,\"userName\":\"purchase1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:58:03', 46);
INSERT INTO `sys_oper_log` VALUES (93, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-09-26 13:52:44\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"高松电子\",\"leader\":\"清清\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":113,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"采购人员2\",\"params\":{},\"phonenumber\":\"18488888888\",\"postIds\":[],\"roleIds\":[5],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":5,\"roleKey\":\"purchase2\",\"roleName\":\"采购2组\",\"roleSort\":5,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":5,\"userName\":\"purchase2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:58:11', 42);
INSERT INTO `sys_oper_log` VALUES (94, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', '研发部门', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-14 14:15:31\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":3,\"roleKey\":\"user\",\"roleName\":\"供应商\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:59:15', 30);
INSERT INTO `sys_oper_log` VALUES (95, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', '研发部门', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:39:51\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":4,\"roleKey\":\"purchase1\",\"roleName\":\"采购1组\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:59:26', 30);
INSERT INTO `sys_oper_log` VALUES (96, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', '研发部门', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:50:30\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":5,\"roleKey\":\"purchase2\",\"roleName\":\"采购2组\",\"roleSort\":5,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 08:59:36', 32);
INSERT INTO `sys_oper_log` VALUES (97, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101,110\",\"children\":[],\"deptId\":112,\"deptName\":\"A1\",\"email\":\"lya@qq.com\",\"leader\":\"lya\",\"orderNum\":0,\"params\":{},\"parentId\":110,\"parentName\":\"采购部门\",\"phone\":\"15845621587\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 10:15:02', 63);
INSERT INTO `sys_oper_log` VALUES (98, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101,110\",\"children\":[],\"deptId\":113,\"deptName\":\"A2\",\"email\":\"lyr@qq.com\",\"leader\":\"lyr\",\"orderNum\":1,\"params\":{},\"parentId\":110,\"parentName\":\"采购部门\",\"phone\":\"15865426655\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 10:15:08', 66);
INSERT INTO `sys_oper_log` VALUES (99, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:39:51\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":4,\"roleKey\":\"purchase1\",\"roleName\":\"A1\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 10:21:23', 43);
INSERT INTO `sys_oper_log` VALUES (100, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:50:30\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":5,\"roleKey\":\"purchase2\",\"roleName\":\"A2\",\"roleSort\":5,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 10:21:29', 31);
INSERT INTO `sys_oper_log` VALUES (101, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:50:47\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":6,\"roleKey\":\"purchase3\",\"roleName\":\"A3\",\"roleSort\":6,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 10:21:34', 30);
INSERT INTO `sys_oper_log` VALUES (102, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:39:51\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":4,\"roleKey\":\"A1\",\"roleName\":\"A1\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 10:25:58', 54);
INSERT INTO `sys_oper_log` VALUES (103, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order', '192.168.10.42', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":69,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 09:05:46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:32:46', 78);
INSERT INTO `sys_oper_log` VALUES (104, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order', '192.168.10.42', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":70,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 09:05:46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:32:52', 29);
INSERT INTO `sys_oper_log` VALUES (105, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'purchase1', 'A1', '/deliver/order', '192.168.10.42', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":71,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 09:05:46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:33:48', 38);
INSERT INTO `sys_oper_log` VALUES (106, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'purchase1', 'A1', '/deliver/order', '192.168.10.42', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":72,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 09:05:46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:33:50', 19);
INSERT INTO `sys_oper_log` VALUES (107, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'purchase1', 'A1', '/deliver/order', '192.168.10.42', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":73,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 09:05:46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:33:55', 24);
INSERT INTO `sys_oper_log` VALUES (108, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'purchase1', 'A1', '/deliver/order', '192.168.10.42', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":74,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 09:05:46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:33:59', 27);
INSERT INTO `sys_oper_log` VALUES (109, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'purchase1', 'A1', '/deliver/order', '192.168.10.42', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":75,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 09:05:46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:34:06', 27);
INSERT INTO `sys_oper_log` VALUES (110, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"1\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 14:40:48\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:40:48', 33);
INSERT INTO `sys_oper_log` VALUES (111, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"已审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 14:46:07\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:46:07', 29);
INSERT INTO `sys_oper_log` VALUES (112, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410110001\"', 0, NULL, '2024-10-11 14:46:53', 5);
INSERT INTO `sys_oper_log` VALUES (113, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410110001\",\"expectedQty\":1011,\"factory\":\"高松技术\",\"id\":76,\"labelNumber\":0.0,\"labelWeight\":0.0,\"lineNumber\":10,\"material\":\"不锈钢\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":10,\"poNo\":4800039191,\"sku\":\"92100000097\",\"skuDescr\":\"DG128-3000A\\\"-\\\"字螺丝(M3.0*4.9)\",\"specification\":\"(特殊品)不锈钢\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:46:53', 23);
INSERT INTO `sys_oper_log` VALUES (114, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410110002\"', 0, NULL, '2024-10-11 14:48:29', 2);
INSERT INTO `sys_oper_log` VALUES (115, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410110002\",\"expectedQty\":1011,\"factory\":\"高松技术\",\"id\":77,\"labelNumber\":0.0,\"labelWeight\":0.0,\"lineNumber\":10,\"material\":\"不锈钢\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":10,\"poNo\":4800039191,\"sku\":\"92100000097\",\"skuDescr\":\"DG128-3000A\\\"-\\\"字螺丝(M3.0*4.9)\",\"specification\":\"(特殊品)不锈钢\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:48:29', 26);
INSERT INTO `sys_oper_log` VALUES (116, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410110003\"', 0, NULL, '2024-10-11 14:51:13', 2);
INSERT INTO `sys_oper_log` VALUES (117, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410110003\",\"expectedQty\":1011,\"factory\":\"高松技术\",\"id\":78,\"labelNumber\":0.0,\"labelWeight\":0.0,\"lineNumber\":10,\"material\":\"不锈钢\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":10,\"poNo\":4800039191,\"reviewStatus\":\"未审核\",\"sku\":\"92100000097\",\"skuDescr\":\"DG128-3000A\\\"-\\\"字螺丝(M3.0*4.9)\",\"specification\":\"(特殊品)不锈钢\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 14:51:13', 21);
INSERT INTO `sys_oper_log` VALUES (118, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"已审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:07:21\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:07:21', 37);
INSERT INTO `sys_oper_log` VALUES (119, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:09:10\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:09:10', 29);
INSERT INTO `sys_oper_log` VALUES (120, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:11:13\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:11:13', 33);
INSERT INTO `sys_oper_log` VALUES (121, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:12:38\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:12:39', 27);
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-10 16:34:43\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1085,\"menuName\":\"审核成功\",\"menuType\":\"F\",\"orderNum\":7,\"params\":{},\"parentId\":1069,\"path\":\"\",\"perms\":\"deliver:order:status\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:15:56', 47);
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"提交审核\",\"menuType\":\"F\",\"orderNum\":8,\"params\":{},\"parentId\":1069,\"perms\":\"deliver:order:put\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:16:58', 41);
INSERT INTO `sys_oper_log` VALUES (124, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:18:45\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:18:45', 27);
INSERT INTO `sys_oper_log` VALUES (125, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:23:01\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:23:01', 26);
INSERT INTO `sys_oper_log` VALUES (126, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:23:44\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:23:44', 26);
INSERT INTO `sys_oper_log` VALUES (127, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:24:26\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:24:26', 31);
INSERT INTO `sys_oper_log` VALUES (128, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:25:55\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:25:55', 27);
INSERT INTO `sys_oper_log` VALUES (129, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:26:41\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:26:41', 27);
INSERT INTO `sys_oper_log` VALUES (130, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:35:55\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:35:56', 42);
INSERT INTO `sys_oper_log` VALUES (131, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:44:08\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:44:08', 25);
INSERT INTO `sys_oper_log` VALUES (132, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:44:54\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:44:54', 25);
INSERT INTO `sys_oper_log` VALUES (133, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"asn202410090002\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":58,\"labelNumber\":0,\"labelWeight\":0,\"material\":\"钢\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":20,\"poNo\":4500029947,\"projectCategory\":\"A2\",\"reviewStatus\":\"在审核\",\"sku\":\"92100000016\",\"skuDescr\":\"2EDG-1000A(M3)＂-＂字螺丝镀盐水镍\",\"specification\":\"(特殊品)镀盐水镍:CU底2UM以上,NI底2UM以上,盐雾72H以上\",\"supplieId\":100388,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:45:29\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:45:29', 19);
INSERT INTO `sys_oper_log` VALUES (134, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"asn202410110003\",\"expectedQty\":1011,\"factory\":\"高松技术\",\"id\":78,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"material\":\"不锈钢\",\"orderDate\":\"2024-09-30\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800039191,\"projectCategory\":\"A2\",\"reviewStatus\":\"在审核\",\"sku\":\"92100000097\",\"skuDescr\":\"DG128-3000A\\\"-\\\"字螺丝(M3.0*4.9)\",\"specification\":\"(特殊品)不锈钢\",\"supplieId\":100388,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:46:09\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:46:09', 23);
INSERT INTO `sys_oper_log` VALUES (135, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-14 14:15:31\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1083,1084,1070,1071,1072,1073,1074,1082,1086],\"params\":{},\"roleId\":3,\"roleKey\":\"user\",\"roleName\":\"供应商\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:47:50', 64);
INSERT INTO `sys_oper_log` VALUES (136, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:50:30\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":5,\"roleKey\":\"A2\",\"roleName\":\"A2\",\"roleSort\":5,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:48:22', 44);
INSERT INTO `sys_oper_log` VALUES (137, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-26 11:50:47\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":6,\"roleKey\":\"A3\",\"roleName\":\"A3\",\"roleSort\":6,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:48:30', 28);
INSERT INTO `sys_oper_log` VALUES (138, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, 'purchase1', 'A1', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"已审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:50:32\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:50:32', 24);
INSERT INTO `sys_oper_log` VALUES (139, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"asn202410090003\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":59,\"labelNumber\":0,\"labelWeight\":0,\"material\":\"钢\",\"orderDate\":\"2024-09-30\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":20,\"poNo\":4500029947,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92100000016\",\"skuDescr\":\"2EDG-1000A(M3)＂-＂字螺丝镀盐水镍\",\"specification\":\"(特殊品)镀盐水镍:CU底2UM以上,NI底2UM以上,盐雾72H以上\",\"supplieId\":100388,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:57:11\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:57:11', 21);
INSERT INTO `sys_oper_log` VALUES (140, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"asn202410090004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":60,\"labelNumber\":0,\"labelWeight\":0,\"material\":\"黄铜H65\",\"orderDate\":\"2024-09-30\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":30,\"poNo\":4500029947,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92100000378\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100388,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 15:57:21\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 15:57:21', 24);
INSERT INTO `sys_oper_log` VALUES (141, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410110004\"', 0, NULL, '2024-10-11 16:04:29', 4);
INSERT INTO `sys_oper_log` VALUES (142, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410110004\",\"expectedQty\":1011,\"factory\":\"高松技术\",\"id\":79,\"labelNumber\":0.0,\"labelWeight\":0.0,\"lineNumber\":10,\"lotatt15\":\"高松技术\",\"material\":\"钢\",\"orderQuantity\":50000.0,\"params\":{},\"poLineNo\":20,\"poNo\":4500030068,\"reviewStatus\":\"未审核\",\"sku\":\"92100000265\",\"skuDescr\":\"DGR20-M3.5＂+/-＂字螺丝镀锌\",\"specification\":\"镀三价铬钝化＂蓝白锌＂,ZN层3UM以上,盐雾48H以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 16:04:29', 28);
INSERT INTO `sys_oper_log` VALUES (143, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410110005\"', 0, NULL, '2024-10-11 16:04:38', 4);
INSERT INTO `sys_oper_log` VALUES (144, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410110005\",\"expectedQty\":1011,\"factory\":\"高松技术\",\"id\":80,\"labelNumber\":0.0,\"labelWeight\":0.0,\"lineNumber\":10,\"lotatt15\":\"高松技术\",\"material\":\"钢\",\"orderQuantity\":300000.0,\"params\":{},\"poLineNo\":30,\"poNo\":4500028721,\"reviewStatus\":\"未审核\",\"sku\":\"92100000147\",\"skuDescr\":\"DG25R-B-22A M3(6.0*6.0)螺丝\",\"specification\":\"(特殊品)镀特殊彩锌:ZN层5UM以上,盐雾72H以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 16:04:38', 21);
INSERT INTO `sys_oper_log` VALUES (145, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, '100388', '供应商部门', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"asn202410110005\",\"expectedQty\":1011,\"factory\":\"高松技术\",\"id\":80,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"高松技术\",\"material\":\"钢\",\"orderDate\":\"2024-09-30\",\"orderQuantity\":300000,\"params\":{},\"poLineNo\":30,\"poNo\":4500028721,\"projectCategory\":\"A1\",\"reviewStatus\":\"在审核\",\"sku\":\"92100000147\",\"skuDescr\":\"DG25R-B-22A M3(6.0*6.0)螺丝\",\"specification\":\"(特殊品)镀特殊彩锌:ZN层5UM以上,盐雾72H以上\",\"supplieId\":100388,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 16:05:06\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 16:05:06', 33);
INSERT INTO `sys_oper_log` VALUES (146, '送货单', 2, 'com.ruoyi.web.controller.system.SysDeliverOrderController.edit()', 'PUT', 1, 'purchase1', 'A1', '/deliver/order', '127.0.0.1', '内网IP', '{\"addWho\":\"\",\"asnNo\":\"SHQD202410100004\",\"expectedQty\":1009,\"factory\":\"高松技术\",\"id\":57,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H65\",\"orderDate\":\"2024-10-10\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038343,\"projectCategory\":\"A1\",\"reviewStatus\":\"已审核\",\"sku\":\"92116000018\",\"skuDescr\":\"PC6“十/-”字螺丝镀镍\",\"specification\":\"(特殊品)CU底2UM以上,NI层2UM以上\",\"supplieId\":100372,\"updateBy\":\"\",\"updateTime\":\"2024-10-11 16:05:47\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-11 16:05:47', 25);
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_deliver_order\"}', NULL, 0, NULL, '2024-10-12 10:10:42', 499);
INSERT INTO `sys_oper_log` VALUES (148, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', '研发部门', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-14 14:15:31\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,101,110,112,113,111],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":3,\"roleKey\":\"user\",\"roleName\":\"供应商\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-12 11:19:10', 79);
INSERT INTO `sys_oper_log` VALUES (149, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410160001\"', 0, NULL, '2024-10-16 08:16:58', 41);
INSERT INTO `sys_oper_log` VALUES (150, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410160001\"', 0, NULL, '2024-10-16 09:40:33', 5);
INSERT INTO `sys_oper_log` VALUES (151, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410160001\"', 0, NULL, '2024-10-16 09:41:19', 5);
INSERT INTO `sys_oper_log` VALUES (152, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410160001\"', 0, NULL, '2024-10-16 09:41:29', 5);
INSERT INTO `sys_oper_log` VALUES (153, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410160001\",\"expectedQty\":10,\"factory\":\"3012\",\"id\":81,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"SWRCH22A/Rm≥470MPa\",\"orderQuantity\":1000,\"params\":{},\"poLineNo\":10,\"poNo\":4800039350,\"reviewStatus\":\"未审核\",\"sku\":\"92100900458\",\"skuDescr\":\"TSCB4螺丝镀镍-Ф5.1\",\"specification\":\"CU底2UM以上,NI层1UM以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-16 09:41:29', 51);
INSERT INTO `sys_oper_log` VALUES (154, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410160002\"', 0, NULL, '2024-10-16 11:23:38', 49);
INSERT INTO `sys_oper_log` VALUES (155, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410160002\",\"expectedQty\":1016,\"factory\":\"3012\",\"id\":82,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"\",\"orderQuantity\":500000,\"params\":{},\"poLineNo\":10,\"poNo\":4800039369,\"reviewStatus\":\"未审核\",\"sku\":\"92100000480\",\"skuDescr\":\"2EDGKJ-20A M3\\\"一\\\" 螺丝\",\"specification\":\"FE/ZN5/CR3+A/T2,盐雾72小时以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-16 11:23:38', 46);
INSERT INTO `sys_oper_log` VALUES (156, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410170001\"', 0, NULL, '2024-10-17 08:15:14', 42);
INSERT INTO `sys_oper_log` VALUES (157, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410170001\",\"expectedQty\":1006,\"factory\":\"3012\",\"id\":83,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"\",\"orderQuantity\":500000,\"params\":{},\"poLineNo\":10,\"poNo\":4800039369,\"reviewStatus\":\"未审核\",\"sku\":\"92100000480\",\"skuDescr\":\"2EDGKJ-20A M3\\\"一\\\" 螺丝\",\"specification\":\"FE/ZN5/CR3+A/T2,盐雾72小时以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 08:15:14', 41);
INSERT INTO `sys_oper_log` VALUES (158, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410170002\"', 0, NULL, '2024-10-17 08:36:00', 5);
INSERT INTO `sys_oper_log` VALUES (159, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410170002\",\"expectedQty\":1017,\"factory\":\"3012\",\"id\":84,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"钢\",\"orderQuantity\":1000000,\"params\":{},\"poLineNo\":10,\"poNo\":6100000840,\"reviewStatus\":\"未审核\",\"sku\":\"92100000043\",\"skuDescr\":\"DC2.5“-”字平头M2.5*8.3螺丝镀锌\",\"specification\":\"镀三价铬钝化＂蓝白锌＂,ZN层5UM以上,盐雾72H以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 08:36:00', 30);
INSERT INTO `sys_oper_log` VALUES (160, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410170003\"', 0, NULL, '2024-10-17 09:52:51', 40);
INSERT INTO `sys_oper_log` VALUES (161, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410170003\",\"expectedQty\":1017,\"factory\":\"3012\",\"id\":85,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"不锈钢SUS304\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4500028449,\"reviewStatus\":\"未审核\",\"sku\":\"92100000649\",\"skuDescr\":\"十字螺丝M3.5*10\",\"specification\":\"欧标交流供电插座使用,盐雾96H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 09:52:51', 63);
INSERT INTO `sys_oper_log` VALUES (162, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410170004\"', 0, NULL, '2024-10-17 09:54:55', 6);
INSERT INTO `sys_oper_log` VALUES (163, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410170004\",\"expectedQty\":1017,\"factory\":\"3012\",\"id\":86,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"不锈钢SUS304\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4500028449,\"reviewStatus\":\"未审核\",\"sku\":\"92100000649\",\"skuDescr\":\"十字螺丝M3.5*10\",\"specification\":\"欧标交流供电插座使用,盐雾96H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 09:54:55', 30);
INSERT INTO `sys_oper_log` VALUES (164, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410170005\"', 0, NULL, '2024-10-17 10:00:07', 4);
INSERT INTO `sys_oper_log` VALUES (165, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410170005\",\"expectedQty\":1017,\"factory\":\"3012\",\"id\":87,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"钢\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4500028643,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"92100000036\",\"skuDescr\":\"5EDGKH-7.62-02A螺丝镀锌\",\"specification\":\"(特殊品)镀三价铬钝化＂蓝白锌＂,ZN层5UM以上,盐雾72H以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 10:00:07', 24);
INSERT INTO `sys_oper_log` VALUES (166, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101,110\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"B06\",\"orderNum\":2,\"params\":{},\"parentId\":110,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 10:02:45', 42);
INSERT INTO `sys_oper_log` VALUES (167, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085,1086],\"params\":{},\"roleId\":7,\"roleKey\":\"B06\",\"roleName\":\"B06\",\"roleSort\":7,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 10:04:36', 51);
INSERT INTO `sys_oper_log` VALUES (168, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-17 10:04:36\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":7,\"roleKey\":\"B06\",\"roleName\":\"B06\",\"roleSort\":7,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 10:04:58', 69);
INSERT INTO `sys_oper_log` VALUES (169, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":114,\"nickName\":\"purchase3\",\"params\":{},\"postIds\":[],\"roleIds\":[7],\"status\":\"0\",\"userId\":6,\"userName\":\"purchase3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 10:05:35', 125);
INSERT INTO `sys_oper_log` VALUES (170, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-10-17 10:05:35\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101,110\",\"children\":[],\"deptId\":114,\"deptName\":\"B06\",\"orderNum\":2,\"params\":{},\"parentId\":110,\"status\":\"0\"},\"deptId\":114,\"email\":\"\",\"loginDate\":\"2024-10-17 10:07:39\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"purchase3\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[7],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":7,\"roleKey\":\"B06\",\"roleName\":\"B06\",\"roleSort\":7,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":6,\"userName\":\"purchase3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 10:12:11', 75);
INSERT INTO `sys_oper_log` VALUES (171, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', '研发部门', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-14 14:15:31\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,101,110,112,113,114,111],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":3,\"roleKey\":\"user\",\"roleName\":\"供应商\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 10:12:42', 60);
INSERT INTO `sys_oper_log` VALUES (172, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410170006\"', 0, NULL, '2024-10-17 10:13:19', 3);
INSERT INTO `sys_oper_log` VALUES (173, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410170006\",\"expectedQty\":1017,\"factory\":\"3012\",\"id\":88,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"不锈钢\",\"orderQuantity\":20000,\"params\":{},\"poLineNo\":30,\"poNo\":4500028088,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"92100000608\",\"skuDescr\":\"DA-M3(L=5.8mm)“+”螺丝(不锈钢)\",\"specification\":\"(不锈钢)\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 10:13:19', 29);
INSERT INTO `sys_oper_log` VALUES (174, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410170007\"', 0, NULL, '2024-10-17 14:48:00', 4);
INSERT INTO `sys_oper_log` VALUES (175, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410170007\",\"expectedQty\":1017,\"factory\":\"3012\",\"id\":89,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"不锈钢\",\"orderQuantity\":20000,\"params\":{},\"poLineNo\":30,\"poNo\":4500028088,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"92100000608\",\"skuDescr\":\"DA-M3(L=5.8mm)“+”螺丝(不锈钢)\",\"specification\":\"(不锈钢)\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 14:48:00', 30);
INSERT INTO `sys_oper_log` VALUES (176, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410170008\"', 0, NULL, '2024-10-17 14:48:11', 4);
INSERT INTO `sys_oper_log` VALUES (177, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410170008\",\"expectedQty\":1017,\"factory\":\"3010\",\"id\":90,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3010\",\"material\":\"钢\",\"orderQuantity\":100000,\"params\":{},\"poLineNo\":10,\"poNo\":4500028531,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"92100000444\",\"skuDescr\":\"DG636A-02A-M3.5 +/-字螺丝镀锌\",\"specification\":\"镀三价铬钝化＂蓝白锌＂,ZN层5UM以上,盐雾72H以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 14:48:11', 34);
INSERT INTO `sys_oper_log` VALUES (178, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410170009\"', 0, NULL, '2024-10-17 14:48:21', 6);
INSERT INTO `sys_oper_log` VALUES (179, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410170009\",\"expectedQty\":1017,\"factory\":\"3012\",\"id\":91,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"钢\",\"orderQuantity\":100000,\"params\":{},\"poLineNo\":20,\"poNo\":4500028665,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"92100000011\",\"skuDescr\":\"15EDGKNHBM-3.5-00A＂-＂字螺丝镀锌\",\"specification\":\"镀三价铬钝化＂蓝白锌＂,ZN层5UM以上,盐雾72H以上\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 14:48:21', 25);
INSERT INTO `sys_oper_log` VALUES (180, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410170010\"', 0, NULL, '2024-10-17 14:48:29', 3);
INSERT INTO `sys_oper_log` VALUES (181, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410170010\",\"expectedQty\":1017,\"factory\":\"3012\",\"id\":92,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"钢\",\"orderQuantity\":10000,\"params\":{},\"poLineNo\":10,\"poNo\":4500028603,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"92100900327\",\"skuDescr\":\"M10*23“+”字三组合螺丝镀锌\",\"specification\":\"FE/ZN5/CR3+A/T2(NSS.72H)\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 14:48:29', 30);
INSERT INTO `sys_oper_log` VALUES (182, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '192.168.10.42', '内网IP', '{}', '\"asn202410170011\"', 0, NULL, '2024-10-17 14:58:55', 3);
INSERT INTO `sys_oper_log` VALUES (183, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '192.168.10.42', '内网IP', '{\"asnNo\":\"asn202410170011\",\"expectedQty\":100,\"factory\":\"3012\",\"id\":93,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H59\",\"orderQuantity\":50000,\"params\":{},\"poLineNo\":10,\"poNo\":4500028381,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"92100000280\",\"skuDescr\":\"DSMT2.5-M3(L=14.1mm)＂-＂字螺丝镀雾锡\",\"specification\":\"镀雾锡:NI底0.5UM以上,SN层2-5UM\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 14:58:55', 32);
INSERT INTO `sys_oper_log` VALUES (184, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"10043\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":7,\"userName\":\"10043\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 09:57:33', 162);
INSERT INTO `sys_oper_log` VALUES (185, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-10-18 09:57:33\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":111,\"deptName\":\"供应商部门\",\"leader\":\"yara\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":111,\"email\":\"111@163.com\",\"loginIp\":\"\",\"nickName\":\"10043\",\"params\":{},\"phonenumber\":\"18456457878\",\"postIds\":[],\"roleIds\":[3],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":3,\"roleKey\":\"user\",\"roleName\":\"供应商\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":7,\"userName\":\"10043\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 09:58:14', 262);
INSERT INTO `sys_oper_log` VALUES (186, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-10-18 09:57:33\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":111,\"deptName\":\"供应商部门\",\"leader\":\"yara\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":111,\"email\":\"111@163.com\",\"loginDate\":\"2024-10-18 09:58:29\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"100043\",\"params\":{},\"phonenumber\":\"18456457878\",\"postIds\":[],\"roleIds\":[3],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":3,\"roleKey\":\"user\",\"roleName\":\"供应商\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":7,\"userName\":\"10043\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 10:00:41', 66);
INSERT INTO `sys_oper_log` VALUES (187, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/user/7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 10:00:51', 61);
INSERT INTO `sys_oper_log` VALUES (188, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100043\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":8,\"userName\":\"100043\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 10:01:08', 132);
INSERT INTO `sys_oper_log` VALUES (189, '用户管理', 6, 'com.ruoyi.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":\"0\"}', NULL, 1, '', '2024-10-18 10:08:47', 897);
INSERT INTO `sys_oper_log` VALUES (190, '用户管理', 5, 'com.ruoyi.web.controller.system.SysUserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-10-18 10:08:55', 1113);
INSERT INTO `sys_oper_log` VALUES (191, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100372\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":9,\"userName\":\"100372\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 10:30:10', 189);
INSERT INTO `sys_oper_log` VALUES (192, '用户管理', 6, 'com.ruoyi.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":\"0\"}', NULL, 1, '很抱歉，导入失败！共 424 条数据格式不正确，错误如下：<br/>1、账号  导入失败：userName: 用户账号不能为空<br/>2、账号  导入失败：userName: 用户账号不能为空<br/>3、账号  导入失败：userName: 用户账号不能为空<br/>4、账号  导入失败：userName: 用户账号不能为空<br/>5、账号  导入失败：userName: 用户账号不能为空<br/>6、账号  导入失败：userName: 用户账号不能为空<br/>7、账号  导入失败：userName: 用户账号不能为空<br/>8、账号  导入失败：userName: 用户账号不能为空<br/>9、账号  导入失败：userName: 用户账号不能为空<br/>10、账号  导入失败：userName: 用户账号不能为空<br/>11、账号  导入失败：userName: 用户账号不能为空<br/>12、账号  导入失败：userName: 用户账号不能为空<br/>13、账号  导入失败：userName: 用户账号不能为空<br/>14、账号  导入失败：userName: 用户账号不能为空<br/>15、账号  导入失败：userName: 用户账号不能为空<br/>16、账号  导入失败：userName: 用户账号不能为空<br/>17、账号  导入失败：userName: 用户账号不能为空<br/>18、账号  导入失败：userName: 用户账号不能为空<br/>19、账号  导入失败：userName: 用户账号不能为空<br/>20、账号  导入失败：userName: 用户账号不能为空<br/>21、账号  导入失败：userName: 用户账号不能为空<br/>22、账号  导入失败：userName: 用户账号不能为空<br/>23、账号  导入失败：userName: 用户账号不能为空<br/>24、账号  导入失败：userName: 用户账号不能为空<br/>25、账号  导入失败：userName: 用户账号不能为空<br/>26、账号  导入失败：userName: 用户账号不能为空<br/>27、账号  导入失败：userName: 用户账号不能为空<br/>28、账号  导入失败：userName: 用户账号不能为空<br/>29、账号  导入失败：userName: 用户账号不能为空<br/>30、账号  导入失败：userName: 用户账号不能为空<br/>31、账号  导入失败：userName: 用户账号不能为空<br/>32、账号  导入失败：userName: 用户账号不能为空<br/>33、账号  导入失败：userName: 用户账号不能为空<br/>34、账号  导入失败：userName: 用户账号不能为空<br/>35、账号  导入失败：userName: 用户账号不能为空<br/>36、账号  导入失败：userName: 用户账号不能为空<br/>37、账号  导入失败：userName: 用户账号不能为空<br/>38、账号  导入失败：userName: 用户账号不能为空<br/>39、账号  导入失败：userName: 用户账号不能为空<br/>40、账号  导入失败：userName: 用户账号不能为空<br/>41、账号  导入失败：userName: 用户账号不能为空<br/>42、账号  导入失败：userName: 用户账号不能为空<br/>43、账号  导入失败：userName: 用户账号不能为空<br/>44、账号  导入失败：userName: 用户账号不能为空<br/>45、账号  导入失败：userName: 用户账号不能为空<br/>46、账号  导入失败：userName: 用户账号不能为空<br/>47、账号  导入失败：userName: 用户账号不能为空<br/>48、账号  导入失败：userName: 用户账号不能为空<br/>49、账号  导入失败：userName: 用户账号不能为空<br/>50、账号  导入失败：userName: 用户账号不能为空<br/>51、账号  导入失败：userName: 用户账号不能为空<br/>52、账号  导入失败：userName: 用户账号不能为空<br/>53、账号  导入失败：userName: 用户账号不能为空<br/>54、账号  导入失败：userName: 用户账号不能为空<br/>55、账号  导入失败：userName: 用户账号不能为空<br/>56、账号  导入失败：userName: 用户账号不能为空<br/>57、账号  导入失败：use', '2024-10-18 11:00:04', 65513);
INSERT INTO `sys_oper_log` VALUES (193, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100083\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":10,\"userName\":\"100083\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:01:00', 179);
INSERT INTO `sys_oper_log` VALUES (194, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410180001\"', 0, NULL, '2024-10-18 11:03:13', 8);
INSERT INTO `sys_oper_log` VALUES (195, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410180001\",\"expectedQty\":111,\"factory\":\"3012\",\"id\":94,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":683,\"params\":{},\"poLineNo\":10,\"poNo\":5500079316,\"projectCategory\":\"B07\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000439\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*92(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2，硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:03:14', 52);
INSERT INTO `sys_oper_log` VALUES (196, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '192.168.10.42', '内网IP', '{}', '\"asn202410180002\"', 0, NULL, '2024-10-18 11:05:57', 4);
INSERT INTO `sys_oper_log` VALUES (197, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '192.168.10.42', '内网IP', '{\"asnNo\":\"asn202410180002\",\"expectedQty\":100,\"factory\":\"3012\",\"id\":95,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":683,\"params\":{},\"poLineNo\":10,\"poNo\":5500079316,\"projectCategory\":\"B07\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000439\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*92(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2，硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:05:57', 59);
INSERT INTO `sys_oper_log` VALUES (198, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', '研发部门', '/system/dept', '192.168.10.42', '内网IP', '{\"ancestors\":\"0,100,101,110\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"B07\",\"orderNum\":4,\"params\":{},\"parentId\":110,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:07:40', 51);
INSERT INTO `sys_oper_log` VALUES (199, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '192.168.10.42', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-10-17 10:05:35\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101,110\",\"children\":[],\"deptId\":114,\"deptName\":\"B06\",\"orderNum\":2,\"params\":{},\"parentId\":110,\"status\":\"0\"},\"deptId\":114,\"email\":\"\",\"loginDate\":\"2024-10-17 15:45:29\",\"loginIp\":\"192.168.10.42\",\"nickName\":\"purchase3\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[7],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":7,\"roleKey\":\"B06\",\"roleName\":\"B06\",\"roleSort\":7,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":6,\"userName\":\"purchase3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:08:29', 74);
INSERT INTO `sys_oper_log` VALUES (200, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '192.168.10.42', '内网IP', '{\"ancestors\":\"0,100,101,110\",\"children\":[],\"deptId\":115,\"deptName\":\"B07\",\"orderNum\":4,\"params\":{},\"parentId\":110,\"parentName\":\"采购部门\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:09:06', 75);
INSERT INTO `sys_oper_log` VALUES (201, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":8,\"roleKey\":\"B07\",\"roleName\":\"B07\",\"roleSort\":8,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:21:43', 54);
INSERT INTO `sys_oper_log` VALUES (202, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101,110\",\"children\":[],\"deptId\":115,\"deptName\":\"B07\",\"orderNum\":3,\"params\":{},\"parentId\":110,\"parentName\":\"采购部门\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:22:20', 66);
INSERT INTO `sys_oper_log` VALUES (203, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-09-26 13:52:44\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101,110\",\"children\":[],\"deptId\":113,\"deptName\":\"A2\",\"leader\":\"lyr\",\"orderNum\":1,\"params\":{},\"parentId\":110,\"status\":\"0\"},\"deptId\":115,\"email\":\"\",\"loginDate\":\"2024-10-11 13:52:02\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"采购人员2\",\"params\":{},\"phonenumber\":\"18488888888\",\"postIds\":[],\"roleIds\":[8],\"roles\":[{\"admin\":false,\"dataScope\":\"4\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":5,\"roleKey\":\"A2\",\"roleName\":\"A2\",\"roleSort\":5,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":5,\"userName\":\"purchase2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:25:08', 69);
INSERT INTO `sys_oper_log` VALUES (204, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100004\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":11,\"userName\":\"100004\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:33:32', 146);
INSERT INTO `sys_oper_log` VALUES (205, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100029\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":12,\"userName\":\"100029\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:33:55', 172);
INSERT INTO `sys_oper_log` VALUES (206, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100033\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":13,\"userName\":\"100033\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:34:17', 112);
INSERT INTO `sys_oper_log` VALUES (207, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100034\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":14,\"userName\":\"100034\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:34:39', 130);
INSERT INTO `sys_oper_log` VALUES (208, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100036\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":15,\"userName\":\"100036\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:34:56', 150);
INSERT INTO `sys_oper_log` VALUES (209, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100044\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":16,\"userName\":\"100044\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:35:14', 122);
INSERT INTO `sys_oper_log` VALUES (210, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100050\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":17,\"userName\":\"100050\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:35:51', 131);
INSERT INTO `sys_oper_log` VALUES (211, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100051\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":18,\"userName\":\"100051\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:36:12', 149);
INSERT INTO `sys_oper_log` VALUES (212, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100054\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":19,\"userName\":\"100054\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:36:35', 124);
INSERT INTO `sys_oper_log` VALUES (213, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100057\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":20,\"userName\":\"100057\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:36:52', 129);
INSERT INTO `sys_oper_log` VALUES (214, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100069\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":21,\"userName\":\"100069\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:37:10', 117);
INSERT INTO `sys_oper_log` VALUES (215, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100081\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":22,\"userName\":\"100081\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:37:27', 149);
INSERT INTO `sys_oper_log` VALUES (216, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100084\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":23,\"userName\":\"100084\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:37:45', 114);
INSERT INTO `sys_oper_log` VALUES (217, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100085\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":24,\"userName\":\"100085\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:38:00', 122);
INSERT INTO `sys_oper_log` VALUES (218, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100086\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":25,\"userName\":\"100086\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:38:14', 119);
INSERT INTO `sys_oper_log` VALUES (219, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100088\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":26,\"userName\":\"100088\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:38:29', 157);
INSERT INTO `sys_oper_log` VALUES (220, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100090\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":27,\"userName\":\"100090\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:38:44', 122);
INSERT INTO `sys_oper_log` VALUES (221, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100093\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":28,\"userName\":\"100093\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:39:00', 125);
INSERT INTO `sys_oper_log` VALUES (222, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100098\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":29,\"userName\":\"100098\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:39:22', 111);
INSERT INTO `sys_oper_log` VALUES (223, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100099\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":30,\"userName\":\"100099\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:39:37', 131);
INSERT INTO `sys_oper_log` VALUES (224, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100101\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":31,\"userName\":\"100101\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:39:53', 130);
INSERT INTO `sys_oper_log` VALUES (225, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100116\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":32,\"userName\":\"100116\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:40:23', 115);
INSERT INTO `sys_oper_log` VALUES (226, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100123\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":33,\"userName\":\"100123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:40:39', 117);
INSERT INTO `sys_oper_log` VALUES (227, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100130\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":34,\"userName\":\"100130\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:40:55', 115);
INSERT INTO `sys_oper_log` VALUES (228, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100145\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":35,\"userName\":\"100145\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:41:10', 142);
INSERT INTO `sys_oper_log` VALUES (229, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100152\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":36,\"userName\":\"100152\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:41:24', 127);
INSERT INTO `sys_oper_log` VALUES (230, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100182\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":37,\"userName\":\"100182\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:41:38', 117);
INSERT INTO `sys_oper_log` VALUES (231, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100196\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":38,\"userName\":\"100196\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:42:04', 132);
INSERT INTO `sys_oper_log` VALUES (232, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100197\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":39,\"userName\":\"100197\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:42:16', 118);
INSERT INTO `sys_oper_log` VALUES (233, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":111,\"nickName\":\"100202\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":40,\"userName\":\"100202\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:42:36', 132);
INSERT INTO `sys_oper_log` VALUES (234, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410180003\"', 0, NULL, '2024-10-18 11:47:36', 3);
INSERT INTO `sys_oper_log` VALUES (235, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410180003\",\"expectedQty\":18,\"factory\":\"3012\",\"id\":96,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":70,\"params\":{},\"poLineNo\":30,\"poNo\":5500079311,\"projectCategory\":\"B07\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000428\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*39(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2,硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:47:36', 31);
INSERT INTO `sys_oper_log` VALUES (236, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410180004\"', 0, NULL, '2024-10-18 11:57:36', 2);
INSERT INTO `sys_oper_log` VALUES (237, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410180004\",\"expectedQty\":18,\"factory\":\"3012\",\"id\":97,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":683,\"params\":{},\"poLineNo\":10,\"poNo\":5500079314,\"projectCategory\":\"B07\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000439\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*92(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2，硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-18 11:57:36', 26);
INSERT INTO `sys_oper_log` VALUES (238, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100372', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410220001\"', 0, NULL, '2024-10-22 08:44:16', 52);
INSERT INTO `sys_oper_log` VALUES (239, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100372', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410220001\",\"expectedQty\":1022,\"factory\":\"3012\",\"id\":98,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3010\",\"material\":\"高锡磷青铜C5441\",\"orderQuantity\":7000,\"params\":{},\"poLineNo\":10,\"poNo\":4800038359,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"92116000018\",\"skuDescr\":\"M12包塑式4A母PIN镀金\",\"specification\":\"NI底120UIN,镀金3UIN以上；耐盐雾48H\",\"supplieId\":100372}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 08:44:16', 62);
INSERT INTO `sys_oper_log` VALUES (240, '用户管理', 5, 'com.ruoyi.web.controller.system.SysUserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-10-22 14:05:26', 1701);
INSERT INTO `sys_oper_log` VALUES (241, '用户管理', 6, 'com.ruoyi.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":\"0\"}', NULL, 1, '导入用户数据不能为空！', '2024-10-22 14:09:12', 141);
INSERT INTO `sys_oper_log` VALUES (242, '用户管理', 6, 'com.ruoyi.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":\"0\"}', NULL, 1, '很抱歉，导入失败！共 318 条数据格式不正确，错误如下：<br/>1、账号  导入失败：userName: 用户账号不能为空<br/>2、账号  导入失败：userName: 用户账号不能为空<br/>3、账号  导入失败：userName: 用户账号不能为空<br/>4、账号  导入失败：userName: 用户账号不能为空<br/>5、账号  导入失败：userName: 用户账号不能为空<br/>6、账号  导入失败：userName: 用户账号不能为空<br/>7、账号  导入失败：userName: 用户账号不能为空<br/>8、账号  导入失败：userName: 用户账号不能为空<br/>9、账号  导入失败：userName: 用户账号不能为空<br/>10、账号  导入失败：userName: 用户账号不能为空<br/>11、账号  导入失败：userName: 用户账号不能为空<br/>12、账号  导入失败：userName: 用户账号不能为空<br/>13、账号  导入失败：userName: 用户账号不能为空<br/>14、账号  导入失败：userName: 用户账号不能为空<br/>15、账号  导入失败：userName: 用户账号不能为空<br/>16、账号  导入失败：userName: 用户账号不能为空<br/>17、账号  导入失败：userName: 用户账号不能为空<br/>18、账号  导入失败：userName: 用户账号不能为空<br/>19、账号  导入失败：userName: 用户账号不能为空<br/>20、账号  导入失败：userName: 用户账号不能为空<br/>21、账号  导入失败：userName: 用户账号不能为空<br/>22、账号  导入失败：userName: 用户账号不能为空<br/>23、账号  导入失败：userName: 用户账号不能为空<br/>24、账号  导入失败：userName: 用户账号不能为空<br/>25、账号  导入失败：userName: 用户账号不能为空<br/>26、账号  导入失败：userName: 用户账号不能为空<br/>27、账号  导入失败：userName: 用户账号不能为空<br/>28、账号  导入失败：userName: 用户账号不能为空<br/>29、账号  导入失败：userName: 用户账号不能为空<br/>30、账号  导入失败：userName: 用户账号不能为空<br/>31、账号  导入失败：userName: 用户账号不能为空<br/>32、账号  导入失败：userName: 用户账号不能为空<br/>33、账号  导入失败：userName: 用户账号不能为空<br/>34、账号  导入失败：userName: 用户账号不能为空<br/>35、账号  导入失败：userName: 用户账号不能为空<br/>36、账号  导入失败：userName: 用户账号不能为空<br/>37、账号  导入失败：userName: 用户账号不能为空<br/>38、账号  导入失败：userName: 用户账号不能为空<br/>39、账号  导入失败：userName: 用户账号不能为空<br/>40、账号  导入失败：userName: 用户账号不能为空<br/>41、账号  导入失败：userName: 用户账号不能为空<br/>42、账号  导入失败：userName: 用户账号不能为空<br/>43、账号  导入失败：userName: 用户账号不能为空<br/>44、账号  导入失败：userName: 用户账号不能为空<br/>45、账号  导入失败：userName: 用户账号不能为空<br/>46、账号  导入失败：userName: 用户账号不能为空<br/>47、账号  导入失败：userName: 用户账号不能为空<br/>48、账号  导入失败：userName: 用户账号不能为空<br/>49、账号  导入失败：userName: 用户账号不能为空<br/>50、账号  导入失败：userName: 用户账号不能为空<br/>51、账号  导入失败：userName: 用户账号不能为空<br/>52、账号  导入失败：userName: 用户账号不能为空<br/>53、账号  导入失败：userName: 用户账号不能为空<br/>54、账号  导入失败：userName: 用户账号不能为空<br/>55、账号  导入失败：userName: 用户账号不能为空<br/>56、账号  导入失败：userName: 用户账号不能为空<br/>57、账号  导入失败：use', '2024-10-22 14:09:42', 1645);
INSERT INTO `sys_oper_log` VALUES (243, '用户管理', 6, 'com.ruoyi.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":\"0\"}', NULL, 1, '很抱歉，导入失败！共 318 条数据格式不正确，错误如下：<br/>1、账号 null 导入失败：userName: 用户账号不能为空<br/>2、账号 null 导入失败：userName: 用户账号不能为空<br/>3、账号 null 导入失败：userName: 用户账号不能为空<br/>4、账号 null 导入失败：userName: 用户账号不能为空<br/>5、账号 null 导入失败：userName: 用户账号不能为空<br/>6、账号 null 导入失败：userName: 用户账号不能为空<br/>7、账号 null 导入失败：userName: 用户账号不能为空<br/>8、账号 null 导入失败：userName: 用户账号不能为空<br/>9、账号 null 导入失败：userName: 用户账号不能为空<br/>10、账号 null 导入失败：userName: 用户账号不能为空<br/>11、账号 null 导入失败：userName: 用户账号不能为空<br/>12、账号 null 导入失败：userName: 用户账号不能为空<br/>13、账号 null 导入失败：userName: 用户账号不能为空<br/>14、账号 null 导入失败：userName: 用户账号不能为空<br/>15、账号 null 导入失败：userName: 用户账号不能为空<br/>16、账号 null 导入失败：userName: 用户账号不能为空<br/>17、账号 null 导入失败：userName: 用户账号不能为空<br/>18、账号 null 导入失败：userName: 用户账号不能为空<br/>19、账号 null 导入失败：userName: 用户账号不能为空<br/>20、账号 null 导入失败：userName: 用户账号不能为空<br/>21、账号 null 导入失败：userName: 用户账号不能为空<br/>22、账号 null 导入失败：userName: 用户账号不能为空<br/>23、账号 null 导入失败：userName: 用户账号不能为空<br/>24、账号 null 导入失败：userName: 用户账号不能为空<br/>25、账号 null 导入失败：userName: 用户账号不能为空<br/>26、账号 null 导入失败：userName: 用户账号不能为空<br/>27、账号 null 导入失败：userName: 用户账号不能为空<br/>28、账号 null 导入失败：userName: 用户账号不能为空<br/>29、账号 null 导入失败：userName: 用户账号不能为空<br/>30、账号 null 导入失败：userName: 用户账号不能为空<br/>31、账号 null 导入失败：userName: 用户账号不能为空<br/>32、账号 null 导入失败：userName: 用户账号不能为空<br/>33、账号 null 导入失败：userName: 用户账号不能为空<br/>34、账号 null 导入失败：userName: 用户账号不能为空<br/>35、账号 null 导入失败：userName: 用户账号不能为空<br/>36、账号 null 导入失败：userName: 用户账号不能为空<br/>37、账号 null 导入失败：userName: 用户账号不能为空<br/>38、账号 null 导入失败：userName: 用户账号不能为空<br/>39、账号 null 导入失败：userName: 用户账号不能为空<br/>40、账号 null 导入失败：userName: 用户账号不能为空<br/>41、账号 null 导入失败：userName: 用户账号不能为空<br/>42、账号 null 导入失败：userName: 用户账号不能为空<br/>43、账号 null 导入失败：userName: 用户账号不能为空<br/>44、账号 null 导入失败：userName: 用户账号不能为空<br/>45、账号 null 导入失败：userName: 用户账号不能为空<br/>46、账号 null 导入失败：userName: 用户账号不能为空<br/>47、账号 null 导入失败：userName: 用户账号不能为空<br/>48、账号 null 导入失败：userName: 用户账号不能为空<br/>49、账号 null 导入失败：userName: 用户账号不能为空<br/>50、账号 null 导入失败：userName: 用户账号不能为空<br/>51、账号 null 导入失败：userName:', '2024-10-22 14:17:09', 2277);
INSERT INTO `sys_oper_log` VALUES (244, '用户管理', 6, 'com.ruoyi.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":\"0\"}', NULL, 1, '很抱歉，导入失败！共 318 条数据格式不正确，错误如下：<br/>1、账号 null 导入失败：userName: 用户账号不能为空<br/>2、账号 null 导入失败：userName: 用户账号不能为空<br/>3、账号 null 导入失败：userName: 用户账号不能为空<br/>4、账号 null 导入失败：userName: 用户账号不能为空<br/>5、账号 null 导入失败：userName: 用户账号不能为空<br/>6、账号 null 导入失败：userName: 用户账号不能为空<br/>7、账号 null 导入失败：userName: 用户账号不能为空<br/>8、账号 null 导入失败：userName: 用户账号不能为空<br/>9、账号 null 导入失败：userName: 用户账号不能为空<br/>10、账号 null 导入失败：userName: 用户账号不能为空<br/>11、账号 null 导入失败：userName: 用户账号不能为空<br/>12、账号 null 导入失败：userName: 用户账号不能为空<br/>13、账号 null 导入失败：userName: 用户账号不能为空<br/>14、账号 null 导入失败：userName: 用户账号不能为空<br/>15、账号 null 导入失败：userName: 用户账号不能为空<br/>16、账号 null 导入失败：userName: 用户账号不能为空<br/>17、账号 null 导入失败：userName: 用户账号不能为空<br/>18、账号 null 导入失败：userName: 用户账号不能为空<br/>19、账号 null 导入失败：userName: 用户账号不能为空<br/>20、账号 null 导入失败：userName: 用户账号不能为空<br/>21、账号 null 导入失败：userName: 用户账号不能为空<br/>22、账号 null 导入失败：userName: 用户账号不能为空<br/>23、账号 null 导入失败：userName: 用户账号不能为空<br/>24、账号 null 导入失败：userName: 用户账号不能为空<br/>25、账号 null 导入失败：userName: 用户账号不能为空<br/>26、账号 null 导入失败：userName: 用户账号不能为空<br/>27、账号 null 导入失败：userName: 用户账号不能为空<br/>28、账号 null 导入失败：userName: 用户账号不能为空<br/>29、账号 null 导入失败：userName: 用户账号不能为空<br/>30、账号 null 导入失败：userName: 用户账号不能为空<br/>31、账号 null 导入失败：userName: 用户账号不能为空<br/>32、账号 null 导入失败：userName: 用户账号不能为空<br/>33、账号 null 导入失败：userName: 用户账号不能为空<br/>34、账号 null 导入失败：userName: 用户账号不能为空<br/>35、账号 null 导入失败：userName: 用户账号不能为空<br/>36、账号 null 导入失败：userName: 用户账号不能为空<br/>37、账号 null 导入失败：userName: 用户账号不能为空<br/>38、账号 null 导入失败：userName: 用户账号不能为空<br/>39、账号 null 导入失败：userName: 用户账号不能为空<br/>40、账号 null 导入失败：userName: 用户账号不能为空<br/>41、账号 null 导入失败：userName: 用户账号不能为空<br/>42、账号 null 导入失败：userName: 用户账号不能为空<br/>43、账号 null 导入失败：userName: 用户账号不能为空<br/>44、账号 null 导入失败：userName: 用户账号不能为空<br/>45、账号 null 导入失败：userName: 用户账号不能为空<br/>46、账号 null 导入失败：userName: 用户账号不能为空<br/>47、账号 null 导入失败：userName: 用户账号不能为空<br/>48、账号 null 导入失败：userName: 用户账号不能为空<br/>49、账号 null 导入失败：userName: 用户账号不能为空<br/>50、账号 null 导入失败：userName: 用户账号不能为空<br/>51、账号 null 导入失败：userName:', '2024-10-22 14:20:09', 1086);
INSERT INTO `sys_oper_log` VALUES (245, '用户管理', 6, 'com.ruoyi.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":\"0\"}', NULL, 1, '很抱歉，导入失败！共 2 条数据格式不正确，错误如下：<br/>1、账号 100372 已存在<br/>2、账号 100388 已存在', '2024-10-22 14:23:25', 36604);
INSERT INTO `sys_oper_log` VALUES (246, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', '研发部门', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-09-14 14:15:31\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,101,110,112,113,114,115,111],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":3,\"roleKey\":\"user\",\"roleName\":\"供应商\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:25:26', 93);
INSERT INTO `sys_oper_log` VALUES (247, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"3\",\"userIds\":\"41,42,43,44,45\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:25:52', 17);
INSERT INTO `sys_oper_log` VALUES (248, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"3\",\"userIds\":\"50\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:27:13', 46);
INSERT INTO `sys_oper_log` VALUES (249, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"3\",\"userIds\":\"92,93,94,95,96,97,98,99,100,101\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:27:40', 37);
INSERT INTO `sys_oper_log` VALUES (250, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"3\",\"userIds\":\"352,353,354,355,356,357\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:28:11', 41);
INSERT INTO `sys_oper_log` VALUES (251, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"3\",\"userIds\":\"302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:28:18', 35);
INSERT INTO `sys_oper_log` VALUES (252, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"3\",\"userIds\":\"252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:28:23', 28);
INSERT INTO `sys_oper_log` VALUES (253, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"3\",\"userIds\":\"202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:28:26', 22);
INSERT INTO `sys_oper_log` VALUES (254, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"3\",\"userIds\":\"152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:28:31', 18);
INSERT INTO `sys_oper_log` VALUES (255, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"3\",\"userIds\":\"102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:28:35', 28);
INSERT INTO `sys_oper_log` VALUES (256, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"3\",\"userIds\":\"46,47,48,49,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-22 14:28:47', 35);
INSERT INTO `sys_oper_log` VALUES (257, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '192.168.10.42', '内网IP', '{}', '\"asn202410230001\"', 0, NULL, '2024-10-23 09:28:48', 34);
INSERT INTO `sys_oper_log` VALUES (258, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '192.168.10.42', '内网IP', '{\"asnNo\":\"asn202410230001\",\"expectedQty\":3,\"factory\":\"3012\",\"id\":99,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":683,\"params\":{},\"poLineNo\":10,\"poNo\":5500079316,\"projectCategory\":\"B07\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000439\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*92(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2，硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 09:28:48', 46);
INSERT INTO `sys_oper_log` VALUES (259, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410230002\"', 0, NULL, '2024-10-23 16:04:02', 6);
INSERT INTO `sys_oper_log` VALUES (260, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410230002\",\"expectedQty\":1023,\"factory\":\"3012\",\"id\":100,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":7000,\"params\":{},\"poLineNo\":30,\"poNo\":5500079319,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000428\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*39(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2,硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 16:04:02', 25);
INSERT INTO `sys_oper_log` VALUES (261, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '192.168.10.140', '内网IP', '{}', '\"asn202410240001\"', 0, NULL, '2024-10-24 09:43:28', 32);
INSERT INTO `sys_oper_log` VALUES (262, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '192.168.10.140', '内网IP', '{\"asnNo\":\"asn202410240001\",\"expectedQty\":100,\"factory\":\"3012\",\"id\":101,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜C1100\",\"orderQuantity\":8000,\"params\":{},\"poLineNo\":20,\"poNo\":5500079319,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000425\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*34(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/mm2,硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 09:43:28', 67);
INSERT INTO `sys_oper_log` VALUES (263, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100388', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"asn202410240002\"', 0, NULL, '2024-10-24 11:25:12', 56);
INSERT INTO `sys_oper_log` VALUES (264, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100388', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"asn202410240002\",\"expectedQty\":156565,\"factory\":\"3012\",\"id\":102,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"不锈钢\",\"orderQuantity\":20000,\"params\":{},\"poLineNo\":30,\"poNo\":4500028088,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"92100000608\",\"skuDescr\":\"DA-M3(L=5.8mm)“+”螺丝(不锈钢)\",\"specification\":\"(不锈钢)\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 11:25:12', 44);
INSERT INTO `sys_oper_log` VALUES (265, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '192.168.10.42', '内网IP', '{}', '\"asn202410240003\"', 0, NULL, '2024-10-24 13:18:24', 4);
INSERT INTO `sys_oper_log` VALUES (266, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '192.168.10.42', '内网IP', '{\"asnNo\":\"asn202410240003\",\"expectedQty\":120,\"factory\":\"3012\",\"id\":103,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":10000,\"params\":{},\"poLineNo\":10,\"poNo\":5500079323,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000439\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*92(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2，硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 13:18:24', 23);
INSERT INTO `sys_oper_log` VALUES (267, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', 'undefined', '内网IP', '{}', '\"DG202410240250004\"', 0, NULL, '2024-10-24 13:53:37', 16);
INSERT INTO `sys_oper_log` VALUES (268, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', 'undefined', '内网IP', '{}', '\"DG202410240250004\"', 0, NULL, '2024-10-24 13:53:37', 16);
INSERT INTO `sys_oper_log` VALUES (269, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202410240250004\"', 0, NULL, '2024-10-24 13:54:56', 4);
INSERT INTO `sys_oper_log` VALUES (270, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202410240250004\",\"expectedQty\":1024,\"factory\":\"3012\",\"id\":105,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":6000,\"params\":{},\"poLineNo\":30,\"poNo\":5500079319,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000428\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*39(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2,硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 13:54:57', 31);
INSERT INTO `sys_oper_log` VALUES (271, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202410240260005\"', 0, NULL, '2024-10-24 13:58:13', 16);
INSERT INTO `sys_oper_log` VALUES (272, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202410240260005\",\"expectedQty\":1024,\"factory\":\"3012\",\"id\":106,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜C1100\",\"orderQuantity\":8000,\"params\":{},\"poLineNo\":20,\"poNo\":5500079319,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000425\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*34(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/mm2,硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 13:58:13', 54);
INSERT INTO `sys_oper_log` VALUES (273, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202410240270006\"', 0, NULL, '2024-10-24 13:59:21', 19);
INSERT INTO `sys_oper_log` VALUES (274, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202410240270006\",\"expectedQty\":1024,\"factory\":\"3012\",\"id\":107,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜C1100\",\"orderQuantity\":8000,\"params\":{},\"poLineNo\":20,\"poNo\":5500079319,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000425\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*34(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/mm2,硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 13:59:21', 31);
INSERT INTO `sys_oper_log` VALUES (275, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202410240007\"', 0, NULL, '2024-10-24 14:00:43', 3);
INSERT INTO `sys_oper_log` VALUES (276, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202410240007\",\"expectedQty\":1024,\"factory\":\"3012\",\"id\":108,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜C1100\",\"orderQuantity\":8000,\"params\":{},\"poLineNo\":20,\"poNo\":5500079319,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000425\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*34(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/mm2,硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 14:00:43', 30);
INSERT INTO `sys_oper_log` VALUES (277, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '192.168.10.42', '内网IP', '{}', '\"DG202410240001\"', 0, NULL, '2024-10-24 14:02:37', 13);
INSERT INTO `sys_oper_log` VALUES (278, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '192.168.10.42', '内网IP', '{\"asnNo\":\"DG202410240001\",\"expectedQty\":110,\"factory\":\"3012\",\"id\":109,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":10000,\"params\":{},\"poLineNo\":10,\"poNo\":5500079323,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000439\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*92(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2，硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 14:02:37', 31);
INSERT INTO `sys_oper_log` VALUES (279, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '192.168.10.140', '内网IP', '{}', '\"DG202410240002\"', 0, NULL, '2024-10-24 15:15:13', 11);
INSERT INTO `sys_oper_log` VALUES (280, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '192.168.10.140', '内网IP', '{\"asnNo\":\"DG202410240002\",\"expectedQty\":210,\"factory\":\"3012\",\"id\":110,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":10000,\"params\":{},\"poLineNo\":10,\"poNo\":5500079323,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000439\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*92(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2，硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:15:13', 45);
INSERT INTO `sys_oper_log` VALUES (281, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100083', '供应商部门', '/deliver/order/generate', '192.168.10.140', '内网IP', '{}', '\"DG202410240003\"', 0, NULL, '2024-10-24 16:27:47', 3);
INSERT INTO `sys_oper_log` VALUES (282, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100083', '供应商部门', '/deliver/order/add', '192.168.10.140', '内网IP', '{\"asnNo\":\"DG202410240003\",\"expectedQty\":99,\"factory\":\"3012\",\"id\":111,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜\",\"orderQuantity\":10000,\"params\":{},\"poLineNo\":10,\"poNo\":5500079323,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"91101000439\",\"skuDescr\":\"C1100/1.2(+0/-0.03)*92(+0.05/-0.1)\",\"specification\":\"抗拉强度245-315N/MM2，硬度HV100°±20°\",\"supplieId\":100083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 16:27:47', 29);
INSERT INTO `sys_oper_log` VALUES (283, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100084', '供应商部门', '/deliver/order/generate', '192.168.10.42', '内网IP', '{}', '\"DG202410250001\"', 0, NULL, '2024-10-25 08:52:58', 30);
INSERT INTO `sys_oper_log` VALUES (284, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100084', '供应商部门', '/deliver/order/add', '192.168.10.42', '内网IP', '{\"asnNo\":\"DG202410250001\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":112,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"磷青铜C5210\",\"orderQuantity\":1000,\"params\":{},\"poLineNo\":10,\"poNo\":5500079324,\"projectCategory\":\"B06\",\"reviewStatus\":\"未审核\",\"sku\":\"10062000192\",\"skuDescr\":\"DG250-3.5-1100A大焊脚镀锡\",\"specification\":\"(特殊品)CU底2UM以上,NI底0.3UM以上,SN层4UM以上\",\"supplieId\":100084}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-25 08:52:58', 50);
INSERT INTO `sys_oper_log` VALUES (285, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100084', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202410250002\"', 0, NULL, '2024-10-25 11:15:02', 12);
INSERT INTO `sys_oper_log` VALUES (286, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100084', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202410250002\",\"expectedQty\":1025,\"factory\":\"3012\",\"id\":113,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"钢SPCC+进口不锈钢\",\"orderQuantity\":89080,\"params\":{},\"poLineNo\":10,\"poNo\":5500076396,\"projectCategory\":\"B05\",\"reviewStatus\":\"未审核\",\"sku\":\"10062000274\",\"skuDescr\":\"DG228-3.5-02P钢接线体(X000003660)镀锡\",\"specification\":\"冲击镍1UM以上,CU底1UM以上,SN层4UM以上\",\"supplieId\":100084}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-25 11:15:02', 54);
INSERT INTO `sys_oper_log` VALUES (287, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, '100388', '供应商部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 11:03:00', 320);
INSERT INTO `sys_oper_log` VALUES (288, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, '100388', '供应商部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"修改密码失败，旧密码错误\",\"code\":500}', 0, NULL, '2024-11-06 11:04:43', 113);
INSERT INTO `sys_oper_log` VALUES (289, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, '100388', '供应商部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"修改密码失败，旧密码错误\",\"code\":500}', 0, NULL, '2024-11-06 11:04:51', 94);
INSERT INTO `sys_oper_log` VALUES (290, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, '100388', '供应商部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"新密码不能与旧密码相同\",\"code\":500}', 0, NULL, '2024-11-06 11:05:04', 180);
INSERT INTO `sys_oper_log` VALUES (291, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, '100388', '供应商部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 11:05:10', 296);
INSERT INTO `sys_oper_log` VALUES (292, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, '100388', '供应商部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 11:28:13', 293);
INSERT INTO `sys_oper_log` VALUES (293, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, '100388', '供应商部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 11:29:07', 309);
INSERT INTO `sys_oper_log` VALUES (294, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/sys_deliver_order', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-11 13:18:53', 253);
INSERT INTO `sys_oper_log` VALUES (295, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150001\"', 0, NULL, '2024-11-15 10:35:46', 37);
INSERT INTO `sys_oper_log` VALUES (296, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150001\",\"expectedQty\":200,\"factory\":\"3012\",\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"钢C1018/1022\",\"orderQuantity\":1000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":10,\"poNo\":4800038384,\"projectCategory\":\"B06\",\"remainDeliver\":1000,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\\\n            remain_deliver ) \n         values ( 100388,\n            \'DG2024111\' at line 37\r\n### The error may exist in file [C:\\Users\\Administrator\\Desktop\\RuoYi-Vue-New\\deliver\\target\\classes\\mapper\\deliver\\SysDeliverOrderMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysDeliverOrderMapper.insertSysDeliverOrder-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_deliver_order          ( supplieId,             asnNo,             poNo,             factory,             line_number,             project_category,                                       sku,             skuDescr,             order_quantity,             lotatt15,                          expectedQty,                                                    overRcvPercentage,                                                                 label_number,             label_weight,             material,                                                                                           poLineNo,             specification,             review_status,                          \\             remain_deliver )           values ( ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ?,             ?,             ?,                          ?,                                                    ?,                                                                 ?,             ?,             ?,                                                                                           ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server vers', '2024-11-15 10:35:46', 98);
INSERT INTO `sys_oper_log` VALUES (297, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150001\"', 0, NULL, '2024-11-15 10:57:44', 13);
INSERT INTO `sys_oper_log` VALUES (298, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150001\",\"expectedQty\":200,\"factory\":\"3012\",\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":10000,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\\\n            remain_deliver ) \n         values ( 100388,\n            \'DG2024111\' at line 37\r\n### The error may exist in file [C:\\Users\\Administrator\\Desktop\\RuoYi-Vue-New\\deliver\\target\\classes\\mapper\\deliver\\SysDeliverOrderMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysDeliverOrderMapper.insertSysDeliverOrder-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_deliver_order          ( supplieId,             asnNo,             poNo,             factory,             line_number,             project_category,                                       sku,             skuDescr,             order_quantity,             lotatt15,                          expectedQty,                                                    overRcvPercentage,                                                                 label_number,             label_weight,             material,                                                                                           poLineNo,             specification,             review_status,                          \\             remain_deliver )           values ( ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ?,             ?,             ?,                          ?,                                                    ?,                                                                 ?,             ?,             ?,                                                                                           ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server vers', '2024-11-15 10:57:45', 15);
INSERT INTO `sys_oper_log` VALUES (299, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150001\"', 0, NULL, '2024-11-15 11:02:52', 51);
INSERT INTO `sys_oper_log` VALUES (300, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150001\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":114,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":10000,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 11:02:52', 45);
INSERT INTO `sys_oper_log` VALUES (301, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150002\"', 0, NULL, '2024-11-15 11:41:09', 4);
INSERT INTO `sys_oper_log` VALUES (302, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150002\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":115,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":9800,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 11:41:10', 45);
INSERT INTO `sys_oper_log` VALUES (303, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150003\"', 0, NULL, '2024-11-15 11:44:26', 4);
INSERT INTO `sys_oper_log` VALUES (304, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150003\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":116,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":9600,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 11:44:26', 25);
INSERT INTO `sys_oper_log` VALUES (305, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150004\"', 0, NULL, '2024-11-15 13:31:59', 4);
INSERT INTO `sys_oper_log` VALUES (306, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150004\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":117,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":9400,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 13:32:00', 22);
INSERT INTO `sys_oper_log` VALUES (307, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150005\"', 0, NULL, '2024-11-15 13:32:26', 4);
INSERT INTO `sys_oper_log` VALUES (308, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150005\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":118,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":9200,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 13:32:26', 20);
INSERT INTO `sys_oper_log` VALUES (309, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150006\"', 0, NULL, '2024-11-15 13:44:19', 4);
INSERT INTO `sys_oper_log` VALUES (310, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150006\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":119,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":9000,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 13:44:19', 24);
INSERT INTO `sys_oper_log` VALUES (311, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150007\"', 0, NULL, '2024-11-15 13:52:24', 4);
INSERT INTO `sys_oper_log` VALUES (312, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150007\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":120,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":8800,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 13:52:25', 22);
INSERT INTO `sys_oper_log` VALUES (313, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150008\"', 0, NULL, '2024-11-15 13:52:53', 4);
INSERT INTO `sys_oper_log` VALUES (314, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150008\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":121,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":8600,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 13:52:54', 20);
INSERT INTO `sys_oper_log` VALUES (315, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150009\"', 0, NULL, '2024-11-15 13:54:56', 3);
INSERT INTO `sys_oper_log` VALUES (316, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150009\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":122,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":8400,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 13:54:57', 25);
INSERT INTO `sys_oper_log` VALUES (317, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150010\"', 0, NULL, '2024-11-15 13:58:01', 3);
INSERT INTO `sys_oper_log` VALUES (318, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150010\",\"expectedQty\":200,\"factory\":\"3012\",\"id\":123,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":8200,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 13:58:01', 21);
INSERT INTO `sys_oper_log` VALUES (319, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150011\"', 0, NULL, '2024-11-15 13:59:24', 4);
INSERT INTO `sys_oper_log` VALUES (320, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150011\",\"expectedQty\":1,\"factory\":\"3012\",\"id\":124,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":8000,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 13:59:24', 21);
INSERT INTO `sys_oper_log` VALUES (321, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150012\"', 0, NULL, '2024-11-15 13:59:57', 2);
INSERT INTO `sys_oper_log` VALUES (322, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150012\",\"expectedQty\":8,\"factory\":\"3012\",\"id\":125,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7999,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 13:59:58', 23);
INSERT INTO `sys_oper_log` VALUES (323, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150013\"', 0, NULL, '2024-11-15 14:02:34', 3);
INSERT INTO `sys_oper_log` VALUES (324, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150013\",\"expectedQty\":1,\"factory\":\"3012\",\"id\":126,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7991,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:02:34', 23);
INSERT INTO `sys_oper_log` VALUES (325, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150014\"', 0, NULL, '2024-11-15 14:09:37', 3);
INSERT INTO `sys_oper_log` VALUES (326, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150014\",\"expectedQty\":90,\"factory\":\"3012\",\"id\":127,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7990,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:09:37', 19);
INSERT INTO `sys_oper_log` VALUES (327, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150015\"', 0, NULL, '2024-11-15 14:12:55', 3);
INSERT INTO `sys_oper_log` VALUES (328, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150015\",\"expectedQty\":100,\"factory\":\"3012\",\"id\":128,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7900,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:12:55', 26);
INSERT INTO `sys_oper_log` VALUES (329, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150016\"', 0, NULL, '2024-11-15 14:15:16', 3);
INSERT INTO `sys_oper_log` VALUES (330, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150016\",\"expectedQty\":6,\"factory\":\"3012\",\"id\":129,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7800,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:15:16', 26);
INSERT INTO `sys_oper_log` VALUES (331, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150017\"', 0, NULL, '2024-11-15 14:16:20', 2);
INSERT INTO `sys_oper_log` VALUES (332, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150017\",\"expectedQty\":4,\"factory\":\"3012\",\"id\":130,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7794,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:16:21', 24);
INSERT INTO `sys_oper_log` VALUES (333, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150018\"', 0, NULL, '2024-11-15 14:17:25', 3);
INSERT INTO `sys_oper_log` VALUES (334, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150018\",\"expectedQty\":6,\"factory\":\"3012\",\"id\":131,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7790,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:17:25', 20);
INSERT INTO `sys_oper_log` VALUES (335, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150019\"', 0, NULL, '2024-11-15 14:17:53', 3);
INSERT INTO `sys_oper_log` VALUES (336, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150019\",\"expectedQty\":4,\"factory\":\"3012\",\"id\":132,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7784,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:17:53', 26);
INSERT INTO `sys_oper_log` VALUES (337, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150020\"', 0, NULL, '2024-11-15 14:18:47', 3);
INSERT INTO `sys_oper_log` VALUES (338, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150020\",\"expectedQty\":2,\"factory\":\"3012\",\"id\":133,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7780,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:18:47', 23);
INSERT INTO `sys_oper_log` VALUES (339, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150021\"', 0, NULL, '2024-11-15 14:20:02', 3);
INSERT INTO `sys_oper_log` VALUES (340, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150021\",\"expectedQty\":8,\"factory\":\"3012\",\"id\":134,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7778,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:20:03', 20);
INSERT INTO `sys_oper_log` VALUES (341, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150022\"', 0, NULL, '2024-11-15 14:22:37', 2);
INSERT INTO `sys_oper_log` VALUES (342, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150022\",\"expectedQty\":5,\"factory\":\"3012\",\"id\":135,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7770,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:22:38', 19);
INSERT INTO `sys_oper_log` VALUES (343, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150023\"', 0, NULL, '2024-11-15 14:24:26', 3);
INSERT INTO `sys_oper_log` VALUES (344, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150023\",\"expectedQty\":5,\"factory\":\"3012\",\"id\":136,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7765,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:24:26', 21);
INSERT INTO `sys_oper_log` VALUES (345, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150024\"', 0, NULL, '2024-11-15 14:26:41', 2);
INSERT INTO `sys_oper_log` VALUES (346, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150024\",\"expectedQty\":5,\"factory\":\"3012\",\"id\":137,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7760,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:26:41', 20);
INSERT INTO `sys_oper_log` VALUES (347, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150025\"', 0, NULL, '2024-11-15 14:27:54', 3);
INSERT INTO `sys_oper_log` VALUES (348, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150025\",\"expectedQty\":5,\"factory\":\"3012\",\"id\":138,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7755,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:27:54', 18);
INSERT INTO `sys_oper_log` VALUES (349, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150026\"', 0, NULL, '2024-11-15 14:32:13', 3);
INSERT INTO `sys_oper_log` VALUES (350, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150026\",\"expectedQty\":5,\"factory\":\"3012\",\"id\":139,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7750,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:32:13', 23);
INSERT INTO `sys_oper_log` VALUES (351, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150027\"', 0, NULL, '2024-11-15 14:33:19', 2);
INSERT INTO `sys_oper_log` VALUES (352, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150027\",\"expectedQty\":10000,\"factory\":\"3012\",\"id\":140,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7745,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:33:19', 24);
INSERT INTO `sys_oper_log` VALUES (353, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150028\"', 0, NULL, '2024-11-15 14:35:52', 3);
INSERT INTO `sys_oper_log` VALUES (354, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150028\",\"expectedQty\":5,\"factory\":\"3012\",\"id\":141,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7735,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:35:52', 18);
INSERT INTO `sys_oper_log` VALUES (355, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":111,\"nickName\":\"100315\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userName\":\"100315\"}', '{\"msg\":\"新增用户\'100315\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2024-11-15 14:38:08', 4);
INSERT INTO `sys_oper_log` VALUES (356, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":111,\"nickName\":\"100315\",\"params\":{},\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userName\":\"100315\"}', '{\"msg\":\"新增用户\'100315\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2024-11-15 14:38:40', 2);
INSERT INTO `sys_oper_log` VALUES (357, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150029\"', 0, NULL, '2024-11-15 14:39:29', 3);
INSERT INTO `sys_oper_log` VALUES (358, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150029\",\"expectedQty\":5,\"factory\":\"3012\",\"id\":142,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7730,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:39:30', 20);
INSERT INTO `sys_oper_log` VALUES (359, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, 'admin', '研发部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150030\"', 0, NULL, '2024-11-15 14:43:39', 2);
INSERT INTO `sys_oper_log` VALUES (360, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, 'admin', '研发部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150030\",\"expectedQty\":5,\"factory\":\"3012\",\"id\":143,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3013\",\"material\":\"钢C1018/1022\",\"orderQuantity\":10000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":20,\"poNo\":4800038376,\"projectCategory\":\"B06\",\"remainDeliver\":7725,\"reviewStatus\":\"未审核\",\"sku\":\"92100000176\",\"skuDescr\":\"DG335W-M3(L=5.25mm)＂+/-＂字螺丝镀锌镍合金\",\"specification\":\"镀＂锌镍合金＂:ZN-NI层5UM以上,NI含量12-15%,NSS.200H\",\"supplieId\":100388}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 14:43:39', 19);
INSERT INTO `sys_oper_log` VALUES (361, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100084', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150031\"', 0, NULL, '2024-11-15 15:17:02', 10);
INSERT INTO `sys_oper_log` VALUES (362, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100084', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150031\",\"expectedQty\":50,\"factory\":\"3012\",\"id\":144,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H70\",\"orderQuantity\":1000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":10,\"poNo\":5500079342,\"projectCategory\":\"B07\",\"remainDeliver\":1000,\"reviewStatus\":\"未审核\",\"sku\":\"10042000025\",\"skuDescr\":\"DG124-83A焊脚镀锡\",\"specification\":\"(特殊品)CU底2UM以上,NI底0.3UM以上,SN层4UM以上\",\"supplieId\":100084}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 15:17:02', 33);
INSERT INTO `sys_oper_log` VALUES (363, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100084', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411150032\"', 0, NULL, '2024-11-15 15:47:10', 4);
INSERT INTO `sys_oper_log` VALUES (364, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100084', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411150032\",\"expectedQty\":50,\"factory\":\"3012\",\"id\":145,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H70\",\"orderQuantity\":1000,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":10,\"poNo\":5500079343,\"projectCategory\":\"B07\",\"remainDeliver\":1000,\"reviewStatus\":\"未审核\",\"sku\":\"10042000025\",\"skuDescr\":\"DG124-83A焊脚镀锡\",\"specification\":\"(特殊品)CU底2UM以上,NI底0.3UM以上,SN层4UM以上\",\"supplieId\":100084}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 15:47:10', 20);
INSERT INTO `sys_oper_log` VALUES (365, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100084', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411190001\"', 0, NULL, '2024-11-19 15:59:58', 32);
INSERT INTO `sys_oper_log` VALUES (366, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100084', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411190001\",\"expectedQty\":170,\"factory\":\"3012\",\"id\":146,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"紫铜C1100\",\"orderQuantity\":21780,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":10,\"poNo\":5500076935,\"projectCategory\":\"B05\",\"remainDeliver\":21780,\"reviewStatus\":\"未审核\",\"sku\":\"12042000063\",\"skuDescr\":\"DG88焊脚镀雾锡\",\"specification\":\"镀雾锡:CU底2UM以上,NI底2UM以上,SN层4UM以上\",\"supplieId\":100084}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-19 15:59:58', 38);
INSERT INTO `sys_oper_log` VALUES (367, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101,110\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"B05\",\"orderNum\":1,\"params\":{},\"parentId\":110,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-19 16:16:06', 61);
INSERT INTO `sys_oper_log` VALUES (368, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101,110\",\"children\":[],\"deptId\":113,\"deptName\":\"A2\",\"email\":\"lyr@qq.com\",\"leader\":\"lyr\",\"orderNum\":0,\"params\":{},\"parentId\":110,\"parentName\":\"采购部门\",\"phone\":\"15865426655\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-19 16:16:13', 60);
INSERT INTO `sys_oper_log` VALUES (369, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085,1086],\"params\":{},\"roleId\":9,\"roleKey\":\"B05\",\"roleName\":\"B05\",\"roleSort\":9,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-19 16:18:26', 77);
INSERT INTO `sys_oper_log` VALUES (370, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-11-19 16:18:26\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1069,1070,1071,1072,1073,1074,1082,1085],\"params\":{},\"roleId\":9,\"roleKey\":\"B05\",\"roleName\":\"B05\",\"roleSort\":9,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-19 16:18:38', 82);
INSERT INTO `sys_oper_log` VALUES (371, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":116,\"nickName\":\"B05001\",\"params\":{},\"postIds\":[],\"roleIds\":[9],\"status\":\"0\",\"userId\":358,\"userName\":\"B05001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-19 16:19:03', 134);
INSERT INTO `sys_oper_log` VALUES (372, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100084', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411200001\"', 0, NULL, '2024-11-20 08:30:16', 33);
INSERT INTO `sys_oper_log` VALUES (373, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100084', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411200001\",\"expectedQty\":55,\"factory\":\"3012\",\"id\":147,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"钢SPCC+进口不锈钢\",\"orderQuantity\":89080,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":10,\"poNo\":5500076396,\"projectCategory\":\"B05\",\"remainDeliver\":88055,\"reviewStatus\":\"未审核\",\"sku\":\"10062000274\",\"skuDescr\":\"DG228-3.5-02P钢接线体(X000003660)镀锡\",\"specification\":\"冲击镍1UM以上,CU底1UM以上,SN层4UM以上\",\"supplieId\":100084}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-20 08:30:16', 51);
INSERT INTO `sys_oper_log` VALUES (374, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100084', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411200002\"', 0, NULL, '2024-11-20 13:46:00', 4);
INSERT INTO `sys_oper_log` VALUES (375, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100084', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411200002\",\"expectedQty\":70,\"factory\":\"3012\",\"id\":148,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"material\":\"黄铜H62\",\"orderQuantity\":16470,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":10,\"poNo\":5500076374,\"projectCategory\":\"B05\",\"remainDeliver\":16470,\"reviewStatus\":\"未审核\",\"sku\":\"12022000059\",\"skuDescr\":\"DG45R-B-200A焊脚镀锡\",\"specification\":\"(特殊品)CU底2-4UM,NI底0.3-0.7UM,SN层4-8UM\",\"supplieId\":100084}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-20 13:46:00', 21);
INSERT INTO `sys_oper_log` VALUES (376, '送货单号', 0, 'com.ruoyi.web.controller.system.SysDeliverOrderController.generate()', 'GET', 1, '100084', '供应商部门', '/deliver/order/generate', '127.0.0.1', '内网IP', '{}', '\"DG202411210001\"', 0, NULL, '2024-11-21 08:42:45', 32);
INSERT INTO `sys_oper_log` VALUES (377, '送货单', 1, 'com.ruoyi.web.controller.system.SysDeliverOrderController.add()', 'POST', 1, '100084', '供应商部门', '/deliver/order/add', '127.0.0.1', '内网IP', '{\"asnNo\":\"DG202411210001\",\"expectedQty\":70,\"factory\":\"3012\",\"id\":149,\"labelNumber\":0,\"labelWeight\":0,\"lineNumber\":10,\"lotatt15\":\"3012\",\"manager\":\"\",\"material\":\"黄铜H62\",\"orderQuantity\":16470,\"overRcvPercentage\":\"0\",\"params\":{},\"poLineNo\":10,\"poNo\":5500076374,\"projectCategory\":\"B05\",\"remainDeliver\":16400,\"reviewStatus\":\"未审核\",\"sku\":\"12022000059\",\"skuDescr\":\"DG45R-B-200A焊脚镀锡\",\"specification\":\"(特殊品)CU底2-4UM,NI底0.3-0.7UM,SN层4-8UM\",\"stockLocat\":\"5001\",\"supplieId\":100084}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 08:42:45', 49);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-09-12 09:21:45', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-09-12 09:21:45', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-09-12 09:21:45', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-09-12 09:21:45', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-09-12 09:21:45', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-09-12 09:21:45', 'admin', '2024-09-14 14:19:29', '普通角色');
INSERT INTO `sys_role` VALUES (3, '供应商', 'user', 3, '2', 1, 1, '0', '0', 'admin', '2024-09-14 14:15:31', 'admin', '2024-10-22 14:25:26', NULL);
INSERT INTO `sys_role` VALUES (4, 'A1', 'A1', 4, '3', 1, 1, '0', '0', 'admin', '2024-09-26 11:39:51', 'admin', '2024-10-11 10:25:58', NULL);
INSERT INTO `sys_role` VALUES (5, 'A2', 'A2', 5, '4', 1, 1, '0', '0', 'admin', '2024-09-26 11:50:30', 'admin', '2024-10-11 15:48:22', NULL);
INSERT INTO `sys_role` VALUES (6, 'A3', 'A3', 6, '1', 1, 1, '0', '0', 'admin', '2024-09-26 11:50:47', 'admin', '2024-10-11 15:48:30', NULL);
INSERT INTO `sys_role` VALUES (7, 'B06', 'B06', 7, '1', 1, 1, '0', '0', 'admin', '2024-10-17 10:04:36', 'admin', '2024-10-17 10:04:58', NULL);
INSERT INTO `sys_role` VALUES (8, 'B07', 'B07', 8, '1', 1, 1, '0', '0', 'admin', '2024-10-18 11:21:43', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (9, 'B05', 'B05', 9, '1', 1, 1, '0', '0', 'admin', '2024-11-19 16:18:26', 'admin', '2024-11-19 16:18:38', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);
INSERT INTO `sys_role_dept` VALUES (3, 100);
INSERT INTO `sys_role_dept` VALUES (3, 101);
INSERT INTO `sys_role_dept` VALUES (3, 110);
INSERT INTO `sys_role_dept` VALUES (3, 111);
INSERT INTO `sys_role_dept` VALUES (3, 112);
INSERT INTO `sys_role_dept` VALUES (3, 113);
INSERT INTO `sys_role_dept` VALUES (3, 114);
INSERT INTO `sys_role_dept` VALUES (3, 115);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (3, 1069);
INSERT INTO `sys_role_menu` VALUES (3, 1070);
INSERT INTO `sys_role_menu` VALUES (3, 1071);
INSERT INTO `sys_role_menu` VALUES (3, 1072);
INSERT INTO `sys_role_menu` VALUES (3, 1073);
INSERT INTO `sys_role_menu` VALUES (3, 1074);
INSERT INTO `sys_role_menu` VALUES (3, 1082);
INSERT INTO `sys_role_menu` VALUES (3, 1083);
INSERT INTO `sys_role_menu` VALUES (3, 1084);
INSERT INTO `sys_role_menu` VALUES (3, 1086);
INSERT INTO `sys_role_menu` VALUES (4, 1069);
INSERT INTO `sys_role_menu` VALUES (4, 1070);
INSERT INTO `sys_role_menu` VALUES (4, 1071);
INSERT INTO `sys_role_menu` VALUES (4, 1072);
INSERT INTO `sys_role_menu` VALUES (4, 1073);
INSERT INTO `sys_role_menu` VALUES (4, 1074);
INSERT INTO `sys_role_menu` VALUES (4, 1082);
INSERT INTO `sys_role_menu` VALUES (4, 1085);
INSERT INTO `sys_role_menu` VALUES (5, 1069);
INSERT INTO `sys_role_menu` VALUES (5, 1070);
INSERT INTO `sys_role_menu` VALUES (5, 1071);
INSERT INTO `sys_role_menu` VALUES (5, 1072);
INSERT INTO `sys_role_menu` VALUES (5, 1073);
INSERT INTO `sys_role_menu` VALUES (5, 1074);
INSERT INTO `sys_role_menu` VALUES (5, 1082);
INSERT INTO `sys_role_menu` VALUES (5, 1085);
INSERT INTO `sys_role_menu` VALUES (6, 1069);
INSERT INTO `sys_role_menu` VALUES (6, 1070);
INSERT INTO `sys_role_menu` VALUES (6, 1071);
INSERT INTO `sys_role_menu` VALUES (6, 1072);
INSERT INTO `sys_role_menu` VALUES (6, 1073);
INSERT INTO `sys_role_menu` VALUES (6, 1074);
INSERT INTO `sys_role_menu` VALUES (6, 1082);
INSERT INTO `sys_role_menu` VALUES (6, 1085);
INSERT INTO `sys_role_menu` VALUES (7, 1069);
INSERT INTO `sys_role_menu` VALUES (7, 1070);
INSERT INTO `sys_role_menu` VALUES (7, 1071);
INSERT INTO `sys_role_menu` VALUES (7, 1072);
INSERT INTO `sys_role_menu` VALUES (7, 1073);
INSERT INTO `sys_role_menu` VALUES (7, 1074);
INSERT INTO `sys_role_menu` VALUES (7, 1082);
INSERT INTO `sys_role_menu` VALUES (7, 1085);
INSERT INTO `sys_role_menu` VALUES (8, 1069);
INSERT INTO `sys_role_menu` VALUES (8, 1070);
INSERT INTO `sys_role_menu` VALUES (8, 1071);
INSERT INTO `sys_role_menu` VALUES (8, 1072);
INSERT INTO `sys_role_menu` VALUES (8, 1073);
INSERT INTO `sys_role_menu` VALUES (8, 1074);
INSERT INTO `sys_role_menu` VALUES (8, 1082);
INSERT INTO `sys_role_menu` VALUES (8, 1085);
INSERT INTO `sys_role_menu` VALUES (9, 1069);
INSERT INTO `sys_role_menu` VALUES (9, 1070);
INSERT INTO `sys_role_menu` VALUES (9, 1071);
INSERT INTO `sys_role_menu` VALUES (9, 1072);
INSERT INTO `sys_role_menu` VALUES (9, 1073);
INSERT INTO `sys_role_menu` VALUES (9, 1074);
INSERT INTO `sys_role_menu` VALUES (9, 1082);
INSERT INTO `sys_role_menu` VALUES (9, 1085);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 359 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '清清', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-11-28 08:32:09', 'admin', '2024-09-12 09:21:45', '', '2024-11-28 08:32:08', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'qqq', '清清', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-09-12 09:21:45', 'admin', '2024-09-12 09:21:45', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (3, 111, '100388', '100388', '00', '', '18788887777', '2', '', '$2a$10$0FPlY/hruHsK1XxacXRRD.C.AGi4txtBeU4oaUsXv41n/QSivJ3um', '0', '0', '127.0.0.1', '2024-11-06 11:29:38', 'admin', '2024-09-13 14:53:28', 'admin', '2024-11-06 11:29:37', NULL);
INSERT INTO `sys_user` VALUES (4, 112, 'purchase1', '采购人员1', '00', '', '18788888888', '1', '', '$2a$10$VTYnbQgr81hTmc/zDK/w7.eYi64A5vz3Rpa1nVA0hk37MSFgkvcW2', '0', '0', '127.0.0.1', '2024-10-18 09:33:36', 'admin', '2024-09-26 11:51:46', 'admin', '2024-10-18 09:33:35', NULL);
INSERT INTO `sys_user` VALUES (5, 115, 'purchase2', '采购人员2', '00', '', '18488888888', '1', '', '$2a$10$9oYt04QnmnFDZs5lb5VQp.bYwetFlxkYY6VFnRNVaUyYMJm2Qq.9y', '0', '0', '127.0.0.1', '2024-10-24 13:31:22', 'admin', '2024-09-26 13:52:44', 'admin', '2024-10-24 13:31:22', NULL);
INSERT INTO `sys_user` VALUES (6, 114, 'purchase3', 'purchase3', '00', '', '', '1', '', '$2a$10$Pz8cOMSSXQcFzNyLItG2zetc/2H5ieoloNGUUhZjI/sh14oLkTu2.', '0', '0', '192.168.10.42', '2024-10-25 08:53:50', 'admin', '2024-10-17 10:05:35', 'admin', '2024-10-25 08:53:50', NULL);
INSERT INTO `sys_user` VALUES (8, 111, '100043', '100043', '00', '', '', '0', '', '$2a$10$f3c4pBOrU1YTQp3IvQYACeoLDNva9Rny5lgibLXy5CuxzpymB.zri', '0', '0', '127.0.0.1', '2024-10-18 10:01:53', 'admin', '2024-10-18 10:01:08', '', '2024-10-18 10:01:52', NULL);
INSERT INTO `sys_user` VALUES (9, 111, '100372', '100372', '00', '', '', '0', '', '$2a$10$7LOjn06F2VE34dBioRDkJeh6Ojryau4qeP96XfGICtPp8zvT/Ieua', '0', '0', '127.0.0.1', '2024-10-23 14:46:01', 'admin', '2024-10-18 10:30:10', '', '2024-10-23 14:46:00', NULL);
INSERT INTO `sys_user` VALUES (10, 111, '100083', '100083', '00', '', '', '0', '', '$2a$10$QTNi8mGwJqA9/OHwWBsucOHZ.fy37QmbzC6WA3lTxjaxOXDWg99uK', '0', '0', '127.0.0.1', '2024-10-25 11:03:24', 'admin', '2024-10-18 11:01:00', '', '2024-10-25 11:03:24', NULL);
INSERT INTO `sys_user` VALUES (11, 111, '100004', '100004', '00', '', '', '0', '', '$2a$10$NaKo1yXbgpWS.I6GZroI1OYtbvwKTNMNtIPMwFjtjphckqzYkAmky', '0', '0', '', NULL, 'admin', '2024-10-18 11:33:32', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (12, 111, '100029', '100029', '00', '', '', '0', '', '$2a$10$2Dx15kDIF3W5A9RKYyEmxuPZ5malFusAx1DDcHUKhDsx28fQzlWfS', '0', '0', '', NULL, 'admin', '2024-10-18 11:33:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (13, 111, '100033', '100033', '00', '', '', '0', '', '$2a$10$OOU.7u33uKsxOeBKd0NVKOr4lXq63Z2m9Rw/rw341faMTY6nucNoK', '0', '0', '', NULL, 'admin', '2024-10-18 11:34:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (14, 111, '100034', '100034', '00', '', '', '0', '', '$2a$10$d8hpZE9Kw7kTE9S2HGdoEecO/fWvOxLBXLmaBiaXCiW5hEKuPwE.S', '0', '0', '', NULL, 'admin', '2024-10-18 11:34:39', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (15, 111, '100036', '100036', '00', '', '', '0', '', '$2a$10$8julFmUIZ5OOWWRQh5NcCeNp87cAlXoawIZBzpzU/ZpcGHhwv/hoy', '0', '0', '', NULL, 'admin', '2024-10-18 11:34:56', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (16, 111, '100044', '100044', '00', '', '', '0', '', '$2a$10$YvMc8tBBTVrzzFmsrKwv/eZyRMcy5FTr2e1f./KbGHOqX2FGP8OXW', '0', '0', '', NULL, 'admin', '2024-10-18 11:35:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (17, 111, '100050', '100050', '00', '', '', '0', '', '$2a$10$4IjSt6jux8ZA3PnBRO/y3uBu5MpJJP0TBwa0wnGc7.MviSDNQxJhi', '0', '0', '', NULL, 'admin', '2024-10-18 11:35:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (18, 111, '100051', '100051', '00', '', '', '0', '', '$2a$10$ukfD8I2HOhJo.ejLEQT9KuxO8/Ro9jcJHDHTDz2b0FInLYVh6UIna', '0', '0', '', NULL, 'admin', '2024-10-18 11:36:12', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (19, 111, '100054', '100054', '00', '', '', '0', '', '$2a$10$xRRZItyBydfYW8GONk3zlupk61W84/wXTHbuUc2Zprcr7xvMH8WQG', '0', '0', '', NULL, 'admin', '2024-10-18 11:36:35', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (20, 111, '100057', '100057', '00', '', '', '0', '', '$2a$10$SED3tsnFOxEYgR8WFKt5mOj/k6dT1w2Ur8dsbcGN7YBzwMs5W7pMu', '0', '0', '', NULL, 'admin', '2024-10-18 11:36:52', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (21, 111, '100069', '100069', '00', '', '', '0', '', '$2a$10$ptI.8VfFhsOKKCJapz1CEukaeP5nPPsvTzL7XqgwkACuZD./QKA4K', '0', '0', '', NULL, 'admin', '2024-10-18 11:37:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (22, 111, '100081', '100081', '00', '', '', '0', '', '$2a$10$ZerufmdVih.z8S2q/t18guVAV4qcndtQAsYWCBgWW5GuxzkXQVNsW', '0', '0', '', NULL, 'admin', '2024-10-18 11:37:27', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (23, 111, '100084', '100084', '00', '', '', '0', '', '$2a$10$TTB5X5njswAJIZivT22C1udmnYpR2bgmDYDCRHZp8cF5QshueI01e', '0', '0', '127.0.0.1', '2024-11-21 09:17:58', 'admin', '2024-10-18 11:37:45', '', '2024-11-21 09:17:58', NULL);
INSERT INTO `sys_user` VALUES (24, 111, '100085', '100085', '00', '', '', '0', '', '$2a$10$PgWBHLoDPOwpyUgOxGPl6eC5DnbiCbvCY6kEkK6zWOkrRlpbB84X.', '0', '0', '', NULL, 'admin', '2024-10-18 11:38:00', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (25, 111, '100086', '100086', '00', '', '', '0', '', '$2a$10$lRJMKepGGTQWkml6Ef3M0ez9TufDiTAHFjw1MxIyNeo7OriFBt8Z.', '0', '0', '', NULL, 'admin', '2024-10-18 11:38:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (26, 111, '100088', '100088', '00', '', '', '0', '', '$2a$10$VsMNOtfUQF2blL0SEaT6Mu6QIagYej7RKiCuKtO2Bx6oAy0dTsHW.', '0', '0', '', NULL, 'admin', '2024-10-18 11:38:29', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (27, 111, '100090', '100090', '00', '', '', '0', '', '$2a$10$Gs95D6qEV4aq/T/A77YjYOUS0RrBZyYp6xQuDEPnA66jQXNxF.vXu', '0', '0', '', NULL, 'admin', '2024-10-18 11:38:44', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (28, 111, '100093', '100093', '00', '', '', '0', '', '$2a$10$CVD/M7ZKsy2pdg8PjHhP4ehAM8lUP1ZPNUddyiIbeeKNhcKWUXrGK', '0', '0', '', NULL, 'admin', '2024-10-18 11:38:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (29, 111, '100098', '100098', '00', '', '', '0', '', '$2a$10$tmAW7SZ8RPXIo4qloxEX1ONywo0K8BToef6Xxs6u/b2o8NXGfnOpi', '0', '0', '', NULL, 'admin', '2024-10-18 11:39:22', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (30, 111, '100099', '100099', '00', '', '', '0', '', '$2a$10$B70NueT/oS7GBAgH8IYhPu0s0OV1Y6nfQjrrh5J1MQiTYm.CpG.Jy', '0', '0', '', NULL, 'admin', '2024-10-18 11:39:37', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (31, 111, '100101', '100101', '00', '', '', '0', '', '$2a$10$ygaK4qWZOeTiXEu5A/bTiOe5PeSmF04Tqr5YMnOJ8IrXLVqRrmL2e', '0', '0', '', NULL, 'admin', '2024-10-18 11:39:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (32, 111, '100116', '100116', '00', '', '', '0', '', '$2a$10$pLWMJG84JUmnaP48FoqUuuaAsvnSF333V9CoLoJrpb4pv0tnjRz/m', '0', '0', '', NULL, 'admin', '2024-10-18 11:40:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (33, 111, '100123', '100123', '00', '', '', '0', '', '$2a$10$aO9DWVpIckrAcWuGXZ/3A.536Dqt50y1ebueH8r/K6kNUNP7l/AgK', '0', '0', '', NULL, 'admin', '2024-10-18 11:40:39', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (34, 111, '100130', '100130', '00', '', '', '0', '', '$2a$10$qinZ8.f20Z1JNyxVL7.OAua/B8IRcEBCrF5GEn1W8F5xI6kNv.q3K', '0', '0', '', NULL, 'admin', '2024-10-18 11:40:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (35, 111, '100145', '100145', '00', '', '', '0', '', '$2a$10$yBS8BEyaPVFbobVhtuU2seLjVioQKkjGGtaQdalyYYDnxpjw4XLFS', '0', '0', '', NULL, 'admin', '2024-10-18 11:41:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (36, 111, '100152', '100152', '00', '', '', '0', '', '$2a$10$IoVS3JsvuXxHIvUvIcyageMnJiPQXNWWhWnzpS//PgLT11SKwVMUi', '0', '0', '', NULL, 'admin', '2024-10-18 11:41:24', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (37, 111, '100182', '100182', '00', '', '', '0', '', '$2a$10$yIUT1vZEoLx71t5jUDkydeYytgZzefgB035oR5ZY1R34UD6xiH4nC', '0', '0', '', NULL, 'admin', '2024-10-18 11:41:38', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (38, 111, '100196', '100196', '00', '', '', '0', '', '$2a$10$FF8v66qFMxlYIQujIqH.KeoefVNH0rjRJaWjdqFpi54jEd.itWxwO', '0', '0', '', NULL, 'admin', '2024-10-18 11:42:04', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (39, 111, '100197', '100197', '00', '', '', '0', '', '$2a$10$H6yypAc86mgCLcCRtn0qGOjl6rq3tGTB66S3EV2XgM3cc/WV2SpPe', '0', '0', '', NULL, 'admin', '2024-10-18 11:42:16', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (40, 111, '100202', '100202', '00', '', '', '0', '', '$2a$10$6pTyv4.vKWvmc8Av4RZIa.srClNqp0YuGhctBhwmVGVYGr8fEGPqq', '0', '0', '', NULL, 'admin', '2024-10-18 11:42:36', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (41, 111, '100203', '100203', '00', '', '', '0', '', '$2a$10$qinZ8.f20Z1JNyxVL7.OAua/B8IRcEBCrF5GEn1W8F5xI6kNv.q3K', '0', '0', '127.0.0.1', '2024-10-22 14:00:58', '', NULL, '', '2024-10-22 14:00:57', NULL);
INSERT INTO `sys_user` VALUES (42, 111, '100204', '100204', '00', '', '', '0', '', '$2a$10$O/3YZ0IE7Oj055nfDc7UbOgPDD4GyV0kmfqlCx3ynH4rFDodu2yEm', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:49', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (43, 111, '100206', '100206', '00', '', '', '0', '', '$2a$10$fQTrutyz801YotxpzRwvMeyTd4sIxsw1h/3t1h3.UajFrpyPAslJm', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:49', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (44, 111, '100208', '100208', '00', '', '', '0', '', '$2a$10$99pwSzjadUQEpG1PV7NVKulS0H9wzgfecWo.LW667yMQIwGt4D24a', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:49', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (45, 111, '100210', '100210', '00', '', '', '0', '', '$2a$10$0PDNklfC4VXtxwy4IWDJMuTg7I8995j2Wuz4npuERb1R.3sCe.Kiy', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:49', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (46, 111, '100211', '100211', '00', '', '', '0', '', '$2a$10$swWZ0lPinPdyr1cbWf6Hw.mxpzQjA7z2MKL/4Q.BeE9NxxXqrxwjG', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:49', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (47, 111, '100213', '100213', '00', '', '', '0', '', '$2a$10$GSa43IRBHGtbaJrEOoLWt.fF52qqtu/0HOK7CYy9VUpSHz2ytLRDi', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:49', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (48, 111, '100216', '100216', '00', '', '', '0', '', '$2a$10$HfKZKH4IioMsQua8HCoI5.cQfOgiFo55ny9ZDPbOtuThriM.zG.ZS', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:50', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (49, 111, '100217', '100217', '00', '', '', '0', '', '$2a$10$D/3JOORbtYURfn/9ar35HuMmWZHiOvRUTSsMvLPztQi5yy1qItuK6', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:50', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (50, 111, '100220', '100220', '00', '', '', '0', '', '$2a$10$Z7sKubqvgDnNg4ouyW6EAexr.35e7LPPmpI9BZRJaa0npUTqaFMha', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:50', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (51, 111, '100221', '100221', '00', '', '', '0', '', '$2a$10$jTNFFvuOAuHkxpi3SgbrKOKS1UEIBFSF/IuLJDechkgOazOgufc0e', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:50', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (52, 111, '100222', '100222', '00', '', '', '0', '', '$2a$10$7gfGtUz2UfhwJzUxejsthudkWjCL9H8IcR1gbH7Re2zGWFvRx0She', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:50', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (53, 111, '100223', '100223', '00', '', '', '0', '', '$2a$10$kScnVhPWnmKzC87RvXzlBOfEHHpqRVRLMDk0gwSLj5nQdbjgXClOi', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:50', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (54, 111, '100226', '100226', '00', '', '', '0', '', '$2a$10$yb9ERRWIjTGXVIG8Er0ztuZdqrvf6ZqrvA67frQuOma9bppxffUSO', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:50', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (55, 111, '100227', '100227', '00', '', '', '0', '', '$2a$10$VIn6uhmtmqv9qSat2eXySu2qh0.OwbKqrHRb/ckEea4fmTDI2VrxW', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:50', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (56, 111, '100229', '100229', '00', '', '', '0', '', '$2a$10$Uqy5zudxZqeSl5z6oRFf6OwINxrorrllJUf3of7aS/mE1i2YOuRTq', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:50', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (57, 111, '100230', '100230', '00', '', '', '0', '', '$2a$10$Cc8.sCWm6macqeU5531ef.uUWXBr27EQvjPtIgOpEMGVg5xckqrae', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (58, 111, '100234', '100234', '00', '', '', '0', '', '$2a$10$vTAljFIlvfGr2xyHCLw7bOsJUuXnjE5O0Z.f9gqPgD2EATmgF4sPq', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (59, 111, '100235', '100235', '00', '', '', '0', '', '$2a$10$nLrVdgkgnSMS5.t.e5lYeOtbpkNYjhH7gjwVYd/w8UWUOGUodEL.G', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (60, 111, '100236', '100236', '00', '', '', '0', '', '$2a$10$OKgm9dYKeI6qRwAJ9wH8gudEfCUx0b7x0aao6cSRZJ3HaPOXV4n8a', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (61, 111, '100237', '100237', '00', '', '', '0', '', '$2a$10$H5c6WRSimAcgC7EhXyEAAuB4xqTeAJjppuJ.hgzipk2Kfs43mLmiK', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (62, 111, '100238', '100238', '00', '', '', '0', '', '$2a$10$SNTfXrRLcwIjJJ40Y.lL9eMVz2.3xicsEXrLDr9FUGEoKF41bZ0Vy', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (63, 111, '100239', '100239', '00', '', '', '0', '', '$2a$10$gC.Ogi27ouS6PYiHau4V6e9n6jFFjxwa9nk32yLI374JQVjouhDXW', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (64, 111, '100240', '100240', '00', '', '', '0', '', '$2a$10$dsY1E33Z481o3YAqZZna4.nqlBvokpRiWWwMSOyedMapCc5aflxjq', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (65, 111, '100244', '100244', '00', '', '', '0', '', '$2a$10$Dy0Fq0mytYB/z6Tc8Ozehe4F1Y7QZ28lHvjEcPk6HktO3gxk0rch6', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (66, 111, '100245', '100245', '00', '', '', '0', '', '$2a$10$/YSYrv43xlL3CitcFMJoOe62lV6VgLxyccgFW0csgUuH0MnfYdY5m', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:52', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (67, 111, '100246', '100246', '00', '', '', '0', '', '$2a$10$ipBcZdlMrz6HslEGVI5/.uOxej5jW3IDxidalisW7vfkE7dHE6BGi', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:52', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (68, 111, '100247', '100247', '00', '', '', '0', '', '$2a$10$udAjjzkMgHr931LHffcfEu5O8Fo3m.wQnAXnT2yeP0sKEyQw7LBVi', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:52', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (69, 111, '100249', '100249', '00', '', '', '0', '', '$2a$10$HOb1N2tu2mOsAzkltDVLbuZ.GM8ev5Dkiy4dBEssb0cCyOfF9cK/u', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:52', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (70, 111, '100252', '100252', '00', '', '', '0', '', '$2a$10$Ue0jO7Ni9TRnNg2oFKPx.emanHul7M4hhESbDw30aJ5nNcfL4TLdO', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:52', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (71, 111, '100254', '100254', '00', '', '', '0', '', '$2a$10$0Wj7nw.vauEm1GAvagexEeTvUfzGFZHSQyV4eCBwfj/JWUiyvWtbC', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:52', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (72, 111, '100257', '100257', '00', '', '', '0', '', '$2a$10$Wm/TqmcJpCO8FfC/S5znHef9fRABIcFA0O.yvAjPQtS4ctuGH9vES', '0', '0', '127.0.0.1', '2024-11-15 15:10:04', 'admin', '2024-10-22 14:22:52', '', '2024-11-15 15:10:04', NULL);
INSERT INTO `sys_user` VALUES (73, 111, '100258', '100258', '00', '', '', '0', '', '$2a$10$ZVM0edSgkkFpt1KPl/W.Z.rfVcbJn14vN823KTpZy2iaRze2YIo8W', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:52', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (74, 111, '100260', '100260', '00', '', '', '0', '', '$2a$10$MCNmfNnXgK0N.bOFAutUUe99XPRAAmgFCEY1J115iWkMt9zM5iZe.', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:52', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (75, 111, '100262', '100262', '00', '', '', '0', '', '$2a$10$intEhTOBbPEm88ahetoCCeLp8/BowofW/HyifJR/65DPvozSZxPC6', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (76, 111, '100263', '100263', '00', '', '', '0', '', '$2a$10$tpWPh1hnwj.X5arYJFMLCeDoGiAVLscCYBiFtEVMcxLClI9XTSwva', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (77, 111, '100265', '100265', '00', '', '', '0', '', '$2a$10$6zE6MknnpcEdqmB3lPbZseqp/oZgYQOqBBc0KI21Wxm733wlEThNW', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (78, 111, '100266', '100266', '00', '', '', '0', '', '$2a$10$EjKiqR8takFpLczWqesSl.ChTUh3JejgMXK98tRHVsyVJTYsQ/Ugu', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (79, 111, '100268', '100268', '00', '', '', '0', '', '$2a$10$B8LiAEMw7wu0dAoF1/jgM.CqqDCDqzRWodCH.AqhbKS0HRTSWynmG', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (80, 111, '100269', '100269', '00', '', '', '0', '', '$2a$10$SSsJIZcIdo6yaelNI.nQSe6TkfTx9uuRDjByMkD26qUzT9EptdhQG', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (81, 111, '100270', '100270', '00', '', '', '0', '', '$2a$10$Am6aKFy2usbR4phvIKq54exDEuKy.ymycpjUgHg3xA2qT.jxKQ8Yu', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (82, 111, '100271', '100271', '00', '', '', '0', '', '$2a$10$iTXqmsCfwVCcmFgHWNAJYOz0ChfBHkJvaVvVQYA2k5nysPfQqnz06', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:53', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (83, 111, '100273', '100273', '00', '', '', '0', '', '$2a$10$YCtAFvlhW.4mxKSpWVuXXOM3xgWW32ZEDb2MvmSw1.jLbvRTXevrC', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:54', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (84, 111, '100275', '100275', '00', '', '', '0', '', '$2a$10$RZacj0oVtYQFZdaXU23lF.YpzgAkO.8KUrqAKAbE2VuUCkjytdzSy', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:54', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (85, 111, '100276', '100276', '00', '', '', '0', '', '$2a$10$nKAWHdsvCbH3Sc4Fcj5yz.4xGrG6p./ezBgGTZuHCwMDzWQAApBIi', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:54', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (86, 111, '100277', '100277', '00', '', '', '0', '', '$2a$10$FXaok8sB5YlvA8ixRNaFge4e8x30zLcNvbmAJNoY1tAU/Wox7Tp3a', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:54', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (87, 111, '100282', '100282', '00', '', '', '0', '', '$2a$10$1KTcgGYHDLhC0kk048mfxuBO1eXXpFaPvZWtP6gO914GkEnR12S8.', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:54', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (88, 111, '100283', '100283', '00', '', '', '0', '', '$2a$10$fIFn0bvHpEsOx4VKVhJUAe0R0Oa5y5aYm86K4Yqja5LVgfnY/kA1i', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:54', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (89, 111, '100284', '100284', '00', '', '', '0', '', '$2a$10$4ZgbGsgWiWn54nU4yabdy.jaxV.X9j9r3.Cvdk4FMysTY6HjSLGZa', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:54', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (90, 111, '100285', '100285', '00', '', '', '0', '', '$2a$10$Zae8QknbZgHPZCJtW/TuoOSub5IcOSJDS6jUUfZvifjdLdHvRb9WS', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:54', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (91, 111, '100286', '100286', '00', '', '', '0', '', '$2a$10$X7J09O9GYzICNfWvWXr9aep37nFGj5Q3yA6Ymg9trQb6oxXo3HXpO', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:54', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (92, 111, '100289', '100289', '00', '', '', '0', '', '$2a$10$a4wkTumEdKR07bZ3Uq3BRuVi0MZv1BodaA8vsf4hCb4RI91O/su8O', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (93, 111, '100290', '100290', '00', '', '', '0', '', '$2a$10$5j9mlU6Q2jHitdmZE1Gzpup/qHlT5DQS/ISMzhXkC5LC00f/avvRm', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (94, 111, '100291', '100291', '00', '', '', '0', '', '$2a$10$FEnGinlMkScSaQyGLqbTS.jffinZWRo7zMe0ZXarsjW/9MjYHI4ai', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (95, 111, '100292', '100292', '00', '', '', '0', '', '$2a$10$uEhKTHTBZhyM.2KQrP5pte/dwnKH9B2iZWU/aaX587KD50z6TmfJy', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (96, 111, '100294', '100294', '00', '', '', '0', '', '$2a$10$Yu5cMG8IHp4ekuIUDbOZH.GR87ykQUg3Y/k70axxzwMftcp9LuBiS', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (97, 111, '100295', '100295', '00', '', '', '0', '', '$2a$10$GnROVC37w5XQ8vLUolgkIeLJaUWM.QWNZ5XBhWfnrO3TIhd2UDXDS', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (98, 111, '100297', '100297', '00', '', '', '0', '', '$2a$10$m1Zpgdyk6zjGD5VHXMQVXe0y9POlZAkHCNCWDx6KNcZgcNRClCQOi', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (99, 111, '100298', '100298', '00', '', '', '0', '', '$2a$10$HMAwOQoxjG.g/9ussSdF8OQlc2AaVvMfdeUwBnJf7WjuKCtbR/bza', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (100, 111, '100302', '100302', '00', '', '', '0', '', '$2a$10$IlMyWlCmGZ7UvYf4UYB.z.5V7OoUtBCijTdV/TIRzh/JZNBIgUzde', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:55', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (101, 111, '100303', '100303', '00', '', '', '0', '', '$2a$10$k7Pew3qHnBztxx8A.mfA0.6t1IWOfzvbkMOMiUil5c7fhGZXA3bYW', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:56', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (102, 111, '100304', '100304', '00', '', '', '0', '', '$2a$10$gMM7p4TeXINCheMK3oHVwuKXreVhqbKeNnsJf2eLyYdITPPAtGmUy', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:56', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (103, 111, '100306', '100306', '00', '', '', '0', '', '$2a$10$RRIwYBDrp3/uKr/TmlHRTemfLhFdbDBD96Jm0AmyHrIbRPMgztT8a', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:56', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (104, 111, '100310', '100310', '00', '', '', '0', '', '$2a$10$9Cqi69jpzRv3ht6WHPUBy.mYHPTml7F49lhXeLSfUs2eGyrlI2YyO', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:56', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (105, 111, '100312', '100312', '00', '', '', '0', '', '$2a$10$q/kzNqatn81rGyhrQd46rO73kZNCzv.A2ScLSsJhPUp1tgPhdhaZi', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:56', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (106, 111, '100315', '100315', '00', '', '', '0', '', '$2a$10$.cpLEgpflI8T9qsCmSzTJ.6q9Vx6EfmjP/eqsUGFnGDKh/ke3w0t.', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:56', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (107, 111, '100316', '100316', '00', '', '', '0', '', '$2a$10$.WkBFFPylZXHJqtyBn/I8u2n9tsi8IX7jqctF.ryJN9nj8Xn6Smee', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:56', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (108, 111, '100317', '100317', '00', '', '', '0', '', '$2a$10$NRtDrRDX2Z9TL/W0LVRRAu9zSUeo4kXhvYuEAe2IjcbUiNltfJE/a', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:56', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (109, 111, '100319', '100319', '00', '', '', '0', '', '$2a$10$hRQjXp2eV3bX0U5vruQ8j.r/59LALg9DT4AR92REC6skIhsdOTAa6', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:57', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (110, 111, '100320', '100320', '00', '', '', '0', '', '$2a$10$E6DR71DtWnH6u3gnWTbudODR2KnW4W7SruHEG98BFbyYKFi7UbE2q', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:57', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (111, 111, '100329', '100329', '00', '', '', '0', '', '$2a$10$eCuz.g/XyyJ1UZaxpunYs.C/2NQsZoFAOFjU5hmCcFR1Pxz2oF6da', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:57', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (112, 111, '100330', '100330', '00', '', '', '0', '', '$2a$10$y38uvlhk.IP5jKC.Qx50JecSKU4dWxBpPOrWxNoGOA/cXPWVicH56', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:57', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (113, 111, '100332', '100332', '00', '', '', '0', '', '$2a$10$fvLP5pnCDkgx4hvIU5kkJeB8fXIKRKVN7KSwUehBU5DfPWShUf6ju', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:57', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (114, 111, '100333', '100333', '00', '', '', '0', '', '$2a$10$xT6Hn.BhKL.jxwhqh9Tb1./KAyCJnwMxukDFvfS8mY.WhzpAYUCzK', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:57', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (115, 111, '100337', '100337', '00', '', '', '0', '', '$2a$10$3/Ulm5D0iGNMbX88gxAI6OuzQP5wShKM62r3.UjhClElraxEqbzhC', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:57', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (116, 111, '100339', '100339', '00', '', '', '0', '', '$2a$10$v2aaHiqCyPmkGJdL1t4VZOUwQc2KvpQN.Gy5FLqCWTfwnpxacc/4i', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:57', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (117, 111, '100342', '100342', '00', '', '', '0', '', '$2a$10$oKvn1Eb7ZgZB4V3hlKKbcO1j1etbZQEnK3qv2XtpihBXEob83Px/u', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:57', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (118, 111, '100345', '100345', '00', '', '', '0', '', '$2a$10$jbKBlH0CH/xUzxE6Pba.H.paghC46I2PgDnwCCeoHLWtiX9S7RGm6', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:58', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (119, 111, '100348', '100348', '00', '', '', '0', '', '$2a$10$Imnh1RDXk8dYP3bgWX/W5uHgw.mZkspzgMvWVYQ1M75mqBoxft2cy', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:58', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (120, 111, '100350', '100350', '00', '', '', '0', '', '$2a$10$AJbY9W4Yb8tnoFSrZXrYneSM44suICL0VCSLirdXmNmrkvZ.0iOci', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:58', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (121, 111, '100352', '100352', '00', '', '', '0', '', '$2a$10$5CYD/1vewHnt3umgaR.XXuaFBaDXXgWEdU1Fotd4x9L8q5BEa5u7.', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:58', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (122, 111, '100354', '100354', '00', '', '', '0', '', '$2a$10$eMmSIXw38v4lTass9Bqx8.4uVI1hDbl11Fz3/yY.WVkvfri28C6h6', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:58', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (123, 111, '100355', '100355', '00', '', '', '0', '', '$2a$10$ctrlt8RESGMV3gpOLQOzEeMtSyLsEppXCxu3MNxFgnkO2hW7mFs.u', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:58', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (124, 111, '100356', '100356', '00', '', '', '0', '', '$2a$10$jMVHKtBfnGhE1JoDl9CJTev2azuLv7NsHhiQPtbWbg.cIcZ1xgCm.', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:58', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (125, 111, '100357', '100357', '00', '', '', '0', '', '$2a$10$VfZvuQefquHxZ8qnqoD6eukajO7O2REWIadces0pTccVNfy7AtV5e', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:58', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (126, 111, '100359', '100359', '00', '', '', '0', '', '$2a$10$ECsDcfvEhjeypbb7vjta0udHG80nNi1o9Us5ykyyhF77iBsrzc1sK', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (127, 111, '100360', '100360', '00', '', '', '0', '', '$2a$10$zHEJFq/hbv9yq5etUQ0H8uKLQkRr6PkFw9DT8ED3dW3ApI54PQivS', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (128, 111, '100361', '100361', '00', '', '', '0', '', '$2a$10$8DsYefAT3i5E90cD2czyLeDY2aPkOCLJIzFPATLT4fEV1n6gNdYQe', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (129, 111, '100366', '100366', '00', '', '', '0', '', '$2a$10$WuWFvXXAXXOabBI40jxgyOotWLcWrS3EhZ6GzyR5cro6sGGbRkp/y', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (130, 111, '100369', '100369', '00', '', '', '0', '', '$2a$10$/.OflSPsFtg7aQAB74jbXu33gNWy.ukJpiTCvy9VfdDr5jVWyxYTe', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (131, 111, '100371', '100371', '00', '', '', '0', '', '$2a$10$jWJ45XN7KpHHE3D8IEsrWOSsZB5CfWolFWL1M/0yafgCGAqT.4anK', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (132, 111, '100374', '100374', '00', '', '', '0', '', '$2a$10$nR5b9bhXuoLcQkVYtyrcOum5mYvoCYhbpuLslqGLK6Zu7ou2hBMsO', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (133, 111, '100375', '100375', '00', '', '', '0', '', '$2a$10$Icb7FvOEhspLAEVEpYngDu0uOc1bISA4e.QRmhPYotjYVcv7q8ymG', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (134, 111, '100377', '100377', '00', '', '', '0', '', '$2a$10$aBibtXm70QJl2icr7Ipo1eec10XXwu9H78LwLSvpGqNYpW8v6K0XG', '0', '0', '', NULL, 'admin', '2024-10-22 14:22:59', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (135, 111, '100379', '100379', '00', '', '', '0', '', '$2a$10$.g/zZX41yDH45ArvLSY9meE.AFiLT7Jq1FYjfFMyi3UdmoWJu51ny', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:00', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (136, 111, '100380', '100380', '00', '', '', '0', '', '$2a$10$VtDJWejV5yvVUrKjrMtUvOW8ngsgds.5ujVUTJ3DVymcs5U.lhIXC', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:00', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (137, 111, '100382', '100382', '00', '', '', '0', '', '$2a$10$yzFRv2XmBVzXPqs0sYgL1e3LnDlHshzTGyL1gW3RYiw1o4eWqcLRK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:00', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (138, 111, '100386', '100386', '00', '', '', '0', '', '$2a$10$54fM1KTy0iOFKBD.QcNmPu8e8F/kT0DcpJ5gOn54vHq.hVa7yFGa2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:00', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (139, 111, '100389', '100389', '00', '', '', '0', '', '$2a$10$xk1TUtvslAUqicDq7RoPa.EftTReS2EobRKdOGTa2ynu.N2lkhm9m', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:00', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (140, 111, '100390', '100390', '00', '', '', '0', '', '$2a$10$8F8iAAt.J37lIoAaxBpN/uuIo1l7MWs8/taVJwwRzyEpt/ra.3Dxq', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:00', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (141, 111, '100398', '100398', '00', '', '', '0', '', '$2a$10$7f8/osDBMwKsr5oX7pi9auKkGXtEMk7lYgOSVc05N0juj5iXUytWa', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:00', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (142, 111, '100400', '100400', '00', '', '', '0', '', '$2a$10$h8lPcs1yRE.88MUHQqXQeOcG6BuBeRHtufAa7G4pPsSJoHyKa58lG', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:00', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (143, 111, '100401', '100401', '00', '', '', '0', '', '$2a$10$4n.rSZtgsw.Xzq.sZHrX2u3/3O3Uk1ap0ebqzTIWEgnOxzswA6v3K', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:01', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (144, 111, '100449', '100449', '00', '', '', '0', '', '$2a$10$lo.d9woOW7dgz1w.hK5kOe3Qaqfg2ZrOsx5lGU/WdeTwV46PMPUpy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:01', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (145, 111, '100470', '100470', '00', '', '', '0', '', '$2a$10$OGU53oXaLSnHIDCjehTesei3eElWfqgrGOYA/zB.aVjMVP3nROmh6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:01', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (146, 111, '100477', '100477', '00', '', '', '0', '', '$2a$10$wq/VPuWcaTXnwlhzwdbV7.7B4gS6GkoHFs84P8JIg6r8rHW5bhKk2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:01', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (147, 111, '100485', '100485', '00', '', '', '0', '', '$2a$10$sKwj4KKLWR3U1nAFUMyttuL.rTbvtCe84ky05fV/Hqf9nJH2koDeG', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:01', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (148, 111, '100493', '100493', '00', '', '', '0', '', '$2a$10$TNBxeXJ0UJzbV/h/9izFHebiVhbEh7NccH8fUji6megahLSYiThve', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:01', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (149, 111, '100502', '100502', '00', '', '', '0', '', '$2a$10$O3ynb4Bv/HF0pba3glV1yeoJ1yaoPTcV9O2ARaBbI0188Hu1xNgIe', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:01', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (150, 111, '100538', '100538', '00', '', '', '0', '', '$2a$10$jwKpRyaGlAQzCwtEHlGcweup9Q8nwk1nP5QFcg/Z9D.fcj1uFS9AC', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:01', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (151, 111, '100554', '100554', '00', '', '', '0', '', '$2a$10$wNkelCMZlvFwI9fvvuP/tO6fpY73FE5QnfR/M64XuPvPclGiqfzse', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:01', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (152, 111, '100556', '100556', '00', '', '', '0', '', '$2a$10$D6LL0GqG83JtjsaaFtsJ9umsaWZmTD167kRUrjC1mksQNIFoCQIIK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:02', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (153, 111, '100564', '100564', '00', '', '', '0', '', '$2a$10$Gu5AsiwjDQ3UqcUvx7Cg9eB2O5eWJwkRM4np6tucyTjwCkAt1Rvf2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:02', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (154, 111, '100570', '100570', '00', '', '', '0', '', '$2a$10$vdJPekjvmwe.Q.efwkE.UOeHTJvLbcgRIWipLSzIqrsxlJVDu4cWO', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:02', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (155, 111, '100576', '100576', '00', '', '', '0', '', '$2a$10$/oekpngAgx6quRZUpIC6je5cjKzQcT7KvYIAAuVWMGtOYKbArdFB.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:02', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (156, 111, '100578', '100578', '00', '', '', '0', '', '$2a$10$6g7eDIpsgs1qVBY7SavGUuDF/A727KQmeZS6TAZyjEnIVF6rAF/hS', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:02', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (157, 111, '100579', '100579', '00', '', '', '0', '', '$2a$10$QqnoF6q6Q83CbnYC0n8GRedYdp4OzBXNK1mkMqwgHytqAXBXa.BEG', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:02', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (158, 111, '100595', '100595', '00', '', '', '0', '', '$2a$10$Vo.dh.sgxKdOmkLXtIeTbe2.mO7OGTL4B.ecnS4fXSMpwgnzagM4u', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:02', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (159, 111, '100611', '100611', '00', '', '', '0', '', '$2a$10$IKweaja4OTheptkeqMBjK.r/QNrr9yVesw.jAAxdzHTr3Hto2XZI6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:02', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (160, 111, '100616', '100616', '00', '', '', '0', '', '$2a$10$m2mhh8AhxCkD5UL7WCUnkeakMqi9cq2Pdwk.9UpuGD2jsW/eKIPyy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:02', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (161, 111, '100617', '100617', '00', '', '', '0', '', '$2a$10$3WB1HBov0x5Lry8gsEgpMO9XFKG5JLliBRYaLujI81iy/5JDk8Id.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:03', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (162, 111, '100619', '100619', '00', '', '', '0', '', '$2a$10$vtvjcfmj2ZfXlKr1bg5EJe6y2ANrMC4u10GfWerX9k.0CQJ9mxeZW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:03', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (163, 111, '100620', '100620', '00', '', '', '0', '', '$2a$10$a4fgQELSqwecRadA/qlIxeZicJon6Y8iyKynTSqcR5AN94zUw2Xxq', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:03', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (164, 111, '100621', '100621', '00', '', '', '0', '', '$2a$10$hkKSbYiViqcUh2VDo0YzwOunZplcOTfkIHX4qutaWsQBkZ/PI5.a2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:03', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (165, 111, '100623', '100623', '00', '', '', '0', '', '$2a$10$Kpiv15gPZdwdT2JrldxuseEV4wQEy723sIx9hZoJwBDLOKO1y.rk2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:03', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (166, 111, '100639', '100639', '00', '', '', '0', '', '$2a$10$wkqdBvzVfoDxMOprzTuXeO04EpwyX4HvAXBhCaL9GW69Tm6AX0ZX6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:03', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (167, 111, '100658', '100658', '00', '', '', '0', '', '$2a$10$s05rwcFR.gc0KPsckBVC3eYn/1pokQ.Bn14dmNbFbGBOxnoIqAjsq', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:03', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (168, 111, '100663', '100663', '00', '', '', '0', '', '$2a$10$NYoY5noKo7CC7N3PyoNzSeTtBu2BlET0A94Ia5WrOvRw6/KrYrxB2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:03', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (169, 111, '100690', '100690', '00', '', '', '0', '', '$2a$10$4u1laDqLXOkPKQw2POIDT.72zjV3n6sVhF8kPdMU0TUNacJrhQvk6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:04', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (170, 111, '100698', '100698', '00', '', '', '0', '', '$2a$10$uSpAmM.xeAYoRoHzDXMcPuM.43i.tGpAaHez7dv68syi8Qgd6QYG6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:04', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (171, 111, '100700', '100700', '00', '', '', '0', '', '$2a$10$RSbS1hiOLYPPXbLygg088eAPOCrWNxmoSsnztDfXB6pEb9Y/CQjUy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:04', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (172, 111, '100723', '100723', '00', '', '', '0', '', '$2a$10$wz7BoHEXPBvuJf.xYpunOuo8tUejDakSgFf1G6jr/HuE2T.Nf8hYW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:04', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (173, 111, '100742', '100742', '00', '', '', '0', '', '$2a$10$.szq0BHmkkUuYv3SZvfGNusQZmHXZ7FX8JCYwsbjsYh3uwnFQyFAi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:04', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (174, 111, '100745', '100745', '00', '', '', '0', '', '$2a$10$8Z2pU9/NIU664Kdy224v/OcWh1nLF2KBun88fbW0KfY1a8vFy8bXO', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:04', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (175, 111, '100746', '100746', '00', '', '', '0', '', '$2a$10$wgeM3X.ddbiLyal4ot7gCu1rEnOhE7yc9HVRMW/CAn3pRHGa68ovK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:04', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (176, 111, '100757', '100757', '00', '', '', '0', '', '$2a$10$J0epnF4bCC4TK1ZpvRPa7.iZi9hzkK6TPsZ.Y1wtJmwUgcf/eB8FS', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:04', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (177, 111, '100758', '100758', '00', '', '', '0', '', '$2a$10$X2NxEFUtwAA79OmwKBeU9u.Os1AkXeIvdyyLsDzKsidQo0hysPX3K', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:05', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (178, 111, '100768', '100768', '00', '', '', '0', '', '$2a$10$k6Dt8059ia41TjVJX1hFx.e3g4vrW8ohzHRoXfGAJHwXaYKzUm8c.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:05', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (179, 111, '100774', '100774', '00', '', '', '0', '', '$2a$10$ZIb2B6tdwPgcZPZNtO8x4Ow5Vdchj07TG9DPmvb4DlpX.95QmN7pe', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:05', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (180, 111, '100794', '100794', '00', '', '', '0', '', '$2a$10$8.VqAgu.7QZLdjTEN9Cz9uPXsP63nBj7.IGSlqukTl0PDLzK177cK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:05', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (181, 111, '100798', '100798', '00', '', '', '0', '', '$2a$10$jZ5tlABXVraU3TWcCgs7fehd5hk6l4zHKOAWP4lBK1wYrQqy6TwWa', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:05', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (182, 111, '100799', '100799', '00', '', '', '0', '', '$2a$10$6/sX/Qbq37tCdfud9xLvqOPTPH2HA52d4yYOngro/g0g7hTX9/xU6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:05', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (183, 111, '100806', '100806', '00', '', '', '0', '', '$2a$10$3SxQDO4gNwuEe/q6Lc0EyuXyD/zLLpZoLgZ.hCKONmkB0I6V3ywK2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:05', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (184, 111, '100811', '100811', '00', '', '', '0', '', '$2a$10$ztUQ/Lr32QmU5CT4uujwi.fA9jOFwgG88LyKDnXXUWH4UmndLoB76', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:05', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (185, 111, '100813', '100813', '00', '', '', '0', '', '$2a$10$/A5.rPkE0EyXhKKclowj2Og3dWIxY/GVahmSY1xWvktxbYldmZsnW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:05', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (186, 111, '100814', '100814', '00', '', '', '0', '', '$2a$10$89ak8L7QmShKG9sjYwNo1u2clwnHdunvaayDnZ.jinHrdAwQaFW/m', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (187, 111, '100821', '100821', '00', '', '', '0', '', '$2a$10$6DZgVp08BL7wGCIKmQJzZ.w8F78ldtNFUFirLIUkUnov5pPwCGbbC', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (188, 111, '100822', '100822', '00', '', '', '0', '', '$2a$10$hIU7EqOWIjb94ZJDmEaDC.2JYkgI5xrPol3RUGiJPqyWhndCOSAca', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (189, 111, '100826', '100826', '00', '', '', '0', '', '$2a$10$wT91Cd0xaAH8jWbWSVjHLOFJlw87kss3F9tlU2GtzJeIeBM0w7LYu', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (190, 111, '100834', '100834', '00', '', '', '0', '', '$2a$10$dSGFH/rf867GsEfqbB8Koe1apoXDurXc63bqjYpkF01nLsRCdkEEi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (191, 111, '100836', '100836', '00', '', '', '0', '', '$2a$10$0nT0YWrgvDrjyiBhtNDrNeBOXqdEsohE8NwiOYcfTigg.o27GQX4a', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (192, 111, '100851', '100851', '00', '', '', '0', '', '$2a$10$7DTs9bou2XOWRRVN1TfM7.NL/9Gu4OKrLWd0hHFa5es.OAMlUEA96', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (193, 111, '100853', '100853', '00', '', '', '0', '', '$2a$10$LmMEJIBwqropNNOdfA1cB.6wLFSfnLsBktHe/IBut6rsZ5YLKiEza', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (194, 111, '100858', '100858', '00', '', '', '0', '', '$2a$10$MX8lX6PJfb1c/NGGv2INPuTOEz9nAsakD02A2Vz2d6dqjBGyd68iy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (195, 111, '100862', '100862', '00', '', '', '0', '', '$2a$10$yrCVLNYDurr3zcC45H7us.fN3yiXOyXMtHc7RoYVfjBxknIDEkZ6a', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (196, 111, '100863', '100863', '00', '', '', '0', '', '$2a$10$QXDNLxuIo3qFjjl/57zC3.N.leT/ftkLrnqrZxS7c9zhJNubGL8u6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (197, 111, '100867', '100867', '00', '', '', '0', '', '$2a$10$eYFy8en1LegCjoBZd32VMeZjnpElTgL/JSykOcxGc3A1h6BuhPasW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (198, 111, '100871', '100871', '00', '', '', '0', '', '$2a$10$nHYFz0FwEIxzqo21j2WnE.yqDPHMxP5KLSygY8ieXGftJeONyatFi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (199, 111, '100876', '100876', '00', '', '', '0', '', '$2a$10$5KmlkgJ9lmzjg2IR/yhhpuDmX9moMr1ZjAJkvR/Gz1YKzcT7wZC5y', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (200, 111, '100881', '100881', '00', '', '', '0', '', '$2a$10$EzMiIBpRiBwSaAt/cFouyup/Mw2LTYoMlQGyUiwNMp1DfdgEReM1O', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (201, 111, '100886', '100886', '00', '', '', '0', '', '$2a$10$i/uBPeydT6ZtojJFYfYVHO..Bqtu8XojNPcnSIaPjWOFW1jflXxzq', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (202, 111, '100894', '100894', '00', '', '', '0', '', '$2a$10$If4fxBukivVhUoj2ZjNxMOkFArO.Po/Vkgvv26WHYtUcLWJtX/oUe', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (203, 111, '100899', '100899', '00', '', '', '0', '', '$2a$10$Vrm9ZupQgT5HRM7854Iy8eVKSyMPVAGBD1f.tNitXZjbQn5dkBlF.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:08', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (204, 111, '100902', '100902', '00', '', '', '0', '', '$2a$10$hH1XAuz0fURzr69jZXhOEO/EKTsy08VF22Ng9fp/PIEjbIYCFQgq.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:08', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (205, 111, '100908', '100908', '00', '', '', '0', '', '$2a$10$uAKLX/56PcSblriGee3VsOl5mCcnKyk70y.wIWeqaLlbOm1g3f6he', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:08', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (206, 111, '100918', '100918', '00', '', '', '0', '', '$2a$10$NehUWOK54UKhFOU9dCVDIuieOqksFoEvRlTqC/1j7vQYo4wlQ5UUW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:08', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (207, 111, '100921', '100921', '00', '', '', '0', '', '$2a$10$qL2gEhALBJnwBBRQLYcx.eAqN56meVN3c.uB5iTIXv93U4qDR9YQy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:08', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (208, 111, '100922', '100922', '00', '', '', '0', '', '$2a$10$peTZe4iLkA95pk8k6.xv3eyaQ4guM4rB8GvtIBBPQW.FC0ep0VQB2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:08', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (209, 111, '100932', '100932', '00', '', '', '0', '', '$2a$10$KFH4ytisTlVyQ/BuaEwRwuKXUcW0/0zu03ytU9tGT4XJiBBJ8BR5i', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:08', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (210, 111, '100936', '100936', '00', '', '', '0', '', '$2a$10$X8e.BNanf2qBUPRmEfW9gOLxCh0jArIN.M514hHqNOu2dm23rJZ/C', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:08', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (211, 111, '100940', '100940', '00', '', '', '0', '', '$2a$10$BO7mfq/NtojShnS4BAiNvOsOzcV.xL24VWUBg6aHJ/g5HvOocqEQ.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:09', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (212, 111, '100941', '100941', '00', '', '', '0', '', '$2a$10$h6kVnlEG2jOQu9xiPnAd.uoSqBi2P8RMNLAuKOGU76J9WMbR5R.b.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:09', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (213, 111, '100963', '100963', '00', '', '', '0', '', '$2a$10$SJyYtNpcAL4uOWUNK89tR.R8NN46Wv2HR0PXkMNeRjJo6TWbDBJva', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:09', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (214, 111, '100968', '100968', '00', '', '', '0', '', '$2a$10$e/AgDiO8irRKMbHc/f54VupywTlwDc50.mUdzREO0Q0hPLI7sV5d6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:09', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (215, 111, '100969', '100969', '00', '', '', '0', '', '$2a$10$A2yekC61Bzsct76r0IyEXuYoMf2NGqlFRo2T2OAPZhx2eC0cSA5cm', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:09', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (216, 111, '100970', '100970', '00', '', '', '0', '', '$2a$10$310PCYTHfw75FrPrUuBwweYga/fCggPkAz9WxPi/Aau46K5sQSMqi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:09', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (217, 111, '100971', '100971', '00', '', '', '0', '', '$2a$10$eAgfE5tJdDL7Dh4AMeMW0.4l0dhqwml0wiTl/KrCoObaTx3yFSclm', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:09', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (218, 111, '100975', '100975', '00', '', '', '0', '', '$2a$10$tSZLxup8YPUEtNIpY/xNK.HMJz5PYUBAC.aUf343sdKBaQ9jdVshi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:09', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (219, 111, '100981', '100981', '00', '', '', '0', '', '$2a$10$v5A5Q.lmUz.KW3cHPMCukukc/yTZBrHR4T7DnLtSC.z6ztMU6wT9W', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (220, 111, '100982', '100982', '00', '', '', '0', '', '$2a$10$S5nWBJn0FXEUXaQr9IDHnOKb7QBfrT0KLDsxOTSA2a1AOF9grbJr.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (221, 111, '100984', '100984', '00', '', '', '0', '', '$2a$10$IkBI2MZxdJiFadEyLUGHg.Y1krQDoA5sw0i.pzmOTeo.UHqdnNE7q', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (222, 111, '100987', '100987', '00', '', '', '0', '', '$2a$10$lbDS.RJLx2yJ5MiXE6lNl.8kqEeGye3Vr.ixEIGQKn2ecFONmZ1I6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (223, 111, '100988', '100988', '00', '', '', '0', '', '$2a$10$e3bnxZ7xFe9Y0hoSdbEn3OwUXWGeSG8idYgp56D/ltG/Gx6Fmi/1C', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (224, 111, '100989', '100989', '00', '', '', '0', '', '$2a$10$VZLIRSutz61sSk50TJX8uOkXDJ.wiDdMoeNw/bSA56m/.ZWsaOvla', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (225, 111, '100997', '100997', '00', '', '', '0', '', '$2a$10$7Htc/ut3TV0qwssnyt0s6OM2UaLpnYF1I2xDCo1gRbhP06OyPs6m.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (226, 111, '101004', '101004', '00', '', '', '0', '', '$2a$10$TnN2c4oLRt93tktEWdYBgOv9dWJYC1.nGXQ5bOzgUD5o2owHlWmPa', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (227, 111, '101006', '101006', '00', '', '', '0', '', '$2a$10$gI2uBua2pZkRRYdkgJOFou9lJ4e/CHrjoMJi8PGXwhO8Te18QXgGW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (228, 111, '101009', '101009', '00', '', '', '0', '', '$2a$10$T4BQZZa7qzC90KRB1.ynduSW.D3K5HU4QZ53LH5sDCOOgCf56JTLy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:11', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (229, 111, '101041', '101041', '00', '', '', '0', '', '$2a$10$hg1jadWo.1bPWmwiJbIYQuXs.e0ZMKRH1ykTJXOPADN9GyXHybuVi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:11', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (230, 111, '101049', '101049', '00', '', '', '0', '', '$2a$10$lZ5KQrMWkrbyjNHRj2oDceD5LHi57/mCR0fQyQo88XXfZIjlQg3mC', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:11', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (231, 111, '101056', '101056', '00', '', '', '0', '', '$2a$10$SCyjGRjrfu5RueQkB08fsuh0MCQuEz2PzuDHVzBnX7tiNI7bZ1S3K', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:11', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (232, 111, '101061', '101061', '00', '', '', '0', '', '$2a$10$V4j.iqTGGKXgt4.KAvM7kOUy6/bHe9ynyiNqagejEhVdZsW6u7TWW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:11', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (233, 111, '101062', '101062', '00', '', '', '0', '', '$2a$10$dTZ0G3ouQRFSp2k6qw4AAOLWTnsHj897MkKoLQwiQBtSG./tdhMu.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:11', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (234, 111, '101063', '101063', '00', '', '', '0', '', '$2a$10$A94ds6MHVSIUFpYMlF/urObz/.ClTyNttVfiwgiShfrPk5saVozP6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:11', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (235, 111, '101072', '101072', '00', '', '', '0', '', '$2a$10$aSBIEdnaCqTxm61FU.s8uO4703.0tvLHVVYqs/p0YGmEyaBls7Tq6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:11', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (236, 111, '101073', '101073', '00', '', '', '0', '', '$2a$10$hs9sGR6Dl1wxcqN2WZknbOuDyjG.vkJOKvQbsVVB51HyzB34uxMYi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:12', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (237, 111, '101076', '101076', '00', '', '', '0', '', '$2a$10$jNPbZNrHCH5twmih80Uhiu3IZKXwAnfY0VTmwt7zORAcNcCwZ5fbK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:12', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (238, 111, '101100', '101100', '00', '', '', '0', '', '$2a$10$62cmmPbJvJQ9kW6vYfoJQub50okonBmAGIXLOKVL5Rl6Z4NAZqRMi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:12', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (239, 111, '101105', '101105', '00', '', '', '0', '', '$2a$10$mO1YWLK3IL/9D3OTGqR7BupQt6xC7xvyPn1VAwnWIqKouIeR.FYX6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:12', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (240, 111, '101106', '101106', '00', '', '', '0', '', '$2a$10$NVQ6tFnQyFIyN6XCpDIjXOF2Zccpg5WSvESeQHvhSXQ8JxIVShera', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:12', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (241, 111, '101108', '101108', '00', '', '', '0', '', '$2a$10$3Jw.4yi9n3CVmS3AjP1qPO8M9WIgAGlxYD55PRsy4cuCExjrGXOLu', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:12', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (242, 111, '101116', '101116', '00', '', '', '0', '', '$2a$10$1oK5a6zNAsDPL35iMG6r6uESAmDCA2BU6dwXQnHWbci9TFZr49TbK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:12', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (243, 111, '101117', '101117', '00', '', '', '0', '', '$2a$10$53E6mcggPPu1ME8ACt5X..0Snjj1DTdpzJwuMaBh2KugplBUWMkv2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:12', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (244, 111, '101118', '101118', '00', '', '', '0', '', '$2a$10$AbYBiDZxFKmT8Tkjtl/91uLtvbLh5XA1nDouN6O5KYZS6nozA5tZy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:12', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (245, 111, '101126', '101126', '00', '', '', '0', '', '$2a$10$4gm0XUpK2Ocve4Sb5Ca0.eikfs.r3ebudrxJEeKXToq6HVl7c.In.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:13', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (246, 111, '101136', '101136', '00', '', '', '0', '', '$2a$10$.WvOR7TVRnleqaDcMDKhx.RYwat/QIIWQM1TDUc0RuoYHySFXrN6.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:13', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (247, 111, '101137', '101137', '00', '', '', '0', '', '$2a$10$mzX9FEoHphD7hZzddhq2iujqF2qhSLlJ2mHt2sOvyQ6VeZaquWH9G', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:13', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (248, 111, '101139', '101139', '00', '', '', '0', '', '$2a$10$HVZy6C5zV.HafZ0cO62L0OB/ByMNoCKsEm5s0cr0UYyXJflfb3z4y', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:13', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (249, 111, '101144', '101144', '00', '', '', '0', '', '$2a$10$9kBMrwkSrETx7E7xxJlcduvTxzekyMgBOi59FYUOwx52m9frm.KMi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:13', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (250, 111, '101148', '101148', '00', '', '', '0', '', '$2a$10$X0L7d.pSvMWBwQr0AUHTPu3LPNM3jzVJwI/tRNRuPvH9OraSHmd4u', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:13', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (251, 111, '101149', '101149', '00', '', '', '0', '', '$2a$10$o63epciN.Bmo9nU8HW1Y9.fdHp6k1AFM59jl3QuSY7AxRH1d0JHxm', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:13', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (252, 111, '101151', '101151', '00', '', '', '0', '', '$2a$10$8Me2L1g9Ma3AIhpUignF3eGmYDQ3R4wJKdvGI3v7g62MQiUg2AXau', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:13', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (253, 111, '101163', '101163', '00', '', '', '0', '', '$2a$10$AkAkqu8gP.j2vhZuDUCG.uMWPuBdpaWK1Tvd6FZDKMSOxk9Gy.gWG', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:13', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (254, 111, '101166', '101166', '00', '', '', '0', '', '$2a$10$p6FtkySi.qGwiEAZSqhnB.YaMfPzloPqraCvLHu0ckvSePDOFc2ju', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (255, 111, '101188', '101188', '00', '', '', '0', '', '$2a$10$24XQ5hQdJ.MapOs1kRJrTOgHr3rmsQeQdBuznqwijBf1MVWcAF38C', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (256, 111, '101190', '101190', '00', '', '', '0', '', '$2a$10$haj0YLc09.yJGm5mgUiLuOCcNLwBUMtD9EO3h3FhaR5AxaMJHYo/W', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (257, 111, '101221', '101221', '00', '', '', '0', '', '$2a$10$MvSROsHEdGTNpPGmCLu0pOkxHOEB/vjvpadaUtiQ1RyEAjh/SvZAW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (258, 111, '101239', '101239', '00', '', '', '0', '', '$2a$10$60N95te6Eyr8/j2y0SKozeKk7PXXcb.jZZo29FDQtAM5BPjPJ6KIq', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (259, 111, '101244', '101244', '00', '', '', '0', '', '$2a$10$//tcDj293wW7gP80Ht.9X.LJVP7uYcgg3MnrOQsupUtgcuYEzgprO', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (260, 111, '101293', '101293', '00', '', '', '0', '', '$2a$10$7ST6SlVmlwjYUEo1/URmAevBUVynSiSNQTXSmqD1gYcxGnIaBNdbO', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (261, 111, '101298', '101298', '00', '', '', '0', '', '$2a$10$IcqvJQYCN9/ChwDkkT0Jde2UwfizBmGLG8mvoZk7IKaGedDKGPro2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (262, 111, '101306', '101306', '00', '', '', '0', '', '$2a$10$WwxdVF/6Y2r1dYPjJxZhVO8kXcsqvUNc/GvTxjPjMznXVcWI1qg5O', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:14', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (263, 111, '101313', '101313', '00', '', '', '0', '', '$2a$10$IA/aR3qDmIORD1gXR8lQOO9txh4RK3Xpsg20ld6asUFhK8Q2B9f5u', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:15', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (264, 111, '101320', '101320', '00', '', '', '0', '', '$2a$10$azaS0/ILmXM.r8puR3BHZeJVTLdSCF2fhcF7BlsvguP0R6SAippQK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:15', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (265, 111, '101388', '101388', '00', '', '', '0', '', '$2a$10$oUvikjZeJNRWyM4SzqTT6eV4fzJ9PcN9bqkauDi5AUpngqtPZKzCG', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:15', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (266, 111, '101389', '101389', '00', '', '', '0', '', '$2a$10$znhY0./rHWe0I9CKWHGp9OFl8jJ1Ha6EcKiYOGZLzzEOVN7WrewI6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:15', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (267, 111, '101396', '101396', '00', '', '', '0', '', '$2a$10$fyoa8NFcSM6LBxSNAXlpt.S141v.ARzDvhoObty9qJ5j3l2GtgImS', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:15', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (268, 111, '101428', '101428', '00', '', '', '0', '', '$2a$10$kNc797ckFhBRqV02sNo0nuPXVHTjRyszU6jS5.Ew6ACKszdfk7x0e', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:15', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (269, 111, '101436', '101436', '00', '', '', '0', '', '$2a$10$SVqvafAqnd8aG18PHK.d4.Gw9UOK3AIY5TH8fjkA/xPMhEKP5IbJq', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:15', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (270, 111, '101453', '101453', '00', '', '', '0', '', '$2a$10$OobQE/yQ7DPdAQX47qnpGeVhnun8DC4qnOjRbqEV1GRY8oSq5Ls0G', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:15', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (271, 111, '101454', '101454', '00', '', '', '0', '', '$2a$10$ES8/U3QQH.HhHPOZ3L2BOeJ/Hyd8kJh5veGDobgucozyAQ31VfvAm', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:15', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (272, 111, '101455', '101455', '00', '', '', '0', '', '$2a$10$VI4zEYwQgll/i8dqWZci8et.qSUOoQCAslvzn/MTqLiDzjD3u2dIm', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:16', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (273, 111, '101458', '101458', '00', '', '', '0', '', '$2a$10$qnzR7KmOcutWjX9gy5WV2uSToYY8043UYxg02GEjMktJRTU8ALsRy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:16', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (274, 111, '101516', '101516', '00', '', '', '0', '', '$2a$10$pBNT/Etxcz/dxGf6UK02M.52ftFA3YWGd.X8oUwvdDUlY6PKp4e3q', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:16', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (275, 111, '101540', '101540', '00', '', '', '0', '', '$2a$10$/uPQhK3eKm81jZfHIuJW4uV9S7FRrEy2Y4EX1qeYE6AGKVY/0zNAi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:16', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (276, 111, '101550', '101550', '00', '', '', '0', '', '$2a$10$OqWOy2N21qODfui5SsYk8OxJh1560Lo8wU0eCI2c/jjin3pT4PbWm', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:16', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (277, 111, '101552', '101552', '00', '', '', '0', '', '$2a$10$FkcwMCJKOFUy4T8grj5ghO6pDCHQYPxoXbT4diHg0RlavHnZUQP8y', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:16', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (278, 111, '101558', '101558', '00', '', '', '0', '', '$2a$10$oXBwoeO1zzjmJoiWvarAfezZ8W139df7dT0HkefunTv0duWHed1Pi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:16', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (279, 111, '101559', '101559', '00', '', '', '0', '', '$2a$10$r0XBqE2KDOHyGl/kjLk8AuafXe2tvzyfbF.NVaL6qeLolsbZUS.mK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:16', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (280, 111, '101571', '101571', '00', '', '', '0', '', '$2a$10$vqoiSpXHTIJ8bqF08tu4Yu9RRdcnojlh8aA7P4YTOgYtwO1H/T80.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (281, 111, '101591', '101591', '00', '', '', '0', '', '$2a$10$EVFUSWUYOl2QM0LFxOiQKeHG37Q074Oy33nITewclvkWVn.EPth.e', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (282, 111, '101602', '101602', '00', '', '', '0', '', '$2a$10$B9nQ4mmWSKmI7ctrcyLd0OiQtoA5rrGreIj6zo.fPZtpet5eqOJCS', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (283, 111, '101604', '101604', '00', '', '', '0', '', '$2a$10$OsW2Ze/jODdYuz9eNPq4UeMtzLpavrJw.g/KVPV5nuNXQnS/faZNi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (284, 111, '101611', '101611', '00', '', '', '0', '', '$2a$10$fXg1.ac.o2EaRsrMfpokbe6UwAEtOGoWvS/OZsgIFhGhKztEbT3K2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (285, 111, '101612', '101612', '00', '', '', '0', '', '$2a$10$FQb3l3NIGAnSTGyyeEq6ou1G4mirZz.ebmq2MHPQsXMeKdDl5coxe', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (286, 111, '101623', '101623', '00', '', '', '0', '', '$2a$10$foDgVMemALhTep4ROpDtVOvdt/9W.ylsgtB0wbJB1I7JjXZJa8CeS', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (287, 111, '101624', '101624', '00', '', '', '0', '', '$2a$10$ptnqdO4tzRwpTYELEijp4elMeb4FpVjFsD0BcpnNLmDhhejOAbDfC', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (288, 111, '101650', '101650', '00', '', '', '0', '', '$2a$10$CTdzxZ9xX3uBWKrW3gAhmO9f9XR6aAVU/Uo6GSaoZLNapPbGWr5HS', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (289, 111, '101688', '101688', '00', '', '', '0', '', '$2a$10$J8fIHdhGuO2dg/owV/Hmpe2Dw4MwVwupFVA7ZAj7IIHPGlrcARR82', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:18', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (290, 111, '101712', '101712', '00', '', '', '0', '', '$2a$10$7t2Gs1EXsO8EKjKJ8cLJI.tks00zA8TfXMiIi0BvktgGJ/17glqsi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:18', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (291, 111, '101719', '101719', '00', '', '', '0', '', '$2a$10$WrlCil3AobnNru3rWFmeHufMvnFTXhlWFglrb3PbK6yz1Fj7KlFKe', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:18', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (292, 111, '101776', '101776', '00', '', '', '0', '', '$2a$10$D8f5PDT8dLcxH0oA1FwLWOmLiZ8FlF36uUd3.owMBAM.nAtvhOIpy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:18', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (293, 111, '101873', '101873', '00', '', '', '0', '', '$2a$10$/lG2gkKmXtjTP7.CQTf2b.r2kLniG7Omvgsclw2T9p7bBNi31r76i', '0', '0', '127.0.0.1', '2024-10-22 14:54:47', 'admin', '2024-10-22 14:23:18', '', '2024-10-22 14:54:47', NULL);
INSERT INTO `sys_user` VALUES (294, 111, '102053', '102053', '00', '', '', '0', '', '$2a$10$F7J.Wck5mlphtOxwaDUo1eEF8qojrf2aPDdCOIiYzZz/UbxX8vNz2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:18', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (295, 111, '600000', '600000', '00', '', '', '0', '', '$2a$10$JeBY1LVoez10ij2IGsA/ueeJmZS5x.rIG3CERCL9iz48IHyVP3HMm', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:18', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (296, 111, '600001', '600001', '00', '', '', '0', '', '$2a$10$AAsPlnfBgSAWJPQmQopoB.2pirWHoWQSb0V/Y5X4gqlxth0lkk25C', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:18', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (297, 111, '600002', '600002', '00', '', '', '0', '', '$2a$10$fV8AzFDNnD9EIcgkhSFZVuBsUyzghM.YpL4/ciVxDJXDIolx8nX2u', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:19', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (298, 111, '600003', '600003', '00', '', '', '0', '', '$2a$10$rdv4D0xzdi5vwEYeZBcEguCJhMGf6JP2LBa3zKII8DmJF10mSIgF6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:19', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (299, 111, '600004', '600004', '00', '', '', '0', '', '$2a$10$tVzcmY/P116CuA/Jqzi/tuemM8YrvXOexLBXv37nzeNGsmoueufgO', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:19', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (300, 111, '600005', '600005', '00', '', '', '0', '', '$2a$10$saJ4PAKZnRI3/QpziujjSuOxV/DjCsf1rZE..UtdYy8Ak7.PO6gJK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:19', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (301, 111, '600008', '600008', '00', '', '', '0', '', '$2a$10$jxsEwvOns72FIsnBX.mw0.5C7WCnzaSTM4jGncN.fx46UXhlWPJf.', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:19', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (302, 111, '600011', '600011', '00', '', '', '0', '', '$2a$10$/10/yYxO5/8z3bBqvZCzzudfQ5aFLwYw7LoZgqeHra.tKD/SQj.3a', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:19', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (303, 111, '600012', '600012', '00', '', '', '0', '', '$2a$10$JxvCezH8OOvKTafLAJnc5uCztHDiaD1OjZyO4OMTpiQv5dSzisXsK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:19', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (304, 111, '600013', '600013', '00', '', '', '0', '', '$2a$10$W6bSo.DC6JJKTFef/VpdrOllNXfMP3GwCiDDbKyfErKjznAcQA7XS', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:19', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (305, 111, '600015', '600015', '00', '', '', '0', '', '$2a$10$VgykWqU0Aj8NcLLVpaUlk.pHM.y5TMXxphKuGmWya3n.7hFDnI7GO', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:19', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (306, 111, '600016', '600016', '00', '', '', '0', '', '$2a$10$HA6tLhMjY46ytiIr0sT/oeYRU1DMYIWayDwoPmHJ0UqftdzUn.buy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:20', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (307, 111, '600017', '600017', '00', '', '', '0', '', '$2a$10$z9yZZeCO4e4W6BBwL715qeyNTInRrmdVnUKR145ocAHx7n57yqCGe', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:20', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (308, 111, '600018', '600018', '00', '', '', '0', '', '$2a$10$Vg.u6umoPE69vblWwP1WbeSDbJ4nYHcx5xt250I07.0tuKcpx9bKi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:20', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (309, 111, '600019', '600019', '00', '', '', '0', '', '$2a$10$DYeiUAm0om/QZK3nvZRhGesur96kFDGAdkehFXTV.ajjsf9LHx4AC', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:20', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (310, 111, '600030', '600030', '00', '', '', '0', '', '$2a$10$oK7xmP7PjvrGzvWQ9UCENeebwref.ovibj0thE.fdNPY3qP1gYAzm', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:20', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (311, 111, '600031', '600031', '00', '', '', '0', '', '$2a$10$YcEwgRsRSfviEWqlwWt/auzERFSBFAXQ7THulYihm/xLdcl5l2iy6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:20', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (312, 111, '600034', '600034', '00', '', '', '0', '', '$2a$10$0sZtwsND67DL/AFXEaTYge2G/rcvGND39n0L.lWinFmz.7IESrfTe', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:20', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (313, 111, '600037', '600037', '00', '', '', '0', '', '$2a$10$EqElHw8XhO4FZqkCS255gOYsCVyalOwtfZ7B9iUTebigR2PI.WFNK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:20', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (314, 111, '600038', '600038', '00', '', '', '0', '', '$2a$10$QcILGXQMK9m28MOpPy.PFeIxpn5L.d9pLhi4IVx0Jsp9cMN8RqfJS', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:20', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (315, 111, '600040', '600040', '00', '', '', '0', '', '$2a$10$U3Ftz2mqTugheRPqcPPq9OjKh.xjntTr8a2Wt.nalpMaQZ60kNzWK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:21', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (316, 111, '600044', '600044', '00', '', '', '0', '', '$2a$10$O/pZf/SOGTMEBLzTrO8RE.K.4SZBxYXoAO9u72O0Qway9Slh3pmFC', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:21', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (317, 111, '600046', '600046', '00', '', '', '0', '', '$2a$10$ikPIzyRq3iLVFPdNufhRMOPnLBVwNEqWUlD/o4h7nd3ELsF9dstrK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:21', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (318, 111, '600047', '600047', '00', '', '', '0', '', '$2a$10$QCyPf/veayrAA2j8/8PCGubvR4KGLPs9SmRKA/3LuF3Cb8hpNHtDe', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:21', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (319, 111, '600048', '600048', '00', '', '', '0', '', '$2a$10$cO7p6uLEg4NH9ucAqn2gc.bUBH1FBhmkYxdaEtXxfMbJE8/N7EH2u', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:21', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (320, 111, '600049', '600049', '00', '', '', '0', '', '$2a$10$572Cwj6Hgltuy5I1hq3L/eeD8Xeuwfi.DhIePXQkCsE4fUM56awjO', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:21', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (321, 111, '600050', '600050', '00', '', '', '0', '', '$2a$10$1/.u/DRh02VfHAszzJvwF.QplSd3wU9A6E6Pso6Pv3p6.hNNXKuWq', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:21', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (322, 111, '600051', '600051', '00', '', '', '0', '', '$2a$10$.B//OinlWIuBbd9WDf5Td.XZ8woYhc0uPVY72ZKMF.HTzxXmDQboi', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:21', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (323, 111, '600053', '600053', '00', '', '', '0', '', '$2a$10$kB0EX1gFDRdjCGPpLWZr3uzFCa2zB7OkRAjDeprTehnFbtsbaQYlC', '0', '0', '192.168.10.42', '2024-11-06 15:16:39', 'admin', '2024-10-22 14:23:21', '', '2024-11-06 15:16:38', NULL);
INSERT INTO `sys_user` VALUES (324, 111, '600054', '600054', '00', '', '', '0', '', '$2a$10$ONrN2m4QFGQP7zUBh4sO..ZSuLPyKVWUI98GG8FK8jOw50WnHQpCC', '0', '0', '127.0.0.1', '2024-10-22 14:31:56', 'admin', '2024-10-22 14:23:22', '', '2024-10-22 14:31:55', NULL);
INSERT INTO `sys_user` VALUES (325, 111, '600055', '600055', '00', '', '', '0', '', '$2a$10$G6VwOJSiDTkP5DJVERcIqu3VhJ.WteiO5Iwn2WCwMc0CdUV1IkrPC', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:22', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (326, 111, '600057', '600057', '00', '', '', '0', '', '$2a$10$HNS1/Ygb7lL2NRtbzV9P7eEzhqyiqMnGA7QgrA1gKwTo7xvLs2yOC', '0', '0', '192.168.10.42', '2024-11-06 15:19:57', 'admin', '2024-10-22 14:23:22', '', '2024-11-06 15:19:57', NULL);
INSERT INTO `sys_user` VALUES (327, 111, '600058', '600058', '00', '', '', '0', '', '$2a$10$XqQQv3vCdVc912TpJxMjduRuOaRGJnQlh3Z9RDh1XsIt0alvEo5eq', '0', '0', '192.168.10.42', '2024-11-06 15:20:15', 'admin', '2024-10-22 14:23:22', '', '2024-11-06 15:20:15', NULL);
INSERT INTO `sys_user` VALUES (328, 111, '600059', '600059', '00', '', '', '0', '', '$2a$10$DiRh17Aanqd8mtGR6TLiS.2kk4CKzqlv3BEJyJz79smthHnZJv53y', '0', '0', '', '0000-00-00 00:00:00', 'admin', '2024-10-22 14:23:22', '', '2024-11-06 15:21:38', NULL);
INSERT INTO `sys_user` VALUES (329, 111, '600060', '600060', '00', '', '', '0', '', '$2a$10$/fDv1qrAzD7W2Bmsspl5r.23kyMXbX1naNPy4VV39cYIDudnbN3zO', '0', '0', '127.0.0.1', '2024-11-06 15:30:17', 'admin', '2024-10-22 14:23:22', '', '2024-11-06 15:30:16', NULL);
INSERT INTO `sys_user` VALUES (330, 111, '600061', '600061', '00', '', '', '0', '', '$2a$10$2VvsABY.pTMTrYlH6o8qkeDicxC4Enm3pVOWc7u9R6kjIOJlRD0nW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:22', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (331, 111, '600062', '600062', '00', '', '', '0', '', '$2a$10$uY4qxECodyFTsPBnFUlUdug1d/x999lG1L2gPZU6wHTa0LMBp5TGu', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:22', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (332, 111, '600063', '600063', '00', '', '', '0', '', '$2a$10$qCRPU1dIoKBMIZ0t0K7p8On76grEZGitYZ6lkZ7wx2XxnuM3SHCbm', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:22', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (333, 111, '600065', '600065', '00', '', '', '0', '', '$2a$10$3HWthj8zxvEcjQ82ccrZ3.VyV3Kd.qiI6tzw4N0MArsHesHAoIe36', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (334, 111, '600066', '600066', '00', '', '', '0', '', '$2a$10$W3at0piBhBHr6bfUZPUVOuLw.j3MtYkKaedVf0STbLgYoJ59TVExC', '0', '0', '10.10.10.157', '2024-11-06 15:39:48', 'admin', '2024-10-22 14:23:23', '', '2024-11-06 15:39:47', NULL);
INSERT INTO `sys_user` VALUES (335, 111, '600067', '600067', '00', '', '', '0', '', '$2a$10$iq.01Y144w1yuBYpJDLLkOrIVw6q8LXEQwEvICDnlIiW0IzF302X6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (336, 111, '600068', '600068', '00', '', '', '0', '', '$2a$10$zMZLjexmCTVcAIjk.eKHgeqbRJMliADLjkD0xxe3do.zz5YqBzBii', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (337, 111, '600069', '600069', '00', '', '', '0', '', '$2a$10$Y5A.8biK7cCE6.zURh5UgeSakDv6L0izB9/M1S7oYnlBSsxyM3rcO', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (338, 111, '600070', '600070', '00', '', '', '0', '', '$2a$10$hhBwCv2XmPcQd7WJxxGdP.B91RX92xmZNOJk3yjVXFchG5yxKpROG', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (339, 111, '600071', '600071', '00', '', '', '0', '', '$2a$10$Zl8j/taUfXgdCix4FQYSZ./WHQzmaktLecg3OnGLvIPB/jlOq9czC', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (340, 111, '600072', '600072', '00', '', '', '0', '', '$2a$10$gflLBaJ4SPwZRSYE2tSakuLtAY7VMBXWT1lukRZa0g2dtBqCdrtfa', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (341, 111, '600073', '600073', '00', '', '', '0', '', '$2a$10$RV1mY0QUpScrVPGV8sCwWeEY5pfaIx2hbVbPNSVa2rkO9t5euyrxe', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (342, 111, '600074', '600074', '00', '', '', '0', '', '$2a$10$izchutZba/AFXeNii9ivke3Mq.zqvD8hCQir2FxHUtGDkP.Ae.Pvu', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:24', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (343, 111, '600075', '600075', '00', '', '', '0', '', '$2a$10$ctS8TCWmt8NZHIV9houCHuX2luZp.RmNg9ZFVrX4hWWs9M.meh5hy', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:24', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (344, 111, '600077', '600077', '00', '', '', '0', '', '$2a$10$qpRL7R0IePtKQ4vPv3117eRWeCyKKD7WgtuAKg3dkA3jUdmkZFq9e', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:24', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (345, 111, '600081', '600081', '00', '', '', '0', '', '$2a$10$ucKPKrWPHf6LUlWWCJseAunkLWRNnKeJkNKuQtJHM2KI.a/OtX3/6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:24', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (346, 111, '600082', '600082', '00', '', '', '0', '', '$2a$10$V64THY52g9khddHqdYDlCuwsrKV7jz6FErxzMrCLYX4JyyszfjYrK', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:24', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (347, 111, '600083', '600083', '00', '', '', '0', '', '$2a$10$LXrs9xs1Vh/Fn6Egn.OFTOSX1L/dzq5CeNlpaBN20fdnoo19NmghW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:24', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (348, 111, '600084', '600084', '00', '', '', '0', '', '$2a$10$yuQ53Cw7RSfOprFzrz3c7esugczBatnShRI0dLlaH3Z5MzGrWHIR2', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:24', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (349, 111, '600086', '600086', '00', '', '', '0', '', '$2a$10$PxD4BwgrBdDzU1UrnytpTOoiTbRWgxy0orw4DUnF6PM0oaEA8t6ne', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:24', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (350, 111, '600087', '600087', '00', '', '', '0', '', '$2a$10$tQgFZG6fY75U1BLfDSBsQuMEnCEE2x41cD1.hzGAWUMeRvoKK2NKa', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:24', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (351, 111, '600088', '600088', '00', '', '', '0', '', '$2a$10$fJA/FFVIogvxYYFtVOLUUuOxyUrv8jilPWZYEC.cpA6HHuHqF3SK6', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:25', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (352, 111, '600089', '600089', '00', '', '', '0', '', '$2a$10$L/ZtK99gRoHLvuUHTfU9oOVPRU4ub3LdOLXSjMWAnBDy81uTH4JJq', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:25', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (353, 111, '600090', '600090', '00', '', '', '0', '', '$2a$10$.9X7s.Na6pv5fgV8AKaLuujMLwxUcoBJvRDb1HpVEaF8HNVRE9nyW', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:25', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (354, 111, '600094', '600094', '00', '', '', '0', '', '$2a$10$Kg6SNnKkj5jetjsgyy.adOv/IXJXx07F1RdQtpkKZ4LdotHEYmsUm', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:25', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (355, 111, '600095', '600095', '00', '', '', '0', '', '$2a$10$uO6MU5MTXzjG7qdH0llodeKFyfAwu0LQCjF05IoLFoFWfHulZmroe', '0', '0', '', NULL, 'admin', '2024-10-22 14:23:25', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (356, 111, '600118', '600118', '00', '', '', '0', '', '$2a$10$2k2WGBQsRUxY2vvC7LcMn.jujB3K55ZKp5FLZg856smKP3k.kFW/6', '0', '0', '127.0.0.1', '2024-11-06 15:17:58', 'admin', '2024-10-22 14:23:25', '', '2024-11-06 15:17:58', NULL);
INSERT INTO `sys_user` VALUES (357, 111, '600130', '600130', '00', '', '', '0', '', '$2a$10$/PaXIsfw9YKLWAMBQUfAleNe3uBIMoaUG/NP3wZecVfYrbWJtvWAG', '0', '0', '127.0.0.1', '2024-10-22 14:30:56', 'admin', '2024-10-22 14:23:25', '', '2024-10-22 14:30:56', NULL);
INSERT INTO `sys_user` VALUES (358, 116, 'B05001', 'B05001', '00', '', '', '0', '', '$2a$10$mpJvEYqh4tFNLO0/UIUfM.v22hEnKn7wTDc17SpzXvUSkoQpf4cde', '0', '0', '127.0.0.1', '2024-11-21 09:22:09', 'admin', '2024-11-19 16:19:03', '', '2024-11-21 09:22:09', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (3, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 3);
INSERT INTO `sys_user_role` VALUES (4, 4);
INSERT INTO `sys_user_role` VALUES (5, 8);
INSERT INTO `sys_user_role` VALUES (6, 7);
INSERT INTO `sys_user_role` VALUES (8, 3);
INSERT INTO `sys_user_role` VALUES (9, 3);
INSERT INTO `sys_user_role` VALUES (10, 3);
INSERT INTO `sys_user_role` VALUES (11, 3);
INSERT INTO `sys_user_role` VALUES (12, 3);
INSERT INTO `sys_user_role` VALUES (13, 3);
INSERT INTO `sys_user_role` VALUES (14, 3);
INSERT INTO `sys_user_role` VALUES (15, 3);
INSERT INTO `sys_user_role` VALUES (16, 3);
INSERT INTO `sys_user_role` VALUES (17, 3);
INSERT INTO `sys_user_role` VALUES (18, 3);
INSERT INTO `sys_user_role` VALUES (19, 3);
INSERT INTO `sys_user_role` VALUES (20, 3);
INSERT INTO `sys_user_role` VALUES (21, 3);
INSERT INTO `sys_user_role` VALUES (22, 3);
INSERT INTO `sys_user_role` VALUES (23, 3);
INSERT INTO `sys_user_role` VALUES (24, 3);
INSERT INTO `sys_user_role` VALUES (25, 3);
INSERT INTO `sys_user_role` VALUES (26, 3);
INSERT INTO `sys_user_role` VALUES (27, 3);
INSERT INTO `sys_user_role` VALUES (28, 3);
INSERT INTO `sys_user_role` VALUES (29, 3);
INSERT INTO `sys_user_role` VALUES (30, 3);
INSERT INTO `sys_user_role` VALUES (31, 3);
INSERT INTO `sys_user_role` VALUES (32, 3);
INSERT INTO `sys_user_role` VALUES (33, 3);
INSERT INTO `sys_user_role` VALUES (34, 3);
INSERT INTO `sys_user_role` VALUES (35, 3);
INSERT INTO `sys_user_role` VALUES (36, 3);
INSERT INTO `sys_user_role` VALUES (37, 3);
INSERT INTO `sys_user_role` VALUES (38, 3);
INSERT INTO `sys_user_role` VALUES (39, 3);
INSERT INTO `sys_user_role` VALUES (40, 3);
INSERT INTO `sys_user_role` VALUES (41, 3);
INSERT INTO `sys_user_role` VALUES (42, 3);
INSERT INTO `sys_user_role` VALUES (43, 3);
INSERT INTO `sys_user_role` VALUES (44, 3);
INSERT INTO `sys_user_role` VALUES (45, 3);
INSERT INTO `sys_user_role` VALUES (46, 3);
INSERT INTO `sys_user_role` VALUES (47, 3);
INSERT INTO `sys_user_role` VALUES (48, 3);
INSERT INTO `sys_user_role` VALUES (49, 3);
INSERT INTO `sys_user_role` VALUES (50, 3);
INSERT INTO `sys_user_role` VALUES (51, 3);
INSERT INTO `sys_user_role` VALUES (52, 3);
INSERT INTO `sys_user_role` VALUES (53, 3);
INSERT INTO `sys_user_role` VALUES (54, 3);
INSERT INTO `sys_user_role` VALUES (55, 3);
INSERT INTO `sys_user_role` VALUES (56, 3);
INSERT INTO `sys_user_role` VALUES (57, 3);
INSERT INTO `sys_user_role` VALUES (58, 3);
INSERT INTO `sys_user_role` VALUES (59, 3);
INSERT INTO `sys_user_role` VALUES (60, 3);
INSERT INTO `sys_user_role` VALUES (61, 3);
INSERT INTO `sys_user_role` VALUES (62, 3);
INSERT INTO `sys_user_role` VALUES (63, 3);
INSERT INTO `sys_user_role` VALUES (64, 3);
INSERT INTO `sys_user_role` VALUES (65, 3);
INSERT INTO `sys_user_role` VALUES (66, 3);
INSERT INTO `sys_user_role` VALUES (67, 3);
INSERT INTO `sys_user_role` VALUES (68, 3);
INSERT INTO `sys_user_role` VALUES (69, 3);
INSERT INTO `sys_user_role` VALUES (70, 3);
INSERT INTO `sys_user_role` VALUES (71, 3);
INSERT INTO `sys_user_role` VALUES (72, 3);
INSERT INTO `sys_user_role` VALUES (73, 3);
INSERT INTO `sys_user_role` VALUES (74, 3);
INSERT INTO `sys_user_role` VALUES (75, 3);
INSERT INTO `sys_user_role` VALUES (76, 3);
INSERT INTO `sys_user_role` VALUES (77, 3);
INSERT INTO `sys_user_role` VALUES (78, 3);
INSERT INTO `sys_user_role` VALUES (79, 3);
INSERT INTO `sys_user_role` VALUES (80, 3);
INSERT INTO `sys_user_role` VALUES (81, 3);
INSERT INTO `sys_user_role` VALUES (82, 3);
INSERT INTO `sys_user_role` VALUES (83, 3);
INSERT INTO `sys_user_role` VALUES (84, 3);
INSERT INTO `sys_user_role` VALUES (85, 3);
INSERT INTO `sys_user_role` VALUES (86, 3);
INSERT INTO `sys_user_role` VALUES (87, 3);
INSERT INTO `sys_user_role` VALUES (88, 3);
INSERT INTO `sys_user_role` VALUES (89, 3);
INSERT INTO `sys_user_role` VALUES (90, 3);
INSERT INTO `sys_user_role` VALUES (91, 3);
INSERT INTO `sys_user_role` VALUES (92, 3);
INSERT INTO `sys_user_role` VALUES (93, 3);
INSERT INTO `sys_user_role` VALUES (94, 3);
INSERT INTO `sys_user_role` VALUES (95, 3);
INSERT INTO `sys_user_role` VALUES (96, 3);
INSERT INTO `sys_user_role` VALUES (97, 3);
INSERT INTO `sys_user_role` VALUES (98, 3);
INSERT INTO `sys_user_role` VALUES (99, 3);
INSERT INTO `sys_user_role` VALUES (100, 3);
INSERT INTO `sys_user_role` VALUES (101, 3);
INSERT INTO `sys_user_role` VALUES (102, 3);
INSERT INTO `sys_user_role` VALUES (103, 3);
INSERT INTO `sys_user_role` VALUES (104, 3);
INSERT INTO `sys_user_role` VALUES (105, 3);
INSERT INTO `sys_user_role` VALUES (106, 3);
INSERT INTO `sys_user_role` VALUES (107, 3);
INSERT INTO `sys_user_role` VALUES (108, 3);
INSERT INTO `sys_user_role` VALUES (109, 3);
INSERT INTO `sys_user_role` VALUES (110, 3);
INSERT INTO `sys_user_role` VALUES (111, 3);
INSERT INTO `sys_user_role` VALUES (112, 3);
INSERT INTO `sys_user_role` VALUES (113, 3);
INSERT INTO `sys_user_role` VALUES (114, 3);
INSERT INTO `sys_user_role` VALUES (115, 3);
INSERT INTO `sys_user_role` VALUES (116, 3);
INSERT INTO `sys_user_role` VALUES (117, 3);
INSERT INTO `sys_user_role` VALUES (118, 3);
INSERT INTO `sys_user_role` VALUES (119, 3);
INSERT INTO `sys_user_role` VALUES (120, 3);
INSERT INTO `sys_user_role` VALUES (121, 3);
INSERT INTO `sys_user_role` VALUES (122, 3);
INSERT INTO `sys_user_role` VALUES (123, 3);
INSERT INTO `sys_user_role` VALUES (124, 3);
INSERT INTO `sys_user_role` VALUES (125, 3);
INSERT INTO `sys_user_role` VALUES (126, 3);
INSERT INTO `sys_user_role` VALUES (127, 3);
INSERT INTO `sys_user_role` VALUES (128, 3);
INSERT INTO `sys_user_role` VALUES (129, 3);
INSERT INTO `sys_user_role` VALUES (130, 3);
INSERT INTO `sys_user_role` VALUES (131, 3);
INSERT INTO `sys_user_role` VALUES (132, 3);
INSERT INTO `sys_user_role` VALUES (133, 3);
INSERT INTO `sys_user_role` VALUES (134, 3);
INSERT INTO `sys_user_role` VALUES (135, 3);
INSERT INTO `sys_user_role` VALUES (136, 3);
INSERT INTO `sys_user_role` VALUES (137, 3);
INSERT INTO `sys_user_role` VALUES (138, 3);
INSERT INTO `sys_user_role` VALUES (139, 3);
INSERT INTO `sys_user_role` VALUES (140, 3);
INSERT INTO `sys_user_role` VALUES (141, 3);
INSERT INTO `sys_user_role` VALUES (142, 3);
INSERT INTO `sys_user_role` VALUES (143, 3);
INSERT INTO `sys_user_role` VALUES (144, 3);
INSERT INTO `sys_user_role` VALUES (145, 3);
INSERT INTO `sys_user_role` VALUES (146, 3);
INSERT INTO `sys_user_role` VALUES (147, 3);
INSERT INTO `sys_user_role` VALUES (148, 3);
INSERT INTO `sys_user_role` VALUES (149, 3);
INSERT INTO `sys_user_role` VALUES (150, 3);
INSERT INTO `sys_user_role` VALUES (151, 3);
INSERT INTO `sys_user_role` VALUES (152, 3);
INSERT INTO `sys_user_role` VALUES (153, 3);
INSERT INTO `sys_user_role` VALUES (154, 3);
INSERT INTO `sys_user_role` VALUES (155, 3);
INSERT INTO `sys_user_role` VALUES (156, 3);
INSERT INTO `sys_user_role` VALUES (157, 3);
INSERT INTO `sys_user_role` VALUES (158, 3);
INSERT INTO `sys_user_role` VALUES (159, 3);
INSERT INTO `sys_user_role` VALUES (160, 3);
INSERT INTO `sys_user_role` VALUES (161, 3);
INSERT INTO `sys_user_role` VALUES (162, 3);
INSERT INTO `sys_user_role` VALUES (163, 3);
INSERT INTO `sys_user_role` VALUES (164, 3);
INSERT INTO `sys_user_role` VALUES (165, 3);
INSERT INTO `sys_user_role` VALUES (166, 3);
INSERT INTO `sys_user_role` VALUES (167, 3);
INSERT INTO `sys_user_role` VALUES (168, 3);
INSERT INTO `sys_user_role` VALUES (169, 3);
INSERT INTO `sys_user_role` VALUES (170, 3);
INSERT INTO `sys_user_role` VALUES (171, 3);
INSERT INTO `sys_user_role` VALUES (172, 3);
INSERT INTO `sys_user_role` VALUES (173, 3);
INSERT INTO `sys_user_role` VALUES (174, 3);
INSERT INTO `sys_user_role` VALUES (175, 3);
INSERT INTO `sys_user_role` VALUES (176, 3);
INSERT INTO `sys_user_role` VALUES (177, 3);
INSERT INTO `sys_user_role` VALUES (178, 3);
INSERT INTO `sys_user_role` VALUES (179, 3);
INSERT INTO `sys_user_role` VALUES (180, 3);
INSERT INTO `sys_user_role` VALUES (181, 3);
INSERT INTO `sys_user_role` VALUES (182, 3);
INSERT INTO `sys_user_role` VALUES (183, 3);
INSERT INTO `sys_user_role` VALUES (184, 3);
INSERT INTO `sys_user_role` VALUES (185, 3);
INSERT INTO `sys_user_role` VALUES (186, 3);
INSERT INTO `sys_user_role` VALUES (187, 3);
INSERT INTO `sys_user_role` VALUES (188, 3);
INSERT INTO `sys_user_role` VALUES (189, 3);
INSERT INTO `sys_user_role` VALUES (190, 3);
INSERT INTO `sys_user_role` VALUES (191, 3);
INSERT INTO `sys_user_role` VALUES (192, 3);
INSERT INTO `sys_user_role` VALUES (193, 3);
INSERT INTO `sys_user_role` VALUES (194, 3);
INSERT INTO `sys_user_role` VALUES (195, 3);
INSERT INTO `sys_user_role` VALUES (196, 3);
INSERT INTO `sys_user_role` VALUES (197, 3);
INSERT INTO `sys_user_role` VALUES (198, 3);
INSERT INTO `sys_user_role` VALUES (199, 3);
INSERT INTO `sys_user_role` VALUES (200, 3);
INSERT INTO `sys_user_role` VALUES (201, 3);
INSERT INTO `sys_user_role` VALUES (202, 3);
INSERT INTO `sys_user_role` VALUES (203, 3);
INSERT INTO `sys_user_role` VALUES (204, 3);
INSERT INTO `sys_user_role` VALUES (205, 3);
INSERT INTO `sys_user_role` VALUES (206, 3);
INSERT INTO `sys_user_role` VALUES (207, 3);
INSERT INTO `sys_user_role` VALUES (208, 3);
INSERT INTO `sys_user_role` VALUES (209, 3);
INSERT INTO `sys_user_role` VALUES (210, 3);
INSERT INTO `sys_user_role` VALUES (211, 3);
INSERT INTO `sys_user_role` VALUES (212, 3);
INSERT INTO `sys_user_role` VALUES (213, 3);
INSERT INTO `sys_user_role` VALUES (214, 3);
INSERT INTO `sys_user_role` VALUES (215, 3);
INSERT INTO `sys_user_role` VALUES (216, 3);
INSERT INTO `sys_user_role` VALUES (217, 3);
INSERT INTO `sys_user_role` VALUES (218, 3);
INSERT INTO `sys_user_role` VALUES (219, 3);
INSERT INTO `sys_user_role` VALUES (220, 3);
INSERT INTO `sys_user_role` VALUES (221, 3);
INSERT INTO `sys_user_role` VALUES (222, 3);
INSERT INTO `sys_user_role` VALUES (223, 3);
INSERT INTO `sys_user_role` VALUES (224, 3);
INSERT INTO `sys_user_role` VALUES (225, 3);
INSERT INTO `sys_user_role` VALUES (226, 3);
INSERT INTO `sys_user_role` VALUES (227, 3);
INSERT INTO `sys_user_role` VALUES (228, 3);
INSERT INTO `sys_user_role` VALUES (229, 3);
INSERT INTO `sys_user_role` VALUES (230, 3);
INSERT INTO `sys_user_role` VALUES (231, 3);
INSERT INTO `sys_user_role` VALUES (232, 3);
INSERT INTO `sys_user_role` VALUES (233, 3);
INSERT INTO `sys_user_role` VALUES (234, 3);
INSERT INTO `sys_user_role` VALUES (235, 3);
INSERT INTO `sys_user_role` VALUES (236, 3);
INSERT INTO `sys_user_role` VALUES (237, 3);
INSERT INTO `sys_user_role` VALUES (238, 3);
INSERT INTO `sys_user_role` VALUES (239, 3);
INSERT INTO `sys_user_role` VALUES (240, 3);
INSERT INTO `sys_user_role` VALUES (241, 3);
INSERT INTO `sys_user_role` VALUES (242, 3);
INSERT INTO `sys_user_role` VALUES (243, 3);
INSERT INTO `sys_user_role` VALUES (244, 3);
INSERT INTO `sys_user_role` VALUES (245, 3);
INSERT INTO `sys_user_role` VALUES (246, 3);
INSERT INTO `sys_user_role` VALUES (247, 3);
INSERT INTO `sys_user_role` VALUES (248, 3);
INSERT INTO `sys_user_role` VALUES (249, 3);
INSERT INTO `sys_user_role` VALUES (250, 3);
INSERT INTO `sys_user_role` VALUES (251, 3);
INSERT INTO `sys_user_role` VALUES (252, 3);
INSERT INTO `sys_user_role` VALUES (253, 3);
INSERT INTO `sys_user_role` VALUES (254, 3);
INSERT INTO `sys_user_role` VALUES (255, 3);
INSERT INTO `sys_user_role` VALUES (256, 3);
INSERT INTO `sys_user_role` VALUES (257, 3);
INSERT INTO `sys_user_role` VALUES (258, 3);
INSERT INTO `sys_user_role` VALUES (259, 3);
INSERT INTO `sys_user_role` VALUES (260, 3);
INSERT INTO `sys_user_role` VALUES (261, 3);
INSERT INTO `sys_user_role` VALUES (262, 3);
INSERT INTO `sys_user_role` VALUES (263, 3);
INSERT INTO `sys_user_role` VALUES (264, 3);
INSERT INTO `sys_user_role` VALUES (265, 3);
INSERT INTO `sys_user_role` VALUES (266, 3);
INSERT INTO `sys_user_role` VALUES (267, 3);
INSERT INTO `sys_user_role` VALUES (268, 3);
INSERT INTO `sys_user_role` VALUES (269, 3);
INSERT INTO `sys_user_role` VALUES (270, 3);
INSERT INTO `sys_user_role` VALUES (271, 3);
INSERT INTO `sys_user_role` VALUES (272, 3);
INSERT INTO `sys_user_role` VALUES (273, 3);
INSERT INTO `sys_user_role` VALUES (274, 3);
INSERT INTO `sys_user_role` VALUES (275, 3);
INSERT INTO `sys_user_role` VALUES (276, 3);
INSERT INTO `sys_user_role` VALUES (277, 3);
INSERT INTO `sys_user_role` VALUES (278, 3);
INSERT INTO `sys_user_role` VALUES (279, 3);
INSERT INTO `sys_user_role` VALUES (280, 3);
INSERT INTO `sys_user_role` VALUES (281, 3);
INSERT INTO `sys_user_role` VALUES (282, 3);
INSERT INTO `sys_user_role` VALUES (283, 3);
INSERT INTO `sys_user_role` VALUES (284, 3);
INSERT INTO `sys_user_role` VALUES (285, 3);
INSERT INTO `sys_user_role` VALUES (286, 3);
INSERT INTO `sys_user_role` VALUES (287, 3);
INSERT INTO `sys_user_role` VALUES (288, 3);
INSERT INTO `sys_user_role` VALUES (289, 3);
INSERT INTO `sys_user_role` VALUES (290, 3);
INSERT INTO `sys_user_role` VALUES (291, 3);
INSERT INTO `sys_user_role` VALUES (292, 3);
INSERT INTO `sys_user_role` VALUES (293, 3);
INSERT INTO `sys_user_role` VALUES (294, 3);
INSERT INTO `sys_user_role` VALUES (295, 3);
INSERT INTO `sys_user_role` VALUES (296, 3);
INSERT INTO `sys_user_role` VALUES (297, 3);
INSERT INTO `sys_user_role` VALUES (298, 3);
INSERT INTO `sys_user_role` VALUES (299, 3);
INSERT INTO `sys_user_role` VALUES (300, 3);
INSERT INTO `sys_user_role` VALUES (301, 3);
INSERT INTO `sys_user_role` VALUES (302, 3);
INSERT INTO `sys_user_role` VALUES (303, 3);
INSERT INTO `sys_user_role` VALUES (304, 3);
INSERT INTO `sys_user_role` VALUES (305, 3);
INSERT INTO `sys_user_role` VALUES (306, 3);
INSERT INTO `sys_user_role` VALUES (307, 3);
INSERT INTO `sys_user_role` VALUES (308, 3);
INSERT INTO `sys_user_role` VALUES (309, 3);
INSERT INTO `sys_user_role` VALUES (310, 3);
INSERT INTO `sys_user_role` VALUES (311, 3);
INSERT INTO `sys_user_role` VALUES (312, 3);
INSERT INTO `sys_user_role` VALUES (313, 3);
INSERT INTO `sys_user_role` VALUES (314, 3);
INSERT INTO `sys_user_role` VALUES (315, 3);
INSERT INTO `sys_user_role` VALUES (316, 3);
INSERT INTO `sys_user_role` VALUES (317, 3);
INSERT INTO `sys_user_role` VALUES (318, 3);
INSERT INTO `sys_user_role` VALUES (319, 3);
INSERT INTO `sys_user_role` VALUES (320, 3);
INSERT INTO `sys_user_role` VALUES (321, 3);
INSERT INTO `sys_user_role` VALUES (322, 3);
INSERT INTO `sys_user_role` VALUES (323, 3);
INSERT INTO `sys_user_role` VALUES (324, 3);
INSERT INTO `sys_user_role` VALUES (325, 3);
INSERT INTO `sys_user_role` VALUES (326, 3);
INSERT INTO `sys_user_role` VALUES (327, 3);
INSERT INTO `sys_user_role` VALUES (328, 3);
INSERT INTO `sys_user_role` VALUES (329, 3);
INSERT INTO `sys_user_role` VALUES (330, 3);
INSERT INTO `sys_user_role` VALUES (331, 3);
INSERT INTO `sys_user_role` VALUES (332, 3);
INSERT INTO `sys_user_role` VALUES (333, 3);
INSERT INTO `sys_user_role` VALUES (334, 3);
INSERT INTO `sys_user_role` VALUES (335, 3);
INSERT INTO `sys_user_role` VALUES (336, 3);
INSERT INTO `sys_user_role` VALUES (337, 3);
INSERT INTO `sys_user_role` VALUES (338, 3);
INSERT INTO `sys_user_role` VALUES (339, 3);
INSERT INTO `sys_user_role` VALUES (340, 3);
INSERT INTO `sys_user_role` VALUES (341, 3);
INSERT INTO `sys_user_role` VALUES (342, 3);
INSERT INTO `sys_user_role` VALUES (343, 3);
INSERT INTO `sys_user_role` VALUES (344, 3);
INSERT INTO `sys_user_role` VALUES (345, 3);
INSERT INTO `sys_user_role` VALUES (346, 3);
INSERT INTO `sys_user_role` VALUES (347, 3);
INSERT INTO `sys_user_role` VALUES (348, 3);
INSERT INTO `sys_user_role` VALUES (349, 3);
INSERT INTO `sys_user_role` VALUES (350, 3);
INSERT INTO `sys_user_role` VALUES (351, 3);
INSERT INTO `sys_user_role` VALUES (352, 3);
INSERT INTO `sys_user_role` VALUES (353, 3);
INSERT INTO `sys_user_role` VALUES (354, 3);
INSERT INTO `sys_user_role` VALUES (355, 3);
INSERT INTO `sys_user_role` VALUES (356, 3);
INSERT INTO `sys_user_role` VALUES (357, 3);
INSERT INTO `sys_user_role` VALUES (358, 9);

SET FOREIGN_KEY_CHECKS = 1;
