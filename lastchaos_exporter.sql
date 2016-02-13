/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : lastchaos_exporter

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-02-13 14:47:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_action`
-- ----------------------------
DROP TABLE IF EXISTS `t_action`;
CREATE TABLE `t_action` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_action
-- ----------------------------
INSERT INTO `t_action` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_action` VALUES ('2', 'Byte', 'a_type');
INSERT INTO `t_action` VALUES ('3', 'Int', 'a_job');
INSERT INTO `t_action` VALUES ('4', 'Int', 'a_iconid');
INSERT INTO `t_action` VALUES ('5', 'Int', 'a_iconrow');
INSERT INTO `t_action` VALUES ('8', 'Int', 'a_iconcol');

-- ----------------------------
-- Table structure for `t_catalog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catalog`;
CREATE TABLE `t_catalog` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_catalog
-- ----------------------------
INSERT INTO `t_catalog` VALUES ('1', 'Int', 'a_ctid');
INSERT INTO `t_catalog` VALUES ('2', 'Int', 'a_category');
INSERT INTO `t_catalog` VALUES ('3', 'Int', 'a_cash');
INSERT INTO `t_catalog` VALUES ('4', 'Int', 'a_mileage');
INSERT INTO `t_catalog` VALUES ('5', 'Int', 'a_flag');
INSERT INTO `t_catalog` VALUES ('8', 'Byte', 'a_enable');
INSERT INTO `t_catalog` VALUES ('9', 'String', 'a_ctname');
INSERT INTO `t_catalog` VALUES ('10', 'String', 'a_ctdesc');

-- ----------------------------
-- Table structure for `t_combo`
-- ----------------------------
DROP TABLE IF EXISTS `t_combo`;
CREATE TABLE `t_combo` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_combo
-- ----------------------------
INSERT INTO `t_combo` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_combo` VALUES ('2', 'Int', 'a_nas');
INSERT INTO `t_combo` VALUES ('3', 'Int', 'a_texture_id');
INSERT INTO `t_combo` VALUES ('4', 'Int', 'a_texture_row');
INSERT INTO `t_combo` VALUES ('5', 'Int', 'a_texture_col');
INSERT INTO `t_combo` VALUES ('6', 'Byte', 'a_name_uk');
INSERT INTO `t_combo` VALUES ('7', 'Int', 'a_point');

-- ----------------------------
-- Table structure for `t_ct_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_ct_item`;
CREATE TABLE `t_ct_item` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_ct_item
-- ----------------------------
INSERT INTO `t_ct_item` VALUES ('1', 'Int', 'a_item_idx');
INSERT INTO `t_ct_item` VALUES ('2', 'Int', 'a_item_flag');
INSERT INTO `t_ct_item` VALUES ('3', 'Int', 'a_item_plus');
INSERT INTO `t_ct_item` VALUES ('4', 'Int', 'a_item_option');
INSERT INTO `t_ct_item` VALUES ('5', 'Int', 'a_item_num');

-- ----------------------------
-- Table structure for `t_fortune_data`
-- ----------------------------
DROP TABLE IF EXISTS `t_fortune_data`;
CREATE TABLE `t_fortune_data` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_fortune_data
-- ----------------------------
INSERT INTO `t_fortune_data` VALUES ('1', 'Int', 'a_skill_index');
INSERT INTO `t_fortune_data` VALUES ('2', 'Int', 'a_skill_level');
INSERT INTO `t_fortune_data` VALUES ('3', 'Int', 'a_string_index');
INSERT INTO `t_fortune_data` VALUES ('4', 'Int', 'a_prob');

-- ----------------------------
-- Table structure for `t_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_item
-- ----------------------------
INSERT INTO `t_item` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_item` VALUES ('2', 'Int', 'a_job_flag');
INSERT INTO `t_item` VALUES ('3', 'Int', 'a_weight');
INSERT INTO `t_item` VALUES ('4', 'Int', 'a_level');
INSERT INTO `t_item` VALUES ('5', 'Int', 'a_fame');
INSERT INTO `t_item` VALUES ('8', 'Int', 'a_flag');
INSERT INTO `t_item` VALUES ('9', 'Int', 'a_wearing');
INSERT INTO `t_item` VALUES ('10', 'Int', 'a_type_idx');
INSERT INTO `t_item` VALUES ('11', 'Int', 'a_subtype_idx');
INSERT INTO `t_item` VALUES ('13', 'Int', 'a_need_item0');
INSERT INTO `t_item` VALUES ('14', 'Int', 'a_need_item_count0');
INSERT INTO `t_item` VALUES ('15', 'Int', 'a_need_item1');
INSERT INTO `t_item` VALUES ('16', 'Int', 'a_need_item_count1');
INSERT INTO `t_item` VALUES ('17', 'Int', 'a_need_item2');
INSERT INTO `t_item` VALUES ('18', 'Int', 'a_need_item_count2');
INSERT INTO `t_item` VALUES ('19', 'Int', 'a_need_item3');
INSERT INTO `t_item` VALUES ('20', 'Int', 'a_need_item_count3');
INSERT INTO `t_item` VALUES ('21', 'Int', 'a_need_item4');
INSERT INTO `t_item` VALUES ('22', 'Int', 'a_need_item_count4');
INSERT INTO `t_item` VALUES ('23', 'Int', 'a_need_item5');
INSERT INTO `t_item` VALUES ('24', 'Int', 'a_need_item_count5');
INSERT INTO `t_item` VALUES ('25', 'Int', 'a_need_item6');
INSERT INTO `t_item` VALUES ('26', 'Int', 'a_need_item_count6');
INSERT INTO `t_item` VALUES ('27', 'Int', 'a_need_item7');
INSERT INTO `t_item` VALUES ('28', 'Int', 'a_need_item_count7');
INSERT INTO `t_item` VALUES ('29', 'Int', 'a_need_item8');
INSERT INTO `t_item` VALUES ('30', 'Int', 'a_need_item_count8');
INSERT INTO `t_item` VALUES ('31', 'Int', 'a_need_item9');
INSERT INTO `t_item` VALUES ('32', 'Int', 'a_need_item_count9');
INSERT INTO `t_item` VALUES ('33', 'Int', 'a_need_sskill');
INSERT INTO `t_item` VALUES ('34', 'Int', 'a_need_sskill_level');
INSERT INTO `t_item` VALUES ('35', 'Int', 'a_need_sskill2');
INSERT INTO `t_item` VALUES ('36', 'Int', 'a_need_sskill_level2');
INSERT INTO `t_item` VALUES ('37', 'Int', 'a_num_0');
INSERT INTO `t_item` VALUES ('38', 'Int', 'a_num_1');
INSERT INTO `t_item` VALUES ('39', 'Int', 'a_num_2');
INSERT INTO `t_item` VALUES ('40', 'Int', 'a_num_3');
INSERT INTO `t_item` VALUES ('41', 'Int', 'a_price');
INSERT INTO `t_item` VALUES ('42', 'StringLength64', 'a_file_smc');
INSERT INTO `t_item` VALUES ('43', 'int', 'a_texture_id');
INSERT INTO `t_item` VALUES ('44', 'Int', 'a_texture_row');
INSERT INTO `t_item` VALUES ('45', 'Int', 'a_texture_col');
INSERT INTO `t_item` VALUES ('46', 'StringLength32', 'a_effect_name');
INSERT INTO `t_item` VALUES ('47', 'StringLength32', 'a_attack_effect_name');
INSERT INTO `t_item` VALUES ('48', 'StringLength32', 'a_damage_effect_name');
INSERT INTO `t_item` VALUES ('49', 'Int', 'a_set_0');
INSERT INTO `t_item` VALUES ('50', 'Int', 'a_set_1');
INSERT INTO `t_item` VALUES ('51', 'Int', 'a_set_2');
INSERT INTO `t_item` VALUES ('52', 'Int', 'a_set_3');
INSERT INTO `t_item` VALUES ('53', 'Int', 'a_set_4');
INSERT INTO `t_item` VALUES ('54', 'Int', 'a_rare_index_0');
INSERT INTO `t_item` VALUES ('55', 'Int', 'a_rare_prob_0');
INSERT INTO `t_item` VALUES ('56', 'Int', 'a_rare_index_0');
INSERT INTO `t_item` VALUES ('57', 'Int', 'a_rare_prob_0');
INSERT INTO `t_item` VALUES ('58', 'Int', 'a_rare_index_1');
INSERT INTO `t_item` VALUES ('59', 'Int', 'a_rare_prob_1');
INSERT INTO `t_item` VALUES ('60', 'Int', 'a_rare_index_2');
INSERT INTO `t_item` VALUES ('61', 'Int', 'a_rare_prob_2');
INSERT INTO `t_item` VALUES ('62', 'Int', 'a_rare_index_3');
INSERT INTO `t_item` VALUES ('63', 'Int', 'a_rare_prob_3');
INSERT INTO `t_item` VALUES ('64', 'Int', 'a_rare_index_4');
INSERT INTO `t_item` VALUES ('65', 'Int', 'a_rare_prob_4');
INSERT INTO `t_item` VALUES ('66', 'Int', 'a_rare_index_5');
INSERT INTO `t_item` VALUES ('67', 'Int', 'a_rare_prob_5');
INSERT INTO `t_item` VALUES ('68', 'Int', 'a_rare_index_6');
INSERT INTO `t_item` VALUES ('69', 'Int', 'a_rare_prob_6');
INSERT INTO `t_item` VALUES ('70', 'Int', 'a_rare_index_7');
INSERT INTO `t_item` VALUES ('71', 'Int', 'a_rare_prob_7');
INSERT INTO `t_item` VALUES ('72', 'Int', 'a_rare_index_8');
INSERT INTO `t_item` VALUES ('73', 'Int', 'a_rare_prob_8');
INSERT INTO `t_item` VALUES ('74', 'Int', 'a_rare_index_9');
INSERT INTO `t_item` VALUES ('75', 'Int', 'a_rare_prob_9');
INSERT INTO `t_item` VALUES ('76', 'Int', 'a_rvr_value');
INSERT INTO `t_item` VALUES ('77', 'Int', 'a_rvr_grade');
INSERT INTO `t_item` VALUES ('78', 'Byte', 'a_castle_war');

-- ----------------------------
-- Table structure for `t_item_copy`
-- ----------------------------
DROP TABLE IF EXISTS `t_item_copy`;
CREATE TABLE `t_item_copy` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_item_copy
-- ----------------------------
INSERT INTO `t_item_copy` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_item_copy` VALUES ('2', 'Int', 'a_job_flag');
INSERT INTO `t_item_copy` VALUES ('3', 'Int', 'a_weight');
INSERT INTO `t_item_copy` VALUES ('4', 'Int', 'a_max_use');
INSERT INTO `t_item_copy` VALUES ('5', 'Int', 'a_level');
INSERT INTO `t_item_copy` VALUES ('8', 'Int', 'a_flag');
INSERT INTO `t_item_copy` VALUES ('9', 'Int', 'a_wearing');
INSERT INTO `t_item_copy` VALUES ('10', 'Int', 'a_wearing');
INSERT INTO `t_item_copy` VALUES ('11', 'Int', 'a_type_idx');
INSERT INTO `t_item_copy` VALUES ('12', 'Int', 'a_subtype_idx');
INSERT INTO `t_item_copy` VALUES ('13', 'Int', 'a_need_item0');
INSERT INTO `t_item_copy` VALUES ('14', 'Int', 'a_need_item1');
INSERT INTO `t_item_copy` VALUES ('15', 'Int', 'a_need_item2');
INSERT INTO `t_item_copy` VALUES ('16', 'Int', 'a_need_item3');
INSERT INTO `t_item_copy` VALUES ('17', 'Int', 'a_need_item4');
INSERT INTO `t_item_copy` VALUES ('18', 'Int', 'a_need_item5');
INSERT INTO `t_item_copy` VALUES ('19', 'Int', 'a_need_item6');
INSERT INTO `t_item_copy` VALUES ('20', 'Int', 'a_need_item7');
INSERT INTO `t_item_copy` VALUES ('21', 'Int', 'a_need_item8');
INSERT INTO `t_item_copy` VALUES ('22', 'Int', 'a_need_item9');
INSERT INTO `t_item_copy` VALUES ('23', 'Int', 'a_need_item_count0');
INSERT INTO `t_item_copy` VALUES ('24', 'Int', 'a_need_item_count1');
INSERT INTO `t_item_copy` VALUES ('25', 'Int', 'a_need_item_count2');
INSERT INTO `t_item_copy` VALUES ('26', 'Int', 'a_need_item_count3');
INSERT INTO `t_item_copy` VALUES ('27', 'Int', 'a_need_item_count4');
INSERT INTO `t_item_copy` VALUES ('28', 'Int', 'a_need_item_count5');
INSERT INTO `t_item_copy` VALUES ('29', 'Int', 'a_need_item_count6');
INSERT INTO `t_item_copy` VALUES ('30', 'Int', 'a_need_item_count7');
INSERT INTO `t_item_copy` VALUES ('31', 'Int', 'a_need_item_count8');
INSERT INTO `t_item_copy` VALUES ('32', 'Int', 'a_need_item_count9');
INSERT INTO `t_item_copy` VALUES ('33', 'Int', 'a_need_sskill');
INSERT INTO `t_item_copy` VALUES ('34', 'Int', 'a_need_sskill_level');
INSERT INTO `t_item_copy` VALUES ('35', 'Int', 'a_need_sskill2');
INSERT INTO `t_item_copy` VALUES ('36', 'Int', 'a_need_sskill_level2');
INSERT INTO `t_item_copy` VALUES ('37', 'Int', 'a_texture_id');
INSERT INTO `t_item_copy` VALUES ('38', 'Int', 'a_texture_row');
INSERT INTO `t_item_copy` VALUES ('39', 'Int', 'a_texture_col');
INSERT INTO `t_item_copy` VALUES ('40', 'Int', 'a_num_0');
INSERT INTO `t_item_copy` VALUES ('41', 'Int', 'a_num_1');
INSERT INTO `t_item_copy` VALUES ('42', 'Int', 'a_num_2');
INSERT INTO `t_item_copy` VALUES ('43', 'Int', 'a_num_3');
INSERT INTO `t_item_copy` VALUES ('44', 'Int', 'a_price');
INSERT INTO `t_item_copy` VALUES ('45', 'Int', 'a_set_0');
INSERT INTO `t_item_copy` VALUES ('46', 'Int', 'a_set_1');
INSERT INTO `t_item_copy` VALUES ('47', 'Int', 'a_set_2');
INSERT INTO `t_item_copy` VALUES ('48', 'Int', 'a_set_3');
INSERT INTO `t_item_copy` VALUES ('49', 'Int', 'a_set_4');
INSERT INTO `t_item_copy` VALUES ('50', 'StringLength64', 'a_file_smc');
INSERT INTO `t_item_copy` VALUES ('51', 'StringLength32', 'a_effect_name');
INSERT INTO `t_item_copy` VALUES ('52', 'StringLength32', 'a_attack_effect_name');
INSERT INTO `t_item_copy` VALUES ('53', 'StringLength32', 'a_damage_effect_name');
INSERT INTO `t_item_copy` VALUES ('54', 'Int', 'a_rare_index_9');
INSERT INTO `t_item_copy` VALUES ('55', 'Int', 'a_rare_prob_9');
INSERT INTO `t_item_copy` VALUES ('56', 'Int', 'a_rare_index_0');
INSERT INTO `t_item_copy` VALUES ('57', 'Int', 'a_rare_index_1');
INSERT INTO `t_item_copy` VALUES ('58', 'Int', 'a_rare_index_2');
INSERT INTO `t_item_copy` VALUES ('59', 'Int', 'a_rare_index_3');
INSERT INTO `t_item_copy` VALUES ('60', 'Int', 'a_rare_index_4');
INSERT INTO `t_item_copy` VALUES ('61', 'Int', 'a_rare_index_5');
INSERT INTO `t_item_copy` VALUES ('62', 'Int', 'a_rare_index_6');
INSERT INTO `t_item_copy` VALUES ('63', 'Int', 'a_rare_index_7');
INSERT INTO `t_item_copy` VALUES ('64', 'Int', 'a_rare_index_8');
INSERT INTO `t_item_copy` VALUES ('65', 'Int', 'a_rare_index_9');
INSERT INTO `t_item_copy` VALUES ('66', 'Int', 'a_rare_prob_0');
INSERT INTO `t_item_copy` VALUES ('67', 'Int', 'a_rare_prob_1');
INSERT INTO `t_item_copy` VALUES ('68', 'Int', 'a_rare_prob_2');
INSERT INTO `t_item_copy` VALUES ('69', 'Int', 'a_rare_prob_3');
INSERT INTO `t_item_copy` VALUES ('70', 'Int', 'a_rare_prob_4');
INSERT INTO `t_item_copy` VALUES ('71', 'Int', 'a_rare_prob_5');
INSERT INTO `t_item_copy` VALUES ('72', 'Int', 'a_rare_prob_6');
INSERT INTO `t_item_copy` VALUES ('73', 'Int', 'a_rare_prob_7');
INSERT INTO `t_item_copy` VALUES ('74', 'Int', 'a_rare_prob_8');
INSERT INTO `t_item_copy` VALUES ('75', 'Int', 'a_rare_prob_9');
INSERT INTO `t_item_copy` VALUES ('76', 'Int', 'a_rvr_value');
INSERT INTO `t_item_copy` VALUES ('77', 'Int', 'a_rvr_grade');
INSERT INTO `t_item_copy` VALUES ('78', 'Byte', 'a_castle_war');

-- ----------------------------
-- Table structure for `t_itemcollection`
-- ----------------------------
DROP TABLE IF EXISTS `t_itemcollection`;
CREATE TABLE `t_itemcollection` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_itemcollection
-- ----------------------------
INSERT INTO `t_itemcollection` VALUES ('1', 'Int', 'a_category', null);
INSERT INTO `t_itemcollection` VALUES ('2', 'Int', 'a_theme', null);
INSERT INTO `t_itemcollection` VALUES ('3', 'byte', 'a_id', null);
INSERT INTO `t_itemcollection` VALUES ('4', 'byte', 'a_row', '');
INSERT INTO `t_itemcollection` VALUES ('5', 'byte', 'a_col', null);

-- ----------------------------
-- Table structure for `t_itemcollectionneeditem`
-- ----------------------------
DROP TABLE IF EXISTS `t_itemcollectionneeditem`;
CREATE TABLE `t_itemcollectionneeditem` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_itemcollectionneeditem
-- ----------------------------
INSERT INTO `t_itemcollectionneeditem` VALUES ('1', 'Byte', 'a_result_type');
INSERT INTO `t_itemcollectionneeditem` VALUES ('2', 'Int', 'a_result_index');
INSERT INTO `t_itemcollectionneeditem` VALUES ('3', 'Int', 'a_result_num');

-- ----------------------------
-- Table structure for `t_jewelcompos`
-- ----------------------------
DROP TABLE IF EXISTS `t_jewelcompos`;
CREATE TABLE `t_jewelcompos` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_jewelcompos
-- ----------------------------
INSERT INTO `t_jewelcompos` VALUES ('1', 'Int', 'a_index', null);
INSERT INTO `t_jewelcompos` VALUES ('2', 'Int', 'a_normal_compose_neednas', null);
INSERT INTO `t_jewelcompos` VALUES ('3', 'Int', 'a_chaos_compose_neednas', null);
INSERT INTO `t_jewelcompos` VALUES ('4', 'Int', 'a_compose_normalToChaos_prob', '');
INSERT INTO `t_jewelcompos` VALUES ('5', 'Int', 'a_normal_compose_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('8', 'Int', 'a_chaos_compose_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('9', 'Int', 'a_normal_plus2_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('10', 'Int', 'a_chaos_plus2_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('11', 'Int', 'a_normal_plus3_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('12', 'Int', 'a_chaos_plus3_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('13', 'Int', 'a_normal_minus1_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('14', 'Int', 'a_chaos_minus1_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('15', 'Int', 'a_normal_minus2_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('16', 'Int', 'a_chaos_minus2_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('17', 'Int', 'a_normal_minus3_prob', null);
INSERT INTO `t_jewelcompos` VALUES ('18', 'Int', 'a_chaos_minus3_prob', null);

-- ----------------------------
-- Table structure for `t_lods`
-- ----------------------------
DROP TABLE IF EXISTS `t_lods`;
CREATE TABLE `t_lods` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(255) DEFAULT NULL,
  `a_mytable` varchar(255) DEFAULT NULL,
  `a_mytable2` varchar(255) DEFAULT NULL,
  `a_dbtable` varchar(255) DEFAULT NULL,
  `a_dbtable2` varchar(255) DEFAULT NULL,
  `a_count` varchar(1) DEFAULT NULL,
  `a_checksum` varchar(1) DEFAULT NULL,
  `a_filename` varchar(255) DEFAULT NULL,
  `a_version` varchar(255) DEFAULT NULL,
  `a_enable` varchar(1) DEFAULT NULL,
  `a_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_lods
-- ----------------------------
INSERT INTO `t_lods` VALUES ('1', 'action.lod2014', 't_action', 'none', 't_action', 'none', '1', '0', 'actions.lod', '2014', '1', '1');
INSERT INTO `t_lods` VALUES ('2', 'moball.lod2014', 't_moball', 'none', 't_npc', 'none', '1', '0', 'mobAll.lod', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('3', 'titletool.lod2014', 't_title', 'none', 't_title', 'none', '1', '0', 'titletool.lod', '2014', '1', '1');
INSERT INTO `t_lods` VALUES ('4', 'combo.lod2014', 't_combo', 'none', 't_missioncase', 'none', '1', '0', 'combo.lod', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('5', 'shopAll.lod2014', 't_shop', 't_shopitem', 't_shop', 't_shopitem', '0', '0', 'shopAll.lod', '2014', '1', '1');
INSERT INTO `t_lods` VALUES ('6', 'catalog.lod2014', 't_catalog', 't_ct_item', 't_catalog', 't_ct_item', '1', '0', 'catalog.lod', '2014', '1', '1');
INSERT INTO `t_lods` VALUES ('7', 'strAction.lod2014', 't_straction', 'none', 't_action', 'none', '1', '0', 'strAction_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('8', 'questAll.lod2014', 't_quest2014', 'none', 't_quest', 'none', '1', '0', 'questAll.lod', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('9', 'strAffinity.lod2014', 't_straffinity', 'none', 't_affinity', 'none', '2', '0', 'strAffinity_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('10', 'strClient.lod2014', 't_strclient', 'none', 't_string', 'none', '2', '1', 'strClient_us.lod', '2014', '0', '2');
INSERT INTO `t_lods` VALUES ('11', 'strCombo.lod2014', 't_strcombo', 'none', 't_missioncase', 'none', '2', '0', 'strCombo_us.lod', '2014', '0', '2');
INSERT INTO `t_lods` VALUES ('12', 'strHelp.lod2014', 't_strhelp', 'none', 'none', 'none', '2', '0', 'strHelp_us.lod', '2014', '0', '2');
INSERT INTO `t_lods` VALUES ('13', 'strItem.lod2014', 't_stritem', 'none', 't_item', 'none', '2', '0', 'strItem_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('14', 'strItemCollection.lod2014', 't_stritemcollection', 'none', 't_item_collection', 'none', '2', '0', 'strItemCollection_us.lod', '2014', '0', '2');
INSERT INTO `t_lods` VALUES ('15', 'strNPCHelp.lod2014', 't_strnpchelp', 'none', 't_npc', 'none', '2', '0', 'strNPCHelp_us.lod', '2014', '0', '2');
INSERT INTO `t_lods` VALUES ('16', 'strNpcName.lod2014', 't_strnpcname', 'none', 't_npc', 'none', '2', '0', 'strNpcName_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('17', 'strNPCShop.lod2014', 't_strnpcshop', 'none', 't_shop', 'none', '2', '0', 'strNPCShop_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('18', 'strOption.lod2014', 't_stroption', 'none', 't_option', 'none', '2', '0', 'strOption_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('19', 'strQuest.lod2014', 't_strquest', 'none', 't_quest', 'none', '2', '0', 'strQuest_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('20', 'strRareOption.lod2014', 't_strrareoption', 'none', 't_rareoption', 'none', '2', '0', 'strRareOption_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('21', 'strSetItem.lod2014', 't_strsetitem', 'none', 't_set_item', 'none', '2', '0', 'strSetItem_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('22', 'strSkill.lod2014', 't_strskill', 'none', 't_skill', 'none', '2', '0', 'strSkill_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('23', 'strSSkill.lod2014', 't_strsskill', 'none', 't_special_skill', 'none', '2', '0', 'strSSkill_us.lod', '2014', '1', '2');
INSERT INTO `t_lods` VALUES ('24', 'itemAll.lod2014', 't_item', 'none', 't_item', 'none', '1', '0', 'itemAll.lod', '2014', '1', '1');
INSERT INTO `t_lods` VALUES ('25', 'zoneflag.lod2014', 't_zoneflag', 'none', 't_npc', 'none', '1', '0', 'ZoneFlag.lod', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('26', 'skills.lod2014', 't_skill', 't_skill_level', 't_skill', 't_skilllevel', '1', '1', 'skills.lod', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('27', 'option.lod2014', 't_option', 'none', 't_option', 'none', '1', '0', 'option.lod', '2014', '1', '1');
INSERT INTO `t_lods` VALUES ('28', 'setItemALL.lod2014', 't_set_item', 'none', 't_set_item', 'none', '1', '0', 'setItemALL.lod', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('29', 'rareoption.lod2014', 't_rareoption', 'none', 't_rareoption', 'none', '1', '0', 'rareoption.lod', '2014', '1', '1');
INSERT INTO `t_lods` VALUES ('30', 'raidobjectlist.lod2014', 't_raid_object_list', 'none', 't_raid_object_list', 'none', '1', '0', 'raidobjectlist.lod', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('31', 'notice.lod2014', 't_notice', 'none', 't_notice_damona', 'none', '1', '0', 'notice.lod', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('32', 'npchelp.lod2014', 't_npchelp', 'none', 't_npc_regen', 'none', '1', '0', 'npchelp.lod', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('33', 'sskill.lod2014', 't_special_skill', 'none', 't_special_skill', 'none', '1', '0', 'sskill.lod', '2014', '1', '1');
INSERT INTO `t_lods` VALUES ('34', 'itemCompose.lod2014', 't_jewelcompos', 'none', 't_jewel_data', 'none', '1', '0', 'itemCompose.bin', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('35', 'itemFortune.lod2014', 't_fortune_data', 'none', 't_fortune_data', 'none', '1', '0', 'itemFortune.lod', '2014', '0', '1');
INSERT INTO `t_lods` VALUES ('36', 'moonstone.lod2014', 't_moonstone_reward', 'none', 't_moonstone_reward', 'none', '0', '0', 'moonstone.lod', '2014', '1', '1');

-- ----------------------------
-- Table structure for `t_moball`
-- ----------------------------
DROP TABLE IF EXISTS `t_moball`;
CREATE TABLE `t_moball` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_table_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_moball
-- ----------------------------
INSERT INTO `t_moball` VALUES ('48', 'Int', 'a_index', null);
INSERT INTO `t_moball` VALUES ('49', 'Int', 'a_level', null);
INSERT INTO `t_moball` VALUES ('50', 'Int', 'a_hp', null);
INSERT INTO `t_moball` VALUES ('51', 'Int', 'a_mp', null);
INSERT INTO `t_moball` VALUES ('52', 'Int', 'a_flag', null);
INSERT INTO `t_moball` VALUES ('53', 'Int', 'a_flag1', null);
INSERT INTO `t_moball` VALUES ('54', 'Int', 'a_attackSpeed', null);
INSERT INTO `t_moball` VALUES ('55', 'Float', 'a_walk_speed', null);
INSERT INTO `t_moball` VALUES ('56', 'Float', 'a_run_speed', null);
INSERT INTO `t_moball` VALUES ('57', 'Float', 'a_scale', null);
INSERT INTO `t_moball` VALUES ('58', 'Float', 'a_attack_area', null);
INSERT INTO `t_moball` VALUES ('59', 'Float', 'a_size', null);
INSERT INTO `t_moball` VALUES ('60', 'Byte', 'a_skillmaster', null);
INSERT INTO `t_moball` VALUES ('61', 'Byte', 'a_sskill_master', null);
INSERT INTO `t_moball` VALUES ('62', 'Int', 'a_skill0', null);
INSERT INTO `t_moball` VALUES ('63', 'Int', 'a_skill0', null);
INSERT INTO `t_moball` VALUES ('64', 'Int', 'a_skill0', null);
INSERT INTO `t_moball` VALUES ('65', 'Int', 'a_skill0', null);
INSERT INTO `t_moball` VALUES ('66', 'Int', 'a_skill0', null);
INSERT INTO `t_moball` VALUES ('67', 'Int', 'a_skill0', null);
INSERT INTO `t_moball` VALUES ('68', 'Byte', 'a_attackType', null);
INSERT INTO `t_moball` VALUES ('69', 'Byte', 'a_fireDelayCount', null);
INSERT INTO `t_moball` VALUES ('70', 'Float', 'a_fireDelay0', null);
INSERT INTO `t_moball` VALUES ('71', 'Float', 'a_fireDelay1', null);
INSERT INTO `t_moball` VALUES ('72', 'Float', 'a_fireDelay2', null);
INSERT INTO `t_moball` VALUES ('73', 'Float', 'a_fireDelay3', null);
INSERT INTO `t_moball` VALUES ('74', 'Byte', 'a_fireObject', null);
INSERT INTO `t_moball` VALUES ('75', 'Float', 'a_fireSpeed', null);
INSERT INTO `t_moball` VALUES ('76', 'ExplodeInt', 'a_skill0', '1');
INSERT INTO `t_moball` VALUES ('77', 'Byte', 'a_fireObject', null);
INSERT INTO `t_moball` VALUES ('78', 'ExplodeInt', 'a_skill1', '1');
INSERT INTO `t_moball` VALUES ('79', 'Byte', 'a_fireObject', null);
INSERT INTO `t_moball` VALUES ('80', 'Int', 'a_rvr_value', null);
INSERT INTO `t_moball` VALUES ('81', 'Int', 'a_rvr_grade', null);
INSERT INTO `t_moball` VALUES ('82', 'Int', 'a_bound', null);
INSERT INTO `t_moball` VALUES ('83', 'StringLength128', 'a_file_smc', null);
INSERT INTO `t_moball` VALUES ('84', 'StringLength64', 'a_motion_idle', null);
INSERT INTO `t_moball` VALUES ('85', 'StringLength64', 'a_motion_walk', null);
INSERT INTO `t_moball` VALUES ('86', 'StringLength64', 'a_motion_dam', null);
INSERT INTO `t_moball` VALUES ('87', 'StringLength64', 'a_motion_attack', null);
INSERT INTO `t_moball` VALUES ('88', 'StringLength64', 'a_motion_die', null);
INSERT INTO `t_moball` VALUES ('89', 'StringLength64', 'a_motion_run', null);
INSERT INTO `t_moball` VALUES ('90', 'StringLength64', 'a_motion_idle2', null);
INSERT INTO `t_moball` VALUES ('91', 'StringLength64', 'a_motion_attack2', null);
INSERT INTO `t_moball` VALUES ('92', 'StringLength64', 'a_fireEffect0', null);
INSERT INTO `t_moball` VALUES ('93', 'StringLength64', 'a_fireEffect1', null);
INSERT INTO `t_moball` VALUES ('94', 'StringLength64', 'a_fireEffect2', null);

-- ----------------------------
-- Table structure for `t_moballexporttool`
-- ----------------------------
DROP TABLE IF EXISTS `t_moballexporttool`;
CREATE TABLE `t_moballexporttool` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_table_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_moballexporttool
-- ----------------------------
INSERT INTO `t_moballexporttool` VALUES ('100', 'Int', 'a_index', null);
INSERT INTO `t_moballexporttool` VALUES ('101', 'Int', 'a_level', null);
INSERT INTO `t_moballexporttool` VALUES ('102', 'Float', 'a_walk_speed', null);
INSERT INTO `t_moballexporttool` VALUES ('103', 'Float', 'a_run_speed', null);
INSERT INTO `t_moballexporttool` VALUES ('104', 'Float', 'a_size', null);
INSERT INTO `t_moballexporttool` VALUES ('105', 'Int', 'a_skill0', null);
INSERT INTO `t_moballexporttool` VALUES ('106', 'Int', 'a_skill0', null);
INSERT INTO `t_moballexporttool` VALUES ('107', 'Int', 'a_skill0', null);
INSERT INTO `t_moballexporttool` VALUES ('108', 'Int', 'a_skill0', null);
INSERT INTO `t_moballexporttool` VALUES ('109', 'Int', 'a_skill0', null);
INSERT INTO `t_moballexporttool` VALUES ('110', 'Int', 'a_hp', null);
INSERT INTO `t_moballexporttool` VALUES ('111', 'Int', 'a_mp', null);
INSERT INTO `t_moballexporttool` VALUES ('112', 'Float', 'a_attack_area', null);
INSERT INTO `t_moballexporttool` VALUES ('113', 'Byte', 'a_skillmaster', null);
INSERT INTO `t_moballexporttool` VALUES ('114', 'Byte', 'a_sskill_master', null);
INSERT INTO `t_moballexporttool` VALUES ('115', 'Int', 'a_flag', null);
INSERT INTO `t_moballexporttool` VALUES ('116', 'Int', 'a_flag1', null);
INSERT INTO `t_moballexporttool` VALUES ('117', 'Float', 'a_scale', null);
INSERT INTO `t_moballexporttool` VALUES ('118', 'StringLength128', 'a_file_smc', null);
INSERT INTO `t_moballexporttool` VALUES ('119', 'StringLength64', 'a_motion_idle', null);
INSERT INTO `t_moballexporttool` VALUES ('120', 'StringLength64', 'a_motion_walk', null);
INSERT INTO `t_moballexporttool` VALUES ('121', 'StringLength64', 'a_motion_dam', null);
INSERT INTO `t_moballexporttool` VALUES ('122', 'StringLength64', 'a_motion_attack', null);
INSERT INTO `t_moballexporttool` VALUES ('123', 'StringLength64', 'a_motion_die', null);
INSERT INTO `t_moballexporttool` VALUES ('124', 'StringLength64', 'a_motion_run', null);
INSERT INTO `t_moballexporttool` VALUES ('125', 'StringLength64', 'a_motion_idle2', null);
INSERT INTO `t_moballexporttool` VALUES ('126', 'StringLength64', 'a_motion_attack2', null);
INSERT INTO `t_moballexporttool` VALUES ('127', 'Int', 'a_attackSpeed', null);
INSERT INTO `t_moballexporttool` VALUES ('128', 'Byte', 'a_attackType', null);
INSERT INTO `t_moballexporttool` VALUES ('129', 'Byte', 'a_fireDelayCount', null);
INSERT INTO `t_moballexporttool` VALUES ('130', 'Float', 'a_fireDelay0', null);
INSERT INTO `t_moballexporttool` VALUES ('131', 'Float', 'a_fireDelay1', null);
INSERT INTO `t_moballexporttool` VALUES ('132', 'Float', 'a_fireDelay2', null);
INSERT INTO `t_moballexporttool` VALUES ('133', 'Float', 'a_fireDelay3', null);
INSERT INTO `t_moballexporttool` VALUES ('134', 'StringLength64', 'a_fireEffect0', null);
INSERT INTO `t_moballexporttool` VALUES ('135', 'StringLength64', 'a_fireEffect1', null);
INSERT INTO `t_moballexporttool` VALUES ('136', 'StringLength64', 'a_fireEffect2', null);
INSERT INTO `t_moballexporttool` VALUES ('137', 'Byte', 'a_fireObject', null);
INSERT INTO `t_moballexporttool` VALUES ('138', 'Float', 'a_fireSpeed', null);
INSERT INTO `t_moballexporttool` VALUES ('139', 'Int', 'a_rvr_value', null);
INSERT INTO `t_moballexporttool` VALUES ('140', 'Int', 'a_rvr_grade', null);
INSERT INTO `t_moballexporttool` VALUES ('141', 'Int', 'a_bound', null);
INSERT INTO `t_moballexporttool` VALUES ('142', 'ExploitInt', 'a_skill0', '1');
INSERT INTO `t_moballexporttool` VALUES ('143', 'Byte', 'a_fireObject', '1');
INSERT INTO `t_moballexporttool` VALUES ('144', 'ExploitInt', 'a_skill1', '1');
INSERT INTO `t_moballexporttool` VALUES ('145', 'Byte', 'a_fireObject', '1');

-- ----------------------------
-- Table structure for `t_moonstone_reward`
-- ----------------------------
DROP TABLE IF EXISTS `t_moonstone_reward`;
CREATE TABLE `t_moonstone_reward` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_moonstone_reward
-- ----------------------------
INSERT INTO `t_moonstone_reward` VALUES ('1', 'Int', 'a_giftindex');

-- ----------------------------
-- Table structure for `t_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_notice` VALUES ('2', 'Int', 'a_enable');
INSERT INTO `t_notice` VALUES ('3', 'Int', 'a_title_length');
INSERT INTO `t_notice` VALUES ('4', 'String', 'a_title_name');
INSERT INTO `t_notice` VALUES ('5', 'String', 'a_text');
INSERT INTO `t_notice` VALUES ('8', 'String', 'a_date_start');
INSERT INTO `t_notice` VALUES ('9', 'String', 'a_date_end');
INSERT INTO `t_notice` VALUES ('10', 'Int', 'a_cycle');
INSERT INTO `t_notice` VALUES ('11', 'Int', 'a_color');

-- ----------------------------
-- Table structure for `t_npchelp`
-- ----------------------------
DROP TABLE IF EXISTS `t_npchelp`;
CREATE TABLE `t_npchelp` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_npchelp
-- ----------------------------
INSERT INTO `t_npchelp` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_npchelp` VALUES ('2', 'Int', 'a_zone_num');

-- ----------------------------
-- Table structure for `t_option`
-- ----------------------------
DROP TABLE IF EXISTS `t_option`;
CREATE TABLE `t_option` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_table_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_option
-- ----------------------------
INSERT INTO `t_option` VALUES ('1', 'Int', 'a_index', null);
INSERT INTO `t_option` VALUES ('2', 'Int', 'a_type', null);
INSERT INTO `t_option` VALUES ('3', 'ExplodeInt', 'a_level', '36');

-- ----------------------------
-- Table structure for `t_quest2014`
-- ----------------------------
DROP TABLE IF EXISTS `t_quest2014`;
CREATE TABLE `t_quest2014` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_quest2014
-- ----------------------------
INSERT INTO `t_quest2014` VALUES ('0', 'Int', 'a_index');
INSERT INTO `t_quest2014` VALUES ('1', 'Int', 'a_type1');
INSERT INTO `t_quest2014` VALUES ('2', 'Int', 'a_type2');
INSERT INTO `t_quest2014` VALUES ('3', 'Int', 'a_start_type');
INSERT INTO `t_quest2014` VALUES ('4', 'Int', 'a_start_data');
INSERT INTO `t_quest2014` VALUES ('5', 'Int', 'a_prize_npc');
INSERT INTO `t_quest2014` VALUES ('6', 'Int', 'a_prequest_num');
INSERT INTO `t_quest2014` VALUES ('7', 'Int', 'a_start_npc_zone_num');
INSERT INTO `t_quest2014` VALUES ('8', 'Int', 'a_prize_npc_zone_num');
INSERT INTO `t_quest2014` VALUES ('9', 'Int', 'a_need_exp');
INSERT INTO `t_quest2014` VALUES ('10', 'Int', 'a_need_min_level');
INSERT INTO `t_quest2014` VALUES ('11', 'Int', 'a_need_max_level');
INSERT INTO `t_quest2014` VALUES ('12', 'Int', 'a_need_job');
INSERT INTO `t_quest2014` VALUES ('13', 'Int', 'NeedMinPinalty');
INSERT INTO `t_quest2014` VALUES ('14', 'Int', 'NeedMaxPinalty');
INSERT INTO `t_quest2014` VALUES ('15', 'Int', 'a_need_item0');
INSERT INTO `t_quest2014` VALUES ('16', 'Int', 'a_need_item1');
INSERT INTO `t_quest2014` VALUES ('17', 'Int', 'a_need_item2');
INSERT INTO `t_quest2014` VALUES ('18', 'Int', 'a_need_item3');
INSERT INTO `t_quest2014` VALUES ('19', 'Int', 'a_need_item4');
INSERT INTO `t_quest2014` VALUES ('22', 'Int', 'a_need_item_count0');
INSERT INTO `t_quest2014` VALUES ('23', 'Int', 'a_need_item_count1');
INSERT INTO `t_quest2014` VALUES ('24', 'Int', 'a_need_item_count2');
INSERT INTO `t_quest2014` VALUES ('25', 'Int', 'a_need_item_count3');
INSERT INTO `t_quest2014` VALUES ('26', 'Int', 'a_need_item_count4');
INSERT INTO `t_quest2014` VALUES ('27', 'Int', 'a_need_rvr_type');
INSERT INTO `t_quest2014` VALUES ('28', 'Int', 'a_need_rvr_grade');
INSERT INTO `t_quest2014` VALUES ('29', 'Int', 'a_condition0_type');
INSERT INTO `t_quest2014` VALUES ('30', 'Int', 'a_condition1_type');
INSERT INTO `t_quest2014` VALUES ('31', 'Int', 'a_condition2_type');
INSERT INTO `t_quest2014` VALUES ('32', 'Int', 'a_condition0_index');
INSERT INTO `t_quest2014` VALUES ('33', 'Int', 'a_condition1_index');
INSERT INTO `t_quest2014` VALUES ('34', 'Int', 'a_condition2_index');
INSERT INTO `t_quest2014` VALUES ('35', 'Int', 'a_condition0_num');
INSERT INTO `t_quest2014` VALUES ('36', 'Int', 'a_condition1_num');
INSERT INTO `t_quest2014` VALUES ('37', 'Int', 'a_condition2_num');
INSERT INTO `t_quest2014` VALUES ('38', 'Int', 'a_condition0_data0');
INSERT INTO `t_quest2014` VALUES ('39', 'Int', 'a_condition0_data1');
INSERT INTO `t_quest2014` VALUES ('40', 'Int', 'a_condition0_data2');
INSERT INTO `t_quest2014` VALUES ('41', 'Int', 'a_condition0_data3');
INSERT INTO `t_quest2014` VALUES ('42', 'Int', 'a_condition1_data0');
INSERT INTO `t_quest2014` VALUES ('43', 'Int', 'a_condition1_data1');
INSERT INTO `t_quest2014` VALUES ('44', 'Int', 'a_condition1_data2');
INSERT INTO `t_quest2014` VALUES ('45', 'Int', 'a_condition1_data3');
INSERT INTO `t_quest2014` VALUES ('46', 'Int', 'a_condition2_data0');
INSERT INTO `t_quest2014` VALUES ('47', 'Int', 'a_condition2_data1');
INSERT INTO `t_quest2014` VALUES ('48', 'Int', 'a_condition2_data2');
INSERT INTO `t_quest2014` VALUES ('49', 'Int', 'a_condition2_data3');
INSERT INTO `t_quest2014` VALUES ('50', 'Int', 'a_prize_type0');
INSERT INTO `t_quest2014` VALUES ('51', 'Int', 'a_prize_type1');
INSERT INTO `t_quest2014` VALUES ('52', 'Int', 'a_prize_type2');
INSERT INTO `t_quest2014` VALUES ('53', 'Int', 'a_prize_type3');
INSERT INTO `t_quest2014` VALUES ('54', 'Int', 'a_prize_type4');
INSERT INTO `t_quest2014` VALUES ('55', 'Int', 'a_prize_index0');
INSERT INTO `t_quest2014` VALUES ('56', 'Int', 'a_prize_index1');
INSERT INTO `t_quest2014` VALUES ('57', 'Int', 'a_prize_index2');
INSERT INTO `t_quest2014` VALUES ('58', 'Int', 'a_prize_index3');
INSERT INTO `t_quest2014` VALUES ('59', 'Int', 'a_prize_index4');
INSERT INTO `t_quest2014` VALUES ('60', 'Long', 'a_prize_data0');
INSERT INTO `t_quest2014` VALUES ('61', 'Long', 'a_prize_data1');
INSERT INTO `t_quest2014` VALUES ('62', 'Long', 'a_prize_data2');
INSERT INTO `t_quest2014` VALUES ('63', 'Long', 'a_prize_data3');
INSERT INTO `t_quest2014` VALUES ('64', 'Long', 'a_prize_data4');
INSERT INTO `t_quest2014` VALUES ('65', 'Int', 'a_option_prize');
INSERT INTO `t_quest2014` VALUES ('66', 'Int', 'a_opt_prize_type0');
INSERT INTO `t_quest2014` VALUES ('67', 'Int', 'a_opt_prize_type1');
INSERT INTO `t_quest2014` VALUES ('68', 'Int', 'a_opt_prize_type2');
INSERT INTO `t_quest2014` VALUES ('69', 'Int', 'a_opt_prize_type3');
INSERT INTO `t_quest2014` VALUES ('70', 'Int', 'a_opt_prize_type4');
INSERT INTO `t_quest2014` VALUES ('71', 'Int', 'a_opt_prize_type5');
INSERT INTO `t_quest2014` VALUES ('72', 'Int', 'a_opt_prize_type6');
INSERT INTO `t_quest2014` VALUES ('73', 'Int', 'a_opt_prize_index0');
INSERT INTO `t_quest2014` VALUES ('74', 'Int', 'a_opt_prize_index1');
INSERT INTO `t_quest2014` VALUES ('75', 'Int', 'a_opt_prize_index2');
INSERT INTO `t_quest2014` VALUES ('76', 'Int', 'a_opt_prize_index3');
INSERT INTO `t_quest2014` VALUES ('77', 'Int', 'a_opt_prize_index4');
INSERT INTO `t_quest2014` VALUES ('78', 'Int', 'a_opt_prize_index5');
INSERT INTO `t_quest2014` VALUES ('79', 'Int', 'a_opt_prize_index6');
INSERT INTO `t_quest2014` VALUES ('80', 'Int', 'a_opt_prize_data0');
INSERT INTO `t_quest2014` VALUES ('81', 'Int', 'a_opt_prize_data1');
INSERT INTO `t_quest2014` VALUES ('82', 'Int', 'a_opt_prize_data2');
INSERT INTO `t_quest2014` VALUES ('83', 'Int', 'a_opt_prize_data3');
INSERT INTO `t_quest2014` VALUES ('84', 'Int', 'a_opt_prize_data4');
INSERT INTO `t_quest2014` VALUES ('85', 'Int', 'a_opt_prize_data5');
INSERT INTO `t_quest2014` VALUES ('86', 'Int', 'a_opt_prize_data6');
INSERT INTO `t_quest2014` VALUES ('87', 'Int', 'a_opt_prize_plus0');
INSERT INTO `t_quest2014` VALUES ('88', 'Int', 'a_opt_prize_plus1');
INSERT INTO `t_quest2014` VALUES ('89', 'Int', 'a_opt_prize_plus2');
INSERT INTO `t_quest2014` VALUES ('90', 'Int', 'a_opt_prize_plus3');
INSERT INTO `t_quest2014` VALUES ('91', 'Int', 'a_opt_prize_plus4');
INSERT INTO `t_quest2014` VALUES ('92', 'Int', 'a_opt_prize_plus5');
INSERT INTO `t_quest2014` VALUES ('93', 'Int', 'a_opt_prize_plus6');
INSERT INTO `t_quest2014` VALUES ('94', 'Int', 'a_partyscale');
INSERT INTO `t_quest2014` VALUES ('95', 'Int2', 'a_only_opt_prize');

-- ----------------------------
-- Table structure for `t_raid_object_list`
-- ----------------------------
DROP TABLE IF EXISTS `t_raid_object_list`;
CREATE TABLE `t_raid_object_list` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_table_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_raid_object_list
-- ----------------------------
INSERT INTO `t_raid_object_list` VALUES ('1', 'Int', 'a_index', null);
INSERT INTO `t_raid_object_list` VALUES ('2', 'Int', 'a_zone_num', null);
INSERT INTO `t_raid_object_list` VALUES ('3', 'Int', 'a_object', null);
INSERT INTO `t_raid_object_list` VALUES ('4', 'Int', 'a_object_index', null);
INSERT INTO `t_raid_object_list` VALUES ('5', 'String', 'a_object_name', null);

-- ----------------------------
-- Table structure for `t_rareoption`
-- ----------------------------
DROP TABLE IF EXISTS `t_rareoption`;
CREATE TABLE `t_rareoption` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_table_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_rareoption
-- ----------------------------
INSERT INTO `t_rareoption` VALUES ('1', 'Int', 'a_index', null);
INSERT INTO `t_rareoption` VALUES ('2', 'Int', 'a_grade', null);
INSERT INTO `t_rareoption` VALUES ('3', 'Int', 'a_type', null);
INSERT INTO `t_rareoption` VALUES ('4', 'Int', 'a_attack', null);
INSERT INTO `t_rareoption` VALUES ('5', 'Int', 'a_defense', null);
INSERT INTO `t_rareoption` VALUES ('6', 'Int', 'a_magic', null);
INSERT INTO `t_rareoption` VALUES ('7', 'Int', 'a_resist', null);
INSERT INTO `t_rareoption` VALUES ('8', 'Int', 'a_option_index0', null);
INSERT INTO `t_rareoption` VALUES ('9', 'Int', 'a_option_level0', null);
INSERT INTO `t_rareoption` VALUES ('10', 'Int', 'a_option_index1', null);
INSERT INTO `t_rareoption` VALUES ('11', 'Int', 'a_option_level1', null);
INSERT INTO `t_rareoption` VALUES ('12', 'Int', 'a_option_index2', null);
INSERT INTO `t_rareoption` VALUES ('13', 'Int', 'a_option_level2', null);
INSERT INTO `t_rareoption` VALUES ('14', 'Int', 'a_option_index3', null);
INSERT INTO `t_rareoption` VALUES ('15', 'Int', 'a_option_level3', null);
INSERT INTO `t_rareoption` VALUES ('16', 'Int', 'a_option_index4', null);
INSERT INTO `t_rareoption` VALUES ('17', 'Int', 'a_option_level4', null);
INSERT INTO `t_rareoption` VALUES ('18', 'Int', 'a_option_index5', null);
INSERT INTO `t_rareoption` VALUES ('19', 'Int', 'a_option_level5', null);
INSERT INTO `t_rareoption` VALUES ('20', 'Int', 'a_option_index6', null);
INSERT INTO `t_rareoption` VALUES ('21', 'Int', 'a_option_level6', null);
INSERT INTO `t_rareoption` VALUES ('22', 'Int', 'a_option_index7', null);
INSERT INTO `t_rareoption` VALUES ('23', 'Int', 'a_option_level7', null);
INSERT INTO `t_rareoption` VALUES ('24', 'Int', 'a_option_index8', null);
INSERT INTO `t_rareoption` VALUES ('25', 'Int', 'a_option_level8', null);
INSERT INTO `t_rareoption` VALUES ('26', 'Int', 'a_option_index9', null);
INSERT INTO `t_rareoption` VALUES ('27', 'Int', 'a_option_level9', null);

-- ----------------------------
-- Table structure for `t_set_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_set_item`;
CREATE TABLE `t_set_item` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_table_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_set_item
-- ----------------------------
INSERT INTO `t_set_item` VALUES ('1', 'Int', 'a_set_idx', null);
INSERT INTO `t_set_item` VALUES ('2', 'Int', 'a_job', null);
INSERT INTO `t_set_item` VALUES ('3', 'Int', 'a_option_count', null);
INSERT INTO `t_set_item` VALUES ('4', 'ExplodeInt', 'a_item_idx', '12');
INSERT INTO `t_set_item` VALUES ('5', 'ExplodeInt', 'a_wear_count', '11');
INSERT INTO `t_set_item` VALUES ('6', 'ExplodeInt', 'a_option_type', '11');
INSERT INTO `t_set_item` VALUES ('7', 'Explodeint', 'a_option_idx', '11');
INSERT INTO `t_set_item` VALUES ('8', 'ExplodeInt', 'a_option_level', '11');

-- ----------------------------
-- Table structure for `t_shop`
-- ----------------------------
DROP TABLE IF EXISTS `t_shop`;
CREATE TABLE `t_shop` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_shop
-- ----------------------------
INSERT INTO `t_shop` VALUES ('1', 'Int', 'a_keeper_idx');
INSERT INTO `t_shop` VALUES ('2', 'String', 'a_name');
INSERT INTO `t_shop` VALUES ('3', 'Int', 'a_sell_rate');
INSERT INTO `t_shop` VALUES ('4', 'Int', 'a_buy_rate');

-- ----------------------------
-- Table structure for `t_shopitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_shopitem`;
CREATE TABLE `t_shopitem` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_shopitem
-- ----------------------------
INSERT INTO `t_shopitem` VALUES ('1', 'Int', 'itemindex');

-- ----------------------------
-- Table structure for `t_skill`
-- ----------------------------
DROP TABLE IF EXISTS `t_skill`;
CREATE TABLE `t_skill` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_skill
-- ----------------------------
INSERT INTO `t_skill` VALUES ('1', 'Int', 'a_index', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('2', 'Int', 'a_job', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('3', 'Int', 'a_job2', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('4', 'Int', 'a_apet_index', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('5', 'Byte', 'a_type', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('8', 'Int', 'a_flag', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('9', 'Int', 'a_sorcerer_flag', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('11', 'Byte', 'a_maxLevel', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('12', 'Float', 'a_appRange', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('13', 'Float', 'a_fireRange', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('14', 'Float', 'a_fireRange2', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('15', 'Byte', 'a_targetType', 'binaryReader.ReadByte');
INSERT INTO `t_skill` VALUES ('16', 'Int', 'a_useState', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('17', 'Int', 'a_useWeaponType0', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('18', 'Int', 'a_useWeaponType1', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('19', 'Int', 'a_useMagicIndex1', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('20', 'Byte', 'a_useMagicLevel1', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('21', 'Int', 'a_useMagicIndex2', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('22', 'Byte', 'a_useMagicLevel2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('23', 'Int', 'a_useMagicIndex3', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('24', 'Byte', 'a_useMagicLevel3', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('25', 'Int', 'a_soul_consum', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('26', 'Int', 'a_appState', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('27', 'Int', 'a_readyTime', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('28', 'Int', 'a_stillTime', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('29', 'Int', 'a_fireTime', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('30', 'Int', 'a_reuseTime', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('31', 'String', 'a_cd_ra', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('32', 'String', 'a_cd_re', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('33', 'String', 'a_cd_sa', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('34', 'String', 'a_cd_fa', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('35', 'String', 'a_cd_fe0', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('36', 'String', 'a_cd_fe1', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('37', 'String', 'a_cd_fe2', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('38', 'Byte', 'a_cd_fot', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('39', 'Float', 'a_cd_fos', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('40', 'Float', 'a_cd_ox', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('41', 'Float', 'a_cd_oz', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('42', 'Float', 'a_cd_oh', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('43', 'Byte', 'a_cd_oc', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('44', 'Byte', 'a_cd_fdc', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('45', 'Float', 'a_cd_fd0', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('46', 'Float', 'a_cd_fd1', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('47', 'Float', 'a_cd_fd2', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('48', 'Float', 'a_cd_fd3', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('49', 'Float', 'a_cd_dd', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('50', 'String', 'a_cd_ra2', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('51', 'String', 'a_cd_re2', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('52', 'String', 'a_cd_sa2', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('53', 'String', 'a_cd_fa2', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('54', 'String', 'a_cd_fe3', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('55', 'String', 'a_cd_fe4', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('56', 'String', 'a_cd_fe5', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('57', 'Byte', 'a_cd_fot2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('100', 'Float', 'a_cd_fos2', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('105', 'Float', 'a_cd_ox2', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('110', 'Float', 'a_cd_oz2', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('115', 'Float', 'a_cd_oh2', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('120', 'Byte', 'a_cd_oc2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('125', 'Byte', 'a_cd_fdc2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill` VALUES ('130', 'Float', 'a_cd_fd4', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('135', 'Float', 'a_cd_fd5', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('140', 'Float', 'a_cd_fd6', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('150', 'Float', 'a_cd_fd7', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('160', 'Float', 'a_cd_dd2', 'binaryReader.ReadSingle();');
INSERT INTO `t_skill` VALUES ('170', 'String', 'a_cd_fe_after', 'asciiEncoding.GetString(binaryReader.ReadBytes(binaryReader.ReadInt32()));');
INSERT INTO `t_skill` VALUES ('180', 'Int', 'a_client_icon_texid', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('190', 'Int', 'a_client_icon_row', 'binaryWriter.Write(int.Parse(  ));');
INSERT INTO `t_skill` VALUES ('200', 'Int', 'a_client_icon_col', 'binaryWriter.Write(int.Parse(  ));');

-- ----------------------------
-- Table structure for `t_skill_level`
-- ----------------------------
DROP TABLE IF EXISTS `t_skill_level`;
CREATE TABLE `t_skill_level` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_skill_level
-- ----------------------------
INSERT INTO `t_skill_level` VALUES ('1', 'Int', 'a_needHP', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('2', 'Int', 'a_needMP', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('3', 'Int', 'a_needGP', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('4', 'Int', 'a_durtime', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('5', 'Int', 'a_dummypower', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('8', 'Int', 'a_needItemIndex1', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('9', 'Int', 'a_needItemCount1', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('10', 'Int', 'a_needItemIndex2', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('11', 'Int', 'a_needItemCount2', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('12', 'Int', 'a_learnLevel', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('13', 'Int', 'a_learnSP', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('14', 'Int', 'a_learnSkillIndex1', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('15', 'Byte', 'a_learnSkillLevel1', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('16', 'Int', 'a_learnSkillIndex2', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('17', 'Byte', 'a_learnSkillLevel2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('18', 'Int', 'a_learnSkillIndex3', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('19', 'Byte', 'a_learnSkillLevel3', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('20', 'Int', 'a_learnItemIndex1', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('21', 'Int', 'a_learnItemCount1', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('22', 'Int', 'a_learnItemIndex2', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('23', 'Int', 'a_learnItemCount2', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('24', 'Int', 'a_learnItemIndex3', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('25', 'Int', 'a_learnItemCount3', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('26', 'Int', 'a_learnstr', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('27', 'Int', 'a_learndex', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('28', 'Int', 'a_learnint', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('29', 'Int', 'a_learncon', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('30', 'Int', 'a_appMagicIndex1', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('31', 'Byte', 'a_appMagicLevel1', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('32', 'Int', 'a_appMagicIndex2', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('33', 'Byte', 'a_appMagicLevel2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('34', 'Int', 'a_appMagicIndex3', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('35', 'Byte', 'a_appMagicLevel3', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('36', 'Int', 'a_magicIndex1', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('37', 'Byte', 'a_magicLevel1', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('38', 'Int', 'a_magicIndex2', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('39', 'Byte', 'a_magicLevel2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('40', 'Int', 'a_magicIndex3', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('41', 'Byte', 'a_magicLevel3', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('42', 'Int', 'a_learnGP', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('43', 'Byte', 'a_appMagicLevel2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('44', 'Byte', 'a_appMagicLevel2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('45', 'Byte', 'a_appMagicLevel2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('46', 'Byte', 'a_appMagicLevel2', 'binaryReader.ReadByte();');
INSERT INTO `t_skill_level` VALUES ('47', 'Int', 'a_targetNum', 'binaryReader.ReadInt32();');
INSERT INTO `t_skill_level` VALUES ('48', 'Int', 'a_index', 'binaryReader.ReadInt32();');

-- ----------------------------
-- Table structure for `t_special_skill`
-- ----------------------------
DROP TABLE IF EXISTS `t_special_skill`;
CREATE TABLE `t_special_skill` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  `a_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_special_skill
-- ----------------------------
INSERT INTO `t_special_skill` VALUES ('1', 'Int', 'a_index', null);
INSERT INTO `t_special_skill` VALUES ('2', 'Int', 'a_type', null);
INSERT INTO `t_special_skill` VALUES ('3', 'Int', 'a_max_level', null);
INSERT INTO `t_special_skill` VALUES ('4', 'Int', 'a_preference', '');
INSERT INTO `t_special_skill` VALUES ('5', 'Int', 'a_level0_need_level', null);
INSERT INTO `t_special_skill` VALUES ('8', 'Int', 'a_level0_need_sp', null);
INSERT INTO `t_special_skill` VALUES ('9', 'Int', 'a_level1_need_level', null);
INSERT INTO `t_special_skill` VALUES ('10', 'Int', 'a_level1_need_sp', null);
INSERT INTO `t_special_skill` VALUES ('11', 'Int', 'a_level2_need_level', null);
INSERT INTO `t_special_skill` VALUES ('12', 'Int', 'a_level2_need_sp', null);
INSERT INTO `t_special_skill` VALUES ('13', 'Int', 'a_level3_need_level', null);
INSERT INTO `t_special_skill` VALUES ('14', 'Int', 'a_level3_need_sp', null);
INSERT INTO `t_special_skill` VALUES ('15', 'Int', 'a_level4_need_level', null);
INSERT INTO `t_special_skill` VALUES ('16', 'Int', 'a_level4_need_sp', null);
INSERT INTO `t_special_skill` VALUES ('17', 'Int', 'a_need_sskill', null);
INSERT INTO `t_special_skill` VALUES ('18', 'Int', 'a_need_sskill_level', null);
INSERT INTO `t_special_skill` VALUES ('19', 'Int', 'a_texture_id', null);
INSERT INTO `t_special_skill` VALUES ('20', 'Int', 'a_texture_row', null);
INSERT INTO `t_special_skill` VALUES ('21', 'Int', 'a_texture_col', null);

-- ----------------------------
-- Table structure for `t_straction`
-- ----------------------------
DROP TABLE IF EXISTS `t_straction`;
CREATE TABLE `t_straction` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_straction
-- ----------------------------
INSERT INTO `t_straction` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_straction` VALUES ('2', 'String', 'a_name_usa');
INSERT INTO `t_straction` VALUES ('3', 'String', 'a_client_description_usa');

-- ----------------------------
-- Table structure for `t_straffinity`
-- ----------------------------
DROP TABLE IF EXISTS `t_straffinity`;
CREATE TABLE `t_straffinity` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_straffinity
-- ----------------------------
INSERT INTO `t_straffinity` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_straffinity` VALUES ('2', 'String', 'a_name_usa');

-- ----------------------------
-- Table structure for `t_strclient`
-- ----------------------------
DROP TABLE IF EXISTS `t_strclient`;
CREATE TABLE `t_strclient` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strclient
-- ----------------------------
INSERT INTO `t_strclient` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_strclient` VALUES ('2', 'String', 'a_string');

-- ----------------------------
-- Table structure for `t_strcombo`
-- ----------------------------
DROP TABLE IF EXISTS `t_strcombo`;
CREATE TABLE `t_strcombo` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strcombo
-- ----------------------------
INSERT INTO `t_strcombo` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_strcombo` VALUES ('2', 'String', 'a_name_usa');

-- ----------------------------
-- Table structure for `t_strhelp`
-- ----------------------------
DROP TABLE IF EXISTS `t_strhelp`;
CREATE TABLE `t_strhelp` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strhelp
-- ----------------------------
INSERT INTO `t_strhelp` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_strhelp` VALUES ('2', 'String', 'a_name_usa');
INSERT INTO `t_strhelp` VALUES ('3', 'String', 'a_client_description_usa');

-- ----------------------------
-- Table structure for `t_stritem`
-- ----------------------------
DROP TABLE IF EXISTS `t_stritem`;
CREATE TABLE `t_stritem` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_stritem
-- ----------------------------
INSERT INTO `t_stritem` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_stritem` VALUES ('2', 'String', 'a_name');
INSERT INTO `t_stritem` VALUES ('3', 'String', 'a_descr');

-- ----------------------------
-- Table structure for `t_stritemcollection`
-- ----------------------------
DROP TABLE IF EXISTS `t_stritemcollection`;
CREATE TABLE `t_stritemcollection` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_stritemcollection
-- ----------------------------
INSERT INTO `t_stritemcollection` VALUES ('1', 'Int', 'a_theme');
INSERT INTO `t_stritemcollection` VALUES ('2', 'String', 'a_theme_string');
INSERT INTO `t_stritemcollection` VALUES ('3', 'String', 'a_desc_string');

-- ----------------------------
-- Table structure for `t_strnpchelp`
-- ----------------------------
DROP TABLE IF EXISTS `t_strnpchelp`;
CREATE TABLE `t_strnpchelp` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strnpchelp
-- ----------------------------
INSERT INTO `t_strnpchelp` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_strnpchelp` VALUES ('2', 'String', 'a_name_usa');
INSERT INTO `t_strnpchelp` VALUES ('3', 'String', 'a_descr_usa');

-- ----------------------------
-- Table structure for `t_strnpcname`
-- ----------------------------
DROP TABLE IF EXISTS `t_strnpcname`;
CREATE TABLE `t_strnpcname` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strnpcname
-- ----------------------------
INSERT INTO `t_strnpcname` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_strnpcname` VALUES ('2', 'String', 'a_name');
INSERT INTO `t_strnpcname` VALUES ('3', 'String', 'a_descr');

-- ----------------------------
-- Table structure for `t_strnpcshop`
-- ----------------------------
DROP TABLE IF EXISTS `t_strnpcshop`;
CREATE TABLE `t_strnpcshop` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strnpcshop
-- ----------------------------
INSERT INTO `t_strnpcshop` VALUES ('1', 'Int', 'a_keeper_idx');
INSERT INTO `t_strnpcshop` VALUES ('2', 'String', 'a_name');

-- ----------------------------
-- Table structure for `t_stroption`
-- ----------------------------
DROP TABLE IF EXISTS `t_stroption`;
CREATE TABLE `t_stroption` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_stroption
-- ----------------------------
INSERT INTO `t_stroption` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_stroption` VALUES ('2', 'String', 'a_name_usa');

-- ----------------------------
-- Table structure for `t_strquest`
-- ----------------------------
DROP TABLE IF EXISTS `t_strquest`;
CREATE TABLE `t_strquest` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strquest
-- ----------------------------
INSERT INTO `t_strquest` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_strquest` VALUES ('2', 'String', 'a_name');
INSERT INTO `t_strquest` VALUES ('3', 'String', 'a_desc_usa');
INSERT INTO `t_strquest` VALUES ('9', 'String', 'a_desc2_usa');
INSERT INTO `t_strquest` VALUES ('10', 'String', 'a_desc3_usa');

-- ----------------------------
-- Table structure for `t_strrareoption`
-- ----------------------------
DROP TABLE IF EXISTS `t_strrareoption`;
CREATE TABLE `t_strrareoption` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strrareoption
-- ----------------------------
INSERT INTO `t_strrareoption` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_strrareoption` VALUES ('2', 'String', 'a_prefix_usa');

-- ----------------------------
-- Table structure for `t_strsetitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_strsetitem`;
CREATE TABLE `t_strsetitem` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strsetitem
-- ----------------------------
INSERT INTO `t_strsetitem` VALUES ('1', 'Int', 'a_set_idx');
INSERT INTO `t_strsetitem` VALUES ('2', 'String', 'a_set_name_usa');

-- ----------------------------
-- Table structure for `t_strskill`
-- ----------------------------
DROP TABLE IF EXISTS `t_strskill`;
CREATE TABLE `t_strskill` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strskill
-- ----------------------------
INSERT INTO `t_strskill` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_strskill` VALUES ('2', 'String', 'a_name');
INSERT INTO `t_strskill` VALUES ('3', 'String', 'a_client_description');
INSERT INTO `t_strskill` VALUES ('9', 'String', 'a_client_tooltip');

-- ----------------------------
-- Table structure for `t_strsskill`
-- ----------------------------
DROP TABLE IF EXISTS `t_strsskill`;
CREATE TABLE `t_strsskill` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_strsskill
-- ----------------------------
INSERT INTO `t_strsskill` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_strsskill` VALUES ('2', 'String', 'a_name_usa');
INSERT INTO `t_strsskill` VALUES ('3', 'String', 'a_desc_usa');

-- ----------------------------
-- Table structure for `t_title`
-- ----------------------------
DROP TABLE IF EXISTS `t_title`;
CREATE TABLE `t_title` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_title
-- ----------------------------
INSERT INTO `t_title` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_title` VALUES ('2', 'Byte', 'a_enable');
INSERT INTO `t_title` VALUES ('3', 'StringLength64', 'a_effect_name');
INSERT INTO `t_title` VALUES ('4', 'StringLength64', 'a_attack');
INSERT INTO `t_title` VALUES ('5', 'StringLength64', 'a_damage');
INSERT INTO `t_title` VALUES ('8', 'Int', 'a_color');
INSERT INTO `t_title` VALUES ('9', 'Int', 'a_bgcolor');
INSERT INTO `t_title` VALUES ('10', 'Int', 'a_option_index0');
INSERT INTO `t_title` VALUES ('11', 'Int', 'a_option_index1');
INSERT INTO `t_title` VALUES ('12', 'Int', 'a_option_index2');
INSERT INTO `t_title` VALUES ('13', 'Int', 'a_option_index3');
INSERT INTO `t_title` VALUES ('14', 'Int', 'a_option_index4');
INSERT INTO `t_title` VALUES ('15', 'Byte', 'a_option_level0');
INSERT INTO `t_title` VALUES ('16', 'Byte', 'a_option_level1');
INSERT INTO `t_title` VALUES ('17', 'Byte', 'a_option_level2');
INSERT INTO `t_title` VALUES ('18', 'Byte', 'a_option_level3');
INSERT INTO `t_title` VALUES ('19', 'Byte', 'a_option_level4');
INSERT INTO `t_title` VALUES ('20', 'Int', 'a_item_index');

-- ----------------------------
-- Table structure for `t_zoneflag`
-- ----------------------------
DROP TABLE IF EXISTS `t_zoneflag`;
CREATE TABLE `t_zoneflag` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(255) DEFAULT NULL,
  `a_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_zoneflag
-- ----------------------------
INSERT INTO `t_zoneflag` VALUES ('1', 'Int', 'a_index');
INSERT INTO `t_zoneflag` VALUES ('2', 'Long', 'a_flag');
INSERT INTO `t_zoneflag` VALUES ('3', 'Long', 'a_extra_flag');
