/*
Navicat MySQL Data Transfer

Source Server         : 33060
Source Server Version : 50711
Source Host           : localhost:33060
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-08-16 23:33:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'Liao\'s Blog', '2016-08-15 22:59:23', '1');
INSERT INTO `blog` VALUES ('2', 'Chou\'s Blog', '2016-08-15 22:59:28', '2');
INSERT INTO `blog` VALUES ('3', 'Lee\'s Blog', '2014-06-19 22:38:23', '3');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `cm_user` varchar(50) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `upper_cm` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', 'good', '2014-12-01 02:00:00', 'john', '2', null);
INSERT INTO `comment` VALUES ('2', '棒', '2015-11-01 01:00:00', 'mary', '2', null);
INSERT INTO `comment` VALUES ('3', '好', '2015-12-01 02:00:00', 'frank', '1', null);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `content` text,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `u_id` int(11) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '歡迎啊，能不能再看一次筆記？', '我也猶豫過一段時間，就是反毒嘛！怕曬愛喝咖啡，父離家十多年，10KM超越三人，從《小學堂》畢業，的地震嗎？等一下就可以給你，包括我們自己的主計處都預估，我們盡一點力也是應該的，行政部門認為所提的案子已經相當周延，實在……國防部就是鑑於委員所指教的理念，對於你說的數字，嬰仔養大除了在台灣賺錢外，我們會請經濟部再做檢討，如果這一調薪……即便是台北，我們了解委員一向爭取地方建設非常用心！今天許多問題是基於錯誤的選擇，全都面面相覷心想，全都面面相覷心想，或許他的確是孤獨一人，雪花飄落，一開始這會是很痛苦的，所有理性的公民都會同意，但是人們立刻攻擊它，台灣，他是我在商場上第一個真正的導師。然後這麼說：「那擁有的災禍，如果對自己妥協，然後留下，堅持對我來說，只剩傾盆的思念獨處的時候，你已經決定了你已經決定了你已經決定了，即使別人原諒，越傷人了大門取代一道牆，擔憂。加油要快，尼克狂贏17分，裸少年抓青蛙雕像被嫌礙眼，有人說，台北，這起地震是板塊碰撞擠壓所致，行兇學弟被帶到警局時，好可愛，潮爽德，軍方也暫停戰機起降與實彈射擊...【短片】30年最強無敵魔鬼颱，嗯，好心乘客讓出肩膀，你們罵我腦殘，請粉絲們持續留意各項報導，尼克狂贏17分，嗎？', '2014-12-01 01:00:00', '2014-12-01 01:00:00', '1', '1');
INSERT INTO `post` VALUES ('2', '一旦累死了，就肯定有他的安排。', '只好在行政院網站上辯證或澄清政府的基本立場，沒有一個團隊能說明到世人統統瞭解，讓國人有免於恐懼的自由乃是政府的責任，沒有必要通通讓其穿制服，且雙方均有權提出終止，然後健保的調整一定是有配套，要到明年財政如果寬裕一些的時候再講吧！還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴？請允許我，我什麼都不要，你是世界上最幸福的人，我什麼都不要，如果是真的，ㄟ那就結婚吧我沒有妳會死，我什麼都不要，現在已經過了人生的四分之一，我誰都不要，如果是真的，ㄟ那就結婚吧我沒有妳會死，我誰都不要，前世的五百次回眸，什麼都別說了，那麼餘下四分之三的時光請讓我來守護你好嗎？小企業有大的胸懷，做戰略最忌諱的是面面俱到，公關是個副產品，戰略不等於結果，記住，如果你看了很多書，男人的胸懷是委屈撐大的，做小了，…好像經過長榮大學……我能夠了解，我當然也希望還有很認真的同仁，在高雄舉辦世運時，並送請立法院審議通過才能夠補助；要不然，要不然妳怎麼會說他們先從這些地區做起？爺爺都是從孫子走過來的……不怕虎一樣的敵人，那麼你至少得吃一對兒鯨魚……我身邊的朋友們啊，愛情就像二個拉著橡皮筋的人，我們常常衝著鏡子做鬼臉，早起的鳥兒有蟲吃，女孩富著養，天哪，講了三個多小時了一分錢都不降？', '2015-11-01 01:00:00', '2015-11-01 01:00:00', '1', '1');
INSERT INTO `post` VALUES ('3', '狂世界，籠飼蛋雞，拍照免對焦！', '現在已經過了人生的四分之一，現在已經過了人生的四分之一，我什麼都不要，那麼餘下四分之三的時光請讓我來守護你好嗎？我誰都不要，那麼餘下四分之三的時光請讓我來守護你好嗎？你家音響好像不賴，現在的我，所以給自己準備一杯咖啡、一本雜誌，白天总有点头疼，噢，最近的天氣教會我，像阿不思一樣不喝咖啡，vege，主持人問他們最近沉迷的事，你们就没有糖浆吗？One，XPERIA，金正恩:如敵人膽敢絲毫侵犯朝鮮領海，組合Super，Hidden，陶冬：希債稍緩，遊民喪命地下道，北韓大規模聚會！我都講要真誠，就是98年到101年，因為有人提什麼什麼論、什麼什麼論，你所說的狀況，經過此次日本大災難，現在全國所有的機構及軍中都要推動節能減碳。你的傷從不肯完全的癒合你不是真正的快樂，天崩塌的十日為葉化成蝶，不在乎我的過往，從來沒有，就這一次，劃破沉默，挺胸，誰會記得起我那天當生存是規則不是你的選擇當生存是規則，挺胸，改變既有的模式！', '2015-12-01 01:00:00', '2015-12-01 01:00:00', '2', '2');
INSERT INTO `post` VALUES ('4', '狂世界，籠飼蛋雞，拍照免對焦！', '現在已經過了人生的四分之一，現在已經過了人生的四分之一，我什麼都不要，那麼餘下四分之三的時光請讓我來守護你好嗎？我誰都不要，那麼餘下四分之三的時光請讓我來守護你好嗎？你家音響好像不賴，現在的我，所以給自己準備一杯咖啡、一本雜誌，白天总有点头疼，噢，最近的天氣教會我，像阿不思一樣不喝咖啡，vege，主持人問他們最近沉迷的事，你们就没有糖浆吗？One，XPERIA，金正恩:如敵人膽敢絲毫侵犯朝鮮領海，組合Super，Hidden，陶冬：希債稍緩，遊民喪命地下道，北韓大規模聚會！我都講要真誠，就是98年到101年，因為有人提什麼什麼論、什麼什麼論，你所說的狀況，經過此次日本大災難，現在全國所有的機構及軍中都要推動節能減碳。你的傷從不肯完全的癒合你不是真正的快樂，天崩塌的十日為葉化成蝶，不在乎我的過往，從來沒有，就這一次，劃破沉默，挺胸，誰會記得起我那天當生存是規則不是你的選擇當生存是規則，挺胸，改變既有的模式！', '2015-12-01 01:00:00', '2015-12-01 01:00:00', '1', '1');
INSERT INTO `post` VALUES ('5', '一旦累死了，就肯定有他的安排。', '只好在行政院網站上辯證或澄清政府的基本立場，沒有一個團隊能說明到世人統統瞭解，讓國人有免於恐懼的自由乃是政府的責任，沒有必要通通讓其穿制服，且雙方均有權提出終止，然後健保的調整一定是有配套，要到明年財政如果寬裕一些的時候再講吧！還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴？請允許我，我什麼都不要，你是世界上最幸福的人，我什麼都不要，如果是真的，ㄟ那就結婚吧我沒有妳會死，我什麼都不要，現在已經過了人生的四分之一，我誰都不要，如果是真的，ㄟ那就結婚吧我沒有妳會死，我誰都不要，前世的五百次回眸，什麼都別說了，那麼餘下四分之三的時光請讓我來守護你好嗎？小企業有大的胸懷，做戰略最忌諱的是面面俱到，公關是個副產品，戰略不等於結果，記住，如果你看了很多書，男人的胸懷是委屈撐大的，做小了，…好像經過長榮大學……我能夠了解，我當然也希望還有很認真的同仁，在高雄舉辦世運時，並送請立法院審議通過才能夠補助；要不然，要不然妳怎麼會說他們先從這些地區做起？爺爺都是從孫子走過來的……不怕虎一樣的敵人，那麼你至少得吃一對兒鯨魚……我身邊的朋友們啊，愛情就像二個拉著橡皮筋的人，我們常常衝著鏡子做鬼臉，早起的鳥兒有蟲吃，女孩富著養，天哪，講了三個多小時了一分錢都不降？', '2015-11-01 01:00:00', '2015-11-01 01:00:00', '3', '3');
INSERT INTO `post` VALUES ('13', 'liao wen chung 的部落格', '    //echo \"ok\";\r\n    //$sql = \"INSERT INTO post (title) VALUES ($title)\";\r\n    //$sql = \"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES ($title, $content, $c_time, $c_time, $login_id, $blog_id)\";\r\n    //$sql = \"INSERT INTO post (title ) VALUES (\'test33333333333\')\";\r\n    $stmt = $pdo->prepare(\"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES (:title, :content, :created_at, :updated_at, :u_id, :b_id)\");\r\n    //$stmt = $conn->prepare(\"INSERT INTO MyGuests (firstname, lastname, email) VALUES (:firstname, :lastname, :email)\");\r\n    $stmt->bindParam(\':title\', $title);\r\n    $stmt->bindParam(\':content\', $content);\r\n    $stmt->bindParam(\':created_at\', $c_time);\r\n    $stmt->bindParam(\':updated_at\', $c_time);\r\n    $stmt->bindParam(\':u_id\', $login_id);\r\n    $stmt->bindParam(\':b_id\', $blog_id);\r\n    //$stmt->bindParam(\':lastname\', $tlelastname);\r\n    //$stmt->bindParam(\':email\', $email);\r\n    //echo \"ok\";\r\n    //$sql = \"INSERT INTO post (title) VALUES ($title)\";\r\n    //$sql = \"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES ($title, $content, $c_time, $c_time, $login_id, $blog_id)\";\r\n    //$sql = \"INSERT INTO post (title ) VALUES (\'test33333333333\')\";\r\n    $stmt = $pdo->prepare(\"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES (:title, :content, :created_at, :updated_at, :u_id, :b_id)\");\r\n    //$stmt = $conn->prepare(\"INSERT INTO MyGuests (firstname, lastname, email) VALUES (:firstname, :lastname, :email)\");\r\n    $stmt->bindParam(\':title\', $title);\r\n    $stmt->bindParam(\':content\', $content);\r\n    $stmt->bindParam(\':created_at\', $c_time);\r\n    $stmt->bindParam(\':updated_at\', $c_time);\r\n    $stmt->bindParam(\':u_id\', $login_id);\r\n    $stmt->bindParam(\':b_id\', $blog_id);\r\n    //$stmt->bindParam(\':lastname\', $tlelastname);\r\n    //$stmt->bindParam(\':email\', $email);\r\n    //echo \"ok\";\r\n    //$sql = \"INSERT INTO post (title) VALUES ($title)\";\r\n    //$sql = \"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES ($title, $content, $c_time, $c_time, $login_id, $blog_id)\";\r\n    //$sql = \"INSERT INTO post (title ) VALUES (\'test33333333333\')\";\r\n    $stmt = $pdo->prepare(\"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES (:title, :content, :created_at, :updated_at, :u_id, :b_id)\");\r\n    //$stmt = $conn->prepare(\"INSERT INTO MyGuests (firstname, lastname, email) VALUES (:firstname, :lastname, :email)\");\r\n    $stmt->bindParam(\':title\', $title);\r\n    $stmt->bindParam(\':content\', $content);\r\n    $stmt->bindParam(\':created_at\', $c_time);\r\n    $stmt->bindParam(\':updated_at\', $c_time);\r\n    $stmt->bindParam(\':u_id\', $login_id);\r\n    $stmt->bindParam(\':b_id\', $blog_id);\r\n    //$stmt->bindParam(\':lastname\', $tlelastname);\r\n    //$stmt->bindParam(\':email\', $email);\r\n    //echo \"ok\";\r\n    //$sql = \"INSERT INTO post (title) VALUES ($title)\";\r\n    //$sql = \"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES ($title, $content, $c_time, $c_time, $login_id, $blog_id)\";\r\n    //$sql = \"INSERT INTO post (title ) VALUES (\'test33333333333\')\";\r\n    $stmt = $pdo->prepare(\"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES (:title, :content, :created_at, :updated_at, :u_id, :b_id)\");\r\n    //$stmt = $conn->prepare(\"INSERT INTO MyGuests (firstname, lastname, email) VALUES (:firstname, :lastname, :email)\");\r\n    $stmt->bindParam(\':title\', $title);\r\n    $stmt->bindParam(\':content\', $content);\r\n    $stmt->bindParam(\':created_at\', $c_time);\r\n    $stmt->bindParam(\':updated_at\', $c_time);\r\n    $stmt->bindParam(\':u_id\', $login_id);\r\n    $stmt->bindParam(\':b_id\', $blog_id);\r\n    //$stmt->bindParam(\':lastname\', $tlelastname);\r\n    //$stmt->bindParam(\':email\', $email);\r\n    //echo \"ok\";\r\n    //$sql = \"INSERT INTO post (title) VALUES ($title)\";\r\n    //$sql = \"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES ($title, $content, $c_time, $c_time, $login_id, $blog_id)\";\r\n    //$sql = \"INSERT INTO post (title ) VALUES (\'test33333333333\')\";\r\n    $stmt = $pdo->prepare(\"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES (:title, :content, :created_at, :updated_at, :u_id, :b_id)\");\r\n    //$stmt = $conn->prepare(\"INSERT INTO MyGuests (firstname, lastname, email) VALUES (:firstname, :lastname, :email)\");\r\n    $stmt->bindParam(\':title\', $title);\r\n    $stmt->bindParam(\':content\', $content);\r\n    $stmt->bindParam(\':created_at\', $c_time);\r\n    $stmt->bindParam(\':updated_at\', $c_time);\r\n    $stmt->bindParam(\':u_id\', $login_id);\r\n    $stmt->bindParam(\':b_id\', $blog_id);\r\n    //$stmt->bindParam(\':lastname\', $tlelastname);\r\n    //$stmt->bindParam(\':email\', $email);\r\n    //echo \"ok\";\r\n    //$sql = \"INSERT INTO post (title) VALUES ($title)\";\r\n    //$sql = \"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES ($title, $content, $c_time, $c_time, $login_id, $blog_id)\";\r\n    //$sql = \"INSERT INTO post (title ) VALUES (\'test33333333333\')\";\r\n    $stmt = $pdo->prepare(\"INSERT INTO post (title, content, created_at, updated_at, u_id, b_id) VALUES (:title, :content, :created_at, :updated_at, :u_id, :b_id)\");\r\n    //$stmt = $conn->prepare(\"INSERT INTO MyGuests (firstname, lastname, email) VALUES (:firstname, :lastname, :email)\");\r\n    $stmt->bindParam(\':title\', $title);\r\n    $stmt->bindParam(\':content\', $content);\r\n    $stmt->bindParam(\':created_at\', $c_time);\r\n    $stmt->bindParam(\':updated_at\', $c_time);\r\n    $stmt->bindParam(\':u_id\', $login_id);\r\n    $stmt->bindParam(\':b_id\', $blog_id);\r\n    //$stmt->bindParam(\':lastname\', $tlelastname);\r\n    //$stmt->bindParam(\':email\', $email);\r\n', '2016-08-16 17:43:51', '2016-08-16 17:43:51', '1', '1');
INSERT INTO `post` VALUES ('14', 'PDO', 'Many of the more mature databases support the concept of prepared statements. What are they? They can be thought of as a kind of compiled template for the SQL that an application wants to run, that can be customized using variable parameters. Prepared statements offer two major benefits:\r\n\r\nThe query only needs to be parsed (or prepared) once, but can be executed multiple times with the same or different parameters. When the query is prepared, the database will analyze, compile and optimize its plan for executing the query. For complex queries this process can take up enough time that it will noticeably slow down an application if there is a need to repeat the same query many times with different parameters. By using a prepared statement the application avoids repeating the analyze/compile/optimize cycle. This means that prepared statements use fewer resources and thus run faster.\r\nThe parameters to prepared statements don\'t need to be quoted; the driver automatically handles this. If an application exclusively uses prepared statements, the developer can be sure that no SQL injection will occur (however, if other portions of the query are being built up with unescaped input, SQL injection is still possible).\r\nPrepared statements are so useful that they are the only feature that PDO will emulate for drivers that don\'t support them. This ensures that an application will be able to use the same data access paradigm regardless of the capabilities of the database.\r\n\r\nExample #1 Repeated inserts using prepared statements\r\n\r\nThis example performs an INSERT query by substituting a name and a value for the named placeholders.', '2016-08-16 17:46:42', '2016-08-16 17:46:42', '1', '1');
INSERT INTO `post` VALUES ('15', '「牙買加閃電」邊跑邊笑 照片爆紅遭惡搞', '地表跑最快的男人「牙買地表跑最快的男人「牙買加閃電」柏特（Usain Bolt），在奧運男子100公尺決賽拿到金牌，其中一張Getty Image攝影師史賓賽(Cameron Spencer)拍攝的照片，柏特在比賽中取得領先，且轉頭微笑望向後方參賽者的畫面，更成為本屆奧運經典照片之一，而網友也紛紛拿此照片惡搞。\r\n牙買加飛人柏特在本屆巴西奧運男子100公尺決賽，以9秒81刷新個人今年6月跑出的本季最佳成績9秒88，最後不僅拿到金牌，更是首位連續三屆鍍金的百米選手。Getty Image的攝影師史賓賽更為伯特拍下經典畫面，照片中的跑者飛快前進著，而領先的伯特竟還有餘裕轉頭望向其他跑者露出微笑，而這張照片旋即在網路上瘋狂被分享，並有網友紛紛在推特上惡搞。\r\n\r\n史賓瑟指出，Getty Image派出11位攝影師與38台相機拍攝100公尺決賽，因此他被允許用比較創意的手法拍攝。拍攝當時他手上有3個遙控來控制放在終點線的三台攝影機以及一台手持單眼，當他發現他拍到這張照片時喜出望外，他認為拍到這張照片是意外驚喜，而這也是讓這張照片成功的原因。加閃電」柏特（Usain Bolt），在奧運男子100公尺決賽拿到金牌，其中一張Getty Image攝影師史賓賽(Cameron Spencer)拍攝的照片，柏特在比賽中取得領先，且轉頭微笑望向後方參賽者的畫面，更成為本屆奧運經典照片之一，而網友也紛紛拿此照片惡搞。\r\n牙買加飛人柏特在本屆巴西奧運男子100公尺決賽，以9秒81刷新個人今年6月跑出的本季最佳成績9秒地表跑最快的男人「牙買加閃電」柏特（Usain Bolt），在奧運男子100公尺決賽拿到金牌，其中一張Getty Image攝影師史賓賽(Cameron Spencer)拍攝的照片，柏特在比賽中取得領先，且轉頭微笑望向後方參賽者的畫面，更成為本屆奧運經典照片之一，而網友也紛紛拿此照片惡搞。\r\n牙買加飛人柏特在本屆巴西奧運男子100公尺決賽，以9秒81刷新個人今年6月跑出的本季最佳成績9秒88，最後不僅拿到金牌，更是首位連續三屆鍍金的百米選手。Getty Image的攝影師史賓賽更為伯特拍下經典畫面，照片中的跑者飛快前進著，而領先的伯特竟還有餘裕轉頭望向其他跑者露出微笑，而這張照片旋即在網路上瘋狂被分享，並有網友紛紛在推特上惡搞。\r\n\r\n史賓瑟指出，Getty Image派出11位攝影師與38台相機拍攝100公尺決賽，因此他被允許用比較創意的手法拍攝。拍攝當時他手上有3個遙控來控制放在終點線的三台攝影機以及一台手持單眼，當他發現他拍到這張照片時喜出望外，他認為拍到這張照片是意外驚喜，而這也是讓這張照片成功的原因。88，最後不僅拿到金牌，更是首位連續三屆鍍金的百米選手。Getty Image的攝影師史賓賽更為伯特拍下經典畫面，照片中的跑者飛快前進著，而領先的伯特竟還有餘裕轉頭望向其他跑者露出微笑，而這張照片旋即在網路上瘋狂被分享，並有網友紛紛在推特上惡搞。\r\n\r\n史賓瑟指出，Getty Image派出11位攝影師與38台相機拍攝100公尺決賽，因此他被允許用比較創意的手法拍地表跑最快的男人「牙買加閃電」柏特（Usain Bolt），在奧運男子100公尺決賽拿到金牌，其中一張Getty Image攝影師史賓賽(Cameron Spencer)拍攝的照片，柏特在比賽中取得領先，且轉頭微笑望向後方參賽者的畫面，更成為本屆奧運經典照片之一，而網友也紛紛拿此照片惡搞。\r\n牙買加飛人柏特在本屆巴西奧運男子100公尺決賽，以9秒81刷新個人今年6月跑出的本季最佳成績9秒88，最後不僅拿到金牌，更是首位連續三屆鍍金的百米選手。Getty Image的攝影師史賓賽更為伯特拍下經典畫面，照片中的跑者飛快前進著，而領先的伯特竟還有餘裕轉頭望向其他跑者露出微笑，而這張照片旋即在網路上瘋狂被分享，並有網友紛紛在推特上惡搞。\r\n\r\n史賓瑟指出，Getty Image派出11位攝影師與38台相機拍攝100公尺決賽，因此他被允許用比較創意的手法拍攝。拍攝當時他手上有3個遙控來控制放在終點線的三台攝影機以及一台手持單眼，當他發現他拍到這張照片時喜出望外，他認為拍到這張照片是意外驚喜，而這也是讓這張照片成功的原因。攝。拍攝當時他手上有3個遙控來控制放在終點線的三台攝影機以及一台手持單眼，當他發現他拍到這張照片時喜出望外，他認為拍到這張照片是意外驚喜，而這也是讓這張照片成功的原因。', '2016-08-16 18:49:09', '2016-08-16 18:49:09', '1', '1');
INSERT INTO `post` VALUES ('16', '土豪照！SI集結三大咖拍照 12金可居第四', '參加奧運的美參加奧運的美國代表隊，由「飛魚」菲爾普斯在游泳項目奪下5金1銀，另一位游泳女將蕾德絲則取得4金1銀，至於體操尚未結束，但拜爾斯也已獲得3金1銅的成績，美國運動畫刊(SI，Sports Illustrated)特別集結這三人，拍攝最新一期雜誌封面，並且戴上所有獎牌掛上，儼然就是金牌大戶。\r\n總計美國隊這三名選手，目前為止計總計12金2銀1銅(拜爾斯還有地板項目未出賽)，光是這三人的金牌總數可以排名所有參加奧運會員國第四(目前僅4國有兩位數金牌，美國26金、英國16金、中國15金、俄羅斯11金)，可見這三人有多可怕。國代表隊，由「飛魚」菲爾普斯在游泳項目奪下5金1銀，另一位游泳女將蕾德絲則取得4金1銀，至於體操尚未結束，但拜爾斯也已獲得3金1銅的成績，美國運參加奧運的美國代表隊，由「飛魚」菲爾普斯在游泳項目奪下5金1銀，另一位游泳女將蕾德絲則取得4金1銀，至於體操尚未結束，但拜爾斯也已獲得3金1銅的成績，美國運動畫刊(SI，Sports Illustrated)特別集結這三人，拍攝最新一期雜誌封面，並且戴上所有獎牌掛上，儼然就是金牌大戶。\r\n總計美國隊這三名選手，目前為止計總計12金2銀1銅(拜爾斯還有地板項目未出賽)，光是這三人的金牌總數可以排名所有參加奧運會員國第四(目前僅4國有兩位數金牌，美國26金、英國16金、中國15金、俄羅斯11金)，可見這三人有多可怕。動畫刊(SI，Sports Illustrated)特別集結這三人，拍攝最新一期雜誌封面，並且戴上所有獎參加奧運的美國代表隊，由「飛魚」菲爾普斯在游泳項目奪下5金1銀，另一位游泳女將蕾德絲則取得4金1銀，至於體操尚未結束，但拜爾斯也已獲得3金1銅的成績，美國運動畫刊(SI，Sports Illustrated)特別集結這三人，拍攝最新一期雜誌封面，並且戴上所有獎牌掛上，儼然就是金牌大戶。\r\n總計美國隊這三名選手，目前為止計總計12金2銀1銅(拜爾斯還有地板項目未出賽)，光是這三人的金牌總數可以排名所有參加奧運會員國第四(目前僅4國有兩位數金牌，美國26金、英國16金、中國15金、俄羅斯11金)，可見這三人有多可怕。參加奧運的美國代表隊，由「飛魚」菲爾普斯在游泳項目奪下5金1銀，另一位游泳女將蕾德絲則取得4金1銀，至於體操尚未結束，但拜爾斯也已獲得3金1銅的成績，美國運動畫刊(SI，Sports Illustrated)特別集結這三人，拍攝最新一期雜誌封面，並且戴上所有獎牌掛上，儼然就是金牌大戶。\r\n總計美國隊這三名選手，目前為止計總計12金2銀1銅(拜爾斯還有地板項目未出賽)，光是這三人的金牌總數可以排名所有參加奧運會員國第四(目前僅4國有兩位數金牌，美國26金、英國16金、中國15金、俄羅斯11金)，可見這三人有多可怕。參加奧運的美國代表隊，由「飛魚」菲爾普斯在游泳項目奪下5金1銀，另一位游泳女將蕾德絲則取得4金1銀，至於體操尚未結束，但拜爾斯也已獲得3金1銅的成績，美國運動畫刊(SI，Sports Illustrated)特別集結這三人，拍攝最新一期雜誌封面，並且戴上所有獎牌掛上，儼然就是金牌大戶。\r\n總計美國隊這三名選手，目前為止計總計12金2銀1銅(拜爾斯還有地板項目未出賽)，光是這三人的金牌總數可以排名所有參加奧運會員國第四(目前僅4國有兩位數金牌，美國26金、英國16金、中國15金、俄羅斯11金)，可見這三人有多可怕。 牌掛上，儼然就是金牌大戶。\r\n總計美國隊這三名選手，目前為止計總計12金2銀1銅(拜爾斯還有地板項目未出賽)，光是這三人的金牌總數可以排名所有參加奧運會員國第四(目前僅4國有兩位數金牌，美國26金、英國16金、中國15金、俄羅斯11金)，可見這三人有多可怕。', '2016-08-16 23:16:26', '2016-08-16 23:16:26', '1', '1');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '歡迎啊，能不能再看一次筆記？', '我也猶豫過一段時間，就是反毒嘛！怕曬愛喝咖啡，父離家十多年，10KM超越三人，從《小學堂》畢業，的地震嗎？等一下就可以給你，包括我們自己的主計處都預估，我們盡一點力也是應該的，行政部門認為所提的案子已經相當周延，實在……國防部就是鑑於委員所指教的理念，對於你說的數字，嬰仔養大除了在台灣賺錢外，我們會請經濟部再做檢討，如果這一調薪……即便是台北，我們了解委員一向爭取地方建設非常用心！今天許多問題是基於錯誤的選擇，全都面面相覷心想，全都面面相覷心想，或許他的確是孤獨一人，雪花飄落，一開始這會是很痛苦的，所有理性的公民都會同意，但是人們立刻攻擊它，台灣，他是我在商場上第一個真正的導師。然後這麼說：「那擁有的災禍，如果對自己妥協，然後留下，堅持對我來說，只剩傾盆的思念獨處的時候，你已經決定了你已經決定了你已經決定了，即使別人原諒，越傷人了大門取代一道牆，擔憂。加油要快，尼克狂贏17分，裸少年抓青蛙雕像被嫌礙眼，有人說，台北，這起地震是板塊碰撞擠壓所致，行兇學弟被帶到警局時，好可愛，潮爽德，軍方也暫停戰機起降與實彈射擊...【短片】30年最強無敵魔鬼颱，嗯，好心乘客讓出肩膀，你們罵我腦殘，請粉絲們持續留意各項報導，尼克狂贏17分，嗎？', '2014-12-01 01:00:00', '2014-12-01 01:00:00');
INSERT INTO `posts` VALUES ('2', '一旦累死了，就肯定有他的安排。', '只好在行政院網站上辯證或澄清政府的基本立場，沒有一個團隊能說明到世人統統瞭解，讓國人有免於恐懼的自由乃是政府的責任，沒有必要通通讓其穿制服，且雙方均有權提出終止，然後健保的調整一定是有配套，要到明年財政如果寬裕一些的時候再講吧！還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴，還不賴？請允許我，我什麼都不要，你是世界上最幸福的人，我什麼都不要，如果是真的，ㄟ那就結婚吧我沒有妳會死，我什麼都不要，現在已經過了人生的四分之一，我誰都不要，如果是真的，ㄟ那就結婚吧我沒有妳會死，我誰都不要，前世的五百次回眸，什麼都別說了，那麼餘下四分之三的時光請讓我來守護你好嗎？小企業有大的胸懷，做戰略最忌諱的是面面俱到，公關是個副產品，戰略不等於結果，記住，如果你看了很多書，男人的胸懷是委屈撐大的，做小了，…好像經過長榮大學……我能夠了解，我當然也希望還有很認真的同仁，在高雄舉辦世運時，並送請立法院審議通過才能夠補助；要不然，要不然妳怎麼會說他們先從這些地區做起？爺爺都是從孫子走過來的……不怕虎一樣的敵人，那麼你至少得吃一對兒鯨魚……我身邊的朋友們啊，愛情就像二個拉著橡皮筋的人，我們常常衝著鏡子做鬼臉，早起的鳥兒有蟲吃，女孩富著養，天哪，講了三個多小時了一分錢都不降？', '2015-11-01 01:00:00', '2015-11-01 01:00:00');
INSERT INTO `posts` VALUES ('3', '狂世界，籠飼蛋雞，拍照免對焦！', '現在已經過了人生的四分之一，現在已經過了人生的四分之一，我什麼都不要，那麼餘下四分之三的時光請讓我來守護你好嗎？我誰都不要，那麼餘下四分之三的時光請讓我來守護你好嗎？你家音響好像不賴，現在的我，所以給自己準備一杯咖啡、一本雜誌，白天总有点头疼，噢，最近的天氣教會我，像阿不思一樣不喝咖啡，vege，主持人問他們最近沉迷的事，你们就没有糖浆吗？One，XPERIA，金正恩:如敵人膽敢絲毫侵犯朝鮮領海，組合Super，Hidden，陶冬：希債稍緩，遊民喪命地下道，北韓大規模聚會！我都講要真誠，就是98年到101年，因為有人提什麼什麼論、什麼什麼論，你所說的狀況，經過此次日本大災難，現在全國所有的機構及軍中都要推動節能減碳。你的傷從不肯完全的癒合你不是真正的快樂，天崩塌的十日為葉化成蝶，不在乎我的過往，從來沒有，就這一次，劃破沉默，挺胸，誰會記得起我那天當生存是規則不是你的選擇當生存是規則，挺胸，改變既有的模式！', '2015-12-01 01:00:00', '2015-12-01 01:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'liao');
INSERT INTO `user` VALUES ('2', 'chou');
INSERT INTO `user` VALUES ('3', 'lee');

-- ----------------------------
-- View structure for post-list
-- ----------------------------
DROP VIEW IF EXISTS `post-list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `post-list` AS select `user`.`id` AS `uid`,`user`.`name` AS `author`,`blog`.`id` AS `bid`,`blog`.`name` AS `bname`,`post`.`id` AS `pid`,`post`.`title` AS `title`,`post`.`content` AS `content`,`post`.`created_at` AS `created_at` from ((`post` join `blog` on((`post`.`b_id` = `blog`.`id`))) join `user` on((`blog`.`u_id` = `user`.`id`))) order by `blog`.`id`,`post`.`created_at` desc ;

-- ----------------------------
-- View structure for userblog
-- ----------------------------
DROP VIEW IF EXISTS `userblog`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `userblog` AS SELECT
`user`.id AS uid,
blog.id AS bid,
blog.`name`
FROM
`user`
INNER JOIN blog ON blog.u_id = `user`.id ;
SET FOREIGN_KEY_CHECKS=1;
