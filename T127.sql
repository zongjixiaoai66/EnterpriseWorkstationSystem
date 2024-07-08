/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t127`;
CREATE DATABASE IF NOT EXISTS `t127` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t127`;

DROP TABLE IF EXISTS `bumenxinxi`;
CREATE TABLE IF NOT EXISTS `bumenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenzhuguan` varchar(200) NOT NULL COMMENT '部门主管',
  `bumenrenshu` int DEFAULT NULL COMMENT '部门人数',
  `bumendianhua` varchar(200) DEFAULT NULL COMMENT '部门电话',
  `bumenjieshao` longtext COMMENT '部门介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bumenbianhao` (`bumenbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620875458268 DEFAULT CHARSET=utf8mb3 COMMENT='部门信息';

DELETE FROM `bumenxinxi`;
INSERT INTO `bumenxinxi` (`id`, `addtime`, `bumenbianhao`, `bumenmingcheng`, `bumenzhuguan`, `bumenrenshu`, `bumendianhua`, `bumenjieshao`) VALUES
	(21, '2021-05-13 02:57:18', '部门编号1', '部门名称1', '部门主管1', 1, '部门电话1', '部门介绍1'),
	(22, '2021-05-13 02:57:18', '部门编号2', '部门名称2', '部门主管2', 2, '部门电话2', '部门介绍2'),
	(23, '2021-05-13 02:57:18', '部门编号3', '部门名称3', '部门主管3', 3, '部门电话3', '部门介绍3'),
	(24, '2021-05-13 02:57:18', '部门编号4', '部门名称4', '部门主管4', 4, '部门电话4', '部门介绍4'),
	(25, '2021-05-13 02:57:18', '部门编号5', '部门名称5', '部门主管5', 5, '部门电话5', '部门介绍5'),
	(26, '2021-05-13 02:57:18', '部门编号6', '部门名称6', '部门主管6', 6, '部门电话6', '部门介绍6'),
	(1620875458267, '2021-05-13 03:10:57', '1620875328521', '士大夫收到', '士大夫收到', 33, '11122221111', '<p>第三方士大夫士大夫付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付付</p><p><img src="http://localhost:8080/springbooti8ts3/upload/1620875454195.jpg"></p><p><br></p><p><img src="http://localhost:8080/springbooti8ts3/upload/1620875457075.jpg"></p><p><br></p>');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbooti8ts3/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbooti8ts3/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbooti8ts3/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `gongweifenpei`;
CREATE TABLE IF NOT EXISTS `gongweifenpei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `fenpeigongwei` varchar(200) DEFAULT NULL COMMENT '分配工位',
  `fenpeiyuanyin` longtext COMMENT '分配原因',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620875776318 DEFAULT CHARSET=utf8mb3 COMMENT='工位分配';

DELETE FROM `gongweifenpei`;
INSERT INTO `gongweifenpei` (`id`, `addtime`, `yuangonggonghao`, `yuangongxingming`, `fenpeigongwei`, `fenpeiyuanyin`, `dengjiriqi`) VALUES
	(51, '2021-05-13 02:57:18', '员工工号1', '员工姓名1', '分配工位1', '分配原因1', '2021-05-13'),
	(52, '2021-05-13 02:57:18', '员工工号2', '员工姓名2', '分配工位2', '分配原因2', '2021-05-13'),
	(53, '2021-05-13 02:57:18', '员工工号3', '员工姓名3', '分配工位3', '分配原因3', '2021-05-13'),
	(54, '2021-05-13 02:57:18', '员工工号4', '员工姓名4', '分配工位4', '分配原因4', '2021-05-13'),
	(55, '2021-05-13 02:57:18', '员工工号5', '员工姓名5', '分配工位5', '分配原因5', '2021-05-13'),
	(56, '2021-05-13 02:57:18', '员工工号6', '员工姓名6', '分配工位6', '分配原因6', '2021-05-13'),
	(1620875776317, '2021-05-13 03:16:15', '11', '士大夫', '第三方都是士大夫', '<p>电饭锅地方给对方给对方地方电饭锅地方给对方方法反反复复付反反复复付芳芳芳芳芳芳芳芳发</p>', '2021-05-13');

DROP TABLE IF EXISTS `gongweixinxi`;
CREATE TABLE IF NOT EXISTS `gongweixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongweibianhao` varchar(200) DEFAULT NULL COMMENT '工位编号',
  `gongweimingcheng` varchar(200) DEFAULT NULL COMMENT '工位名称',
  `gongweijieshao` longtext COMMENT '工位介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongweibianhao` (`gongweibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620875752177 DEFAULT CHARSET=utf8mb3 COMMENT='工位信息';

DELETE FROM `gongweixinxi`;
INSERT INTO `gongweixinxi` (`id`, `addtime`, `gongweibianhao`, `gongweimingcheng`, `gongweijieshao`) VALUES
	(31, '2021-05-13 02:57:18', '工位编号1', '工位名称1', '工位介绍1'),
	(32, '2021-05-13 02:57:18', '工位编号2', '工位名称2', '工位介绍2'),
	(33, '2021-05-13 02:57:18', '工位编号3', '工位名称3', '工位介绍3'),
	(34, '2021-05-13 02:57:18', '工位编号4', '工位名称4', '工位介绍4'),
	(35, '2021-05-13 02:57:18', '工位编号5', '工位名称5', '工位介绍5'),
	(36, '2021-05-13 02:57:18', '工位编号6', '工位名称6', '工位介绍6'),
	(1620875752176, '2021-05-13 03:15:51', '1620875625516', '第三方都是士大夫', '<p>士大夫是发送到士大夫是士大夫是发送到士大夫是士大夫是发送到士大夫是士大夫是发送到士大夫是士大夫是发送到士大夫是</p><p><img src="http://localhost:8080/springbooti8ts3/upload/1620875750985.jpg"></p>');

DROP TABLE IF EXISTS `shiyongqingkuang`;
CREATE TABLE IF NOT EXISTS `shiyongqingkuang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongweimingcheng` varchar(200) DEFAULT NULL COMMENT '工位名称',
  `zaiweirenshu` int DEFAULT NULL COMMENT '在位人数',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620875762568 DEFAULT CHARSET=utf8mb3 COMMENT='使用情况';

DELETE FROM `shiyongqingkuang`;
INSERT INTO `shiyongqingkuang` (`id`, `addtime`, `gongweimingcheng`, `zaiweirenshu`, `dengjiriqi`, `beizhu`) VALUES
	(41, '2021-05-13 02:57:18', '工位名称1', 1, '2021-05-13', '备注1'),
	(42, '2021-05-13 02:57:18', '工位名称2', 2, '2021-05-13', '备注2'),
	(43, '2021-05-13 02:57:18', '工位名称3', 3, '2021-05-13', '备注3'),
	(44, '2021-05-13 02:57:18', '工位名称4', 4, '2021-05-13', '备注4'),
	(45, '2021-05-13 02:57:18', '工位名称5', 5, '2021-05-13', '备注5'),
	(46, '2021-05-13 02:57:18', '工位名称6', 6, '2021-05-13', '备注6'),
	(1620875762567, '2021-05-13 03:16:01', '第三方都是士大夫', 444, '2021-05-13', '的广泛地给对方广泛地');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1620875394637, '11', 'yuangong', '员工', 'm1bsf5n5qc9dgg4hhfrn71l1m67p441f', '2021-05-13 03:09:57', '2021-05-13 04:16:24'),
	(2, 1, 'abo', 'users', '管理员', '4rifptt0lsm5e5qramrlwlnu0ahyts4h', '2021-05-13 03:10:23', '2024-04-13 13:54:33'),
	(3, 11, '员工1', 'yuangong', '员工', '17863vddg2tjht7eieogkf9goijslg6s', '2024-04-13 12:52:27', '2024-04-13 13:52:27');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-13 02:57:18');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620875394638 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `yuangonggonghao`, `mima`, `yuangongxingming`, `xingbie`, `nianling`, `bumen`, `lianxidianhua`, `tupian`) VALUES
	(11, '2021-05-13 02:57:18', '员工1', '123456', '员工姓名1', '男', '年龄1', '部门1', '13823888881', 'http://localhost:8080/springbooti8ts3/upload/yuangong_tupian1.jpg'),
	(12, '2021-05-13 02:57:18', '员工2', '123456', '员工姓名2', '男', '年龄2', '部门2', '13823888882', 'http://localhost:8080/springbooti8ts3/upload/yuangong_tupian2.jpg'),
	(13, '2021-05-13 02:57:18', '员工3', '123456', '员工姓名3', '男', '年龄3', '部门3', '13823888883', 'http://localhost:8080/springbooti8ts3/upload/yuangong_tupian3.jpg'),
	(14, '2021-05-13 02:57:18', '员工4', '123456', '员工姓名4', '男', '年龄4', '部门4', '13823888884', 'http://localhost:8080/springbooti8ts3/upload/yuangong_tupian4.jpg'),
	(15, '2021-05-13 02:57:18', '员工5', '123456', '员工姓名5', '男', '年龄5', '部门5', '13823888885', 'http://localhost:8080/springbooti8ts3/upload/yuangong_tupian5.jpg'),
	(16, '2021-05-13 02:57:18', '员工6', '123456', '员工姓名6', '男', '年龄6', '部门6', '13823888886', 'http://localhost:8080/springbooti8ts3/upload/yuangong_tupian6.jpg'),
	(1620875394637, '2021-05-13 03:09:54', '11', '11', '士大夫', '男', '11', '士大夫收到', '11122211111', 'http://localhost:8080/springbooti8ts3/upload/1620875414947.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
