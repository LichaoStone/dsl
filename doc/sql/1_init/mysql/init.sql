/*
Navicat MySQL Data Transfer

Source Server         : 10.110.1.178
Source Server Version : 50547
Source Host           : 10.110.1.178:3306
Source Database       : lambo

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-04-15 09:47:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `BASE_RULE`
-- ----------------------------
DROP TABLE IF EXISTS `BASE_RULE`;
CREATE TABLE `BASE_RULE` (
  `RULE_ID` varchar(30) NOT NULL COMMENT '规则ID',
  `COM_ID` varchar(30) NOT NULL COMMENT '公司ID',
  `RULE_VALUE` varchar(60) NOT NULL COMMENT '规则值',
  `RULE_DESC` varchar(255) DEFAULT NULL COMMENT '规则描述',
  `REF_TYPE` varchar(30) DEFAULT NULL COMMENT '引用类型',
  `REF_ID` varchar(30) NOT NULL DEFAULT 'N' COMMENT '引用对象',
  PRIMARY KEY (`RULE_ID`,`COM_ID`,`REF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of BASE_RULE
-- ----------------------------

-- ----------------------------
-- Table structure for `DATA_FOR_TEST`
-- ----------------------------
DROP TABLE IF EXISTS `DATA_FOR_TEST`;
CREATE TABLE `DATA_FOR_TEST` (
  `USER_ID` varchar(50) NOT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `COM_NAME` varchar(200) DEFAULT NULL,
  `DPT_NAME` varchar(200) DEFAULT NULL,
  `CREATE_TIME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of DATA_FOR_TEST
-- ----------------------------
INSERT INTO `DATA_FOR_TEST` VALUES ('00000001', '肖建国', '济南市烟草专卖局(公司)', '济南市营销中心', '20130316 17:10:42');
INSERT INTO `DATA_FOR_TEST` VALUES ('00000111', 'khjl', '山东省烟草专卖局(公司)', '计划处', '20130425 14:47:44');
INSERT INTO `DATA_FOR_TEST` VALUES ('00001', 'testAAA', '山东省烟草专卖局(公司)', '计划处', '20130221 13:18:47');
INSERT INTO `DATA_FOR_TEST` VALUES ('0002222', 'zhangzh', '济南市烟草专卖局(公司)', '历下区送货部', '20130321 13:56:25');
INSERT INTO `DATA_FOR_TEST` VALUES ('003D02', '小刀', '济南市烟草专卖局(公司)', '高新区送货部', '20140715 15:17:40');
INSERT INTO `DATA_FOR_TEST` VALUES ('003D03', '小刀测试', '济南市烟草专卖局(公司)', '高新区送货部', '20140715 15:31:07');
INSERT INTO `DATA_FOR_TEST` VALUES ('003D04', '小刀测试3', '济南市烟草专卖局(公司)', '高新区送货部', '20140715 15:34:50');
INSERT INTO `DATA_FOR_TEST` VALUES ('003D05', '牡丹江小刀', '济南市烟草专卖局(公司)', '高新区送货部', '20140715 15:41:54');
INSERT INTO `DATA_FOR_TEST` VALUES ('020000101', '测试PUB_STRU', '济南市烟草专卖局(公司)', '济南卷烟配送中心', '20140304 08:50:44');
INSERT INTO `DATA_FOR_TEST` VALUES ('100000100011', '客户经理', '济南市烟草专卖局(公司)', '济南市营销中心', '20130425 13:44:52');
INSERT INTO `DATA_FOR_TEST` VALUES ('10111980101', '张无忌', '济南市市中区烟草专卖局（公司）', '专卖科', '20140523 11:34:02');
INSERT INTO `DATA_FOR_TEST` VALUES ('103701010120102', 'wanger', '济南市烟草专卖局(公司)', '济南市采供部', '20140507 09:07:27');
INSERT INTO `DATA_FOR_TEST` VALUES ('1037010101203', '肖建国', '济南市烟草专卖局(公司)', '济南市营销中心', '20130813 09:08:06');
INSERT INTO `DATA_FOR_TEST` VALUES ('1037010101207', '李丽', '济南市烟草专卖局(公司)', '济南市营销中心', '20140616 14:25:29');
INSERT INTO `DATA_FOR_TEST` VALUES ('1037010101208', '张霞', '济南市烟草专卖局(公司)', '济南市营销中心', '20140616 15:07:13');
INSERT INTO `DATA_FOR_TEST` VALUES ('1037010101209', '董栋', '济南市烟草专卖局(公司)', '济南市营销中心', '20140616 15:08:47');
INSERT INTO `DATA_FOR_TEST` VALUES ('1037010120102', '特别丑', '济南市烟草专卖局(公司)', '济南市信息中心', '20130723 09:09:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('1037010120103', '测试023', '济南市烟草专卖局(公司)', '济南市信息中心', '20130723 23:35:39');
INSERT INTO `DATA_FOR_TEST` VALUES ('10370101201103', '爱的发的', '山东省烟草专卖局(公司)', '计划处', '20140217 11:42:11');
INSERT INTO `DATA_FOR_TEST` VALUES ('10370101201105', '李四', '山东省烟草专卖局(公司)', '计划处', '20141204 00:19:01');
INSERT INTO `DATA_FOR_TEST` VALUES ('103701012011061', 'RIMADMINP', '山东省烟草专卖局(公司)', '计划处', '20150814 16:29:47');
INSERT INTO `DATA_FOR_TEST` VALUES ('10370101202902', '王洁', '山东省烟草专卖局(公司)', '内管处', '20151117 16:35:21');
INSERT INTO `DATA_FOR_TEST` VALUES ('1037010401010102', 'weijingjie', '泰安市烟草(专卖局)', '泰安物流中心', '20130726 10:17:13');
INSERT INTO `DATA_FOR_TEST` VALUES ('10370104010102', 'xiaozhou2', '济南烟草历下区公司(专卖局)', '内管派驻组', '20130717 09:54:11');
INSERT INTO `DATA_FOR_TEST` VALUES ('103701040102', '小周3', '办公室（外事办公室）', '办公室（外事办公室）', '20130717 10:24:15');
INSERT INTO `DATA_FOR_TEST` VALUES ('103701040102122', '1213', '泰安市烟草(专卖局)', '泰安物流中心', '20131220 11:52:32');
INSERT INTO `DATA_FOR_TEST` VALUES ('1037010401021232', 'test4545', '办公室（外事办公室）', '办公室（外事办公室）', '20131221 15:52:46');
INSERT INTO `DATA_FOR_TEST` VALUES ('1037010401021233', 'test545', '办公室（外事办公室）', '办公室（外事办公室）', '20131221 16:02:42');
INSERT INTO `DATA_FOR_TEST` VALUES ('10370104010212341', '程辉', '办公室（外事办公室）', '办公室（外事办公室）', '20131221 16:04:36');
INSERT INTO `DATA_FOR_TEST` VALUES ('103701040102123421', '程辉1', '市局专卖科', '市局专卖科', '20131221 16:08:05');
INSERT INTO `DATA_FOR_TEST` VALUES ('103701040102123422', 'test0001', '办公室（外事办公室）', '办公室（外事办公室）', '20131223 09:02:52');
INSERT INTO `DATA_FOR_TEST` VALUES ('1062090400000015', '甘肃酒泉客户经理', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20130608 13:57:00');
INSERT INTO `DATA_FOR_TEST` VALUES ('1131111341', 'xiaoli', '济南历城区烟草专卖局（公司）', '稽查一队', '20130409 11:00:09');
INSERT INTO `DATA_FOR_TEST` VALUES ('115107020103', '大黄蜂', '济南历城区烟草专卖局（公司）', '专卖科', '20130626 15:13:01');
INSERT INTO `DATA_FOR_TEST` VALUES ('11520200010102', '外包测试', '济南市烟草专卖局(公司)', '外包单位', '20150123 17:23:22');
INSERT INTO `DATA_FOR_TEST` VALUES ('116209010102', '张三', '济南市烟草专卖局(公司)', '市局领导', '20140806 16:29:40');
INSERT INTO `DATA_FOR_TEST` VALUES ('123', '123', '重庆市万州区烟草专卖局', '万州营销部', '20150827 19:24:14');
INSERT INTO `DATA_FOR_TEST` VALUES ('20130306', '测小试1', '济南市烟草专卖局(公司)', '济南市信息中心', '20130306 23:55:26');
INSERT INTO `DATA_FOR_TEST` VALUES ('213', '123', '济南市烟草专卖局(公司)', '济南卷烟配送中心', '20130515 09:58:15');
INSERT INTO `DATA_FOR_TEST` VALUES ('213000000101', '测试市管员', '泰安市烟草(专卖局)', '泰安物流中心', '20130813 13:25:20');
INSERT INTO `DATA_FOR_TEST` VALUES ('213000000201', '历下小王', '济南烟草历下区公司(专卖局)', '高新片区', '20150121 23:18:17');
INSERT INTO `DATA_FOR_TEST` VALUES ('216000000101', '郑斌', '市局专卖科', '市局专卖科', '20130723 14:21:09');
INSERT INTO `DATA_FOR_TEST` VALUES ('216000000103', 'zmmgr', '市局专卖科', '市局专卖科', '20130816 18:07:31');
INSERT INTO `DATA_FOR_TEST` VALUES ('2222222', '22222', '办公室（外事办公室）', '办公室（外事办公室）', '20130322 09:52:12');
INSERT INTO `DATA_FOR_TEST` VALUES ('23', '刘辉龙', '济南市烟草专卖局(公司)', '济南卷烟配送中心', '20130322 09:51:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('231001', '营销中心', '济南市烟草专卖局(公司)', '济南市营销中心', '20130204 15:56:26');
INSERT INTO `DATA_FOR_TEST` VALUES ('631300002050110', 'jl', '铜川市烟草专卖局(公司)', '送货部', '20151121 15:56:04');
INSERT INTO `DATA_FOR_TEST` VALUES ('666', '66', '济南市烟草专卖局(公司)', '济南市营销中心', '20150129 21:53:25');
INSERT INTO `DATA_FOR_TEST` VALUES ('7799001', '陈晓东', '济南市烟草专卖局(公司)', '济南市营销中心', '20130118 13:52:53');
INSERT INTO `DATA_FOR_TEST` VALUES ('800001', '物X流', '济南市烟草专卖局(公司)', '济南卷烟配送中心', '20130130 10:29:00');
INSERT INTO `DATA_FOR_TEST` VALUES ('987653205', '程辉2', '市局专卖科', '市局专卖科', '20131221 16:09:21');
INSERT INTO `DATA_FOR_TEST` VALUES ('987653208', 'zhangfeng', '济南历城区烟草专卖局（公司）', '稽查一队', '20140706 11:48:00');
INSERT INTO `DATA_FOR_TEST` VALUES ('9876532223', '冬雨', '济南历城区烟草专卖局（公司）', '姚家片区', '20150615 10:56:14');
INSERT INTO `DATA_FOR_TEST` VALUES ('AA', 'aa', '济南市烟草专卖局(公司)', '济南市信息中心', '20130427 15:17:19');
INSERT INTO `DATA_FOR_TEST` VALUES ('AAA', 'aaa', '办公室（外事办公室）', '办公室（外事办公室）', '20130820 12:22:44');
INSERT INTO `DATA_FOR_TEST` VALUES ('ADMIN', '考试系统管理员', '济南市烟草专卖局(公司)', '济南市营销中心', '20140616 14:27:38');
INSERT INTO `DATA_FOR_TEST` VALUES ('AJ01', '省局案件管理', '山东省烟草专卖局(公司)', '内管处', '20140416 17:27:15');
INSERT INTO `DATA_FOR_TEST` VALUES ('AJ02', '市局案件管理', '济南历城区烟草专卖局（公司）', '姚家片区', '20140416 17:29:03');
INSERT INTO `DATA_FOR_TEST` VALUES ('AJ03', '县局案件管理', '济南历城区烟草专卖局（公司）', '丁家片区', '20140416 17:30:55');
INSERT INTO `DATA_FOR_TEST` VALUES ('ANJIAN', '案件管理', '办公室（外事办公室）', '办公室（外事办公室）', '20130417 19:22:36');
INSERT INTO `DATA_FOR_TEST` VALUES ('BBB', 'bbb', '济南历城区烟草专卖局（公司）', '专卖科', '20130820 12:23:21');
INSERT INTO `DATA_FOR_TEST` VALUES ('BI', '王斌', '办公室（外事办公室）', '办公室（外事办公室）', '20130813 17:10:55');
INSERT INTO `DATA_FOR_TEST` VALUES ('BIADMIN', 'BI管理员', '山东省烟草专卖局(公司)', '内管处', '20130111 09:10:28');
INSERT INTO `DATA_FOR_TEST` VALUES ('BIMAN', 'biman', '办公室（外事办公室）', '办公室（外事办公室）', '20130813 17:17:35');
INSERT INTO `DATA_FOR_TEST` VALUES ('BIMGR', 'bi管理员', '济南市烟草专卖局(公司)', '济南市信息中心', '20130813 11:08:50');
INSERT INTO `DATA_FOR_TEST` VALUES ('BJTEST1', 'bjtest1', '办公室（外事办公室）', '办公室（外事办公室）', '20130831 19:04:47');
INSERT INTO `DATA_FOR_TEST` VALUES ('BJTEST2', 'bjtest2', '济南市烟草专卖局(公司)', '济南市采供部', '20130831 19:17:16');
INSERT INTO `DATA_FOR_TEST` VALUES ('BJYC', '北京烟草', '济南市烟草专卖局(公司)', '济南市信息中心', '20130821 16:29:27');
INSERT INTO `DATA_FOR_TEST` VALUES ('BNGKADMIN', '版纳管控用户', '济南市烟草专卖局(公司)', '济南市信息中心', '20151013 14:52:50');
INSERT INTO `DATA_FOR_TEST` VALUES ('BRANDMGR', '武X刚', '济南市烟草专卖局(公司)', '济南市采供部', '20130123 09:32:39');
INSERT INTO `DATA_FOR_TEST` VALUES ('CAIWU', '采收验收', '济南市烟草专卖局(公司)', '济南市营销中心', '20130316 17:34:27');
INSERT INTO `DATA_FOR_TEST` VALUES ('CALLMAN', '孟X波', '济南市烟草专卖局(公司)', '济南市营销中心', '20130122 14:51:55');
INSERT INTO `DATA_FOR_TEST` VALUES ('CALLMAN01', '王X东', '济南市烟草专卖局(公司)', '济南座席班组01', '20130122 12:03:35');
INSERT INTO `DATA_FOR_TEST` VALUES ('CALLMAN03', 'callman03', '济南市烟草专卖局(公司)', '济南市营销中心', '20130220 18:33:33');
INSERT INTO `DATA_FOR_TEST` VALUES ('CC', '仓储管理员', '济南市烟草专卖局(公司)', '仓储部', '20130201 14:37:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('CC2', '仓储管理员2', '济南市烟草专卖局(公司)', '仓储部', '20130202 16:49:35');
INSERT INTO `DATA_FOR_TEST` VALUES ('CCC', 'ccc', '济南历城区烟草专卖局（公司）', '专卖科', '20130820 12:23:53');
INSERT INTO `DATA_FOR_TEST` VALUES ('CESHI', '测试', '市局专卖科', '市局专卖科', '20130819 09:32:54');
INSERT INTO `DATA_FOR_TEST` VALUES ('CHXD', '陈晓东', '济南市烟草专卖局(公司)', '济南市营销中心', '20130220 18:17:36');
INSERT INTO `DATA_FOR_TEST` VALUES ('CJQ', 'cjq', '宁波市烟草物流公司', '江东区仓储部', '20151111 10:57:58');
INSERT INTO `DATA_FOR_TEST` VALUES ('CMRADMIN', 'CMR系统管理员', '陕西省烟草专卖局(公司)', '信息处', '20150421 19:47:09');
INSERT INTO `DATA_FOR_TEST` VALUES ('CQFL1', '重庆涪陵用户1', '重庆烟草物流分公司', '涪陵城区送货部', '20130731 10:03:01');
INSERT INTO `DATA_FOR_TEST` VALUES ('CQFL2', '重庆涪陵用户', '重庆烟草物流分公司', '涪陵城区送货部', '20130926 11:10:06');
INSERT INTO `DATA_FOR_TEST` VALUES ('CQFL3', '涪陵测试用户3', '重庆烟草物流分公司', '涪陵城区送货部', '20131029 17:23:55');
INSERT INTO `DATA_FOR_TEST` VALUES ('CQJBADMIN', '江北二级管控管理员', '重庆烟草物流分公司', '仓储部', '20131024 09:46:59');
INSERT INTO `DATA_FOR_TEST` VALUES ('CQSADMIN', '重庆管理员', '重庆市烟草专卖局(公司)', '重庆营销中心', '20150701 16:19:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('CQWL1', '物流公司用户', '重庆烟草物流分公司', '涪陵配送中心', '20130730 16:51:19');
INSERT INTO `DATA_FOR_TEST` VALUES ('CSC', 'csc', '济南市烟草专卖局(公司)', '济南座席班组01', '20130204 17:01:23');
INSERT INTO `DATA_FOR_TEST` VALUES ('CUSTMANAGER', '营销部客户管理员', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20130130 09:23:46');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHF', '大黄蜂', '济南历城区烟草专卖局（公司）', '专卖科', '20130627 11:31:13');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTJNADMIN', '济南市公司系统管理员', '济南市烟草专卖局(公司)', '济南市信息中心', '20150106 17:01:13');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTJNCG', '济南市公司品牌部采购员', '济南市烟草专卖局(公司)', '济南市品牌部', '20150106 15:49:42');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTJNDZJS', '济南市公司电子结算员', '济南市烟草专卖局(公司)', '办公室', '20150106 15:52:54');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTJNHYGL', '济南市公司货源管理员', '济南市烟草专卖局(公司)', '济南市采供部', '20150106 15:39:04');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTJNLCKHJL', '济南历城客户经理', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20150106 16:20:46');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTJNLCNQ', '济南历城营销部内勤', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20150106 16:18:15');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTJNPHGL', '济南市公司配货管理员', '济南市烟草专卖局(公司)', '济南市营销中心', '20150106 16:14:12');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTJNYXZXNQ', '济南市营销中心内勤', '济南市烟草专卖局(公司)', '济南市营销中心', '20150106 16:11:27');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTJNZXBZ', '济南市公司座席班长', '济南市烟草专卖局(公司)', '济南座席班组01', '20150106 15:56:20');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTJNZXY', '济南市公司座席员', '济南市烟草专卖局(公司)', '济南座席班组01', '20150106 15:58:35');
INSERT INTO `DATA_FOR_TEST` VALUES ('DHPTSDHYSH', '山东省公司货源审核', '山东省烟草专卖局(公司)', '销售处', '20150107 09:51:54');
INSERT INTO `DATA_FOR_TEST` VALUES ('DINGXIAO', '丁晓', '办公室（外事办公室）', '办公室（外事办公室）', '20130410 08:31:15');
INSERT INTO `DATA_FOR_TEST` VALUES ('DLADMIN', '指挥调度管理员', '济南市烟草专卖局(公司)', '济南市营销中心', '20140520 19:44:53');
INSERT INTO `DATA_FOR_TEST` VALUES ('DLCJY', '张岚', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20150911 11:43:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('DLWL', '大连物流', '济南市烟草专卖局(公司)', '仓储部', '20131215 12:42:21');
INSERT INTO `DATA_FOR_TEST` VALUES ('DOCTEST', 'doctest', '山东省烟草专卖局(公司)', '计划处', '20130719 13:40:59');
INSERT INTO `DATA_FOR_TEST` VALUES ('DONGJIE', '大杰', '济南市烟草专卖局(公司)', '济南市采供部', '20130529 16:04:20');
INSERT INTO `DATA_FOR_TEST` VALUES ('DONGY', '冬雨', '济南历城区烟草专卖局（公司）', '稽查一队', '20150615 11:41:29');
INSERT INTO `DATA_FOR_TEST` VALUES ('EXAMER', '董栋', '济南市烟草专卖局(公司)', '济南市营销中心', '20140616 15:31:40');
INSERT INTO `DATA_FOR_TEST` VALUES ('EXAMER1', '张建', '济南市市中区烟草专卖局（公司）', '济南市市中区营销部', '20140618 16:18:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('EXAMER2', '林峰', '济南市烟草专卖局(公司)', '济南市采供部', '20140704 17:14:46');
INSERT INTO `DATA_FOR_TEST` VALUES ('FENGSHB', '冯树柏', '济南市烟草专卖局(公司)', '济南市营销中心', '20130412 17:21:14');
INSERT INTO `DATA_FOR_TEST` VALUES ('FGSTEST', '一分公司员工', '济南市烟草专卖局(公司)', '一分公司', '20150305 15:05:45');
INSERT INTO `DATA_FOR_TEST` VALUES ('GAOXIANSHENG', '高先生', '秀山县烟草专卖局（公司）', '办公室', '20150921 11:08:57');
INSERT INTO `DATA_FOR_TEST` VALUES ('GAOZHCH', '高志超', '秀山县烟草专卖局（公司）', '办公室', '20140508 10:29:01');
INSERT INTO `DATA_FOR_TEST` VALUES ('GISTEST', 'gistest', '济南市烟草专卖局(公司)', '济南市营销中心', '20140709 09:33:32');
INSERT INTO `DATA_FOR_TEST` VALUES ('GUO', '仓库保管员', '济南市烟草专卖局(公司)', '综合部', '20141225 17:23:09');
INSERT INTO `DATA_FOR_TEST` VALUES ('GYADMIN', '贵阳物流管理员', '济南市烟草专卖局(公司)', '济南卷烟配送中心', '20150402 10:57:22');
INSERT INTO `DATA_FOR_TEST` VALUES ('HSJ', '黄少军', '济南历城区烟草专卖局（公司）', '稽查一队', '20141219 00:32:08');
INSERT INTO `DATA_FOR_TEST` VALUES ('HUANGMING', '黄明', '济南历城区烟草专卖局（公司）', '丁家片区', '20140618 16:00:06');
INSERT INTO `DATA_FOR_TEST` VALUES ('HZX', '郝兆旭', '济南市烟草专卖局(公司)', '济南市采供部', '20150413 10:25:30');
INSERT INTO `DATA_FOR_TEST` VALUES ('INVMAN', '业务库管理员', '济南市烟草专卖局(公司)', '济南市营销中心', '20130316 17:41:50');
INSERT INTO `DATA_FOR_TEST` VALUES ('ITEM01', '商品管理01', '山东省烟草专卖局(公司)', '计划处', '20130122 11:15:38');
INSERT INTO `DATA_FOR_TEST` VALUES ('ITEMMGR', '李X涛', '山东省烟草专卖局(公司)', '计划处', '20130123 09:28:40');
INSERT INTO `DATA_FOR_TEST` VALUES ('ITEMMGR01', '王X琪', '济南市烟草专卖局(公司)', '济南市采供部', '20130122 12:50:10');
INSERT INTO `DATA_FOR_TEST` VALUES ('ITSMAN', '运维管理员', '济南市烟草专卖局(公司)', '济南市信息中心', '20130822 11:11:01');
INSERT INTO `DATA_FOR_TEST` VALUES ('ITSMMGR', '运维管理员', '济南市烟草专卖局(公司)', '济南市信息中心', '20130222 14:52:41');
INSERT INTO `DATA_FOR_TEST` VALUES ('JLPLANUSER', '吉林计划处员工', '山东省烟草专卖局(公司)', '计划处', '20150615 09:56:44');
INSERT INTO `DATA_FOR_TEST` VALUES ('JLSALECENTER', '济南市营销中心', '济南市烟草专卖局(公司)', '济南市营销中心', '20130401 12:27:57');
INSERT INTO `DATA_FOR_TEST` VALUES ('JN8000002', '赵X磊', '济南市烟草专卖局(公司)', '济南市信息中心', '20130201 09:25:57');
INSERT INTO `DATA_FOR_TEST` VALUES ('JNADMIN', '济南系统管理员', '济南市烟草专卖局(公司)', '济南市信息中心', '20130122 09:50:31');
INSERT INTO `DATA_FOR_TEST` VALUES ('JNCG03', 'jncg03', '济南市烟草专卖局(公司)', '济南市采供部', '20130321 13:54:58');
INSERT INTO `DATA_FOR_TEST` VALUES ('JNECHECK', '结算平台交易对账管理员', '济南市烟草专卖局(公司)', '济南市营销中心', '20150613 10:48:17');
INSERT INTO `DATA_FOR_TEST` VALUES ('JNSALECENTER', '济南市营销中心管理员', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20130401 13:49:55');
INSERT INTO `DATA_FOR_TEST` VALUES ('JNSKSMAN001', '李健', '济南市烟草专卖局(公司)', '济南市营销中心', '20130204 18:54:36');
INSERT INTO `DATA_FOR_TEST` VALUES ('JNYXZX', '营销中心--测试', '济南市烟草专卖局(公司)', '济南市营销中心', '20131126 09:37:04');
INSERT INTO `DATA_FOR_TEST` VALUES ('KATE', '卡特琳娜', '山东省烟草专卖局(公司)', '内管处', '20140725 16:31:24');
INSERT INTO `DATA_FOR_TEST` VALUES ('LANGCHAO', 'langchao', '济南烟草历下区公司(专卖局)', '济南烟草历下区营销部文登', '20130905 15:02:14');
INSERT INTO `DATA_FOR_TEST` VALUES ('LCZMADMIN', '历城案件管理员', '办公室（外事办公室）', '办公室（外事办公室）', '20130423 16:37:52');
INSERT INTO `DATA_FOR_TEST` VALUES ('LICHENG1', '历城测试1', '泰安市烟草(专卖局)', '泰安物流中心', '20130712 14:29:49');
INSERT INTO `DATA_FOR_TEST` VALUES ('LIHAILONG', '李海龙', '济南市高新区烟草专卖局（公司）', '专卖科', '20140509 16:07:43');
INSERT INTO `DATA_FOR_TEST` VALUES ('LIJIA', '李佳', '济南市烟草专卖局(公司)', '营销一部', '20150306 09:42:49');
INSERT INTO `DATA_FOR_TEST` VALUES ('LIJIAN2', '李健2', '济南市烟草专卖局(公司)', '济南市营销中心', '20130206 01:32:27');
INSERT INTO `DATA_FOR_TEST` VALUES ('LINMU', '林木', '重庆市烟草专卖局（公司）', '计划处', '20140305 08:39:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('LINXIAOER', 'lianxiaoer', '重庆市烟草专卖局（公司）', '销售处', '20150806 13:51:06');
INSERT INTO `DATA_FOR_TEST` VALUES ('LISI', 'lisi', '山东省烟草专卖局(公司)', '内管处', '20150923 10:46:28');
INSERT INTO `DATA_FOR_TEST` VALUES ('LISI11', '李四', '云阳县烟草专卖局（公司）', '销售科', '20141014 16:36:46');
INSERT INTO `DATA_FOR_TEST` VALUES ('LITX', '李泰祥', '办公室（外事办公室）', '办公室（外事办公室）', '20130317 10:36:02');
INSERT INTO `DATA_FOR_TEST` VALUES ('LIUBA', '刘八', '济南烟草历下区公司(专卖局)', '内管派驻组', '20130807 11:07:53');
INSERT INTO `DATA_FOR_TEST` VALUES ('LIUYU', '刘宇', '耀州区烟草专卖局', '领导班子', '20151106 14:51:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('LIUYUN', '刘云', '济南历城区烟草专卖局（公司）', '专卖科', '20140616 14:57:54');
INSERT INTO `DATA_FOR_TEST` VALUES ('LSMAN', 'LSMAN', '济南市烟草专卖局(公司)', '济南卷烟配送中心', '20130222 11:46:45');
INSERT INTO `DATA_FOR_TEST` VALUES ('LSMGR01', 'LSMGR', '济南市烟草专卖局(公司)', '济南卷烟配送中心', '20130222 14:37:25');
INSERT INTO `DATA_FOR_TEST` VALUES ('LUODG', 'luodg', '泰安市烟草(专卖局)', '市局专卖科', '20150901 10:18:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('LW01', '李维', '济南市烟草专卖局(公司)', '济南市营销中心', '20130221 15:17:08');
INSERT INTO `DATA_FOR_TEST` VALUES ('LXZM', '历下专卖', '专卖科', '专卖科', '20131017 11:26:57');
INSERT INTO `DATA_FOR_TEST` VALUES ('LY_CAIJUN', '蔡军', '济南市烟草专卖局(公司)', '济南市营销中心', '20150130 17:22:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('LY_DENGW', '邓伟', '济南市烟草专卖局(公司)', '济南市营销中心', '20150130 18:39:57');
INSERT INTO `DATA_FOR_TEST` VALUES ('LY_SUJD', '苏建东', '济南市烟草专卖局(公司)', '济南市营销中心', '20150130 18:41:08');
INSERT INTO `DATA_FOR_TEST` VALUES ('MSDD', '大队长', '济南历城区烟草专卖局（公司）', '稽查一队', '20140611 09:25:54');
INSERT INTO `DATA_FOR_TEST` VALUES ('MSSGS', '师广胜', '济南历城区烟草专卖局（公司）', '历城一大队', '20141219 00:39:17');
INSERT INTO `DATA_FOR_TEST` VALUES ('MSZD', '中队长', '济南历城区烟草专卖局（公司）', '稽查一队', '20140110 09:03:15');
INSERT INTO `DATA_FOR_TEST` VALUES ('NXADMIN', '宁夏管理员', '银川市烟草公司', '银川市送货部', '20140818 15:35:11');
INSERT INTO `DATA_FOR_TEST` VALUES ('PAPERMANAGER', '张霞', '济南市烟草专卖局(公司)', '济南市营销中心', '20140616 15:11:27');
INSERT INTO `DATA_FOR_TEST` VALUES ('PIMAN', '采购员张三', '济南市烟草专卖局(公司)', '济南市采供部', '20130316 16:55:13');
INSERT INTO `DATA_FOR_TEST` VALUES ('QUXIAOSHENHE', 'quxiaoshenhe', '秀山县烟草专卖局（公司）', '办公室', '20150923 10:37:28');
INSERT INTO `DATA_FOR_TEST` VALUES ('QUXIAOSHENHE1', 'quxiaoshenhe1', '秀山县烟草专卖局（公司）', '办公室', '20150923 10:39:08');
INSERT INTO `DATA_FOR_TEST` VALUES ('REGIEUSER', '历城用户', '济南历城区烟草专卖局（公司）', '专卖科', '20150110 14:24:04');
INSERT INTO `DATA_FOR_TEST` VALUES ('RIMADMIN', 'RIM管理员', '济南市烟草专卖局(公司)', '济南市营销中心', '20130228 17:25:10');
INSERT INTO `DATA_FOR_TEST` VALUES ('RIMADMIN231', '终端（营销中心）', '济南市烟草专卖局(公司)', '济南市营销中心', '20150228 14:17:38');
INSERT INTO `DATA_FOR_TEST` VALUES ('RIMADMINP', 'RIMADMINP', '山东省烟草专卖局(公司)', '计划处', '20150814 16:39:05');
INSERT INTO `DATA_FOR_TEST` VALUES ('RISMAN', '王俊杰', '济南烟草历下区公司(专卖局)', '内管派驻组', '20130222 15:04:23');
INSERT INTO `DATA_FOR_TEST` VALUES ('RISMGR', '赵光明', '济南市烟草专卖局(公司)', '内管派驻办', '20130222 15:10:23');
INSERT INTO `DATA_FOR_TEST` VALUES ('RIS_SUNSHI', '孙十', '办公室（外事办公室）', '办公室（外事办公室）', '20130712 10:17:36');
INSERT INTO `DATA_FOR_TEST` VALUES ('RIS_ZHAOLIU', '赵六', '济南市烟草专卖局(公司)', '内管派驻办', '20130712 10:14:32');
INSERT INTO `DATA_FOR_TEST` VALUES ('RMMAN', '张世强', '办公室（外事办公室）', '办公室（外事办公室）', '20130222 15:14:33');
INSERT INTO `DATA_FOR_TEST` VALUES ('RMMGR', '赵卫国', '市局专卖科', '市局专卖科', '20130222 16:16:10');
INSERT INTO `DATA_FOR_TEST` VALUES ('SC00001', '营销中心内勤', '济南市烟草专卖局(公司)', '济南市营销中心', '20130129 15:22:12');
INSERT INTO `DATA_FOR_TEST` VALUES ('SCCUSTMANAGER', '营销中心客户管理员', '济南市烟草专卖局(公司)', '济南市营销中心', '20130129 14:51:31');
INSERT INTO `DATA_FOR_TEST` VALUES ('SCJL', '市场经理', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20130222 13:21:08');
INSERT INTO `DATA_FOR_TEST` VALUES ('SCMRADMIN', '行业监管', '山东省烟草专卖局(公司)', '销售处', '20150804 20:34:26');
INSERT INTO `DATA_FOR_TEST` VALUES ('SCMRDEMO', '行业监管', '山东省烟草专卖局(公司)', '销售处', '20151009 09:15:37');
INSERT INTO `DATA_FOR_TEST` VALUES ('SHJ', 'shj', '山东省烟草专卖局(公司)', '计划处', '20130628 20:36:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('SJ', '测试', '山东省烟草专卖局(公司)', '计划处', '20130808 18:42:06');
INSERT INTO `DATA_FOR_TEST` VALUES ('SJTEST', 'SJtest', '山东省烟草专卖局(公司)', '计划处', '20130819 16:40:23');
INSERT INTO `DATA_FOR_TEST` VALUES ('SLSMAN', '刘X江', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20130122 14:25:59');
INSERT INTO `DATA_FOR_TEST` VALUES ('SLSMAN01', '崔X阳', '办公室（外事办公室）', '办公室（外事办公室）', '20130122 11:39:46');
INSERT INTO `DATA_FOR_TEST` VALUES ('SLSMAN03', 'XX客户经理', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20130129 10:51:17');
INSERT INTO `DATA_FOR_TEST` VALUES ('SLSMAN10', '济南市公司客户经理', '济南市烟草专卖局(公司)', '仓储部', '20130206 15:37:39');
INSERT INTO `DATA_FOR_TEST` VALUES ('SLSMGR', '李健1', '济南市烟草专卖局(公司)', '济南市营销中心', '20130205 23:01:29');
INSERT INTO `DATA_FOR_TEST` VALUES ('SONGBO', '宋博', '济南历城区烟草专卖局（公司）', '专卖科', '20130317 10:45:35');
INSERT INTO `DATA_FOR_TEST` VALUES ('SONGGUOHUA', '宋国华', '山东省烟草专卖局(公司)', '计划处', '20130729 08:51:43');
INSERT INTO `DATA_FOR_TEST` VALUES ('SS', 'ss', '泰安市烟草(专卖局)', '市场部', '20150709 11:01:53');
INSERT INTO `DATA_FOR_TEST` VALUES ('SSS', 'sss', '山东省烟草专卖局(公司)', '内管处', '20130820 10:57:47');
INSERT INTO `DATA_FOR_TEST` VALUES ('SSSSUNSE', '孙福森', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20130327 11:20:00');
INSERT INTO `DATA_FOR_TEST` VALUES ('SUNFS', '孙福森', '济南市烟草专卖局(公司)', '济南市营销中心', '20150228 15:20:37');
INSERT INTO `DATA_FOR_TEST` VALUES ('SUPERADMIN', 'SUPERADMIN', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20100120         ');
INSERT INTO `DATA_FOR_TEST` VALUES ('SUPPLYADMIN', '囍之郎', '济南市烟草专卖局(公司)', '济南市采供部', '20130129 15:32:01');
INSERT INTO `DATA_FOR_TEST` VALUES ('SY', '十一', '济南烟草历下区公司(专卖局)', '内管派驻组', '20130808 13:50:21');
INSERT INTO `DATA_FOR_TEST` VALUES ('SYSADMIN', 'SYSADMIN', '山东省烟草专卖局(公司)', '山东省烟草专卖局(公司)', '20100120         ');
INSERT INTO `DATA_FOR_TEST` VALUES ('TAOCHUN', '测试', '济南市烟草专卖局(公司)', '济南市营销中心', '20130222 11:21:42');
INSERT INTO `DATA_FOR_TEST` VALUES ('TAWL', '泰安管理员', '泰安市烟草(专卖局)', '综合部', '20141231 10:09:49');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSADMIN', '铜川管理员', '铜川市烟草专卖局(公司)', '信息中心', '20130305 16:07:59');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSANLIANG', '安亮', '铜川市直属分局', '王益区（城关片区）', '20130411 14:41:16');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSBAILM', '白利民', '宜君县烟草专卖局', '城关片区', '20131210 11:23:18');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSBAIXL', '白晓龙', '铜川市烟草专卖局(公司)', '物流中心', '20130415 16:23:02');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSBAIYS', '白雨松', '铜川市直属分局', '王益区（二马路）', '20130411 14:39:20');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSCHENAL', '陈爱玲', '宜君县烟草专卖局', '宜君县烟草专卖局稽查大队', '20130411 11:04:00');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSCHENBIN', '陈斌', '耀州区烟草专卖局', '耀州区烟草专卖局稽查大队', '20130411 11:18:37');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSCHENJUN', '陈军', '铜川市烟草专卖局(公司)', '专卖科（稽查支队）', '20130411 14:54:22');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSCHIXK', '赤新奎', '铜川市烟草专卖局(公司)', '物流中心', '20130409 16:50:43');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSDONGQF', '董秋芳', '铜川市烟草专卖局(公司)', '耀州营销部', '20130408 09:49:40');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSFANCC', '范聪聪', '铜川市烟草专卖局(公司)', '耀州营销部', '20130410 18:53:49');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSFANRONG', '樊荣', '铜川市烟草专卖局(公司)', '送货部', '20130421 13:47:51');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSFENGXL ', '冯晓丽', '铜川市直属分局', '专卖管理股', '20130409 21:42:59');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSGAOQI', '高琦', '铜川市烟草专卖局(公司)', '专卖科（稽查支队）', '20130411 14:55:13');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSGUANXB', '关小博', '耀州区烟草专卖局', '耀州区烟草专卖局', '20130418 21:56:40');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSGUOJQ', '郭建庆', '铜川市烟草专卖局(公司)', '客户服务部', '20130415 20:23:44');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSGYCX', '铜川工业查询', '铜川市烟草专卖局(公司)', '铜川营销中心', '20130724 11:27:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSHEPING', '贺平', '铜川市烟草专卖局(公司)', '专卖科（稽查支队）', '20130411 16:53:31');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSHOUYF', '候永峰', '耀州区烟草专卖局', '耀州区烟草专卖局稽查大队', '20130411 11:20:19');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSHUIXL', '惠小兰', '铜川市烟草专卖局(公司)', '内管派出办', '20130426 11:58:21');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSJIANYF', '菅永飞', '铜川市直属分局', '专卖管理股', '20130411 14:38:41');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSJIAWQ', '贾文庆', '铜川市烟草专卖局(公司)', '专卖科（稽查支队）', '20130411 16:48:01');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSJIESUAN', '营销中心', '铜川市烟草专卖局(公司)', '铜川营销中心', '20150613 10:37:17');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSJINXIN', '晋鑫', '铜川市烟草专卖局(公司)', '采供部', '20130408 10:28:07');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLANGCHAO', '浪潮铜川', '铜川市烟草专卖局(公司)', '信息中心', '20130524 16:36:44');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLIHX', '李红霞', '铜川市烟草专卖局(公司)', '宜君营销部', '20130408 10:08:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLIJCH', '李进川', '耀州区烟草专卖局', '耀州营销部', '20130410 18:59:20');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLIJING', '李敬', '铜川市烟草专卖局(公司)', '耀州营销部', '20130408 09:58:52');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLIML', '李美玲', '铜川市直属分局', '城区营销部', '20130410 19:11:55');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLIML1', '栗梦龙', '耀州区烟草专卖局', '耀州区烟草专卖局稽查大队', '20130411 11:49:13');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLIUWEI', '刘伟', '铜川市烟草专卖局(公司)', '专卖科（稽查支队）', '20130411 14:56:16');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLIUXH', '刘晓红', '宜君县烟草专卖局', '宜君县烟草专卖局稽查大队', '20130411 11:03:24');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLIUYU', '刘宇', '耀州区烟草专卖局', '耀州区烟草专卖局', '20130418 21:54:10');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLIYING', '李颖', '耀州区烟草专卖局', '耀州营销部', '20130905 10:49:44');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLIYU', '李玉', '铜川市烟草专卖局(公司)', '城区营销部', '20130408 10:25:09');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSLSMAN', '铜川客户经理', '铜川市烟草专卖局(公司)', '宜君营销部', '20151010 14:13:43');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSMAHUI', '马辉', '铜川市烟草专卖局(公司)', '财务科', '20130426 16:13:20');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSMANXIN', '满心', '耀州区烟草专卖局', '耀州营销部', '20130410 18:54:58');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSMASL', '马石磊', '铜川市烟草专卖局(公司)', '财务科', '20130416 11:09:05');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSMAZHENG', '马征', '铜川市烟草专卖局(公司)', '耀州营销部', '20130410 18:52:06');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSMIAOXH', '苗秀华', '铜川市直属分局', '内管派驻组', '20130723 12:59:59');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSNINGTAO', '宁涛', '铜川市直属分局', '铜川市直属分局', '20130418 21:49:27');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSPANGZHL', '庞中亮', '耀州区烟草专卖局', '专卖管理股', '20130411 12:25:38');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSQIAOGL', '乔国利', '铜川市烟草专卖局(公司)', '专卖科（稽查支队）', '20130411 16:51:09');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSQUXY', '屈晓燕', '铜川市烟草专卖局(公司)', '宜君营销部', '20130408 10:07:30');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSRENFF', '任飞菲', '耀州区烟草专卖局', '耀州营销部', '20130410 18:56:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSRENZP', '任泽平', '宜君县烟草专卖局', '宜君营销部', '20130410 19:02:55');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSSHENWQ', '沈文全', '铜川市烟草专卖局(公司)', '信息中心', '20130406 15:38:42');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSSHIYE', '铜川实业公司', '铜川市烟草专卖局(公司)', '铜川营销中心', '20131016 16:16:22');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSSHJ', '铜川省局管理员XXX', '陕西省烟草专卖局(公司)', '信息处', '20150806 15:20:29');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSSONGXM', '宋肖明', '宜君县烟草专卖局', '宜君营销部', '20130410 19:01:26');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSSUIFJ', '睢粉娟', '铜川市烟草专卖局(公司)', '内管派出办', '20130426 11:55:23');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSSUNGUANG', '孙光', '铜川市烟草专卖局(公司)', '专卖科（稽查支队）', '20130411 16:55:32');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSSUNLH', '孙丽慧', '铜川市直属分局', '专卖管理股', '20130411 14:42:23');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSSUNTAO', '孙涛', '宜君县烟草专卖局', '宜君县烟草专卖局', '20130418 21:45:49');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSSUNWSH', '孙旺社', '铜川市烟草专卖局(公司)', '城区营销部', '20130409 15:24:46');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSTONGTT', '童婷婷', '铜川市烟草专卖局(公司)', '客户服务部', '20130415 20:28:53');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWANGCHAO', '王超', '耀州区烟草专卖局', '内管派驻组', '20130723 12:58:12');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWANGGM', '王光明', '宜君县烟草专卖局', '宜君县烟草专卖局', '20130418 21:40:41');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWANGJUAN', '王娟', '耀州区烟草专卖局', '内管派驻组', '20130723 12:55:51');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWANGLEI', '王磊', '铜川市直属分局', '专卖管理股', '20140107 10:04:18');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWANGQI', '王琦', '铜川市烟草专卖局(公司)', '专卖科（稽查支队）', '20130411 14:55:54');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWANGSW', '王淑文', '宜君县烟草专卖局', '专卖管理股', '20130411 11:05:29');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWANGTQ', '王铜琴', '铜川市直属分局', '内管派驻组', '20130723 12:59:10');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWANGXP', '王西平', '宜君县烟草专卖局', '宜君县烟草专卖局稽查大队', '20130411 10:51:59');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWEILY', '韦利艳', '铜川市直属分局', '城区营销部', '20130717 18:13:13');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWENYL', '问彦龙', '铜川市烟草专卖局(公司)', '内管派出办', '20130426 12:00:16');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWUJX', '武婧轩', '耀州区烟草专卖局', '专卖管理股', '20130411 12:19:18');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSWULF', '武龙飞', '耀州区烟草专卖局', '耀州新区片区', '20140122 15:17:57');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSXIEWJ', '谢文娟', '铜川市烟草专卖局(公司)', '耀州营销部', '20130408 09:56:33');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSXIXM', '惠孝民', '铜川市烟草专卖局(公司)', '仓储部', '20130412 15:08:14');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSYANFENG', '颜峰', '铜川市烟草专卖局(公司)', '耀州营销部', '20140122 15:47:14');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSYANGWF', '杨武峰', '铜川市烟草专卖局(公司)', '城区营销部', '20130724 18:08:26');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSYANGYF', '杨云锋', '铜川市烟草专卖局(公司)', '城区营销部', '20130408 10:22:47');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSYANGYING', '杨英', '耀州区烟草专卖局', '专卖管理股', '20130408 11:48:14');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSYANGYN', '杨燕妮', '宜君县烟草专卖局', '宜君营销部', '20130709 10:56:51');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSYANGZHJ', '杨张俊', '铜川市直属分局', '印台区(东区)', '20130411 16:23:16');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSYANJQ', '闫军强', '铜川市直属分局', '王益区（王家河黄堡片区）', '20130529 11:06:18');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSYUANGL', '袁桂玲', '铜川市烟草专卖局(公司)', '财务科', '20130529 09:51:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSYUFL', '余复玲', '铜川市烟草专卖局(公司)', '物流中心', '20130416 10:37:05');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHANGHF', '张慧芳', '宜君县烟草专卖局', '宜君县烟草专卖局稽查大队', '20130411 11:04:33');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHANGMIN', '张敏', '铜川市烟草专卖局(公司)', '铜川营销中心', '20140314 15:59:27');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHANGQIANG', '张强', '铜川市直属分局', '城区营销部', '20130410 19:10:38');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHANGQIANG1', '张强', '铜川市直属分局', '王益区（城区片区）', '20140107 09:13:06');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHANGXIN', '张昕', '铜川市烟草专卖局(公司)', '采供部', '20130408 10:30:38');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHANGXUAN', '张轩', '铜川市烟草专卖局(公司)', '城区营销部', '20130410 19:09:49');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHANGYANG', '张扬', '铜川市烟草专卖局(公司)', '城区营销部', '20130410 19:07:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHANGYH', '张永宏', '宜君县烟草专卖局', '专卖管理股', '20130408 11:37:42');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHANGYJ', '张延举', '铜川市烟草专卖局(公司)', '市局领导班子', '20130521 15:10:11');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHANGYUN', '张云', '铜川市烟草专卖局(公司)', '市局领导班子', '20130710 18:09:15');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHAOHF', '赵海锋', '铜川市烟草专卖局(公司)', '耀州营销部', '20130408 09:57:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHAOYX', '赵云侠', '铜川市烟草专卖局(公司)', '综合部', '20130408 10:34:15');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZHOUSJ', '周守杰', '铜川市直属分局', '铜川市直属分局', '20130418 21:51:57');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCSZM', '专卖管理员', '铜川市烟草专卖局(公司)', '信息中心', '20130917 09:45:18');
INSERT INTO `DATA_FOR_TEST` VALUES ('TCS_GANLU', '甘露', '铜川市烟草专卖局(公司)', '铜川营销中心', '20150807 18:28:12');
INSERT INTO `DATA_FOR_TEST` VALUES ('TEST001', 'test001z', '山东省烟草专卖局(公司)', '计划处', '20141022 08:45:28');
INSERT INTO `DATA_FOR_TEST` VALUES ('TEST009', '自行车', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20150608 10:56:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('TIANYUAN', '1', '专卖科', '专卖科', '20130730 13:02:45');
INSERT INTO `DATA_FOR_TEST` VALUES ('TWOWORK', '两项工作', '山东省烟草专卖局(公司)', '计划处', '20130403 13:14:47');
INSERT INTO `DATA_FOR_TEST` VALUES ('WANGBINYC', 'wangbin', '济南市烟草专卖局(公司)', '仓储部', '20131012 19:50:06');
INSERT INTO `DATA_FOR_TEST` VALUES ('WANGGL', 'WANGGUOLIANG', '济南市烟草专卖局(公司)', '济南市信息中心', '20130813 17:17:35');
INSERT INTO `DATA_FOR_TEST` VALUES ('WANGHAI', '王海', '济南历城区烟草专卖局（公司）', '专卖科', '20140122 09:29:06');
INSERT INTO `DATA_FOR_TEST` VALUES ('WANGJIE', '王洁', '山东省烟草专卖局(公司)', '内管处', '20151117 16:35:45');
INSERT INTO `DATA_FOR_TEST` VALUES ('WANGWU', '王五', '济南市烟草专卖局(公司)', '内管派驻办', '20130217 16:37:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('WANG_TH', '王天华', '济南市烟草专卖局(公司)', '济南市营销中心', '20150304 12:46:09');
INSERT INTO `DATA_FOR_TEST` VALUES ('WB', '外包测试人', '济南市烟草专卖局(公司)', '外包单位', '20150123 17:23:57');
INSERT INTO `DATA_FOR_TEST` VALUES ('WJL', 'wjlmgqs', '济南市烟草专卖局(公司)', '综合部', '20140819 11:24:03');
INSERT INTO `DATA_FOR_TEST` VALUES ('WL', '物流管理员', '济南市烟草专卖局(公司)', '济南市信息中心', '20130129 13:28:54');
INSERT INTO `DATA_FOR_TEST` VALUES ('WL0000000101', 'bjtest1', '山东省烟草专卖局(公司)', '物流中心', '20130831 19:09:40');
INSERT INTO `DATA_FOR_TEST` VALUES ('WL2', '物流测试2', '济南市烟草专卖局(公司)', '济南卷烟配送中心', '20130605 16:57:50');
INSERT INTO `DATA_FOR_TEST` VALUES ('WLC', '处长', '山东省烟草专卖局(公司)', '物流中心', '20130325 11:29:16');
INSERT INTO `DATA_FOR_TEST` VALUES ('WLCC', '物流管理员', '济南市烟草专卖局(公司)', '仓储部', '20130129 13:28:54');
INSERT INTO `DATA_FOR_TEST` VALUES ('WLDELIVER', 'wldeliver', '济南市烟草专卖局(公司)', '济南卷烟配送中心', '20130828 08:52:02');
INSERT INTO `DATA_FOR_TEST` VALUES ('WLG', '物流管理员', '济南市烟草专卖局(公司)', '综合部', '20150121 19:07:33');
INSERT INTO `DATA_FOR_TEST` VALUES ('WYD', '家乡送货员', '济南市烟草专卖局(公司)', '济南卷烟配送中心', '20130816 10:51:36');
INSERT INTO `DATA_FOR_TEST` VALUES ('XASADMIN', 'XASADMIN', '西安市烟草专卖局(公司)', '西安信息中心', '20151105 21:58:59');
INSERT INTO `DATA_FOR_TEST` VALUES ('XAWLADMIN', '西安物流管理员', '西安市烟草专卖局(公司)', '雁塔区送货部', '20150421 11:23:53');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAODING', '小丁', '办公室（外事办公室）', '办公室（外事办公室）', '20130409 11:33:16');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOGANG', '小刚', '市局专卖科', '市局专卖科', '20130426 15:24:29');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOHUANG', '小黄', '济南历城区烟草专卖局（公司）', '历城二中队', '20140706 14:01:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOJG', '肖建国', '济南市烟草专卖局(公司)', '济南市营销中心', '20130316 17:29:11');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOSAN', '小三三', '重庆市烟草专卖局（公司）', '销售处', '20150116 11:50:49');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOSONG', 'xiaosong', '办公室（外事办公室）', '办公室（外事办公室）', '20130514 09:44:58');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOSONG1', '小宋', '泰安市烟草(专卖局)', '泰安物流中心', '20130514 09:55:34');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOSONG2', 'xiaosong1', '济南市烟草专卖局(公司)', '办公室（外事办公室）', '20130521 14:21:02');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOSONG3', 'xiaosong3', '济南历城区烟草专卖局（公司）', '专卖科', '20130521 14:22:10');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOZHANG', '小张', '办公室（外事办公室）', '办公室（外事办公室）', '20130130 16:27:04');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOZHOU', '小周', '办公室（外事办公室）', '办公室（外事办公室）', '20130418 13:53:05');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOZHOU1', '小周1', '办公室（外事办公室）', '办公室（外事办公室）', '20130521 15:19:08');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOZHOU2', '小周2', '济南烟草历下区公司(专卖局)', '内管派驻组', '20130717 10:05:59');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOZHOU3', '小周3', '办公室（外事办公室）', '办公室（外事办公室）', '20130717 10:26:11');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIAOZHOU4', '小周4', '办公室（外事办公室）', '办公室（外事办公室）', '20130719 13:39:10');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIONG1', '熊大1', '铜川市烟草专卖局(公司)', '送货部', '20141202 19:58:29');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIONG2', '熊2', '铜川市烟草专卖局(公司)', '市局领导班子', '20141202 21:03:19');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIONGHL', '熊辉龙', '济南市烟草专卖局(公司)', '仓储部', '20131012 19:50:58');
INSERT INTO `DATA_FOR_TEST` VALUES ('XIONGHUILONG', '熊辉龙', '济南市烟草专卖局(公司)', '分拣部', '20131014 14:36:15');
INSERT INTO `DATA_FOR_TEST` VALUES ('XT', 'xt', '山东省烟草专卖局(公司)', '测试罢了', '20140825 16:36:01');
INSERT INTO `DATA_FOR_TEST` VALUES ('XZ', 'xz', '济南烟草历下区公司(专卖局)', '济南烟草历下区营销部文登', '20130905 15:05:29');
INSERT INTO `DATA_FOR_TEST` VALUES ('YANG', '洋', '山东省烟草专卖局(公司)', '物流中心', '20140829 16:22:13');
INSERT INTO `DATA_FOR_TEST` VALUES ('YANG_TEST', 'yang_test', '山东省烟草专卖局(公司)', '测试罢了', '20140819 15:47:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('YANLJ', '颜丽娟', '山东省烟草专卖局(公司)', '计划处', '20130704 13:32:55');
INSERT INTO `DATA_FOR_TEST` VALUES ('YASGUOWL', '张忠喜', '办公室（外事办公室）', '办公室（外事办公室）', '20130720 10:07:06');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZENGKEDA', '曾可达', '济南市烟草专卖局(公司)', '章丘中转站', '20141230 15:12:20');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANGBING', '张兵', '市局专卖科', '市局专卖科', '20130729 11:11:36');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANGFENG', '张峰', '济南历城区烟草专卖局（公司）', '稽查一队', '20140706 11:49:20');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANGJIU', '张九', '济南烟草历下区公司(专卖局)', '内管派驻组', '20130217 16:51:14');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANGSAN', 'zhangsan', '济南市烟草专卖局(公司)', '高新区送货部', '20141023 19:09:41');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANGWJ', '张无忌', '济南市市中区烟草专卖局（公司）', '专卖科', '20140523 11:34:48');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANGXD', '张旭东', '济南历城区烟草专卖局（公司）', '济南烟草历城区营销部', '20130828 20:17:21');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANGXIAOSAN', 'zhangxiaosan', '云阳县烟草专卖局（公司）', '销售科', '20150921 20:57:30');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANGXZH', '张行政', '济南市烟草专卖局(公司)', '济南市信息中心', '20130301 09:44:39');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANGZHX', '张忠喜', '办公室（外事办公室）', '办公室（外事办公室）', '20130317 10:26:23');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANSAN', '张三', '重庆市烟草专卖局（公司）', '计划处', '20140214 09:41:22');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHANXSAN', '张小三', '云阳县烟草专卖局（公司）', '销售科', '20140709 13:43:35');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHAOLIU', 'zhaoliu', '济南市烟草专卖局(公司)', '济南市营销中心', '20130318 11:48:02');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHAOWG', '赵卫国', '市局专卖科', '市局专卖科', '20130317 09:53:16');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHGL02', '综合管理02', '山东省烟草专卖局(公司)', '计划处', '20130217 10:05:03');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHONGYU', 'zhongyu', '济南市烟草专卖局(公司)', '济南市营销中心', '20130318 11:57:14');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHONGYU003', 'zhongyu003', '济南市烟草专卖局(公司)', '济南市营销中心', '20130318 14:51:35');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZHXSAN', '张小三', '重庆市烟草专卖局（公司）', '计划处', '20140805 19:56:41');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZMMAN', '测试市管员', '泰安市烟草(专卖局)', '泰安物流中心', '20130813 13:27:11');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZMMGR', 'zmmgr', '市局专卖科', '市局专卖科', '20130816 18:08:03');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZXC2014', 'zxc2014', '铜川市烟草专卖局(公司)', '物流中心', '20141118 19:30:26');
INSERT INTO `DATA_FOR_TEST` VALUES ('ZYX', 'zyx', '铜川市烟草专卖局(公司)', '仓储部', '20140809 13:49:23');

-- ----------------------------
-- Table structure for `PUB_COMMON_HELP`
-- ----------------------------
DROP TABLE IF EXISTS `PUB_COMMON_HELP`;
CREATE TABLE `PUB_COMMON_HELP` (
  `HELP_ID` varchar(30) NOT NULL,
  `HELP_TABLE` varchar(100) NOT NULL,
  `HELP_TITLE` varchar(60) NOT NULL,
  `ROOT_NAME` varchar(20) DEFAULT NULL,
  `LEVEL_FIELD` varchar(50) DEFAULT NULL,
  `CODE_FIELD` varchar(50) NOT NULL,
  `IS_EQUAL_LEN` varchar(50) DEFAULT NULL,
  `DETAIL_FIELD` varchar(50) DEFAULT NULL,
  `FILIATION_FIELD` varchar(50) DEFAULT NULL,
  `CODE_STRU` varchar(50) DEFAULT NULL,
  `ID_FIELD` varchar(50) DEFAULT NULL,
  `SHORT_FIELD` varchar(50) DEFAULT NULL,
  `NAME_FIELD` varchar(50) NOT NULL,
  `SHOW_FIELD` varchar(500) DEFAULT NULL,
  `RETURN_FIELD` varchar(500) DEFAULT NULL,
  `HELP_WHERE` varchar(1000) DEFAULT NULL,
  `IS_DETAILSEL` char(1) DEFAULT NULL,
  `IS_MULTSEL` char(1) NOT NULL,
  `IS_INDVL` char(1) NOT NULL,
  `SHOW_NAME` varchar(500) DEFAULT NULL,
  `HELP_NOTE` varchar(250) DEFAULT NULL,
  `HELP_STYLE` varchar(300) DEFAULT NULL,
  `DATASOURCE` varchar(60) DEFAULT NULL,
  `HELP_INTERCEPTOR` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`HELP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of PUB_COMMON_HELP
-- ----------------------------
INSERT INTO `PUB_COMMON_HELP` VALUES ('SYS_USER_HELP', 'SYS_USER', '用户选择框', null, null, 'USERID', null, null, null, null, 'USERID', 'USERNAME', 'USERNAME', 'USERID,USERNAME', 'USERID,USERNAME', '@WHERE@', null, '', '', 'USERID#用户编码#,USERNAME#用户名称', null, null, null, null);

-- ----------------------------
-- Table structure for `PUB_IDTABLE`
-- ----------------------------
DROP TABLE IF EXISTS `PUB_IDTABLE`;
CREATE TABLE `PUB_IDTABLE` (
  `ID_ID` varchar(60) NOT NULL DEFAULT '流水号ID',
  `ID_VALUE` int(11) NOT NULL,
  `ID_NAME` varchar(50) NOT NULL COMMENT '流水号名字',
  `ID_PREFIX` varchar(60) DEFAULT NULL COMMENT '前缀',
  `IS_PREFIX` char(1) NOT NULL COMMENT '启用前缀',
  `ID_LENGTH` int(11) NOT NULL COMMENT '长度',
  `IS_SUFFIX` char(1) DEFAULT NULL COMMENT '启用后缀',
  `ID_SUFFIX` varchar(60) DEFAULT NULL COMMENT '流水号后缀',
  `IS_GLOBAL` char(1) NOT NULL COMMENT '是否全局流水',
  `ORGAN_ID` varchar(30) DEFAULT NULL COMMENT '组织ID',
  `ID_TYPE` char(2) DEFAULT NULL COMMENT '类型',
  `ID_DATE` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of PUB_IDTABLE
-- ----------------------------

-- ----------------------------
-- Table structure for `SYS_GROUP`
-- ----------------------------
DROP TABLE IF EXISTS `SYS_GROUP`;
CREATE TABLE `SYS_GROUP` (
  `group_id` varchar(10) NOT NULL DEFAULT '' COMMENT '用户组编码',
  `group_name` varchar(50) DEFAULT NULL COMMENT '用户组名称',
  `in_use` char(1) DEFAULT '1' COMMENT '是否使用',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SYS_GROUP
-- ----------------------------
INSERT INTO `SYS_GROUP` VALUES ('admin', '管理员', '1');
INSERT INTO `SYS_GROUP` VALUES ('user1', '用户组1', '1');
INSERT INTO `SYS_GROUP` VALUES ('user2', '用户组2', '1');
INSERT INTO `SYS_GROUP` VALUES ('user3', '用户组3', '1');
INSERT INTO `SYS_GROUP` VALUES ('user4', '用户组4', '1');
INSERT INTO `SYS_GROUP` VALUES ('user5', '用户组5', '1');

-- ----------------------------
-- Table structure for `SYS_QUARTZ`
-- ----------------------------
DROP TABLE IF EXISTS `SYS_QUARTZ`;
CREATE TABLE `SYS_QUARTZ` (
  `QUARTZ_NAME` varchar(50) NOT NULL COMMENT '定时器名字',
  `CLAZZ` varchar(200) NOT NULL COMMENT '类路径',
  `EXEC_METHOD` varchar(50) NOT NULL COMMENT '方法名',
  `QUARTZ_TIME` varchar(100) NOT NULL COMMENT '执行规则',
  `IS_START` char(1) NOT NULL COMMENT '是否启用',
  `DESCR` varchar(400) NOT NULL COMMENT '描述',
  PRIMARY KEY (`QUARTZ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SYS_QUARTZ
-- ----------------------------

-- ----------------------------
-- Table structure for `SYS_THIRD_APP`
-- ----------------------------
DROP TABLE IF EXISTS `SYS_THIRD_APP`;
CREATE TABLE `SYS_THIRD_APP` (
  `app_id` varchar(20) NOT NULL DEFAULT '' COMMENT '应用编码',
  `secret_id` varchar(30) DEFAULT NULL COMMENT '密钥',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SYS_THIRD_APP
-- ----------------------------
INSERT INTO `SYS_THIRD_APP` VALUES ('2204', 'q55@6u');

-- ----------------------------
-- Table structure for `SYS_USER`
-- ----------------------------
DROP TABLE IF EXISTS `SYS_USER`;
CREATE TABLE `SYS_USER` (
  `userid` varchar(30) NOT NULL COMMENT '用户ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '姓名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `groupin` varchar(50) NOT NULL DEFAULT '' COMMENT '分组',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ号',
  `photo` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `motto` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  `logincount` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `lastip` varchar(15) NOT NULL DEFAULT '0.0.0.0' COMMENT '最后登录ip',
  `lastlogin` datetime DEFAULT NULL COMMENT '最后登录时间',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活{0:未激活,1:已激活}',
  `admin` char(1) DEFAULT '0' COMMENT '管理员',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SYS_USER
-- ----------------------------
INSERT INTO `SYS_USER` VALUES ('admin', '管理员1', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin1', '管理员1', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'user1', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin10', '管理员1', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'user2', '18611111112', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin11', '管理员1', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'user1', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin12', '管理员1', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin20', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin21', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin22', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin23', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin24', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin25', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin26', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin27', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin28', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin29', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin3', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin30', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin31', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin32', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin33', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin34', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin35', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin36', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin37', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin38', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin39', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin4', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin5', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin6', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin7', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin8', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('admin9', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('sunzhen', '孙振', '孙振', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '', null, '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('test', '测试用户', '测试用户', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '', '', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('test1', '测试用户2', '测试用户2', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '', '', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('test2', '测试用户2', '测试用户2', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '', '', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('test3', '测试用户3', '测试用户3', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '', '', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('test4', '测试用户', '测试用户', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '', '', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('test5', '测试用户5', '测试用户5', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '', '', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('test6', '测试用户6', '测试用户6', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '', '', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('test7', '测试用户7', '测试用户7', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '', '', '', '', '0', '0.0.0.0', null, '0', '0');
INSERT INTO `SYS_USER` VALUES ('test8', '测试用户8', '测试用户8', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '', '', '', '', '0', '0.0.0.0', null, '0', '0');

-- ----------------------------
-- Table structure for `TEST_FOR_BATCHINSERT`
-- ----------------------------
DROP TABLE IF EXISTS `TEST_FOR_BATCHINSERT`;
CREATE TABLE `TEST_FOR_BATCHINSERT` (
  `column0` varchar(50) NOT NULL,
  `column1` varchar(50) DEFAULT NULL,
  `column2` varchar(50) DEFAULT NULL,
  `column3` varchar(50) DEFAULT NULL,
  `column4` varchar(50) DEFAULT NULL,
  `column5` varchar(50) DEFAULT NULL,
  `column6` varchar(50) DEFAULT NULL,
  `column7` varchar(50) DEFAULT NULL,
  `column8` varchar(50) DEFAULT NULL,
  `column9` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`column0`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of TEST_FOR_BATCHINSERT
-- ----------------------------
--===============================================日志基础表====START============================================
﻿------------------------------------------------
-- DSL_MSG  原始数据记录表
------------------------------------------------

CREATE TABLE `DSL_MSG` (  
 
  `MSG_ID`  varchar(64), 
  `MSG_TYPE`  varchar(30), 
  `MSG_ACTION`  varchar(100), 
  `MSG_CREATE_TIME`  varchar(20), 
  `MSG_SATUS`  varchar(500), 
  `SERVICE_PARA`  text NOT NULL,
  
  PRIMARY KEY (`MSG_ID`)  
) ENGINE=InnoDB  DEFAULT CHARSET=gb2312;  
		 
﻿------------------------------------------------
--   DSL_MSG_PARAMETER  原始数据记录表参数表
------------------------------------------------
CREATE TABLE `DSL_MSG_PARAMETER` (  
 
  `PARA_ID`  varchar(30), 
  `MSG_ID`  varchar(30), 
  `MSG_PARA_NAME`  varchar(100), 
  `MSG_PARA_VALUE`  text NOT NULL,
  
  PRIMARY KEY (`PARA_ID`)  
) ENGINE=InnoDB  DEFAULT CHARSET=gb2312;  
﻿------------------------------------------------
--   DSL_PROCESS_LOG  数据处理记录表表结构
------------------------------------------------
CREATE TABLE `DSL_PROCESS_LOG` (  
 
  `LOG_ID`  varchar(30), 
  `MSG_ID`  varchar(30), 
  `LOG_CREATE_TIME`  varchar(30), 
  `LOG_RESULT`  varchar(1), 
  `PRO_NODE`  varchar(1), 
  `LOG_INFO`  text NOT NULL,
  
  PRIMARY KEY (`LOG_ID`)  
) ENGINE=InnoDB  DEFAULT CHARSET=gb2312;  
--===============================================日志基础表====END============================================
