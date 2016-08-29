/*
Navicat MySQL Data Transfer

Source Server         : mydata
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-08-29 17:34:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `createDate` date NOT NULL,
  `content` varchar(100) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for joke
-- ----------------------------
DROP TABLE IF EXISTS `joke`;
CREATE TABLE `joke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '笑话标题',
  `textContent` longtext COMMENT '文字内容',
  `typeId` int(11) DEFAULT NULL COMMENT '笑话类型0生活1校园',
  `readCount` int(11) DEFAULT NULL COMMENT '点击数',
  `createDateTime` datetime DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL COMMENT '笑话图片地址',
  `loveCount` int(11) DEFAULT NULL COMMENT '点赞总数',
  `commentCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37307 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of joke
-- ----------------------------
INSERT INTO `joke` VALUES ('2', '如此批文', '&nbsp;&nbsp;&nbsp;&nbsp;一学究给人看文章，最喜欢“放狗屁”三字。有人劝他批文何必<br>\n用此批，觉得不雅。先生解释道，这是一等批，还有二等批、三等批。<br>\n一等批是放狗屁，放狗屁者，人放狗屁，还有些人话，不都是狗屁；<br>\n第二等是狗放屁，狗放屁时很少，偶一放之，屁不太多；第三等是放<br>\n屁狗，狗以放屁出名，简直全是狗屁。<br>\n', '14', '199', '2015-09-17 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('3', '生此怪物', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;秀才应考，要答试题两道。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其一的题目是古文中的一句话——《昧昧我思之》。但秀才竟<br>\n抄成《妹妹我思之》。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;改卷官员看到这里，提笔批道：“哥哥你错了！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;另一道题是《父母论》。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;秀才一开头就这样“论”道：“父，一物也，属天；母，一物<br>\n也，属地……”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;改卷官员阅卷至此，不禁失笑，批道：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“天地无知，生此怪物！”<br>\n', '14', '218', '2015-09-17 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('4', '数学中文', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位美国数学系的研究生来台湾搜集中国古代数学发展的资料，<br>\n朋友请我代为招待。他是首次来到东方，也没有学过中文，可是竟<br>\n在短短半小时内学会写错综复杂的“张”字——而且还是草书。惊<br>\n讶之余，不免向这位天才请教。他说：“这没有什么，我只是用一<br>\n笔把三又四分之十三这个数字写出来而已。”<br>\n <br>\n', '14', '242', '2000-09-17 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('5', '魏什么', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;德友人魏特茂，娶了中国太太。某日遇一老翁，两人寒暄起来。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老翁：“您贵姓？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;德佬：“我姓魏。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老翁：“魏什么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;德佬：“为什么？姓魏也要为什么？”<br>\n <br>\n', '14', '228', '2000-09-17 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('6', '此乃天机', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有三个读书人上京赶考，路过一处高山，听说这山上住着一位<br>\n“半仙”，能推算一个人的功名爵禄。于是便上山去求教。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;半仙见来了三个人，便紧闭双目，端坐不动，听三人说明来意<br>\n后，便马上伸出一个手指头，闭口不言。三人不解其意，请他作解<br>\n说。半仙摇头说：“此乃天机，怎可泄漏。”三人无奈，只得下山<br>\n而去。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;当晚，半仙的徒弟悄悄问师父：“你白天对三人只伸出一个手<br>\n指，究竟是什么意思？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“笨徒，这个诀窍你还不懂吗？告诉你吧，来者共有三人，如<br>\n果一个考中，那一个手指就表示只考中一个；两个考中，那一个手<br>\n指就表示其中有一个没考中；三个都考中，那一个指头就表示一齐<br>\n都考中，三个都没考中，那一个指头就代表一道都落榜了。”', '20', '292', '2000-09-21 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('7', '繁殖老鼠', '&nbsp;&nbsp;　　一所中学的电脑教室由于要使用Windows的关系必须要购买一百只鼠标（mouse），于是向财务部打了报告。 <br>\n&nbsp;&nbsp;&nbsp;&nbsp;　不久就接到会计室的公文：<br>\n&nbsp;&nbsp;　　“因为经费有限，请先购买一对老鼠，以便繁殖后代。”&nbsp;', '11', '383', '2000-10-23 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('8', '公苍蝇和母苍蝇', '公苍蝇和母苍蝇在WC吃屎,母苍蝇问:“我们为什么老是吃屎？”<br>\n　　<br>\n公苍蝇说:“吃饭的时候不要说这么恶心的话！”', '27', '187', '2007-04-24 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('9', '安全带', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;空中小姐用和谐悦耳的声音对旅客命令道：“把烟灭掉，把安<br>\n全带系好。”所有的旅客都按照空中小姐的吩咐做了。过了5分钟<br>\n后，空中小姐用比前次还优美的声音命令道：“再把安全带系紧一<br>\n点吧，很不幸，我们飞机上忘了带食品。”<br>\n <br>\n', '27', '139', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('10', '飞机上', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;旅途中，飞机一个螺旋桨不转了，除了一位首次乘飞机旅行的<br>\n妇人外，大家都在睡觉。飞机降落后，人们纷纷称赞这位妇人的勇<br>\n敢。可是，当她知道真相后，吓得面如上色，惊叫道：“天呀，我以<br>\n为它停转是为了省油呢？”<br>\n <br>\n', '27', '66', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('11', '糟糕的劫机者', '&nbsp;&nbsp;&nbsp;&nbsp;1976年，在一架飞越美国的飞机上，一个男人从座位上站了<br>\n起来，掏出一支手枪，抓住一位空中小姐作为人质。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“把我送到底特律去！”他命令道。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我们现在正是飞往底特律啊。”她回答说。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“噢……很好。”说着，他又重新回到座位上去了。<br>\n', '27', '38', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('12', '你说得对', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一个人打电话给出租汽车公司，抱怨说他预约的到金斯福特机<br>\n场的车还没来。接电话的小姐说：“真对不起，先生！不过你也不<br>\n必过于担心，因为飞机总是误点的！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你说得对，小姐。”打电话的人说，“我就是这一班飞机的<br>\n正驾驶员！”<br>\n <br>\n', '27', '31', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('13', '长宽不分', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;飞机在一个新建的机场降落时，驾驶员把全部制动器都推到<br>\n了头，还险些冲到跑道的外面去。他从驾驶舱的小窗眼向外一看，<br>\n吓了一跳，“天啊，地上竟有这么短的跑道！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;领航也伸出头来看，他说：“唷，长虽不长，可宽着哩！”<br>\n <br>\n', '27', '35', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('14', '安全证据', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有一人乘飞机去看望自己的女儿。他突然发现，邻座一位乘客<br>\n紧张得哆嗦起来，于是他决定安慰邻座。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你为什么如此不安？”他说，“如今乘飞机是绝对安全的，<br>\n坐汽车反而危险得多，前不久，我的一个相识，平平安安地坐着汽<br>\n车在公路上行驶，突然有那么一架飞机坠落在他头上！”<br>\n <br>\n', '27', '34', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('15', '假如有枪', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;飞机起飞时间一拖再拖，两百多名乘客在机场等待整整二十<br>\n四个小时，最后，终于通知旅客们可以登机了。在通过机场安全检<br>\n查时，一位旅客大声嚷道：“还有什么必要在我们身上找武器呢？<br>\n要是谁有的话，他一定早开枪了。”<br>\n <br>\n', '27', '31', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('16', '乘客之忧', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一架大型客机横渡太平洋时，机上的扩音器传出了机长的声<br>\n音：“各位乘客请注意，我们飞机的一副引擎坏了。不过，凭其余<br>\n的三副引擎，我们一定可以到达三藩市的，只是抵达时间会因此延<br>\n迟一小时。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;1小时后，机长又宣布：“对不起，我们又有一副引擎失灵了。<br>\n不过我们可用两副引擎飞行，只是抵埠时间恐怕要迟2小时。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;不久后，乘客又听到机长宣布：“各位朋友，真想不到，我们<br>\n刚发觉第三副引擎也发生了故障。不过你们请放心，我们只靠一副<br>\n引擎也可以飞行。我们抵达三藩市的时间将要迟3小时。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;这时候，一个乘客光火了，大声喊道：“天啊，要是最后一副<br>\n引擎也坏了，我们岂不是要整晚留在这里？”<br>\n <br>\n', '27', '36', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('17', '都一样', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;在一个小镇上，一位老妇人被传去出庭作证，当问到她是否认<br>\n识辩方律师时，她拍了拍手掌答道：“是的，他是个骗子。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那控方律师呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“当然——他也是个骗子。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;于是，法官立即把两位律师召到面前，低声对他们说：“如果<br>\n你们谁敢问她是否认识我，那我将以蔑视法庭罪处罚你们两人。”<br>\n <br>\n', '27', '32', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('18', '火上加油', '&nbsp;&nbsp;&nbsp;&nbsp;法官：“他在打你以前，你有没有设法阻止他？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;原告：“有啊！我用各种最恶毒最难听的语言去阻止他，可是他<br>\n仍然狠狠地揍了我一顿。”<br>\n', '27', '28', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('19', '迟 悟', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“法官先生，有人把我说成犀牛，我可以告他恶意中伤罪吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“当然可以。他什么时候把你当成犀牛的？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“三年前。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“什么？三年前的事，你怎么到今天才想起要起诉呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“是这样，法官先生，以前我从未见过犀牛，直到昨天我才知到<br>\n犀牛是什么样子。”<br>\n <br>\n', '27', '27', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('20', '有力的证明', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在街上，一辆自行车碰倒一个小男孩。小男孩的母亲告到法<br>\n院，说她的孩子受了重伤。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法官问：“伤到什么程度？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;母亲回答：“他的手现在只能举到下巴，再也上不去了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;孩子在旁边举举手，很吃力地才举到脖子，满脸痛苦表情。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法官又问：“那么以前能举多高？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;母亲说：“能举过头顶。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;孩子为了证明母亲的话，飞快地将手举过头顶，显出很轻松<br>\n的样子。<br>\n', '27', '31', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('21', '诚实的证人', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;法官：“证人，在你作证之前，我应该告诉你，在法律面前，你<br>\n只能讲你亲眼看到的事情，不要讲从别人那儿听到的事，明白吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;证人：“明白了！法官先生。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;法官：“我有几个问题要问你。请你先告诉我，你是何时何地出<br>\n生的？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;证人：“天哪！我尊敬的法官，我无法回答您，因为这是我母亲<br>\n告诉我的。”<br>\n <br>\n', '27', '30', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('22', '伪证的后果', '&nbsp;&nbsp;&nbsp;&nbsp;一家经营尚可的商行突然宣布破产了。可前不久，这家商行还<br>\n向社会集资作为发展资金。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;法庭认为，这很有可能是蓄意图谋侵吞购股者资金的一个花招。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;商行的女秘书被传到法庭。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;法官严肃地叫她对她所说的每句话负责：“你应该知道作伪<br>\n证将是什么后果！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“是的，我知道！我们经理答应给我1000美元和一件貂皮大<br>\n衣。”<br>\n', '27', '29', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('23', '左右为难', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;在法庭上，被告一直把手放在口袋里，法官让他要有礼貌，他<br>\n回答说：“我简直不知道该怎么办才好！把手放在别人的口袋里，<br>\n你们惩罚我，放在自己的口袋，又说我没礼貌！”<br>\n <br>\n', '27', '30', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('24', '改 行', '&nbsp;&nbsp;&nbsp;&nbsp;法官：“我希望这是最后一次，我不想再在这里见到你了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;小偷：“怎么，先生，你要改行吗？”<br>\n', '27', '28', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('25', '的确见过', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;法官指着作案凶器问被告：“你见过这支枪吗？”被告答：“没<br>\n有，先生。”法官又问了几遍，被告仍然坚持说没有见过。于是，法<br>\n官决定第二天继续审问。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;第二天，法官问被告：“你见过这支枪吗？”“是的，先生，我<br>\n的确见过。”“什么时候？”“昨天在法庭上。”<br>\n <br>\n', '27', '27', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('26', '会讲英语', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一个德国抢劫犯被带到法庭，法官问他是否会讲英语，年轻人<br>\n答道：“会一点儿。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“你会讲什么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“把所有的钱都给我，”<br>\n <br>\n', '27', '22', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('27', '总 值', '&nbsp;&nbsp;&nbsp;&nbsp;警察：“你被窃去的大衣，值多少钱？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;被盗者：“新做的时候，是20元，曾经当过一次，是12元赎出<br>\n来的，一共32元。”<br>\n', '27', '24', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('28', '滋扰疯子', '&nbsp;&nbsp;&nbsp;&nbsp;一个喜欢投诉的人，三番五次跑到警察局去，要警察把邻人抓<br>\n起来。局长把违禁条例翻来覆去，看了半天，叹了一口气说：“不<br>\n能定罪，除非你控告他滋扰疯子。”<br>\n', '27', '24', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('29', '公　理', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;民国时期，有个姓胡的先生留美时，曾被一头富翁的狗咬伤。胡控告<br>\n富翁。富翁请了律师辩护。结果，竟会证明：非但富翁狗不曾咬胡先生，<br>\n而且是胡先生咬狗的。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;胡败诉后，叫道：“公理呢？法律呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;法官马上禁止他作声，严厉地说：“你得知道：这儿是法庭啊！”<br>\n <br>\n', '27', '25', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('30', '手　套', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;民国时，有个染坊工人到法庭上作证，举手宣誓时，手黑得像墨一般。<br>\n法官见了，高声叫：“你先脱掉了手套，然后宣誓。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;他答：“请你戴了眼镜，然后发言。”<br>\n <br>\n', '27', '25', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('31', '吃　素', '&nbsp;&nbsp;&nbsp;&nbsp;原告：“被告无故咬我的手，请严办！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;法官：“被告！你有没有咬过他的手？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;被告：“不！我是吃长素的。”<br>\n', '27', '25', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('32', '你也如此', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;裁判官：“你常常到法院里来，不觉得难为情么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;罪犯：“但是你也天天在这里啊。”<br>\n <br>\n', '27', '26', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('33', '取消诉讼', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;法官：“你在小菜场，对这妇人说过什么失礼的话么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;被告：“没有。我正和朋友谈话，她走过。我说：‘你看她！面孔好，<br>\n身段好，衣服又美’”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;原告妇人：“是的，大家都这么说。请堂上把诉讼取消罢！”<br>\n <br>\n', '27', '24', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('34', '毫无指望', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“法官，”被告从被告席上站起来喊道，“难道审理我的案子的陪<br>\n审员全都是女的？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“别吭声。”律师低声地说。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我不想沉默，法官，我对我的老婆了知指掌，尚且瞒不过她，这<br>\n儿竟有12个陌生的女人要我认罪！”<br>\n <br>\n', '27', '24', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('35', '原因', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;法官：“你为什么要用椅子砸你的婆婆？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;被告：一因为我举不起桌子。”<br>\n <br>\n', '27', '24', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('36', '什么时间合适', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;法官：“你竟敢在大白天闯进人家行窃！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;被告：“您前次审判我时，也是这么气愤地说：‘你竟敢在深更半夜潜<br>\n入民宅行窃！请问法官，我该什么时候工作合适呢？”<br>\n <br>\n', '27', '23', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('37', '事与愿违', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;病人怕拔牙，医生为了使病人镇静下来，叫他喝一杯威士忌。<br>\n病人端起酒杯一饮而尽，不再哆嗦了，接着他又喝了一杯。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“好了吧？鼓起勇气来！”医生鼓励道。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“哼！”病人拉开架势，喊道：“看你们谁敢动我的牙齿！”<br>\n <br>\n', '27', '23', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('38', '我对鸭子说的', '&nbsp;&nbsp;&nbsp;&nbsp;坐在小酒店里的一个醉鬼，看到一个家伙胳膊下夹着一只鸭子走<br>\n进来，就问：“你和那只猪在一起干嘛？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;那家伙说：“这不是一只猪，是一只鸭子。”醉汉立刻顶了回去：<br>\n“我是对鸭子说的。”<br>\n', '27', '23', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('39', '坟 场', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有一个年轻人半夜回家，想抄一段近路，没想到掉进一处新挖<br>\n好的坟穴里。过了一会，一个醉汉摇摇晃晃闯进坟场，听到坟穴下<br>\n面有人呼叫：“我在这里快要冻僵了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;醉汉：“我说呢！你把盖在身上的土踢开了，能不冻僵吗？”<br>\n <br>\n', '27', '24', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('40', '酩酊大醉', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;被控酒醉开车者的律师问的问题很中肯。逮捕被告的警员作<br>\n证称，他索要驾驶执照时，被告在车上的手套箱里找了很久很久。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“当时车里是不是很暗，手套箱里是不是塞了许多东西？”律<br>\n师问。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“是的。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“他摸索了大约多久？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“可能有5分钟。”警员道。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“好，”师律道，“你是否为在又黑又乱的手套箱里找一小张<br>\n纸而花费了时间非常奇怪？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“是的，”警员答，“当时他在我的警车上。”<br>\n <br>\n', '27', '26', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('41', '正在走运', '&nbsp;&nbsp;&nbsp;&nbsp;一个醉汉走到自动装置前，放进10美分硬币，按下电钮，他惊<br>\n奇地看见出来一张馅饼。于是，他便一次又一次地投入硬币，直到<br>\n他面前出现了一大堆馅饼。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一个售货员发现了，问他已经弄到这么多怎么还不够。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“怎么？”醉汉大声嚷道，“我正走运，我老是赢！你竟想让<br>\n我罢手？”<br>\n', '27', '22', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('42', '别多嘴了', '&nbsp;&nbsp;&nbsp;&nbsp;纽约街头。一个乞丐中暑晕倒，路人围拢过来，议论纷纷。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“这个人真可怜，给他杯威士忌吧。”一位老太太说。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“还是把他抬到荫凉的地方，让他歇歇吧。”好几个人说。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“让他喝点威士忌保管就没事了。”老太太坚持己见。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“应该送他到医院去才对。”另外有人提出异议。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“给他点威士忌，没错！”老太太还是这句话。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;中暑的人突然翻身坐起，大喊道：“你们别多嘴了！怎么不听老<br>\n太太的话呢？”<br>\n', '27', '35', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('43', '你们试试', '&nbsp;&nbsp;&nbsp;&nbsp;圣诞节晚上，马路上躺着一个人。围观者吵吵嚷嚷地问：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“您这是怎么回事？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;这人愤怒地喊道：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你们像我一样喝那么多试试看！”<br>\n', '27', '24', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('44', '自我感觉', '&nbsp;&nbsp;&nbsp;&nbsp;一个小兵喝得酩酊大醉地回营。“你何必醉成这模样，”长官告<br>\n诫他道，“你如果不喝酒，可能已经升到上等兵，说不定已经当军官<br>\n了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“报告上尉，”小兵回答，“我只要一杯酒下肚，就觉得自己是<br>\n上校了！”<br>\n', '27', '22', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('45', '意外之财', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;比尔又喝得东倒西歪，在哈特广场叫住了一辆出租车，并对司<br>\n机说：“把我拉到华尔大酒店去。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;司机纳闷地回答说：“这里就是华尔大酒店。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“真的吗？”比尔又问。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“没错，我不会骗你的。”司机肯定地回答。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;于是，比尔无可奈何地从兜里掏出一张20元的钞票扔给司机<br>\n说：“好极了，这是给你的，不过，下次可不要开得这么快。”<br>\n <br>\n', '27', '29', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('46', '用不着来了', '&nbsp;&nbsp;&nbsp;&nbsp;一天深夜，值勤警官罗伯特接到一个报警电话。打电话的人自<br>\n称在第十三街区，他从夜总会出来后，发觉自己车里的方向盘、刹<br>\n车、加速器等等都让小偷给卸去了。罗伯特表示马上前往出事地<br>\n点。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;就在他开动巡逻车准备出发的瞬间，电话铃又响了起来。罗伯<br>\n特只好下车再拿起电话筒，打电话的仍是刚才那位报警的：“实在<br>\n对不起，先生，用不着来了。我是用车内电话打的。我喝多了，刚<br>\n才二阵冷风吹来，我才发现自己原来是坐在车内的第二排座位上。”<br>\n', '27', '26', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('47', '不是本地人', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一分名叫菲尔的推销员是个酒鬼，有一天他来到了一个陌生<br>\n的城市，在一家酒店里喝了很多酒。他刚刚走出酒店，突然看见一<br>\n个人站在马路中间，这个人也是从酒店出来，比菲尔喝得更多，他<br>\n好像在天上看到了什么奇怪的东西，用手向天空一指，对菲尔说：<br>\n“先生，对不起，请问那是太阳还是月亮？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“不知道，”菲尔摇了摇头说，“我不是本地人。”<br>\n <br>\n', '27', '28', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('48', '丈夫用计', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;丈夫喝了酒，回家晚了，总是受妻子的数落。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;这天，他回来比平时更晚，他先在门口小心翼翼脱掉鞋子，然<br>\n后蹑手蹑脚地走到孩子的摇篮边，哼着催眠曲，一下一下推着摇<br>\n篮。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;妻子听到他的声音，问道：“你在干什么呀？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“唉，你真不像样子！”他责怪妻子，“你怎么当妈妈的？孩<br>\n子哭了一个多钟头，都哭累了。我一直坐着摇他。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你骗谁？”妻子大声说，“孩子睡在我身边已经两个多钟头<br>\n了。”<br>\n <br>\n', '27', '24', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('49', '烫耳朵', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有个醉汉在街上摇摇晃晃地走着，他的两只耳朵全是水泡。他<br>\n的一个朋友遇到他，问他是怎么回事。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“该死的，我老婆把烧烫了的熨斗放在电话机旁，铃声一响，我<br>\n错把熨斗当听筒了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那另一边又是怎么搞的？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;醉汉眼睛一瞪：“这边烫痛了不要换一边吗？”<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('50', '不要柜子', '&nbsp;&nbsp;&nbsp;&nbsp;一个旧家具商人对正在市场上喝醉了闲逛的莫斯特高声喊<br>\n道：“莫斯特先生，快买下这个柜子吧！很便宜，只要原价一半的<br>\n钱！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我要柜子干什么？”“您可以在里面挂衣服！”商人道。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;莫斯特生气地反问道：“难道您要我光着身子到处跑吗？”<br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('51', '以一当二', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;两个人酒喝多了，其中一个口齿不清他说：“现在我看所有的<br>\n东西都是两层的。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;听到他的话，另一个赶紧从袋里掏出张一块钞票，说：“这是<br>\n我欠你的2块钱。”<br>\n <br>\n', '27', '19', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('52', '倒立着喝酒', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;拉尔辛嗜酒如命，医生建议他采取瑜伽法戒酒。过了好几天，<br>\n医生碰见他妻子就问她丈夫做得怎么样。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;——大夫，很糟糕，现在他可以倒立着喝酒了。<br>\n <br>\n', '27', '19', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('53', '恰恰相反', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一个醉汉手握着酒瓶摇摇晃晃地撞在一位行人身上。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;行人很不高兴地说：“你没有眼睛吗？怎么看不见人？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“恰恰相反，我把你看成两个人啦，我是想从你俩中间走过<br>\n去。”<br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('54', '催眠曲', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作曲家：“我足足花了10年工夫才写成这首催眠曲。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出版商：“怎么会那么久？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作曲家：“因为它老催我入睡。”<br>\n <br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('55', '捡回生命', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;甲：“这次闹水灾，音乐救了我一命，音乐真宝贵啊！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;乙：“哦！是人家听见你美妙的歌声，就来救你了吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;甲：“不，当我被洪水冲走时，刚好我的钢琴漂过来，我就<br>\n爬上去了。”<br>\n <br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('56', '不受干扰', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一个爱尔兰人从伦敦旅游回来，邻居问他玩得怎么样，他说：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“伦敦人真怪异，晚间老是在你的房门及墙壁上猛敲！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那您怎么办呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我不受干扰，继续吹我的风笛。”<br>\n <br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('57', '听谁的', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;在音乐晚会上，一位著名的歌唱家正在演唱。这时，却有一位<br>\n听众用颤音跟着唱起来。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“真像一头母牛！”她的邻座忿忿地说。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“谁？是我吗？”那人赶忙问。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“不，不是您，是这位歌唱家。她干扰了我们欣赏您的歌喉。”<br>\n <br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('58', '甘愿一死', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有个国王最爱弹琴，可他弹得非常难听，只要他一弹琴，大伙都<br>\n逃得远远的。皇帝找遍整个宫廷，竟找不到一个知音。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;他传下圣旨，从监牢里拉来一个死囚。皇帝对他说：“只要你说<br>\n我弹的琴好听，我就免你一死。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;死囚心想：“这还不简单么？”于是，他就答应听皇帝弹琴。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;可是，国王刚弹了不久，死囚就双手捂着耳朵大叫：“陛下，不<br>\n要弹了，我甘愿一死！”<br>\n <br>\n', '27', '19', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('59', '关 掉', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当西瑞尔到他最不喜欢的侄子家做客时，他不得不听他侄子<br>\n演奏钢琴，一曲终了他侄子问：“您觉得怎么样？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;西瑞尔答道：“你应该上电视。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;他侄子高兴地说：“您认为我弹得很好吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“不，”西瑞尔说，“你要是上了电视，我就可以把它关掉了。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('60', '大惑不解', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位法官带着他的小儿子到巴黎剧场去听音乐会。一位女高音歌<br>\n手正唱着一首热情奔放的歌。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“爸爸，为什么那个男人要用他的棍子向那个女的恐吓呢？”孩<br>\n子问。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“不是恐吓，他是乐队的指挥。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“既然不是恐吓，那为什么她叫得这样大声呢？”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('61', '学音乐的好处', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;詹姆斯很得意地对朋友说：“我的女儿学习声乐，太令我高兴<br>\n了”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“怎么，是她使你听到美妙的歌声了吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你想不到吧，她使我买到了邻居的房子，而且价钱便宜了一<br>\n半。这家人前天已经搬走了。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('62', '大有进步', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我们女儿练嗓子大有进步。”肖克太太对朋友说。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“是音色提高了吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我说的主要是音量。以前只有这一层楼的人来告状，现在附<br>\n近几幢楼的住户都来诉苦了。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('63', '听音乐', '&nbsp;&nbsp;&nbsp;&nbsp;小约翰和他的叔叔一同坐在音乐厅里听音乐。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;叔叔：“你懂音乐吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;约翰：“当然懂。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;叔叔：“你说，那个姑娘现在弹的是什么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;约翰：“钢琴。”<br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('64', '配套书籍', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;詹姆斯到书店买书，他对店员说：“我要买那本《如何在一夜间<br>\n成为百万富翁》的书。”店员很快地从书架后面拿来两本书，并动手包<br>\n扎起来。詹姆斯说：“先生，我只要一本。”店员：“我知道。但这另<br>\n一本书是《刑事法典》，我们总是把这两本书放在一起出售。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('65', '卖书有道', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;男主人刚刚离开家去上班，一位沿街卖书的推销商敲门。女主<br>\n人把门打开了，推销商说：“我相信你一定需要买这本书来参考，书<br>\n名是《丈夫夜归借口五百种》。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我要这本书做什么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;他答道：“我刚卖了一本给你的先生。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('66', '借 书', '&nbsp;&nbsp;&nbsp;&nbsp;小女孩羞怯地请图书馆员介绍一本有趣的书，馆员给了她一本<br>\n《怎样玩杂耍》，她捧着书很高兴地走了。第二天，她回来说要换<br>\n一本。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你现在想要什么书？”馆员问她。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你们有教人修补破碟子的书吗？”她问。<br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('67', '买书搭配', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“有《女人是男人的奴隶》这本书吗？”斯希施先生问书店女职<br>\n员。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“当然有，不过要搭配《男人是猪》那本畅销书，先生。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('68', '男士是一家之主', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位男士走进书店问道：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“您这儿有没有一本书，名叫《男人应是一家之主》？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“很抱歉，”女店员微笑着说，“我们这里不卖童话书。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('69', '订书电报', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位书店老板向雅加达的一家出版社拍了一份电报：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“请速寄一批《信奉上帝的人》来。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;第二天，他收到回电：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“雅加达没有信奉上帝的人，据悉马尼拉也没有，请与新加坡<br>\n联系。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('70', '现代派作品', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大学艺术设计班下课时，有个同学无意中把我的一大瓶胶水<br>\n撞到地上，瓶子碰破了，地上落下一大片难看的碎玻璃和胶水及涂<br>\n胶的刷子混作一团。我想等胶水干了再打扫也许容易，所以当时没<br>\n有清理它。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;可是等我回来时，那片乱七八糟的东西不见了。我问当时并不<br>\n在场的教师，他起先表示不明所以，继而感到惊奇。“原来那个东<br>\n西是这样来的！”他大声说，“有人把它当作设计练习交上来了。”<br>\n <br>\n', '27', '19', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('71', '看展览', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一对夫妇在博物馆里观赏艺术作品。眼睛近视的妻子，站在一<br>\n幅作品前对丈夫说：“你看，这是我生平看到的最丑的一幅画像。”<br>\n丈夫连忙拉过妻子，小声说：“你过来吧，亲爱的，这不是画像，这<br>\n是一面镜子。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('72', '农夫的心愿', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一个著名的画家到乡下一个风景美丽的地方度假。他住在一<br>\n个农夫的家里。他每天吃过早饭就带着颜料和画本出去绘画。一直<br>\n到傍晚，天黑时，他才回到农夫家，美美地吃上一顿以后，才去睡<br>\n觉。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;当画家的假期结束以后，他要付一些钱给农夫。可是农夫说：<br>\n“不，我不需要钱。如果行的话，您就给我一张您作的画吧！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;画家看到农夫这么喜爱他的画，就表示衷心的感谢。农夫接着<br>\n说：“我并不是为了别的什么。我有个没出息的儿子，他到巴黎去<br>\n了，想成为一名画家，他下次回家时，我就把您的画给他看看，我<br>\n想这样一来，他就不会再想当画家了。”<br>\n <br>\n', '27', '19', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('73', '抽象派学生', ' \r\n    一位醉心抽象派和立体派绘画的艺术学院学生，在画展中花了一小时选画。终于对一幅白底黑点镶铜边框的画大为倾倒。他问：“这幅画要多少钱？”\r\n    “这是电灯开关！”\r\n \r\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('74', '作品参展', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我为画展画了点东西。已经挂出来了，就在人口处旁边最醒<br>\n目的地方。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“祝贺你，画的是什么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“一块标牌，往左走的路牌。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('75', '持家有道', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一天晚上我到美术馆去看画展，当我正在欣赏一幅由一些绳子、<br>\n火车票、铁丝滤网、快相和一个破车轮拼贴而成的抽象画时，我<br>\n听见旁边一个妇女低声对另一个妇女说：“这足以证明——永远不<br>\n要扔掉任何东西。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('76', '记忆深刻', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;母女两人去参观女儿男朋友的画展。母亲发觉其中一幅人像<br>\n画中的裸体女郎相貌酷似女儿，便问道：“你没有光着身子给他作<br>\n画吧？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“啊，没有，”女儿答，“他是凭记忆画的。”<br>\n <br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('77', '秋天落叶', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;夫妻两人一起去参观美术展览，当他们面对一张仅以几片叶遮<br>\n羞的裸女油画时，丈夫立刻张大嘴巴盯着那幅画，呆了半晌仍不想<br>\n走开。妻子狠狠地瞅住丈夫吼道：“喂，你是想站到秋天，待树叶<br>\n都落下才甘心吗？”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('78', '6个指头的天使', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;给教堂画壁画的画家把小天使画成了6个指头。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“您什么时候见过6个指头的天使？”牧师气愤地责问。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“没见过？”画家反驳，“但是您见过5个指头的天使吗？”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('79', '一幅画的价值', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;画家向画商出售一幅画，画商同意付50无。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;——50元？我向你买这块画布就花了150元。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;——一点不错，但那时画布是干净的。<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('80', '不可思议', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;在一家美术馆里，有个女人站在一幅画像前，那幅画画的是一个<br>\n衣衫褴楼的流浪汉。“想想吧！”她高声说，“连买件像样衣服的钱<br>\n也没有，却还能够请得起人给他画像。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('81', '妇人之见', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位画家举办个人画展。一位贵妇人来到展室，站在一幅画前<br>\n面端详了许久，说：“我要是能认识这幅画的作者，那该多好啊！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;站在一旁的画家走过来说：“夫人，我就是。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;贵妇人说：“这幅画画得大妙了！你能不能告诉我，画里这位小<br>\n姐做裙子的裁缝是谁？”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('82', '内 行', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在美术馆的展览厅里，利亚多夫指着一张画，问同来的舒加耶<br>\n夫：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你知道这张画，画的是朝霞还是晚霞？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“是晚霞。”舒加耶夫十分肯定地说。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你怎么看出来的呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我认识这位画家，他从来不在九点以前起床。”<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('83', '式样可能不流行', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一位夫人到画商那里去，想买一幅人物画。她挑来挑去，总是<br>\n不满意。她对画商说：“画家画的女人，为什么多是裸体的？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;画商说：“穿了衣服，就不方便。因为过了几个月，这服装式<br>\n样可能就不流行了。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('84', '淡而无味', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有个老书生，每次听人家谈话，总是摇摇头说：“淡而无味。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有一天，这位老书生跟一位客人谈话，问道：“最近有啥新闻？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;客人回答道：“昨天傍晚，一条盐船被撞破了，所载的盐都倒进<br>\n河中去了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;老先生摇摇头说：“淡而无味。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('85', '如此批文', '&nbsp;&nbsp;&nbsp;&nbsp;一学究给人看文章，最喜欢“放狗屁”三字。有人劝他批文何必<br>\n用此批，觉得不雅。先生解释道，这是一等批，还有二等批、三等批。<br>\n一等批是放狗屁，放狗屁者，人放狗屁，还有些人话，不都是狗屁；<br>\n第二等是狗放屁，狗放屁时很少，偶一放之，屁不太多；第三等是放<br>\n屁狗，狗以放屁出名，简直全是狗屁。<br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('86', '生此怪物', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;秀才应考，要答试题两道。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其一的题目是古文中的一句话——《昧昧我思之》。但秀才竟<br>\n抄成《妹妹我思之》。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;改卷官员看到这里，提笔批道：“哥哥你错了！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;另一道题是《父母论》。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;秀才一开头就这样“论”道：“父，一物也，属天；母，一物<br>\n也，属地……”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;改卷官员阅卷至此，不禁失笑，批道：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“天地无知，生此怪物！”<br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('87', '写招牌', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;从前，有个商人在镇上新开了一个店铺卖酒；为了标榜酒美，招<br>\n徕顾客，特奉厚礼请来几个秀才，准备写一个招牌，挂在酒店前。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;甲秀才挥笔写出：“此处有好酒出售”七个大字。店家见了，点<br>\n头赞许。乙秀才指出：“这七个字过于罗嗦，应该把‘此处’两字删<br>\n去。”店家细想，也觉得有理，丙秀才又说：“‘有好酒出售’中的<br>\n‘有’字多余，删去更为简约。”店家也觉干脆。可是丁秀才又振振<br>\n有词道：“酒好与坏，顾客尝后自有评价，‘好’字宜删。”店家没<br>\n有反对。这时，甲秀才生气地说：“删来删去，干脆留一‘酒’字，<br>\n更为夺目。”店家欣然接受。乙秀才又有意见：“卖酒吗，不必写招<br>\n牌，路人见酒瓮自然知道。”店家点头称是。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;于是，秀才们告退，商人白白送了厚礼。<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('88', '粗心人', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有一粗心人过年，门前横批上写着“春光明媚”四字，随后完<br>\n婚，又写“五世其昌”四字贴在上面，因纸裁小，露出“媚”字女旁，<br>\n凑成了“五世其娼”四字，贻笑大方，粗心人往往如此。<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('89', '买猪千口', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;从前，有个县官写字很潦草。这天他要请客，便写了一张字条<br>\n叫差役买猪舌。谁知“舌”字写得太长，分得太开，差役误以为叫他<br>\n买猪“千口”。这可忙坏了那位差役，跑遍了城里，又到四乡去购买，<br>\n好容易买到五百口猪。他一想交不了差，便向老爷求情，希望少买<br>\n五百口。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;县官生气地说：“我叫你买猪舌，准叫你买猪千口呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;差役听了，应声道：“还好还好！不过以后请老爷注意，若要<br>\n买肉，千万写得短些，不要写成买‘内人’。”<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('90', '论耍光棍', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有个人姓卜，名不详，另一个姓冢，名不消，两人结拜为异姓兄<br>\n弟。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有一天，把兄冢不消对把弟卜不详说：“我俩姓名非常奇特，我<br>\n的姓更加少见。你看，‘冢’字的形状像‘家’字，却少了一点；像<br>\n‘蒙’字，又没有头，仿佛摘了顶带的官员一样。现在跟把弟商量商<br>\n量，请你把‘卜’字腰间的一点搬到我的‘冢’字头上，让我成了<br>\n‘家’，光彩光彩，不是很好吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;把弟回答道：“这一点借给你成‘家’当然无所谓，只是你成了<br>\n家以后，我不是要变成光棍了吗？”<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('91', '牛不出头', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有个人去拜见姓牛的富翁，姓牛的推说出门了，不出来见他。<br>\n这人便在富家门上写了很大一个“午”字，然后就走了。有人问他是<br>\n啥意思，他回答说：“这是‘牛’不出头嘛！”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('92', '中国太奇妙了', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有位美国朋友访问了中国后，对翻译说：“你们的中国太奇妙<br>\n了，尤其是文字方面。譬如：‘中国队大胜美国队’，是说中国队胜<br>\n了；而‘中国队大败美国队’，又是说中国队胜了。总之，胜利永远<br>\n属于你们。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('93', '处处都漂亮', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位外国朋友不知道中国人的“哪里！哪里！”是自谦词。一次<br>\n他参加一对年轻华侨的婚礼时，很有礼貌地赞美新娘非常漂亮，一旁<br>\n的新郎代新娘说了声：“哪里！哪里！”不料，这位朋友却吓了一大<br>\n跳！想不到笼统地赞美，中国人还不过瘾，还需举例说明，于是便用<br>\n生硬的中国话说：“头发、眉毛、眼睛、耳朵、鼻子、嘴都漂亮！”<br>\n结果引起全场哄堂大笑。<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('94', '数学中文', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位美国数学系的研究生来台湾搜集中国古代数学发展的资料，<br>\n朋友请我代为招待。他是首次来到东方，也没有学过中文，可是竟<br>\n在短短半小时内学会写错综复杂的“张”字——而且还是草书。惊<br>\n讶之余，不免向这位天才请教。他说：“这没有什么，我只是用一<br>\n笔把三又四分之十三这个数字写出来而已。”<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('95', '望文生意', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;洋人：“你们中国人的确是一个勤奋的民族。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;中国人：“怎见得？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;洋人：“每当我早晨经过街道，常常可以看到路旁的招牌写着<br>\n‘早点’两个大字，提醒过路上班的人，不要迟到。”<br>\n <br>\n', '27', '13', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('96', '老外评老外', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;初到美国时，几个中国同学请我到一家中餐馆上给我接风洗尘。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;小林看到邻桌几个洋人在用筷子，便说：“现在会用筷子的老<br>\n外越来越多了！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;小王接着说：“那些老外不但会用筷子，还会点菜呢。他们再<br>\n也不是只会叫杂碎、春卷了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;小张正要开口，只见邻桌一个已吃饱喝足的老外慢条斯理地走<br>\n到我们桌前来，用他那极其标准的京片子说：“请你们搞清楚，在<br>\n这里，你们才是老外。”<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('97', '魏什么', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;德友人魏特茂，娶了中国太太。某日遇一老翁，两人寒暄起来。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老翁：“您贵姓？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;德佬：“我姓魏。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老翁：“魏什么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;德佬：“为什么？姓魏也要为什么？”<br>\n <br>\n', '27', '13', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('98', '各种各样的“汁”', '      有一次，专考外国留学生的汉语“托福”试卷上出现了一道填空题：“绞尽___汁”。\r\n      试卷收上来，老师发现答案多种多样，但都没答对，如：\r\n      “绞尽墨汁”；\r\n      “绞尽乳汁”；\r\n      “绞尽果汁”；\r\n      “绞尽汤汁”；\r\n      老师在后来评讲试卷时，对这批未来的来华留学生说：“你们真是‘绞尽脑汁’也没写出‘绞尽脑汁’。”\r\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('99', '外国人看麻球', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有个好吃的洋人，从中国带了几个麻球回国去，逢人便说：“你<br>\n们看中国的麻球，真稀奇！没有洞，豆沙是怎么放进去的？再说，你们<br>\n看，这芝麻，一颗颗地贴，需要多少时间啊！”<br>\n <br>\n', '27', '13', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('100', '有“机”可乘', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有一个商品推销员去广州出差，到北京后，由于想乘飞机前往，<br>\n因怕经理不同意报销，便给经理发了一封电报：“有机可乘，乘否？”<br>\n经理接到电报，以为是成交之“机”已到，便立即回电：“可乘就<br>\n乘。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;这个推销员出差回来报销旅差费时，经理以不够级别，乘坐飞<br>\n机不予报销的规定条款，不同意报销飞机票费。推销员拿出经理回<br>\n电，经理口瞪口呆。<br>\n <br>\n', '27', '19', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('101', '耳朵在此', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;新上任的知县是山东人，因为要挂帐子，他对师爷说：“你给我<br>\n去买两根竹竿来。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;师爷把山东腔的“竹竿”听成了“猪肝”，连忙答应着，急急地<br>\n跑到肉店去，对店主说：“新来的县太爷要买两个猪肝，你是明白人，<br>\n心里该有数吧！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;店主是个聪明人，一听就懂了，马上割了两个猪肝，另外奉送了<br>\n一副猪耳朵。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;离开肉铺后，师爷心想：“老爷叫我买的是猪肝，这猪耳朵当然<br>\n是我的了……”于是便将猎耳包好，塞进口袋里。回到县衙，向知县<br>\n禀道：“回禀太爷，猪肝买来了！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;知县见师爷买回的是猪肝，生气道：“你的耳朵哪里去了！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;师爷一听，吓得面如土色，慌忙答道：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“耳……耳朵……在此……在我……我的口袋里！”<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('102', '容易化学', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一日在机场碰到一位同乡，他问起我在国外学什么的，我说：<br>\n“溶液化学。”他说：“老兄客气了，哪有容易的化学。”<br>\n <br>\n', '27', '13', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('103', '校长发火', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校长在学期结束时的校务会议上，对人事行政效率之低，大发<br>\n雷霆。他说：“负责董事业务的不懂事；负责人事管理的不省人事；<br>\n身为干事的又不干事！”<br>\n <br>\n', '27', '13', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('104', '秀才改对联', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;从前，有个进士老爷，专横跋扈，不可一世。有年春节，他为了<br>\n炫耀，在自己的大门上贴了这么一副对联：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;父进士、子进士，父子皆进士；<br>\n&nbsp;&nbsp;&nbsp;&nbsp;婆夫人，媳夫人，婆媳均夫人。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;正巧，镇上有个穷秀才，路过进士的家门，看见了这副对联。他<br>\n先是露出鄙视的神态，接着，又露出一丝得意的笑容。到晚上，他见<br>\n四下无人，就悄悄地在对联上加改了一些笔画。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;第二天一大早，进士的门前围满了大堆看热闹的人，他们有说有<br>\n笑，议论纷纷，大家都称赞：“改得好！改得好！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;门外的吵嚷声惊动了进士老爷，他连忙打开大门，一看，立即昏<br>\n倒在门前的台阶上了。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;原来，进士门前的对联，已被秀才改成了这样：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;父进土，子进土，父子皆进土；<br>\n&nbsp;&nbsp;&nbsp;&nbsp;婆失夫，媳失夫，婆媳均失夫。<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('105', '象形字', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;某人于婚礼上送一横匾，上书：“北比臼舅”四字，旁人皆不解<br>\n其意。那人解释说：“北字正如二人互不相识时背靠背的样子；比是<br>\n一个向另一个开展追求的样子；臼是二人面对面互相倾谈的样子；<br>\n舅字是二人合作生下一男的样子。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;众人一听，大声叫绝！<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('106', '笑话春联', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;纪晓岚是清代学者、文学家。有一次，他春节回家探亲，乡里有<br>\n一家三兄弟请他写春联，他写了一副“惊天动地门户，数一数二人<br>\n家”，横批是“先斩后奏”的春联。这一来可不得了，有人以“犯上”，<br>\n告了他个欺君之罪。乾隆皇帝得知，立召纪晓岚回京查问，纪晓岚<br>\n回道：“春联是我写的；没有错。这家老大是卖炮仗的，不是惊天动<br>\n地门户吗？老二是集市上管斗的，成天‘一斗，二斗……’地叫，不<br>\n是数一数二人家吗？老三是卖烧鸡的不是先斩后奏吗？”说得乾隆也<br>\n笑了。<br>\n <br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('107', '解缙应景题对联', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;解缙自幼好学，出口成章。这年春节，他在后门上贴了一副春联：<br>\n“门对千竿竹，家藏万卷书。”对门的员外看了，很不高兴，心想，<br>\n只有像我这样的人家，才配贴这副对联，就命仆人把竹子砍了。不<br>\n一会，家人来报，解缙的春联改成了：“门对千竿竹短，家藏万卷书<br>\n长。”员外听罢，非常恼火，令人把竹子连根挖出，不料解家的春联<br>\n又改为：“门对千竿竹短无，家藏万卷书长有。”<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('108', '雪里吟诗', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;秀才、县宫、财主在饮酒赏雪，诗兴大发，便提出以“瑞雪”为<br>\n题，吟诗联句。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“大雪纷纷落地，”秀才举杯起句。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;县官应声接道：“此是皇家瑞气！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;富翁摇头摆脑地吟道：“再下三年何妨？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;在门外冷得发僵的乞丐探头进去骂道：<br>\n&nbsp;&nbsp;&nbsp;“放你娘的狗屁！”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('109', '一副春联', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;古时候，有一人家十分迷信，凡事都要讨个吉利。年三十晚上，<br>\n父亲和两个儿子商议说：“堂上要贴一副新春联，现在咱们每人说<br>\n一句吉利话，凑出一副春联来。”两个儿子点头称是。父亲先捋着胡<br>\n须念道：“今年好！”大儿子想了想也念道：“倒霉少。”二儿子接<br>\n着又念道：“不得打官司！”念完了，大家称赞了一番，就由父亲执<br>\n笔，写了一条没加标点的长幅，贴在堂屋的正中。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;第二天，邻居们来拜年。一进门，看见那副春联，大声念道：“<br>\n今年好倒霉，少不得打官司！”<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('110', '谁最合适', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一个妇人同丈夫商量：“我想在钢琴上放一座音乐大师的塑<br>\n像，你看莫扎特、贝多芬、李斯特之中谁最合适？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;丈夫回答：“当然是贝多芬了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;她高兴地问：“为什么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“因为他是聋子。”<br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('111', '也不知道', '&nbsp;&nbsp;&nbsp;&nbsp;老师：“克劳德，昨天考试时你抄莫德的答案了是不是？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;克老德：“是的，可你是怎么发现的呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;老师：“莫德第十题答案是‘我不知道’，而你的答案是‘我<br>\n也不知道’。”<br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('112', '找答案', '&nbsp;&nbsp;&nbsp;&nbsp;彼得：“刚才考历史你为什么老是盯着监考老师的眼睛？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;汤姆：“因为我有一道题不会回答”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;彼得：“可老师的眼睛上也没有答案呀！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;汤姆：”只要他的眼睛朝窗外看一看，我立即就能找到答案。”<br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('113', '最容易的考题', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;某国空军院校的一次考试中，试卷上出了一道这样的考题<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“请写出我国空军部队任何一年的空军人数和飞机数。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位考生在试卷上飞快地写道——<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“1898年空军人数和飞机数皆为0。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;面对这样的答题，批卷老师犹豫了好一会，最后还是无可奈<br>\n何地挥笔打了勾，因为世界上第一架飞机问世上天还是1903年的<br>\n事哩。<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('114', '兼 职', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;某人打电话给路灯管理所，说有一盏路灯坏了。“修理它不会<br>\n很麻烦，”他说，“因为我只要一踢灯柱，灯就亮了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“很难确定什么时候派人去修理，”管理所职员回答，“但我<br>\n可以奉告，如果你能每晚把灯踢亮，我们可以让你在管理所兼职，并<br>\n免费提供一双皮鞋。”<br>\n <br>\n', '27', '13', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('115', '赚钱有术', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;两个朋友偶遇。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一位说：“你现在这么富，从哪儿搞到的钱？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;另一位说：“简单之极，我和一个有钱人结成了合作伙伴：他有<br>\n钱，我有赚钱的经验。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“那么后来呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“后来就变成了我有钱，他有赚钱的经验。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('116', '人尽其才', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一位父亲对他的朋友说：“我简直无法想象我儿子能够做什<br>\n么，他是那么不可靠。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;他的朋友说：“到气象台搞天气预报吧！”<br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('117', '尽其所长', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;老板十分愤怒地对新来的一个职员吼道：“你不但迟到，而且<br>\n还编造理由。你知道，老板们是怎样对待说谎的职员的吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;职员不慌不忙地说：“知道——立即派他去当产品推销员。”<br>\n <br>\n', '27', '13', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('118', '特 长', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;约翰看了游泳池的招聘救生员的广告后前去报名，游泳池的<br>\n老板问约翰有何特长，约翰回答说：“游泳池深2．1米，我身高<br>\n2．17米。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('119', '人尽其能', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;金哲顺有个老毛病，一天到晚耷头耷脑地打瞌睡。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;他的爸爸是汉城一个很有权势的豪绅，曾叮嘱老板多多关照<br>\n他。老板何尝不想借此搞好与老金的关系，但小金不争气，急煞老<br>\n板。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;经理又向老板告状了：“我真拿他没办法了，坐在办公室睡；<br>\n调他去开车也要睡；叫他去当保安部的头儿同样还是睡。别的人，<br>\n我早炒他犹鱼了！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;老板显出深思熟虑的样子：“我已考虑过了，干脆让他去卖睡<br>\n衣，并在他身上挂块牌子，上写：‘我们的睡衣质量何等优异，连<br>\n卖睡衣的人都不能保持清醒！’这也叫人尽其能，物尽其用了！”<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('120', '正是时侯', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;年老的布朗先生的听力愈来愈差了，他走到经理面前踌躇地<br>\n说：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“经理先生，我感到不久我就会被解雇，因为我知道我将再也<br>\n听不清楚顾客对我说些什么了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“胡说！我正要调你到意见台去。”经理说。<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('121', '人才难得', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;老板杰克到警察局报案：“有个流氓冒充我的推销员，在镇上<br>\n赚了10万美元！这比我所有的雇员在客户身上赚到的钱还要多得<br>\n多。你们一定要找到他！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我们会抓住他，把他关进监狱的！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“关起来干什么？我要聘用他！”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('122', '饿死的医生', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一位房产经纪人为了推销房子，喋喋不休地向客户夸耀这栋<br>\n楼房和这个居民区。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“这是一片多么美好的地方啊，阳光明媚，空气洁净，鲜花和<br>\n绿草遍地都是，这儿的居民从来不知道什么是疾病与死亡。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;正在这时，一队送葬的人从远处走来，一路上哭声震天，这经<br>\n纪人马上说：“你们看，这位可怜的人……他是这儿的医生，被活活<br>\n饿死了。”<br>\n <br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('123', '防止再来', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有位漂亮的女推销员业绩惊人，同行们都向她讨教推销方法。<br>\n她说：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我每次上门，都同那个家庭的男主人讲明商品用途，然后说<br>\n这次不必急着买，以后我会再来。这时候男主人总是很高兴，而女<br>\n主人则马上掏钱买下。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('124', '见智见仁', '&nbsp;&nbsp;&nbsp; 有一位教授写了一句话让学生们点标点，这句话是：“女人如<br>\r\n果没有了男人就恐慌了。”<br>\r\n&nbsp;&nbsp;&nbsp; 结果，女生的答案是：“女人如果没有了，男人就恐慌了！”<br>\r\n    而男生的答案是：“女人如果没有了男人，就恐慌了！”', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('125', '闲聊', '&nbsp;&nbsp;&nbsp; 两位同事在走廊闲聊，一位新来的年轻、漂亮的女打字员从旁<br>\r\n边走过。其中一位男子目不转睛地盯着她，情不自禁地说：“真是一<br>\r\n位美人！”<br>\r\n&nbsp;&nbsp;&nbsp; “都有三个孩子了！”另一位以嘲讽的口吻说。<br>\r\n&nbsp;&nbsp;&nbsp; “她吗？这不可能！”<br>\r\n&nbsp;&nbsp;&nbsp; “我说你。”<br>', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('126', '印象', '&nbsp;&nbsp;&nbsp; 一个男青年，模仿国外电影里某角色，留着满脸大胡子，自以<br>\r\n为美。为了交上女朋友，他在马路上主动帮助一位不相识的姑娘安<br>\r\n装自行车链条。临别时，青年问：“你对我的印象怎么样？”姑娘答：<br>\r\n&nbsp;&nbsp;&nbsp; “非常好，你这人真不简单，这么大年纪还上街来做好事！”<br>', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('127', '什么不同', '&nbsp;&nbsp; “男人和女人看橱窗的方式，有什么不同？”<br>\r\n&nbsp;&nbsp; “很简单，女人看物品，男人看物价！”<br>', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('128', '男女有别', '&nbsp;&nbsp;&nbsp; 甲：“女人可真占尽了便宜，瘦的人家称赞她是‘苗条’，胖的是<br>\r\n‘丰满’，高的是‘修长’，矮的是‘小巧玲珑’。”<br>\r\n&nbsp;&nbsp;&nbsp; 乙：“可不是吗？简直无一不是美。男子呢？”<br>\r\n&nbsp;&nbsp;&nbsp; 甲：“男人瘦的是‘排骨’，胖的是‘肥猪’，高的是‘竹竿’，<br>\r\n矮的是‘老鼠’。”<br>', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('129', '谁的脸皮厚', '&nbsp;&nbsp;&nbsp; “不知道。”林先生说。<br>\r\n&nbsp;&nbsp;&nbsp; “那就是你的胡子呀！你的脸皮那么厚，可它们还是破皮而<br>\r\n出。”<br>\r\n&nbsp;&nbsp;&nbsp; “你知道世界上什么东西最厚吗？”林先生问。<br>\r\n&nbsp;&nbsp;&nbsp; “不知道。”谭小姐回答。<br>\r\n&nbsp;&nbsp;&nbsp; “那就是你们女人的脸皮呀，”林先生说，“胡子那么尖，可<br>\r\n它在你们女人的脸皮下就是长不出来。”<br>', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('130', '差点误会', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一个小女孩显然是第一次到动物园去游玩。当她看到豹子笼旁<br>\n边挂着“油漆未干”的牌子时，不禁惊奇地叫起来，“噢，我还以<br>\n为豹子身上的斑点是真的呢！”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('131', '讨厌的男人', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;汤姆又来找女友玛瑞，他正在客厅耐心等候时，玛瑞的小弟弟<br>\n艾米尔生气地走出来。“讨厌的家伙，你为什么总来找我姐姐，你自<br>\n已没有吗？”<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('132', '香 蕉', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;在火车上，有人看见两个小女孩珍妮和玛丽很好玩，就给她们<br>\n每人一只香蕉。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;她们有生以来第一次见到香蕉，珍妮好奇地咬了一口。正在这<br>\n时，火车驶进隧道。她觉得眼前一黑，不禁大吃一惊。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“喂，玛丽！”她叫了起来：“你吃过香蕉没有？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“还没有吃呢？”玛丽答道。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“噢，那快别吃！”珍妮说，“吃了香蕉会什么都看不见的！”<br>\n <br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('133', '牧师的女儿', '&nbsp;&nbsp;&nbsp;&nbsp;牧师的女儿在楼上睡觉，哭了，牧师上楼问她为何哭。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“爸爸，我怕。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“不怕，小宝贝。上帝和你在一起。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“爸爸，你来跟上帝在一起吧，我下去跟妈妈在一起，好不<br>\n好？”<br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('134', '爸爸在哪里', '&nbsp;&nbsp;&nbsp;&nbsp;农夫的家在大路边。这天他看到一辆运草的大车翻倒在路边，<br>\n一个小孩站在一边哭。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;农夫安慰小孩：“别着急，你先到我家里喝口水，吃点饭，然后<br>\n我帮你把车扶起来。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;小孩说：“不行，我爸爸会不高兴的。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“不要紧，他会原谅你的。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;小孩只好跟农夫进了家。待到吃完饭，小孩子又担心起来：“我<br>\n想，我爸爸已经生气了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;农夫说：“别害怕。你告诉我，你爸爸在哪儿呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;小孩小声说：“他还压在车底下呢。”<br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('135', '不再叫“妈妈”', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;鲍比十分淘气，整天缠着妈妈不是要这，就是要那，嘴里也不<br>\n停地叫着：“妈妈，妈妈！”有时，妈妈被吵得不耐烦了，就对鲍比说：<br>\n“你再叫一声‘妈妈’，我就把你扔出去！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;鲍比不再做声了。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;过了一会儿，妈妈把他抱到床上睡觉，鲍比又开口道：“太太，<br>\n我能喝点饮料吗。”<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('136', '避重就轻', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“爸爸，墨水很贵重吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“啊，不。你怎么会这样想呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“因为我洒了一点点墨水在地毯上，妈妈就像非常痛心似的。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('137', '儿子的疑问', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一个孩子问父亲：“爸爸，做父亲的总是比儿子知道得多吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“是的。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“蒸汽机是谁发明的？”孩子又间。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“瓦特。”父亲神气地回答。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“那么，为什么瓦特的父亲不发明蒸汽机呢？”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('138', '生那么多做什么', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;妈妈生弟弟了，小琪很高兴地赶到医院去探视，当他隔着玻璃<br>\n看到一排排初生的娃娃时，满脸不高兴地说：“我只跟妈妈要一个<br>\n弟弟，她一下子生那么多做什么？”<br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('139', '离婚', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“妈妈，您疼爱我吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那当然！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那你为什么不跟爸爸离婚而与那个卖糖果的人结婚？”<br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('140', '快乐的寡妇', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;剧院开戏前，一群美国中老年妇女嘻哈聊天，好不热闹，其中<br>\n一位觉得同伴太吵。有点过意下去，便对身旁的布朗先生道歉：“对<br>\n不起，我们实在太快乐了。你知道吗？我认识她们好几十年了，她<br>\n们的先生都去世了。他们自称快乐的寡妇，每年自组出外旅游玩一<br>\n玩。我一直很想加入这个团体，可是，一直至今年春天，我才具备<br>\n入会的资格。”<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('141', '太晚了', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;妻子在临终的丈夫旁哭泣，丈夫安慰道：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“别伤心了！也许不久你会再找到一位理想的伴侣！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;妻子反而哭得更伤心他说：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“谁会要我这老太婆呢？如果你10年前就这样的话……”<br>\n <br>\n', '27', '13', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('142', '写 信', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;身患重病的丈夫躺在床上，而妻子则在写信。她转过身来问丈<br>\n夫：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“乔治，埋葬这个词怎么写？”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('143', '现在是谁抱歉？', ' \r\n    当我们初中的校长收到一盆仙人球时，我问他是不是他妻子送来的。他回答说是的，并解释说，他俩大吵了一架，她可能是把这送来以表歉意。他让我把卡片上的话念给他听，那上面用很大的红字写着：坐在上面。\r\n \r\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('144', '不可同论', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;丈夫听太太恶骂女佣人后，安慰她说：“你不要生气，我和你都<br>\n是一样的命运。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“先生！你哪能和我一样？”女佣说，“我已告诉你太太，明天<br>\n起，我不干了，你敢说这句话吗？”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('145', '该关的都关了', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;亨利的妻子临睡前絮絮叨叨的谈话令他十分不快。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一天夜里，妻子又絮叨了一阵子后，问亨利：“家里的窗门都关<br>\n好了吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;亨利回答：“亲爱的，除了你的话匣子外，该关的都关了。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('146', '比 妻', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;两个爱尔兰人肖恩和凯文，分别多年后在大街上相遇。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“快告诉我，”肖恩说，“你结婚了吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“结了。我妻子是个天使，”凯文答道。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你真幸运。而我的妻子仍然跟着我。”<br>\n <br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('147', '避 嫌', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;妻子：“每次我唱歌的时候，你为什么总要到阳台上去？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;丈夫：“我是想让大家都知道，不是我在打你。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('148', '另请高明', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;莉莎：“爸爸，这道算术题我不会算。你能告诉我吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;爸爸：“你说说，是什么题？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;莉莎：“有个人每月薪水300元，他太太每月却要花去320元，<br>\n问……”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;爸爸：“别问我了，还是问你妈去吧，她是这方面的专家。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('149', '绝 望', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;看护妇甲：“505号病人，彻底绝望了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;看护妇乙：“呀，为什么？刚才他还握着我的手，谈了好久呢。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;看扩妇甲：“正是这样，刚才被他夫人看见了。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('150', '一家之主', '&nbsp;&nbsp;&nbsp;&nbsp;我们教堂按照殖民时期英国的风俗做了一次主日礼拜。牧师<br>\n穿着长袍和灯笼裤，教徒则按性别分开：男人在左边，女人在右边。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;到捐款时，牧师宣布这也要按过去的方式办，他要求“一家之<br>\n主”上前来把钱放在供坛上。男人们立刻站了起来，有趣的是许多<br>\n人跨过走道去向他们的妻子要钱。<br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('151', '像在家里一样', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;丈夫忍受不了凶悍泼辣妻子的折磨，逃出家门，投宿旅馆。旅<br>\n馆经理为他打开一个房间，讨好说：“住在这里，你会感到像在自己<br>\n家里一样。”这人一听此言，大声呼救：“天那，快给我换个房间吧！”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('152', '真是糊涂', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;夫：“你出去时，可别带那只怪模怪样的花狗去。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;妻：“我觉得那条花狗很可爱。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;夫：“你一定要带着它，是想以它作为对比，显示出你的美貌<br>\n吧？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;妻：“你真糊涂，如果想那样，我还不如带你出去更好！”', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('153', '流言蜚语', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;某先生是地方上的要人。一天，他像往常一样在书房里例览当<br>\n日报纸，突然对妻子大声喊道：“喂，安娜，你看到今天早报上的<br>\n流言蜚语了吗，真可笑！他们说，你收拾行装出走了。你听见了吗、<br>\n安娜、你在哪儿？安娜？啊！”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('154', '同情心', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位经理到邻近的某市出差，原说好要搭乘傍晚的班机回家，<br>\n可是他没赶上那班飞机，又来不及通知太太不要去机场迎接。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;他的太太赶到机场，发现丈夫不在预定的班机上，感到十分焦<br>\n急，担心丈夫有了女友，便立即给她丈夫在邻市的五个朋友和同事<br>\n打电报，询问她丈夫是否在他们的府上过夜。然后，她开车回家。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;丈夫乘下一班飞机，于数小时后回来，发现妻子站在门口，手<br>\n里拿着刚送到的电报。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;五份电报上都只有一个字：“是。”<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('155', '称赞过早', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;妻子：“我想给小狗起个名字叫‘拜伦’，母亲说这样会侮辱了<br>\n这位诗人；后来我想把你的名字改给它，母亲又说不好。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;丈夫：“你的母亲真好。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;妻子：“她说这样会侮辱了小狗。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('156', '受 伤', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“您知道吗？我的丈夫在足球比赛中受了伤。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“可并没有谁看见过他踢足球啊！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“是的，他是在上星期的比赛中喊坏了声带。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('157', '不会冲突', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一位女士和一位足球教练结婚快40年了，她深知球赛对丈夫<br>\n来说总是头等重要的事。有一天她特别沮丧，脱口而说：“弗郎克，<br>\n你呀，宁可误了我的葬礼，也要去看球赛！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大夫非常心平气和，答道：“罗伯塔，到底是什么使你想到，<br>\n我会把你的葬礼安徘在有球赛的日子呢？”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('158', '所见略同', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“艾尔姆，”妻子问道，“你怎么不和泰德下棋了呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“你愿意和一个赢了棋就趾高气扬，一输了棋就耍无赖的人下<br>\n棋吗？”丈夫反问道。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“不愿意。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“泰德也不愿意。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('159', '电视病', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有一个年轻妻子，她丈夫每晚连续看电视中的拳击节目，什么<br>\n也不顾。她一气之下回了娘家。一进门，只见她父亲一个人坐在电<br>\n视机前，也在看拳击节目。她问：“妈妈呢。”她父亲头也没回，说：<br>\n“回你外婆家去了。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('160', '有话快说', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;丈夫一只手已经摸上了电视机开关：“喂、海伦，在足球赛开始<br>\n之前，你有什么话要说吗？”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('161', '妙 招', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;莫特·沙尔非常同情“足球寡妇”。有一次，一位妇女问他怎么<br>\n才能将她丈夫的注意力从电视上转到她身上，他回答：“穿透明的<br>\n衣服。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“要是这样也不奏效呢？”她问。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那你在背上贴个号码！”沙尔回答。<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('162', '大惑不解', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位妇女请人来家修电视机，电视机刚修好，她听到丈夫回家<br>\n开门的声音，便急忙对修电视机的说：“很对不起，我丈夫回来了，<br>\n他最爱吃醋，你最好先藏起来，然后再趁他不注意的时候溜掉。”修<br>\n电视机的人不得已，只好藏在放电视机的桌子下面。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;丈夫进家后，一屁股坐在椅子上看起电视来，电视里正在转播<br>\n足球赛。丈夫看得津津有味，而藏在桌子下面那个修电视机的人却<br>\n觉得又闷又热，又窝火。终于，他忍耐不住了，从电视机下面钻了出<br>\n来，并从夫妻俩面前走过，打开门扬长而去。丈夫看着这个人走出<br>\n去，大惑不解地看看电视机，再看看他妻子，说：“亲爱的，我怎么<br>\n没看见裁判把这家伙给罚下场，你看见了吗？”<br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('163', '弄巧成拙', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;晚宴上，约翰的女秘书喝醉了，约翰只好驾车送她回家。回到<br>\n自家后，约翰怕妻子不理解，没将这事告诉妻子。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;第二天下午，约翰驾车陪妻子去看电影，猛然间，他发现妻子<br>\n脚边有一只女人皮鞋，他趁妻子眼睛看车窗外的一瞬间，拾起这只<br>\n皮鞋将它扔到窗外，这才松了口气。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;不料，此时妻子转过头来，用脚碰了碰约翰，问道：“约翰，<br>\n你看到我的另一只鞋了吗？”', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('164', '紧急措施', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;护士：“医生，不好了！刚才那个病人吃了我们给她的药，一出<br>\n诊所的们就晕倒了！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;医生：“赶快，把她的身体翻个个儿，摆成是刚刚进门的样子！”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('165', '最拿手的', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医生为汤姆作了长时间检查，仍未能查出他患的是什么病。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;汤姆皱着眉头：“你们医院的水平就这么差劲呀？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医生没生气，只是意味深长地说：“这样吧，你回去洗一次热水<br>\n澡，然后在室外走动两个小时，但一定不要穿衣服。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“这样就能治我的病吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“不。不过，这样你准能染上肺炎，而我们对肺炎从诊断到治疗<br>\n都是最拿手的。”<br>\n <br>\n', '27', '19', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('166', '不能用手', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一个医生走在街上。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对面跑来个小伙子，撞在医生身上，把他撞倒了。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医生大怒，站起来拉住小伙子，举手就要打。小伙子忙说：“您<br>\n用脚踢我吧！请千万别用手打。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医生问：“为什么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小伙子说：“人家说您用脚踢丧不了命，可一经您的手就没命<br>\n了。”<br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('167', '实在想不清', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;两个医生碰面，其中一个矮个子满脸阴郁。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“怎么了？”另一个问，“你刚治好了一个疑难病人，很成功嘛。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;矮个子说：“我实在想不清，究竟是用什么药把他治好了。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('168', '不用担心', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;病人：“大夫，昨天回家我才发现有根针还扎在身上没取下。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;大夫：“别担心，我们不会按扎得时间长短来计价的。”', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('169', '猜硬币断病', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;卡尔逊说：“我真不明白这医院是怎么回事。我住进医院后，一<br>\n个医生说我是阑尾炎，另一个医生却说我是胆结石。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“结果是什么呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“他们争论不休，互不相让。最后只好用猜硬币正反面的办法<br>\n决出正误。结果把我的扁桃腺割了。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('170', '先学游泳', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一位医生治死了人，被这家人捆绑住，准备送官府。夜里乘人<br>\n不备，医生挣脱绳索，游水过河逃回家中。见到自己儿子正在读诊<br>\n脉之书，便忙说：“儿子啊，读书还可以缓一缓，还是先学会游泳更<br>\n重要。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('171', '人过留名', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有一个庸医，不学无术，又好附庸风雅。恐怕死后湮没无闻，便<br>\n用重金托人代拟了一则墓志铭，刻石留世。全文如下：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“先生初习武，无所成；后又经商，亦无所获。转学歧黄医术三<br>\n载，执业多年，无一人问津。忽一日，先生染病，试自医之，乃卒焉。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('172', '死人不开口', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小镇上，有个医术很差的医生。病人来看病，他往往胡乱看一<br>\n气，乱开药方，因此出了许多医疗事故。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有一次，有位生命垂危的病人，由家属陪着前来求医。那个医<br>\n生查行了半天，没查出什么毛病，却把病人摆弄来摆弄去，差点儿<br>\n没断气。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;病人的家属问：“你究竟会不会看病？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医生说：“那当然，我看过的病人，从没有说过我不好。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这时，路过这家诊所的一个人说：“难道那些死人会开口吗？”<br>\n <br>\n', '27', '16', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('173', '农夫与庸医', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有一个农夫到城里为生病的妻子抓药，他不知道应该怎样称<br>\n呼药剂师。在药店门口，他向一个过路的孩子打听。那个孩子告诉<br>\n他，称呼是“庸医。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;农夫进到药店里，见到药剂师就说：“你好啊！庸医先生。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“啪！”农夫结结实实地挨了一个耳光。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“我想抓副退烧的药，庸医先生。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“啪！”他又挨了一个耳光。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“就这些了吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“对！”药剂师气冲冲地说。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;农夫回到家，对妻子说：“我把药抓回来了，你起来一下吧！”<br>\n妻子刚起来，他就使足了劲给了她一巴掌，打得她跌到床下去了。妻<br>\n子经这么一打一吓，出了一身大汗，真的退烧了。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;妻子的病好后，农夫又进城去找那个药剂师。他一进药店就对<br>\n药剂师说：“上次抓的药还没用完，剩下的一半我带回来还给你。”<br>\n说完，他抡圆了一巴掌打过去。&nbsp;', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('174', '盲肠作用', '&nbsp;&nbsp;&nbsp;&nbsp;有个人得了盲肠炎，但无论如何也不愿开刀。家人强行把他送<br>\n到医生那里，他在痛苦挣扎中还不断嚷嚷：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“上帝既然把盲肠赐给人，那就一定是有用的……”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“当然有用，”医生说，“要是人类没有那讨厌的盲肠炎，我<br>\n靠什么买汽车，送女儿到国外留学？”<br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('175', '开得太深', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;主任医师大发雷霆：“这已是你这个月里损坏的第三个手术<br>\n台，史密斯先生！请你以后开刀不要开得这样深！”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('176', '医生的回答', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“大夫，你把剪刀遗忘在我的肚子里了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“没关系，我还有一把。”', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('177', '急诊须知', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;某家医院规定，医生、护士下午5点半下班。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了急诊病人的就诊，在这家医院的门诊部门口挂着一个指<br>\n示牌，告诉人们医生下班以后有急诊的病人怎样处置。指示牌用很<br>\n长的篇幅列举了各种细则，在哪儿能找到看护，怎样和看护联系。<br>\n看护来之前做些什么等等。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;然后，指示牌的最后一段写着：如果你真有时间把这个细则<br>\n读完，那么你的病就不是急诊，明天上班后再来吧。<br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('178', '闲人免进', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;丈夫意外受伤，进医院住了一个月。妻子有一次去看他，弯身<br>\n和他亲吻。他的伤势已稍好转，很强烈地回吻了妻子一下。恰好此<br>\n时一位护士走进房间，看见当时的情景便马上回身把门带上。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;结果这次探访时间很长，护士或其他医务人员也没有进来打<br>\n扰。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;他们觉得很奇怪，直到妻子开门出去时才明白，原来门上挂着<br>\n块牌子，写着：“正在进行治疗，闲人免进。”<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('179', '病床边的悼念', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;杰克刚动过大手术，麻醉剂效力逐渐消失，醒过来时，赫然看<br>\n见两个陌生妇人，双手抱膝，坐在他的床脚的摇椅上。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“对不起，”杰克说，“你们一定找错房间了。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;较年轻的妇人转过身来对他说：“别害怕，我们决不会骚扰你。<br>\n去年今日，我父亲在这张床上去世。妈妈和我只想在这里坐一会，<br>\n追悼亲爱的爸爸。”<br>\n <br>\n', '27', '17', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('180', '外科病和内科病', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;儿科病房里的两个病儿在谈论自己的住院经验。其中一个问：<br>\n“你是外科病还是内科病？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我不知道？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我的意思是你来这里之前不舒服，还是到这里后他们使你不<br>\n舒服的？”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('181', '岂有此理', '&nbsp;&nbsp;&nbsp;&nbsp;医院产房外的休息室里，一群男子正在等着就任新爸爸。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一位护士从产房匆匆走出，对其中一人说道：“祝贺你，你太太<br>\n生了一位小姐！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;另外一个男子把烟蒂掷在地上，跳起来喊道：“岂有此理！我比<br>\n他先到的，为什么还没轮到我？”<br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('182', '惊人的发现', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;尼克对人说：“真是惊人的发现，布朗的好运气竟一直伴随到<br>\n他死去。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“怎么回事？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“大夫们给他动手术，取出他吃蚌时吞进的一颗珍珠，取出来<br>\n后发现，这颗珍珠足以支付他的手术费和安葬费。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('183', '住 院', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一个病人向他的知心朋友说：“医生说，他用两个月的时间就<br>\n可以使我下床。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那他做到了没有？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“在第五天他就使我下床了……”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“怎么回事？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“他给我看了住院费用的单据……”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('184', '将床腿锯掉', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一个妇人去医院看医生，她向医生介绍病情道：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“我晚上老是睡不着，躺在床上，总感觉床下有人；躺在床下，<br>\n又感到床上有人，如此上上下下，真把人折磨死了！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;医生听完她的话，立即给她提供了一个医治妙方：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“将四条床腿锯掉！”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('185', '特殊用药', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;一个人对药房里的药剂师说：“我失眠得太厉害了。家里的那<br>\n只小猫在地毯上走过去，我都会惊醒。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;药剂师飞快地拿出一包药粉，递给他。他忙问：“这药有效吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“没问题。”药剂师极其自信。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那我一天吃几次？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;药剂师反而急了：“你可千万不能吃，给你的猫吃一次就解决<br>\n问题了。”<br>\n <br>\n', '27', '19', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('186', '恋爱短篇', '&nbsp;&nbsp;&nbsp;&nbsp;文艺社征文比赛：“请以最短的文章，论述恋爱始未”。结果，小<br>\n王得到了冠军，其文如下<br>\n&nbsp;&nbsp;&nbsp;&nbsp;初恋：心里眼中只有她。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;热恋：妈妈叫我向东，爱人叫我向西；向西。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;失恋：爱人结婚了，新郎不是我。<br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('187', '显 灵', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;在印第安纳波利斯市的布特勒大学，学习宗教的宇宙观的学<br>\n生们争论热烈，讨论着上帝的存在与否。一连几星期，学了安塞姆<br>\n的实体论，肯特的有神论批判，以及圣托马斯·阿奎那的宇宙论。<br>\n一天，教授宣布一场大考推迟举行。只听一个学生欣喜若狂地叫<br>\n道：“原来果真有上帝！”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('188', '上帝100分', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;老师把考试卷发下来后，迈克一题也不会做，便在试卷背后写<br>\n道：“只有上帝知道怎么做，我不知道。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;试卷发下来，迈克一看，上面写着：“上帝100分，你0分！”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('189', '名字不是抄的', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;老师问一名学生：“你的试卷是抄了别人的吧？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“是的。是抄了些，但不全是。”学生答道。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那么，哪些地方不是抄的呢？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“嗯……我的名字就不是抄的嘛。”<br>\n <br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('190', '历史考试', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;大学历史考试是口试。教授提了三个问题，这个学历史的大学<br>\n生都答不出来。为了给他一个及格的机会，教授最后问他：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“美洲大陆是谁发现的？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“……”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;教授气急败坏地喊道：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“克里斯朵夫·哥伦布！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;这个学生拔腿就往外走，教授惊奇地把他叫住：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“喂，你为什么要走啊？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“对不起，您不是叫下一个考生了吗？”', '27', '19', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('191', '最糟糕的事情', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;老师：“难道还有什么事情比我们咬开一个苹果时，发现里面<br>\n有一条虫子更糟糕的吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;学生：“有，发现虫子只剩下半条了。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('192', '名不虚传', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;教授对一名智力早熟的6岁男孩进行测验。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;教授问：“你的生日是哪一天？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;小孩：“2月20日。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;教授：“哪一年？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;小孩：“每一年。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('193', '单数和复数', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;数学老师问杰克：“你现在理解了什么是单数和复数吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“理解了。”杰克回答。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那么一条裤子是单数还是复数呢？”老师又问。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“很简单，”杰克回答，“上面是单数，下面是复数。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('194', '缺少代言人', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;老师正给她7岁大的学生们上自然课。她告诉他们：“工蚁，可<br>\n以搬动五倍于它们体重的食物。从这里，你们可得出什么结论？”一<br>\n个孩子自信地答道：“它们没有工会。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('195', '把最胖的推下去', '&nbsp;&nbsp;&nbsp;&nbsp;学生会举办有奖征答，赛题是：五个名人搭乘一个气球，五个<br>\n人分别代表各自领域的最高水平：一个是文学家，一个是化学家，<br>\n一个是物理学家，一个是医学家，一个是气象学家。气球突然遇到<br>\n风暴，要把其中两个人推下去，才能保证气球的安全，问题是，究<br>\n竟把哪两个人推下去？<br>\n&nbsp;&nbsp;&nbsp;&nbsp;不久，接到了许多答案，其中大多旁征博引，洋洋洒洒地分析<br>\n论证各人的功过轻重，然后拿出自己的看法。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;但最后评审委员会却把头奖给了一个三年级的学生，他的答案<br>\n是：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“把最胖的两个推下去！”<br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('196', '蛋不吃食', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“母狮生下小狮，小狮要吃东西。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“母狗生下小狗，小狗要吃东西。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“……？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“那就是说，凡是母亲生的都得吃东西。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;小汤姆想呀想呀，终于找出一个生下来不吃东西的家伙。他告<br>\n诉老师：<br>\n&nbsp;&nbsp;&nbsp;&nbsp;“老师，母鸡生蛋，蛋不吃东西。”<br>\n <br>\n', '27', '15', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('197', '证 明', '&nbsp;&nbsp;&nbsp;&nbsp;老师向学生证明酒的危害性，她把一条蠕虫放进一杯酒里，蠕<br>\n虫立刻死掉了。“大家知道这证明了什么？”她问学生。小卡尔来了<br>\n灵感：“这证明如果人喝了酒，肚子里就不会有蛔虫。”<br>\n', '27', '14', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('198', '以牙还牙', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;在美国加州的一所小学里，有不少学生正戴着不锈钢牙箍接<br>\n受牙齿矫正手术。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有一天，一位教师试着引发学生回答什么是“反哺”就举例问<br>\n道：“你们的父母亲现在花了很多钱替你们矫正牙齿，将来父母亲<br>\n年纪老了，你们就花钱替他们镶了假牙，这种情况叫什么？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;有位学生答道：“以牙还牙。”<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('199', '足球与爸爸', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;托比的爸爸给托比买了一个小足球，他把它带到学校去，玩得<br>\n挺开心。<br>\n&nbsp;&nbsp;&nbsp;&nbsp;老师过来了，摸着托比的头说：“托比，你已是一个小学生了，<br>\n不再是幼儿园里的孩子，要懂得关心同学。把你的球借给那个没有<br>\n爸爸的可怜的小男孩，好吗？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;托比犹豫了一会儿，说：“我能不能不借给他足球而借给他爸<br>\n爸呢？”<br>\n <br>\n', '27', '19', '2007-10-10 00:00:00', null, null, null);
INSERT INTO `joke` VALUES ('200', '理直气壮', '&nbsp;<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;海伦老师在语文课时提问道：“要么给我自由，要么让我死<br>\n去，这句话是谁说的？知道的同学请举手。”教室里悄无声息，无一<br>\n人举手。海伦老师颇感失望，这时一个胖胖的小个子同学用极不熟<br>\n练的英语回答：“1775年，巴特利克·亨利讲的。”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“对，同学们，现在回答的是日本同学。你们土生土长的美国<br>\n人却不能回答，而来自异国他乡的日本同学却能正确回答，这是多么<br>\n可悲可叹啊！”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这时，教室的最后几排传来一声非同小可的怪叫：“把日本人<br>\n干掉！”海伦老师听到这叫声，气得大声吼道：“谁？这是谁说的？”<br>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;沉默了一会，一个美国同学理直气壮地站起来说道：“1945<br>\n年，杜鲁门总统说的！”<br>\n <br>\n', '27', '18', '2007-10-10 00:00:00', null, null, null);

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `turn` tinyint(2) DEFAULT NULL,
  `creattime` datetime DEFAULT NULL,
  `author` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', '如愿', null, '1', '2016-07-27 14:11:41', null);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topicID` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hasReply` bit(1) NOT NULL DEFAULT b'0',
  `updateTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('27', '16', '11', '<p>^O^</p>', '2013-05-17 13:04:51', '', null);

-- ----------------------------
-- Table structure for registercode
-- ----------------------------
DROP TABLE IF EXISTS `registercode`;
CREATE TABLE `registercode` (
  `mobile` int(11) NOT NULL,
  `code` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registercode
-- ----------------------------

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topicID` int(11) NOT NULL DEFAULT '1',
  `postID` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `content` varchar(300) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('94', '16', '27', '11', '111', '2013-05-18 11:20:34');
INSERT INTO `reply` VALUES ('95', '16', '27', '95', '222', '2016-07-27 14:36:51');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL DEFAULT '0',
  `moduleID` int(11) NOT NULL,
  `postCount` int(11) NOT NULL DEFAULT '1',
  `replyCount` int(11) NOT NULL DEFAULT '0',
  `pv` int(11) NOT NULL DEFAULT '0',
  `content` varchar(60) NOT NULL,
  `emotion` tinyint(2) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isNice` bit(1) NOT NULL DEFAULT b'0',
  `isUp` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('16', '11', '4', '1', '0', '17', 'test', null, '2013-05-17 13:04:51', '\0', '\0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(20) NOT NULL COMMENT '登录名',
  `nickName` varchar(15) DEFAULT NULL COMMENT '昵称',
  `password` varchar(40) NOT NULL COMMENT '密码',
  `sex` bit(1) NOT NULL DEFAULT b'1' COMMENT '0女1男',
  `email` varchar(30) DEFAULT NULL,
  `headImg` varchar(120) DEFAULT 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif',
  `registDate` date DEFAULT NULL COMMENT '注册日期',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `religion` int(3) DEFAULT NULL COMMENT '0自由学者1儒家2道教3佛教',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '紫电清霜', null, '6ece8b29849534227ca38d459c28d9f8', '', 'iveryang@sina.cn', 'http://static.tieba.baidu.com/tb/editor/images/tsj/t_0002.gif', '2013-05-09', null, null);
INSERT INTO `user` VALUES ('4', '老北', null, 'eee85e1ec1ad81aa3d39353dc7d13f52', '', 'yswj81@163.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', '2013-05-10', null, null);
INSERT INTO `user` VALUES ('5', 'bob', null, 'cf8e54a307ca7105d2562107f28a4559', '', 'yzqb@qq.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', '2013-05-10', null, null);
INSERT INTO `user` VALUES ('6', '佩恩', null, '4cc79d0f881308a24f291d6f4e750830', '', 'sqhua@163.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', '2013-05-10', null, null);
INSERT INTO `user` VALUES ('7', 'Mike_Liu', null, 'be9dbde87909c957ab8ba9709415ee92', '', '871005789@qq.com', 'http://mikeliu.cloudfoundry.com/img/s/me_mini.jpg', '2013-05-10', null, null);
INSERT INTO `user` VALUES ('8', '十二', null, '3fde6bb0541387e4ebdadf7c2ff31123', '', '785042976@qq.com', 'http://www.gravatar.com/avatar/f9d61d8de55171c2046fd587764a3386?d=mm', '2013-05-10', null, null);
INSERT INTO `user` VALUES ('9', 'mai', null, 'e10adc3949ba59abbe56e057f20f883e', '', '183591360@qq.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', '2013-05-10', null, null);
INSERT INTO `user` VALUES ('10', 'JFinal', null, '446818b28bc03176a3991c2be86ea327', '', 'jfinal@126.com', 'http://static.oschina.net/uploads/user/100/201137_100.jpg', '2013-05-10', null, null);
INSERT INTO `user` VALUES ('95', '行尽天涯', null, 'e10adc3949ba59abbe56e057f20f883e', '', '63993048@qq.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', '2016-07-04', null, null);
