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
-- 表的结构 `fa_participant`
--

CREATE TABLE IF NOT EXISTS `fa_participant` (
  `id` int(3) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `falist_id` int(3) NOT NULL COMMENT '参加的拼单号',
  `uid` int(3) NOT NULL COMMENT '用户id',
  `money` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '总价',
  `commoditys` varchar(30) NOT NULL COMMENT '购买的商品',
  `com_num` varchar(30) NOT NULL COMMENT '商品数量，与commoditys对应',
  `is_payment` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否付款，1已付款，0未付款',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='参与拼单用户表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `fa_participant`
--

INSERT INTO `fa_participant` (`id`, `falist_id`, `uid`, `money`, `commoditys`, `com_num`, `is_payment`) VALUES
(1, 1, 2, '0.00', '1', '2', 0),
(2, 1, 1, '10.00', '2', '1', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
