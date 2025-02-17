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

 Date: 28/11/2024 17:08:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `sys_user` VALUES (328, 111, '600059', '600059', '00', '', '', '0', '', '$2a$10$DiRh17Aanqd8mtGR6TLiS.2kk4CKzqlv3BEJyJz79smthHnZJv53y', '0', '0', '', '2024-11-28 17:08:02', 'admin', '2024-10-22 14:23:22', '', '2024-11-06 15:21:38', NULL);
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

SET FOREIGN_KEY_CHECKS = 1;
