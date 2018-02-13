-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 �?02 �?13 �?07:02
-- 服务器版本: 5.5.53
-- PHP 版本: 5.6.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `fightalone`
--

-- --------------------------------------------------------

--
-- 表的结构 `fa_falist`
--

CREATE TABLE IF NOT EXISTS `fa_falist` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '拼单id',
  `name` varchar(20) NOT NULL COMMENT '拼单名称',
  `introduce` varchar(100) NOT NULL COMMENT '拼单介绍',
  `start_time` datetime NOT NULL COMMENT '拼单开始时间',
  `end_time` datetime NOT NULL COMMENT '拼单结束时间',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '拼单状态1为进行中，0为停止',
  `uid` int(3) NOT NULL COMMENT '拼单发起人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='拼单列表' AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `fa_falist`
--

INSERT INTO `fa_falist` (`id`, `name`, `introduce`, `start_time`, `end_time`, `state`, `uid`) VALUES
(1, '黄焖鸡米饭', '黄焖鸡米饭又叫香鸡煲，浓汁鸡煲饭。属于鲁菜系家常菜品，起源于山东省济南市。', '2018-02-11 05:29:23', '2018-02-11 15:42:50', 1, 1),
(2, '胡来烧饼', '烧饼是浙江天台传统名点。它是以上好面粉发酵后，拌油酥，捏成饼皮，将用肥膘、细葱剁碎作的馅捏进去做成饼状', '2018-02-11 14:21:24', '2018-02-11 14:26:37', 1, 2),
(3, '老鸭煲', '老鸭煲是用鸭作为主料，酸萝卜、金华火腿、香菇、干笋作为辅料，葱、姜、盐、酱油、料酒、白胡椒粉、鸡精、高汤、食用油作为调料熬制的一道汤。', '2018-02-12 03:12:46', '2018-02-12 20:45:47', 0, 2),
(4, '沙县大酒店', '沙县，古名沙阳，简称虬。隶属福建省三明市，位于福建省中部偏北，闽江支流沙溪下游，位于南平和三明市之间', '2018-02-16 02:30:26', '2018-02-22 00:00:00', 1, 3),
(5, '阿能大酒店', '“阿能”是一个开面店的师傅的小名,1996年,夫妇二人在桐乡市区开了家小面馆,取名“阿能面店”。', '2018-02-12 08:27:38', '2018-02-11 22:29:24', 1, 1),
(6, '鸡脚', '鸡爪，又名鸡掌、凤爪、凤足，是鸡的脚爪，可供食用。鸡爪在美食家的菜谱上不叫鸡爪，而称做凤爪。在我国南方，凤爪可是一道上档次的名菜，其烹饪方法也较复杂。', '2018-02-22 13:13:00', '2018-02-11 13:22:00', 1, 1),
(7, '金拱门', '麦当劳（中国）有限公司于2017年10月12日正式更名为金拱门（中国）有限公司，其各地分公司也正陆续更名。', '2018-02-16 10:33:32', '2018-02-17 17:33:39', 1, 3),
(8, '老爷爷', '肯德基（KentuckyFried Chicken，肯塔基州炸鸡），简称KFC，是美国跨国连锁餐厅之一，也是世界第二大速食及最大炸鸡连锁企业，1952年由创始人哈兰·山德士创建', '2018-02-17 09:20:38', '2018-02-20 14:40:41', 0, 3),
(9, '青青草原', '别看我只是一只羊，青草也为我变得更香', '2018-02-16 00:00:00', '2018-02-17 00:00:00', 1, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
