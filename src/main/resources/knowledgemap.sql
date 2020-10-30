/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : knowledgemap

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 09/09/2020 13:37:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for docs
-- ----------------------------
DROP TABLE IF EXISTS `docs`;
CREATE TABLE `docs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `object_relation` json NULL,
  `knowledge_relation` json NULL,
  `doc_relation` json NULL,
  `property` json NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of docs
-- ----------------------------
INSERT INTO `docs` VALUES (8, '中新天津生态城公路水路运输安全突发事件应急预案.pdf', 'docs/中新天津生态城公路水路运输安全突发事件应急预案.pdf', '[{\"to\": 46, \"name\": \"突发事件\", \"content\": \"包含\"}, {\"to\": 47, \"name\": \"交通运输\", \"content\": \"包含\"}, {\"to\": 48, \"name\": \"技术培训\", \"content\": \"包含\"}, {\"to\": 49, \"name\": \"资源配置\", \"content\": \"包含\"}, {\"to\": 50, \"name\": \"社会秩序\", \"content\": \"包含\"}, {\"to\": 51, \"name\": \"防疫\", \"content\": \"包含\"}, {\"to\": 52, \"name\": \"编制工作\", \"content\": \"包含\"}, {\"to\": 53, \"name\": \"环境监测\", \"content\": \"包含\"}, {\"to\": 54, \"name\": \"犯罪活动\", \"content\": \"包含\"}, {\"to\": 55, \"name\": \"指挥机构\", \"content\": \"包含\"}, {\"to\": 56, \"name\": \"运输工具\", \"content\": \"包含\"}, {\"to\": 57, \"name\": \"安置工作\", \"content\": \"包含\"}, {\"to\": 58, \"name\": \"电力部门\", \"content\": \"包含\"}, {\"to\": 59, \"name\": \"计算机系统\", \"content\": \"包含\"}, {\"to\": 60, \"name\": \"舆论导向\", \"content\": \"包含\"}, {\"to\": 61, \"name\": \"后勤保障\", \"content\": \"包含\"}, {\"to\": 62, \"name\": \"事故现场\", \"content\": \"包含\"}, {\"to\": 102, \"name\": \"自然灾害\", \"content\": \"包含\"}, {\"to\": 103, \"name\": \"恐怖事件\", \"content\": \"包含\"}, {\"to\": 104, \"name\": \"防疫\", \"content\": \"包含\"}, {\"to\": 105, \"name\": \"研究\", \"content\": \"包含\"}, {\"to\": 106, \"name\": \"生活必需品\", \"content\": \"包含\"}, {\"to\": 107, \"name\": \"编制工作\", \"content\": \"包含\"}, {\"to\": 108, \"name\": \"监督管理\", \"content\": \"包含\"}]', '[{\"to\": 46, \"name\": \"水路运输\", \"content\": \"包含\"}, {\"to\": 46, \"name\": \"公路\", \"content\": \"包含\"}, {\"to\": 46, \"name\": \"通讯\", \"content\": \"包含\"}, {\"to\": 50, \"name\": \"系统管理\", \"content\": \"包含\"}, {\"to\": 52, \"name\": \"气象预报\", \"content\": \"包含\"}, {\"to\": 52, \"name\": \"法制局\", \"content\": \"包含\"}, {\"to\": 52, \"name\": \"经济局\", \"content\": \"包含\"}, {\"to\": 52, \"name\": \"审计局\", \"content\": \"包含\"}, {\"to\": 54, \"name\": \"旅游局\", \"content\": \"包含\"}, {\"to\": 54, \"name\": \"报警装置\", \"content\": \"包含\"}, {\"to\": 54, \"name\": \"信息管理系统\", \"content\": \"包含\"}, {\"to\": 104, \"name\": \"人员伤亡\", \"content\": \"包含\"}, {\"to\": 104, \"name\": \"财产损失\", \"content\": \"包含\"}, {\"to\": 105, \"name\": \"科学技术\", \"content\": \"包含\"}, {\"to\": 108, \"name\": \"救灾物资\", \"content\": \"包含\"}]', '[]', '[]');
INSERT INTO `docs` VALUES (9, '中新天津生态城突发环境事件应急预案（按新方和长城意见修改）.pdf', 'docs/中新天津生态城突发环境事件应急预案（按新方和长城意见修改）.pdf', '[{\"to\": 139, \"name\": \"风险\", \"content\": \"包含\"}, {\"to\": 140, \"name\": \"管理工作\", \"content\": \"包含\"}, {\"to\": 141, \"name\": \"毒害\", \"content\": \"包含\"}, {\"to\": 142, \"name\": \"有害物质\", \"content\": \"包含\"}, {\"to\": 143, \"name\": \"大气环境\", \"content\": \"包含\"}, {\"to\": 144, \"name\": \"污水处理\", \"content\": \"包含\"}, {\"to\": 145, \"name\": \"监控\", \"content\": \"包含\"}, {\"to\": 146, \"name\": \"公共设施\", \"content\": \"包含\"}, {\"to\": 147, \"name\": \"宣传报道\", \"content\": \"包含\"}, {\"to\": 148, \"name\": \"技术支持\", \"content\": \"包含\"}, {\"to\": 149, \"name\": \"技术协作\", \"content\": \"包含\"}, {\"to\": 150, \"name\": \"宣传教育\", \"content\": \"包含\"}, {\"to\": 151, \"name\": \"有害物质\", \"content\": \"包含\"}, {\"to\": 152, \"name\": \"大气\", \"content\": \"包含\"}, {\"to\": 153, \"name\": \"设备\", \"content\": \"包含\"}, {\"to\": 154, \"name\": \"教职员工\", \"content\": \"包含\"}, {\"to\": 155, \"name\": \"基础设施\", \"content\": \"包含\"}, {\"to\": 156, \"name\": \"营救\", \"content\": \"包含\"}, {\"to\": 157, \"name\": \"救治\", \"content\": \"包含\"}, {\"to\": 158, \"name\": \"抢修\", \"content\": \"包含\"}, {\"to\": 159, \"name\": \"构成犯罪\", \"content\": \"包含\"}, {\"to\": 160, \"name\": \"追究责任\", \"content\": \"包含\"}]', '[{\"to\": 140, \"name\": \"交通事故\", \"content\": \"包含\"}, {\"to\": 140, \"name\": \"易燃\", \"content\": \"包含\"}, {\"to\": 141, \"name\": \"环境因素\", \"content\": \"包含\"}, {\"to\": 141, \"name\": \"污染物\", \"content\": \"包含\"}, {\"to\": 141, \"name\": \"液氨\", \"content\": \"包含\"}, {\"to\": 141, \"name\": \"柴油\", \"content\": \"包含\"}, {\"to\": 141, \"name\": \"汽油\", \"content\": \"包含\"}, {\"to\": 141, \"name\": \"污水\", \"content\": \"包含\"}, {\"to\": 141, \"name\": \"易燃易爆\", \"content\": \"包含\"}, {\"to\": 143, \"name\": \"油品\", \"content\": \"包含\"}, {\"to\": 143, \"name\": \"、\", \"content\": \"包含\"}, {\"to\": 146, \"name\": \"卫生防疫\", \"content\": \"包含\"}, {\"to\": 146, \"name\": \"环境监测\", \"content\": \"包含\"}, {\"to\": 146, \"name\": \"宣传报道\", \"content\": \"包含\"}, {\"to\": 151, \"name\": \"空气质量\", \"content\": \"包含\"}, {\"to\": 151, \"name\": \"火源\", \"content\": \"包含\"}, {\"to\": 153, \"name\": \"幼儿园\", \"content\": \"包含\"}, {\"to\": 154, \"name\": \"广播系统\", \"content\": \"包含\"}, {\"to\": 155, \"name\": \"环境监测\", \"content\": \"包含\"}, {\"to\": 155, \"name\": \"指挥部\", \"content\": \"包含\"}, {\"to\": 158, \"name\": \"交通\", \"content\": \"包含\"}, {\"to\": 158, \"name\": \"通信\", \"content\": \"包含\"}, {\"to\": 158, \"name\": \"供排水\", \"content\": \"包含\"}, {\"to\": 158, \"name\": \"供电\", \"content\": \"包含\"}, {\"to\": 158, \"name\": \"供气\", \"content\": \"包含\"}, {\"to\": 158, \"name\": \"供热\", \"content\": \"包含\"}, {\"to\": 158, \"name\": \"技术支持\", \"content\": \"包含\"}, {\"to\": 158, \"name\": \"技术协作\", \"content\": \"包含\"}, {\"to\": 160, \"name\": \"刑事责任\", \"content\": \"包含\"}]', '[]', '[]');
INSERT INTO `docs` VALUES (10, '中新天津生态城排水除涝应急预案（定稿）.pdf', 'docs/中新天津生态城排水除涝应急预案（定稿）.pdf', '[{\"to\": 1, \"name\": \"排水\", \"content\": \"包含\"}, {\"to\": 2, \"name\": \"预警\", \"content\": \"包含\"}, {\"to\": 27, \"name\": \"应急\", \"content\": \"包含\"}, {\"to\": 28, \"name\": \"保障\", \"content\": \"包含\"}, {\"to\": 29, \"name\": \"抢险\", \"content\": \"包含\"}, {\"to\": 30, \"name\": \"救援\", \"content\": \"包含\"}, {\"to\": 31, \"name\": \"生态\", \"content\": \"包含\"}, {\"to\": 32, \"name\": \"应急\", \"content\": \"包含\"}, {\"to\": 33, \"name\": \"泄洪\", \"content\": \"包含\"}, {\"to\": 34, \"name\": \"安全隐患\", \"content\": \"包含\"}, {\"to\": 35, \"name\": \"社会治安\", \"content\": \"包含\"}, {\"to\": 36, \"name\": \"紧急情况\", \"content\": \"包含\"}, {\"to\": 37, \"name\": \"能源供应\", \"content\": \"包含\"}, {\"to\": 38, \"name\": \"水毁\", \"content\": \"包含\"}, {\"to\": 39, \"name\": \"领导小组\", \"content\": \"包含\"}, {\"to\": 40, \"name\": \"预警\", \"content\": \"包含\"}, {\"to\": 41, \"name\": \"防汛\", \"content\": \"包含\"}, {\"to\": 42, \"name\": \"公共卫生\", \"content\": \"包含\"}, {\"to\": 43, \"name\": \"抢险\", \"content\": \"包含\"}, {\"to\": 44, \"name\": \"疫病\", \"content\": \"包含\"}, {\"to\": 45, \"name\": \"指挥机构\", \"content\": \"包含\"}]', '[{\"to\": 0, \"name\": \"沥涝\", \"content\": \"包含\"}, {\"to\": 2, \"name\": \"除涝\", \"content\": \"包含\"}, {\"to\": 30, \"name\": \"医疗保障\", \"content\": \"包含\"}, {\"to\": 30, \"name\": \"汛情\", \"content\": \"包含\"}, {\"to\": 30, \"name\": \"抢险救灾\", \"content\": \"包含\"}, {\"to\": 31, \"name\": \"突发事件\", \"content\": \"包含\"}, {\"to\": 32, \"name\": \"防汛\", \"content\": \"包含\"}, {\"to\": 32, \"name\": \"防洪\", \"content\": \"包含\"}, {\"to\": 32, \"name\": \"防潮\", \"content\": \"包含\"}, {\"to\": 33, \"name\": \"泵站\", \"content\": \"包含\"}, {\"to\": 33, \"name\": \"启动器\", \"content\": \"包含\"}, {\"to\": 33, \"name\": \"工程项目\", \"content\": \"包含\"}, {\"to\": 33, \"name\": \"气象预报\", \"content\": \"包含\"}, {\"to\": 33, \"name\": \"安监局\", \"content\": \"包含\"}, {\"to\": 34, \"name\": \"责任制\", \"content\": \"包含\"}, {\"to\": 36, \"name\": \"工程建设\", \"content\": \"包含\"}, {\"to\": 40, \"name\": \"排水管道\", \"content\": \"包含\"}, {\"to\": 41, \"name\": \"城管局\", \"content\": \"包含\"}, {\"to\": 42, \"name\": \"商业部门\", \"content\": \"包含\"}, {\"to\": 42, \"name\": \"财政局\", \"content\": \"包含\"}, {\"to\": 45, \"name\": \"负责制\", \"content\": \"包含\"}, {\"to\": 45, \"name\": \"堤防\", \"content\": \"包含\"}]', '[]', '[]');
INSERT INTO `docs` VALUES (11, '1.中新天津生态城生产安全事故应急预案.pdf', 'docs/1.中新天津生态城生产安全事故应急预案.pdf', '[{\"to\": 63, \"name\": \"人员伤亡\", \"content\": \"包含\"}, {\"to\": 64, \"name\": \"财产损失\", \"content\": \"包含\"}, {\"to\": 65, \"name\": \"生命安全\", \"content\": \"包含\"}, {\"to\": 66, \"name\": \"事业单位\", \"content\": \"包含\"}, {\"to\": 67, \"name\": \"信息系统\", \"content\": \"包含\"}, {\"to\": 68, \"name\": \"技术储备\", \"content\": \"包含\"}, {\"to\": 69, \"name\": \"资源配置\", \"content\": \"包含\"}, {\"to\": 70, \"name\": \"娱乐场所\", \"content\": \"包含\"}, {\"to\": 71, \"name\": \"事故隐患\", \"content\": \"包含\"}, {\"to\": 72, \"name\": \"交通秩序\", \"content\": \"包含\"}, {\"to\": 73, \"name\": \"安全事故\", \"content\": \"包含\"}, {\"to\": 74, \"name\": \"联动机制\", \"content\": \"包含\"}, {\"to\": 75, \"name\": \"后勤保障\", \"content\": \"包含\"}, {\"to\": 76, \"name\": \"防爆设备\", \"content\": \"包含\"}, {\"to\": 77, \"name\": \"通风设备\", \"content\": \"包含\"}, {\"to\": 161, \"name\": \"场所\", \"content\": \"包含\"}]', '[{\"to\": 64, \"name\": \"生命安全\", \"content\": \"包含\"}, {\"to\": 71, \"name\": \"法律法规\", \"content\": \"包含\"}, {\"to\": 73, \"name\": \"安监局\", \"content\": \"包含\"}, {\"to\": 73, \"name\": \"防护用品\", \"content\": \"包含\"}, {\"to\": 75, \"name\": \"危险物品\", \"content\": \"包含\"}]', '[]', '[]');
INSERT INTO `docs` VALUES (12, '2.中新天津生态城危险化学品事故专项应急救援预案.pdf', 'docs/2.中新天津生态城危险化学品事故专项应急救援预案.pdf', '[{\"to\": 78, \"name\": \"企业\", \"content\": \"包含\"}, {\"to\": 79, \"name\": \"人员伤亡\", \"content\": \"包含\"}, {\"to\": 80, \"name\": \"公共设施\", \"content\": \"包含\"}, {\"to\": 81, \"name\": \"娱乐场所\", \"content\": \"包含\"}, {\"to\": 82, \"name\": \"涉危化品\", \"content\": \"包含\"}, {\"to\": 83, \"name\": \"危险品\", \"content\": \"包含\"}, {\"to\": 84, \"name\": \"环境卫生\", \"content\": \"包含\"}, {\"to\": 85, \"name\": \"公共安全\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"职能部门\", \"content\": \"包含\"}, {\"to\": 87, \"name\": \"公安分局\", \"content\": \"包含\"}, {\"to\": 88, \"name\": \"防护用品\", \"content\": \"包含\"}, {\"to\": 89, \"name\": \"安全措施\", \"content\": \"包含\"}]', '[{\"to\": 79, \"name\": \"财产损失\", \"content\": \"包含\"}, {\"to\": 83, \"name\": \"火灾\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"建设局\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"商务局\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"经济局\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"财政局\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"社会局\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"法制局\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"城管局\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"执法局\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"总工会\", \"content\": \"包含\"}, {\"to\": 86, \"name\": \"妇联\", \"content\": \"包含\"}, {\"to\": 87, \"name\": \"交通管制\", \"content\": \"包含\"}, {\"to\": 88, \"name\": \"人民政府\", \"content\": \"包含\"}, {\"to\": 88, \"name\": \"环保部门\", \"content\": \"包含\"}, {\"to\": 88, \"name\": \"公安部门\", \"content\": \"包含\"}, {\"to\": 88, \"name\": \"消防大队\", \"content\": \"包含\"}, {\"to\": 88, \"name\": \"医疗机构\", \"content\": \"包含\"}, {\"to\": 88, \"name\": \"人事管理\", \"content\": \"包含\"}, {\"to\": 89, \"name\": \"危险源\", \"content\": \"包含\"}, {\"to\": 89, \"name\": \"防护装置\", \"content\": \"包含\"}, {\"to\": 89, \"name\": \"电气设备\", \"content\": \"包含\"}]', '[]', '[]');
INSERT INTO `docs` VALUES (13, '中新天津生态城道路、桥涵突发事故应急预案（定稿）.pdf', 'docs/中新天津生态城道路、桥涵突发事故应急预案（定稿）.pdf', '[{\"to\": 90, \"name\": \"管理工作\", \"content\": \"包含\"}, {\"to\": 91, \"name\": \"自然灾害\", \"content\": \"包含\"}, {\"to\": 92, \"name\": \"经济损失\", \"content\": \"包含\"}, {\"to\": 93, \"name\": \"道路交通\", \"content\": \"包含\"}, {\"to\": 94, \"name\": \"宣传报道\", \"content\": \"包含\"}, {\"to\": 95, \"name\": \"社会治安\", \"content\": \"包含\"}, {\"to\": 96, \"name\": \"管委会\", \"content\": \"包含\"}, {\"to\": 97, \"name\": \"桥涵\", \"content\": \"包含\"}, {\"to\": 98, \"name\": \"桥梁\", \"content\": \"包含\"}, {\"to\": 99, \"name\": \"恶性事故\", \"content\": \"包含\"}, {\"to\": 100, \"name\": \"规章制度\", \"content\": \"包含\"}, {\"to\": 101, \"name\": \"公路交通\", \"content\": \"包含\"}]', '[{\"to\": 93, \"name\": \"城管局\", \"content\": \"包含\"}, {\"to\": 98, \"name\": \"桥梁\", \"content\": \"包含\"}, {\"to\": 99, \"name\": \"环境污染\", \"content\": \"包含\"}]', '[]', '[]');
INSERT INTO `docs` VALUES (14, '中新天津生态城燃气系统抢险应急预案（定稿）.pdf', 'docs/中新天津生态城燃气系统抢险应急预案（定稿）.pdf', '[{\"to\": 109, \"name\": \"风险\", \"content\": \"包含\"}, {\"to\": 110, \"name\": \"管理机构\", \"content\": \"包含\"}, {\"to\": 111, \"name\": \"仪器仪表\", \"content\": \"包含\"}, {\"to\": 112, \"name\": \"信息网络\", \"content\": \"包含\"}, {\"to\": 113, \"name\": \"舆论导向\", \"content\": \"包含\"}, {\"to\": 114, \"name\": \"指挥机构\", \"content\": \"包含\"}, {\"to\": 115, \"name\": \"后勤保障\", \"content\": \"包含\"}, {\"to\": 116, \"name\": \"保障系统\", \"content\": \"包含\"}, {\"to\": 117, \"name\": \"主管部门\", \"content\": \"包含\"}, {\"to\": 118, \"name\": \"监察机关\", \"content\": \"包含\"}, {\"to\": 119, \"name\": \"抢险\", \"content\": \"包含\"}, {\"to\": 120, \"name\": \"主要职责\", \"content\": \"包含\"}, {\"to\": 121, \"name\": \"设施\", \"content\": \"包含\"}, {\"to\": 122, \"name\": \"抢险\", \"content\": \"包含\"}, {\"to\": 123, \"name\": \"管理部\", \"content\": \"包含\"}, {\"to\": 124, \"name\": \"指挥部\", \"content\": \"包含\"}, {\"to\": 125, \"name\": \"安监局\", \"content\": \"包含\"}, {\"to\": 126, \"name\": \"社会治安\", \"content\": \"包含\"}, {\"to\": 127, \"name\": \"公共秩序\", \"content\": \"包含\"}]', '[{\"to\": 109, \"name\": \"新闻报道\", \"content\": \"包含\"}, {\"to\": 111, \"name\": \"调压器\", \"content\": \"包含\"}, {\"to\": 111, \"name\": \"监督管理\", \"content\": \"包含\"}, {\"to\": 111, \"name\": \"环境监测\", \"content\": \"包含\"}, {\"to\": 111, \"name\": \"管理权限\", \"content\": \"包含\"}, {\"to\": 112, \"name\": \"交通管制\", \"content\": \"包含\"}, {\"to\": 112, \"name\": \"信息中心\", \"content\": \"包含\"}, {\"to\": 112, \"name\": \"伤亡事故\", \"content\": \"包含\"}, {\"to\": 112, \"name\": \"防范措施\", \"content\": \"包含\"}, {\"to\": 112, \"name\": \"控制能力\", \"content\": \"包含\"}]', '[]', '[]');
INSERT INTO `docs` VALUES (15, '中新天津生态城水务突发事件应急预案（定稿）.pdf', 'docs/中新天津生态城水务突发事件应急预案（定稿）.pdf', '[{\"to\": 128, \"name\": \"善后工作\", \"content\": \"包含\"}, {\"to\": 129, \"name\": \"安全监控\", \"content\": \"包含\"}, {\"to\": 130, \"name\": \"污水处理\", \"content\": \"包含\"}, {\"to\": 131, \"name\": \"二次污染\", \"content\": \"包含\"}, {\"to\": 132, \"name\": \"建设工程\", \"content\": \"包含\"}, {\"to\": 133, \"name\": \"险情\", \"content\": \"包含\"}, {\"to\": 134, \"name\": \"防汛\", \"content\": \"包含\"}, {\"to\": 135, \"name\": \"保障机制\", \"content\": \"包含\"}, {\"to\": 136, \"name\": \"领导小组\", \"content\": \"包含\"}, {\"to\": 137, \"name\": \"资源配置\", \"content\": \"包含\"}, {\"to\": 138, \"name\": \"抢险救灾\", \"content\": \"包含\"}]', '[{\"to\": 128, \"name\": \"排水管\", \"content\": \"包含\"}, {\"to\": 129, \"name\": \"污水泵\", \"content\": \"包含\"}, {\"to\": 132, \"name\": \"化学品\", \"content\": \"包含\"}, {\"to\": 132, \"name\": \"电力工程\", \"content\": \"包含\"}, {\"to\": 132, \"name\": \"城市排水\", \"content\": \"包含\"}, {\"to\": 132, \"name\": \"卫生防疫\", \"content\": \"包含\"}, {\"to\": 132, \"name\": \"环境保护\", \"content\": \"包含\"}, {\"to\": 132, \"name\": \"排水泵\", \"content\": \"包含\"}, {\"to\": 132, \"name\": \"专业队伍\", \"content\": \"包含\"}, {\"to\": 132, \"name\": \"物资\", \"content\": \"包含\"}, {\"to\": 132, \"name\": \"设备\", \"content\": \"包含\"}, {\"to\": 135, \"name\": \"公共广播\", \"content\": \"包含\"}, {\"to\": 135, \"name\": \"媒体\", \"content\": \"包含\"}]', '[]', '[]');

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `property` json NULL,
  `knowledge_relation` json NULL,
  `object_relation` json NULL,
  `doc_relation` json NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES (9, '医疗保障', '[{\"name\": \"等级\", \"value\": \"A\"}]', '[]', '[{\"to\": \"44\", \"content\": \"包含\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (11, '抢险救灾', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[]', '[{\"to\": \"41\", \"content\": \"内容\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (12, '突发事件', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"27\", \"content\": \"对策\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (16, '泵站', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"38\", \"content\": \"关联\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (17, '启动器', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"27\", \"content\": \"属于\"}, {\"to\": \"28\", \"content\": \"关联\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (18, '工程项目', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"52\", \"content\": \"关联\"}, {\"to\": \"74\", \"content\": \"关联\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (19, '气象预报', '[{\"name\": \"类型\", \"value\": \"A\"}]', '[]', '[{\"to\": \"91\", \"content\": \"关联\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (20, '安监局', '[{\"name\": \"程度\", \"value\": \"A\"}, {\"name\": \"程度\", \"value\": \"B\"}, {\"name\": \"程度\", \"value\": \"C\"}]', '[]', '[{\"to\": \"34\", \"content\": \"监管\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (21, '责任制', '[{\"name\": \"数量\", \"value\": \"A\"}]', '[]', '[{\"to\": \"96\", \"content\": \"关联\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (22, '工程建设', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[]', '[{\"to\": \"69\", \"content\": \"关联\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (23, '排水管道', '[{\"name\": \"分布数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"25\", \"content\": \"属于\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (24, '城管局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"35\", \"content\": \"关联\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (25, '商业部门', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"64\", \"content\": \"关联\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (26, '财政局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"64\", \"content\": \"关联\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (27, '负责制', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"61\", \"content\": \"属于\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (28, '堤防', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"91\", \"content\": \"对策\"}]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (29, '水路运输', '[{\"name\": \"分布情况\", \"value\": \"A\"}, {\"name\": \"分布情况\", \"value\": \"B\"}, {\"name\": \"分布情况\", \"value\": \"C\"}]', '[]', '[{\"to\": \"93\", \"content\": \"关联\"}]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (30, '公路', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (34, '法制局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (35, '经济局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (36, '审计局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (37, '旅游局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (38, '报警装置', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (39, '信息管理系统', '[{\"name\": \"涵盖度\", \"value\": \"A\"}, {\"name\": \"涵盖度\", \"value\": \"B\"}, {\"name\": \"涵盖度\", \"value\": \"C\"}]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (41, '法律法规', '[{\"name\": \"条例\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (42, '安监局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"27\", \"content\": \"对策\"}]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (43, '防护用品', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"76\", \"content\": \"包含\"}]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (44, '危险物品', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (45, '财产损失', '[{\"name\": \"程度\", \"value\": \"A\"}, {\"name\": \"程度\", \"value\": \"B\"}, {\"name\": \"程度\", \"value\": \"C\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (46, '火灾', '[{\"name\": \"场数\", \"value\": \"数量\"}]', '[]', '[{\"to\": \"122\", \"content\": \"关联\"}]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (47, '建设局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (48, '商务局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (49, '经济局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (50, '财政局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (51, '社会局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (52, '法制局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (53, '城管局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (54, '执法局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (56, '妇联', '[]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (57, '交通管制', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"89\", \"content\": \"关联\"}]', '[{\"to\": \"129\", \"content\": \"关联\"}]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (58, '人民政府', '[{\"name\": \"级别\", \"value\": \"A\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (59, '环保部门', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (60, '公安部门', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"87\", \"content\": \"包含\"}]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (61, '消防大队', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (62, '医疗机构', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (63, '人事管理', '[]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (64, '危险源', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (65, '防护装置', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (66, '电气设备', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (67, '城管局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (68, '桥梁', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (69, '环境污染', '[{\"name\": \"程度\", \"value\": \"A\"}, {\"name\": \"程度\", \"value\": \"B\"}, {\"name\": \"程度\", \"value\": \"C\"}]', '[]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (70, '人员伤亡', '[{\"name\": \"规模\", \"value\": \"人数\"}]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (71, '财产损失', '[{\"name\": \"损失面\", \"value\": \"数量\"}]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (72, '科学技术', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (73, '救灾物资', '[]', '[]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (74, '新闻报道', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (75, '调压器', '[]', '[]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (76, '监督管理', '[{\"name\": \"模式\", \"value\": \"A\"}, {\"name\": \"模式\", \"value\": \"B\"}, {\"name\": \"模式\", \"value\": \"C\"}]', '[]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (78, '管理权限', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (79, '交通管制', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (80, '信息中心', '[]', '[]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (81, '伤亡事故', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[{\"to\": \"63\", \"content\": \"包含\"}]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (82, '防范措施', '[]', '[]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (83, '控制能力', '[]', '[]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (84, '排水管', '[{\"name\": \"分布情况\", \"value\": \"数量\"}]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (85, '污水泵', '[]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (86, '化学品', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (87, '电力工程', '[]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (88, '城市排水', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (89, '卫生防疫', '[]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (90, '环境保护', '[]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (91, '排水泵', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (92, '专业队伍', '[]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (93, '物资', '[]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (94, '设备', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"76\", \"content\": \"包含\"}]', '[{\"to\": \"77\", \"content\": \"包含\"}]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (95, '公共广播', '[]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (96, '媒体', '[]', '[]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (97, '交通事故', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (98, '易燃', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (99, '环境因素', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (100, '污染物', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (101, '液氨', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (102, '柴油', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (103, '汽油', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (104, '污水', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (105, '易燃易爆', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (106, '油品', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (108, '卫生防疫', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (109, '环境监测', '[{\"name\": \"程度\", \"value\": \"A\"}]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (111, '空气质量', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (112, '火源', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (113, '幼儿园', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (114, '广播系统', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (116, '指挥部', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (117, '交通', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (118, '通信', '[{\"name\": \"情况\", \"value\": \"A\"}, {\"name\": \"情况\", \"value\": \"B\"}]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (119, '供排水', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (120, '供电', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (121, '供气', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (122, '供热', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (123, '技术支持', '[{\"name\": \"支持度\", \"value\": \"A\"}, {\"name\": \"支持度\", \"value\": \"B\"}, {\"name\": \"支持度\", \"value\": \"C\"}]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (124, '技术协作', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `knowledge` VALUES (125, '刑事责任', '[]', '[]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');

-- ----------------------------
-- Table structure for ob
-- ----------------------------
DROP TABLE IF EXISTS `ob`;
CREATE TABLE `ob`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `property` json NULL,
  `knowledge_relation` json NULL,
  `object_relation` json NULL,
  `doc_relation` json NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ob
-- ----------------------------
INSERT INTO `ob` VALUES (25, '排水', '[{\"name\": \"量级\", \"value\": \"毫米\"}]', '[{\"to\": \"84\", \"content\": \"设施\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (26, '预警', '[{\"name\": \"等级\", \"value\": \"一级\"}, {\"name\": \"等级\", \"value\": \"二级\"}, {\"name\": \"等级\", \"value\": \"三级\"}, {\"name\": \"等级\", \"value\": \"四级\"}]', '[{\"to\": \"38\", \"content\": \"装置\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (27, '应急', '[{\"name\": \"等级\", \"value\": \"A\"}, {\"name\": \"等级\", \"value\": \"B\"}, {\"name\": \"等级\", \"value\": \"C\"}]', '[{\"to\": \"42\", \"content\": \"主体\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (28, '保障', '[{\"name\": \"种类\", \"value\": \"A\"}, {\"name\": \"种类\", \"value\": \"B\"}, {\"name\": \"种类\", \"value\": \"C\"}]', '[{\"to\": \"9\", \"content\": \"分类\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (29, '抢险', '[{\"name\": \"等级\", \"value\": \"\"}]', '[{\"to\": \"11\", \"content\": \"主体\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (30, '救援', '[{\"name\": \"人数\", \"value\": \"人次\"}]', '[{\"to\": \"92\", \"content\": \"主体\"}, {\"to\": \"73\", \"content\": \"内容\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (31, '生态', '[{\"name\": \"a\", \"value\": \"a\"}]', '[{\"to\": \"99\", \"content\": \"包含\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (33, '泄洪', '[{\"name\": \"量级\", \"value\": \"毫米\"}]', '[{\"to\": \"28\", \"content\": \"对策\"}, {\"to\": \"88\", \"content\": \"对策\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (34, '安全隐患', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"46\", \"content\": \"包含\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (35, '社会治安', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"24\", \"content\": \"主体\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (36, '紧急情况', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"12\", \"content\": \"关联\"}, {\"to\": \"11\", \"content\": \"对策\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (37, '能源供应', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}]', '[{\"to\": \"119\", \"content\": \"项目\"}, {\"to\": \"120\", \"content\": \"项目\"}, {\"to\": \"121\", \"content\": \"供汽\"}, {\"to\": \"122\", \"content\": \"供热\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (38, '水毁', '[{\"name\": \"级别\", \"value\": \"A\"}, {\"name\": \"级别\", \"value\": \"B\"}]', '[{\"to\": \"11\", \"content\": \"对策\"}, {\"to\": \"12\", \"content\": \"类型\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (39, '领导小组', '[{\"name\": \"模式\", \"value\": \"A\"}, {\"name\": \"模式\", \"value\": \"B\"}, {\"name\": \"模式\", \"value\": \"C\"}]', '[{\"to\": \"92\", \"content\": \"来源\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (40, '预警', '[{\"name\": \"等级\", \"value\": \"A\"}, {\"name\": \"等级\", \"value\": \"B\"}]', '[{\"to\": \"12\", \"content\": \"对象\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (41, '防汛', '[]', '[]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (42, '公共卫生', '[{\"name\": \"级别\", \"value\": \"A\"}, {\"name\": \"级别\", \"value\": \"B\"}, {\"name\": \"级别\", \"value\": \"C\"}]', '[{\"to\": \"51\", \"content\": \"主体\"}, {\"to\": \"62\", \"content\": \"主体\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (43, '抢险', '[]', '[{\"to\": \"64\", \"content\": \"对象\"}, {\"to\": \"69\", \"content\": \"原因\"}, {\"to\": \"70\", \"content\": \"原因\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (44, '疫病', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}]', '[{\"to\": \"73\", \"content\": \"对策\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (45, '指挥机构', '[{\"name\": \"机构\", \"value\": \"A\"}, {\"name\": \"机构\", \"value\": \"B\"}, {\"name\": \"机构\", \"value\": \"C\"}]', '[{\"to\": \"116\", \"content\": \"主体\"}]', '[]', '[{\"to\": 10, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (47, '交通运输', '[]', '[{\"to\": \"117\", \"content\": \"内容\"}, {\"to\": \"97\", \"content\": \"危害\"}, {\"to\": \"79\", \"content\": \"对策\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (48, '技术培训', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"72\", \"content\": \"内容\"}, {\"to\": \"92\", \"content\": \"主体\"}, {\"to\": \"123\", \"content\": \"内容\"}, {\"to\": \"124\", \"content\": \"内容\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (49, '资源配置', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"43\", \"content\": \"内容\"}, {\"to\": \"44\", \"content\": \"内容\"}, {\"to\": \"66\", \"content\": \"内容\"}, {\"to\": \"93\", \"content\": \"内容\"}, {\"to\": \"94\", \"content\": \"内容\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (50, '社会秩序', '[{\"name\": \"等级\", \"value\": \"A\"}, {\"name\": \"等级\", \"value\": \"B\"}, {\"name\": \"等级\", \"value\": \"C\"}]', '[{\"to\": \"78\", \"content\": \"对策\"}, {\"to\": \"83\", \"content\": \"对策\"}, {\"to\": \"76\", \"content\": \"对策\"}, {\"to\": \"60\", \"content\": \"主体\"}, {\"to\": \"68\", \"content\": \"主体\"}, {\"to\": \"54\", \"content\": \"主体\"}, {\"to\": \"51\", \"content\": \"主体\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (51, '防疫', '[]', '[{\"to\": \"9\", \"content\": \"关联\"}, {\"to\": \"12\", \"content\": \"关联\"}, {\"to\": \"62\", \"content\": \"主体\"}, {\"to\": \"70\", \"content\": \"危害\"}, {\"to\": \"71\", \"content\": \"危害\"}, {\"to\": \"73\", \"content\": \"关联\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (52, '编制工作', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"123\", \"content\": \"对策\"}, {\"to\": \"124\", \"content\": \"对策\"}, {\"to\": \"116\", \"content\": \"主体\"}, {\"to\": \"78\", \"content\": \"关联\"}, {\"to\": \"83\", \"content\": \"关联\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (53, '环境监测', '[]', '[{\"to\": \"111\", \"content\": \"对象\"}, {\"to\": \"99\", \"content\": \"内容\"}, {\"to\": \"100\", \"content\": \"危害\"}, {\"to\": \"90\", \"content\": \"对策\"}, {\"to\": \"85\", \"content\": \"设备\"}, {\"to\": \"69\", \"content\": \"处理\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (54, '犯罪活动', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"34\", \"content\": \"主体\"}, {\"to\": \"41\", \"content\": \"关联\"}, {\"to\": \"42\", \"content\": \"主体\"}, {\"to\": \"51\", \"content\": \"主体\"}, {\"to\": \"52\", \"content\": \"主体\"}, {\"to\": \"54\", \"content\": \"主体\"}, {\"to\": \"60\", \"content\": \"主体\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (55, '指挥机构', '[{\"name\": \"机构\", \"value\": \"A\"}, {\"name\": \"机构\", \"value\": \"B\"}, {\"name\": \"机构\", \"value\": \"C\"}]', '[{\"to\": \"58\", \"content\": \"包含\"}, {\"to\": \"59\", \"content\": \"包含\"}, {\"to\": \"60\", \"content\": \"包含\"}, {\"to\": \"61\", \"content\": \"包含\"}, {\"to\": \"62\", \"content\": \"包含\"}, {\"to\": \"67\", \"content\": \"包含\"}, {\"to\": \"116\", \"content\": \"包含\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (56, '运输工具', '[{\"name\": \"形式\", \"value\": \"A\"}, {\"name\": \"形式\", \"value\": \"B\"}, {\"name\": \"形式\", \"value\": \"c\"}]', '[{\"to\": \"117\", \"content\": \"关联\"}, {\"to\": \"79\", \"content\": \"关联\"}, {\"to\": \"29\", \"content\": \"关联\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (57, '安置工作', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"50\", \"content\": \"主体\"}, {\"to\": \"51\", \"content\": \"主体\"}, {\"to\": \"56\", \"content\": \"主体\"}, {\"to\": \"58\", \"content\": \"主体\"}, {\"to\": \"73\", \"content\": \"对策\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (58, '电力部门', '[{\"name\": \"部门\", \"value\": \"A\"}, {\"name\": \"部门\", \"value\": \"B\"}, {\"name\": \"部门\", \"value\": \"C\"}]', '[{\"to\": \"120\", \"content\": \"内容\"}, {\"to\": \"118\", \"content\": \"关联\"}, {\"to\": \"87\", \"content\": \"对应\"}, {\"to\": \"66\", \"content\": \"关联\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (59, '计算机系统', '[]', '[{\"to\": \"39\", \"content\": \"包含\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (60, '舆论导向', '[{\"name\": \"方向\", \"value\": \"A\"}, {\"name\": \"方向\", \"value\": \"B\"}, {\"name\": \"方向\", \"value\": \"C\"}]', '[{\"to\": \"12\", \"content\": \"关联\"}, {\"to\": \"39\", \"content\": \"关联\"}, {\"to\": \"42\", \"content\": \"关联\"}, {\"to\": \"74\", \"content\": \"关联\"}, {\"to\": \"80\", \"content\": \"关联\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (61, '后勤保障', '[]', '[{\"to\": \"78\", \"content\": \"关联\"}, {\"to\": \"82\", \"content\": \"关联\"}, {\"to\": \"83\", \"content\": \"关联\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (62, '事故现场', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}, {\"name\": \"类型\", \"value\": \"D\"}]', '[{\"to\": \"81\", \"content\": \"类型\"}, {\"to\": \"97\", \"content\": \"类型\"}, {\"to\": \"27\", \"content\": \"关联\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (63, '人员伤亡', '[]', '[{\"to\": \"12\", \"content\": \"原因\"}, {\"to\": \"45\", \"content\": \"危害\"}, {\"to\": \"46\", \"content\": \"原因\"}, {\"to\": \"70\", \"content\": \"原因\"}, {\"to\": \"71\", \"content\": \"危害\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (64, '财产损失', '[{\"name\": \"受损面\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (65, '生命安全', '[]', '[{\"to\": \"70\", \"content\": \"危害\"}, {\"to\": \"81\", \"content\": \"危害\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (66, '事业单位', '[{\"name\": \"种类\", \"value\": \"A\"}, {\"name\": \"种类\", \"value\": \"B\"}, {\"name\": \"种类\", \"value\": \"C\"}]', '[{\"to\": \"24\", \"content\": \"包含\"}, {\"to\": \"26\", \"content\": \"包含\"}, {\"to\": \"34\", \"content\": \"包含\"}, {\"to\": \"35\", \"content\": \"包含\"}, {\"to\": \"36\", \"content\": \"包含\"}, {\"to\": \"37\", \"content\": \"包含\"}, {\"to\": \"47\", \"content\": \"包含\"}, {\"to\": \"49\", \"content\": \"包含\"}, {\"to\": \"50\", \"content\": \"包含\"}, {\"to\": \"51\", \"content\": \"包含\"}, {\"to\": \"52\", \"content\": \"包含\"}, {\"to\": \"53\", \"content\": \"包含\"}, {\"to\": \"54\", \"content\": \"包含\"}, {\"to\": \"58\", \"content\": \"包含\"}, {\"to\": \"59\", \"content\": \"包含\"}, {\"to\": \"60\", \"content\": \"包含\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (67, '信息系统', '[{\"name\": \"数量\", \"value\": \"个数\"}, {\"name\": \"\", \"value\": \"\"}]', '[{\"to\": \"39\", \"content\": \"类型\"}, {\"to\": \"80\", \"content\": \"关联\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (68, '技术储备', '[]', '[{\"to\": \"72\", \"content\": \"内容\"}, {\"to\": \"123\", \"content\": \"内容\"}, {\"to\": \"124\", \"content\": \"内容\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (69, '资源配置', '[{\"name\": \"方式\", \"value\": \"A\"}, {\"name\": \"方式\", \"value\": \"B\"}, {\"name\": \"方式\", \"value\": \"C\"}]', '[{\"to\": \"73\", \"content\": \"类型\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (71, '事故隐患', '[]', '[{\"to\": \"64\", \"content\": \"原因\"}, {\"to\": \"70\", \"content\": \"危害\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (72, '交通秩序', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"117\", \"content\": \"对象\"}, {\"to\": \"97\", \"content\": \"对象\"}, {\"to\": \"79\", \"content\": \"对象\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (73, '安全事故', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"70\", \"content\": \"危害\"}, {\"to\": \"71\", \"content\": \"危害\"}, {\"to\": \"81\", \"content\": \"类型\"}, {\"to\": \"97\", \"content\": \"类型\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (74, '联动机制', '[{\"name\": \"主体\", \"value\": \"数量\"}]', '[{\"to\": \"123\", \"content\": \"关联\"}, {\"to\": \"124\", \"content\": \"关联\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (75, '后勤保障', '[]', '[{\"to\": \"78\", \"content\": \"关联\"}, {\"to\": \"82\", \"content\": \"关联\"}, {\"to\": \"83\", \"content\": \"关联\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (76, '防爆设备', '[{\"name\": \"种类\", \"value\": \"A\"}, {\"name\": \"种类\", \"value\": \"B\"}]', '[{\"to\": \"65\", \"content\": \"关联\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (77, '通风设备', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (78, '企业', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"35\", \"content\": \"关联\"}, {\"to\": \"45\", \"content\": \"危害\"}]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (80, '公共设施', '[]', '[{\"to\": \"16\", \"content\": \"包含\"}, {\"to\": \"17\", \"content\": \"包含\"}, {\"to\": \"30\", \"content\": \"包含\"}, {\"to\": \"66\", \"content\": \"包含\"}, {\"to\": \"94\", \"content\": \"类型\"}]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (81, '娱乐场所', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (82, '涉危化品', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"105\", \"content\": \"特性\"}, {\"to\": \"101\", \"content\": \"包含\"}]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (83, '危险品', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"98\", \"content\": \"特性\"}, {\"to\": \"102\", \"content\": \"包含\"}, {\"to\": \"103\", \"content\": \"包含\"}]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (84, '环境卫生', '[{\"name\": \"程度\", \"value\": \"等级\"}]', '[{\"to\": \"59\", \"content\": \"主体\"}, {\"to\": \"69\", \"content\": \"危害\"}, {\"to\": \"90\", \"content\": \"对策\"}, {\"to\": \"99\", \"content\": \"内容\"}, {\"to\": \"109\", \"content\": \"对策\"}]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (85, '公共安全', '[]', '[{\"to\": \"20\", \"content\": \"主体\"}, {\"to\": \"58\", \"content\": \"主体\"}]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (86, '职能部门', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"59\", \"content\": \"包含\"}, {\"to\": \"60\", \"content\": \"包含\"}, {\"to\": \"47\", \"content\": \"包含\"}, {\"to\": \"48\", \"content\": \"包含\"}, {\"to\": \"49\", \"content\": \"包含\"}, {\"to\": \"50\", \"content\": \"包含\"}, {\"to\": \"51\", \"content\": \"包含\"}, {\"to\": \"52\", \"content\": \"包含\"}, {\"to\": \"53\", \"content\": \"包含\"}, {\"to\": \"54\", \"content\": \"包含\"}]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (87, '公安分局', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (88, '防护用品', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"65\", \"content\": \"包含\"}]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (89, '安全措施', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}, {\"name\": \"类型\", \"value\": \"D\"}]', '[{\"to\": \"20\", \"content\": \"主体\"}, {\"to\": \"82\", \"content\": \"包含\"}]', '[]', '[{\"to\": 12, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (90, '管理工作', '[]', '[{\"to\": \"39\", \"content\": \"关联\"}, {\"to\": \"76\", \"content\": \"包含\"}, {\"to\": \"78\", \"content\": \"包含\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (91, '自然灾害', '[]', '[{\"to\": \"33\", \"content\": \"对策\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (92, '经济损失', '[{\"name\": \"程度\", \"value\": \"A\"}, {\"name\": \"程度\", \"value\": \"B\"}, {\"name\": \"程度\", \"value\": \"C\"}]', '[{\"to\": \"45\", \"content\": \"包含\"}, {\"to\": \"71\", \"content\": \"包含\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (93, '道路交通', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"57\", \"content\": \"对策\"}, {\"to\": \"79\", \"content\": \"对策\"}, {\"to\": \"97\", \"content\": \"危害\"}, {\"to\": \"117\", \"content\": \"关联\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (94, '宣传报道', '[]', '[{\"to\": \"95\", \"content\": \"方式\"}, {\"to\": \"96\", \"content\": \"方式\"}, {\"to\": \"114\", \"content\": \"方式\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (95, '社会治安', '[]', '[{\"to\": \"20\", \"content\": \"主体\"}, {\"to\": \"51\", \"content\": \"主体\"}, {\"to\": \"60\", \"content\": \"主体\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (96, '管委会', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"24\", \"content\": \"包含\"}, {\"to\": \"25\", \"content\": \"包含\"}, {\"to\": \"26\", \"content\": \"包含\"}, {\"to\": \"34\", \"content\": \"包含\"}, {\"to\": \"35\", \"content\": \"包含\"}, {\"to\": \"36\", \"content\": \"包含\"}, {\"to\": \"37\", \"content\": \"包含\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (97, '桥涵', '[]', '[{\"to\": \"68\", \"content\": \"包含\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (99, '恶性事故', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"81\", \"content\": \"包含\"}, {\"to\": \"97\", \"content\": \"包含\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (100, '规章制度', '[]', '[{\"to\": \"21\", \"content\": \"包含\"}, {\"to\": \"27\", \"content\": \"包含\"}, {\"to\": \"41\", \"content\": \"包含\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (101, '公路交通', '[{\"name\": \"流量\", \"value\": \"流量值\"}]', '[{\"to\": \"30\", \"content\": \"包含\"}, {\"to\": \"97\", \"content\": \"危害\"}, {\"to\": \"117\", \"content\": \"包含\"}]', '[]', '[{\"to\": 13, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (102, '自然灾害', '[]', '[{\"to\": \"11\", \"content\": \"对策\"}, {\"to\": \"12\", \"content\": \"原因\"}, {\"to\": \"28\", \"content\": \"对策\"}, {\"to\": \"46\", \"content\": \"包含\"}, {\"to\": \"64\", \"content\": \"危害\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (103, '恐怖事件', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"125\", \"content\": \"关联\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (104, '防疫', '[]', '[{\"to\": \"9\", \"content\": \"对策\"}, {\"to\": \"12\", \"content\": \"关联\"}, {\"to\": \"43\", \"content\": \"对应\"}, {\"to\": \"65\", \"content\": \"对应\"}, {\"to\": \"89\", \"content\": \"包含\"}, {\"to\": \"108\", \"content\": \"包含\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (105, '研究', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"18\", \"content\": \"对象\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (106, '生活必需品', '[{\"name\": \"种类\", \"value\": \"类型\"}]', '[{\"to\": \"43\", \"content\": \"关联\"}, {\"to\": \"73\", \"content\": \"关联\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (107, '编制工作', '[]', '[{\"to\": \"21\", \"content\": \"包含\"}, {\"to\": \"27\", \"content\": \"包含\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (108, '监督管理', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"20\", \"content\": \"主体\"}, {\"to\": \"39\", \"content\": \"关联\"}, {\"to\": \"78\", \"content\": \"关联\"}]', '[]', '[{\"to\": 8, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (109, '风险', '[]', '[{\"to\": \"12\", \"content\": \"关联\"}, {\"to\": \"38\", \"content\": \"关联\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (110, '管理机构', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"24\", \"content\": \"包含\"}, {\"to\": \"42\", \"content\": \"包含\"}, {\"to\": \"62\", \"content\": \"包含\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (111, '仪器仪表', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"17\", \"content\": \"包含\"}, {\"to\": \"68\", \"content\": \"关联\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (112, '信息网络', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"39\", \"content\": \"包含\"}, {\"to\": \"80\", \"content\": \"关联\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (113, '舆论导向', '[]', '[{\"to\": \"12\", \"content\": \"关联\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (114, '指挥机构', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"24\", \"content\": \"包含\"}, {\"to\": \"34\", \"content\": \"包含\"}, {\"to\": \"35\", \"content\": \"包含\"}, {\"to\": \"36\", \"content\": \"包含\"}, {\"to\": \"37\", \"content\": \"包含\"}, {\"to\": \"42\", \"content\": \"包含\"}, {\"to\": \"47\", \"content\": \"包含\"}, {\"to\": \"51\", \"content\": \"包含\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (116, '保障系统', '[]', '[{\"to\": \"9\", \"content\": \"关联\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (117, '主管部门', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"20\", \"content\": \"包含\"}, {\"to\": \"24\", \"content\": \"包含\"}, {\"to\": \"26\", \"content\": \"包含\"}, {\"to\": \"34\", \"content\": \"包含\"}, {\"to\": \"35\", \"content\": \"包含\"}, {\"to\": \"36\", \"content\": \"包含\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (118, '监察机关', '[]', '[{\"to\": \"58\", \"content\": \"包含\"}, {\"to\": \"59\", \"content\": \"包含\"}, {\"to\": \"60\", \"content\": \"包含\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (119, '抢险', '[]', '[{\"to\": \"12\", \"content\": \"关联\"}, {\"to\": \"20\", \"content\": \"主体\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (120, '主要职责', '[{\"name\": \"职责\", \"value\": \"数量\"}]', '[{\"to\": \"21\", \"content\": \"关联\"}, {\"to\": \"27\", \"content\": \"关联\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (121, '设施', '[]', '[{\"to\": \"22\", \"content\": \"关联\"}, {\"to\": \"18\", \"content\": \"关联\"}, {\"to\": \"38\", \"content\": \"包含\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (122, '抢险', '[{\"name\": \"等级\", \"value\": \"A\"}, {\"name\": \"等级\", \"value\": \"B\"}, {\"name\": \"等级\", \"value\": \"C\"}]', '[{\"to\": \"42\", \"content\": \"关联\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (123, '管理部', '[]', '[{\"to\": \"39\", \"content\": \"关联\"}, {\"to\": \"53\", \"content\": \"关联\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (124, '指挥部', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"59\", \"content\": \"关联\"}, {\"to\": \"60\", \"content\": \"关联\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (126, '社会治安', '[]', '[{\"to\": \"20\", \"content\": \"主体\"}, {\"to\": \"51\", \"content\": \"主体\"}, {\"to\": \"54\", \"content\": \"主体\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (127, '公共秩序', '[]', '[{\"to\": \"54\", \"content\": \"主体\"}, {\"to\": \"60\", \"content\": \"主体\"}]', '[]', '[{\"to\": 14, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (128, '善后工作', '[]', '[{\"to\": \"42\", \"content\": \"主体\"}, {\"to\": \"58\", \"content\": \"主体\"}]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (129, '安全监控', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"20\", \"content\": \"主体\"}, {\"to\": \"109\", \"content\": \"关联\"}]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (130, '污水处理', '[{\"name\": \"次数\", \"value\": \"A\"}]', '[{\"to\": \"100\", \"content\": \"原因\"}, {\"to\": \"104\", \"content\": \"对象\"}, {\"to\": \"85\", \"content\": \"关联\"}]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (131, '二次污染', '[]', '[{\"to\": \"44\", \"content\": \"对象\"}, {\"to\": \"59\", \"content\": \"主体\"}, {\"to\": \"69\", \"content\": \"主体\"}]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (132, '建设工程', '[]', '[{\"to\": \"53\", \"content\": \"主体\"}]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (133, '险情', '[{\"name\": \"程度\", \"value\": \"A\"}, {\"name\": \"程度\", \"value\": \"B\"}, {\"name\": \"程度\", \"value\": \"C\"}]', '[{\"to\": \"11\", \"content\": \"对策\"}, {\"to\": \"46\", \"content\": \"关联\"}]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (134, '防汛', '[]', '[{\"to\": \"18\", \"content\": \"关联\"}]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (135, '保障机制', '[]', '[{\"to\": \"9\", \"content\": \"包含\"}, {\"to\": \"65\", \"content\": \"关联\"}]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (136, '领导小组', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"58\", \"content\": \"关联\"}, {\"to\": \"60\", \"content\": \"关联\"}]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (137, '资源配置', '[]', '[{\"to\": \"93\", \"content\": \"关联\"}]', '[]', '[{\"to\": 15, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (140, '管理工作', '[]', '[{\"to\": \"23\", \"content\": \"关联\"}, {\"to\": \"57\", \"content\": \"关联\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (141, '毒害', '[]', '[{\"to\": \"101\", \"content\": \"关联\"}, {\"to\": \"102\", \"content\": \"关联\"}, {\"to\": \"103\", \"content\": \"关联\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (142, '有害物质', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"101\", \"content\": \"包含\"}, {\"to\": \"102\", \"content\": \"包含\"}, {\"to\": \"103\", \"content\": \"包含 \"}, {\"to\": \"106\", \"content\": \"包含 \"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (143, '大气环境', '[]', '[{\"to\": \"69\", \"content\": \"危害\"}, {\"to\": \"111\", \"content\": \"关联\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (145, '监控', '[]', '[{\"to\": \"76\", \"content\": \"关联\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (146, '公共设施', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"22\", \"content\": \"包含\"}, {\"to\": \"94\", \"content\": \"关联\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (147, '宣传报道', '[]', '[{\"to\": \"74\", \"content\": \"关联\"}, {\"to\": \"96\", \"content\": \"关联\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (150, '宣传教育', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"96\", \"content\": \"关联\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (154, '教职员工', '[]', '[{\"to\": \"113\", \"content\": \"关联\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (155, '基础设施', '[{\"name\": \"数量\", \"value\": \"个数\"}]', '[{\"to\": \"117\", \"content\": \"包含\"}, {\"to\": \"118\", \"content\": \"包含\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (156, '营救', '[]', '[{\"to\": \"112\", \"content\": \"关联\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (157, '救治', '[]', '[{\"to\": \"89\", \"content\": \"关联\"}, {\"to\": \"62\", \"content\": \"主体\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (159, '构成犯罪', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"125\", \"content\": \"关联\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (160, '追究责任', '[{\"name\": \"类型\", \"value\": \"A\"}, {\"name\": \"类型\", \"value\": \"B\"}, {\"name\": \"类型\", \"value\": \"C\"}]', '[{\"to\": \"125\", \"content\": \"包含\"}]', '[]', '[{\"to\": 9, \"content\": \"属于\"}]');
INSERT INTO `ob` VALUES (161, '场所', '[{\"name\": \"个数\", \"value\": \"A\"}, {\"name\": \"个数\", \"value\": \"B\"}, {\"name\": \"\", \"value\": \"\"}]', '[{\"to\": \"113\", \"content\": \"包含\"}, {\"to\": \"61\", \"content\": \"包含\"}]', '[]', '[{\"to\": 11, \"content\": \"属于\"}]');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '123456');

SET FOREIGN_KEY_CHECKS = 1;
