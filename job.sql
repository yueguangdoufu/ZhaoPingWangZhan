/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : job

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-05-09 00:23:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commond
-- ----------------------------
DROP TABLE IF EXISTS `commond`;
CREATE TABLE `commond` (
  `commond_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `info_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`commond_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commond
-- ----------------------------
INSERT INTO `commond` VALUES ('1', '培训机构太多，你找不到的', '2', '2017-04-30 18:08:15', '2');
INSERT INTO `commond` VALUES ('2', '这个职位不错，可以考虑', '2', '2017-04-30 18:09:15', '2');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comtype` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `empcount` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `m_tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('5', '青果软件公司', null, '12', '私人公司', '专业信息化软件公司，承接大型项目', '100', '湖南长沙', '907651927@qq.com', '0532-55626698', '', '');
INSERT INTO `company` VALUES ('6', '鲁能软件', null, '16', '国企', '电力信息化软件领导者', '500-1000', '山东济南', '1265502125@qq.com', '0532-1653233', '刘先生', '18753202373');
INSERT INTO `company` VALUES ('7', '浪潮', null, '17', '国企', '山东省大型信息技术公司，硬软件均包含', '400-600', '山东济南', '565641633@qq.com', '0532-68963565', '李先生', '13256658963');
INSERT INTO `company` VALUES ('10', '青岛海信', null, '26', '国企', '这家伙很懒，什么都没有留下。', '500', '山东青岛', '55151561556@qq.com', '', '温先生', '12235645456');

-- ----------------------------
-- Table structure for com_resume
-- ----------------------------
DROP TABLE IF EXISTS `com_resume`;
CREATE TABLE `com_resume` (
  `resume_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `resume_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `look` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_resume
-- ----------------------------

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `marry` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `jobtype` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `jobstatus` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `resume_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `hj` varchar(255) DEFAULT NULL,
  `waddress` varchar(255) DEFAULT NULL,
  `study` varchar(255) DEFAULT NULL,
  `work` varchar(255) DEFAULT NULL,
  `family` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1', '温凯之', '男', '2017-04-29', '否', '本科', '18753202373', '907651927@qq.com', '', '山东济南', '', '10000.00', '否', '/recruit/photo/2017-04-30_公司二维码.jpg', 'java工程师', '2', '中国', '1516465131', '汉族', '', '', '', '', '', '火星语四级');
INSERT INTO `emp` VALUES ('2', '张三', '男', '1995-08-12', '否', '本科', '0532-56235662', '2251804131@qq.com', '活泼大方，幽默搞笑', '山东青岛市南区', '谷歌、微软', '10000000.00', '否', '/recruit/photo/2017-05-01_公司二维码.jpg', 'Android开发', '13', '中国', '2251804131', '山东济南', '美国硅谷', '软件工程师顶级', 'BAT实习', '全的', 'facebook、QQ、MSN', '火星四级');
INSERT INTO `emp` VALUES ('3', '张三1', '男', '2017-05-01', '否', '本科', '0532-8873521', '907651927@qq.com', '活泼', '山东烟台', '软工', '8000000.00', '否', '/recruit/photo/2017-05-01_7.jpg', 'IOS开发工程师', '14', '中国', '2280514639', '山东莱芜', '硅谷', '中国青年创业大赛一等奖', '微软', '妈妈爸爸', '各种项目', '外语8级');
INSERT INTO `emp` VALUES ('4', '张三2', '男', '2017-05-09', '否', '本科', '0532-56235662', '2251804131@qq.com', '', '中国台湾', '程序员', '200000.00', '否', '/recruit/photo/2017-05-01_DOM树.jpg', 'C++开发工程师', '15', '中国', '565641633', '中国香港', '北京', '', '', '', '', '六级');
INSERT INTO `emp` VALUES ('5', '王五', '男', '', '否', '本科', '', '', '', '', '', '10000.00', '', null, '', '18', '中国', '', '', '', '', '', '', '', '');
INSERT INTO `emp` VALUES ('6', '王五', '男', '', '否', '本科', '', '', '', '', '', '10000.00', '', '/recruit/photo/2017-05-01_公司二维码.jpg', '', '18', '中国', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for emp_look
-- ----------------------------
DROP TABLE IF EXISTS `emp_look`;
CREATE TABLE `emp_look` (
  `look_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `com_id` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`look_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_look
-- ----------------------------

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `isApply` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('2', 'java', '求一份java工程师的工作,薪资大约5K', '2017-04-30 13:39:06', '2', '1', '1');
INSERT INTO `info` VALUES ('5', 'Android工程师', '求一份android开发的职位，薪资大约10K', '2017-05-01 15:05:31', '13', '1', '1');
INSERT INTO `info` VALUES ('6', '求一份销售岗位', '薪资面议，期待稳定', '2017-05-01 15:13:32', '13', '1', '1');
INSERT INTO `info` VALUES ('7', 'IOS开发工程职位', '想找一份IOS开发工程师的职位，目标薪资20000,5年工作经验', '2017-05-01 15:23:34', '14', '1', '1');
INSERT INTO `info` VALUES ('8', '微信开发人员', '想找到一份微信开发工作，薪资面议，java开发3年工作经验', '2017-05-01 15:24:24', '14', '1', '1');
INSERT INTO `info` VALUES ('9', 'C++开发工程师', '求一份C++开发工程师，薪资自己看着给', '2017-05-01 15:45:21', '15', '1', '1');
INSERT INTO `info` VALUES ('10', 'C语言开发工程师', '求一份C语言开发工程师，硬件编程', '2017-05-01 15:45:57', '15', '1', '1');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` int(11) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `job_PersonCount` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `job_status` varchar(255) DEFAULT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('2', '5', 'java工程师', '1', '本科以上', '四级以上', null, '湖南长沙', '5k-8k', '上市公司', '', '', 'java后端开发');
INSERT INTO `job` VALUES ('3', '5', 'Android开发工程师', '5', '本科', 'Cet4', null, '山东青岛市南区', '5k-10k', '上市公司', '', '', '主要完成android业务的处理，熟悉四大组件、自定义view会用即可');
INSERT INTO `job` VALUES ('4', '5', 'IOS开发工程师', '2', '本科', '英语4级', null, '济南', '6k+', '上市公司', '', '', 'ios手机端开发，界面、逻辑等等');
INSERT INTO `job` VALUES ('5', '6', '秘书', '2', '本科', '六级以上', null, '山东济南', '8K+', '国企', '', '', '主要负责公司的文秘工作，辅助领导进行一般性的工作');
INSERT INTO `job` VALUES ('6', '6', '硬件开发工程师', '5', '本科', '六级以上', null, '山东济南', '10K+', '上市公司', '', '', '主要负责公司的硬件方面编程，完成主要的硬件开发工作');
INSERT INTO `job` VALUES ('7', '6', 'CTO', '1', '硕士', '无具体要求', null, '山东济南', '20K+', '私人公司', '', '', '负责管理公司的日常事务，把握和掌控公司的业务动向和技术走势，带领公司走向成功');
INSERT INTO `job` VALUES ('8', '6', 'PM', '1', '硕士', '无具体要求', null, '山东济南', '15K+', '私人公司', '', '', '负责管理公司的技术交流，业务谈判，既要熟悉业务，也要对技术有很深的造诣，电商优先');
INSERT INTO `job` VALUES ('9', '7', '数据库工程师', '5', '本科', '4级', null, '山东青岛市南区', '10k+', '上市公司', '', '', '对数据库有很深入的了解，熟悉ORACLE、mysql、sql server等主流数据库');

-- ----------------------------
-- Table structure for top_job
-- ----------------------------
DROP TABLE IF EXISTS `top_job`;
CREATE TABLE `top_job` (
  `top_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `job_name` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`top_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of top_job
-- ----------------------------
INSERT INTO `top_job` VALUES ('1', '2', 'java工程师', '23');
INSERT INTO `top_job` VALUES ('2', '3', 'Android开发工程师', '1');
INSERT INTO `top_job` VALUES ('3', '4', 'IOS开发工程师', '1');
INSERT INTO `top_job` VALUES ('4', '5', '秘书', '1');
INSERT INTO `top_job` VALUES ('5', '6', '硬件开发工程师', '1');
INSERT INTO `top_job` VALUES ('6', '7', 'CTO', '0');
INSERT INTO `top_job` VALUES ('7', '8', 'PM', '1');
INSERT INTO `top_job` VALUES ('8', '9', '数据库工程师', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'wikey', '123', null, null, '1');
INSERT INTO `user` VALUES ('11', 'admin', '123456', null, null, '3');
INSERT INTO `user` VALUES ('12', 'wikeygo', '123456', null, null, '2');
INSERT INTO `user` VALUES ('13', 'zhangsan', '123456', null, null, '1');
INSERT INTO `user` VALUES ('14', 'zhangsan1', '123456', null, null, '1');
INSERT INTO `user` VALUES ('15', 'zhangsan2', '123456', null, null, '1');
INSERT INTO `user` VALUES ('16', 'langchao', '123456', null, null, '2');
INSERT INTO `user` VALUES ('17', 'sdqdgr', '123456', null, null, '2');
INSERT INTO `user` VALUES ('18', 'wangwu', '123456', '', '', '1');
INSERT INTO `user` VALUES ('29', '11111', '1', null, null, '1');
INSERT INTO `user` VALUES ('30', '11333', '1', null, null, '1');
