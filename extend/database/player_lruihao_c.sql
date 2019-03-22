-- MySQL dump 10.13  Distrib 5.5.62, for Linux (x86_64)
--
-- Host: localhost    Database: player_lruihao_c
-- ------------------------------------------------------
-- Server version	5.5.62-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
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
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES ('b023322d963a4cb887098ed7573cab18','竹林深处','966a34fe03a848aaa9503977b9e66c4b',1,1,65,1,'鲸落oh的博客','Hello KuDog（滑稽）！',1,1,1,-1,-1,1,-1,NULL),('f94ee8d6f6404a1e8ae0cff6fd05f98e','我的播放器','1',1,1,75,1,'博採眾長','欢迎光临寒舍！',1,1,1,330,100,1,3,NULL);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_song_sheet`
--

DROP TABLE IF EXISTS `player_song_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_song_sheet` (
  `player_id` varchar(32) DEFAULT NULL COMMENT '播放器id',
  `song_sheet_id` varchar(32) DEFAULT NULL COMMENT '歌单id',
  `taxis` int(3) DEFAULT NULL COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_song_sheet`
--

LOCK TABLES `player_song_sheet` WRITE;
/*!40000 ALTER TABLE `player_song_sheet` DISABLE KEYS */;
INSERT INTO `player_song_sheet` VALUES ('b023322d963a4cb887098ed7573cab18','b71ada9e28474c0cbd3f2c3d4a5d0418',0),('f94ee8d6f6404a1e8ae0cff6fd05f98e','af82210004b248dcbd075713e3188480',0);
/*!40000 ALTER TABLE `player_song_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
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
  `taxis` int(3) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES ('008671ef1e4e4915b2f65681d8bd948f','65533','af82210004b248dcbd075713e3188480','红玫瑰','wy','认了吧','陈奕迅','//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300',NULL,NULL,11),('0164340d96f24d778a6e58886cd9205b','27937429','b71ada9e28474c0cbd3f2c3d4a5d0418','盛夏的果实','wy','莫后年代 莫文蔚20周年世纪典藏','莫文蔚','//p2.music.126.net/iNcrt344tK6tME6tCbcbTw==/5818615534203000.jpg?param=300x300',NULL,NULL,59),('03b70dce4b4842f08b9b4da1686988f5','300062','b71ada9e28474c0cbd3f2c3d4a5d0418','人间','wy','王菲','王菲','//p1.music.126.net/6DS0esuwYLLgf9VyYi4R1A==/109951163165829326.jpg?param=300x300',NULL,NULL,70),('06bd14ef32cb41d19df2e58046577851','542755990','b71ada9e28474c0cbd3f2c3d4a5d0418','牡丹亭外','wy','牡丹亭外','洪尘','//p1.music.126.net/CeunQ3-2fJvqNNHdxv84fA==/109951163170790698.jpg?param=300x300',NULL,NULL,5),('09b5384107074c4da6092949e222adec','26584453','af82210004b248dcbd075713e3188480','梦伴','wy','历久尝新','李悦君Ericaceae','//p1.music.126.net/KWonqfsj39pd5_Yyf2bE6g==/109951163856433553.jpg?param=300x300',NULL,NULL,6),('0c1b871390304b53befc5becfac898f1','30352891','b71ada9e28474c0cbd3f2c3d4a5d0418','牵丝戏','wy','牵丝戏','Aki阿杰,银临','//p2.music.126.net/Nd86SOcyCxU5Qu7jdZn_MQ==/7725168696876736.jpg?param=300x300',NULL,NULL,40),('0ce6b45affc14c4a961d0c45a38e1eff','31140126','af82210004b248dcbd075713e3188480','喜欢你(藏语版)','wy','喜欢你(藏语版)','边巴德吉','//p2.music.126.net/SQULd6AWd8tIeXtf0jb5TQ==/7842816441501060.jpg?param=300x300',NULL,NULL,36),('0d99e90753a1498eaf12eb2b9d5fed1e','257098','b71ada9e28474c0cbd3f2c3d4a5d0418','为你我受冷风吹','wy','Love, Sandy','林忆莲','//p2.music.126.net/5qWWTetRGYBc-ktiJLZsCw==/109951163076136658.jpg?param=300x300',NULL,NULL,53),('0f64782a51ae4e75826979f7b7cdb8a8','509753804','b71ada9e28474c0cbd3f2c3d4a5d0418','我的新衣','wy','我的新衣','毛衍七Vava,Ty.,王倩倩','//p2.music.126.net/G8PBRq-mHKlEOseujgfJLg==/18846728811742394.jpg?param=300x300',NULL,NULL,47),('10236f5682704691935fad0269ed0797','26896044','b71ada9e28474c0cbd3f2c3d4a5d0418','身骑白马','wy','一声所爱 大地飞歌 第七期','汪小敏','//p2.music.126.net/5vOCqc96ZuQ89O_YcQGOmQ==/4454121604135439.jpg?param=300x300',NULL,NULL,28),('15beb35a5df4446e8bb8e264616d3ac1','564247979','af82210004b248dcbd075713e3188480','二十岁的某一天（Cover 花粥）','wy','王贰浪翻唱锦集','王贰浪','//p2.music.126.net/2-Zdyz0qAJki0YwCYDBnog==/109951163303451875.jpg?param=300x300',NULL,NULL,27),('1817857e61d34c32aba2510ddfcd8f8b','516728102','b71ada9e28474c0cbd3f2c3d4a5d0418','浪子回头','wy','卡通人物','茄子蛋','//p1.music.126.net/emWwYFceRZ2plNWgnGUDfg==/109951163333175426.jpg?param=300x300',NULL,NULL,67),('192927f6cd114a0ca20fe07dd8d2b854','5267292','af82210004b248dcbd075713e3188480','酒吧叙事体','wy','影秋','肖晨,陈小二','//p2.music.126.net/epvGQvvw_LcGLFtaGRQyMg==/105553116283763.jpg?param=300x300',NULL,NULL,24),('198ba04a2c954d69b40a2cdc00a87992','86369','b71ada9e28474c0cbd3f2c3d4a5d0418','偏爱','wy','仙剑奇侠传三 电视原声带','张芸京','//p2.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300',NULL,NULL,35),('1a193bd9f17a4cc1b1ca409a4a9a13ce','108108','af82210004b248dcbd075713e3188480','虎口脱险','wy','晴朗','老狼','//p1.music.126.net/tI1wLfO1Hbw3e6FydA6mmg==/814738116182329.jpg?param=300x300',NULL,NULL,34),('1db10c65983c4d5f8ac3f9549e7d192a','541480238','b71ada9e28474c0cbd3f2c3d4a5d0418','萤火虫','wy','萤火虫','GAI周延','//p1.music.126.net/a_k9dIRkOTpw-lKi4R3tqg==/109951163167371186.jpg?param=300x300',NULL,NULL,73),('1deca4481db24d41b010f10492206fc6','190499','b71ada9e28474c0cbd3f2c3d4a5d0418','给你们','wy','雨一直下','张宇','//p2.music.126.net/otCQ-2wUgLaEN2_W8Nf_DA==/57174604656249.jpg?param=300x300',NULL,NULL,8),('1fc70c5266c847728ed5e1971173c867','109198','b71ada9e28474c0cbd3f2c3d4a5d0418','恋曲1990','wy','昨日情歌74-89','罗大佑','//p2.music.126.net/HNHU4X2_wB41h5MvGn8ZXw==/109951163104937346.jpg?param=300x300',NULL,NULL,7),('2073552f4167466fa6fa27564dd81c08','526763682','af82210004b248dcbd075713e3188480','这些民谣 - 一次听个够','wy','这些民谣一次听个够','翁大涵','//p1.music.126.net/Wx5GNJEpay2JbfVUJc4Aew==/109951163094853876.jpg?param=300x300',NULL,NULL,29),('217808ae49bd443e90568a09c78b614c','27759600','b71ada9e28474c0cbd3f2c3d4a5d0418','Five Hundred Miles','wy','Inside Llewyn Davis: Original Soundtrack Recording','Justin Timberlake,Carey Mulligan,Stark Sands','//p1.music.126.net/4BTe96FPQ_kW1pmNnlNvHg==/2536573326765583.jpg?param=300x300',NULL,NULL,13),('224928ac5c92459b82319f59cf10ea14','28830157','b71ada9e28474c0cbd3f2c3d4a5d0418','莫名我就喜欢你','wy','老时光','C-BLOCK','//p2.music.126.net/4yI-ClgZGIGaHisOWwJFXg==/5931865232257374.jpg?param=300x300',NULL,NULL,36),('23a5d2c2093c47af8d884823967bb957','86360','b71ada9e28474c0cbd3f2c3d4a5d0418','忘记时间','wy','仙剑奇侠传三 电视原声带','胡歌','//p2.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300',NULL,NULL,38),('2a9360cd7f8a417a8ec0135a4e820f42','455345092','b71ada9e28474c0cbd3f2c3d4a5d0418','以下范上','wy','以下范上','C-BLOCK','//p2.music.126.net/JmeLbT0Z3dkRGoP-G3Xh1w==/18604836255326600.jpg?param=300x300',NULL,NULL,51),('2d6ae6e9c5554b48addf341142f44b68','65800','af82210004b248dcbd075713e3188480','最佳损友','wy','Life Continues…','陈奕迅','//p1.music.126.net/7skxWYp7lF70y347YAjaBQ==/109951163256304204.jpg?param=300x300',NULL,NULL,17),('2d8c1298d0644c0e9e556351c816e274','65536','af82210004b248dcbd075713e3188480','爱情转移','wy','认了吧','陈奕迅','//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300',NULL,NULL,16),('2f0a12e55f354841b137a7c8340e9c13','1296583190','b71ada9e28474c0cbd3f2c3d4a5d0418','冠军 (Live)','wy','中国新说唱 第3期','功夫胖KungFuPen,派克特（PACT）','//p2.music.126.net/4k-pMEO-en8IE6PdJoAYfg==/109951163429466895.jpg?param=300x300',NULL,NULL,45),('310e9d4279774bc7b61167a863b1a6c1','65533','b71ada9e28474c0cbd3f2c3d4a5d0418','红玫瑰','wy','认了吧','陈奕迅','//p2.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300',NULL,NULL,63),('328d68ab7a9b49388659ef8352dc7042','276225','b71ada9e28474c0cbd3f2c3d4a5d0418','夕阳之歌(Live) - live','wy','Anita Classic Moment(Live)','梅艳芳','//p1.music.126.net/0M95B8YEeo5tGUPU306sAw==/43980465112216.jpg?param=300x300',NULL,NULL,62),('34f65915e91b48acb6fb6aedf4536286','31445772','af82210004b248dcbd075713e3188480','理想三旬','wy','浓烟下的诗歌电台','陈鸿宇','//p2.music.126.net/cqTTEPAaxXG3cOwaE4E_-g==/109951163104103366.jpg?param=300x300',NULL,NULL,13),('39904117caa94eea9ca940ea52a4a6cd','1306507665','b71ada9e28474c0cbd3f2c3d4a5d0418','再见Hip-Hop','wy','再见Hip-Hop','张震岳,MC Hotdog,功夫胖KungFuPen,派克特（PACT）','//p1.music.126.net/bcRYaryCL7bysJEYswwkPQ==/109951163536049237.jpg?param=300x300',NULL,NULL,42),('39d46b9d9a1e4ba680bd7f0b476993b5','86367','b71ada9e28474c0cbd3f2c3d4a5d0418','答应不爱你','wy','仙剑奇侠传三 电视原声带','郑中基','//p2.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300',NULL,NULL,33),('3a1fa8dfe7584817892935a5b4e68f98','186016','b71ada9e28474c0cbd3f2c3d4a5d0418','晴天','wy','叶惠美','周杰伦','//p1.music.126.net/yjVbsgfNeF2h7fIvnxuZDQ==/18894007811887644.jpg?param=300x300',NULL,NULL,57),('3e8480df43dd41099b68316d37aba778','415086030','b71ada9e28474c0cbd3f2c3d4a5d0418','我从崖边跌落','wy','算云烟','谢春花','//p2.music.126.net/Eg4cy0_HIF2nrX2gMCsWkQ==/17967119509636556.jpg?param=300x300',NULL,NULL,3),('3f641c50d7214aa9a48fe1eda0dfbdcf','407002091','b71ada9e28474c0cbd3f2c3d4a5d0418','山丘 (Live)','wy','跨年演唱会2013-2014 华语篇','李宗盛','//p2.music.126.net/B1ePGczwQUZueJl70TITWQ==/3287539775420245.jpg?param=300x300',NULL,NULL,74),('4015f97a2f194fd7aa6795a3e46d8554','167876','b71ada9e28474c0cbd3f2c3d4a5d0418','有何不可','wy','自定义','许嵩','//p2.music.126.net/Md3RLH0fe2a_3dMDnfqoQg==/18590542604286213.jpg?param=300x300',NULL,NULL,29),('4ac75ce2716b4cf08938fa64a717c59e','002K4xqW4A7m7q','b71ada9e28474c0cbd3f2c3d4a5d0418','不为谁而作的歌','qq','不为谁而作的歌','林俊杰','//y.gtimg.cn/music/photo_new/T002R300x300M000003nbc0602Tgfx.jpg',NULL,NULL,0),('4dccc5fc88674117a66eedb5e49b5436','185709','b71ada9e28474c0cbd3f2c3d4a5d0418','稻香','wy','魔杰座','周杰伦','//p1.music.126.net/HBanuZpt8SD2kf15AFa6Og==/109951163200234839.jpg?param=300x300',NULL,NULL,56),('4e70b7829f284e95b72da50160bea695','1296583188','b71ada9e28474c0cbd3f2c3d4a5d0418','星球坠落 (Live)','wy','中国新说唱 第3期','艾热,李佳隆','//p1.music.126.net/4k-pMEO-en8IE6PdJoAYfg==/109951163429466895.jpg?param=300x300',NULL,NULL,48),('504f794c2ff746b2b680b9b5f7bb8c75','64093','af82210004b248dcbd075713e3188480','孤独患者','wy','？','陈奕迅','//p1.music.126.net/Po0tJTtv4aBaYozWlnojHg==/18546562139313276.jpg?param=300x300',NULL,NULL,28),('50f6d4dfcd7c4c6abba961ad914cc5c8','40249612','af82210004b248dcbd075713e3188480','蜜蜂 demo','wy','蜜蜂 demo','万岁爺','//p2.music.126.net/gd2PKucCGry4rrABpUkveg==/16666397254078952.jpg?param=300x300',NULL,NULL,30),('5267d1c0a8174a978a2ac458fb7db761','82486','af82210004b248dcbd075713e3188480','春风吹','wy','Soul Boy','方大同','//p2.music.126.net/3pmKRpJV5tMyWzlsgFXq9w==/104453604650862.jpg?param=300x300',NULL,NULL,3),('529ac9ddea2849b9b12892f031a53ba9','26508240','af82210004b248dcbd075713e3188480','梵高先生','wy','梵高先生','李志','//p2.music.126.net/UuSe-Vc6rS7JtRJSQgDU2g==/2323268069553116.jpg?param=300x300',NULL,NULL,9),('52a36eebb38247c5a4f0e1d73a6f313a','474099732','b71ada9e28474c0cbd3f2c3d4a5d0418','空城计','wy','空城计','Gosh Music,GAI周延','//p2.music.126.net/FsYpwni1WWfDHOv-PRDW1w==/109951162910489580.jpg?param=300x300',NULL,NULL,49),('5746f3858b2649239d920500f1b77a92','437755447','af82210004b248dcbd075713e3188480','途','wy','谈论孤独','倪健','//p2.music.126.net/eTp4DFm1HvqD-quy4G8HJA==/18447606091092384.jpg?param=300x300',NULL,NULL,35),('5a4d99e189244b9da7c153074a6165a8','29759733','af82210004b248dcbd075713e3188480','可乐','wy','赵浴辰原创demo精选','赵紫骅','//p2.music.126.net/qOfVT6izV4mBe4IyQn489Q==/18190320370401891.jpg?param=300x300',NULL,NULL,14),('5b05771d32fa4a668c2819d13c291132','135050','b71ada9e28474c0cbd3f2c3d4a5d0418','差不多先生','wy','差不多先生','MC Hotdog','//p1.music.126.net/0W1VSKBbqMYtn0QPYpSa1w==/87960930234844.jpg?param=300x300',NULL,NULL,20),('5cfd6e2edecf4358ac60e4124e24cbbc','26508242','af82210004b248dcbd075713e3188480','你离开了南京，从此没有人和我说话','wy','梵高先生','李志','//p2.music.126.net/UuSe-Vc6rS7JtRJSQgDU2g==/2323268069553116.jpg?param=300x300',NULL,NULL,0),('663908dd04264e4ca1535c18e92a904b','194405','b71ada9e28474c0cbd3f2c3d4a5d0418','笑看风云','wy','笑看风云','郑少秋','//p1.music.126.net/Sj1SSxfsLV_j0r777n71SQ==/35184372105673.jpg?param=300x300',NULL,NULL,64),('6a031a89ad1e4134b1e29ed265d8bb82','66282','af82210004b248dcbd075713e3188480','浮夸','wy','U-87','陈奕迅','//p1.music.126.net/Bl1hEdJbMSj5YJsTqUjr-w==/109951163520311175.jpg?param=300x300',NULL,NULL,21),('6eb7d9c8d92e41a388e351ffd844b6f8','65766','af82210004b248dcbd075713e3188480','富士山下','wy','What\'s Going On…?','陈奕迅','//p1.music.126.net/PcJq6i7zMcPgudejdn1yeg==/109951163256302356.jpg?param=300x300',NULL,NULL,23),('73b124ef83a7431d9aeb8d9fdf205a09','26508186','af82210004b248dcbd075713e3188480','天空之城','wy','我爱南京','李志','//p2.music.126.net/qDiDdR6wbQCsGsn34dmCVg==/2378243650941255.jpg?param=300x300',NULL,NULL,10),('74d61da547a0441fbfb9aa0de8d36e90','4875306','b71ada9e28474c0cbd3f2c3d4a5d0418','逍遥叹','wy','仙剑奇侠传 电视原声带','胡歌','//p2.music.126.net/4tTN8CnR7wG4E1cauIPCvQ==/109951163240682406.jpg?param=300x300',NULL,NULL,32),('74fb27708e8540188ac2404aacf6ce29','95410','b71ada9e28474c0cbd3f2c3d4a5d0418','新鸳鸯蝴蝶梦','wy','新鸳鸯蝴蝶梦','黄安','//p2.music.126.net/bA0VutnGbJSfI5ZbiVMpcw==/38482906984192.jpg?param=300x300',NULL,NULL,30),('768389ef37524bcdae5cef305516782a','1315952365','b71ada9e28474c0cbd3f2c3d4a5d0418','这首歌没唱直接听','wy','这首歌没唱直接听','姜云升','//p1.music.126.net/iB5EZWPSOaSWwz2rHyGn7Q==/109951163590307649.jpg?param=300x300',NULL,NULL,54),('77ace60e182044f98e307dc5266196e5','418603077','b71ada9e28474c0cbd3f2c3d4a5d0418','告白气球','wy','周杰伦的床边故事','周杰伦','//p1.music.126.net/cUTk0ewrQtYGP2YpPZoUng==/3265549553028224.jpg?param=300x300',NULL,NULL,58),('7e958708fd4046a28a0c590a94bee1fb','65528','af82210004b248dcbd075713e3188480','淘汰','wy','认了吧','陈奕迅','//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300',NULL,NULL,19),('83f4248d70604b94a0d61b600cbf1fad','26353044','af82210004b248dcbd075713e3188480','忽然','wy','你好,郑州','李志','//p2.music.126.net/80diFjTazGCdf0Ql3HAqGA==/2296879790481625.jpg?param=300x300',NULL,NULL,12),('87c1972964244ee4842ab350615ea655','86357','b71ada9e28474c0cbd3f2c3d4a5d0418','生生世世爱','wy','仙剑奇侠传三 电视原声带','吴雨霏','//p2.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300',NULL,NULL,34),('8832266a1561468fad6e14c921fa21eb','26145723','b71ada9e28474c0cbd3f2c3d4a5d0418','你飞到城市另一边','wy','春生','好妹妹','//p2.music.126.net/-miwFGJUNbUoT6FOLBfjCg==/18568552371584657.jpg?param=300x300',NULL,NULL,22),('89ea2562671d42be817ce9310d43b544','0023mA5S0ovPNP','af82210004b248dcbd075713e3188480','Katrina','qq','Live For Today','陈奕迅','//y.gtimg.cn/music/photo_new/T002R300x300M000003Hjc6L1WajuE.jpg',NULL,NULL,1),('8a07329cd4c8439eb91c121472b1cbea','5255662','b71ada9e28474c0cbd3f2c3d4a5d0418','当爱已成往事','wy','我们的主打歌','李宗盛,林忆莲','//p1.music.126.net/QoYAmdyE7FL_vc9rwNeS9w==/64871186055842.jpg?param=300x300',NULL,NULL,72),('8a3d730635734676b43fe634800b82f1','26361010','b71ada9e28474c0cbd3f2c3d4a5d0418','光阴的故事','wy','光阴的故事','邓超,佟大为,黄晓明','//p1.music.126.net/3K6W80SyZ0ZIy3btLRlZMw==/7820826208648668.jpg?param=300x300',NULL,NULL,6),('8b9b3ff82d654389b5f5f72ca1ceb5ce','1308818966','b71ada9e28474c0cbd3f2c3d4a5d0418','王牌冤家 (Live)','wy','中国新说唱 第10期','李荣浩,ICE','//p1.music.126.net/D-mpVLLwMrA-hPu0QPYUNQ==/109951163551410648.jpg?param=300x300',NULL,NULL,43),('8b9e645c1bb6405f8fa3eed79a7422c6','31168087','b71ada9e28474c0cbd3f2c3d4a5d0418','关于小熊','wy','2015中国嘻哈颁奖合辑','蛋堡','//p1.music.126.net/NalnchFlm7-5D9aWR3fXtg==/2885118513808177.jpg?param=300x300',NULL,NULL,18),('8fdeb0c662364e20b8e0675fb2fc33f0','1296583187','b71ada9e28474c0cbd3f2c3d4a5d0418','东成西就 (Live)','wy','中国新说唱 第3期','Max马俊,本帮PQ','//p1.music.126.net/4k-pMEO-en8IE6PdJoAYfg==/109951163429466895.jpg?param=300x300',NULL,NULL,44),('9415f6aebfab484f8a32e4bccd53a991','299757','b71ada9e28474c0cbd3f2c3d4a5d0418','红豆','wy','Eyes On Me','王菲','//p1.music.126.net/62SmuCNsZRdyY_GEZWk_Ag==/109951163416516218.jpg?param=300x300',NULL,NULL,71),('99b9f440319148b6ae58f6007ec2ea27','452986458','b71ada9e28474c0cbd3f2c3d4a5d0418','红昭愿','wy','红昭愿','音阙诗听','//p2.music.126.net/8ltR3o9R8uJ9_5Cc71cDhA==/109951162951242154.jpg?param=300x300',NULL,NULL,39),('9a2f08e8538f471cb6989e0f593dcf3d','1318571230','b71ada9e28474c0cbd3f2c3d4a5d0418','很高兴认识你','wy','很高兴认识你','C-BLOCK','//p2.music.126.net/UU09arK_fRlyWVdh2znikA==/109951163610766464.jpg?param=300x300',NULL,NULL,52),('9ce634717d754fa9950aebc71eb4fe21','110761','b71ada9e28474c0cbd3f2c3d4a5d0418','世界第一等(Live) - live','wy','爱你一万年 99演唱会','刘德华','//p1.music.126.net/LRWWw0_d0wZWWicIKQIkfA==/65970697667341.jpg?param=300x300',NULL,NULL,66),('a0fe3e29106e46e8a34e125bd8b355cc','26508232','af82210004b248dcbd075713e3188480','山阴路的夏天','wy','F','李志','//p2.music.126.net/7w7pX7BKTdBcFF1AtuZC2g==/5957153999486269.jpg?param=300x300',NULL,NULL,8),('a1b3de8103464eacaa56c4e2596b6e9b','505820138','af82210004b248dcbd075713e3188480','听说','wy','听说','丛铭君','//p2.music.126.net/fHIsIYyut1N658aI0i7KxQ==/109951163024333101.jpg?param=300x300',NULL,NULL,7),('a2116a6e4e2948f4a9b40959068f38ce','1304920094','b71ada9e28474c0cbd3f2c3d4a5d0418','目不转睛 (Live)','wy','中国新说唱 第7期','王以太','//p1.music.126.net/MoLKXK3YBWYHcVnrZqdlDw==/109951163513814630.jpg?param=300x300',NULL,NULL,46),('a6c939ab5b464e10b9ec5d8459d63f7e','40249713','af82210004b248dcbd075713e3188480','爱情','wy','爱情 cover','万岁爺','//p2.music.126.net/1QedM4J0bYs58jPJCyDMHg==/16634511416879337.jpg?param=300x300',NULL,NULL,31),('a845d52c96c84014a82218cc6da2f1b3','454966913','b71ada9e28474c0cbd3f2c3d4a5d0418','江湖流','wy','以下范上','C-BLOCK','//p2.music.126.net/JmeLbT0Z3dkRGoP-G3Xh1w==/18604836255326600.jpg?param=300x300',NULL,NULL,50),('a8b54b7facdf4aa5b94704278df00d29','25867002','af82210004b248dcbd075713e3188480','关于郑州的记忆','wy','你好,郑州','李志','//p2.music.126.net/80diFjTazGCdf0Ql3HAqGA==/2296879790481625.jpg?param=300x300',NULL,NULL,5),('aad447a8cbee4cd98ee21cd2ee30c29a','38576323','b71ada9e28474c0cbd3f2c3d4a5d0418','春风十里','wy','所有的酒，都不如你','鹿先森乐队','//p2.music.126.net/hYjA4Th6CAdkWI_sm32juw==/109951163669459549.jpg?param=300x300',NULL,NULL,4),('ac51f586d9c84966999af333699dbc2a','32450986','b71ada9e28474c0cbd3f2c3d4a5d0418','走在冷风中','wy','走在冷风中','二珂','//p2.music.126.net/iAaRt_l_ussYqkLVuDEpqg==/2931298001578529.jpg?param=300x300',NULL,NULL,17),('ac7f5b4024f242b3bdf26c4994f5c710','516076896','b71ada9e28474c0cbd3f2c3d4a5d0418','纸短情长（完整版）','wy','纸短情长（完整版）','烟把儿','//p1.music.126.net/tbZaE-DjL_BkemynFlL1cQ==/109951163052534918.jpg?param=300x300',NULL,NULL,24),('ad68a1976859454f970a34b345771f95','569012732','af82210004b248dcbd075713e3188480','陈小姐的话','wy','再见济南','楚胜尧','//p2.music.126.net/Uv8GqlKVqNaOqi6fPJp1ag==/109951163336323828.jpg?param=300x300',NULL,NULL,25),('b01b6487eb3a4494bcd9934d6823d2ae','86363','b71ada9e28474c0cbd3f2c3d4a5d0418','此生不换','wy','仙剑奇侠传三 电视原声带','青鸟飞鱼','//p2.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300',NULL,NULL,37),('b298b531053646589579ebdfa176eaba','22852057','af82210004b248dcbd075713e3188480','爱你','wy','Kimberley首张同名专辑 ','陈芳语','//p1.music.126.net/0Xvz_4oS4YLCvWtQcXU05Q==/17867063951755098.jpg?param=300x300',NULL,NULL,15),('b4bcd93d8674424aa016d021da3550f8','258000','b71ada9e28474c0cbd3f2c3d4a5d0418','飘洋过海来看你','wy','天荒地老(李翊君的情歌1)','李翊君','//p1.music.126.net/87fFbDK4Wqk-JtmRnBXBaw==/31885837220910.jpg?param=300x300',NULL,NULL,9),('b4f32db1fb5d4f3f8df3ebff05ff1e7e','65538','af82210004b248dcbd075713e3188480','好久不见','wy','认了吧','陈奕迅','//p1.music.126.net/o_OjL_NZNoeog9fIjBXAyw==/18782957139233959.jpg?param=300x300',NULL,NULL,22),('b580b30d0aaa4d58bd17040b24931bed','65766','b71ada9e28474c0cbd3f2c3d4a5d0418','富士山下','wy','What\'s Going On…?','陈奕迅','//p2.music.126.net/PcJq6i7zMcPgudejdn1yeg==/109951163256302356.jpg?param=300x300',NULL,NULL,65),('b8dfba5f7c5d4c22b3efababb2ef3b93','502043537','af82210004b248dcbd075713e3188480','第三人称（Cover Hush！）','wy','第三人称（Cover）','买辣椒也用券','//p1.music.126.net/gZ4VUKzlS5Nk1DTmlicb7w==/109951163013152269.jpg?param=300x300',NULL,NULL,32),('baa21f8647634f83a007bc2bf2213ffe','86365','b71ada9e28474c0cbd3f2c3d4a5d0418','光棍','wy','仙剑奇侠传三 电视原声带','胡歌','//p1.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=300x300',NULL,NULL,31),('bb4f1c770aae45178f8ce66d8f0636a6','001fStSB2fgBl1','b71ada9e28474c0cbd3f2c3d4a5d0418','白月光 (Live)','qq','梦想的声音第三季 第5期','张靓颖','//y.gtimg.cn/music/photo_new/T002R300x300M000001KpG2Y3Wqq2R.jpg',NULL,NULL,1),('c026e826d6164581b9d98025000bf037','1320098329','b71ada9e28474c0cbd3f2c3d4a5d0418','原来你也在这里','wy','原来你也在这里','周笔畅','//p2.music.126.net/qppSA-tF_S0SAkastKDpxA==/109951163626553866.jpg?param=300x300',NULL,NULL,27),('c36f46867d1746b9a4270293b7b9572f','507795470','b71ada9e28474c0cbd3f2c3d4a5d0418','都选C','wy','都选C','大鹏','//p2.music.126.net/FCvXiE-OndiMDYUkaXDK1w==/109951163029337837.jpg?param=300x300',NULL,NULL,25),('c3efc19ea7564217bf52cb1042cc3c52','25906124','af82210004b248dcbd075713e3188480','不要说话','wy','不想放手','陈奕迅','//p1.music.126.net/96L4ojVi9N3tdHk3r3GXjQ==/109951163066640079.jpg?param=300x300',NULL,NULL,18),('ca0913f2101f4177b64dbf5428f28756','1293886117','b71ada9e28474c0cbd3f2c3d4a5d0418','年少有为','wy','耳朵','李荣浩','//p2.music.126.net/tt8xwK-ASC2iqXNUXYKoDQ==/109951163606377163.jpg?param=300x300',NULL,NULL,68),('cd3bf74757c346158d7c613e53afc90e','551816010','af82210004b248dcbd075713e3188480','我们','wy','我们','陈奕迅','//p1.music.126.net/Ng7OR-bdgrHQKXzLyj2mGg==/109951163240732641.jpg?param=300x300',NULL,NULL,26),('d45e4d785ea94521b871e5fb29360f24','185882','b71ada9e28474c0cbd3f2c3d4a5d0418','本草纲目','wy','依然范特西','周杰伦','//p1.music.126.net/06Yhj36Qu3ZCQJklc9MNKg==/7980255395852522.jpg?param=300x300',NULL,NULL,26),('d75376c0823748f3bc0b00b4bdcd78e5','29414460','b71ada9e28474c0cbd3f2c3d4a5d0418','往事只能回味','wy','说时依旧','好妹妹','//p2.music.126.net/GCJy3VguiVQIvzfTwResMg==/2535473813700425.jpg?param=300x300',NULL,NULL,23),('d8bb61896a1848a08a0384790a3f5aaf','65808','b71ada9e28474c0cbd3f2c3d4a5d0418','记得我吗','wy','让我再次介绍我自己','陈冠希','//p2.music.126.net/q7D80b3DfIMUyg1MX3yiDg==/109951163019889422.jpg?param=300x300',NULL,NULL,55),('d95d1a8cc3da4f708899c5b8753ada66','28802028','b71ada9e28474c0cbd3f2c3d4a5d0418','山水之间','wy','不如吃茶去','许嵩','//p2.music.126.net/WoR2LbM1IFauFpvhBWOjqA==/6642149743396577.jpg?param=300x300',NULL,NULL,12),('da16058b7f31430cad3d3690e0c34e7a','64048','b71ada9e28474c0cbd3f2c3d4a5d0418','完','wy','...3mm','陈奕迅','//p1.music.126.net/JR-EYm7IAvaH7FYWVo5T9A==/18913799021152505.jpg?param=300x300',NULL,NULL,61),('dab3d414b0da4e34a1a7589cb523ae0f','22852057','367e5a67e63d40d4898d22fdcdc889d7','爱你','wy','Kimberley首张同名专辑 ','陈芳语','//p1.music.126.net/0Xvz_4oS4YLCvWtQcXU05Q==/17867063951755098.jpg?param=300x300',NULL,NULL,0),('dadedfe4d3ba4e27b8ab551ba35cc863','28854182','b71ada9e28474c0cbd3f2c3d4a5d0418','惊鸿一面','wy','不如吃茶去','黄龄,许嵩','//p2.music.126.net/WoR2LbM1IFauFpvhBWOjqA==/6642149743396577.jpg?param=300x300',NULL,NULL,11),('de9ded3759504b2a82790075ae8a5b5d','571338279','af82210004b248dcbd075713e3188480','往后余生','wy','往后余生','王贰浪','//p2.music.126.net/hTiVEeQTUSsc-YGF3o6ItQ==/109951163337847600.jpg?param=300x300',NULL,NULL,4),('def820cf0b4b49f2af03a7c1a135a1b0','419374177','af82210004b248dcbd075713e3188480','带我走（Live）','wy','Live','沈以诚','//p1.music.126.net/iTnTdUWHWY6CDerH2C_7MA==/17716430858604455.jpg?param=300x300',NULL,NULL,2),('e16cad9e3adc448b8eb0a75cbd365a84','2308499','b71ada9e28474c0cbd3f2c3d4a5d0418','My Heart Will Go On','wy','My Love: Ultimate Essential Collection (North American Version)','Celine Dion','//p1.music.126.net/mO1OUNjZtCEIvAGdr7YXaA==/813638604607979.jpg?param=300x300',NULL,NULL,14),('e4b1ee8ca1934de2a377ed745e4abceb','574566207','b71ada9e28474c0cbd3f2c3d4a5d0418','盗将行','wy','粥请客（二）','花粥,马雨阳','//p2.music.126.net/-qHPT3rhxDlu5zQV9NcQ-A==/109951163555860423.jpg?param=300x300',NULL,NULL,41),('e53619fcfaa94e56916ec88e2e6311e0','481853239','b71ada9e28474c0cbd3f2c3d4a5d0418','白月光','wy','我想和你唱 第二季 第6期','张信哲,陈沁','//p1.music.126.net/MrmH7CNHWCbh4dLEt6CvaQ==/18923694625814745.jpg?param=300x300',NULL,NULL,60),('e67be91c7a3b4c44a335097fa024eebf','1311347372','b71ada9e28474c0cbd3f2c3d4a5d0418','纸飞机 (live)','wy','中国新说唱 第11期','那吾克热-NW','//p2.music.126.net/tCYU129ppfsdJ74Z4qdRNg==/109951163562341847.jpg?param=300x300',NULL,NULL,15),('ee32e5ff25344f97b8b42af4783abda8','29414459','b71ada9e28474c0cbd3f2c3d4a5d0418','清平调','wy','说时依旧','好妹妹','//p1.music.126.net/GCJy3VguiVQIvzfTwResMg==/2535473813700425.jpg?param=300x300',NULL,NULL,21),('ef4ad9b6734d47f8a1dea2ef76d0fcf0','222589','af82210004b248dcbd075713e3188480','Mask','wy','4-6 pm','岑宁儿','//p2.music.126.net/ysoMqTdeHyMXxPh99SXiZQ==/6660841441166295.jpg?param=300x300',NULL,NULL,33),('f151e1d4c5f14cd4824b5a93137637f2','33781092','b71ada9e28474c0cbd3f2c3d4a5d0418','匆匆那年','wy','热门华语273','二珂','//p1.music.126.net/T1hieWGtIXaZYiFO22Z50Q==/3405187512278984.jpg?param=300x300',NULL,NULL,16),('f1ec8616dde14185a0fbd70cb6405fc4','135111','b71ada9e28474c0cbd3f2c3d4a5d0418','九局下半','wy','九局下半','MC Hotdog','//p1.music.126.net/MZUQyESX-DMrrzC5sH9Fxw==/1653665488188665.jpg?param=300x300',NULL,NULL,19),('f35f0a070d244160babd307ccc345417','299981','b71ada9e28474c0cbd3f2c3d4a5d0418','暧昧','wy','菲主打','王菲','//p2.music.126.net/l9vAoPLeU2BAA2utoMWbGA==/19028148230552607.jpg?param=300x300',NULL,NULL,69),('f6673c4a66de4f79bac20750cf29e8ca','003nIdG82oTT9N','b71ada9e28474c0cbd3f2c3d4a5d0418','雪落下的声音','qq','延禧攻略OST','陆虎','//y.gtimg.cn/music/photo_new/T002R300x300M000000J03M71fRT7g.jpg',NULL,NULL,2),('faba8be37a454afb92db8cee49c36c3c','31877628','af82210004b248dcbd075713e3188480','十年(Live)','wy','我是歌手第三季 总决赛','陈奕迅,韩红','//p1.music.126.net/C69zO6_wapO94TOE5DnIBg==/2941193605503524.jpg?param=300x300',NULL,NULL,20),('fb63c043fc8a471b8a803f6d3a442886','30953009','b71ada9e28474c0cbd3f2c3d4a5d0418','See You Again','wy','Furious 7 (Original Motion Picture Soundtrack)','Wiz Khalifa,Charlie Puth','//p2.music.126.net/JIc9X91OSH-7fUZqVfQXAQ==/7731765766799133.jpg?param=300x300',NULL,NULL,10);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_sheet`
--

DROP TABLE IF EXISTS `song_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_sheet` (
  `id` varchar(32) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `sheet_id` varchar(20) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL COMMENT '歌单所属用户',
  `name` varchar(30) DEFAULT NULL COMMENT '歌单名称',
  `author` varchar(30) DEFAULT NULL COMMENT '歌单作者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_sheet`
--

LOCK TABLES `song_sheet` WRITE;
/*!40000 ALTER TABLE `song_sheet` DISABLE KEYS */;
INSERT INTO `song_sheet` VALUES ('af82210004b248dcbd075713e3188480','sdtj','','1','所爱民谣','Cell','2019-03-20 20:09:55'),('b71ada9e28474c0cbd3f2c3d4a5d0418','sdtj','','966a34fe03a848aaa9503977b9e66c4b','曲径通幽','鲸落oh','2019-03-19 10:09:27');
/*!40000 ALTER TABLE `song_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(20) DEFAULT NULL COMMENT '用户账号',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `qq` varchar(15) DEFAULT NULL COMMENT 'QQ号码',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱地址',
  `status` int(1) DEFAULT '1' COMMENT '状态 1:启用 0:禁用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_ip` varchar(32) DEFAULT NULL COMMENT '创建时ip',
  `last_login_time` datetime DEFAULT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1','admin','202cb962ac59075b964b07152d234b70','1','1',1,'2018-08-30 09:50:10','1','2019-03-22 19:04:42'),('3b3a16b85c484afc820cfdac3916c33c','Cell','a2d2ff9f52ebdd315f69daaf7691088d','1074627678',NULL,1,'2019-03-19 12:59:07','118.251.147.219','2019-03-19 14:39:28'),('966a34fe03a848aaa9503977b9e66c4b','hxb123456','e10adc3949ba59abbe56e057f20f883e','1005760694',NULL,1,'2019-03-18 17:55:47','223.156.157.14','2019-03-20 14:43:22');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-22 19:10:18
