-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.53 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 kai 的数据库结构
CREATE DATABASE IF NOT EXISTS `kai` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kai`;

-- 导出  表 kai.cart 结构
CREATE TABLE IF NOT EXISTS `cart` (
  `tel` varchar(64) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT '0',
  `name` varchar(64) DEFAULT '0',
  `type` varchar(64) DEFAULT '0',
  `author` varchar(64) DEFAULT '0',
  `publisher` varchar(64) DEFAULT '0',
  `price` double DEFAULT '0',
  `description` varchar(64) DEFAULT '0',
  `kou` double DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  kai.cart 的数据：3 rows
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`tel`, `id`, `number`, `name`, `type`, `author`, `publisher`, `price`, `description`, `kou`) VALUES
	('13688390388', 27, 2, '资本论（全）', '社科图书', '马克思', '上海三联书店', 158, '1938年我国第一部中文全译本，读《资本论》是一种时尚。', 149),
	('13688390388', 36, 1, '昆虫记', '教学辅导', '亨利·法布尔', '人民文学出版社', 28, '如果你是一个孩子，对神奇的昆虫世界', 22),
	('13688390388', 23, 1, '我们仨', '文学小说', '杨绛', '三联书店', 23, '《我们仨》分为两部分。第一部分中，杨绛以其一贯的慧心、独特的笔', 20);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- 导出  表 kai.goods 结构
CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL,
  `publisher` varchar(64) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `kou` double DEFAULT NULL
  
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- 正在导出表  kai.goods 的数据：20 rows
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` (`id`, `name`, `type`, `author`, `publisher`, `price`, `description`, `kou`) VALUES
	(19, '追风筝的人', '文学小说', '卡勒德·胡赛尼', '上海人民出版社', 29, '“许多年过去了，人们说陈年旧事可以被埋葬，然而我终于明白这是错的，因为往事会自行爬上来。', 25),
	(20, '岛上书店', '文学小说', '加·泽文', '江苏文艺出版社', 35, '岛上书店是间维多利亚风格的小屋，门廊上挂着褪色的招牌，上面写着：', 30),
	(21, '我的前半生', '文学小说', '亦舒', '湖南文艺出版社', 39, '亦舒“独家畅销 ZUI知名的5部作品，包括《喜宝》《我的前半生》《玫瑰的故事》.', 33),
	(22, '解忧杂货店', '文学小说', '东野圭吾', '南海出版社', 39, '日本著名作家东野圭吾的《解忧杂货店》，出版当年即获中央公论文艺奖。作品超越推理小说的范围', 34),
	(23, '我们仨', '文学小说', '杨绛', '三联书店', 23, '《我们仨》分为两部分。第一部分中，杨绛以其一贯的慧心、独特的笔', 20),
	(24, '明朝那些事儿全集', '社科图书', '当年明月', '北京联合出版公司', 297, '《明朝那些事儿》主要讲述的是从1344年到1644年这三百年间关于明朝的一些事情', 288),
	(25, '大国崛起', '社科图书', '唐晋', '人民出版社', 56, '以历史的眼光和全球的视野，解读15世纪以来9个世界性大国崛起的历史。', 49),
	(26, '世说新语', '社科图书', '刘义庆', '中国画报出版社', 39, '《世说新语》是中国传统的志人小说的名著政治值。', 33),
	(27, '资本论（全）', '社科图书', '马克思', '上海三联书店', 158, '1938年我国第一部中文全译本，读《资本论》是一种时尚。', 149),
	(28, '中国哲学简史', '社科图书', '冯友兰', '北京大学出版社', 38, '打通古今中外的相关知识，以宏观开阔的视野对中国哲学进行了深入浅出的、融会贯通的讲解。', 36),
	(29, '活了100万次的猫', '儿童图书', '佐野洋子', '接力出版社', 36, '有一只100万年也不死的猫', 30),
	(30, '大英儿童百科全书', '儿童图书', '不列颠百科', '湖南少儿出版社', 448, '《大英儿童百科全书》科学与人文完美交融，为孩子呈现浮动书纸上的斑斓大世界:', 418),
	(31, '学会爱自己', '儿童图书', '克雷文', '青岛出版社', 36, '说的虽然是大家常常挂在嘴边的主题', 30),
	(32, '小熊最好的爸爸', '儿童图书', '丹姆', '贵州人民出版社', 35, '《世界上最好的爸爸》：“来，该睡觉了。”熊爸爸说。', 30),
	(33, '暖暖心绘本', '儿童图书', '米拦弗特毕', '湖南少儿出版社', 188, '1. 大熊有一个小麻烦 ——关于倾诉与倾听的故事', 166),
	(34, '成语大词典', '教学辅导', '成语大词典编委会', '商务印书馆国际有限公司', 99, '汉语成语绝大多数来自于浩繁的古代', 88),
	(35, '五年高考三年模拟', '教学辅导', '曲一线', '教育科学出版社', 61, '5大特性是高中生的两i已有，讲解细致入微', 56),
	(36, '昆虫记', '教学辅导', '亨利·法布尔', '人民文学出版社', 28, '如果你是一个孩子，对神奇的昆虫世界', 22),
	(37, '七年级生物学上', '教学辅导', '薛金星', '陕西人民教育出版社', 29, '《中学教材全解•生物》，配套解读各出版社出版', 26),
	(38, '2016年作文素材年度精华本', '教学辅导', '张迅', '重庆出版社', 25, '《<作文素材>年度精华本》是作文素材编辑部针对2017年。', 19);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;

-- 导出  表 kai.order 结构
CREATE TABLE IF NOT EXISTS `order` (
  `tel` varchar(64) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL,
  `publisher` varchar(64) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `kou` double DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `comment` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  kai.order 的数据：12 rows
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`tel`, `id`, `name`, `type`, `author`, `publisher`, `price`, `description`, `kou`, `state`, `comment`) VALUES
	('13688390388', 35, '五年高考三年模拟', '教学辅导', '曲一线', '教育科学出版社', 61, '5大特性是高中生的两i已有，讲解细致入微', 56, 0, 0),
	('13688390388', 19, '追风筝的人', '文学小说', '卡勒德·胡赛尼', '上海人民出版社', 29, '“许多年过去了，人们说陈年旧事可以被埋葬，然而我终于明白这是错的，因为往事会自行爬上来。', 25, 0, 0),
	('13688390388', 29, '活了100万次的猫', '儿童图书', '佐野洋子', '接力出版社', 36, '有一只100万年也不死的猫', 30, 0, 0),
	('13688390388', 38, '2016年作文素材年度精华本', '教学辅导', '张迅', '重庆出版社', 25, '《<作文素材>年度精华本》是作文素材编辑部针对2017年。', 19, 1, 1),
	('13688390388', 26, '世说新语', '社科图书', '刘义庆', '中国画报出版社', 39, '《世说新语》是中国传统的志人小说的名著政治值。', 33, 0, 0),
	('13688390388', 26, '世说新语', '社科图书', '刘义庆', '中国画报出版社', 39, '《世说新语》是中国传统的志人小说的名著政治值。', 33, 0, 0),
	('13688390388', 35, '五年高考三年模拟', '教学辅导', '曲一线', '教育科学出版社', 61, '5大特性是高中生的两i已有，讲解细致入微', 56, 0, 0),
	('13688390388', 19, '追风筝的人', '文学小说', '卡勒德·胡赛尼', '上海人民出版社', 29, '“许多年过去了，人们说陈年旧事可以被埋葬，然而我终于明白这是错的，因为往事会自行爬上来。', 25, 0, 0),
	('13688390388', 36, '昆虫记', '教学辅导', '亨利·法布尔', '人民文学出版社', 28, '如果你是一个孩子，对神奇的昆虫世界', 22, 1, 0),
	('13688390388', 38, '2016年作文素材年度精华本', '教学辅导', '张迅', '重庆出版社', 25, '《<作文素材>年度精华本》是作文素材编辑部针对2017年。', 19, 1, 1),
	('13688390388', 21, '我的前半生', '文学小说', '亦舒', '湖南文艺出版社', 39, '亦舒“独家畅销 ZUI知名的5部作品，包括《喜宝》《我的前半生》《玫瑰的故事》.', 33, 0, 0),
	('13688390388', 32, '小熊最好的爸爸', '儿童图书', '丹姆', '贵州人民出版社', 35, '《世界上最好的爸爸》：“来，该睡觉了。”熊爸爸说。', 30, 0, 0);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- 导出  表 kai.trans 结构
CREATE TABLE IF NOT EXISTS `trans` (
  `tel` varchar(64) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `postcode` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  kai.trans 的数据：1 rows
/*!40000 ALTER TABLE `trans` DISABLE KEYS */;
INSERT INTO `trans` (`tel`, `address`, `phone`, `postcode`, `name`) VALUES
	('13688390388', '四川成都四川大学', '13688390388', '610127', '崔博文');
/*!40000 ALTER TABLE `trans` ENABLE KEYS */;

-- 导出  表 kai.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `tel` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  kai.user 的数据：1 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`tel`, `password`, `name`) VALUES
	('13688390388', '1111', '崔博文');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 kai.userinfo 结构
CREATE TABLE IF NOT EXISTS `userinfo` (
  `tel` varchar(12) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `sex` varchar(4) DEFAULT '无',
  `birthday` varchar(64) DEFAULT '无',
  `money` int(8) DEFAULT '0',
  `rank` int(3) DEFAULT '1',
  `score` int(8) DEFAULT '0',
  PRIMARY KEY (`tel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- 正在导出表  kai.userinfo 的数据：2 rows
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` (`tel`, `name`, `sex`, `birthday`, `money`, `rank`, `score`) VALUES
	('13688390388', '崔小问', '女', '1958-11-11', 99509, 13, 10),
	('15680969002', '1111', '无', '无', 0, 1, 0);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
