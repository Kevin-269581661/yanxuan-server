-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019-03-07 15:54:38
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xx`
--

-- --------------------------------------------------------

--
-- 表的结构 `xx_banner`
--

CREATE TABLE `xx_banner` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL COMMENT '轮播图url',
  `pid` int(11) DEFAULT NULL COMMENT '对应商品编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_banner`
--

INSERT INTO `xx_banner` (`id`, `img_url`, `pid`) VALUES
(1, 'http://127.0.0.1:3030/img/banner/banner01.jpg', 1),
(2, 'http://127.0.0.1:3030/img/banner/banner02.jpg', 2),
(3, 'http://127.0.0.1:3030/img/banner/banner03.jpg', 3),
(4, 'http://127.0.0.1:3030/img/banner/banner04.jpg', 4);

-- --------------------------------------------------------

--
-- 表的结构 `xx_gongge`
--

CREATE TABLE `xx_gongge` (
  `id` int(11) NOT NULL,
  `title` varchar(10) DEFAULT NULL COMMENT '类名',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图标的url',
  `sid` int(11) DEFAULT NULL COMMENT '对应商品类别编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_gongge`
--

INSERT INTO `xx_gongge` (`id`, `title`, `img_url`, `sid`) VALUES
(1, '居家', 'http://127.0.0.1:3030/img/gongge/icon01.png', 1),
(2, '鞋包配饰', 'http://127.0.0.1:3030/img/gongge/icon02.png', 2),
(3, '服饰', 'http://127.0.0.1:3030/img/gongge/icon03.png', 3),
(4, '电器', 'http://127.0.0.1:3030/img/gongge/icon04.png', 4),
(5, '婴童', 'http://127.0.0.1:3030/img/gongge/icon05.png', 5),
(6, '饮食', 'http://127.0.0.1:3030/img/gongge/icon06.png', 6),
(7, '洗护', 'http://127.0.0.1:3030/img/gongge/icon07.png', 7),
(8, '餐厨', 'http://127.0.0.1:3030/img/gongge/icon08.png', 8),
(9, '文体', 'http://127.0.0.1:3030/img/gongge/icon09.png', 9),
(10, '特色区', 'http://127.0.0.1:3030/img/gongge/icon10.png', 10);

-- --------------------------------------------------------

--
-- 表的结构 `xx_new_list`
--

CREATE TABLE `xx_new_list` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL COMMENT '商品图的url',
  `title` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `info` varchar(20) DEFAULT NULL COMMENT '商品的介绍',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `pid` int(11) DEFAULT NULL COMMENT '对应商品编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_new_list`
--

INSERT INTO `xx_new_list` (`id`, `img_url`, `title`, `info`, `price`, `pid`) VALUES
(1, 'http://127.0.0.1:3030/img/products/product01.png', '女式式舒适中筒袜', '“优质棉绒，细腻平纹，百搭配色。”', '45.00', 1),
(2, 'http://127.0.0.1:3030/img/products/product02.png', '百年传世珐琅锅 全家系列', '“质量很好，方便清洗，简单烹饪。”', '398.00', 2),
(3, 'http://127.0.0.1:3030/img/products/product03.png', '家用按摩器', '“给工作之余，身体的最好呵护。”', '125.00', 3),
(4, 'http://127.0.0.1:3030/img/products/product04.png', '可爱软萌抱枕', '“颜色多样，采用棉绒材质。”', '465.00', 4),
(5, 'http://127.0.0.1:3030/img/products/product05.png', '西班牙制造 高端按摩椅', '“海外精品，质量有保证。”', '2546.00', 5),
(6, 'http://127.0.0.1:3030/img/products/product06.png', '精致简约 苹果无线鼠标', '“独特设计，手感很舒适。”', '155.00', 6),
(7, 'http://127.0.0.1:3030/img/products/product07.png', '家用清洁器 电动清扫', '“打扫房间不再是一件麻烦事。”', '275.00', 7);

-- --------------------------------------------------------

--
-- 表的结构 `xx_show`
--

CREATE TABLE `xx_show` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `img_url` varchar(255) DEFAULT NULL COMMENT '商品图的url',
  `mark` varchar(20) DEFAULT NULL COMMENT '促销标签',
  `newPrice` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `oldPrice` decimal(10,2) DEFAULT NULL COMMENT '旧价',
  `des` varchar(20) DEFAULT NULL COMMENT '商品介绍',
  `color` varchar(10) DEFAULT NULL COMMENT '商品的颜色种类',
  `pid` int(11) DEFAULT NULL COMMENT '对应商品编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_show`
--

INSERT INTO `xx_show` (`id`, `title`, `img_url`, `mark`, `newPrice`, `oldPrice`, `des`, `color`, `pid`) VALUES
(1, '冬季特暖棉绒袜', 'http://127.0.0.1:3030/img/products/product01.png', '圣诞特惠|打折|新品|促销', '12.00', '52.00', '保暖，舒适，质量好', '8', 1),
(2, '冬季特暖棉棉被', 'http://127.0.0.1:3030/img/products/product02.png', '打折|新品', '56.00', '92.00', '保暖，舒适，质量好', '8', 2),
(3, '家用按摩器', 'http://127.0.0.1:3030/img/products/product03.png', '好货', '92.00', '152.00', '保暖，舒适，质量好', '8', 3),
(4, '冬季特暖棉绒袜1', 'http://127.0.0.1:3030/img/products/product04.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 4),
(5, '冬季特暖棉绒袜2', 'http://127.0.0.1:3030/img/products/product05.png', '圣诞特惠|打折', '12.00', '52.00', '保暖，舒适，质量好', '8', 5),
(6, '冬季特暖棉绒袜3', 'http://127.0.0.1:3030/img/products/product06.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 6),
(7, '冬季特暖棉绒袜4', 'http://127.0.0.1:3030/img/products/product07.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 7),
(8, '冬季特暖棉绒袜5', 'http://127.0.0.1:3030/img/products/product01.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 8),
(9, '冬季特暖棉绒袜6', 'http://127.0.0.1:3030/img/products/product02.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 9),
(10, '冬季特暖棉绒袜7', 'http://127.0.0.1:3030/img/products/product03.png', '圣诞特惠|促销', '12.00', '52.00', '保暖，舒适，质量好', '8', 10),
(11, '冬季特暖棉绒袜8', 'http://127.0.0.1:3030/img/products/product04.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 11),
(12, '冬季特暖棉绒袜9', 'http://127.0.0.1:3030/img/products/product05.png', '圣诞特惠|买一送一', '12.00', '52.00', '保暖，舒适，质量好', '8', 12),
(13, '冬季特暖棉绒袜10', 'http://127.0.0.1:3030/img/products/product06.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 13);

-- --------------------------------------------------------

--
-- 表的结构 `xx_sorts`
--

CREATE TABLE `xx_sorts` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '类名称',
  `sid` int(11) DEFAULT NULL COMMENT '对应商品类别编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_sorts`
--

INSERT INTO `xx_sorts` (`id`, `title`, `sid`) VALUES
(1, '冬季专区', 1),
(2, '鞋包配饰', 2),
(3, '服装', 3),
(4, '电器', 4),
(5, '洗护', 5),
(6, '饮食', 6),
(7, '餐厨', 7),
(8, '婴童', 8),
(9, '文体', 9),
(10, '鞋包配饰', 10),
(11, '冬季专区', 11),
(12, '冬季专区', 12),
(13, '冬季专区', 13),
(14, '冬季专区', 14);

-- --------------------------------------------------------

--
-- 表的结构 `xx_user`
--

CREATE TABLE `xx_user` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT NULL COMMENT '用户名',
  `upwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(255) DEFAULT 'http://127.0.0.1:3030/img/person/person01.png' COMMENT '头像url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_user`
--

INSERT INTO `xx_user` (`id`, `uname`, `upwd`, `email`, `avatar`) VALUES
(1, '17777777777', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'http://127.0.0.1:3030/img/person/person01.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xx_banner`
--
ALTER TABLE `xx_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_gongge`
--
ALTER TABLE `xx_gongge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_new_list`
--
ALTER TABLE `xx_new_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_show`
--
ALTER TABLE `xx_show`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_sorts`
--
ALTER TABLE `xx_sorts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_user`
--
ALTER TABLE `xx_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `xx_banner`
--
ALTER TABLE `xx_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `xx_gongge`
--
ALTER TABLE `xx_gongge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `xx_new_list`
--
ALTER TABLE `xx_new_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `xx_show`
--
ALTER TABLE `xx_show`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `xx_sorts`
--
ALTER TABLE `xx_sorts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `xx_user`
--
ALTER TABLE `xx_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
