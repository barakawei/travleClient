# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 10.0.13-MariaDB)
# Database: travle
# Generation Time: 2015-01-18 21:27:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table apply
# ------------------------------------------------------------

DROP TABLE IF EXISTS `apply`;

CREATE TABLE `apply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` text,
  `other` text,
  `location` text,
  `create_time` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table area
# ------------------------------------------------------------

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `order_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;

INSERT INTO `area` (`id`, `name`, `order_index`)
VALUES
	(1,'华东',1),
	(2,'华南',2),
	(3,'华中',3),
	(4,'华北',4),
	(5,'西北',5),
	(6,'西南',6),
	(7,'东北',7),
	(8,'港澳台',8);

/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `provice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;

INSERT INTO `city` (`id`, `name`, `area_id`, `provice`)
VALUES
	(1,'北京',4,'北京'),
	(2,'上海',1,'上海'),
	(3,'大连',7,'大连');

/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pic`;

CREATE TABLE `pic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pic` WRITE;
/*!40000 ALTER TABLE `pic` DISABLE KEYS */;

INSERT INTO `pic` (`id`, `type`, `url`, `width`, `height`, `create_time`, `target_id`, `target`)
VALUES
	(1,'avatar_small','http://7u2m1e.com1.z0.glb.clouddn.com/gugong002.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(2,'avatar_large','http://7u2m1e.com1.z0.glb.clouddn.com/gugong004.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(3,'album','http://7u2m1e.com1.z0.glb.clouddn.com/gugong009.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(4,'album','http://7u2m1e.com1.z0.glb.clouddn.com/gugong001.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(5,'album','http://7u2m1e.com1.z0.glb.clouddn.com/gugong003.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(6,'album','http://7u2m1e.com1.z0.glb.clouddn.com/gugong005.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(7,'album','http://7u2m1e.com1.z0.glb.clouddn.com/gugong006.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(8,'album','http://7u2m1e.com1.z0.glb.clouddn.com/gugong007.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(9,'album','http://7u2m1e.com1.z0.glb.clouddn.com/gugong008.jpg',800,800,'2015-01-18 00:00:00',1,'scenic');

/*!40000 ALTER TABLE `pic` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table scenic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `scenic`;

CREATE TABLE `scenic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `info` text,
  `ticket` text,
  `location` varchar(255) DEFAULT NULL,
  `traffic` text,
  `notice` text,
  `city_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_large` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `scenic` WRITE;
/*!40000 ALTER TABLE `scenic` DISABLE KEYS */;

INSERT INTO `scenic` (`id`, `name`, `info`, `ticket`, `location`, `traffic`, `notice`, `city_id`, `area_id`, `url`, `url_large`)
VALUES
	(1,'故宮（こきゅう）','故宮（こきゅう）は、中華人民共和国の首都北京市に所在する明清朝の旧王宮である歴史的建造物。面積は 725,000m² あり、世界最大の皇宮で、明と清の24代にわたる皇帝の宮城であった。1987年、「北京と瀋陽の明・清王朝皇宮」の一つとしてユネスコの世界遺産（文化遺産)に登録されている。名称故宮とは「古い宮殿、昔の宮殿」という意味で、現在は博物館（故宮博物院#中国 北京市）になっている。黄色と朱色からなる故宮博物院は幻想的な世界で、観る者の期待を決して裏切りません。','☆公園の開放時間＆料金:\r・4～10月 8:00～16:00、入園料60元\r・11～3月 8:30～15:30、入園料40元\r月曜日閉館(祝日と、7月1日から8月31日までの夏季休暇を除く)\r※鐘表館と珍宝館は別途10元                                                                                                        ※留学生は中国で発行された学生証により学割が適用される場合があるが、基本的に外国人は子供も含めて一般料金が適用になる。','北京市東城区故宮博物院','・北京市地下鉄1号線天安門西站（駅）より故宮博物院紫禁城へ徒歩約11分\r・天安門西站（駅）よりバス1、5、10、22、37、52、205、99、728番線、專1番線、專2番線 で約5分（1元 )\r・天安門東站（駅）よりバス1、2、10、20、82、120、37、52、126、99、203、205、210、728番線、專1番線、專2番線で約5分(1元 )\r・北京国際空港から故宮博物院南門までタクシーで約32分\r・北京市地下鉄5号線東四站（駅）から、神武門（北門）へ故宮下車：バス109、609、619番線乗車約13分(1元 )','①2011年7月より故宮観光は南(午門)から入って北(神武門)から出るという一方通行になった。以前のように北からの入場&チケット購入はできないので要注意 ！                               ②2013年5月より、故宮内の灰皿が全撤去され全面禁煙になった。',1,4,'http://7u2m1e.com1.z0.glb.clouddn.com/gugong002.jpg','http://7u2m1e.com1.z0.glb.clouddn.com/gugong004.jpg'),
	(2,'頤和園（いわえん）','頤和園は、北京の海淀区西郊外に位置し、市の中心からの距離は12キロほどのところにある、中国に現存する最大の古代庭園（園林）である。1998年12月に、ユネスコの世界文化遺産に登録された。\r頤和園は元々清蔬園と呼ばれ、清代の繁栄期である乾隆年間（1736～1795年）に創建された。乾隆帝は色を好まず、放蕩をきらい、ただ「山水の楽、懐に忘るあたわず」『御制静宜園記』を心情としていた。清蔬園の施工平面図や立体模型は、すべてみずから審査許可して、所管した。清蔬園は乾隆15年（1750年）に着工、15年の歳月を経て、乾隆29年（1764年）に完工した。\r 乾隆帝が手がけた清蔬園は、歴代皇帝と同様に、その思想と好みによって建造され。乾隆帝は「天人合一、皇帝権力至上の思想」、「長寿不老の神仙思想」、「享楽の思想」を造園思想とした。そのため、清蔬園は歴代皇室の庭園や私家庭園、名山大川、著名な寺院の精華を融合させて、中国の典型的な庭園芸術の代表作となったのである。 ','☆公園の開放時間＆料金:\r・4～10月　6：30～18:00、入園料30元　通し券60元　\r・11～来年3月8：30～17:00、入園料：20元　通し券：50元　\r\r☆観光ポイントの開放時間\r・4～10月　　7：00～17：00\r・11～来年3月　9：00～16：00\r','北京市海淀区新建宫門路19号   ','交通アクセス:   \r・バス209、330、331、332、346、394、712、718、726、732、696、683、801、808、817、926番線、頤和園バス停で下車。\r・バス303、330、331、346、375、384、393、634、716、718、696、683、801、808、817、834、特5番線、頤和園北宮門バス停で下車。\r・バス374、437、704、992、481、952番線、頤和園新建宮門バス停で下車。\r・バス469番線、頤和園西門バス停で下車。\r','①平均観光時間は3～7時間\r②近くにある観光地：',1,4,'http://7u2m1e.com1.z0.glb.clouddn.com/yiheyuan003.jpg','http://7u2m1e.com1.z0.glb.clouddn.com/yiheyuan007.jpg'),
	(3,'東方明珠電視塔（とうほうめいしゅ-でんしとう）','東方明珠テレビタワー、オリエンタルパールタワーとも呼ばれている。上海市の黄浦江のほとり、浦東新区陸家嘴金融貿易区に位置し、１９９１年７月３０日から着工し、１９９４年１０月１日に完成した。高さは４６８メートルで、上海市のシンボルの一つになっている。 \r　オリエンタルパールタワーについて、最も特別なのは、１１個の大きさの異なっているボールを形よく直列に繋いでいることである。主な二つのボール、いわゆる上球体と下球体の直径はそれぞれ５０メートルと４５メートルで、三本の柱によって繋がれている。また、最高のボールの直径は１４メートルである。建築全体はすべて太い三本の柱はに支えられている。 \r　オリエンタルパールタワーは合わせて１５階の観光フロアがある。最高の観光フロアー宇宙カプセルという展望台は３５０メートルの高さに位置し、それから２５０メートルのメーン展望台と２５９メートル、９０メートルの室外の展望台が設けられいている。タワーの頂点では、電波の波及の役割として、長さ１１８メートルのアンテナが設置されている。世界によく知られている回転レストランは２６７メートルにあり、また２０個部屋を持っている宇宙ホテルという場所は二つの球体間に位置している。オリエンタルパールタワーは展覧、食事、ショッピングを一体とする観光スポットである。\r　２００９年５月１日、２５９メートルに位置している高空観光回廊は正式に一般の市民に向けてオープンした。高空回廊は二番目のボールに位置し、周長は２５０メートルで、広さ２．１メートルである。観光客は透明なグラスの下の黄浦江の美しい景色を満喫することもできる。','☆開放時間＆料金\r・開放時間：8:00 ～21：30\n切符売り場営業時間：21：00まで　　　　　　　　　　　　　　　　　　　　　　　　　　　　 \r・入場料\r◎観光+遊船　180元　上球体までの見学と、塔内にある上海城市歴史発展陳列館入場料、浦江遊覧船セット。\r◎A票　180元　全ての展望台見学と上海城市歴史発展陳列館のセット。\r◎B票　150元　上球体までの見学と上海城市歴史発展陳列館のセット。\r◎C票　120元　上球体の見学と上海城市歴史発展陳列館のセット。\r◎午餐　268元　B票に昼食をセットしたもの。\r◎晩餐　298元　B票に夕食をセットしたもの。\r※入場料の割引\r①70歳以上は4割引。（パスポート持参要）\r②身長1m40㎝以下の子供は半額、1m以下の子供は無料。','上海市浦東世紀大道 1 号','※ 外灘から外灘観光隧道を使って川を渡るのがもっとも便利\rTEL：021-58791888\r交通アクセス：\r・空港からのアクセス：\r　上海虹橋空港からの場合、距離は23KM、タクシーで35分程度\r　上海浦東国際空港からの場合、距離は43KM、タクシーで50分程度\r・地下鉄2号線で陸家嘴駅で下車\r・バス81番線、82番線、85番線、774番線、789番線、795番線、870番線、971番線、983番線、985番線、993番線、陸家嘴金融城1番線、 陸家嘴旅遊環線を利用する\r※外灘から外灘観光トンネルを使って川を渡るのがもっとも便利\r','①周辺観光情報：\r　ショッピング：IFC、正大広場\r 　ホテル：香格里拉酒店、丽思卡尔顿酒店、新天哈瓦那酒店、上海国际会议中心 \r②所要観光時間：２～３時間',2,1,NULL,NULL),
	(4,'老虎灘','4kmの海岸線と断崖絶壁の岩場により形成された大連市を代表する景勝地で、老虎灘広場には中国を代表する彫刻家であり、北京オリンピックのマスコット・福娃のデザイナーとしても知られる韓美林の手による35mの巨大な6頭のトラのモニュメント「群虎彫塑（群虎彫像）」が控える。岬の突端には「老虎灘」と刻まれた石碑が建てられ、その下には老虎洞という洞穴がある。隣接する大連老虎灘海洋公園には、鳥語林（野鳥園）、白熊などの動物をはじめ、イルカ・アシカのショーを見学できる大連極地館、珊瑚館などがあり、2005年5月8日には、国家旅遊局から最高級である国家5A級景区に指定された。','☆公園の開放時間＆料金\r・開放時間：8:00～17:00\r・入園料：\r　4月～10月：　210元\r　11月～3月：　190元\r　　　　　　　　　　　　　　　　　　　　　　　\r※切符はすべて通し券である、鳥語林（野鳥園）、大連極地館、珊瑚館などの施設の入園料を含む。しかし、利用できるのは一回だけであるため、少し離れた鳥語林（野鳥園）は一番最初または最後に訪れたほうがよい\r※割引券：\r①身長130cm以下の児童は入園料を免除\r②身長130cm以上、年齢が18歳以下の場合、入園料は170元となる。（パスポートを持参する必要がある）\r③65歳以上のお年よりは入園料が半額となる。（パスポートを持参する必要がある）','大連市中山区浜海中路9号','交通アクセス：\r・バス30、404番線で老虎灘バス停で下車\r・バス２番線で工人療養院バス停で下車\r・バス２、４、403、404番線で解放路バス停で下車\r・空港からタクシーを利用する場合は、およそ30分で、料金は35元程度','①平均観光時間は3～7時間\r②近くにある観光地：',3,7,NULL,NULL);

/*!40000 ALTER TABLE `scenic` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
