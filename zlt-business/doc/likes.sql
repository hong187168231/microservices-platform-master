/*
 Navicat Premium Data Transfer

 Source Server         : 点赞likes
 Source Server Type    : MySQL
 Source Server Version : 80024 (8.0.24)
 Source Host           : 45.207.49.136:3306
 Source Schema         : likes

 Target Server Type    : MySQL
 Target Server Version : 80024 (8.0.24)
 File Encoding         : 65001

 Date: 28/03/2023 17:21:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agent_user
-- ----------------------------
DROP TABLE IF EXISTS `agent_user`;
CREATE TABLE `agent_user`  (
  `agent_id` int NOT NULL AUTO_INCREMENT,
  `accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `singel_add_money` int NULL DEFAULT NULL,
  `ser_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`agent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bd_user
-- ----------------------------
DROP TABLE IF EXISTS `bd_user`;
CREATE TABLE `bd_user`  (
  `bduserid` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `bdusername` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `phoneno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `wechat` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信号 多条以“，”分隔',
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `acclogin` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '系统账号(登录用)',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登陆密码',
  `passwordmd5` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录密码MD5',
  `loginnum` int NULL DEFAULT NULL COMMENT '登录总次数',
  `accstatus` decimal(1, 0) NOT NULL COMMENT '账号状态 1正常 9禁止登陆 ',
  `clintipadd` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录ip地址',
  `lastlogindate` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`bduserid`) USING BTREE,
  INDEX `idx_no`(`accno` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx_phone`(`phoneno` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx_delete`(`is_delete` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台系统用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coin_deposit
-- ----------------------------
DROP TABLE IF EXISTS `coin_deposit`;
CREATE TABLE `coin_deposit`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `coin_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `coin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `status` int NULL DEFAULT 1,
  `del_status` int NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cs_callback_record
-- ----------------------------
DROP TABLE IF EXISTS `cs_callback_record`;
CREATE TABLE `cs_callback_record`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `param` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dz_broker_message
-- ----------------------------
DROP TABLE IF EXISTS `dz_broker_message`;
CREATE TABLE `dz_broker_message`  (
  `message_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `try_count` int NULL DEFAULT 0,
  `status` int NULL DEFAULT NULL,
  `next_retry` datetime NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`message_Id`) USING BTREE,
  INDEX `idx_id`(`message_Id` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE,
  INDEX `idx_next_retry`(`next_retry` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dz_coin
-- ----------------------------
DROP TABLE IF EXISTS `dz_coin`;
CREATE TABLE `dz_coin`  (
  `coin_id` int NOT NULL AUTO_INCREMENT COMMENT '币种id',
  `coin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '币种名称',
  `main_coin_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主币种类型',
  `coin_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '币种类型',
  `main_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '币种单位',
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主币种单位',
  `token_status` int NULL DEFAULT NULL COMMENT '0： 主币 1：代币',
  PRIMARY KEY (`coin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dz_level_record
-- ----------------------------
DROP TABLE IF EXISTS `dz_level_record`;
CREATE TABLE `dz_level_record`  (
  `level_record_id` bigint NOT NULL AUTO_INCREMENT,
  `accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `head_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `superior_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `before_level` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `current_level` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `change_amount` decimal(10, 2) NULL DEFAULT NULL,
  `change_type` int NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`level_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 981 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dz_task
-- ----------------------------
DROP TABLE IF EXISTS `dz_task`;
CREATE TABLE `dz_task`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `category_id` int NULL DEFAULT NULL COMMENT '分类id',
  `language` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '语言',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务标题',
  `sort` int NULL DEFAULT 999 COMMENT '排序字段',
  `price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '任务单价',
  `pump_price` decimal(10, 2) NULL DEFAULT NULL,
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '任务总价',
  `apiece_num` int NULL DEFAULT 1 COMMENT ' 每人能领取次数',
  `task_type` int NULL DEFAULT NULL COMMENT '任务类型 1 必须任务 2 常规 任务',
  `task_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务链接',
  `task_level` tinyint(1) NULL DEFAULT NULL COMMENT '任务等级',
  `task_level_ids` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `condition` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '认证条件,号分隔',
  `send_sdk_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sample_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样例url',
  `info` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务描述',
  `create_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL COMMENT '任务到期时间',
  `finish_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '任务状态 1 审核中 2 未通过 3 进行中 4 已撤销 5 已完成',
  `max_num` int NULL DEFAULT 0 COMMENT '可接任务人数',
  `apply_num` int NULL DEFAULT 0 COMMENT '已申请人数',
  `surplus_num` int NULL DEFAULT NULL COMMENT '剩余数量',
  `task_require` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务要求',
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频图链接',
  `step_Info` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务步骤。保存json数据',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_index`(`id` ASC) USING BTREE,
  INDEX `category_id_index`(`category_id` ASC) USING BTREE,
  INDEX `Idx_level_ids`(`task_level_ids` ASC, `apiece_num` ASC, `finish_date` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18783 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dz_task_category
-- ----------------------------
DROP TABLE IF EXISTS `dz_task_category`;
CREATE TABLE `dz_task_category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类说明',
  `en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `en_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ab_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ab_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fn_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fn_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `in_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `in_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int NULL DEFAULT 999 COMMENT '排序字段',
  `icon` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '0-关闭 1-开启',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '任务到期时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_index`(`id` ASC) USING BTREE,
  INDEX `name_index`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dz_task_order
-- ----------------------------
DROP TABLE IF EXISTS `dz_task_order`;
CREATE TABLE `dz_task_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `mem_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员no',
  `task_id` bigint NULL DEFAULT NULL COMMENT '任务id',
  `receive_level` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receive_price` decimal(10, 2) NULL DEFAULT NULL,
  `task_type` tinyint(1) NULL DEFAULT 0 COMMENT '任务类型 0 常规任务 1 必领任务',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `submit_sample` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL COMMENT '排序字段',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '任务状态1 进行中  2 审核中 3 已完成 ',
  `send_status` int NULL DEFAULT 0,
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更吓人',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '任务到期时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_index`(`id` ASC) USING BTREE,
  INDEX `order_no_index`(`order_no` ASC) USING BTREE,
  INDEX `mem_no_index`(`mem_no` ASC) USING BTREE,
  INDEX `task_id_index`(`task_id` ASC) USING BTREE,
  INDEX `idex_create_time`(`create_time` ASC) USING BTREE,
  INDEX `status_create_index`(`status` ASC, `create_time` ASC, `mem_no` ASC) USING BTREE,
  INDEX `status_update_index_m`(`status` ASC, `update_time` ASC, `mem_no` ASC, `send_status` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1416456 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dz_task_reward_fail
-- ----------------------------
DROP TABLE IF EXISTS `dz_task_reward_fail`;
CREATE TABLE `dz_task_reward_fail`  (
  `fail_id` bigint NOT NULL AUTO_INCREMENT,
  `task_id` bigint NULL DEFAULT NULL,
  `error_msg` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`fail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dz_udun_order
-- ----------------------------
DROP TABLE IF EXISTS `dz_udun_order`;
CREATE TABLE `dz_udun_order`  (
  `undu_order_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'udun 订单id',
  `accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '会员标识',
  `coin_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '币种名称',
  `main_coin_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主币种类型',
  `coin_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '币种类型',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '钱包地址',
  `fee` decimal(10, 2) NULL DEFAULT NULL COMMENT '矿工费',
  `trade_Id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'udun 交易id',
  `tx_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '区块链交易哈希',
  `business_Id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '平台业务id （流水号）',
  `trade_type` int NULL DEFAULT NULL COMMENT '交易类型1 充值 2 提现',
  `trade_status` int NULL DEFAULT NULL COMMENT '1 成功 2 失败',
  `create_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `update_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`undu_order_id`) USING BTREE,
  INDEX `idx_acc`(`accno` ASC, `coin_name` ASC, `main_coin_type` ASC) USING BTREE,
  INDEX `idx_buId`(`business_Id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for every_day_report
-- ----------------------------
DROP TABLE IF EXISTS `every_day_report`;
CREATE TABLE `every_day_report`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `recharge` decimal(10, 2) NULL DEFAULT NULL,
  `withdrawal` decimal(10, 0) NULL DEFAULT NULL,
  `add_vip_num` int NULL DEFAULT NULL,
  `sub_task_amount` decimal(10, 2) NULL DEFAULT NULL,
  `task_amount` decimal(10, 2) NULL DEFAULT NULL,
  `vip_amount` decimal(10, 2) NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for finance_balance_adjustment
-- ----------------------------
DROP TABLE IF EXISTS `finance_balance_adjustment`;
CREATE TABLE `finance_balance_adjustment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` int NULL DEFAULT NULL COMMENT '55手动入款  56手动出款',
  `accno` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员标识',
  `amount` decimal(20, 0) NULL DEFAULT NULL COMMENT '加扣款金额',
  `dama` bit(1) NULL DEFAULT b'0' COMMENT '是否记打码量 0不计入，1计入',
  `dama_ratio` decimal(20, 0) NULL DEFAULT 1 COMMENT '打码倍率',
  `clean` bit(1) NULL DEFAULT b'0' COMMENT '是否已经体现，0：未提，1已提',
  `orderno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号，记录关联的体现订单',
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加款原因',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `accno`(`accno` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16435 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '财务管理手动加款表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for finance_dama_adjustment
-- ----------------------------
DROP TABLE IF EXISTS `finance_dama_adjustment`;
CREATE TABLE `finance_dama_adjustment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` int NULL DEFAULT NULL COMMENT '加码:1,减码:-1',
  `accno` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员标识',
  `damaliang` decimal(20, 0) NULL DEFAULT NULL COMMENT '加扣打码量',
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加扣打码原因',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `accno`(`accno` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '财务管理手动加码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for finances_manager_product
-- ----------------------------
DROP TABLE IF EXISTS `finances_manager_product`;
CREATE TABLE `finances_manager_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '中奖ID',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `income_rate` double(10, 2) NOT NULL COMMENT '收益利率%',
  `valid_date` bigint NOT NULL DEFAULT 0 COMMENT '有效天数',
  `product_name_cn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品中文名称',
  `product_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品英文名称',
  `product_name_vn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品越南文名称',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `product_index`(`id` ASC) USING BTREE,
  INDEX `product_normal`(`create_time` ASC, `product_name_cn` ASC, `product_name_en` ASC, `product_name_vn` ASC) USING BTREE,
  FULLTEXT INDEX `product_fulltext`(`product_name_cn`, `product_name_en`, `product_name_vn`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '理财产品设置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for finances_manager_product_order
-- ----------------------------
DROP TABLE IF EXISTS `finances_manager_product_order`;
CREATE TABLE `finances_manager_product_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  `start_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '理财开始时间',
  `end_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '理财结束时间',
  `buy_amount` double(20, 2) NULL DEFAULT NULL COMMENT '购买理财本金',
  `everyday_amount` double(20, 2) NULL DEFAULT NULL COMMENT '每日收益金额',
  `sum_amount` double(20, 2) NULL DEFAULT NULL COMMENT '总收益金额',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `finances_product_id` bigint NOT NULL COMMENT '理财产品ID',
  `user_acct` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '会员账号',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '会员ID',
  `finances_product_status` int NOT NULL DEFAULT 0 COMMENT '提款状态0：未提款，1：已提款',
  `level_config_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'vip等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `prod_order_index`(`id` ASC) USING BTREE,
  INDEX `pro_order_normal`(`create_time` ASC, `start_time` ASC, `end_time` ASC, `finances_product_id` ASC, `user_acct` ASC, `user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 882 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户购买理财订单明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for finances_manager_product_setting
-- ----------------------------
DROP TABLE IF EXISTS `finances_manager_product_setting`;
CREATE TABLE `finances_manager_product_setting`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `min_amout` double(10, 2) NOT NULL COMMENT '最低存款金额',
  `level_config_id` bigint NOT NULL COMMENT 'vip等级ID',
  `level_config_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'vip等级',
  `level_config_req` int NOT NULL COMMENT 'vip等级序号',
  `buy_number` int NOT NULL COMMENT '限制用户购买次数（小于0为无限制）',
  `finances_product_id` bigint NOT NULL COMMENT '理财产品ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `product_setting_index`(`id` ASC) USING BTREE,
  INDEX `product_setting_normal`(`create_time` ASC, `level_config_id` ASC, `level_config_level` ASC, `finances_product_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户购买理财设置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for first_recharge_gift
-- ----------------------------
DROP TABLE IF EXISTS `first_recharge_gift`;
CREATE TABLE `first_recharge_gift`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订单号',
  `user_id` int NULL DEFAULT NULL COMMENT '会员id',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '会员账号',
  `topup_money` int NULL DEFAULT NULL COMMENT '充值金额',
  `gift_money` int NULL DEFAULT NULL COMMENT '赠送礼金',
  `got_money` int NULL DEFAULT NULL COMMENT '已领取金额',
  `status` int NULL DEFAULT 0 COMMENT '状态:0,未领完; 1,已领完',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '首充礼金管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for first_recharge_gift_back
-- ----------------------------
DROP TABLE IF EXISTS `first_recharge_gift_back`;
CREATE TABLE `first_recharge_gift_back`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订单号',
  `user_id` int NULL DEFAULT NULL COMMENT '会员id',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '会员账号',
  `money` int NULL DEFAULT 0 COMMENT '金额(单位:分)',
  `bet_money` int NULL DEFAULT 0 COMMENT '投注金额(单位:分)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '首充礼金返还记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for help_manual
-- ----------------------------
DROP TABLE IF EXISTS `help_manual`;
CREATE TABLE `help_manual`  (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for inf_push
-- ----------------------------
DROP TABLE IF EXISTS `inf_push`;
CREATE TABLE `inf_push`  (
  `bdpushid` bigint NOT NULL AUTO_INCREMENT COMMENT '推送id',
  `pushtype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '推送类型',
  `pushtitle` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '推送标题',
  `pushbody` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '推送摘要',
  `pushdate` datetime NULL DEFAULT NULL COMMENT '推送时间',
  `sortby` int NULL DEFAULT NULL COMMENT '排序权重',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`bdpushid`) USING BTREE,
  INDEX `idx1`(`pushtype` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx2`(`is_delete` ASC, `create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'APP系统推送' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for inf_sysnotice
-- ----------------------------
DROP TABLE IF EXISTS `inf_sysnotice`;
CREATE TABLE `inf_sysnotice`  (
  `noticeid` bigint NOT NULL AUTO_INCREMENT COMMENT '公告id',
  `type` decimal(1, 0) NULL DEFAULT NULL COMMENT '消息类型 1滚动消息 2首页公告',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  `notebody` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息内容',
  `en_notice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '英文公告',
  `sp_notice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '西班牙语公告',
  `ab_notice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '阿拉伯语公告',
  `fn_notice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '法语公告',
  `vi_notice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '越南语公告',
  `params` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息参数',
  `expirydates` datetime NULL DEFAULT NULL COMMENT '有效期起',
  `expirydatee` datetime NULL DEFAULT NULL COMMENT '有效期止',
  `sortby` int NULL DEFAULT NULL COMMENT '排序权重',
  `work_status` bit(1) NOT NULL DEFAULT b'1' COMMENT '0 关闭  1 开启',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`noticeid`) USING BTREE,
  INDEX `idx1`(`type` ASC, `accno` ASC, `is_delete` ASC, `expirydates` ASC, `expirydatee` ASC) USING BTREE,
  INDEX `idx2`(`type` ASC, `is_delete` ASC, `expirydates` ASC, `expirydatee` ASC) USING BTREE,
  INDEX `idx3`(`accno` ASC, `is_delete` ASC, `expirydates` ASC, `expirydatee` ASC) USING BTREE,
  INDEX `idx4`(`is_delete` ASC, `expirydates` ASC, `expirydatee` ASC) USING BTREE,
  INDEX `idx_d_w_t_s_e`(`is_delete` ASC, `work_status` ASC, `type` ASC, `expirydates` ASC, `expirydatee` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for inf_sysremindinfo
-- ----------------------------
DROP TABLE IF EXISTS `inf_sysremindinfo`;
CREATE TABLE `inf_sysremindinfo`  (
  `rmdid` bigint NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `bdpushid` bigint NULL DEFAULT NULL COMMENT '推送id',
  `sender` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发送者accno',
  `rmtype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提醒信息类型：order订单提醒  pay 支付消息，auditvideo视频审核提醒 ,auditimg图文审核提醒 other通用提醒comment评论system系统systemnotice 主播发送微信',
  `recipienter` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接收人：accno',
  `uuid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '识别码（群发标识符）',
  `rmpics` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '通知图片 多张以“,”分隔',
  `rmtitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  `senddate` datetime NULL DEFAULT NULL COMMENT '发送时间',
  `remindtxt` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提醒消息',
  `refparm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关参数id、code',
  `refaddlink` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关链接',
  `rmdateexp` datetime NULL DEFAULT NULL COMMENT '提醒失效时间 一般提醒7天 重要提醒30天',
  `issee` decimal(1, 0) NULL DEFAULT NULL COMMENT '是否查看0已查看 9未查看',
  `istodo` decimal(1, 0) NULL DEFAULT NULL COMMENT '是否处理0已处理 9未处理',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`rmdid`) USING BTREE,
  INDEX `fk_relationship_337`(`bdpushid` ASC) USING BTREE,
  INDEX `index_num`(`recipienter` ASC, `issee` ASC, `is_delete` ASC, `rmtype` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38943 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统提醒消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kill_config
-- ----------------------------
DROP TABLE IF EXISTS `kill_config`;
CREATE TABLE `kill_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '彩种名称',
  `lottery_id` int NOT NULL COMMENT '彩种id',
  `platfom` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '配置杀号平台(ALL,CPT,HKC,XGC,XYE,LHT,LLB)',
  `ratio` double(5, 2) NOT NULL COMMENT '杀号比例',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx01_create_time`(`create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '帖子' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_asset_cfg
-- ----------------------------
DROP TABLE IF EXISTS `mem_asset_cfg`;
CREATE TABLE `mem_asset_cfg`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name_sp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name_fn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name_ab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `describe_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `describe_sp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `describe_fn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `describe_ab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `earn_rate` decimal(19, 3) NULL DEFAULT NULL,
  `daily_earn_rate` decimal(19, 3) NULL DEFAULT NULL,
  `deductRate` decimal(19, 3) NULL DEFAULT NULL,
  `max_deposit_amount` decimal(19, 3) NULL DEFAULT NULL,
  `open_level` int NULL DEFAULT NULL,
  `cycle_type` int NULL DEFAULT NULL,
  `take_status` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_bank
-- ----------------------------
DROP TABLE IF EXISTS `mem_bank`;
CREATE TABLE `mem_bank`  (
  `mem_bank_id` bigint NOT NULL AUTO_INCREMENT,
  `accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_id` int NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_card_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mem_bank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50144 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_bankaccount
-- ----------------------------
DROP TABLE IF EXISTS `mem_bankaccount`;
CREATE TABLE `mem_bankaccount`  (
  `bankaccid` bigint NOT NULL AUTO_INCREMENT COMMENT '银行账户id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `familyid` bigint NULL DEFAULT NULL COMMENT '家族id',
  `accounttype` decimal(1, 0) NULL DEFAULT NULL COMMENT '账号类型  1支付宝 2微信   3银联',
  `bankaddress` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户行 如 某某支行',
  `bankname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行名称标识符 如ICBC',
  `accountname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行/支付宝/微信开户人姓名',
  `accountno` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行卡/支付宝/微信账号',
  `accidcardno` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '持卡人身份证号',
  `idcardpic1` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '持卡人身份证正面图',
  `idcardpic2` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '持卡人身份证背面图',
  `checkstatus` decimal(1, 0) NULL DEFAULT NULL COMMENT '审核状态 1未审核  8审核通过 9审核未通过',
  `checknote` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核说明',
  `emailaddress` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`bankaccid`) USING BTREE,
  INDEX `idx1`(`accno` ASC, `accounttype` ASC, `is_delete` ASC) USING BTREE,
  INDEX `idx2`(`familyid` ASC, `is_delete` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 412 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '提现账户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `mem_baseinfo`;
CREATE TABLE `mem_baseinfo`  (
  `memid` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `unique_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '会员ID',
  `superior_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '会员标识号',
  `nickname` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '呢称',
  `memname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '真实姓名',
  `mobileno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sex` decimal(1, 0) NULL DEFAULT NULL COMMENT '性别 1男 2女 3保密',
  `level` int NULL DEFAULT 0 COMMENT '等级',
  `agent_level` int NULL DEFAULT 0,
  `idcardtype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件类型DDINFO',
  `idcardno` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件号码',
  `idcardfront` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件照片正面',
  `idcardback` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '证件照片反面',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `nationality` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国籍DDINFO',
  `headimg` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `registerdate` timestamp NULL DEFAULT NULL COMMENT '注册日期',
  `recomcode` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '推荐码',
  `describes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '描述',
  `tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录地址城市',
  `clintipadd` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录ip地址',
  `register_ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '注册ip',
  `register_dev` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注册设备',
  `last_login_dev` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录设备',
  `logincountry` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录国家',
  `memfeatures` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '会员特征(兴趣)',
  `memorgin` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '来源 recommend推荐  regist注册  operator运营人员',
  `fansnum` bigint NULL DEFAULT NULL COMMENT '粉丝数量',
  `goldnum` decimal(16, 3) NULL DEFAULT 0.000 COMMENT '用户乐币数量',
  `wait_amount` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '待开奖金额（元）',
  `withdrawal_remainder` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '可提现余额',
  `bet_amount` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '累计投注  (元)',
  `pay_amount` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '累计充值（元）',
  `pay_max` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '最大充值金额',
  `pay_first` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '首次充值金额',
  `pay_num` int NOT NULL DEFAULT 0 COMMENT '充值总次数',
  `withdrawal_amount` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '累计提现（元)',
  `withdrawal_max` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '最大提现金额',
  `withdrawal_first` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '首次提现金额',
  `withdrawal_num` int NOT NULL DEFAULT 0 COMMENT '提现总次数',
  `consume_amount` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '总消费(打码量)',
  `no_withdrawal_amount` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '不可提现金额(元)',
  `invit_status` int NULL DEFAULT 1,
  `chat_status` int NULL DEFAULT 1 COMMENT '聊天状态: 0,不允许;1,允许',
  `freeze_status` int NULL DEFAULT 0 COMMENT '冻结状态: 0,不冻结;1,冻结',
  `bet_status` int NULL DEFAULT 1 COMMENT '投注状态: 0,不允许;1,允许',
  `backwater_status` int NULL DEFAULT 1 COMMENT '返水状态: 0,不允许;1,允许',
  `share_order_status` int NULL DEFAULT 1 COMMENT '晒单状态(圈子使用): 0,不允许;1,允许',
  `logintype` decimal(2, 0) NULL DEFAULT NULL COMMENT '账户类型  普通会员1      主播2   家族长3   运营后台管理员8    第三方登录7   服务注册中心管理员9  聚合站点后台管理员10',
  `openId` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '第三方登录时返回的唯一标识',
  `sitearea` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所在地(省市区)12位区域编码code',
  `wechat` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '微信号',
  `chatnickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '微信昵称',
  `forbid_talk_type` int NULL DEFAULT NULL COMMENT '禁言类型 0未禁言1临时2永久',
  `forbid_talk_start` timestamp NULL DEFAULT NULL COMMENT '禁言开始时间',
  `forbid_talk_end` timestamp NULL DEFAULT NULL COMMENT '禁言结束时间',
  `forbid_in_type` int NULL DEFAULT NULL COMMENT '禁入类型 0未禁入1临时2永久',
  `forbid_in_start` timestamp NULL DEFAULT NULL COMMENT '禁入开始时间',
  `forbid_in_end` timestamp NULL DEFAULT NULL COMMENT '禁入结束时间',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `cg_nickname` bit(1) NULL DEFAULT b'0' COMMENT '0:未修改,1:已经修改过1次',
  `proxy_url` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代理跳转url',
  PRIMARY KEY (`memid`) USING BTREE,
  UNIQUE INDEX `i_accno`(`accno` ASC, `is_delete` ASC) USING BTREE,
  UNIQUE INDEX `uk_recomcode`(`recomcode` ASC) USING BTREE,
  INDEX `idx_supper_d`(`superior_id` ASC, `is_delete` ASC) USING BTREE,
  INDEX `idx_gold`(`accno` ASC, `goldnum` ASC, `is_delete` ASC) USING BTREE,
  INDEX `idx_email_d`(`email` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx_name_mb_d`(`email` ASC, `is_delete` ASC, `unique_id` ASC, `register_ip` ASC) USING BTREE,
  INDEX `idx_time`(`is_delete` ASC, `registerdate` ASC, `accno` ASC) USING BTREE,
  INDEX `idx_level`(`level` ASC, `is_delete` ASC, `registerdate` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_certification
-- ----------------------------
DROP TABLE IF EXISTS `mem_certification`;
CREATE TABLE `mem_certification`  (
  `certid` bigint NOT NULL AUTO_INCREMENT,
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `certstatus` decimal(1, 0) NULL DEFAULT NULL COMMENT '认证状态 0已通过 1待审核 9未通过',
  `certdesc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '认证说明（未通过原因等）',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`certid`) USING BTREE,
  INDEX `idx1`(`accno` ASC, `certstatus` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx2`(`accno` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx3`(`is_delete` ASC, `create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '主播认证表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_daily_report
-- ----------------------------
DROP TABLE IF EXISTS `mem_daily_report`;
CREATE TABLE `mem_daily_report`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_str` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `recharge` decimal(16, 2) NULL DEFAULT NULL,
  `withdrawal` decimal(16, 2) NULL DEFAULT NULL,
  `task_award` decimal(16, 2) NULL DEFAULT NULL,
  `buy_vip` decimal(16, 2) NULL DEFAULT NULL,
  `task_brokerage` decimal(16, 2) NULL DEFAULT NULL,
  `vip_brokerage` decimal(16, 2) NULL DEFAULT NULL,
  `accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `top1_accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `top2_accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `top3_accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35246 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_faceset
-- ----------------------------
DROP TABLE IF EXISTS `mem_faceset`;
CREATE TABLE `mem_faceset`  (
  `faceid` bigint NOT NULL AUTO_INCREMENT COMMENT '美颜id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `beauty` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '美颜参数设置 （json）',
  `filter` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '滤镜参数设置（json）',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`faceid`) USING BTREE,
  INDEX `idx1`(`accno` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '美颜滤镜设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_family
-- ----------------------------
DROP TABLE IF EXISTS `mem_family`;
CREATE TABLE `mem_family`  (
  `familyid` bigint NOT NULL AUTO_INCREMENT COMMENT '家族id',
  `familyname` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家族名称',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识符',
  `familyman` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家族长姓名',
  `idcardno` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '证件号码',
  `telephone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '行动电话',
  `memnums` bigint NOT NULL COMMENT '家族主播数量 默认为0',
  `royaltypercent` decimal(16, 2) NULL DEFAULT NULL COMMENT '提成比例',
  `bettingpercentage` decimal(16, 3) NULL DEFAULT NULL COMMENT '投注分成比例',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`familyid`) USING BTREE,
  INDEX `idx1`(`familyname` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx2`(`accno` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx3`(`is_delete` ASC, `create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '家族信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_familymem
-- ----------------------------
DROP TABLE IF EXISTS `mem_familymem`;
CREATE TABLE `mem_familymem`  (
  `familymemid` bigint NOT NULL AUTO_INCREMENT COMMENT '家族成员id',
  `familyid` bigint NULL DEFAULT NULL COMMENT '家族id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `nickname` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成员暱称',
  `royaltypercent` decimal(16, 2) NULL DEFAULT NULL COMMENT '提成比例 两位小数',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`familymemid`) USING BTREE,
  INDEX `fk_reference_42`(`familyid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '家族成员信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_follow
-- ----------------------------
DROP TABLE IF EXISTS `mem_follow`;
CREATE TABLE `mem_follow`  (
  `followid` bigint NOT NULL AUTO_INCREMENT COMMENT '关注id',
  `memid` bigint NULL DEFAULT NULL COMMENT '被关注用户id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`followid`) USING BTREE,
  INDEX `fk_reference_37`(`memid` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx2`(`accno` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员关注' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_goldchange
-- ----------------------------
DROP TABLE IF EXISTS `mem_goldchange`;
CREATE TABLE `mem_goldchange`  (
  `goldchangid` bigint NOT NULL AUTO_INCREMENT COMMENT '金币变动明细id',
  `refid` bigint NULL DEFAULT NULL COMMENT '相关id 如充值订单id 、 打赏id 、彩票派奖id(ksorderid)  代理结算id',
  `refaccno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '乐币来源主播accno',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `superior_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `changetype` int NULL DEFAULT NULL COMMENT '变动类型 1充值 2打赏 3赠送 4签到奖励 5发帖奖励 6 发视频奖励 7 邀请用户 8充值附赠 9 主播分成 10 提现申请 11提现取消 12已提现 13彩票派奖 14彩票下注 15彩票下注取消 16稽核手续费 17稽核手续费取消\r\n18 棋牌转出 19棋牌转入 20代理结算\r\n',
  `goldnum` decimal(16, 3) NULL DEFAULT NULL COMMENT '充值/提现前播币数',
  `quantity` decimal(16, 3) NULL DEFAULT NULL COMMENT '充值/提现播币数量',
  `amount` decimal(16, 3) NULL DEFAULT NULL COMMENT '金额',
  `recgoldnum` decimal(16, 3) NULL DEFAULT NULL COMMENT '充值/提现后播币数',
  `pre_cgdml` decimal(16, 3) NULL DEFAULT NULL COMMENT '变动前打码量',
  `after_cgdml` decimal(16, 3) NULL DEFAULT NULL COMMENT '变动后打码量',
  `opnote` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作说明',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `snow_sn` bigint NULL DEFAULT 0 COMMENT '雪花排序号',
  `source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '来源：Android | IOS | WEB',
  PRIMARY KEY (`goldchangid`) USING BTREE,
  INDEX `fk_relationship_28`(`refid` ASC, `is_delete` ASC) USING BTREE,
  INDEX `idx_type_delete`(`changetype` ASC, `is_delete` ASC) USING BTREE,
  INDEX `idx_time`(`create_time` ASC) USING BTREE,
  INDEX `idx_qu`(`quantity` ASC) USING BTREE,
  INDEX `idx_qu_chty`(`changetype` ASC, `quantity` ASC, `update_time` ASC) USING BTREE,
  INDEX `idx_accno_type_time`(`accno` ASC, `changetype` ASC, `create_time` ASC, `update_time` ASC) USING BTREE,
  INDEX `idx_refaccno`(`refaccno` ASC, `changetype` ASC, `is_delete` ASC, `create_time` ASC, `update_time` ASC) USING BTREE,
  INDEX `idx_time_up`(`update_time` ASC) USING BTREE,
  INDEX `idx_changtype`(`changetype` ASC, `create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1801356 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员金币变动明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_level
-- ----------------------------
DROP TABLE IF EXISTS `mem_level`;
CREATE TABLE `mem_level`  (
  `levelid` bigint NOT NULL AUTO_INCREMENT COMMENT '等级id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `memlevel` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前等级',
  `memscore` decimal(16, 2) NULL DEFAULT NULL COMMENT '会员当前积分',
  `nextlevscore` decimal(16, 2) NULL DEFAULT NULL COMMENT '距离下一级所需积分',
  `levellog` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '等级log',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `locked` bit(1) NOT NULL DEFAULT b'0' COMMENT '0:未锁定,1:锁定',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `expire_time` timestamp NULL DEFAULT NULL COMMENT '过期时间 如 2020年9月10日17:46:55',
  `level_config_id` bigint NULL DEFAULT NULL COMMENT '等级配置表ID',
  PRIMARY KEY (`levelid`, `is_delete`) USING BTREE,
  INDEX `tp_reference_02`(`accno` ASC, `is_delete` ASC, `locked` ASC) USING BTREE,
  INDEX `idx_config`(`accno` ASC, `is_delete` ASC, `update_time` ASC, `expire_time` ASC, `level_config_id` ASC) USING BTREE,
  INDEX `idx_id`(`levelid` ASC, `is_delete` ASC, `expire_time` ASC, `level_config_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '会员等级' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_level_config
-- ----------------------------
DROP TABLE IF EXISTS `mem_level_config`;
CREATE TABLE `mem_level_config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '等级id',
  `level` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前等级',
  `level_seq` int NULL DEFAULT 0 COMMENT '等级编号',
  `level_icon_url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '等级图标地址',
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `recharge_amount` decimal(16, 2) NULL DEFAULT NULL COMMENT '所需购买金额',
  `promote_amount` decimal(16, 2) NULL DEFAULT NULL COMMENT '推广获得金额',
  `take_amount` decimal(16, 2) NULL DEFAULT 0.00,
  `do_task_times` int NULL DEFAULT NULL COMMENT '任务次数',
  `expire_time` int NULL DEFAULT NULL COMMENT '有效时长 按月 如 12  ',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `level_seq_key`(`level_seq` ASC) USING BTREE COMMENT '唯一索引',
  INDEX `idx_id`(`id` ASC) USING BTREE,
  INDEX `idx_amount`(`recharge_amount` ASC) USING BTREE,
  INDEX `idx_taskTime`(`do_task_times` ASC) USING BTREE,
  INDEX `idx_up_ex_time`(`expire_time` ASC, `update_time` ASC) USING BTREE,
  INDEX `idx_cr_time`(`create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '会员等级配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_login
-- ----------------------------
DROP TABLE IF EXISTS `mem_login`;
CREATE TABLE `mem_login`  (
  `loginid` bigint NOT NULL AUTO_INCREMENT COMMENT '登录账号id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '会员标识号',
  `acclogin` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '会员账号(登录用)',
  `logintype` decimal(2, 0) NULL DEFAULT NULL COMMENT '账户类型  普通会员1      主播2   家族长3 代充人4 运营后台管理员8    第三方登录7   服务注册中心管理员9  聚合站点后台管理员10',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登陆密码',
  `passwordmd5` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录密码MD5',
  `paypassword` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付密码md5',
  `accstatus` decimal(1, 0) NOT NULL COMMENT '账号状态 1正常 9禁止登陆 ',
  `lastlogindate` timestamp NULL DEFAULT NULL COMMENT '最后登录时间',
  `loginnum` int NULL DEFAULT NULL COMMENT '登录总次数',
  `clintipadd` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录ip地址',
  PRIMARY KEY (`loginid`) USING BTREE,
  UNIQUE INDEX `i_loginacc`(`acclogin` ASC, `logintype` ASC) USING BTREE,
  INDEX `idx1`(`logintype` ASC, `acclogin` ASC, `accstatus` ASC) USING BTREE,
  INDEX `idx2`(`accstatus` ASC) USING BTREE,
  INDEX `idx3`(`accno` ASC) USING BTREE,
  INDEX `Unique_acclogin`(`acclogin` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93006 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员登录账号' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_relationship
-- ----------------------------
DROP TABLE IF EXISTS `mem_relationship`;
CREATE TABLE `mem_relationship`  (
  `relaid` bigint NOT NULL AUTO_INCREMENT COMMENT '关系id',
  `refaccno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '推荐人标识号',
  `parent_id` bigint NULL DEFAULT NULL,
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '会员标识号',
  `memname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '真实姓名',
  `sub_num` int NULL DEFAULT 0,
  `sup_recomcode` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `head_accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总代标识号',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`relaid`) USING BTREE,
  INDEX `idx1`(`accno` ASC, `is_delete` ASC) USING BTREE,
  INDEX `idx_refaccno`(`refaccno` ASC) USING BTREE,
  INDEX `idx_accno`(`accno` ASC) USING BTREE,
  INDEX `idx_memname`(`memname` ASC) USING BTREE,
  INDEX `idx_parent_id`(`parent_id` ASC) USING BTREE,
  INDEX `idx_relaid`(`relaid` ASC) USING BTREE,
  INDEX `idx2`(`refaccno` ASC, `is_delete` ASC, `accno` ASC) USING BTREE,
  INDEX `idx_accno_head`(`accno` ASC, `head_accno` ASC, `is_delete` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员推荐关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for mem_repayuser
-- ----------------------------
DROP TABLE IF EXISTS `mem_repayuser`;
CREATE TABLE `mem_repayuser`  (
  `repaymemid` bigint NOT NULL AUTO_INCREMENT COMMENT '代充人id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员accno',
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '代充人昵称',
  `qq` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'QQ',
  `webchat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信',
  `alipay` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付宝账号',
  `mobileno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `memgold` decimal(16, 3) NULL DEFAULT NULL COMMENT '代充余额',
  `onlinedates` datetime NULL DEFAULT NULL COMMENT '营业时间起',
  `onlinedatee` datetime NULL DEFAULT NULL COMMENT '营业时间止',
  `repaynums` bigint NULL DEFAULT NULL COMMENT '代充次数',
  `discountrag` decimal(5, 2) NULL DEFAULT NULL COMMENT '充值优惠(%)   ',
  `status` decimal(1, 0) NULL DEFAULT NULL COMMENT '启用状态0启用9未启用',
  `is_delete` bit(1) NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`repaymemid`) USING BTREE,
  INDEX `mem_repayuser_union1`(`onlinedates` ASC, `onlinedatee` ASC) USING BTREE,
  INDEX `mem_repayuser_accno`(`accno` ASC) USING BTREE,
  INDEX `mem_repayuser_nickname`(`nickname` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代充人信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_signin
-- ----------------------------
DROP TABLE IF EXISTS `mem_signin`;
CREATE TABLE `mem_signin`  (
  `signinid` bigint NOT NULL AUTO_INCREMENT COMMENT '签到id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `signinnum` int NULL DEFAULT NULL COMMENT '连续签到天数',
  `signintime` datetime NULL DEFAULT NULL COMMENT '签到时间',
  PRIMARY KEY (`signinid`) USING BTREE,
  INDEX `idx1`(`accno` ASC, `signintime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员签到记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_sub_info
-- ----------------------------
DROP TABLE IF EXISTS `mem_sub_info`;
CREATE TABLE `mem_sub_info`  (
  `accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `level_one_agents` json NULL,
  `level_two_agents` json NULL,
  `level_three_agents` json NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`accno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_wallet
-- ----------------------------
DROP TABLE IF EXISTS `mem_wallet`;
CREATE TABLE `mem_wallet`  (
  `wallet_id` bigint NOT NULL AUTO_INCREMENT COMMENT '银行账户id',
  `coin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `money_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户行 如 某某支行',
  `status` int NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`wallet_id`) USING BTREE,
  INDEX `idx1`(`accno` ASC, `status` ASC) USING BTREE,
  INDEX `idx2`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '提现账户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_wallet_address
-- ----------------------------
DROP TABLE IF EXISTS `mem_wallet_address`;
CREATE TABLE `mem_wallet_address`  (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `coin_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `money_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE,
  INDEX `idex_a_d`(`accno` ASC, `coin_name` ASC, `money_address` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54559 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mem_yuebao
-- ----------------------------
DROP TABLE IF EXISTS `mem_yuebao`;
CREATE TABLE `mem_yuebao`  (
  `id` int NOT NULL,
  `accno` int NULL DEFAULT NULL,
  `amount` decimal(19, 3) NULL DEFAULT NULL,
  `yesterday_earn` decimal(19, 3) NULL DEFAULT NULL,
  `total_income` decimal(19, 3) NULL DEFAULT NULL,
  `dividend_type` decimal(19, 3) NULL DEFAULT NULL,
  `rate_type` decimal(19, 3) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_user` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_credit
-- ----------------------------
DROP TABLE IF EXISTS `member_credit`;
CREATE TABLE `member_credit`  (
  `id` bigint NULL DEFAULT NULL COMMENT 'id',
  `member_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员标识',
  `integral` int NULL DEFAULT NULL COMMENT '积分',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `idex_accno`(`member_no` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_credit_change
-- ----------------------------
DROP TABLE IF EXISTS `member_credit_change`;
CREATE TABLE `member_credit_change`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `accno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ref_acclogin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `integral` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 950 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_credit_detail
-- ----------------------------
DROP TABLE IF EXISTS `member_credit_detail`;
CREATE TABLE `member_credit_detail`  (
  `id` int NULL DEFAULT NULL COMMENT 'id',
  `member_no` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员标识',
  `integral` int NULL DEFAULT NULL COMMENT '积分',
  `type` int NULL DEFAULT NULL COMMENT '1 增加 2 扣除',
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_device_calc
-- ----------------------------
DROP TABLE IF EXISTS `member_device_calc`;
CREATE TABLE `member_device_calc`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `total_count` int NOT NULL DEFAULT 0 COMMENT '总人数',
  `android_count` int NOT NULL DEFAULT 0 COMMENT '安卓在线人数',
  `ios_count` int NOT NULL DEFAULT 0 COMMENT 'ios人数',
  `h5_count` int NOT NULL DEFAULT 0 COMMENT 'h5人数',
  `web_count` int NOT NULL DEFAULT 0 COMMENT 'pc人数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '在线设备统计(包括游客)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_online_calc
-- ----------------------------
DROP TABLE IF EXISTS `member_online_calc`;
CREATE TABLE `member_online_calc`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `total_count` int NOT NULL DEFAULT 0 COMMENT '总人数',
  `android_count` int NOT NULL DEFAULT 0 COMMENT '安卓在线人数',
  `ios_count` int NOT NULL DEFAULT 0 COMMENT 'ios人数',
  `h5_count` int NOT NULL DEFAULT 0 COMMENT 'h5人数',
  `web_count` int NOT NULL DEFAULT 0 COMMENT 'pc人数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '在线人数统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for onelhc_lottery_sg
-- ----------------------------
DROP TABLE IF EXISTS `onelhc_lottery_sg`;
CREATE TABLE `onelhc_lottery_sg`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '日期',
  `issue` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '第几期',
  `number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开奖号码',
  `time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '更新时间',
  `ideal_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '官方开奖时间',
  `open_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'WAIT' COMMENT '状态：WAIT 等待开奖 | AUTO 自动开奖 | HANDLE 手动开奖',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UN1_issue`(`issue` ASC) USING BTREE,
  INDEX `idx1_ideal_time`(`ideal_time` ASC) USING BTREE,
  INDEX `idx_o_i`(`open_status` ASC, `ideal_time` ASC) USING BTREE,
  INDEX `idx_o_i_i`(`open_status` ASC, `issue` ASC, `ideal_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '六合彩的开奖结果' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operate_sensitive_log
-- ----------------------------
DROP TABLE IF EXISTS `operate_sensitive_log`;
CREATE TABLE `operate_sensitive_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL DEFAULT 0 COMMENT '用户id',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '用户帐号',
  `operate_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '当前登录ip地址',
  `request_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '请求类型，GET，POST',
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '操作对应的url',
  `module` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '模块名字',
  `methods` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '方法名',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `response_time` bigint NOT NULL DEFAULT 0 COMMENT '响应时间（毫秒）',
  `response_result` int NOT NULL DEFAULT 0 COMMENT '响应结果，0：执行成功，1：执行失败',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '敏感操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_append_record
-- ----------------------------
DROP TABLE IF EXISTS `order_append_record`;
CREATE TABLE `order_append_record`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int NOT NULL COMMENT '用户id',
  `lottery_id` int NOT NULL COMMENT '彩种id',
  `play_id` int NOT NULL COMMENT '玩法id',
  `setting_id` int NOT NULL COMMENT '配置id',
  `first_issue` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '第一期期号',
  `bet_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '投注号码',
  `bet_count` int NOT NULL COMMENT '投注注数',
  `bet_price` decimal(10, 2) NOT NULL COMMENT '单注金额',
  `win_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '累计中奖金额',
  `win_count` int NOT NULL DEFAULT 0 COMMENT '累计中奖注数',
  `bet_multiples` double(10, 2) NOT NULL DEFAULT 2.00 COMMENT '投注倍数',
  `double_multiples` double(10, 2) NOT NULL DEFAULT 1.00 COMMENT '翻倍倍数',
  `append_count` int NOT NULL COMMENT '追号期数',
  `appended_count` int NOT NULL DEFAULT 0 COMMENT '已追期数',
  `type` int NOT NULL COMMENT '类型：1 同倍追号 | 2 翻倍追号',
  `win_stop` bit(1) NOT NULL DEFAULT b'1' COMMENT '中奖后停止追号：1停止 | 0不停止',
  `is_stop` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否已停止追号',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '追号记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_bet_record
-- ----------------------------
DROP TABLE IF EXISTS `order_bet_record`;
CREATE TABLE `order_bet_record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT '用户id',
  `order_id` int NOT NULL COMMENT '投注单id',
  `cate_id` int NOT NULL COMMENT '彩种类别id',
  `lottery_id` int NOT NULL COMMENT '彩种id',
  `play_id` int NOT NULL COMMENT '玩法id',
  `setting_id` int NOT NULL COMMENT '玩法配置id',
  `play_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '玩法名称',
  `issue` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '购买的期号',
  `order_sn` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '订单号',
  `bet_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '投注号码',
  `bet_count` int NOT NULL COMMENT '投注总注数',
  `bet_amount` decimal(20, 3) NOT NULL COMMENT '投注金额',
  `win_amount` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '中奖金额',
  `back_amount` decimal(20, 3) NOT NULL DEFAULT 0.000 COMMENT '返点金额',
  `god_order_id` int NOT NULL DEFAULT 0 COMMENT '大神推单id, 0为自主投注',
  `tb_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'WAIT' COMMENT '状态：中奖:WIN | 未中奖:NO_WIN | 等待开奖:WAIT | 和:HE | 撤单:BACK',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `win_count` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '中奖注数',
  `is_push` int NULL DEFAULT 0 COMMENT '是否推单 0 否 1 是',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '来源：Android | IOS | WEB',
  `familyid` bigint NULL DEFAULT NULL COMMENT '直播间购彩对应的家族id',
  `room_id` bigint NULL DEFAULT NULL COMMENT '直播房间id',
  `type` int NOT NULL DEFAULT 0 COMMENT '0:普通订单 1:试玩订单',
  `trial_id` int NULL DEFAULT NULL COMMENT '试玩房间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx01_play_id`(`play_id` ASC, `lottery_id` ASC, `tb_status` ASC) USING BTREE,
  INDEX `god_order_id`(`god_order_id` ASC, `tb_status` ASC) USING BTREE,
  INDEX `idx02_create_time`(`create_time` ASC) USING BTREE,
  INDEX `idx04_sort1`(`user_id` ASC, `bet_amount` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx05_sort2`(`user_id` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx06_sort3`(`user_id` ASC, `win_amount` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx_order_id`(`order_id` ASC) USING BTREE,
  INDEX `idx07_lottery_id`(`lottery_id` ASC, `tb_status` ASC) USING BTREE,
  INDEX `idx_bet_amount`(`bet_amount` ASC) USING BTREE,
  INDEX `idx_win_amount`(`win_amount` ASC) USING BTREE,
  INDEX `idx_tb_status`(`tb_status` ASC) USING BTREE,
  INDEX `idx_setting_id`(`setting_id` ASC) USING BTREE,
  INDEX `idx_is_push`(`is_push` ASC) USING BTREE,
  INDEX `idx_update_time`(`update_time` ASC) USING BTREE,
  INDEX `idx_cate_id`(`cate_id` ASC) USING BTREE,
  INDEX `idx_order_sn`(`order_sn` ASC) USING BTREE,
  INDEX `idx_issue`(`issue` ASC) USING BTREE,
  INDEX `idx_u_r`(`user_id` ASC, `room_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户投注单-注号记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_record
-- ----------------------------
DROP TABLE IF EXISTS `order_record`;
CREATE TABLE `order_record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '订单号',
  `issue` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '购买的期号',
  `user_id` int NOT NULL COMMENT '购彩用户id',
  `lottery_id` int NOT NULL COMMENT '彩种id',
  `append_id` int NOT NULL DEFAULT 0 COMMENT '追号id（为0则为非追号订单）',
  `open_number` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '开奖号码',
  `source` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '来源：Android | IOS | WEB',
  `buy_source` int NULL DEFAULT 0 COMMENT '购彩来源',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'NORMAL' COMMENT '订单状态：正常：NORMAL；撤单：BACK;',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_sn`(`order_sn` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx02_issue`(`issue` ASC, `lottery_id` ASC, `status` ASC, `open_number` ASC) USING BTREE,
  INDEX `idx01_count`(`id` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx03_create_time`(`create_time` ASC) USING BTREE,
  INDEX `idx_issue`(`issue` ASC) USING BTREE,
  INDEX `idx_lottery_id`(`lottery_id` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE,
  INDEX `idx_open_number`(`open_number` ASC) USING BTREE,
  INDEX `idx_source`(`source` ASC) USING BTREE,
  INDEX `idx_update_time`(`update_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户投注单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_robot_record
-- ----------------------------
DROP TABLE IF EXISTS `order_robot_record`;
CREATE TABLE `order_robot_record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL COMMENT '用户id',
  `order_id` int NOT NULL COMMENT '投注单id',
  `cate_id` int NOT NULL COMMENT '彩种类别id',
  `lottery_id` int NOT NULL COMMENT '彩种id',
  `play_id` int NOT NULL COMMENT '玩法id',
  `setting_id` int NOT NULL COMMENT '玩法配置id',
  `play_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '玩法名称',
  `issue` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '购买的期号',
  `order_sn` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '订单号',
  `bet_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '投注号码',
  `bet_count` int NOT NULL COMMENT '投注总注数',
  `bet_amount` decimal(20, 2) NOT NULL COMMENT '投注金额',
  `win_amount` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '中奖金额',
  `back_amount` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '返点金额',
  `is_roboter` int NOT NULL DEFAULT 0 COMMENT '是否机器人注单, 0是 1否',
  `tb_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'WAIT' COMMENT '状态：中奖:WIN | 未中奖:NO_WIN | 等待开奖:WAIT | 和:HE | 撤单:BACK',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `win_count` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '中奖注数',
  `is_push` int NULL DEFAULT 0 COMMENT '是否推单 0 否 1 是',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '来源：Android | IOS | WEB',
  `familyid` bigint NULL DEFAULT NULL COMMENT '直播间购彩对应的家族id',
  `room_id` bigint NULL DEFAULT NULL COMMENT '直播房间id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx01_play_id`(`play_id` ASC, `lottery_id` ASC, `tb_status` ASC) USING BTREE,
  INDEX `god_order_id`(`is_roboter` ASC, `tb_status` ASC) USING BTREE,
  INDEX `idx02_create_time`(`create_time` ASC) USING BTREE,
  INDEX `idx04_sort1`(`user_id` ASC, `bet_amount` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx05_sort2`(`user_id` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx06_sort3`(`user_id` ASC, `win_amount` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx_order_id`(`order_id` ASC) USING BTREE,
  INDEX `idx07_lottery_id`(`lottery_id` ASC, `tb_status` ASC) USING BTREE,
  INDEX `idx_bet_amount`(`bet_amount` ASC) USING BTREE,
  INDEX `idx_win_amount`(`win_amount` ASC) USING BTREE,
  INDEX `idx_tb_status`(`tb_status` ASC) USING BTREE,
  INDEX `idx_setting_id`(`setting_id` ASC) USING BTREE,
  INDEX `idx_is_push`(`is_push` ASC) USING BTREE,
  INDEX `idx_update_time`(`update_time` ASC) USING BTREE,
  INDEX `idx_cate_id`(`cate_id` ASC) USING BTREE,
  INDEX `idx_order_sn`(`order_sn` ASC) USING BTREE,
  INDEX `idx_issue`(`issue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '机器人投注中奖模板记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for org_adminprivilege
-- ----------------------------
DROP TABLE IF EXISTS `org_adminprivilege`;
CREATE TABLE `org_adminprivilege`  (
  `ogadid` bigint NOT NULL COMMENT '子账号id',
  `sfunid` bigint NOT NULL COMMENT '功能id',
  PRIMARY KEY (`ogadid`, `sfunid`) USING BTREE,
  INDEX `fk_reference_33`(`sfunid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '子账号功能权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pay_bank
-- ----------------------------
DROP TABLE IF EXISTS `pay_bank`;
CREATE TABLE `pay_bank`  (
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `bank_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pay_merchant
-- ----------------------------
DROP TABLE IF EXISTS `pay_merchant`;
CREATE TABLE `pay_merchant`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pay_chan_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_chan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `merchant_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `merchant_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 0,
  `merchant_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `page_back_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `notify_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_user` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pay_recharge_order
-- ----------------------------
DROP TABLE IF EXISTS `pay_recharge_order`;
CREATE TABLE `pay_recharge_order`  (
  `recharge_id` bigint NOT NULL AUTO_INCREMENT,
  `accno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amount` decimal(19, 2) NULL DEFAULT 0.00,
  `trade_Id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `order_status` int NULL DEFAULT NULL,
  `trade_status` int NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_user` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`recharge_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5152 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pay_type
-- ----------------------------
DROP TABLE IF EXISTS `pay_type`;
CREATE TABLE `pay_type`  (
  `id` int NOT NULL,
  `merchant_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_type_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_type_name_viet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_type_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 0,
  `update_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pcegg_lottery_sg
-- ----------------------------
DROP TABLE IF EXISTS `pcegg_lottery_sg`;
CREATE TABLE `pcegg_lottery_sg`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `issue` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '期号',
  `number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开奖号码',
  `cpk_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '彩票控开奖结果',
  `kcw_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '开彩网开奖结果',
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '实际开奖时间',
  `ideal_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '理想开奖时间',
  `open_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'WAIT' COMMENT '状态：WAIT 等待开奖 | AUTO 自动开奖 | HANDLE 手动开奖',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_issue`(`issue` ASC) USING BTREE,
  INDEX `idx2_open_status`(`open_status` ASC) USING BTREE,
  INDEX `idx1_ideal_time`(`ideal_time` ASC) USING BTREE,
  INDEX `idx_o_i`(`open_status` ASC, `ideal_time` ASC) USING BTREE,
  INDEX `idx_o_i_i`(`open_status` ASC, `issue` ASC, `ideal_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for platform_goldchange
-- ----------------------------
DROP TABLE IF EXISTS `platform_goldchange`;
CREATE TABLE `platform_goldchange`  (
  `pgoldid` bigint NOT NULL AUTO_INCREMENT COMMENT '抽成记录id',
  `refid` bigint NULL DEFAULT NULL COMMENT '相关id 如充值订单id 、 打赏id',
  `refaccno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '乐币来源主播accno',
  `scale` decimal(16, 2) NULL DEFAULT NULL COMMENT '提成比例（如0.25）',
  `goldnum` decimal(16, 2) NULL DEFAULT NULL COMMENT '提成获得乐币数',
  `opnote` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作说明',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`pgoldid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '平台抽成记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for return_lottery_set
-- ----------------------------
DROP TABLE IF EXISTS `return_lottery_set`;
CREATE TABLE `return_lottery_set`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `lottery_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '彩种名称',
  `lottery_category_id` int NULL DEFAULT NULL,
  `lottery_id` int NULL DEFAULT NULL COMMENT '彩种ID',
  `water_amout` int NULL DEFAULT NULL COMMENT '返水比例',
  `amount` decimal(20, 3) NULL DEFAULT NULL COMMENT '金额',
  `edit_user` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_category_lottery`(`lottery_category_id` ASC, `lottery_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '购彩返水' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for return_third_set
-- ----------------------------
DROP TABLE IF EXISTS `return_third_set`;
CREATE TABLE `return_third_set`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NULL DEFAULT NULL COMMENT '类型  1开元  2 AG 3 电竞',
  `water_amout` int NULL DEFAULT NULL COMMENT '返水比例',
  `amount` decimal(20, 3) NULL DEFAULT NULL COMMENT '金额',
  `edit_user` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '返水设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for return_water_set
-- ----------------------------
DROP TABLE IF EXISTS `return_water_set`;
CREATE TABLE `return_water_set`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NULL DEFAULT NULL COMMENT '类型  1 购彩 2 开元 3 AG 4 电竞',
  `is_start` int NULL DEFAULT NULL COMMENT '是否开启',
  `edit_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `edit_user` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '返水设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_agentinfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_agentinfo`;
CREATE TABLE `sys_agentinfo`  (
  `agentid` bigint NOT NULL AUTO_INCREMENT COMMENT '代理id',
  `agentname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '代理名称',
  `minamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '业绩最低标准额(日)',
  `maxamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '业绩最高标准额',
  `commission` decimal(5, 2) NULL DEFAULT NULL COMMENT '返佣比(%)',
  `sortby` int NULL DEFAULT NULL COMMENT '排序权重',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`agentid`) USING BTREE,
  INDEX `idx1`(`agentname` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx2`(`agentid` ASC, `is_delete` ASC, `create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '推广代理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_anchortenlive
-- ----------------------------
DROP TABLE IF EXISTS `sys_anchortenlive`;
CREATE TABLE `sys_anchortenlive`  (
  `roomid` bigint NULL DEFAULT NULL COMMENT '主播房间',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主播会员标识号',
  `status` decimal(1, 0) NULL DEFAULT NULL COMMENT '启用状态0启用9未启用',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  INDEX `fk_reference_90`(`roomid` ASC) USING BTREE,
  CONSTRAINT `sys_anchortenlive_ibfk_1` FOREIGN KEY (`roomid`) REFERENCES `bas_anchorroom` (`roomid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '騰訊云主播表(騰訊云開播主播關聯表)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_app_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_info`;
CREATE TABLE `sys_app_info`  (
  `appid` bigint NOT NULL AUTO_INCREMENT COMMENT '升级id',
  `appname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'app名称',
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版本',
  `versionname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版本名称',
  `appsize` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'app安装包大小（单位M）',
  `versioninfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版本说明',
  `isnew` int NULL DEFAULT 9 COMMENT '是否最新版本 0 是 9 否',
  `appdownurl` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'app下载地址',
  `is_force` int NULL DEFAULT 9 COMMENT '是否强制 0是 9否',
  `app_type` int NULL DEFAULT NULL COMMENT '平台类型 1 安卓 2 IOS',
  `publishedtime` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`appid`) USING BTREE,
  INDEX `idx_d_n_t`(`is_delete` ASC, `isnew` ASC, `app_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'APP版本升级信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_appface
-- ----------------------------
DROP TABLE IF EXISTS `sys_appface`;
CREATE TABLE `sys_appface`  (
  `funbuttonid` bigint NOT NULL AUTO_INCREMENT COMMENT '按钮id',
  `funbuttonkind` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '按钮类别  发现页上部功能组 funfxtop',
  `funbuttonname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '按钮名称',
  `funbuttonlog` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '按钮图标',
  `funbuttonlink` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '按钮点击跳转链接',
  `fbrefpara` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关参数',
  `browsnum` bigint NULL DEFAULT NULL COMMENT '浏览量',
  `sortby` int NULL DEFAULT NULL COMMENT '排序权重',
  `buttonnote` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`funbuttonid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'APP界面图标按钮（预留）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_bduserrole
-- ----------------------------
DROP TABLE IF EXISTS `sys_bduserrole`;
CREATE TABLE `sys_bduserrole`  (
  `refurid` bigint NOT NULL AUTO_INCREMENT COMMENT '用户角色关系id',
  `sysroleid` bigint NULL DEFAULT NULL COMMENT '角色id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`refurid`) USING BTREE,
  INDEX `fk_relationship_259`(`sysroleid` ASC) USING BTREE,
  INDEX `fk_relationship_260`(`accno` ASC, `is_delete` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台用户角色关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_busparameter
-- ----------------------------
DROP TABLE IF EXISTS `sys_busparameter`;
CREATE TABLE `sys_busparameter`  (
  `busparamid` bigint NOT NULL AUTO_INCREMENT COMMENT '业务参数ID',
  `busparamcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '业务参数代码',
  `pbusparamcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务参数父代码',
  `busparamname` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务参数名称',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数说明',
  `status` decimal(1, 0) NULL DEFAULT 0 COMMENT '系统参数启用状态0启用9未启用',
  `sortby` int NOT NULL DEFAULT 1 COMMENT '排序权重',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`busparamid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '业务参数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_cdn
-- ----------------------------
DROP TABLE IF EXISTS `sys_cdn`;
CREATE TABLE `sys_cdn`  (
  `cdnid` bigint NOT NULL AUTO_INCREMENT COMMENT 'cdnid',
  `cdnstore` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'cdn商家 可以没有',
  `domain` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '域名名称',
  `secretkey` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '访问加密key',
  `domainkind` int NULL DEFAULT NULL COMMENT '域名类型： 0：app域名 1：管理后台域名 2：web域名 3：下载域名 4：幽兰web域名 5幽兰管理后台域名 6：awsS3视频资源 7：awsS3图片资源  8：三分时时彩',
  `region` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '适用区域或国家 如：北方/南方/柬埔寨....',
  `cname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'CDN CNAME',
  `note` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `status` decimal(1, 0) NULL DEFAULT NULL COMMENT '系统参数启用状态0启用9未启用',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`cdnid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'CDN分发配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_domain
-- ----------------------------
DROP TABLE IF EXISTS `sys_domain`;
CREATE TABLE `sys_domain`  (
  `id` int NOT NULL,
  `domain_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `invitation_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `is_delete` bit(1) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_errorlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_errorlog`;
CREATE TABLE `sys_errorlog`  (
  `errlogid` bigint NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `systemname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统代码：来源系统代码',
  `modelname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `optcontent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '日志内容',
  `optuser` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `optip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作客户端ip',
  `level` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志等级DDINFO：     正常normal  系统错误error',
  `serverip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '当前服务器ip',
  `serverstatus` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '当前服务器负载:cpu%,io%,网络带宽占用情况等',
  `orginfo` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源信息(md5)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`errlogid`) USING BTREE,
  INDEX `idx1`(`systemname` ASC, `modelname` ASC, `serverstatus` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx2`(`serverstatus` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx3`(`systemname` ASC, `modelname` ASC, `optuser` ASC, `level` ASC, `serverstatus` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx4`(`systemname` ASC, `level` ASC, `serverstatus` ASC, `create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5980 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '异常错误日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_feedback
-- ----------------------------
DROP TABLE IF EXISTS `sys_feedback`;
CREATE TABLE `sys_feedback`  (
  `feedid` bigint NOT NULL AUTO_INCREMENT COMMENT '意见id',
  `feedtype` decimal(1, 0) NULL DEFAULT NULL COMMENT '意见类型 1普通 2财务',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `unique_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '会员ID',
  `feedbody` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '意见内容 10-200字描述',
  `feedimgs` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '反馈图片 多张以“,”分隔',
  `status` decimal(1, 0) NULL DEFAULT NULL COMMENT '处理状态 0已处理 9未处理',
  `handlenote` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理结果说明',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`feedid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '意见反馈' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_funcinterface
-- ----------------------------
DROP TABLE IF EXISTS `sys_funcinterface`;
CREATE TABLE `sys_funcinterface`  (
  `itfcid` bigint NOT NULL AUTO_INCREMENT COMMENT '接口id',
  `ofsystem` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属系统 likes-manage likes-app likes',
  `itfcname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接口名称',
  `itfcurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接口地址',
  `itfcdesc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接口说明',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`itfcid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台系统接口信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_functionorg
-- ----------------------------
DROP TABLE IF EXISTS `sys_functionorg`;
CREATE TABLE `sys_functionorg`  (
  `sfunid` bigint NOT NULL AUTO_INCREMENT COMMENT '功能id',
  `parsfunid` bigint NULL DEFAULT NULL COMMENT '父功能id',
  `ofsystem` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属系统  likes-manage运营管理后台',
  `sfuntype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能类别  menu菜单   button按钮   tabTAB',
  `sfunname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能名称',
  `sfunstatus` decimal(1, 0) NULL DEFAULT NULL COMMENT '功能状态 0正常   9停用',
  `sfunurl` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能url或参数',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`sfunid`) USING BTREE,
  INDEX `fk_relationship_255`(`parsfunid` ASC, `is_delete` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 284 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台系统(运营后台)功能' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_functionorgs
-- ----------------------------
DROP TABLE IF EXISTS `sys_functionorgs`;
CREATE TABLE `sys_functionorgs`  (
  `sfunid` bigint NOT NULL AUTO_INCREMENT COMMENT '功能id',
  `parsfunid` bigint NULL DEFAULT NULL COMMENT '父功能id',
  `ofsystem` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属系统  live-manage运营管理后台',
  `sfuntype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '功能类别  menu菜单   button按钮   tabTAB',
  `sfunname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '功能名称',
  `sfunstatus` decimal(1, 0) NULL DEFAULT NULL COMMENT '功能状态 0正常   9停用',
  `sfunurl` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '功能url或参数',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`sfunid`) USING BTREE,
  INDEX `fk_relationship_255`(`parsfunid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '后台系统(运营后台)功能' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_infolog
-- ----------------------------
DROP TABLE IF EXISTS `sys_infolog`;
CREATE TABLE `sys_infolog`  (
  `logid` bigint NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `systemname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统代码：来源系统代码',
  `modelname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `optcontent` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志内容',
  `optip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作客户端ip',
  `serverip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '当前服务器ip',
  `longitude` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经度',
  `latitude` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `orginfo` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`logid`) USING BTREE,
  INDEX `idx1`(`systemname` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 942514 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录信息日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_likesserver
-- ----------------------------
DROP TABLE IF EXISTS `sys_likesserver`;
CREATE TABLE `sys_likesserver`  (
  `likesid` bigint NOT NULL AUTO_INCREMENT COMMENT '直播服务器id',
  `servername` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务器名称',
  `serverurl` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '服务器地址',
  `weight` int NOT NULL COMMENT '服务器权重',
  `region` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '服务器所在区域名称\r\n\r\n南方：江苏 安徽 湖北 重庆 四川 西藏 云南 贵州 湖南 江西 广西 广东 福建 浙江 上海 海南（台港澳）\r\n\r\n北方：山东 河南 山西 陕西 甘肃 青海 新疆 河北 天津 北京 内蒙古 辽宁 吉林 黑龙江 宁夏。',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`likesid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '直播服务器节点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_liveserver
-- ----------------------------
DROP TABLE IF EXISTS `sys_liveserver`;
CREATE TABLE `sys_liveserver`  (
  `liveid` bigint NOT NULL AUTO_INCREMENT COMMENT '直播服务器id',
  `servername` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器名称',
  `serverurl` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务器地址',
  `weight` int NOT NULL COMMENT '服務器權重',
  `region` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服務器所在區域名稱\r\n\r\n南方：江苏 安徽 湖北 重庆 四川 西藏 云南 贵州 湖南 江西 广西 广东 福建 浙江 上海 海南（台港澳）\r\n\r\n北方：山东 河南 山西 陕西 甘肃 青海 新疆 河北 天津 北京 内蒙古 辽宁 吉林 黑龙江 宁夏。',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`liveid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '直播服务器节点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_operdatalog
-- ----------------------------
DROP TABLE IF EXISTS `sys_operdatalog`;
CREATE TABLE `sys_operdatalog`  (
  `oplogid` bigint NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `dbname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库名称',
  `modulename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `refcollname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表或集合名称',
  `optcontent` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志内容',
  `beforedata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '操作前数据',
  `lastdate` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '操作后数据',
  `operstatus` decimal(1, 0) NULL DEFAULT NULL COMMENT '操作状态0成功 9失败',
  `operdate` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oplogid`) USING BTREE,
  INDEX `idx1`(`accno` ASC, `operstatus` ASC, `operdate` ASC) USING BTREE,
  INDEX `idx2`(`modulename` ASC, `operstatus` ASC, `operdate` ASC) USING BTREE,
  INDEX `idx3`(`operstatus` ASC, `operdate` ASC) USING BTREE,
  INDEX `idx4`(`operdate` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '重要数据操作日志：\r\n重要数据定义：修改金币数量，取消订单、' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_operlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_operlog`;
CREATE TABLE `sys_operlog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `acclogin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `accno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `operation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61690 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_parameter
-- ----------------------------
DROP TABLE IF EXISTS `sys_parameter`;
CREATE TABLE `sys_parameter`  (
  `sysparamid` bigint NOT NULL AUTO_INCREMENT COMMENT '系统参数id',
  `sysparamcode` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '系统参数代码',
  `sysparamname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统参数名称',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '参数说明',
  `sysparamvalue` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统参数值',
  `sortby` int NOT NULL DEFAULT 1 COMMENT '排序值,值越小越靠前',
  `status` decimal(1, 0) NULL DEFAULT NULL COMMENT '系统参数启用状态0启用9未启用',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`sysparamid`) USING BTREE,
  INDEX `FK_sysparam_1`(`sysparamcode` ASC, `is_delete` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统参数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_payaccount
-- ----------------------------
DROP TABLE IF EXISTS `sys_payaccount`;
CREATE TABLE `sys_payaccount`  (
  `bankid` bigint NOT NULL AUTO_INCREMENT COMMENT '银行账户id',
  `accounttype` decimal(1, 0) NULL DEFAULT NULL COMMENT '账号类型  1支付寶 2微信   3銀聯',
  `accountno` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '银行卡/支付寶/微信賬號',
  `accountname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '銀行/支付寶/微信开户人姓名',
  `bankname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '银行名称标识符 如ICBC',
  `bankaddress` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '开户行 如 某某支行',
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信、支付寶暱稱',
  `minamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '單筆最低金額',
  `maxamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '單筆入賬最高金額',
  `minmemlevel` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '啟用會員最低等級',
  `maxmemlevel` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '啟用會員最高等級',
  `stopamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '停用此卡上限金額',
  `easyrecharge` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '快捷充值套餐金額, 多條以\",\"分隔',
  `isinput` decimal(1, 0) NULL DEFAULT NULL COMMENT '是否允許輸入金額  0允許 9禁止 ',
  `status` decimal(1, 0) NOT NULL COMMENT '啟用狀態: 0啟用 9停用',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sys_status` bit(1) NULL DEFAULT b'1' COMMENT '系统启用禁用',
  `total_amount` decimal(16, 2) NULL DEFAULT 0.00 COMMENT '累计充值金额',
  PRIMARY KEY (`bankid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '入款賬戶表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_payprovider
-- ----------------------------
DROP TABLE IF EXISTS `sys_payprovider`;
CREATE TABLE `sys_payprovider`  (
  `providerid` bigint NOT NULL AUTO_INCREMENT COMMENT '支付商id',
  `provider` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付商名称',
  `providercode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户code',
  `paydns` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付域名',
  `backurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '返回地址',
  `allowips` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回调白名单  多个ip以逗号分隔',
  `torderurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方支付订单查询地址',
  `paygateway` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付网关',
  `accountno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户ID  多个以英文逗号分隔',
  `secretcode` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户秘钥',
  `pubsecret` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户公钥',
  `prisecret` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户私钥',
  `serversecret` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '伺服器公钥',
  `status` decimal(1, 0) NOT NULL COMMENT '启用状态: 0启用 9停用',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`providerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付商设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_record
-- ----------------------------
DROP TABLE IF EXISTS `sys_record`;
CREATE TABLE `sys_record`  (
  `recordid` int NOT NULL AUTO_INCREMENT,
  `operationer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `operationdate` timestamp NULL DEFAULT NULL,
  `recordevent` int NULL DEFAULT NULL,
  `recordremark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`recordid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_reffuncinitfc
-- ----------------------------
DROP TABLE IF EXISTS `sys_reffuncinitfc`;
CREATE TABLE `sys_reffuncinitfc`  (
  `itfcid` bigint NOT NULL COMMENT '接口id',
  `sfunid` bigint NOT NULL COMMENT '功能id',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`itfcid`, `sfunid`) USING BTREE,
  INDEX `fk_relationship_257`(`sfunid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '功能接口关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_rolefunc
-- ----------------------------
DROP TABLE IF EXISTS `sys_rolefunc`;
CREATE TABLE `sys_rolefunc`  (
  `rolefuncid` bigint NOT NULL AUTO_INCREMENT COMMENT '角色功能id',
  `sysroleid` bigint NOT NULL COMMENT '角色id',
  `sfunid` bigint NOT NULL COMMENT '功能id',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`rolefuncid`, `sysroleid`, `sfunid`) USING BTREE,
  INDEX `fk_relationship_260`(`sysroleid` ASC) USING BTREE,
  INDEX `fk_relationship_261`(`sfunid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 349 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色拥有功能' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_roleinfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_roleinfo`;
CREATE TABLE `sys_roleinfo`  (
  `sysroleid` bigint NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `sysrolename` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `sysrolestatus` decimal(1, 0) NULL DEFAULT NULL COMMENT '角色状态  0正常  9停用',
  PRIMARY KEY (`sysroleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台系统角色' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_threepayset
-- ----------------------------
DROP TABLE IF EXISTS `sys_threepayset`;
CREATE TABLE `sys_threepayset`  (
  `tpaysetid` bigint NOT NULL AUTO_INCREMENT COMMENT '三方账户id',
  `providerid` bigint NULL DEFAULT NULL COMMENT '支付商id',
  `tpayname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设定名称 如 支付宝  微信  银联',
  `paytype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付方式  NETBANK 网银转账  WECHAT 微信收款  ALIPAY 支付宝支付',
  `paycode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付方式  wechatangel 微信话费扫码  wechatangelwap  微信话费H5  alipay   支付宝  alipayangel  支付宝话费扫码H5  alipaylst  支付宝转卡',
  `payvalue` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付设置值',
  `minamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '单笔最低金额',
  `maxamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '单笔入账最高金额',
  `minmemlevel` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '启用会员最低等级',
  `maxmemlevel` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '启用会员最高等级',
  `stopamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '停用次卡上限金额',
  `easyrecharge` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快捷充值套餐金额, 多条以\",\"分隔',
  `isinput` decimal(1, 0) NULL DEFAULT NULL COMMENT '是否允许输入金额  0允许 9禁止 ',
  `status` decimal(1, 0) NULL DEFAULT NULL COMMENT '启用状态: 0启用 9停用',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`tpaysetid`) USING BTREE,
  INDEX `fk_reference_75`(`providerid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '三方支付设定表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tra_applyaudit
-- ----------------------------
DROP TABLE IF EXISTS `tra_applyaudit`;
CREATE TABLE `tra_applyaudit`  (
  `apauditid` bigint NOT NULL AUTO_INCREMENT COMMENT '提现稽核对账表',
  `apycid` bigint NULL DEFAULT NULL COMMENT '提现申请id',
  `orderid` bigint NULL DEFAULT NULL COMMENT '充值订单id',
  `paysetid` bigint NULL DEFAULT NULL COMMENT '支付设定id',
  `auditamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '常态性稽核费（元）',
  `codesize` decimal(16, 3) NULL DEFAULT NULL COMMENT '打码量',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`apauditid`) USING BTREE,
  INDEX `fk_reference_61`(`apycid` ASC) USING BTREE,
  INDEX `fk_reference_62`(`orderid` ASC) USING BTREE,
  INDEX `fk_reference_74`(`paysetid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '提现稽核对账表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for tra_applycash
-- ----------------------------
DROP TABLE IF EXISTS `tra_applycash`;
CREATE TABLE `tra_applycash`  (
  `apycid` bigint NOT NULL AUTO_INCREMENT COMMENT '提现申请id',
  `bankaccid` bigint NULL DEFAULT NULL COMMENT '银行账户id',
  `orderid` bigint NULL DEFAULT NULL COMMENT '订单id',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `apycdate` datetime NULL DEFAULT NULL COMMENT '申请时间',
  `apycgold` decimal(16, 3) NULL DEFAULT NULL COMMENT '申请总金额',
  `apycamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '打款金额',
  `apycstatus` decimal(1, 0) NULL DEFAULT NULL COMMENT '申请状态  1提交申请  2提现处理中  4已打款    8已到账  9已取消',
  `paymemname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '打款人',
  `paydate` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `damaliang` decimal(16, 3) NULL DEFAULT 0.000 COMMENT '打码量',
  `xingzhengfei` decimal(16, 3) NULL DEFAULT 0.000 COMMENT '行政费',
  `bet_amount` decimal(16, 3) NULL DEFAULT 0.000 COMMENT '投注金额充值金额',
  `no_withdrawal_amount` decimal(16, 3) NULL DEFAULT 0.000 COMMENT '当前所需打码量',
  `ordertype` decimal(2, 0) NULL DEFAULT NULL COMMENT '提现类型，12投注分成，13礼物分成',
  `payimg` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付凭证截图 多张以“，”分隔',
  `orderno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第3方支付返回流水号',
  PRIMARY KEY (`apycid`) USING BTREE,
  INDEX `fk_reference_25`(`bankaccid` ASC) USING BTREE,
  INDEX `fk_reference_44`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '提现申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tra_orderinfom
-- ----------------------------
DROP TABLE IF EXISTS `tra_orderinfom`;
CREATE TABLE `tra_orderinfom`  (
  `orderid` bigint NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `mealid` bigint NULL DEFAULT NULL COMMENT '充值套餐id',
  `bankid` bigint NULL DEFAULT NULL COMMENT '入款账户id',
  `mem_bank_id` bigint NULL DEFAULT NULL,
  `roomid` bigint NULL DEFAULT NULL COMMENT '主播房间id',
  `lotkindid` bigint NULL DEFAULT NULL COMMENT '彩种id',
  `sschistoryid` bigint NULL DEFAULT NULL COMMENT '时时彩开奖id',
  `oddsid` bigint NULL DEFAULT NULL COMMENT '投注项id',
  `chekindid` bigint NULL DEFAULT NULL COMMENT '棋牌分类id',
  `tpaysetid` bigint NULL DEFAULT NULL COMMENT '三方支付id',
  `ordertype` decimal(2, 0) NULL DEFAULT NULL COMMENT '订单类型 1在线支付 2线下支付 3在线提现 4线下提现 5彩票购彩 6彩票兑奖 7棋牌上分 8棋牌下分 9其他收入(发帖/推荐)  10其他支出(打赏)  11代理结算收入 14 代充人入款 15代充人给会员充值 16代充存入 17代充提出\r\n',
  `orderno` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订单编号4码年+2码月+8码流水号，生成逻辑：取当前年月，然后从数据库中取当前年月最大订单号，然后将后面8位流水号+1',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `paycode` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '支付标示第三方支付标示号，如支付宝的订单号或微信的prepay_id等',
  `orderdate` timestamp NULL DEFAULT NULL COMMENT '订单日期',
  `expiredate` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  `paytype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '支付方式  JSAPI--公众号支付、NATIVE--原生扫码支付、APP--app支付   NETBANK 网银转账  WECHAT 微信收款  ALIPAY 支付宝支付',
  `oldamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '订单原价',
  `sumamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '订单总金额',
  `realamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '实付金额',
  `isinvoice` decimal(1, 0) NULL DEFAULT NULL COMMENT '是否开具发票0是 9否',
  `orderstatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订单状态 ord01新订单 ord04待付款 ord05提现申请 ord06提现取消 ord07提现处理中 ord08已付款  ord09用户取消 ord10已评价  ord11已退款 ord12已提现  ord98已拉取棋牌订单 ord99已过期   ',
  `accountstatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '结算状态 acc04待结算（未打码）  acc08已结算（已打码）  acc99已取消（不可结算）',
  `cancelreason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '取消订单原因',
  `payimg` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '支付凭证截图 多张以“，”分隔',
  `pay_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `transfer_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `paywechat` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '支付处理微信号',
  `paydate` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `payuser` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '汇款姓名',
  `paynote` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '汇款备注',
  `ordernote` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '来源 Android | IOS | WEB',
  `cleanid` bigint NULL DEFAULT 0 COMMENT '代理结算id,大于0，表示结算过，可追溯被何处结算',
  `take_type` int NOT NULL DEFAULT 0,
  `buy_vip` bigint NULL DEFAULT NULL COMMENT '购买VIP的等级,为空则表示不购买等级',
  PRIMARY KEY (`orderid`) USING BTREE,
  INDEX `fk_reference_43`(`mealid` ASC) USING BTREE,
  INDEX `fk_reference_44`(`bankid` ASC) USING BTREE,
  INDEX `fk_reference_59`(`roomid` ASC) USING BTREE,
  INDEX `fk_reference_52`(`lotkindid` ASC) USING BTREE,
  INDEX `fk_reference_58`(`oddsid` ASC) USING BTREE,
  INDEX `fk_reference_64`(`chekindid` ASC) USING BTREE,
  INDEX `fk_reference_76`(`tpaysetid` ASC) USING BTREE,
  INDEX `tp_reference_01`(`ordertype` ASC) USING BTREE,
  INDEX `tp_reference_02`(`orderstatus` ASC, `accountstatus` ASC, `is_delete` ASC) USING BTREE,
  INDEX `tp_reference_03`(`accno` ASC) USING BTREE,
  INDEX `tp_reference_04`(`orderno` ASC) USING BTREE,
  INDEX `idx_t_d_r_t`(`ordertype` ASC, `is_delete` ASC, `roomid` ASC, `create_time` ASC) USING BTREE,
  INDEX `idx_d`(`is_delete` ASC) USING BTREE,
  INDEX `idx_r_o`(`roomid` ASC, `ordertype` ASC) USING BTREE,
  INDEX `idx_ac_ot_os`(`accno` ASC, `ordertype` ASC, `orderstatus` ASC) USING BTREE,
  INDEX `tk_tk`(`take_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79529 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单信息主' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tra_ordertracking
-- ----------------------------
DROP TABLE IF EXISTS `tra_ordertracking`;
CREATE TABLE `tra_ordertracking`  (
  `trackid` bigint NOT NULL AUTO_INCREMENT COMMENT '追踪id',
  `orderid` bigint NULL DEFAULT NULL COMMENT '订单id',
  `trackdate` datetime NULL DEFAULT NULL COMMENT '处理时间',
  `trackbody` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理内容',
  `operuse` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `orderstatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单状态 ord01新订单 ord04已审核待付款  ord08已付款待评价 ord12已发货 ord16已完成（已收货） ord10已评价 ord99已取消  ord07退款中  ord11已退款  ',
  PRIMARY KEY (`trackid`) USING BTREE,
  INDEX `fk_relationship_37`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97160 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单追踪' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tra_paymentinfo
-- ----------------------------
DROP TABLE IF EXISTS `tra_paymentinfo`;
CREATE TABLE `tra_paymentinfo`  (
  `payid` bigint NOT NULL AUTO_INCREMENT COMMENT '支付id',
  `orderid` bigint NULL DEFAULT NULL COMMENT '订单id',
  `paycode` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付标示第三方支付标示号，如支付宝的订单号或微信的prepay_id等',
  `paydate` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `paydatee` datetime NULL DEFAULT NULL COMMENT '支付完成时间',
  `serialno` bigint NULL DEFAULT NULL COMMENT '流水号：8位年月日+8位数字，如2016052800001200',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员标识号',
  `orderno` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单编号4码年+2码月+8码流水号，生成逻辑：取当前年月，然后从数据库中取当前年月最大订单号，然后将后面8位流水号+1',
  `paykind` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付类别 weixin微信支付 alipay支付宝支付',
  `paytype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付方式  JSAPI--公众号支付、NATIVE--原生扫码支付、APP--app支付   NETBANK 网银转账',
  `tradingno` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易标识号',
  `payamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '支付金额',
  `payscore` int NULL DEFAULT NULL COMMENT '支付积分',
  `paystatus` decimal(1, 0) NULL DEFAULT NULL COMMENT '支付状态0支付成功/退款成功   1支付中/退款中     9支付失败/退款失败',
  `payerrdesc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付错误描述 不用格式自己定义，如微信支付可以存错误代码$$错误描述',
  `systemname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统代码：来源系统代码',
  `paycodeurl` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付标示二维码(页面)',
  `paynote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注 退款时把原支付id写到这里',
  `payrefundtype` decimal(1, 0) NULL DEFAULT NULL COMMENT '支付退款类型  0或null 支付  9 退款',
  `refundnote` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款说明',
  `refundcode` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款标示号 uuid',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `provider_id` bigint NULL DEFAULT NULL COMMENT '商户配置ID',
  PRIMARY KEY (`payid`) USING BTREE,
  INDEX `fk_relationship_26`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tra_rechargeaudit
-- ----------------------------
DROP TABLE IF EXISTS `tra_rechargeaudit`;
CREATE TABLE `tra_rechargeaudit`  (
  `recauditid` bigint NOT NULL AUTO_INCREMENT COMMENT '充值对账id',
  `orderid` bigint NULL DEFAULT NULL COMMENT '订单id',
  `paysetid` bigint NULL DEFAULT NULL COMMENT '支付设定id',
  `giftamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '优惠赠送金额',
  `buttonnote` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`recauditid`) USING BTREE,
  INDEX `fk_reference_87`(`orderid` ASC) USING BTREE,
  INDEX `fk_reference_88`(`paysetid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '入款对账表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tra_rechargemeal
-- ----------------------------
DROP TABLE IF EXISTS `tra_rechargemeal`;
CREATE TABLE `tra_rechargemeal`  (
  `mealid` bigint NOT NULL AUTO_INCREMENT COMMENT '充值套餐id',
  `realamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '充值金额',
  `rechargegold` decimal(16, 3) NULL DEFAULT NULL COMMENT '充值播币数',
  `givegold` decimal(16, 3) NULL DEFAULT NULL COMMENT '赠送播币数',
  `givepercent` decimal(16, 3) NULL DEFAULT NULL COMMENT '赠送率  三位小数',
  `expirydates` datetime NULL DEFAULT NULL COMMENT '有效期起',
  `expirydatee` datetime NULL DEFAULT NULL COMMENT '有效期止',
  `mealnote` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sortby` int NULL DEFAULT NULL COMMENT '排序权重 默认为0  数字越大排序越靠前',
  `is_delete` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`mealid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '充值套餐' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tra_repayorder
-- ----------------------------
DROP TABLE IF EXISTS `tra_repayorder`;
CREATE TABLE `tra_repayorder`  (
  `reorderid` bigint NOT NULL AUTO_INCREMENT COMMENT '代充订单id',
  `orderid` bigint NULL DEFAULT NULL COMMENT '订单id',
  `refaccno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '代充人accno',
  `refaccount` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '代充人帐号',
  `accno` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '充值人accno',
  `memaccount` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '充值人UNIQUE_ID',
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '充值人昵称',
  `realamt` decimal(16, 3) NULL DEFAULT NULL COMMENT '入款金额',
  `orderstatus` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单状态 ord01新订单 ord04待付款 ord08已付款  ord09用户取消 ord11已退款 ord99已过期   ',
  `note` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `is_delete` bit(1) NULL DEFAULT b'0' COMMENT '是否删除',
  `create_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`reorderid`) USING BTREE,
  INDEX `tra_repayorder_fk1`(`orderid` ASC) USING BTREE,
  INDEX `tra_repayorder_accno`(`accno` ASC) USING BTREE,
  INDEX `tra_repayorder_memaccount`(`memaccount` ASC) USING BTREE,
  INDEX `tra_repayorder_refaccno`(`refaccno` ASC) USING BTREE,
  INDEX `tra_repayorder_nickname`(`nickname` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代充订单表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
