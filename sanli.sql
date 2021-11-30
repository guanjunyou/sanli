/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : sanli

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2021-11-30 17:53:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '123', '123', '123');

-- ----------------------------
-- Table structure for `arrangement`
-- ----------------------------
DROP TABLE IF EXISTS `arrangement`;
CREATE TABLE `arrangement` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程安排的id',
  `courseid` int(11) DEFAULT NULL COMMENT '对应课程的id',
  `day` int(11) DEFAULT NULL COMMENT '安排归属第几天',
  `content` text COMMENT '内容',
  `addition` varchar(255) DEFAULT NULL COMMENT '补充内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arrangement
-- ----------------------------
INSERT INTO `arrangement` VALUES ('1', '1', '1', '10', '10');
INSERT INTO `arrangement` VALUES ('2', '1', '2', '102', '110');
INSERT INTO `arrangement` VALUES ('3', '1', '1', '100', '100');

-- ----------------------------
-- Table structure for `base_term`
-- ----------------------------
DROP TABLE IF EXISTS `base_term`;
CREATE TABLE `base_term` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表示',
  `F_CODE` char(4) DEFAULT '' COMMENT '类型内部编码',
  `F_NAME` char(30) DEFAULT '' COMMENT '类型内的名称',
  `F_value` char(20) DEFAULT '' COMMENT '短名称，用于输入时使用',
  `F_SHOW` char(4) DEFAULT '',
  `F_NEXTTERM` varchar(10) DEFAULT '' COMMENT '下一段',
  `F_COL1` int(4) DEFAULT '0' COMMENT '表单位置1',
  `F_COL2` int(4) DEFAULT '0' COMMENT '表单位置2',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COMMENT='各类代码规范表说明，是公共基础表';

-- ----------------------------
-- Records of base_term
-- ----------------------------
INSERT INTO `base_term` VALUES ('228', '0', '', '', '全选', '', '0', '0');
INSERT INTO `base_term` VALUES ('229', '25', '上学期', '1', '上学期', '30', '1', '1');
INSERT INTO `base_term` VALUES ('230', '45', '下学期', '2', '下学期', '50', '1', '1');

-- ----------------------------
-- Table structure for `base_year`
-- ----------------------------
DROP TABLE IF EXISTS `base_year`;
CREATE TABLE `base_year` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表示',
  `F_CODE` char(20) DEFAULT '' COMMENT 'l类型编码 树结构',
  `F_NAME` char(30) DEFAULT '' COMMENT '类型内的名称',
  `F_value` char(20) DEFAULT '' COMMENT '短名称，用于输入时使用',
  `F_view` char(255) DEFAULT '' COMMENT '显示出来的名字',
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `TYPECODE` (`F_CODE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COMMENT='各类代码规范表说明，是公共基础表';

-- ----------------------------
-- Records of base_year
-- ----------------------------
INSERT INTO `base_year` VALUES ('226', '0', '', '', '全选');
INSERT INTO `base_year` VALUES ('227', '1', '2020-2021', '2020', '2020-2021');
INSERT INTO `base_year` VALUES ('228', '2', '2021-2022', '2021', '2021-2022');
INSERT INTO `base_year` VALUES ('229', '3', '2022-2023', '2022', '2022-2023');
INSERT INTO `base_year` VALUES ('230', '4', '2023-2024', '2023', '2023-2024');

-- ----------------------------
-- Table structure for `club_list`
-- ----------------------------
DROP TABLE IF EXISTS `club_list`;
CREATE TABLE `club_list` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `club_code` char(16) DEFAULT '' COMMENT '社区编码，采用树结构方式表示 年份+6位数序号   如2016000001',
  `club_name` varchar(30) DEFAULT '' COMMENT '社区单位名称',
  `pic` varchar(100) DEFAULT '' COMMENT '社区缩略图',
  `apply_club_phone` char(11) DEFAULT '' COMMENT '申请法人联系电话',
  `apply_club_email` varchar(40) DEFAULT '' COMMENT '申请法人电子邮箱',
  `apply_name` varchar(30) DEFAULT '' COMMENT '联系人电话',
  `contact_phone` char(11) DEFAULT NULL COMMENT '联系人电话',
  `email` varchar(40) DEFAULT '' COMMENT '联系人电子邮箱',
  `club_address` varchar(60) DEFAULT '' COMMENT '详细地址',
  `if_del` int(4) DEFAULT '510' COMMENT '逻辑删除，base_code表DATA类型 509-逻辑删除 510正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of club_list
-- ----------------------------
INSERT INTO `club_list` VALUES ('1', '9001', '1社区', '2021/10/27/1_61794c962f5350.07859517.jpg', '', '', '李达良', '1', '', '1', '510');
INSERT INTO `club_list` VALUES ('2', '1001', '华南师范大学附属中学', '2021/11/21/1_6199bf47690879.16164431.gif', '', '', 'gjy', '1', '', '1', '510');
INSERT INTO `club_list` VALUES ('3', '1002', '良叔', '2021/11/21/1_6199c0f0ef7a86.45436049.gif', '', '', 'ly', '1', '', '1', '510');
INSERT INTO `club_list` VALUES ('5', '9002', '2社区', '', '', '', '', '', '', '', '510');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `introduce` varchar(255) DEFAULT NULL COMMENT '简要介绍',
  `content` text COMMENT '具体内容',
  `starttime` datetime DEFAULT NULL COMMENT '课程开始时间',
  `endtime` datetime DEFAULT NULL COMMENT '课程结束时间',
  `cost` int(11) DEFAULT NULL COMMENT '报名费用',
  `imagesurl` varchar(255) DEFAULT NULL COMMENT '图片的url',
  `typeid` int(11) DEFAULT NULL COMMENT '类型id',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `registrationstartdate` datetime DEFAULT NULL COMMENT '报名开始的时间',
  `registrationenddate` datetime DEFAULT NULL COMMENT '报名截止的时间',
  `status` int(11) DEFAULT NULL COMMENT '0表示保存，1表示提交审核，2表示驳回，3表示审核通过',
  `duration` varchar(255) DEFAULT NULL COMMENT '活动持续时间',
  `f_year` varchar(20) DEFAULT '' COMMENT '学年',
  `f_term` varchar(20) DEFAULT '' COMMENT '学期',
  `reasons_for_failure` text COMMENT '驳回原因',
  `club_id` varchar(200) DEFAULT '' COMMENT '机构代码',
  `news_club_name` varchar(30) DEFAULT '' COMMENT '社区信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '乡村振兴看福建｜城郊乡：“一根参”的成长与使命', '乡村振兴看福建｜城郊乡：“一根参”的成长与使命', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">编者按：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">福建“八山一水一分田”，发展特色现代农业的资源禀赋得天独厚。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">近年来，福建走特色路、打特色牌，发展茶叶、蔬菜、水果、水产、食用菌等十大乡村特色产业，已走出一条独具福建特色的乡村产业振兴之路。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">为了讲好福建产业富民故事，传播八闽乡村振兴声音，在中央广播电视总台福建总站与福建省农业农村厅的指导下，央广网福建频道经过两个月的实地调研采访，从11月16日起推出“乡村振兴看福建|特色小镇的产业富民故事”系列报道。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">眼底幽妍地，人间长寿乡。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">柘荣县是国家生态文明建设示范县，位于福建省东北部，是中国长寿之乡，也是全国最大、最活跃的太子参产销区。而城郊乡又是柘荣太子参的核心产区。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">城郊乡人工栽培太子参已有近百年历史，优越的生态环境和宜人的气候为太子参生长提供了得天独厚的自然条件。</span></p><p><img src=\"https://pics7.baidu.com/feed/b58f8c5494eef01f09c567c97c49e52cbd317d2d.jpeg?token=2b3a9bed59ae1501434736885c4cc9b7\" class=\"_3yZQZ9OxCCD0QVw16rnEsS\" style=\"border: 0px; width: 599px; border-radius: 13px;\" width=\"640\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">天人药业太子参基地航拍图（央广网发 天人药业供图）</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">乡村振兴的“锚点”</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">作为“中国太子参之乡”，城郊乡的太子参产业与脱贫攻坚、乡村振兴密切相关。种植太子参一直是城郊乡农民的重要收入来源。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">柘荣县太子参年种植面积超过3万亩，产销量占全国的2/3以上。目前，该乡太子参种植面积占柘荣县的1/3，全产业链产值达8.5亿元。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">近年来，城郊乡大力推广“公司+协会+专业合作社+基地+农户”的经营模式，全县首家天人际会种植产业联合体通过搭建中药材种植、加工炮制、包装运输、仓储寄存、代销贸易、质量追溯、大数据管理等一体化系列服务平台，进行联农带农协同发展。</span></p><p><img src=\"https://pics6.baidu.com/feed/cb8065380cd79123316212523883258bb3b78053.jpeg?token=afe5148024a475bc6bc8ccb3902a2736\" class=\"_3yZQZ9OxCCD0QVw16rnEsS\" style=\"border: 0px; width: 599px; border-radius: 13px;\" width=\"640\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">富溪太子参园（央广网发 吴霖摄）</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">今年51岁的林斌斌是城郊乡际头村最大的种植户，同时也是省级家庭农场示范场的农场主。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">“我种植太子参20多年了，近几年综合天气等原因，收成最好的是2020年，那年我种植了10多亩，每亩收成300多斤，总共收了4000多斤，一共卖了10多万元。”林斌斌告诉记者。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">相比其他种植户每亩200多斤的产量，林斌斌种植的太子参每亩产量能达到300多斤。作为太子参的老种植户，林斌斌经常将自己的经验分享给其他种植户，偶尔还客串一下“科特派”的角色。</span></p><p><img src=\"https://pics3.baidu.com/feed/9922720e0cf3d7ca031ebf1a6aa8c2006a63a937.jpeg?token=53979650cb79ceb736a838851e6cce1f\" class=\"_3yZQZ9OxCCD0QVw16rnEsS\" style=\"border: 0px; width: 599px; border-radius: 13px;\" width=\"640\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">太子参迎来丰收，种植户正在晾晒，脸上露出喜悦的笑容（央广网发 城郊乡人民政府供图）</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">据了解，在城郊乡，像林斌斌这样的种植大户还有很多。近年来，城郊乡聚焦农业特色产业，创新农业生产经营体制，培育省级示范社、家庭农场8家，带动蓝莓、葡萄、猕猴桃、水蜜桃、覆盆子等特色水果种植面积达4000亩以上，推进农业产业规模化、标准化、品牌化发展，促进农民增收致富，加快乡村振兴的步伐。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">2020年9月28日，为了支持太子参产业发展，工商银行宁德分行为当地太子参商户成功发放了第一笔金额为270万元的“太子参贷”。这也是继“海参仓单贷”、“大黄鱼仓单贷”、“鲍鱼仓单贷”后该行创新推出的仓单质押类普惠金融创新模式系列产品。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">科技助力，产业向价值链高端迈进</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">2019年，农业农村部“产业强镇”项目花落柘荣县城郊乡，为柘荣太子参产业发展装上了新引擎。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">乡村要振兴，产业是支撑。产业的发展离不开科技的助力，为了将以太子参为主导产业的生物医药循环经济做大做强，2020年12月，太子参植物工厂“天人太子参植物工厂”在城郊乡投产运行。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">该工厂融合了现代生物技术与智能信息技术，为生产绿色、优质、安全的中药材提供了有力保障。其中，城郊乡农业产业强镇示范建设项目的子项目——天人太子参植物工厂AI果项目实现了太子参脱毒苗规模化生产，满足5000亩良种繁育基地建设需要。</span></p><p><img src=\"https://pics0.baidu.com/feed/38dbb6fd5266d0163b5230f7039ca80e37fa35e2.jpeg?token=d71ddf69b57f57a2f98c1e1cba95a53e\" class=\"_3yZQZ9OxCCD0QVw16rnEsS\" style=\"border: 0px; width: 599px; border-radius: 13px;\" width=\"640\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">天人药业总工程师江慧容在育种基地查看太子参种苗生长情况（央广网记者 罗晓英摄）</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">“我们从2015年开始建立种子资源圃，跟以往传统的种植方法相比，目前选育出来的种源‘天抗1号’在选育的时候就将叶斑病和花叶病的病毒剥离，以此减少太子参在田间生长期间的打药次数，从而提升太子参的品质也让种植户增收，产量能增加20%到30%。”天人药业总工程师江慧容说。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">据了解，天人药业统一向种植户提供种源清晰、明确的“天抗1号”脱病毒种苗，年生产800万粒，可满足全县太子参种苗供应，由此实现了太子参种源统一管理，种苗统一供应，保障了太子参种业源头绿色、优质、安全、环保。此外，天人药业还为种植户免费提供冷链仓库，供种植户完好保存太子参，解决太子参储存难点。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">“2020年我们采购了8000万元的太子参，今年受茶产业的冲击，目前收了3、4千万元，后期还会继续采购。我们的联合体成员可以通过两种销售运营模式，第一是订单合作模式，签订太子参收购合同，联合体进行统一销售；第二是采用联合体成员基地共建合作模式，基地产出的鲜参，联合体在采收前一个月进行采样检测，检测报告合格后，联合体依据当前行情价，签订优质优价订单收购合同。”天人药业助理总经理陈阿琴介绍称。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">目前，城郊乡以天人药业、力捷迅、贝迪药业等为代表的一批太子参深加工企业开始向价值链高端迈进，产品覆盖化学制剂、中成药、中药饮片、医疗器械和兽药等多个领域。</span></p><p><img src=\"https://pics5.baidu.com/feed/b03533fa828ba61e45425105dd83eb03314e59a9.jpeg?token=b79fa2c24e7117051f25e54486aae1d8\" class=\"_3yZQZ9OxCCD0QVw16rnEsS\" style=\"border: 0px; width: 599px; border-radius: 13px;\" width=\"640\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">农户正在参园中忙碌（央广网发 天人药业供图）</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">“一地两用，双轮驱动”</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">近年来，随着茶叶收益的凸显，为了推动农业高质量发展，提升土地综合收益，城郊乡开始探索“一地两用”——茶叶套种太子参的模式。随着新模式的广泛推广，城郊乡已初步形成太子参与茶产业“双轮驱动”的格局，进一步夯实了乡村振兴的产业根基。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">“为助力柘荣太子参产业发展，柘荣县先后制定出台了《关于加快太子参产业发展的若干意见》等产业发展扶持政策。安排了1000万元的特色农业发展专项资金，通过‘以奖代补’的形式扶持发展包括太子参产业在内的特色农业。乡党委、政府也以产业强镇建设为契机，支持天人药业建设天人太子参植物工厂AI果，进一步完善我县太子参全产业链。”城郊乡乡长游奇锋表示。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">在做大做强太子参和茶叶等主导产业的同时，城郊乡充分挖掘其他资源优势，打造生态农业旅游、发展水果采摘等多种辅助产业。以剪纸特色村靴岭尾村为代表的“文创农旅”多重融合的乡村发展模式正在城郊乡悄然兴起。</span></p><p><img src=\"https://pics1.baidu.com/feed/8694a4c27d1ed21b1164867936d9a1cd50da3f39.jpeg?token=930a6c0da55075ba67c32ab1d8342e0f\" class=\"_3yZQZ9OxCCD0QVw16rnEsS\" style=\"border: 0px; width: 599px; border-radius: 13px;\" width=\"640\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">参园晨曦（央广网发 吴霖摄）</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">走进环境清新的靴岭尾村，剪纸文化气息扑面而来。在靴岭尾村，家家户户都保存着传统剪纸习俗，随着剪纸艺术的传承与发展，涌现出了袁秀莹、郑平芳、袁作干等一批优秀民间艺人。靴岭尾村“文创田园”的打造，已成为助力该村振兴发展的动力。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">近年来，城郊乡通过推广标准化种植、拓展产业链等措施，全力推动太子参产业发展，并将产业发展与乡村振兴有效衔接，切实保障了农民的稳定增收。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">从曾经的穷乡僻壤到如今的诗意田园，当前，城郊乡以省级乡村振兴特色乡镇建设为契机，以产业发展为基础，以农旅融合发展为抓手，正在走出一条一二三产融合发展的乡村振兴之路。（央广网记者 罗晓英）</span></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>', '2021-12-01 21:03:39', '2021-12-04 21:03:49', '6666', '2021/11/29/1_61a4d122d21648.99640179.jpg', null, '', '2021-11-29 21:03:54', '2021-11-30 21:03:56', '0', '42', '2020-2021', '上学期', '', '', '');
INSERT INTO `course` VALUES ('2', '452', '452', '452', null, null, null, null, null, null, null, null, null, '452', '', '', null, '', '');

-- ----------------------------
-- Table structure for `registration`
-- ----------------------------
DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '报名表id',
  `userid` int(11) DEFAULT NULL COMMENT '对应用户的id',
  `courseid` int(11) DEFAULT NULL COMMENT '对应课程的id',
  `registrationtime` datetime DEFAULT NULL COMMENT '报名的时间',
  `status` int(11) DEFAULT NULL COMMENT '状态 0为报名不成功 1为报名成功未付款 2为报名成功并付款',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registration
-- ----------------------------
INSERT INTO `registration` VALUES ('1', '1', '1', '2021-11-29 22:00:53', '2');

-- ----------------------------
-- Table structure for `test_err`
-- ----------------------------
DROP TABLE IF EXISTS `test_err`;
CREATE TABLE `test_err` (
  `f_id` int(4) NOT NULL AUTO_INCREMENT,
  `f_msg` text,
  `f_time` datetime DEFAULT NULL,
  `f_username` char(20) DEFAULT '' COMMENT '测试员',
  `f_callname` varchar(200) DEFAULT '' COMMENT '调用函数名称',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=720765 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_err
-- ----------------------------

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户的id',
  `openid` varchar(50) DEFAULT NULL COMMENT '用户的微信openid',
  `unionid` varchar(50) DEFAULT NULL COMMENT '用户微信unionid',
  `header` varchar(255) DEFAULT NULL COMMENT '头像',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `education` varchar(255) DEFAULT NULL COMMENT '在读学历',
  `nikename` varchar(255) DEFAULT NULL COMMENT '名称',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号',
  `schoolname` varchar(100) DEFAULT NULL COMMENT '学校名称',
  `grade` int(11) DEFAULT NULL COMMENT '年级',
  `country` varchar(255) DEFAULT NULL COMMENT '国家',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL COMMENT '市',
  `gender` int(11) DEFAULT NULL COMMENT '性别',
  `registerdate` date DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '123', '123', null, '张三', '中学生', '三爷', '0', '123456789', '华南师范大学附属中学', '12', '中国', '广东省', '广州市', '1', '2021-11-29');
INSERT INTO `userinfo` VALUES ('2', '123', '123', null, null, null, null, '0', null, null, '0', null, null, null, '0', null);
INSERT INTO `userinfo` VALUES ('3', '1234', '1234', null, null, null, null, '0', null, null, '0', null, null, null, '0', null);
INSERT INTO `userinfo` VALUES ('4', '12345', '1234', null, null, null, null, '0', null, null, '0', null, null, null, '0', null);
INSERT INTO `userinfo` VALUES ('5', '123456', '1234', null, null, null, null, '0', null, null, '0', null, null, null, '0', null);
INSERT INTO `userinfo` VALUES ('6', '1234567', '12345', null, null, null, null, '0', null, null, '0', null, null, null, '0', null);
DROP TRIGGER IF EXISTS `insert_date`;
DELIMITER ;;
CREATE TRIGGER `insert_date` BEFORE INSERT ON `test_err` FOR EACH ROW begin
 set new.f_time= now();
 end
;;
DELIMITER ;
