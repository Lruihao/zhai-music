-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2019-03-19 07:36:15
-- 服务器版本： 5.5.62-log
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `player_lruihao_c`
--

-- --------------------------------------------------------

--
-- 表的结构 `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `id` varchar(32) NOT NULL,
  `name` varchar(30) DEFAULT NULL COMMENT '播放器名称',
  `user_id` varchar(32) DEFAULT NULL COMMENT '关联用户id',
  `auto_player` int(1) DEFAULT NULL COMMENT '是否自动播放',
  `random_player` int(1) DEFAULT NULL COMMENT '是否随机播放',
  `default_volume` int(3) DEFAULT NULL COMMENT '默认音量',
  `show_lrc` int(1) DEFAULT NULL COMMENT '是否显示歌词',
  `site_name` varchar(30) DEFAULT NULL COMMENT '站点名称  用于播放器显示名称',
  `greeting` varchar(30) DEFAULT NULL COMMENT '欢迎语',
  `show_greeting` int(1) DEFAULT NULL COMMENT '是否显示欢迎语',
  `default_album` int(3) DEFAULT NULL COMMENT '默认专辑',
  `background` int(1) DEFAULT NULL COMMENT '模糊背景是否开启',
  `create_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `player`
--

INSERT INTO `player` (`id`, `name`, `user_id`, `auto_player`, `random_player`, `default_volume`, `show_lrc`, `site_name`, `greeting`, `show_greeting`, `default_album`, `background`, `create_time`) VALUES
('2e086053d2f44e79a489e38085e9edb6', '我的播放器', '1', 0, 1, 80, 1, 'IT技术宅', '欢迎光临寒舍！', 1, 0, 1, NULL),
('b023322d963a4cb887098ed7573cab18', '竹林深处', '966a34fe03a848aaa9503977b9e66c4b', 1, 1, 65, 1, '鲸落oh的博客', 'Hello KuDog（滑稽）！', 1, 1, 1, NULL),
('f94ee8d6f6404a1e8ae0cff6fd05f98e', 'test播放器', '1', 1, 1, 75, 1, 'lruihao.cn', '欢迎光临lruihao.cn！', 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `player_song_sheet`
--

CREATE TABLE IF NOT EXISTS `player_song_sheet` (
  `player_id` varchar(32) DEFAULT NULL COMMENT '播放器id',
  `song_sheet_id` varchar(32) DEFAULT NULL COMMENT '歌单id',
  `taxis` int(3) DEFAULT NULL COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `player_song_sheet`
--

INSERT INTO `player_song_sheet` (`player_id`, `song_sheet_id`, `taxis`) VALUES
('2e086053d2f44e79a489e38085e9edb6', '367e5a67e63d40d4898d22fdcdc889d7', 0),
('f94ee8d6f6404a1e8ae0cff6fd05f98e', 'af82210004b248dcbd075713e3188480', 0),
('b023322d963a4cb887098ed7573cab18', 'b71ada9e28474c0cbd3f2c3d4a5d0418', 0);

-- --------------------------------------------------------

--
-- 表的结构 `song`
--

CREATE TABLE IF NOT EXISTS `song` (
  `id` varchar(32) NOT NULL,
  `song_id` varchar(32) DEFAULT NULL COMMENT '歌曲id',
  `song_sheet_id` varchar(32) DEFAULT NULL COMMENT '所属歌单',
  `name` varchar(100) DEFAULT NULL COMMENT '歌曲名称',
  `type` varchar(10) DEFAULT NULL COMMENT '歌曲类型',
  `album_name` varchar(100) DEFAULT NULL COMMENT '专辑名称',
  `artist_name` varchar(100) DEFAULT NULL COMMENT '歌手名称',
  `album_cover` varchar(100) DEFAULT NULL COMMENT '专辑图片',
  `location` varchar(150) DEFAULT NULL COMMENT '歌曲地址',
  `lyric` varchar(100) DEFAULT NULL COMMENT '歌词地址',
  `taxis` int(3) DEFAULT NULL COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `song`
--

INSERT INTO `song` (`id`, `song_id`, `song_sheet_id`, `name`, `type`, `album_name`, `artist_name`, `album_cover`, `location`, `lyric`, `taxis`) VALUES
('15b5e4ed94ee49f6978c1b6e8c88ef34', '541480238', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '萤火虫', 'wy', '萤火虫', 'GAI周延', '//p1.music.126.net/a_k9dIRkOTpw-lKi4R3tqg==/109951163167371186.jpg?param=300x300', NULL, NULL, 1),
('1efe6e40010249609627ba22cb4a3a0b', '65538', 'af82210004b248dcbd075713e3188480', '好久不见', 'wy', '认了吧', '陈奕迅', '//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300', NULL, NULL, 6),
('2197bddeef3c4099a0aa56e0c7425140', '551816010', 'af82210004b248dcbd075713e3188480', '我们', 'wy', '我们', '陈奕迅', '//p1.music.126.net/Ng7OR-bdgrHQKXzLyj2mGg==/109951163240732641.jpg?param=300x300', NULL, NULL, 7),
('27990efd37494eee92bbf0937eb6305b', '001EzHH003Zw8Z', '367e5a67e63d40d4898d22fdcdc889d7', '贫穷或富有', 'qq', '贫穷或富有', '李荣浩', 'http://y.gtimg.cn/music/photo_new/T002R300x300M000000nHX4F1OiYhL.jpg', NULL, NULL, 0),
('47c3299ddbac4f58bd758932d41003b3', '65536', 'af82210004b248dcbd075713e3188480', '爱情转移', 'wy', '认了吧', '陈奕迅', '//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300', NULL, NULL, 0),
('54083883092b4cecacc1f4b477604c38', '25906124', 'af82210004b248dcbd075713e3188480', '不要说话', 'wy', '不想放手', '陈奕迅', '//p1.music.126.net/96L4ojVi9N3tdHk3r3GXjQ==/109951163066640079.jpg?param=300x300', NULL, NULL, 2),
('54bd955902ab4e4d99afd3d006fcf986', '5282665', '367e5a67e63d40d4898d22fdcdc889d7', '爱', 'wy', '飞碟1991-这一年3', '小虎队', 'http://p1.music.126.net/GWn7Q2q9OrUPK50HZ8yC5w==/75866302334129.jpg?param=300x300', NULL, NULL, 2),
('6bd9fe41a62142cdaf9f060a53763427', '65533', 'af82210004b248dcbd075713e3188480', '红玫瑰', 'wy', '认了吧', '陈奕迅', '//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300', NULL, NULL, 9),
('6c25e0a42cff4d138e2ce9fc42411f80', '407002091', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '山丘 (Live)', 'wy', '跨年演唱会2013-2014 华语篇', '李宗盛', '//p2.music.126.net/B1ePGczwQUZueJl70TITWQ==/3287539775420245.jpg?param=300x300', NULL, NULL, 3),
('7c7dce535054460d8b2a6195c24f69e2', '257098', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '为你我受冷风吹', 'wy', 'Love, Sandy', '林忆莲', '//p2.music.126.net/5qWWTetRGYBc-ktiJLZsCw==/109951163076136658.jpg?param=300x300', NULL, NULL, 4),
('8ea33f5bd2ec4eeda6280fc9b12e8b92', '65528', 'af82210004b248dcbd075713e3188480', '淘汰', 'wy', '认了吧', '陈奕迅', '//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300', NULL, NULL, 3),
('95a42c116dd641ac906bfacb6f811509', '3A20D868FAC7AABD11EEEA8474CB47A4', '367e5a67e63d40d4898d22fdcdc889d7', '不想想你', 'kg', 'undefined', '张杰', 'http://imge.kugou.com/stdmusic/150/20180828/20180828211005772299.jpg', NULL, NULL, 1),
('9613997ea8194c94b198fca6b0c75c33', '428116208', '367e5a67e63d40d4898d22fdcdc889d7', '双截棍 ', 'netease', '周建华作品集', '周建华', 'http://p1.music.126.net/q5iMmP15ItYdcVBgtB0ZCQ==/18684001091229391.jpg?param=300x300', NULL, NULL, 3),
('9b6056c96baa4abc9bd8ebae54767ca7', '65800', 'af82210004b248dcbd075713e3188480', '最佳损友', 'wy', 'Life Continues…', '陈奕迅', '//p1.music.126.net/7skxWYp7lF70y347YAjaBQ==/109951163256304204.jpg?param=300x300', NULL, NULL, 1),
('9e9c2af5346d4cb2950de2dbebea804a', '65766', 'af82210004b248dcbd075713e3188480', '富士山下', 'wy', 'What''s Going On…?', '陈奕迅', '//p1.music.126.net/PcJq6i7zMcPgudejdn1yeg==/109951163256302356.jpg?param=300x300', NULL, NULL, 8),
('afb0fb128e56473baeb830ff9ba25efe', '566442496', '367e5a67e63d40d4898d22fdcdc889d7', '浪人琵琶', 'wy', '胡66', '胡66', 'http://p1.music.126.net/G5YxAyt9812z9MROfWarkg==/109951163318974870.jpg?param=300x300', NULL, NULL, 4),
('b3b255116b5a4ab8bdc08be1f5c8a5bf', '5255662', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '当爱已成往事', 'wy', '我们的主打歌', '李宗盛,林忆莲', '//p1.music.126.net/QoYAmdyE7FL_vc9rwNeS9w==/64871186055842.jpg?param=300x300', NULL, NULL, 0),
('b3c54b19144c429081c304ec684247d0', '31877628', 'af82210004b248dcbd075713e3188480', '十年(Live)', 'wy', '我是歌手第三季 总决赛', '陈奕迅,韩红', '//p1.music.126.net/C69zO6_wapO94TOE5DnIBg==/2941193605503524.jpg?param=300x300', NULL, NULL, 4),
('de882293bbfb4f4998e0b3c9c8e4ef7d', '66282', 'af82210004b248dcbd075713e3188480', '浮夸', 'wy', 'U-87', '陈奕迅', '//p1.music.126.net/Bl1hEdJbMSj5YJsTqUjr-w==/109951163520311175.jpg?param=300x300', NULL, NULL, 5),
('e815c9a2fa53441cb69c4a80e7211e05', '194405', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '笑看风云', 'wy', '笑看风云', '郑少秋', '//p1.music.126.net/Sj1SSxfsLV_j0r777n71SQ==/35184372105673.jpg?param=300x300', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- 表的结构 `song_sheet`
--

CREATE TABLE IF NOT EXISTS `song_sheet` (
  `id` varchar(32) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `sheet_id` varchar(20) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL COMMENT '歌单所属用户',
  `name` varchar(30) DEFAULT NULL COMMENT '歌单名称',
  `author` varchar(30) DEFAULT NULL COMMENT '歌单作者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `song_sheet`
--

INSERT INTO `song_sheet` (`id`, `type`, `sheet_id`, `user_id`, `name`, `author`, `create_time`) VALUES
('367e5a67e63d40d4898d22fdcdc889d7', 'sdtj', 'sdtj', '1', '我喜欢的歌', 'zing', '2018-09-01 17:36:15'),
('af82210004b248dcbd075713e3188480', 'sdtj', NULL, '1', 'test歌单', 'admin', '2019-03-18 14:13:27'),
('b71ada9e28474c0cbd3f2c3d4a5d0418', 'sdtj', NULL, '966a34fe03a848aaa9503977b9e66c4b', '曲径通幽', 'hxb123456', '2019-03-18 17:56:26');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(20) DEFAULT NULL COMMENT '用户账号',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `qq` varchar(15) DEFAULT NULL COMMENT 'QQ号码',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱地址',
  `status` int(1) DEFAULT '1' COMMENT '状态 1:启用 0:禁用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_ip` varchar(32) DEFAULT NULL COMMENT '创建时ip',
  `last_login_time` datetime DEFAULT NULL COMMENT '上次登录时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `qq`, `email`, `status`, `create_time`, `create_ip`, `last_login_time`) VALUES
('1', 'admin', '202cb962ac59075b964b07152d234b70', '1', '1', 1, '2018-08-30 09:50:10', '1', '2019-03-18 23:26:44'),
('966a34fe03a848aaa9503977b9e66c4b', 'hxb123456', 'e10adc3949ba59abbe56e057f20f883e', '1005760694', NULL, 1, '2019-03-18 17:55:47', '223.156.157.14', '2019-03-18 18:05:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `song_sheet`
--
ALTER TABLE `song_sheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
