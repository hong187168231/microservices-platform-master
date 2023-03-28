/*
 Navicat Premium Data Transfer

 Source Server         : 167.179.15.36casino
 Source Server Type    : MySQL
 Source Server Version : 50735 (5.7.35)
 Source Host           : 167.179.15.36:6503
 Source Schema         : casino

 Target Server Type    : MySQL
 Target Server Version : 50735 (5.7.35)
 File Encoding         : 65001

 Date: 28/03/2023 17:20:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_change
-- ----------------------------
DROP TABLE IF EXISTS `account_change`;
CREATE TABLE `account_change`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `amount` decimal(19, 6) NULL DEFAULT NULL,
  `amount_after` decimal(19, 6) NULL DEFAULT NULL,
  `amount_before` decimal(19, 6) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1093546 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for activity_config
-- ----------------------------
DROP TABLE IF EXISTS `activity_config`;
CREATE TABLE `activity_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_end` datetime NULL DEFAULT NULL,
  `activity_start` datetime NULL DEFAULT NULL,
  `bank_card_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `bet_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `bet_rate` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `charge_amount` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `charge_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `everyday_time` int(10) NOT NULL DEFAULT 0,
  `facebook_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `facebook_time` int(10) NOT NULL DEFAULT 0,
  `first_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `five_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `four_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `integral_exchange_ratio` decimal(19, 6) NOT NULL DEFAULT 10.000000,
  `integral_max` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `integral_min` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `integral_rate` decimal(19, 6) NOT NULL DEFAULT 10.000000,
  `login_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `online_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `online_time` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `promotion_time` int(10) NOT NULL DEFAULT 0,
  `register_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `second_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `show_end` datetime NULL DEFAULT NULL,
  `show_start` datetime NULL DEFAULT NULL,
  `third_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `valid_amount` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `we_chat_integral` decimal(19, 6) NOT NULL DEFAULT 0.000000,
  `we_chat_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for activity_prizes
-- ----------------------------
DROP TABLE IF EXISTS `activity_prizes`;
CREATE TABLE `activity_prizes`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `integral` decimal(19, 2) NULL DEFAULT NULL,
  `prize_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prize_kmkh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prize_zhcn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `weight` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for activity_report
-- ----------------------------
DROP TABLE IF EXISTS `activity_report`;
CREATE TABLE `activity_report`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `distribute_number` decimal(19, 2) NULL DEFAULT NULL,
  `distribute_people` int(11) NULL DEFAULT NULL,
  `draw_number` decimal(19, 2) NULL DEFAULT NULL,
  `draw_people` int(11) NULL DEFAULT NULL,
  `exchange_amount` decimal(19, 2) NULL DEFAULT NULL,
  `promotion_distribute_num` decimal(19, 2) NULL DEFAULT NULL,
  `promotion_distribute_people` int(11) NULL DEFAULT NULL,
  `promotion_draw_num` decimal(19, 2) NULL DEFAULT NULL,
  `promotion_draw_people` int(11) NULL DEFAULT NULL,
  `statics_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `withdraw_amount` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`statics_times`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ad_game
-- ----------------------------
DROP TABLE IF EXISTS `ad_game`;
CREATE TABLE `ad_game`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `game_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_platform_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `games_status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 730 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ag_file_pull_record
-- ----------------------------
DROP TABLE IF EXISTS `ag_file_pull_record`;
CREATE TABLE `ag_file_pull_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_num` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `folder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ag_record
-- ----------------------------
DROP TABLE IF EXISTS `ag_record`;
CREATE TABLE `ag_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `all_bet` decimal(19, 2) NULL DEFAULT NULL,
  `bet_amount_bonus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bill_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cagent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cell_score` decimal(19, 2) NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `device_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_group` int(11) NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `game_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inner_game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `net_amount_bonus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `play_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `play_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prize_amount` decimal(19, 2) NULL DEFAULT NULL,
  `profit` decimal(19, 2) NULL DEFAULT NULL,
  `pull_time` datetime NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `room_bet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `room_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `round` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scene_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `settle_stat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settle_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `slot_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `agent_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `before_credit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_amount` decimal(19, 2) NULL DEFAULT NULL,
  `data_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `net_amount` decimal(19, 2) NULL DEFAULT NULL,
  `player_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recalcu_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `valid_bet_amount` decimal(19, 2) NULL DEFAULT NULL,
  `creation_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `current_amount` decimal(19, 2) NULL DEFAULT NULL,
  `earn` decimal(19, 2) NULL DEFAULT NULL,
  `jackpotcomm` decimal(19, 2) NULL DEFAULT NULL,
  `previous_amount` decimal(19, 2) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKnn4on29v9kc3iiq7b9onm388d`(`bill_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for award_receive_record
-- ----------------------------
DROP TABLE IF EXISTS `award_receive_record`;
CREATE TABLE `award_receive_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `amount` decimal(19, 2) NULL DEFAULT NULL,
  `award_type` int(11) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `receive_status` int(11) NULL DEFAULT NULL,
  `receive_time` datetime NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX8km0hccnhrh9mg5ss7ivpqsd8`(`create_time`) USING BTREE,
  INDEX `idx_userid`(`user_id`) USING BTREE,
  INDEX `idx_level`(`level`) USING BTREE,
  INDEX `idx_time`(`update_time`, `user_id`, `receive_time`) USING BTREE,
  INDEX `idx_award_type`(`create_time`, `award_type`) USING BTREE,
  INDEX `IDXmmji0gt9b36jsrdlpmbyhqt4`(`receive_time`) USING BTREE,
  INDEX `IDX93g2ymm7ysuyrkknfrlinbh5o`(`user_id`) USING BTREE,
  INDEX `IDX9wn098decm224fgg4wj86wedl`(`third_proxy`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25650 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bank_info
-- ----------------------------
DROP TABLE IF EXISTS `bank_info`;
CREATE TABLE `bank_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bank_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bank_type` int(11) NULL DEFAULT NULL,
  `disable` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_gs78bn8oirm26n9ibqruk0246`(`bank_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 236 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for bankcards
-- ----------------------------
DROP TABLE IF EXISTS `bankcards`;
CREATE TABLE `bankcards`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bank_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bank_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `default_card` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `last_modifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `real_name_lowercase` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12368 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for bankcards_del
-- ----------------------------
DROP TABLE IF EXISTS `bankcards_del`;
CREATE TABLE `bankcards_del`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bank_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bank_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `default_card` int(11) NULL DEFAULT NULL,
  `last_modifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1051 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for bet_ratio_config
-- ----------------------------
DROP TABLE IF EXISTS `bet_ratio_config`;
CREATE TABLE `bet_ratio_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `code_times` float NULL DEFAULT NULL,
  `min_money` decimal(10, 2) NULL DEFAULT 0.00,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for charge_order
-- ----------------------------
DROP TABLE IF EXISTS `charge_order`;
CREATE TABLE `charge_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bankcard_id` bigint(20) NULL DEFAULT NULL,
  `charge_amount` decimal(19, 6) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `last_modifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `practical_amount` decimal(19, 6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remit_type` int(11) NULL DEFAULT NULL,
  `remitter` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `service_charge` decimal(19, 2) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `bet_rate` decimal(10, 6) NULL DEFAULT 0.000000,
  `charge_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `succeed_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDXhh1xi8xgxv4lkx69y919uw8cc`(`user_id`) USING BTREE,
  INDEX `IDXb2y4sjgdetl5e2uh9abof5enc`(`succeed_time`) USING BTREE,
  INDEX `IDXqf0sfdqbta52l1kr9ew7768kk`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 260539 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for code_num_change
-- ----------------------------
DROP TABLE IF EXISTS `code_num_change`;
CREATE TABLE `code_num_change`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `amount` decimal(19, 6) NULL DEFAULT NULL,
  `amount_after` decimal(19, 6) NULL DEFAULT NULL,
  `amount_before` decimal(19, 6) NULL DEFAULT NULL,
  `bet_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `clear_code_num` decimal(19, 6) NULL DEFAULT NULL,
  `game_record_id` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKguaeo4kkd1vly2i7r29hurg7w`(`platform`, `game_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2560776 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for collection_bankcard
-- ----------------------------
DROP TABLE IF EXISTS `collection_bankcard`;
CREATE TABLE `collection_bankcard`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bank_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bank_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `disable` int(11) NULL DEFAULT NULL,
  `sort_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for company_management
-- ----------------------------
DROP TABLE IF EXISTS `company_management`;
CREATE TABLE `company_management`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for company_proxy_detail
-- ----------------------------
DROP TABLE IF EXISTS `company_proxy_detail`;
CREATE TABLE `company_proxy_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `benefit_rate` decimal(19, 2) NULL DEFAULT NULL,
  `bet_time` datetime NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `group_bet_amount` decimal(19, 2) NULL DEFAULT NULL,
  `group_totalprofit` decimal(19, 2) NULL DEFAULT NULL,
  `player_num` int(11) NULL DEFAULT NULL,
  `profit_amount` decimal(19, 2) NULL DEFAULT NULL,
  `profit_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `profit_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `proxy_role` int(11) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `settle_status` int(11) NULL DEFAULT NULL,
  `statics_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `profit_amount_line` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `game_type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 473746 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for company_proxy_month
-- ----------------------------
DROP TABLE IF EXISTS `company_proxy_month`;
CREATE TABLE `company_proxy_month`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `benefit_rate` decimal(19, 6) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `group_bet_amount` decimal(19, 6) NULL DEFAULT NULL,
  `group_totalprofit` decimal(19, 6) NULL DEFAULT NULL,
  `player_num` int(11) NULL DEFAULT NULL,
  `profit_amount` decimal(19, 6) NULL DEFAULT NULL,
  `profit_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profit_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proxy_role` int(11) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `settle_status` int(11) NULL DEFAULT NULL,
  `statics_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `profit_amount_line` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profit_level_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id_temp` bigint(20) NULL DEFAULT NULL,
  `extract_points_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105313 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for consumer_error
-- ----------------------------
DROP TABLE IF EXISTS `consumer_error`;
CREATE TABLE `consumer_error`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `consumer_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `main_id` bigint(20) NULL DEFAULT NULL,
  `repair_status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 148610 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `meiqia` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `online_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `skype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `telegram` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `whats_app` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `line` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for customer_configure
-- ----------------------------
DROP TABLE IF EXISTS `customer_configure`;
CREATE TABLE `customer_configure`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `app_icon_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_mark` int(11) NULL DEFAULT NULL,
  `pc_icon_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for daily_sharing
-- ----------------------------
DROP TABLE IF EXISTS `daily_sharing`;
CREATE TABLE `daily_sharing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `review_time` datetime NULL DEFAULT NULL,
  `reviewer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for deposit_send_activity
-- ----------------------------
DROP TABLE IF EXISTS `deposit_send_activity`;
CREATE TABLE `deposit_send_activity`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `activity_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `activity_status` int(11) NULL DEFAULT NULL,
  `activity_type` int(11) NULL DEFAULT NULL,
  `amount_times` int(11) NULL DEFAULT NULL,
  `del` bit(1) NULL DEFAULT NULL,
  `deposit_amount` decimal(19, 2) NULL DEFAULT NULL,
  `send_amount` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for domain_config
-- ----------------------------
DROP TABLE IF EXISTS `domain_config`;
CREATE TABLE `domain_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `domain_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `domain_status` int(11) NULL DEFAULT NULL,
  `domain_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for download_station
-- ----------------------------
DROP TABLE IF EXISTS `download_station`;
CREATE TABLE `download_station`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `download_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `is_forced` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `terminal_type` int(11) NULL DEFAULT NULL,
  `version_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for error_order
-- ----------------------------
DROP TABLE IF EXISTS `error_order`;
CREATE TABLE `error_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `money` decimal(19, 6) NULL DEFAULT 0.000000,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1317 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for export_report
-- ----------------------------
DROP TABLE IF EXISTS `export_report`;
CREATE TABLE `export_report`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `all_profit_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `all_water` decimal(19, 6) NULL DEFAULT 0.000000,
  `avg_benefit` decimal(19, 6) NULL DEFAULT 0.000000,
  `bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `num` int(11) NULL DEFAULT NULL,
  `order_times` date NULL DEFAULT NULL,
  `rise_award` decimal(19, 6) NULL DEFAULT 0.000000,
  `service_charge` decimal(19, 6) NULL DEFAULT 0.000000,
  `third_proxy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `third_proxy_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `today_award` decimal(19, 6) NULL DEFAULT 0.000000,
  `total_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `validbet` decimal(19, 6) NULL DEFAULT 0.000000,
  `wash_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `win_loss` decimal(19, 6) NULL DEFAULT 0.000000,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK8xxbqsktr8k1vojhlctxya4va`(`user_id`, `order_times`) USING BTREE,
  INDEX `IDX5td4v19wgj3hthmdouwvvssrq`(`user_id`) USING BTREE,
  INDEX `IDXpojru2y9158m4ym1fscryiq5q`(`order_times`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 517160 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for extension_friends
-- ----------------------------
DROP TABLE IF EXISTS `extension_friends`;
CREATE TABLE `extension_friends`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `fifth_pid` bigint(20) NULL DEFAULT NULL,
  `first_pid` bigint(20) NULL DEFAULT NULL,
  `fourth_pid` bigint(20) NULL DEFAULT NULL,
  `second_pid` bigint(20) NULL DEFAULT NULL,
  `third_pid` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for extension_friends_record
-- ----------------------------
DROP TABLE IF EXISTS `extension_friends_record`;
CREATE TABLE `extension_friends_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `subordinate_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for extract_points_change
-- ----------------------------
DROP TABLE IF EXISTS `extract_points_change`;
CREATE TABLE `extract_points_change`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_record_id` bigint(20) NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `poxy_id` bigint(20) NULL DEFAULT NULL,
  `rate` decimal(10, 2) NULL DEFAULT 0.00,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `valid_bet` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK3tdmpa5dv32h75y29psyxcbfw`(`platform`, `game_record_id`) USING BTREE,
  INDEX `IDX41jl5gbnnacq6mtrs8t65js35`(`platform`) USING BTREE,
  INDEX `IDXhyvu35arjfrrhh94u5xoi9m9t`(`create_time`) USING BTREE,
  INDEX `IDX7rkcygsuur8gjifh2gp888vpr`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12274028 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for extract_points_config
-- ----------------------------
DROP TABLE IF EXISTS `extract_points_config`;
CREATE TABLE `extract_points_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `game_en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` decimal(10, 2) NULL DEFAULT 0.00,
  `state` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_detail_vnc_end_time
-- ----------------------------
DROP TABLE IF EXISTS `game_detail_vnc_end_time`;
CREATE TABLE `game_detail_vnc_end_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110713 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_parent_recorddmc
-- ----------------------------
DROP TABLE IF EXISTS `game_parent_recorddmc`;
CREATE TABLE `game_parent_recorddmc`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bet_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_type` int(11) NULL DEFAULT NULL,
  `betting_date` datetime NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `draw_date` datetime NULL DEFAULT NULL,
  `draw_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_play_id` int(11) NULL DEFAULT NULL,
  `member_id` int(11) NULL DEFAULT NULL,
  `merchant_id` int(11) NULL DEFAULT NULL,
  `net_amount` decimal(19, 2) NULL DEFAULT NULL,
  `progress_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rebate_amount` decimal(19, 2) NULL DEFAULT NULL,
  `rebate_percentage` int(11) NULL DEFAULT NULL,
  `ticket_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ticket_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_amount` decimal(19, 2) NULL DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record
-- ----------------------------
DROP TABLE IF EXISTS `game_record`;
CREATE TABLE `game_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `before_cash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `betwalletid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `commission` int(11) NULL DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `event_child` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `game_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gid` int(11) NULL DEFAULT NULL,
  `gname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level_water_status` int(11) NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `reset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resultwalletid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `round` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `settime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `slot_game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subround` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `validbet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  `water` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `waterbet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `win_loss` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `event_and_round` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `event_child_and_subround` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKafl55kwlnpstnqstqk9t4x0w0`(`bet_id`) USING BTREE,
  INDEX `IDX8k33k94f66jws10owipku2r80`(`bet_time`) USING BTREE,
  INDEX `IDXg93tlo26pt48d4xr8xh1e97e1`(`user_id`) USING BTREE,
  INDEX `index_third_proxy`(`third_proxy`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1098 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_ae
-- ----------------------------
DROP TABLE IF EXISTS `game_record_ae`;
CREATE TABLE `game_record_ae`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_amount` decimal(19, 2) NULL DEFAULT NULL,
  `bet_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `game_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jackpot_bet_amount` decimal(19, 2) NULL DEFAULT NULL,
  `jackpot_win_amount` decimal(19, 2) NULL DEFAULT NULL,
  `level_water_status` int(11) NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform_tx_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_bet_amount` decimal(19, 2) NULL DEFAULT NULL,
  `real_win_amount` decimal(19, 2) NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `round_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `settle_status` int(11) NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `turnover` decimal(19, 2) NULL DEFAULT NULL,
  `tx_status` int(11) NULL DEFAULT NULL,
  `tx_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  `win_amount` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKd64atdwp0kkl33e1gdgfbikjr`(`platform`, `platform_tx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_ae_end_time
-- ----------------------------
DROP TABLE IF EXISTS `game_record_ae_end_time`;
CREATE TABLE `game_record_ae_end_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85770 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_ag
-- ----------------------------
DROP TABLE IF EXISTS `game_record_ag`;
CREATE TABLE `game_record_ag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_amount` decimal(19, 2) NULL DEFAULT NULL,
  `bet_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `game_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jackpot_bet_amount` decimal(19, 2) NULL DEFAULT NULL,
  `jackpot_win_amount` decimal(19, 2) NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform_tx_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_bet_amount` decimal(19, 2) NULL DEFAULT NULL,
  `real_win_amount` decimal(19, 2) NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `round_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `settle_status` int(11) NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `turnover` decimal(19, 2) NULL DEFAULT NULL,
  `tx_status` int(11) NULL DEFAULT NULL,
  `tx_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  `win_amount` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKep06ew9e7ytdkwa1tsmkklmrg`(`platform`, `platform_tx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_ag_end_time
-- ----------------------------
DROP TABLE IF EXISTS `game_record_ag_end_time`;
CREATE TABLE `game_record_ag_end_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_dg
-- ----------------------------
DROP TABLE IF EXISTS `game_record_dg`;
CREATE TABLE `game_record_dg`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bet_order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lobby_id` bigint(20) NULL DEFAULT NULL,
  `table_id` bigint(20) NULL DEFAULT NULL,
  `shoe_id` bigint(20) NULL DEFAULT NULL,
  `play_id` bigint(20) NULL DEFAULT NULL,
  `game_Type` int(11) NULL DEFAULT NULL,
  `game_id` int(11) NULL DEFAULT NULL,
  `member_id` int(11) NULL DEFAULT NULL,
  `bet_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cal_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `win_or_loss` decimal(19, 2) NULL DEFAULT 0.00,
  `win_or_lossz` decimal(19, 2) NULL DEFAULT 0.00,
  `bet_points` decimal(19, 2) NULL DEFAULT 0.00,
  `bet_pointsz` decimal(19, 2) NULL DEFAULT 0.00,
  `available_bet` decimal(19, 2) NULL DEFAULT 0.00,
  `real_money` decimal(19, 2) NULL DEFAULT 0.00,
  `win_money` decimal(19, 2) NULL DEFAULT 0.00,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_detail` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_detailz` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_revocation` int(11) NULL DEFAULT NULL,
  `balance_before` decimal(19, 2) NULL DEFAULT 0.00,
  `parent_bet_id` bigint(20) NULL DEFAULT NULL,
  `currency_id` int(11) NULL DEFAULT NULL,
  `device_type` int(11) NULL DEFAULT NULL,
  `pluginid` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  `level_water_status` int(11) NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `is_add` int(11) NULL DEFAULT NULL,
  `old_real_win_amount` decimal(19, 2) NULL DEFAULT 0.00,
  `old_turnover` decimal(19, 2) NULL DEFAULT 0.00,
  `user_acct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKs56d20gj1et8vb4ijpxhqnesy`(`bet_order_no`) USING BTREE,
  UNIQUE INDEX `UK9v1vememjs0htuv0enq72aps2`(`bet_order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2454 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for game_record_dg_end_time
-- ----------------------------
DROP TABLE IF EXISTS `game_record_dg_end_time`;
CREATE TABLE `game_record_dg_end_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_dmc
-- ----------------------------
DROP TABLE IF EXISTS `game_record_dmc`;
CREATE TABLE `game_record_dmc`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `back_water_money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_money` decimal(19, 2) NULL DEFAULT NULL,
  `bet_order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settle_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `big_bet_amount` decimal(19, 2) NULL DEFAULT 0.00,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enterprise_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `issue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level_water_status` int(11) NULL DEFAULT NULL,
  `prize_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_money` decimal(19, 2) NULL DEFAULT 0.00,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `slave_amount` decimal(19, 2) NULL DEFAULT 0.00,
  `slave_lottery_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slave_net_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slave_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `small_bet_amount` decimal(19, 2) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  `win_money` decimal(19, 2) NULL DEFAULT 0.00,
  `winning_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_bet_order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `draw_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `draw_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKs56d20gj1et8vb4ijpxhqnesy`(`bet_order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12032 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_end_index
-- ----------------------------
DROP TABLE IF EXISTS `game_record_end_index`;
CREATE TABLE `game_record_end_index`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `aemax_id` bigint(20) NULL DEFAULT NULL,
  `cq9max_id` bigint(20) NULL DEFAULT NULL,
  `e1sportmax_id` bigint(20) NULL DEFAULT NULL,
  `game_record_id` bigint(20) NULL DEFAULT NULL,
  `horsebookmax_id` bigint(20) NULL DEFAULT NULL,
  `obdjmax_id` bigint(20) NULL DEFAULT NULL,
  `obtymax_id` bigint(20) NULL DEFAULT NULL,
  `pgmax_id` bigint(20) NULL DEFAULT NULL,
  `sabasportmax_id` bigint(20) NULL DEFAULT NULL,
  `sv388max_id` bigint(20) NULL DEFAULT NULL,
  `vncmax_id` bigint(20) NULL DEFAULT NULL,
  `agmax_id` bigint(20) NULL DEFAULT NULL,
  `dmcmax_id` bigint(20) NULL DEFAULT NULL,
  `dgmax_id` bigint(20) NULL DEFAULT NULL,
  `obzrmax_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_end_time
-- ----------------------------
DROP TABLE IF EXISTS `game_record_end_time`;
CREATE TABLE `game_record_end_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_goldenf
-- ----------------------------
DROP TABLE IF EXISTS `game_record_goldenf`;
CREATE TABLE `game_record_goldenf`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `bet_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `create_at_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` bigint(20) NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `level_water_status` int(11) NULL DEFAULT NULL,
  `parent_bet_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `player_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `trace_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trans_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `vendor_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wallet_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  `win_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `goldenf_traceId`(`trace_id`) USING BTREE,
  INDEX `IDXpabdqd5e4txes9s7buh5apesf`(`create_at_str`) USING BTREE,
  INDEX `IDXgsw67y2r0l0utx754m7x66ywg`(`vendor_code`) USING BTREE,
  INDEX `IDXgevugo7xi1fjuqvjubx5ytg8`(`user_id`) USING BTREE,
  INDEX `idx_vendorcode_createtime`(`vendor_code`, `create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_goldenf_end_time
-- ----------------------------
DROP TABLE IF EXISTS `game_record_goldenf_end_time`;
CREATE TABLE `game_record_goldenf_end_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` bigint(20) NULL DEFAULT NULL,
  `start_time` bigint(20) NULL DEFAULT NULL,
  `vendor_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pull_type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7880 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_goldenf_end_time2
-- ----------------------------
DROP TABLE IF EXISTS `game_record_goldenf_end_time2`;
CREATE TABLE `game_record_goldenf_end_time2`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` bigint(20) NULL DEFAULT NULL,
  `start_time` bigint(20) NULL DEFAULT NULL,
  `vendor_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pull_type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_lotto
-- ----------------------------
DROP TABLE IF EXISTS `game_record_lotto`;
CREATE TABLE `game_record_lotto`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bet_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `big_bet_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `commission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_slave_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number_pattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prize_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reference_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slave_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slave_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slave_lottery_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slave_net_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slave_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slave_total_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `small_bet_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_ob_end_time
-- ----------------------------
DROP TABLE IF EXISTS `game_record_ob_end_time`;
CREATE TABLE `game_record_ob_end_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` bigint(20) NULL DEFAULT NULL,
  `start_time` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `vendor_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70673 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_obdj
-- ----------------------------
DROP TABLE IF EXISTS `game_record_obdj`;
CREATE TABLE `game_record_obdj`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `bet_id` bigint(20) NULL DEFAULT NULL,
  `bet_ip` bigint(20) NULL DEFAULT NULL,
  `bet_status` int(11) NULL DEFAULT NULL,
  `bet_str_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_time` bigint(20) NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `confirm_type` int(11) NULL DEFAULT NULL,
  `currency_code` int(11) NULL DEFAULT NULL,
  `device` int(11) NULL DEFAULT NULL,
  `exchange_rate` decimal(19, 6) NULL DEFAULT 0.000000,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_id` bigint(20) NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `is_live` int(11) NULL DEFAULT NULL,
  `level_water_status` int(11) NULL DEFAULT NULL,
  `market_cn_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `market_id` bigint(20) NULL DEFAULT NULL,
  `match_id` bigint(20) NULL DEFAULT NULL,
  `match_start_time` bigint(20) NULL DEFAULT NULL,
  `match_type` int(11) NULL DEFAULT NULL,
  `member_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `merchant_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchant_id` bigint(20) NULL DEFAULT NULL,
  `odd` decimal(19, 6) NULL DEFAULT 0.000000,
  `odd_id` bigint(20) NULL DEFAULT NULL,
  `odd_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_type` int(11) NULL DEFAULT NULL,
  `parent_merchant_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_merchant_id` bigint(20) NULL DEFAULT NULL,
  `parley_type` int(11) NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `round` int(11) NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `set_str_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settle_count` int(11) NULL DEFAULT NULL,
  `settle_time` bigint(20) NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `team_cn_names` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `team_en_names` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `team_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `team_names` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tester` int(11) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `tournament_id` bigint(20) NULL DEFAULT NULL,
  `update_date_time` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  `win_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKaq6ee1prpsovh6d8auksw0cas`(`bet_id`) USING BTREE,
  INDEX `IDXgs2m593tp76ycfmqrtrft4bkv`(`bet_status`) USING BTREE,
  INDEX `IDXquk6w75by8xo8j70ebm5b7qnu`(`set_str_time`) USING BTREE,
  INDEX `IDXnvxuvopqj7gvlylhsfxh706ms`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_obdj_detail
-- ----------------------------
DROP TABLE IF EXISTS `game_record_obdj_detail`;
CREATE TABLE `game_record_obdj_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bet_detail_id` bigint(20) NULL DEFAULT NULL,
  `bet_time` bigint(20) NULL DEFAULT NULL,
  `game_id` bigint(20) NULL DEFAULT NULL,
  `is_live` int(11) NULL DEFAULT NULL,
  `market_cn_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `market_id` bigint(20) NULL DEFAULT NULL,
  `match_id` bigint(20) NULL DEFAULT NULL,
  `match_start_time` bigint(20) NULL DEFAULT NULL,
  `match_type` int(11) NULL DEFAULT NULL,
  `odd` decimal(19, 6) NULL DEFAULT 0.000000,
  `odd_id` bigint(20) NULL DEFAULT NULL,
  `odd_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_id` bigint(20) NULL DEFAULT NULL,
  `round` int(11) NULL DEFAULT NULL,
  `settle_count` int(11) NULL DEFAULT NULL,
  `settle_time` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `team_cn_names` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `team_en_names` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `team_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `team_names` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tournament_id` bigint(20) NULL DEFAULT NULL,
  `update_date_time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK1njbuq1cc6mw2ankl4kpnp41h`(`bet_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_obdj_tournament
-- ----------------------------
DROP TABLE IF EXISTS `game_record_obdj_tournament`;
CREATE TABLE `game_record_obdj_tournament`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `tournament_id` bigint(20) NULL DEFAULT NULL,
  `tournament_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKjac7otdu1hqx0cltkb2cf8x4j`(`tournament_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_obty
-- ----------------------------
DROP TABLE IF EXISTS `game_record_obty`;
CREATE TABLE `game_record_obty`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bet_count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_str_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_time` bigint(20) NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `device_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exchange_rate` decimal(19, 6) NULL DEFAULT 0.000000,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `level_water_status` int(11) NULL DEFAULT NULL,
  `merchant_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `outcome` int(11) NULL DEFAULT NULL,
  `pre_bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `profit_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `series_type` int(11) NULL DEFAULT NULL,
  `series_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settle_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `settle_str_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settle_time` bigint(20) NULL DEFAULT NULL,
  `settle_times` int(11) NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKe8ibnn83w2ogdbxcaqonb29fw`(`order_no`) USING BTREE,
  INDEX `IDXcnq4jnxn5t27hqd5iwvuh4icw`(`settle_str_time`) USING BTREE,
  INDEX `IDXo52cvcpaxye6iek4y41cd04ov`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_obty_detail
-- ----------------------------
DROP TABLE IF EXISTS `game_record_obty_detail`;
CREATE TABLE `game_record_obty_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `begin_time` bigint(20) NULL DEFAULT NULL,
  `bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `bet_no` bigint(20) NULL DEFAULT NULL,
  `bet_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `handicap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `market_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `market_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `match_id` bigint(20) NULL DEFAULT NULL,
  `match_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `match_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `match_type` int(11) NULL DEFAULT NULL,
  `odds_finally` decimal(19, 6) NULL DEFAULT 0.000000,
  `odds_value` decimal(19, 6) NULL DEFAULT 0.000000,
  `play_id` int(11) NULL DEFAULT NULL,
  `play_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `play_option_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `play_options` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `play_options_id` bigint(20) NULL DEFAULT NULL,
  `score_benchmark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settle_score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sport_id` int(11) NULL DEFAULT NULL,
  `sport_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tournament_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKo749ilg9wqcblfqma3stn4kec`(`bet_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_obzr
-- ----------------------------
DROP TABLE IF EXISTS `game_record_obzr`;
CREATE TABLE `game_record_obzr`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `agent_id` bigint(20) NULL DEFAULT NULL,
  `before_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `bet_flag` int(11) NULL DEFAULT NULL,
  `bet_point_id` bigint(20) NULL DEFAULT NULL,
  `bet_point_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_status` int(11) NULL DEFAULT NULL,
  `bet_str_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_time` datetime NULL DEFAULT NULL,
  `boot_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `created_at` bigint(20) NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `device_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `device_type` int(11) NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_mode` int(11) NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `game_type_id` bigint(20) NULL DEFAULT NULL,
  `game_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `judge_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level_water_status` int(11) NULL DEFAULT NULL,
  `login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `net_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `net_at` datetime NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_amount` decimal(19, 2) NULL DEFAULT NULL,
  `payout_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `platform_id` int(11) NULL DEFAULT NULL,
  `platform_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `player_id` bigint(20) NULL DEFAULT NULL,
  `player_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `recalcu_at` datetime NULL DEFAULT NULL,
  `record_type` int(11) NULL DEFAULT NULL,
  `round_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `settle_str_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settle_time` datetime NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `table_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `valid_bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK6mlmtdu9nniffifsivx8haj0y`(`order_no`) USING BTREE,
  INDEX `IDXdtvgt06hnup33hh7y8txx7y8u`(`net_at`) USING BTREE,
  INDEX `IDXparba72i51g90pfu50h1l2ahv`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_obzr2
-- ----------------------------
DROP TABLE IF EXISTS `game_record_obzr2`;
CREATE TABLE `game_record_obzr2`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `agent_id` bigint(20) NULL DEFAULT NULL,
  `before_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `bet_flag` int(11) NULL DEFAULT NULL,
  `bet_point_id` bigint(20) NULL DEFAULT NULL,
  `bet_point_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_status` int(11) NULL DEFAULT NULL,
  `bet_str_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_time` bigint(20) NULL DEFAULT NULL,
  `boot_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `created_at` bigint(20) NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `device_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `device_type` int(11) NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_mode` int(11) NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `game_type_id` bigint(20) NULL DEFAULT NULL,
  `game_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `judge_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level_water_status` int(11) NULL DEFAULT NULL,
  `login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `net_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `net_at` bigint(20) NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_amount` decimal(19, 2) NULL DEFAULT NULL,
  `payout_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `platform_id` int(11) NULL DEFAULT NULL,
  `platform_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `player_id` bigint(20) NULL DEFAULT NULL,
  `player_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `recalcu_at` bigint(20) NULL DEFAULT NULL,
  `record_type` int(11) NULL DEFAULT NULL,
  `round_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `settle_str_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settle_time` bigint(20) NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `table_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `valid_bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKlwob4qvklueyykligmjqv4jvo`(`order_no`) USING BTREE,
  INDEX `IDXe19qv9nigqis03ccc4hvuhjld`(`net_at`) USING BTREE,
  INDEX `IDXa5morjt2m07v7aill6os7bbnx`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_obzr_time
-- ----------------------------
DROP TABLE IF EXISTS `game_record_obzr_time`;
CREATE TABLE `game_record_obzr_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49193 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_report_new
-- ----------------------------
DROP TABLE IF EXISTS `game_record_report_new`;
CREATE TABLE `game_record_report_new`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `betting_number` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_record_report_id` bigint(20) NULL DEFAULT NULL,
  `new_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `new_surplus_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `new_user_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `statics_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `surplus_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `valid_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `win_loss_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `rise_award` decimal(19, 6) NULL DEFAULT 0.000000,
  `today_award` decimal(19, 6) NULL DEFAULT 0.000000,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`game_record_report_id`) USING BTREE,
  INDEX `IDXnuvakmiybse2d4txa6qvrnvks`(`first_proxy`) USING BTREE,
  INDEX `IDXrdee696q71qi3uds5nqs8kdwc`(`second_proxy`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19956 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_record_vnc
-- ----------------------------
DROP TABLE IF EXISTS `game_record_vnc`;
CREATE TABLE `game_record_vnc`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `back_water_money` decimal(19, 2) NULL DEFAULT NULL,
  `bet_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_cities` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_money` decimal(19, 2) NULL DEFAULT NULL,
  `bet_order` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_time` datetime NULL DEFAULT NULL,
  `bet_time_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cancel_time` datetime NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `has_canceled` int(11) NULL DEFAULT NULL,
  `issue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level_water_status` int(11) NULL DEFAULT NULL,
  `merchant_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `raw_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_money` decimal(19, 2) NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `settle_state` bit(1) NULL DEFAULT NULL,
  `settle_time` datetime NULL DEFAULT NULL,
  `settle_time_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  `win_money` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKjceew6w076jl02c0i6jhnxgtk`(`merchant_code`, `bet_order`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_recorddgend_time
-- ----------------------------
DROP TABLE IF EXISTS `game_recorddgend_time`;
CREATE TABLE `game_recorddgend_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52076 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_recorddmcend_time
-- ----------------------------
DROP TABLE IF EXISTS `game_recorddmcend_time`;
CREATE TABLE `game_recorddmcend_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88592 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_recordvncend_time
-- ----------------------------
DROP TABLE IF EXISTS `game_recordvncend_time`;
CREATE TABLE `game_recordvncend_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54165 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for home_page_report
-- ----------------------------
DROP TABLE IF EXISTS `home_page_report`;
CREATE TABLE `home_page_report`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bonus_amount` decimal(15, 6) NULL DEFAULT 0.000000,
  `charge_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `charge_nums` int(11) NULL DEFAULT NULL,
  `extract_points_amount` decimal(15, 6) NULL DEFAULT 0.000000,
  `new_users` int(11) NULL DEFAULT NULL,
  `reward_amount` decimal(15, 6) NULL DEFAULT 0.000000,
  `service_charge` decimal(15, 6) NULL DEFAULT 0.000000,
  `share_amount` decimal(15, 6) NULL DEFAULT 0.000000,
  `statics_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statics_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statics_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wash_code_amount` decimal(15, 6) NULL DEFAULT 0.000000,
  `withdraw_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `withdraw_nums` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKh9vy25u6yoto58nb714382bo5`(`statics_times`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for integral_change_record
-- ----------------------------
DROP TABLE IF EXISTS `integral_change_record`;
CREATE TABLE `integral_change_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `after_integral` decimal(19, 6) NULL DEFAULT 0.000000,
  `before_integral` decimal(19, 6) NULL DEFAULT 0.000000,
  `integral_change` decimal(19, 6) NULL DEFAULT 0.000000,
  `integral_type` int(11) NULL DEFAULT NULL,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prize_integral_record_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ip_black
-- ----------------------------
DROP TABLE IF EXISTS `ip_black`;
CREATE TABLE `ip_black`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKocek2yujic5ddh0g9q81mb2nt`(`ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ip_white
-- ----------------------------
DROP TABLE IF EXISTS `ip_white`;
CREATE TABLE `ip_white`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`ip`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for level_water_change
-- ----------------------------
DROP TABLE IF EXISTS `level_water_change`;
CREATE TABLE `level_water_change`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `before_level_water` decimal(19, 2) NULL DEFAULT NULL,
  `game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_record_id` bigint(20) NULL DEFAULT NULL,
  `level_water` decimal(19, 2) NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `validbet` decimal(19, 2) NULL DEFAULT NULL,
  `water_type` int(11) NULL DEFAULT NULL,
  `bet_water` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK23i1f96ih2sivustlp0v4nfdu`(`platform`, `game_record_id`) USING BTREE,
  INDEX `IDXb27o1rdo51swiqqx5oawy0aw9`(`user_id`, `platform`, `create_time`) USING BTREE,
  INDEX `IDXirjrwwxiday7yu2tsvxpdu3il`(`platform`) USING BTREE,
  INDEX `IDXhbkqv0fcxknkc6ps7hhceytfj`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90158 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDXt9ufvgoi0e1n92n695khl0p2c`(`user_id`) USING BTREE,
  INDEX `IDXfdk21qj1i5r1ovohspky45fcm`(`account`) USING BTREE,
  INDEX `IDXeadk6e37uljk9w58dtg3c36ip`(`ip`) USING BTREE,
  INDEX `IDX1i2xanvr72h9fbmq1tg5mvva9`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2471 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lunbo_pic
-- ----------------------------
DROP TABLE IF EXISTS `lunbo_pic`;
CREATE TABLE `lunbo_pic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `no` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `the_show_end` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `no_index_unique`(`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `en_introduction` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `en_title` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_shelves` bit(1) NULL DEFAULT NULL,
  `kh_introduction` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kh_title` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_type` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_platform_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'WM',
  `money` decimal(19, 6) NULL DEFAULT 0.000000,
  `no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1250 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for platform_config
-- ----------------------------
DROP TABLE IF EXISTS `platform_config`;
CREATE TABLE `platform_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bankcard_real_name_switch` int(11) NULL DEFAULT NULL,
  `bet_rate` decimal(10, 6) NULL DEFAULT 0.000000,
  `charge_max_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `charge_min_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `charge_rate` decimal(10, 6) NULL DEFAULT 0.000000,
  `charge_service_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `charge_switch` int(11) NULL DEFAULT NULL,
  `clear_code_num` decimal(19, 6) NULL DEFAULT 0.000000,
  `commission_update` datetime NULL DEFAULT NULL,
  `company_invite_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `directly_under_the_lower` int(11) NULL DEFAULT NULL,
  `domain_name_configuration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `electronics_money_warning` decimal(19, 6) NULL DEFAULT 0.000000,
  `first_commission` decimal(10, 6) NULL DEFAULT 0.000000,
  `historical_data_id` int(11) NULL DEFAULT NULL,
  `ip_max_num` int(11) NULL DEFAULT NULL,
  `log_image_url_app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_image_url_pc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_register_log_image_url_app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maintenance_end` datetime NULL DEFAULT NULL,
  `maintenance_start` datetime NULL DEFAULT NULL,
  `money_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `people_proxy_switch` int(11) NULL DEFAULT NULL,
  `platform_maintenance` int(11) NULL DEFAULT NULL,
  `proxy_configuration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `read_upload_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `register_switch` int(11) NULL DEFAULT NULL,
  `second_commission` decimal(10, 6) NULL DEFAULT 0.000000,
  `send_message_warning` decimal(19, 6) NULL DEFAULT 0.000000,
  `third_commission` decimal(10, 6) NULL DEFAULT 0.000000,
  `total_platform_quota` decimal(19, 6) NULL DEFAULT 0.000000,
  `upload_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `verification_code` int(11) NULL DEFAULT NULL,
  `vip_config_info` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `web_configuration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `withdraw_max_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `withdraw_min_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `withdraw_rate` decimal(10, 6) NULL DEFAULT 0.000000,
  `withdraw_service_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `wm_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `wm_money_warning` decimal(19, 6) NULL DEFAULT 0.000000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for platform_configv2
-- ----------------------------
DROP TABLE IF EXISTS `platform_configv2`;
CREATE TABLE `platform_configv2`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `charge_switch` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for platform_game
-- ----------------------------
DROP TABLE IF EXISTS `platform_game`;
CREATE TABLE `platform_game`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `game_platform_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for poxy_extract_points_config
-- ----------------------------
DROP TABLE IF EXISTS `poxy_extract_points_config`;
CREATE TABLE `poxy_extract_points_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `game_en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `poxy_id` bigint(20) NULL DEFAULT NULL,
  `rate` decimal(10, 2) NULL DEFAULT 0.00,
  `state` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for prize_integral_record
-- ----------------------------
DROP TABLE IF EXISTS `prize_integral_record`;
CREATE TABLE `prize_integral_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `continue_days` int(11) NULL DEFAULT NULL,
  `operation_type` int(11) NULL DEFAULT NULL,
  `prize_num` decimal(19, 2) NULL DEFAULT NULL,
  `prize_type` int(11) NULL DEFAULT NULL,
  `receive_award_status` int(11) NULL DEFAULT NULL,
  `receive_award_type` int(11) NULL DEFAULT NULL,
  `receive_date` datetime NULL DEFAULT NULL,
  `relation_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proxy_commission
-- ----------------------------
DROP TABLE IF EXISTS `proxy_commission`;
CREATE TABLE `proxy_commission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_commission` decimal(10, 2) NULL DEFAULT 0.00,
  `proxy_user_id` bigint(20) NULL DEFAULT NULL,
  `second_commission` decimal(10, 2) NULL DEFAULT 0.00,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_commission` decimal(10, 2) NULL DEFAULT 0.00,
  `user_rebate` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_bft8nduj7i24lklymph7hcplb`(`proxy_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proxy_credit_change
-- ----------------------------
DROP TABLE IF EXISTS `proxy_credit_change`;
CREATE TABLE `proxy_credit_change`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `amount_after` decimal(19, 6) NULL DEFAULT 0.000000,
  `amount_before` decimal(19, 6) NULL DEFAULT 0.000000,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proxy_user_id` bigint(20) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passivity_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proxy_role` int(11) NULL DEFAULT NULL,
  `source` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX2ss4k8if82gm17ttsnsros9c`(`order_no`) USING BTREE,
  INDEX `IDXauly6hoobjgn9eibns4fk1vux`(`user_name`) USING BTREE,
  INDEX `IDXnlfuj7wfsly1i1cq79478as0a`(`passivity_name`) USING BTREE,
  INDEX `IDXa8qeya4f9y1s2ul4yvcxqedpc`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proxy_credit_points
-- ----------------------------
DROP TABLE IF EXISTS `proxy_credit_points`;
CREATE TABLE `proxy_credit_points`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `credit_points_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `proxy_role` int(11) NULL DEFAULT NULL,
  `proxy_user_id` bigint(20) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`proxy_user_id`) USING BTREE,
  INDEX `IDXt0jy4d60y0jgk56ke9u4ue6x1`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proxy_day_report
-- ----------------------------
DROP TABLE IF EXISTS `proxy_day_report`;
CREATE TABLE `proxy_day_report`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `bet_amount` decimal(10, 6) NULL DEFAULT 0.000000,
  `day_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `depposite_amount` decimal(10, 6) NULL DEFAULT 0.000000,
  `group_be_amount` decimal(19, 2) NULL DEFAULT NULL,
  `new_num` int(11) NULL DEFAULT NULL,
  `profit_amount` decimal(10, 6) NULL DEFAULT 0.000000,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`user_id`, `day_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proxy_game_record_report
-- ----------------------------
DROP TABLE IF EXISTS `proxy_game_record_report`;
CREATE TABLE `proxy_game_record_report`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `betting_number` int(11) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `order_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proxy_game_record_report_id` bigint(20) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `valid_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `win_loss` decimal(19, 2) NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`proxy_game_record_report_id`) USING BTREE,
  INDEX `IDX6irjdmfi8cmdfeelhpthc4t5t`(`first_proxy`) USING BTREE,
  INDEX `IDXnih65o6kcdchhvj1hwoxt3bx`(`second_proxy`) USING BTREE,
  INDEX `IDXhn5q2q7llllwk1f00vk9fm4vg`(`third_proxy`) USING BTREE,
  INDEX `IDXdyds56du9ivfcj715rlsie2ac`(`order_times`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89697 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proxy_home_page_report
-- ----------------------------
DROP TABLE IF EXISTS `proxy_home_page_report`;
CREATE TABLE `proxy_home_page_report`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `active_users` int(11) NULL DEFAULT NULL,
  `charge_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `charge_nums` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `new_second_proxys` int(11) NULL DEFAULT NULL,
  `new_third_proxys` int(11) NULL DEFAULT NULL,
  `new_users` int(11) NULL DEFAULT NULL,
  `proxy_role` int(11) NULL DEFAULT NULL,
  `proxy_user_id` bigint(20) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `statics_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statics_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statics_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `validbet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `win_loss_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `withdraw_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `withdraw_nums` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`proxy_user_id`, `statics_times`) USING BTREE,
  INDEX `IDXb2f7h1nfmqvvlfqp4k7kslx9h`(`first_proxy`) USING BTREE,
  INDEX `IDXnqspbigsokeeljyci75hbajyw`(`second_proxy`) USING BTREE,
  INDEX `IDXt4kc1ktuhsxrma4yclo6o50y9`(`proxy_user_id`) USING BTREE,
  INDEX `IDX644wcdoktmlau5qoxofja9f6d`(`statics_times`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proxy_rebate_config
-- ----------------------------
DROP TABLE IF EXISTS `proxy_rebate_config`;
CREATE TABLE `proxy_rebate_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eight_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `eight_money` int(11) NULL DEFAULT NULL,
  `eight_profit` decimal(19, 2) NULL DEFAULT NULL,
  `first_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `first_money` int(11) NULL DEFAULT NULL,
  `first_profit` decimal(19, 2) NULL DEFAULT NULL,
  `five_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `five_money` int(11) NULL DEFAULT NULL,
  `five_profit` decimal(19, 2) NULL DEFAULT NULL,
  `four_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `four_money` int(11) NULL DEFAULT NULL,
  `four_profit` decimal(19, 2) NULL DEFAULT NULL,
  `game_type` int(11) NULL DEFAULT NULL,
  `proxy_user_id` bigint(20) NULL DEFAULT NULL,
  `second_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `second_money` int(11) NULL DEFAULT NULL,
  `second_profit` decimal(19, 2) NULL DEFAULT NULL,
  `seven_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `seven_money` int(11) NULL DEFAULT NULL,
  `seven_profit` decimal(19, 2) NULL DEFAULT NULL,
  `six_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `six_money` int(11) NULL DEFAULT NULL,
  `six_profit` decimal(19, 2) NULL DEFAULT NULL,
  `third_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `third_money` int(11) NULL DEFAULT NULL,
  `third_profit` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proxy_report
-- ----------------------------
DROP TABLE IF EXISTS `proxy_report`;
CREATE TABLE `proxy_report`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `all_bet_amount` decimal(10, 6) NULL DEFAULT 0.000000,
  `all_bet_num` int(11) NULL DEFAULT NULL,
  `all_charge_num` int(11) NULL DEFAULT NULL,
  `all_group_num` int(11) NULL DEFAULT NULL,
  `all_profit_amount` decimal(10, 6) NULL DEFAULT 0.000000,
  `direct_bet_amount` decimal(10, 6) NULL DEFAULT 0.000000,
  `direct_bet_num` int(11) NULL DEFAULT NULL,
  `direct_charge_num` int(11) NULL DEFAULT NULL,
  `direct_group_num` int(11) NULL DEFAULT NULL,
  `direct_profit_amount` decimal(10, 6) NULL DEFAULT 0.000000,
  `other_bet_amount` decimal(10, 6) NULL DEFAULT 0.000000,
  `other_bet_num` int(11) NULL DEFAULT NULL,
  `other_charge_num` int(11) NULL DEFAULT NULL,
  `other_group_num` int(11) NULL DEFAULT NULL,
  `other_profit_amount` decimal(10, 6) NULL DEFAULT 0.000000,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proxy_user
-- ----------------------------
DROP TABLE IF EXISTS `proxy_user`;
CREATE TABLE `proxy_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `ga_bind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ga_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proxy_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proxy_role` int(11) NULL DEFAULT NULL,
  `proxy_users_num` int(11) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `user_flag` int(11) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_2sufyswk21vl5df4ifx2oqlbp`(`user_name`) USING BTREE,
  INDEX `IDXkvs77aknfn3xfecis39ur05f5`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proxy_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `proxy_user_login_log`;
CREATE TABLE `proxy_user_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rebate_config
-- ----------------------------
DROP TABLE IF EXISTS `rebate_config`;
CREATE TABLE `rebate_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eight_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `eight_money` int(11) NULL DEFAULT NULL,
  `eight_profit` decimal(19, 2) NULL DEFAULT NULL,
  `first_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `first_money` int(11) NULL DEFAULT NULL,
  `first_profit` decimal(19, 2) NULL DEFAULT NULL,
  `five_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `five_money` int(11) NULL DEFAULT NULL,
  `five_profit` decimal(19, 2) NULL DEFAULT NULL,
  `four_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `four_money` int(11) NULL DEFAULT NULL,
  `four_profit` decimal(19, 2) NULL DEFAULT NULL,
  `game_type` int(11) NULL DEFAULT NULL,
  `second_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `second_money` int(11) NULL DEFAULT NULL,
  `second_profit` decimal(19, 2) NULL DEFAULT NULL,
  `seven_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `seven_money` int(11) NULL DEFAULT NULL,
  `seven_profit` decimal(19, 2) NULL DEFAULT NULL,
  `six_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `six_money` int(11) NULL DEFAULT NULL,
  `six_profit` decimal(19, 2) NULL DEFAULT NULL,
  `third_amount_line` decimal(19, 2) NULL DEFAULT NULL,
  `third_money` int(11) NULL DEFAULT NULL,
  `third_profit` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rebate_configuration
-- ----------------------------
DROP TABLE IF EXISTS `rebate_configuration`;
CREATE TABLE `rebate_configuration`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `aerate` decimal(19, 6) NULL DEFAULT 0.000000,
  `cq9rate` decimal(19, 6) NULL DEFAULT 0.000000,
  `obdjrate` decimal(19, 6) NULL DEFAULT 0.000000,
  `obtyrate` decimal(19, 6) NULL DEFAULT 0.000000,
  `pgrate` decimal(19, 6) NULL DEFAULT 0.000000,
  `sabasportrate` decimal(19, 6) NULL DEFAULT 0.000000,
  `vncrate` decimal(19, 6) NULL DEFAULT 0.000000,
  `wmrate` decimal(19, 6) NULL DEFAULT 0.000000,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `ag_rate` decimal(19, 6) NULL DEFAULT 0.000000,
  `dmcrate` decimal(19, 6) NULL DEFAULT NULL,
  `dgrate` decimal(19, 6) NULL DEFAULT 0.000000,
  `obzrrate` decimal(19, 6) NULL DEFAULT 0.000000,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`user_id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rebate_detail
-- ----------------------------
DROP TABLE IF EXISTS `rebate_detail`;
CREATE TABLE `rebate_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `game_record_id` bigint(20) NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform_rebate_rate` decimal(19, 6) NULL DEFAULT 0.000000,
  `surplus_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `total_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `user_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `user_divide_rate` decimal(19, 6) NULL DEFAULT 0.000000,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `validbet` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK4kuxvt84lnh2p1acgm34wvdv4`(`platform`, `game_record_id`) USING BTREE,
  INDEX `IDXbd979rvb8yku9mkxfcpcgvabe`(`platform`) USING BTREE,
  INDEX `IDX5i00fo1jq0guncef4dnbj69wo`(`create_time`) USING BTREE,
  INDEX `IDXltmafxlh1ma1sjyr5gxk41ri4`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80096 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for recharge_turnover
-- ----------------------------
DROP TABLE IF EXISTS `recharge_turnover`;
CREATE TABLE `recharge_turnover`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `code_num` decimal(19, 6) NULL DEFAULT 0.000000,
  `code_nums` decimal(19, 6) NULL DEFAULT 0.000000,
  `code_times` float NULL DEFAULT NULL,
  `order_id` bigint(20) NULL DEFAULT NULL,
  `order_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `remit_type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rpt_bet_info_detail
-- ----------------------------
DROP TABLE IF EXISTS `rpt_bet_info_detail`;
CREATE TABLE `rpt_bet_info_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `back_water_money` decimal(19, 2) NULL DEFAULT NULL,
  `bet_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_city_section` int(11) NULL DEFAULT NULL,
  `bet_code` varchar(2480) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_detail_order` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_money` decimal(19, 2) NULL DEFAULT NULL,
  `bet_order` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_play_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bet_play_type_combine` int(11) NULL DEFAULT NULL,
  `bet_time` datetime NULL DEFAULT NULL,
  `bet_time_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `canceled_time` datetime NULL DEFAULT NULL,
  `code_num_status` int(11) NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extract_status` int(11) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `game_record_status` int(11) NULL DEFAULT NULL,
  `is_canceled` bit(1) NULL DEFAULT NULL,
  `issue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchant_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` decimal(19, 2) NULL DEFAULT NULL,
  `odds` decimal(19, 2) NULL DEFAULT NULL,
  `real_money` decimal(19, 2) NULL DEFAULT NULL,
  `rebate_status` int(11) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `settle_state` bit(1) NULL DEFAULT NULL,
  `settle_time` datetime NULL DEFAULT NULL,
  `settle_time_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_profit_status` int(11) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_kk_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wash_code_status` int(11) NULL DEFAULT NULL,
  `win_money` decimal(19, 2) NULL DEFAULT NULL,
  `game_play` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86731 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for share_profit_change
-- ----------------------------
DROP TABLE IF EXISTS `share_profit_change`;
CREATE TABLE `share_profit_change`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `amount_after` decimal(19, 6) NULL DEFAULT 0.000000,
  `amount_before` decimal(19, 6) NULL DEFAULT 0.000000,
  `bet_time` datetime NULL DEFAULT NULL,
  `from_user_id` bigint(20) NULL DEFAULT NULL,
  `game_type` int(11) NULL DEFAULT NULL,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_level` int(11) NULL DEFAULT NULL,
  `profit_rate` decimal(10, 6) NULL DEFAULT 0.000000,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `validbet` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDXny5askrwsuuk7ufxbtt63d4pb`(`user_id`) USING BTREE,
  INDEX `IDX4ek3biq8crkepfj6d56gacwad`(`from_user_id`) USING BTREE,
  INDEX `IDXcs50piavgm6wvueeo4h1xgh5f`(`bet_time`) USING BTREE,
  INDEX `IDX4qkjf57s6xp7gw6bv64039n3n`(`game_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 275 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sign_in_record
-- ----------------------------
DROP TABLE IF EXISTS `sign_in_record`;
CREATE TABLE `sign_in_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `continue_days` int(11) NULL DEFAULT NULL,
  `surplus_lottery_number` int(11) NULL DEFAULT NULL,
  `total_lottery_number` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sign_in_rule
-- ----------------------------
DROP TABLE IF EXISTS `sign_in_rule`;
CREATE TABLE `sign_in_rule`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `consecutive_day` int(11) NULL DEFAULT NULL,
  `lottery_number` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sys_group` int(11) NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `cambodian_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descritpion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `english_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_detele` int(11) NULL DEFAULT NULL,
  `menu_level` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` bigint(20) NULL DEFAULT NULL,
  `tag_id` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 292 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission_role`;
CREATE TABLE `sys_permission_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `permission_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7706 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `last_login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `current_state` int(11) NULL DEFAULT NULL,
  `dept_id` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ga_bind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ga_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ga_status` int(11) NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `on_line_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `safe_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_flag` int(11) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_cb0fsvip6qow952a07et2k9xv`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_login_log`;
CREATE TABLE `sys_user_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 463 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `sys_role_id` bigint(20) NULL DEFAULT NULL,
  `sys_user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`sys_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for total_platform_quota_record
-- ----------------------------
DROP TABLE IF EXISTS `total_platform_quota_record`;
CREATE TABLE `total_platform_quota_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `total_platform_quota` decimal(19, 6) NULL DEFAULT 0.000000,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_hrlinu3q5at6solda3ivclgi1`(`time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 285 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credit_card` int(11) NULL DEFAULT NULL,
  `device_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_pid` bigint(20) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invite_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_first_bet` int(11) NULL DEFAULT NULL,
  `language` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `register_domain_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `register_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_pid` bigint(20) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `third_pid` bigint(20) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `web_chat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `withdraw_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(255) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_dnq7r8jcmlft7l8l4j79l1h74`(`account`) USING BTREE,
  UNIQUE INDEX `UK_7sqvj7x651usb92b8eq4sjhuf`(`invite_code`) USING BTREE,
  INDEX `IDX4td5ilaufyuihip0k99wsswr8`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85351 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_extract_points_config
-- ----------------------------
DROP TABLE IF EXISTS `user_extract_points_config`;
CREATE TABLE `user_extract_points_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `game_en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `poxy_id` bigint(20) NULL DEFAULT NULL,
  `rate` decimal(10, 2) NULL DEFAULT 0.00,
  `state` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_game_record_report
-- ----------------------------
DROP TABLE IF EXISTS `user_game_record_report`;
CREATE TABLE `user_game_record_report`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bet_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `betting_number` int(11) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `order_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `user_game_record_report_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `valid_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `win_loss` decimal(19, 2) NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`user_game_record_report_id`) USING BTREE,
  INDEX `IDXch3yyiglvl7l8oqeh5wpjvcr4`(`user_id`) USING BTREE,
  INDEX `IDXugp5vg4dlw7s55hek00in12t`(`order_times`) USING BTREE,
  INDEX `IDX7apwnl8amyoj60lkno9q3df1s`(`platform`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89750 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_level_decline
-- ----------------------------
DROP TABLE IF EXISTS `user_level_decline`;
CREATE TABLE `user_level_decline`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `today_decline_status` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDXjixxxunyqcod3kp33vhck307n`(`create_time`) USING BTREE,
  INDEX `idx_all`(`create_time`, `today_decline_status`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 775 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_level_record
-- ----------------------------
DROP TABLE IF EXISTS `user_level_record`;
CREATE TABLE `user_level_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `before_level` int(11) NULL DEFAULT NULL,
  `change_type` int(11) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `schedule` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `today_keep_status` int(11) NULL DEFAULT 0,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `keep_schedule` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `drop_time` datetime NULL DEFAULT NULL,
  `rise_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX9ygqh786qq838m3fybsyk785o`(`create_time`) USING BTREE,
  INDEX `idx_all`(`level`, `user_id`, `update_time`) USING BTREE,
  INDEX `idx_two`(`level`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 855 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_money
-- ----------------------------
DROP TABLE IF EXISTS `user_money`;
CREATE TABLE `user_money`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `balance` decimal(19, 6) NULL DEFAULT 0.000000,
  `code_num` decimal(19, 6) NULL DEFAULT 0.000000,
  `freeze_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `integral` decimal(19, 6) NULL DEFAULT 0.000000,
  `is_first` int(11) NULL DEFAULT NULL,
  `level_water` decimal(19, 2) NULL DEFAULT NULL,
  `money` decimal(19, 6) NULL DEFAULT 0.000000,
  `share_profit` decimal(19, 6) NULL DEFAULT 0.000000,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `wash_code` decimal(19, 6) NULL DEFAULT 0.000000,
  `rise_water` decimal(19, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKs7rmnn3jnfshlpn6wgwb2x420`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83953 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_rebate
-- ----------------------------
DROP TABLE IF EXISTS `user_rebate`;
CREATE TABLE `user_rebate`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `first_rate` decimal(19, 6) NULL DEFAULT 0.000000,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `second_rate` decimal(19, 6) NULL DEFAULT 0.000000,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `third_rate` decimal(19, 6) NULL DEFAULT 0.000000,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `user_rate` decimal(19, 6) NULL DEFAULT 0.000000,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK94yrng7q3uc8drrgsosxbkkf4`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_running_water
-- ----------------------------
DROP TABLE IF EXISTS `user_running_water`;
CREATE TABLE `user_running_water`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `commission` decimal(15, 6) NULL DEFAULT 0.000000,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `statics_times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`user_id`, `statics_times`) USING BTREE,
  INDEX `IDXhxjamw6622hq85t4r788dealg`(`first_proxy`) USING BTREE,
  INDEX `IDXjjk69ri0hinebf4xwix5qvnju`(`second_proxy`) USING BTREE,
  INDEX `IDXpfp3ujwu7dmo0skbqe7cod5ga`(`third_proxy`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 827 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_test
-- ----------------------------
DROP TABLE IF EXISTS `user_test`;
CREATE TABLE `user_test`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 130 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_third
-- ----------------------------
DROP TABLE IF EXISTS `user_third`;
CREATE TABLE `user_third`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ae_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dmc_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goldenf_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `obdj_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `obty_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `vnc_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ag_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dg_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `obzr_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_9ww83uehtph1qejqb4ee3s6hl`(`ag_account`) USING BTREE,
  UNIQUE INDEX `UK_n546shiuiupe243esvu2tp80x`(`obzr_account`) USING BTREE,
  UNIQUE INDEX `UK_ecb6d9jo21dj5xewlj526gp13`(`account`) USING BTREE,
  UNIQUE INDEX `UK_31gjh3i5r9fp2o6gd08xbcqjp`(`ae_account`) USING BTREE,
  UNIQUE INDEX `UK_lgkdn7kytgnb7b6pxtto9tgiw`(`dg_account`) USING BTREE,
  UNIQUE INDEX `UK_p06jjbu0m1v8cmho18lp8vsj0`(`dmc_account`) USING BTREE,
  UNIQUE INDEX `UK_g8soa16c6jv7575qe90or5u7v`(`goldenf_account`) USING BTREE,
  UNIQUE INDEX `UK_ancom01gokx7uf8yevov069sn`(`obdj_account`) USING BTREE,
  UNIQUE INDEX `UK_8fxgu0a12wtu5488es8oefens`(`obty_account`) USING BTREE,
  UNIQUE INDEX `UK_37y28lgla8dyvn2l5yu1gjff3`(`user_id`) USING BTREE,
  UNIQUE INDEX `UK_mkqfjojcreldgje9lcjj0tkay`(`vnc_account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_third_copy1
-- ----------------------------
DROP TABLE IF EXISTS `user_third_copy1`;
CREATE TABLE `user_third_copy1`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ae_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dmc_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goldenf_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `obdj_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `obty_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `vnc_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ag_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dg_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `obzr_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_9ww83uehtph1qejqb4ee3s6hl`(`ag_account`) USING BTREE,
  UNIQUE INDEX `UK_n546shiuiupe243esvu2tp80x`(`obzr_account`) USING BTREE,
  UNIQUE INDEX `UK_ecb6d9jo21dj5xewlj526gp13`(`account`) USING BTREE,
  UNIQUE INDEX `UK_31gjh3i5r9fp2o6gd08xbcqjp`(`ae_account`) USING BTREE,
  UNIQUE INDEX `UK_lgkdn7kytgnb7b6pxtto9tgiw`(`dg_account`) USING BTREE,
  UNIQUE INDEX `UK_p06jjbu0m1v8cmho18lp8vsj0`(`dmc_account`) USING BTREE,
  UNIQUE INDEX `UK_g8soa16c6jv7575qe90or5u7v`(`goldenf_account`) USING BTREE,
  UNIQUE INDEX `UK_ancom01gokx7uf8yevov069sn`(`obdj_account`) USING BTREE,
  UNIQUE INDEX `UK_8fxgu0a12wtu5488es8oefens`(`obty_account`) USING BTREE,
  UNIQUE INDEX `UK_37y28lgla8dyvn2l5yu1gjff3`(`user_id`) USING BTREE,
  UNIQUE INDEX `UK_mkqfjojcreldgje9lcjj0tkay`(`vnc_account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_wash_code_config
-- ----------------------------
DROP TABLE IF EXISTS `user_wash_code_config`;
CREATE TABLE `user_wash_code_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `game_en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `min_bet` decimal(10, 2) NULL DEFAULT 0.00,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` decimal(10, 2) NULL DEFAULT 0.00,
  `state` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity_index`(`user_id`, `platform`, `game_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 468 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `domain_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for visits_device
-- ----------------------------
DROP TABLE IF EXISTS `visits_device`;
CREATE TABLE `visits_device`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `udid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for visits_device_address_book
-- ----------------------------
DROP TABLE IF EXISTS `visits_device_address_book`;
CREATE TABLE `visits_device_address_book`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `visits_device_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38745 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wash_code_change
-- ----------------------------
DROP TABLE IF EXISTS `wash_code_change`;
CREATE TABLE `wash_code_change`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_record_id` bigint(20) NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` decimal(19, 2) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `validbet` decimal(19, 2) NULL DEFAULT NULL,
  `first_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `order_time` datetime NULL DEFAULT NULL,
  `second_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `third_amount` decimal(19, 6) NULL DEFAULT 0.000000,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK7lhlkmcj85adv5l0ti3demv51`(`platform`, `game_record_id`) USING BTREE,
  INDEX `IDXkdu4jhnmi21hgtn3svl2vlksj`(`user_id`, `platform`, `create_time`) USING BTREE,
  INDEX `IDX25c2coednrkrrcmq5df2ti8j9`(`platform`) USING BTREE,
  INDEX `IDXde6su4isp44t614mera8bpiok`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1420 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wash_code_config
-- ----------------------------
DROP TABLE IF EXISTS `wash_code_config`;
CREATE TABLE `wash_code_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `game_en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `min_bet` decimal(10, 2) NULL DEFAULT 0.00,
  `platform` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` decimal(10, 2) NULL DEFAULT 0.00,
  `state` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for withdraw_order
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_order`;
CREATE TABLE `withdraw_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `audit_id` bigint(20) NULL DEFAULT NULL,
  `audit_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `audit_time` datetime NULL DEFAULT NULL,
  `bank_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_proxy` bigint(20) NULL DEFAULT NULL,
  `last_modifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `practical_amount` decimal(19, 2) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remit_type` int(11) NULL DEFAULT NULL,
  `second_proxy` bigint(20) NULL DEFAULT NULL,
  `service_charge` decimal(19, 2) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `third_proxy` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `withdraw_money` decimal(19, 6) NULL DEFAULT 0.000000,
  `withdraw_time` datetime NULL DEFAULT NULL,
  `withdrawal_type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX2l23tr13hass8pbc1gpk1qys1`(`user_id`) USING BTREE,
  INDEX `IDXnomch5my2ra4qptr8h3jkkfa8`(`withdraw_time`) USING BTREE,
  INDEX `IDX53qos2ua41ssflodo444k8w2m`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
