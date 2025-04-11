/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : library-management

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 11/04/2025 19:16:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
                          `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
                          `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
                          `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
                          `updatetime` datetime NULL DEFAULT NULL,
                          `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
                          `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
                          PRIMARY KEY (`id`) USING BTREE,
                          UNIQUE INDEX `username_key`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '13988997788', NULL, '2025-04-01 22:21:26', '2025-04-01 20:37:20', 'ead08e95e9c867a2ee833c232bf55dbc', 1);
INSERT INTO `admin` VALUES (2, 'admin1', '13877889900', 'admin1@qq.com', '2025-04-01 21:28:42', '2025-04-01 20:39:41', '4509e55cdf7798c388d42f16713b84f6', 1);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
                         `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
                         `publish_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版日期',
                         `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者',
                         `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版社',
                         `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类',
                         `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标准码',
                         `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
                         `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                         `updatetime` datetime NULL DEFAULT NULL COMMENT '更新时间',
                         `score` int NULL DEFAULT NULL COMMENT '积分',
                         `nums` int NULL DEFAULT 0 COMMENT '数量',
                         PRIMARY KEY (`id`) USING BTREE,
                         UNIQUE INDEX `book_no_index`(`book_no` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '西游记幼儿美绘本（全10册）', '中国四大名著之一，西游记3-8岁版，彩绘注音，有声伴读。49款夸张角色，610张精美插图， 29个西游问答，10大智力挑战，以一种超有趣的方式亲近名著经典。', '2024-10-31', '吕进1', '少年儿童出版社', '历史文化 > 唐朝文化', 'ISBN：9787558911156', 'http://img3m7.ddimg.cn/10/30/25276987-1_w_44.jpg', '2025-03-31 21:35:14', '2025-04-11 00:00:00', 10, 1);
INSERT INTO `book` VALUES (6, 'Java学习指南', '2222', '2025-04-04', '222', '2', '历史文化 > 唐朝文化', 'JAVA_212113123', 'http://img3m7.ddimg.cn/10/30/25276987-1_w_44.jpg', '2025-03-31 21:35:14', '2025-04-11 00:00:00', 20, 100);
INSERT INTO `book` VALUES (7, '百科全书', '3333', '2025-03-31', '33', '333', '科技 > 高新科技 > 微分子科技', 'BKQS-233131', 'http://img3m7.ddimg.cn/10/30/25276987-1_w_44.jpg', '2025-03-31 21:35:14', '2025-04-11 00:00:00', 10, 97);
INSERT INTO `book` VALUES (8, '童话故事大全', '345', NULL, '55', '5', '科技 > 生物科技', 'THGS-10011122', 'https://c.wallhere.com/photos/6f/d2/Jujutsu_Kaisen_MCLO_LYDart_Mclo_Yuta_Okkotsu_Suguru_Geto_anime_boys_katana-2294390.jpg!d', '2025-03-31 21:35:14', '2025-04-11 00:00:00', 30, 91);
INSERT INTO `book` VALUES (10, '钢铁是怎样炼成的', NULL, NULL, NULL, NULL, '历史文化 > 现代文化', 'GT-121313213', 'https://c.wallhere.com/photos/63/4b/Jujutsu_Kaisen_MCLO_LYDart_Mclo_anime_boys_Megumi_Fushiguro_Mahoraga-2294394.jpg!d', '2025-04-01 22:09:08', '2025-04-11 00:00:00', 20, 100);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书名称',
                           `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书标准码',
                           `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户会员码',
                           `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
                           `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户联系方式',
                           `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                           `updatetime` datetime NULL DEFAULT NULL COMMENT '更新时间',
                           `score` int NULL DEFAULT NULL COMMENT '借书积分',
                           `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '已借出' COMMENT '借书状态',
                           `days` int NULL DEFAULT 1 COMMENT '借书天数',
                           `return_date` datetime NULL DEFAULT NULL COMMENT '归还日期',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (2, '222', '333', '20220927-2094581083', '李芸', '138999009988', '2025-03-31 21:35:14', NULL, 10, '已借出', 2, '2025-04-01 00:00:00');
INSERT INTO `borrow` VALUES (3, '222', '22222', '20220927-2094581083', '李芸', '138999009988', '2025-03-31 21:35:14', NULL, 25, '已借出', 3, '2025-04-02 00:00:00');
INSERT INTO `borrow` VALUES (4, '222', '22222', '20220927-2094581083', '李芸', '138999009988', '2025-03-31 21:35:14', NULL, 25, '已借出', 4, '2025-04-02 00:00:00');
INSERT INTO `borrow` VALUES (5, '222', '22222', '20220927-2094581083', '李芸', '138999009988', '2025-03-31 21:35:14', NULL, 30, '已借出', 5, '2025-04-02 00:00:00');
INSERT INTO `borrow` VALUES (6, '222', '22222', '202209271239528742', '王二文案', '13988990099', '2025-03-31 21:35:14', NULL, 30, '已借出', 6, '2025-04-02 00:00:00');
INSERT INTO `borrow` VALUES (7, '222', '22222', '202209271239528742', '王二文案', '13988990099', '2025-03-31 21:35:14', NULL, 30, '已借出', 7, '2025-04-02 00:00:00');
INSERT INTO `borrow` VALUES (8, '222', '22222', '202209271239528742', '王二文案', '13988990099', '2025-03-31 21:35:14', NULL, 30, '已归还', 8, '2025-04-02 00:00:00');
INSERT INTO `borrow` VALUES (9, '222', '22222', '202209271018800687', '测试', NULL, '2025-03-31 21:35:14', NULL, 30, '已归还', 9, '2025-04-03 00:00:00');
INSERT INTO `borrow` VALUES (10, '222', '22222', '202209271018800687', '测试', NULL, '2025-03-31 21:35:14', NULL, 30, '已归还', 10, '2025-04-04 00:00:00');
INSERT INTO `borrow` VALUES (12, 'Java学习指南', 'JAVA_212113123', '202209271239528742', '苗洋洋', '13988990099', '2025-03-31 21:35:14', NULL, 20, '已归还', 3, '2025-04-04 00:00:00');
INSERT INTO `borrow` VALUES (13, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-03-31 21:35:14', NULL, 20, '已归还', 3, '2025-04-04 00:00:00');
INSERT INTO `borrow` VALUES (14, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-03-31 21:35:14', NULL, 20, '已归还', 3, '2025-04-04 00:00:00');
INSERT INTO `borrow` VALUES (15, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-03-31 21:35:14', NULL, 20, '已归还', 3, '2025-04-05 00:00:00');
INSERT INTO `borrow` VALUES (16, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-03-31 21:35:14', NULL, 20, '已归还', 3, '2025-04-05 00:00:00');
INSERT INTO `borrow` VALUES (17, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-03-31 21:35:14', NULL, 20, '已归还', 4, '2025-04-06 00:00:00');
INSERT INTO `borrow` VALUES (18, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-03-31 21:35:14', NULL, 80, '已归还', 4, '2022-10-22 00:00:00');
INSERT INTO `borrow` VALUES (19, '百科全书', 'BKQS-233131', '20220927-2094581083', '李芸', '138999009988', '2025-04-11 19:14:54', NULL, 10, '已借出', 1, '2025-04-12 00:00:00');
INSERT INTO `borrow` VALUES (20, '童话故事大全', 'THGS-10011122', '202209271018800687', '落布', NULL, '2025-04-11 19:15:00', NULL, 30, '已借出', 1, '2025-04-12 00:00:00');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
                             `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
                             `pid` int NULL DEFAULT NULL COMMENT '父级id',
                             `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                             `updatetime` timestamp NULL DEFAULT NULL,
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (3, '历史文化', '历史文化', NULL, '2025-04-01 00:00:00', NULL);
INSERT INTO `category` VALUES (4, '唐朝文化', '唐朝文化', 3, '2025-04-02 00:00:00', NULL);
INSERT INTO `category` VALUES (5, '宋朝文化', NULL, 3, '2025-04-02 00:00:00', NULL);
INSERT INTO `category` VALUES (9, '现代文化', '现代文化', 3, '2025-04-02 00:00:00', NULL);
INSERT INTO `category` VALUES (10, '科技', '科技', NULL, '2025-04-02 00:00:00', NULL);
INSERT INTO `category` VALUES (11, '高新科技', NULL, 10, '2025-04-02 00:00:00', NULL);
INSERT INTO `category` VALUES (12, '生物科技', '生物科技', 10, '2025-04-02 00:00:00', NULL);
INSERT INTO `category` VALUES (13, '微分子科技', NULL, 11, '2025-04-01 22:11:44', NULL);

-- ----------------------------
-- Table structure for retur
-- ----------------------------
DROP TABLE IF EXISTS `retur`;
CREATE TABLE `retur`  (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书名称',
                          `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书标准码',
                          `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户会员码',
                          `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
                          `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户联系方式',
                          `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                          `updatetime` datetime NULL DEFAULT NULL COMMENT '更新时间',
                          `score` int NULL DEFAULT NULL COMMENT '借书积分',
                          `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '已借出' COMMENT '借书状态',
                          `days` int NULL DEFAULT 1 COMMENT '借书天数',
                          `return_date` datetime NULL DEFAULT NULL COMMENT '归还日期',
                          `real_date` datetime NULL DEFAULT NULL COMMENT '实际归还日期',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of retur
-- ----------------------------
INSERT INTO `retur` VALUES (2, 'Java学习指南', 'JAVA_212113123', '202209271239528742', '苗洋洋', '13988990099', '2025-04-01 00:00:00', NULL, 20, '已借出', 3, '2025-04-01 00:00:00', NULL);
INSERT INTO `retur` VALUES (3, '222', '22222', '202209271018800687', '测试', NULL, '2025-04-02 00:00:00', NULL, 30, '已借出', 10, '2025-04-03 00:00:00', '2025-04-03 00:00:00');
INSERT INTO `retur` VALUES (4, '222', '22222', '202209271018800687', '测试', NULL, '2025-04-02 00:00:00', NULL, 30, '已借出', 9, '2025-04-03 00:00:00', '2025-04-03 00:00:00');
INSERT INTO `retur` VALUES (5, '222', '22222', '202209271239528742', '王二文案', '13988990099', '2025-04-02 00:00:00', NULL, 30, '已借出', 8, '2025-04-06 00:00:00', '2025-04-03 00:00:00');
INSERT INTO `retur` VALUES (6, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-04-02 00:00:00', NULL, 20, '已借出', 3, '2025-04-07 00:00:00', '2025-04-03 00:00:00');
INSERT INTO `retur` VALUES (7, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-04-03 00:00:00', NULL, 20, '已借出', 3, '2025-04-02 00:00:00', '2025-04-03 00:00:00');
INSERT INTO `retur` VALUES (8, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-04-03 00:00:00', NULL, 20, '已借出', 3, '2025-04-03 00:00:00', '2025-04-03 00:00:00');
INSERT INTO `retur` VALUES (9, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-04-03 00:00:00', NULL, 20, '已归还', 3, '2025-04-04 00:00:00', '2025-04-03 00:00:00');
INSERT INTO `retur` VALUES (10, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-04-03 00:00:00', NULL, 20, '已归还', 4, '2025-04-05 00:00:00', '2025-04-03 00:00:00');
INSERT INTO `retur` VALUES (11, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2025-04-03 00:00:00', NULL, 80, '已归还', 4, '2025-04-09 00:00:00', '2022-10-25 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
                         `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员码',
                         `age` int NULL DEFAULT NULL COMMENT '年龄',
                         `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
                         `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
                         `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
                         `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
                         `updatetime` datetime NULL DEFAULT NULL,
                         `account` int NULL DEFAULT 0 COMMENT '账户余额',
                         `status` tinyint(1) NULL DEFAULT 1 COMMENT '禁用状态 1不禁用',
                         PRIMARY KEY (`id`) USING BTREE,
                         UNIQUE INDEX `username_index`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (19, '苗洋洋', '202504011239528742', 18, '男', '13988990099', '合肥', '2025-04-01 00:00:00', '2025-04-03 00:00:00', 140, 1);
INSERT INTO `user` VALUES (20, '李芸', '20250401-2094581083', 24, '女', '138999009988', '合肥', '2025-04-02 00:00:00', NULL, 10, 1);
INSERT INTO `user` VALUES (21, '落布', '202504011018800687', 20, NULL, NULL, NULL, '2025-04-03 00:00:00', '2025-04-03 00:00:00', 110, 1);
INSERT INTO `user` VALUES (22, '卡森', '202504011213716465', 22, '男', '13988990066', NULL, '2025-04-03 00:00:00', '2025-04-03 00:00:00', 100, 1);
INSERT INTO `user` VALUES (23, '杰克', '20250401688792394', 33, '男', '13977889988', NULL, '2025-04-03 00:00:00', '2025-04-11 17:10:57', -40, 0);

SET FOREIGN_KEY_CHECKS = 1;
