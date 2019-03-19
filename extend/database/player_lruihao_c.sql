-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2019-03-19 18:34:19
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
  `player_width` int(11) DEFAULT '-1' COMMENT '播放器宽度',
  `cover_width` int(11) DEFAULT '-1' COMMENT '封面图宽度',
  `show_notes` int(1) DEFAULT '1' COMMENT '显示音符：0不显示1显示',
  `auto_popup_player` int(11) DEFAULT '-1' COMMENT '几秒后弹出音符：-1不弹出 >0秒后弹出',
  `create_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `player`
--

INSERT INTO `player` (`id`, `name`, `user_id`, `auto_player`, `random_player`, `default_volume`, `show_lrc`, `site_name`, `greeting`, `show_greeting`, `default_album`, `background`, `player_width`, `cover_width`, `show_notes`, `auto_popup_player`, `create_time`) VALUES
('2e086053d2f44e79a489e38085e9edb6', '我的播放器', '1', 0, 1, 80, 1, 'IT技术宅', '欢迎光临寒舍！', 1, 1, 1, -1, -1, 1, -1, NULL),
('b023322d963a4cb887098ed7573cab18', '竹林深处', '966a34fe03a848aaa9503977b9e66c4b', 1, 1, 65, 1, '鲸落oh的博客', 'Hello KuDog（滑稽）！', 1, 1, 1, -1, -1, 1, -1, NULL),
('f94ee8d6f6404a1e8ae0cff6fd05f98e', 'test播放器', '1', 1, 1, 75, 1, 'lruihao.cn', '欢迎光临lruihao.cn！', 1, 1, 1, -1, -1, 1, -1, NULL);

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
('084c051c645d4133887b79ea4ff4c3f9', '29414460', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '往事只能回味', 'wy', '说时依旧', '好妹妹', '//p2.music.126.net/GCJy3VguiVQIvzfTwResMg==/2535473813700425.jpg?param=300x300', NULL, NULL, 27),
('0a04eb4ed4b64320859649b0550f64d1', '002K4xqW4A7m7q', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '不为谁而作的歌', 'qq', '不为谁而作的歌', '林俊杰', '//y.gtimg.cn/music/photo_new/T002R300x300M000003nbc0602Tgfx.jpg', NULL, NULL, 0),
('0b635818073849a09e5227e7e08630d5', '1306507665', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '再见Hip-Hop', 'wy', '再见Hip-Hop', '张震岳,MC Hotdog,功夫胖KungFuPen,派克特（PACT）', '//p1.music.126.net/bcRYaryCL7bysJEYswwkPQ==/109951163536049237.jpg?param=300x300', NULL, NULL, 46),
('0e0bf5e28a0543c0a06bb961cbb2ea4f', '481853239', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '白月光', 'wy', '我想和你唱 第二季 第6期', '张信哲,陈沁', '//p1.music.126.net/MrmH7CNHWCbh4dLEt6CvaQ==/18923694625814745.jpg?param=300x300', NULL, NULL, 65),
('0f81e22eee9742b5abd9c7fe35429a34', '507795470', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '都选C', 'wy', '都选C', '大鹏', '//p2.music.126.net/FCvXiE-OndiMDYUkaXDK1w==/109951163029337837.jpg?param=300x300', NULL, NULL, 29),
('111feb4603704170919ce7596ca3cf8e', '542755990', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '牡丹亭外', 'wy', '牡丹亭外', '洪尘', '//p1.music.126.net/CeunQ3-2fJvqNNHdxv84fA==/109951163170790698.jpg?param=300x300', NULL, NULL, 5),
('1268dc68806e4540a7bb9a3101d67ffe', '541480238', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '萤火虫', 'wy', '萤火虫', 'GAI周延', '//p1.music.126.net/a_k9dIRkOTpw-lKi4R3tqg==/109951163167371186.jpg?param=300x300', NULL, NULL, 78),
('1384f44e87464ec28b12c5803b9af793', '190499', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '给你们', 'wy', '雨一直下', '张宇', '//p2.music.126.net/otCQ-2wUgLaEN2_W8Nf_DA==/57174604656249.jpg?param=300x300', NULL, NULL, 9),
('144001e2bebf444d802dc65482b140f3', '65533', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '红玫瑰', 'wy', '认了吧', '陈奕迅', '//p2.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300', NULL, NULL, 68),
('1919227cd1e54330acf7364aeee767a0', '86360', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '忘记时间', 'wy', '仙剑奇侠传三 电视原声带', '胡歌', '//p2.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300', NULL, NULL, 42),
('19bbfa0985d04f738d03e3077d9b6ff7', '109198', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '恋曲1990', 'wy', '昨日情歌74-89', '罗大佑', '//p2.music.126.net/HNHU4X2_wB41h5MvGn8ZXw==/109951163104937346.jpg?param=300x300', NULL, NULL, 7),
('1c7183ec17a9490fb70974f167e137d7', '1318571230', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '很高兴认识你', 'wy', '很高兴认识你', 'C-BLOCK', '//p2.music.126.net/UU09arK_fRlyWVdh2znikA==/109951163610766464.jpg?param=300x300', NULL, NULL, 57),
('1e8cddf519d3412e899190a201ff1313', '28802028', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '山水之间', 'wy', '不如吃茶去', '许嵩', '//p2.music.126.net/WoR2LbM1IFauFpvhBWOjqA==/6642149743396577.jpg?param=300x300', NULL, NULL, 13),
('1efe6e40010249609627ba22cb4a3a0b', '65538', 'af82210004b248dcbd075713e3188480', '好久不见', 'wy', '认了吧', '陈奕迅', '//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300', NULL, NULL, 6),
('217c661423894b7f89ca6d4a9725f9df', '86369', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '偏爱', 'wy', '仙剑奇侠传三 电视原声带', '张芸京', '//p2.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300', NULL, NULL, 39),
('2197bddeef3c4099a0aa56e0c7425140', '551816010', 'af82210004b248dcbd075713e3188480', '我们', 'wy', '我们', '陈奕迅', '//p1.music.126.net/Ng7OR-bdgrHQKXzLyj2mGg==/109951163240732641.jpg?param=300x300', NULL, NULL, 7),
('27990efd37494eee92bbf0937eb6305b', '001EzHH003Zw8Z', '367e5a67e63d40d4898d22fdcdc889d7', '贫穷或富有', 'qq', '贫穷或富有', '李荣浩', 'http://y.gtimg.cn/music/photo_new/T002R300x300M000000nHX4F1OiYhL.jpg', NULL, NULL, 0),
('2b95ac1bafa24e1c89ec9152adb5aff3', '1296583190', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '冠军 (Live)', 'wy', '中国新说唱 第3期', '功夫胖KungFuPen,派克特（PACT）', '//p2.music.126.net/4k-pMEO-en8IE6PdJoAYfg==/109951163429466895.jpg?param=300x300', NULL, NULL, 49),
('2df5fc2dff774fe491ddbd08b2435e13', '95410', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '新鸳鸯蝴蝶梦', 'wy', '新鸳鸯蝴蝶梦', '黄安', '//p2.music.126.net/bA0VutnGbJSfI5ZbiVMpcw==/38482906984192.jpg?param=300x300', NULL, NULL, 34),
('2e03797e396d47278be99ccfa8d91fc2', '2308499', 'b71ada9e28474c0cbd3f2c3d4a5d0418', 'My Heart Will Go On', 'wy', 'My Love: Ultimate Essential Collection (North American Version)', 'Celine Dion', '//p1.music.126.net/mO1OUNjZtCEIvAGdr7YXaA==/813638604607979.jpg?param=300x300', NULL, NULL, 16),
('2fc111a62d5d4254bbf33c74c7462529', '30953009', 'b71ada9e28474c0cbd3f2c3d4a5d0418', 'See You Again', 'wy', 'Furious 7 (Original Motion Picture Soundtrack)', 'Wiz Khalifa,Charlie Puth', '//p2.music.126.net/JIc9X91OSH-7fUZqVfQXAQ==/7731765766799133.jpg?param=300x300', NULL, NULL, 11),
('3072b401970d42cbb2d12c338214e217', '186016', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '晴天', 'wy', '叶惠美', '周杰伦', '//p1.music.126.net/yjVbsgfNeF2h7fIvnxuZDQ==/18894007811887644.jpg?param=300x300', NULL, NULL, 62),
('33f26a8da74b4a30a0f13652e801c6a3', '135111', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '九局下半', 'wy', '九局下半', 'MC Hotdog', '//p1.music.126.net/MZUQyESX-DMrrzC5sH9Fxw==/1653665488188665.jpg?param=300x300', NULL, NULL, 23),
('341b051721594aa1a545bec35634775f', '135050', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '差不多先生', 'wy', '差不多先生', 'MC Hotdog', '//p1.music.126.net/0W1VSKBbqMYtn0QPYpSa1w==/87960930234844.jpg?param=300x300', NULL, NULL, 24),
('38d13e37da324430a504f9ab637533af', '418603077', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '告白气球', 'wy', '周杰伦的床边故事', '周杰伦', '//p1.music.126.net/cUTk0ewrQtYGP2YpPZoUng==/3265549553028224.jpg?param=300x300', NULL, NULL, 63),
('38d90bb2f36c4f5bb8c9620da4f4884d', '32450986', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '走在冷风中', 'wy', '走在冷风中', '二珂', '//p2.music.126.net/iAaRt_l_ussYqkLVuDEpqg==/2931298001578529.jpg?param=300x300', NULL, NULL, 20),
('3cf90e49526e4bb3a9c10dcfb4866cb2', '4875306', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '逍遥叹', 'wy', '仙剑奇侠传 电视原声带', '胡歌', '//p2.music.126.net/4tTN8CnR7wG4E1cauIPCvQ==/109951163240682406.jpg?param=300x300', NULL, NULL, 36),
('3ed053815a654f0a82e4342fa0198d77', '003nIdG82oTT9N', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '雪落下的声音', 'qq', '延禧攻略OST', '陆虎', '//y.gtimg.cn/music/photo_new/T002R300x300M000000J03M71fRT7g.jpg', NULL, NULL, 2),
('4033fbb9a2dc42a391712a16e63603d1', '574566207', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '盗将行', 'wy', '粥请客（二）', '花粥,马雨阳', '//p2.music.126.net/-qHPT3rhxDlu5zQV9NcQ-A==/109951163555860423.jpg?param=300x300', NULL, NULL, 45),
('412ccf390efe4f0d8c25206d321bf9c6', '65766', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '富士山下', 'wy', 'What''s Going On…?', '陈奕迅', '//p2.music.126.net/PcJq6i7zMcPgudejdn1yeg==/109951163256302356.jpg?param=300x300', NULL, NULL, 70),
('4271422b1ecd46f484a77d566f1d0af9', '64048', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '完', 'wy', '...3mm', '陈奕迅', '//p1.music.126.net/JR-EYm7IAvaH7FYWVo5T9A==/18913799021152505.jpg?param=300x300', NULL, NULL, 66),
('47c3299ddbac4f58bd758932d41003b3', '65536', 'af82210004b248dcbd075713e3188480', '爱情转移', 'wy', '认了吧', '陈奕迅', '//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300', NULL, NULL, 0),
('4875e958209e42c5a705efc7e36afd3f', '28830157', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '莫名我就喜欢你', 'wy', '老时光', 'C-BLOCK', '//p2.music.126.net/4yI-ClgZGIGaHisOWwJFXg==/5931865232257374.jpg?param=300x300', NULL, NULL, 40),
('4d35a06c2ded4121ae852d24eb5a241e', '86357', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '生生世世爱', 'wy', '仙剑奇侠传三 电视原声带', '吴雨霏', '//p2.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300', NULL, NULL, 38),
('4ead14dfd54c4f96a8f6b9f64742919a', '258000', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '飘洋过海来看你', 'wy', '天荒地老(李翊君的情歌1)', '李翊君', '//p1.music.126.net/87fFbDK4Wqk-JtmRnBXBaw==/31885837220910.jpg?param=300x300', NULL, NULL, 10),
('52700f6fff7149a7a29f916321b3aea9', '300062', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '人间', 'wy', '王菲', '王菲', '//p1.music.126.net/6DS0esuwYLLgf9VyYi4R1A==/109951163165829326.jpg?param=300x300', NULL, NULL, 75),
('54083883092b4cecacc1f4b477604c38', '25906124', 'af82210004b248dcbd075713e3188480', '不要说话', 'wy', '不想放手', '陈奕迅', '//p1.music.126.net/96L4ojVi9N3tdHk3r3GXjQ==/109951163066640079.jpg?param=300x300', NULL, NULL, 2),
('547fb358185b40a58ce9df4cc9a684fd', '1146770', 'b71ada9e28474c0cbd3f2c3d4a5d0418', 'Auld Lang Syne', 'wy', 'The Greatest Gift', 'Charlie Landsborough', '//p1.music.126.net/PEW2AvpI1Gfnm_uUZ1iPMw==/6646547790045206.jpg?param=300x300', NULL, NULL, 17),
('54bd955902ab4e4d99afd3d006fcf986', '5282665', '367e5a67e63d40d4898d22fdcdc889d7', '爱', 'wy', '飞碟1991-这一年3', '小虎队', 'http://p1.music.126.net/GWn7Q2q9OrUPK50HZ8yC5w==/75866302334129.jpg?param=300x300', NULL, NULL, 2),
('553adf10584b43fc9c2cc0ed2f311879', '509753804', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '我的新衣', 'wy', '我的新衣', '毛衍七Vava,Ty.,王倩倩', '//p2.music.126.net/G8PBRq-mHKlEOseujgfJLg==/18846728811742394.jpg?param=300x300', NULL, NULL, 51),
('56009599bc104f05bcdd205c9734aafd', '194405', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '笑看风云', 'wy', '笑看风云', '郑少秋', '//p1.music.126.net/Sj1SSxfsLV_j0r777n71SQ==/35184372105673.jpg?param=300x300', NULL, NULL, 69),
('5acc16a6fd2f4f89a6679f14c380b78d', '415086030', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '我从崖边跌落', 'wy', '算云烟', '谢春花', '//p2.music.126.net/Eg4cy0_HIF2nrX2gMCsWkQ==/17967119509636556.jpg?param=300x300', NULL, NULL, 3),
('5cc0b91a801b4ed4a12ea434eb1737c8', '26896044', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '身骑白马', 'wy', '一声所爱 大地飞歌 第七期', '汪小敏', '//p2.music.126.net/5vOCqc96ZuQ89O_YcQGOmQ==/4454121604135439.jpg?param=300x300', NULL, NULL, 32),
('60c3e85865e84e0593cd4e06290a1485', '29414459', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '清平调', 'wy', '说时依旧', '好妹妹', '//p1.music.126.net/GCJy3VguiVQIvzfTwResMg==/2535473813700425.jpg?param=300x300', NULL, NULL, 25),
('6364a4f51f80437e8309b587ada5e9e8', '76899', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '收敛水', 'wy', '收敛水', '蛋堡', '//p1.music.126.net/LWh0FjsEDSxUpzwFZ6s3vA==/19127104276947258.jpg?param=300x300', NULL, NULL, 21),
('6457d748c629466da38e2dbd47f95784', '1320098329', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '原来你也在这里', 'wy', '原来你也在这里', '周笔畅', '//p2.music.126.net/qppSA-tF_S0SAkastKDpxA==/109951163626553866.jpg?param=300x300', NULL, NULL, 31),
('6657b1b1995f43cdb18c72f05b14cc3f', '1296583188', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '星球坠落 (Live)', 'wy', '中国新说唱 第3期', '艾热,李佳隆', '//p1.music.126.net/4k-pMEO-en8IE6PdJoAYfg==/109951163429466895.jpg?param=300x300', NULL, NULL, 52),
('6bd9fe41a62142cdaf9f060a53763427', '65533', 'af82210004b248dcbd075713e3188480', '红玫瑰', 'wy', '认了吧', '陈奕迅', '//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300', NULL, NULL, 9),
('6f046a172e394c3e94497c9c908d855b', '474099732', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '空城计', 'wy', '空城计', 'Gosh Music,GAI周延', '//p2.music.126.net/FsYpwni1WWfDHOv-PRDW1w==/109951162910489580.jpg?param=300x300', NULL, NULL, 53),
('772f6dd852b34739a81526a2af5f9692', '31168087', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '关于小熊', 'wy', '2015中国嘻哈颁奖合辑', '蛋堡', '//p1.music.126.net/NalnchFlm7-5D9aWR3fXtg==/2885118513808177.jpg?param=300x300', NULL, NULL, 22),
('7d24f822b3524173b73f956e3b97f853', '33781092', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '匆匆那年', 'wy', '热门华语273', '二珂', '//p1.music.126.net/T1hieWGtIXaZYiFO22Z50Q==/3405187512278984.jpg?param=300x300', NULL, NULL, 19),
('7dc3e9446d734eee8a59a6a5610a4f24', '1296583187', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '东成西就 (Live)', 'wy', '中国新说唱 第3期', 'Max马俊,本帮PQ', '//p1.music.126.net/4k-pMEO-en8IE6PdJoAYfg==/109951163429466895.jpg?param=300x300', NULL, NULL, 48),
('7e30c6ac8a7d4c5ebb1df3b59e4bb290', '27759600', 'b71ada9e28474c0cbd3f2c3d4a5d0418', 'Five Hundred Miles', 'wy', 'Inside Llewyn Davis: Original Soundtrack Recording', 'Justin Timberlake,Carey Mulligan,Stark Sands', '//p1.music.126.net/4BTe96FPQ_kW1pmNnlNvHg==/2536573326765583.jpg?param=300x300', NULL, NULL, 15),
('8162c385029f42aabb0167a07a80dfba', '27895011', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '长沙策长沙', 'wy', '热门华语15', 'C-BLOCK', '//p2.music.126.net/X7Xt2sTC9tdPCmrs8aFizg==/3284241233642901.jpg?param=300x300', NULL, NULL, 54),
('88f44f055dee4537bbb8cb61026437a8', '1304920094', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '目不转睛 (Live)', 'wy', '中国新说唱 第7期', '王以太', '//p1.music.126.net/MoLKXK3YBWYHcVnrZqdlDw==/109951163513814630.jpg?param=300x300', NULL, NULL, 50),
('88f81e37e8cd465d8101f8ece9dfc140', '299981', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '暧昧', 'wy', '菲主打', '王菲', '//p2.music.126.net/l9vAoPLeU2BAA2utoMWbGA==/19028148230552607.jpg?param=300x300', NULL, NULL, 74),
('8b0230d363e94c6b9184c90c09866be1', '86367', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '答应不爱你', 'wy', '仙剑奇侠传三 电视原声带', '郑中基', '//p2.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300', NULL, NULL, 37),
('8b61548e505f450cb8241611db88d218', '276225', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '夕阳之歌(Live) - live', 'wy', 'Anita Classic Moment(Live)', '梅艳芳', '//p1.music.126.net/0M95B8YEeo5tGUPU306sAw==/43980465112216.jpg?param=300x300', NULL, NULL, 67),
('8c47d7f3da5c4afbaaae8b3e88a35d91', '185709', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '稻香', 'wy', '魔杰座', '周杰伦', '//p1.music.126.net/HBanuZpt8SD2kf15AFa6Og==/109951163200234839.jpg?param=300x300', NULL, NULL, 61),
('8c4961dd5e2847089ecf39e09cdc31ed', '30352891', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '牵丝戏', 'wy', '牵丝戏', 'Aki阿杰,银临', '//p2.music.126.net/Nd86SOcyCxU5Qu7jdZn_MQ==/7725168696876736.jpg?param=300x300', NULL, NULL, 44),
('8e306be0e89949938317faa1e75064fe', '185882', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '本草纲目', 'wy', '依然范特西', '周杰伦', '//p1.music.126.net/06Yhj36Qu3ZCQJklc9MNKg==/7980255395852522.jpg?param=300x300', NULL, NULL, 30),
('8ea33f5bd2ec4eeda6280fc9b12e8b92', '65528', 'af82210004b248dcbd075713e3188480', '淘汰', 'wy', '认了吧', '陈奕迅', '//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300', NULL, NULL, 3),
('9481356c1be349e39a48974893564895', '001fStSB2fgBl1', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '白月光 (Live)', 'qq', '梦想的声音第三季 第5期', '张靓颖', '//y.gtimg.cn/music/photo_new/T002R300x300M000001KpG2Y3Wqq2R.jpg', NULL, NULL, 1),
('94c51056472f4979a888498a9d89f8b7', '299757', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '红豆', 'wy', 'Eyes On Me', '王菲', '//p1.music.126.net/62SmuCNsZRdyY_GEZWk_Ag==/109951163416516218.jpg?param=300x300', NULL, NULL, 76),
('95a42c116dd641ac906bfacb6f811509', '3A20D868FAC7AABD11EEEA8474CB47A4', '367e5a67e63d40d4898d22fdcdc889d7', '不想想你', 'kg', 'undefined', '张杰', 'http://imge.kugou.com/stdmusic/150/20180828/20180828211005772299.jpg', NULL, NULL, 1),
('9613997ea8194c94b198fca6b0c75c33', '428116208', '367e5a67e63d40d4898d22fdcdc889d7', '双截棍 ', 'netease', '周建华作品集', '周建华', 'http://p1.music.126.net/q5iMmP15ItYdcVBgtB0ZCQ==/18684001091229391.jpg?param=300x300', NULL, NULL, 3),
('96ccb41fb3c64778b662ae3d7e17d434', '1293886117', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '年少有为', 'wy', '耳朵', '李荣浩', '//p2.music.126.net/tt8xwK-ASC2iqXNUXYKoDQ==/109951163606377163.jpg?param=300x300', NULL, NULL, 73),
('997dc9092cd942c5ba7587fc2238c410', '455345092', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '以下范上', 'wy', '以下范上', 'C-BLOCK', '//p2.music.126.net/JmeLbT0Z3dkRGoP-G3Xh1w==/18604836255326600.jpg?param=300x300', NULL, NULL, 56),
('9b6056c96baa4abc9bd8ebae54767ca7', '65800', 'af82210004b248dcbd075713e3188480', '最佳损友', 'wy', 'Life Continues…', '陈奕迅', '//p1.music.126.net/7skxWYp7lF70y347YAjaBQ==/109951163256304204.jpg?param=300x300', NULL, NULL, 1),
('9e023d9a25ce46b3aaf5bf917e2eb08f', '1315952365', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '这首歌没唱直接听', 'wy', '这首歌没唱直接听', '姜云升', '//p1.music.126.net/iB5EZWPSOaSWwz2rHyGn7Q==/109951163590307649.jpg?param=300x300', NULL, NULL, 59),
('9e9c2af5346d4cb2950de2dbebea804a', '65766', 'af82210004b248dcbd075713e3188480', '富士山下', 'wy', 'What''s Going On…?', '陈奕迅', '//p1.music.126.net/PcJq6i7zMcPgudejdn1yeg==/109951163256302356.jpg?param=300x300', NULL, NULL, 8),
('a4639ddbb68c431893ccba5e2390846a', '1311347372', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '纸飞机 (live)', 'wy', '中国新说唱 第11期', '那吾克热-NW', '//p2.music.126.net/tCYU129ppfsdJ74Z4qdRNg==/109951163562341847.jpg?param=300x300', NULL, NULL, 18),
('a48080fa6b0d4651b330ff34923e4ba5', '5255662', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '当爱已成往事', 'wy', '我们的主打歌', '李宗盛,林忆莲', '//p1.music.126.net/QoYAmdyE7FL_vc9rwNeS9w==/64871186055842.jpg?param=300x300', NULL, NULL, 77),
('a6a48f48ba5541829bc2b22b469ed9fc', '26361010', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '光阴的故事', 'wy', '光阴的故事', '邓超,佟大为,黄晓明', '//p1.music.126.net/3K6W80SyZ0ZIy3btLRlZMw==/7820826208648668.jpg?param=300x300', NULL, NULL, 6),
('adaa6c29bd7846dab6d0f31a1a79ba40', '167876', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '有何不可', 'wy', '自定义', '许嵩', '//p2.music.126.net/Md3RLH0fe2a_3dMDnfqoQg==/18590542604286213.jpg?param=300x300', NULL, NULL, 33),
('ade2e1619a914b4f899431cde6d4ce4f', '454966913', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '江湖流', 'wy', '以下范上', 'C-BLOCK', '//p2.music.126.net/JmeLbT0Z3dkRGoP-G3Xh1w==/18604836255326600.jpg?param=300x300', NULL, NULL, 55),
('af8b56ca64e645b5ba3760102d4ab6da', '86365', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '光棍', 'wy', '仙剑奇侠传三 电视原声带', '胡歌', '//p1.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300', NULL, NULL, 35),
('afb0fb128e56473baeb830ff9ba25efe', '566442496', '367e5a67e63d40d4898d22fdcdc889d7', '浪人琵琶', 'wy', '胡66', '胡66', 'http://p1.music.126.net/G5YxAyt9812z9MROfWarkg==/109951163318974870.jpg?param=300x300', NULL, NULL, 4),
('b3c54b19144c429081c304ec684247d0', '31877628', 'af82210004b248dcbd075713e3188480', '十年(Live)', 'wy', '我是歌手第三季 总决赛', '陈奕迅,韩红', '//p1.music.126.net/C69zO6_wapO94TOE5DnIBg==/2941193605503524.jpg?param=300x300', NULL, NULL, 4),
('b65057f6d108464f94adf760360acb52', '38576323', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '春风十里', 'wy', '所有的酒，都不如你', '鹿先森乐队', '//p2.music.126.net/hYjA4Th6CAdkWI_sm32juw==/109951163669459549.jpg?param=300x300', NULL, NULL, 4),
('bc04328516b842c7a0a676f2bac000a3', '110761', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '世界第一等(Live) - live', 'wy', '爱你一万年 99演唱会', '刘德华', '//p1.music.126.net/LRWWw0_d0wZWWicIKQIkfA==/65970697667341.jpg?param=300x300', NULL, NULL, 71),
('c643d9c7225c48c482c9f26e8b3116ce', '167882', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '清明雨上', 'wy', '自定义', '许嵩', '//p2.music.126.net/Md3RLH0fe2a_3dMDnfqoQg==/18590542604286213.jpg?param=300x300', NULL, NULL, 14),
('d019ae721cba41f2bdf10d006182d4e3', '1308818966', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '王牌冤家 (Live)', 'wy', '中国新说唱 第10期', '李荣浩,ICE', '//p1.music.126.net/D-mpVLLwMrA-hPu0QPYUNQ==/109951163551410648.jpg?param=300x300', NULL, NULL, 47),
('de882293bbfb4f4998e0b3c9c8e4ef7d', '66282', 'af82210004b248dcbd075713e3188480', '浮夸', 'wy', 'U-87', '陈奕迅', '//p1.music.126.net/Bl1hEdJbMSj5YJsTqUjr-w==/109951163520311175.jpg?param=300x300', NULL, NULL, 5),
('de8be2387c2b4a628bbba4071ac1f83c', '257098', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '为你我受冷风吹', 'wy', 'Love, Sandy', '林忆莲', '//p2.music.126.net/5qWWTetRGYBc-ktiJLZsCw==/109951163076136658.jpg?param=300x300', NULL, NULL, 58),
('e3867f660c4b43e1b13ae2f8ca730f39', '407002091', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '山丘 (Live)', 'wy', '跨年演唱会2013-2014 华语篇', '李宗盛', '//p2.music.126.net/B1ePGczwQUZueJl70TITWQ==/3287539775420245.jpg?param=300x300', NULL, NULL, 79),
('e4c845a615884794817ba3794be94e5c', '4872836', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '恋曲1990', 'wy', '光阴的故事 电视原声带', '罗大佑', '//p2.music.126.net/zSAh4E7r22sBV_E9pF8BSw==/109951163398305544.jpg?param=300x300', NULL, NULL, 8),
('e8b46e4beb42454eb86e0efcc9ec259e', '65808', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '记得我吗', 'wy', '让我再次介绍我自己', '陈冠希', '//p2.music.126.net/q7D80b3DfIMUyg1MX3yiDg==/109951163019889422.jpg?param=300x300', NULL, NULL, 60),
('e967fdf1a3064e4085d0c03f178ce601', '516728102', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '浪子回头', 'wy', '卡通人物', '茄子蛋', '//p1.music.126.net/emWwYFceRZ2plNWgnGUDfg==/109951163333175426.jpg?param=300x300', NULL, NULL, 72),
('eaa15043918342cb8fca36f76ee91a8e', '516076896', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '纸短情长（完整版）', 'wy', '纸短情长（完整版）', '烟把儿', '//p1.music.126.net/tbZaE-DjL_BkemynFlL1cQ==/109951163052534918.jpg?param=300x300', NULL, NULL, 28),
('eef4f0f523a34c2d92240ceaf8f78050', '86363', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '此生不换', 'wy', '仙剑奇侠传三 电视原声带', '青鸟飞鱼', '//p2.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300', NULL, NULL, 41),
('f32bb8953ea84085af0ea08a923f96cb', '452986458', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '红昭愿', 'wy', '红昭愿', '音阙诗听', '//p2.music.126.net/8ltR3o9R8uJ9_5Cc71cDhA==/109951162951242154.jpg?param=300x300', NULL, NULL, 43),
('f47025f78ab44e2893f25f730f560de0', '28854182', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '惊鸿一面', 'wy', '不如吃茶去', '黄龄,许嵩', '//p2.music.126.net/WoR2LbM1IFauFpvhBWOjqA==/6642149743396577.jpg?param=300x300', NULL, NULL, 12),
('f68c699061ed4cac886065786b0c33e0', '27937429', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '盛夏的果实', 'wy', '莫后年代 莫文蔚20周年世纪典藏', '莫文蔚', '//p2.music.126.net/iNcrt344tK6tME6tCbcbTw==/5818615534203000.jpg?param=300x300', NULL, NULL, 64),
('f848a40ea02b48098a50a4529dc4951f', '26145723', 'b71ada9e28474c0cbd3f2c3d4a5d0418', '你飞到城市另一边', 'wy', '春生', '好妹妹', '//p2.music.126.net/-miwFGJUNbUoT6FOLBfjCg==/18568552371584657.jpg?param=300x300', NULL, NULL, 26);

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
('b71ada9e28474c0cbd3f2c3d4a5d0418', 'sdtj', '', '966a34fe03a848aaa9503977b9e66c4b', '曲径通幽', '鲸落oh', '2019-03-19 10:09:27');

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
('1', 'admin', '202cb962ac59075b964b07152d234b70', '1', '1', 1, '2018-08-30 09:50:10', '1', '2019-03-19 18:16:25'),
('3b3a16b85c484afc820cfdac3916c33c', 'Cell', 'a2d2ff9f52ebdd315f69daaf7691088d', '1074627678', NULL, 1, '2019-03-19 12:59:07', '118.251.147.219', '2019-03-19 14:39:28'),
('966a34fe03a848aaa9503977b9e66c4b', 'hxb123456', 'e10adc3949ba59abbe56e057f20f883e', '1005760694', NULL, 1, '2019-03-18 17:55:47', '223.156.157.14', '2019-03-19 10:36:10');

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
