set names utf8;
drop database if exists huaapp;
create database huaapp charset=utf8;
use huaapp;
-- 轮播图
create table banner(
  lid int primary key auto_increment,
  img varchar(50)
);
-- 首页分类
create table classify_index(
  lid int primary key auto_increment,
  img varchar(50),
  title varchar(20)
);
-- 首页2分类
create table classify_index2(
  lid int primary key auto_increment,
  img varchar(50),
  title varchar(20)
);
-- 首页3分类
create table classify_index3(
  lid int primary key auto_increment,
  img varchar(50),
  title varchar(20)
);
-- 首页商品列表
create table product_index(
  lid int primary key auto_increment,
  pro_id int,
  title varchar(20),
  detail varchar(50),
  js  varchar(20),
  subtitle varchar(20),
  price int,
  delprice int,
  shopping varchar(10),
  img varchar(50),
  classes varchar(10),
  count int
);
-- 首页商品列表3
create table product_index3(
  lid int primary key auto_increment,
  pro_id int,
  subtitle varchar(20),
  title varchar(20),
  price int,
  delprice int,
  shopping varchar(10),
  img varchar(50),
  classes varchar(10),
  count int
);
-- 商品详情页列表
create table hua_details(
  lid int primary key auto_increment,
  d_title varchar(100),
  d_cl varchar(100),
  d_bz varchar(100)
);
-- 商品详情页轮播图
create table details_banner(
  lid int primary key auto_increment,
  img1 varchar(60),
  img2 varchar(60),
  img3 varchar(60),
  img4 varchar(60)
);
-- 用户列表
create table hua_user(
  lid int primary key auto_increment,
  phone bigint,
  upwd varchar(60),
  email varchar(25)
);
-- 轮播图数据
insert into banner values(1,'http://127.0.0.1:9050/banner/banner_1.jpg');
insert into banner values(2,'http://127.0.0.1:9050/banner/banner_2.jpg');
insert into banner values(3,'http://127.0.0.1:9050/banner/banner_3.jpg');
insert into banner values(4,'http://127.0.0.1:9050/banner/banner_4.jpg');
-- 首页分类数据
insert into classify_index values(1,'http://127.0.0.1:9050/index/classify_1.png','送恋人');
insert into classify_index values(2,'http://127.0.0.1:9050/index/classify_2.png','送长辈');
insert into classify_index values(3,'http://127.0.0.1:9050/index/classify_3.png','送朋友');
-- 首页2分类数据
insert into classify_index2 values(1,'http://127.0.0.1:9050/index/classify_4.png','生日祝福');
insert into classify_index2 values(2,'http://127.0.0.1:9050/index/classify_5.png','表白求婚');
insert into classify_index2 values(3,'http://127.0.0.1:9050/index/classify_6.png','开业商务');
insert into classify_index2 values(4,'http://127.0.0.1:9050/index/classify_7.png','周年纪念');
-- 首页3分类数据
insert into classify_index3 values(1,'http://127.0.0.1:9050/index/classify_10.jpg','新品来袭');
insert into classify_index3 values(2,'http://127.0.0.1:9050/index/classify_11.jpg','品味之选');
insert into classify_index3 values(3,'http://127.0.0.1:9050/index/classify_12.jpg','设计师臻选');
-- 首页商品列表1数据
insert into product_index values(1,1,'一往情深','精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎','年销售冠军','经典爆款,年销售冠军',239,315,'12.8万','http://127.0.0.1:9050/index/product_1.jpg','鲜花',1);
insert into product_index values(2,1,'你是唯一','卡罗拉红玫瑰11枝','11枝热销款','11枝新品 一心一意的爱',138,189,'4.7万','http://127.0.0.1:9050/index/product_2.jpg','鲜花',1);
insert into product_index values(3,1,'不变承诺','99枝红玫瑰','经典99枝','经典99枝,鼎力推荐',569,869,'6.7万','http://127.0.0.1:9050/index/product_3.jpg','鲜花',1);
insert into product_index values(4,1,'恋恋情深','11枝香槟玫瑰,白色多头百合2枝','简约设计','经典款式 简约设计',196,255,'8万','http://127.0.0.1:9050/index/product_4.jpg','鲜花',1);
insert into product_index values(5,1,'韩式系列/青春有你','苏醒玫瑰16枝、白色洋桔梗5枝、浅蓝绣球1枝','韩式系列新品','花艺师打造 韩式花束系列',339,459,"670",'http://127.0.0.1:9050/index/product_5.jpg','鲜花',1);
insert into product_index values(6,1,'忘情巴黎','33枝红玫瑰','畅销爆款','浪漫唯美 女神挚爱',298,382,"7.1万",'http://127.0.0.1:9050/index/product_6.jpg','鲜花',1);
insert into product_index values(7,1,'韩式系列/亲爱的你','粉佳人玫瑰16枝、白和粉色洋桔梗各5枝、尤加利10枝、浅紫色小菊3枝、深粉色/浅粉色绣球1枝','全新韩式系列','花艺师打造 韩式花束系列',369,469,"1.7万",'http://127.0.0.1:9050/index/product_7.jpg','鲜花',1);
insert into product_index values(8,1,'韩式系列/初心不负',' 韩式花束系列花艺师全新打造，卡罗拉玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝','全新韩式系列','花艺师打造 韩式花束系列',228,298,"7.3万",'http://127.0.0.1:9050/index/product_8.jpg','鲜花',1);
insert into product_index values(9,2,'韩式花篮/平淡岁月','苏醒玫瑰13枝，蓝紫色绣球1枝，香槟洋桔梗5枝','韩式新品','韩式花篮系列',286,375,'1245','http://127.0.0.1:9050/index/product_9.jpg','鲜花',1);
insert into product_index values(10,2,'幸福万年长','红色康乃馨66枝，白边紫色多头康乃馨15枝，栀子叶2扎','精品优选','温暖花束 幸福万年长',346,486,'4003','http://127.0.0.1:9050/index/product_10.jpg','鲜花',1);
insert into product_index values(11,2,'韩式系列/一路向阳','向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝','全新韩式系列','花艺师打造 韩式花束系列',296,398,'6.7万','http://127.0.0.1:9050/index/product_11.jpg','鲜花',1);
insert into product_index values(12,2,'恩情无限','粉色康乃馨11枝，百合2枝','人气推荐','精选花材 精心设计',178,232,'1.5万','http://127.0.0.1:9050/index/product_12.jpg','鲜花',1);
insert into product_index values(13,2,'星河璀璨','香槟玫瑰9枝、蓝绣球、向日葵、白色洋桔梗、大叶尤加利','9折特惠','倾情设计，9折特惠',262,376,"4432",'http://127.0.0.1:9050/index/product_13.jpg','鲜花',1);
insert into product_index values(14,2,'母爱','紫红色康乃馨9枝，粉色多头康乃馨10枝','母亲最爱','红粉搭配  花色明艳',162,228,"2.0万",'http://127.0.0.1:9050/index/product_14.jpg','鲜花',1);
-- 首页商品列表3数据
insert into product_index3 values(15,1,'重阳节长辈定制','花好月圆永生花台灯/送父母长辈定制款·精选进口多色永生康乃馨台灯',298,398,'620','http://127.0.0.1:9050/index/product_15.jpg','礼品',1);
insert into product_index3 values(16,1,'创业新品','一鹿(路)有你永生花小夜灯·永生花礼盒',288,388,'1008','http://127.0.0.1:9050/index/product_16.jpg','礼品',1);
insert into product_index3 values(17,1,'新款上市','柔情时光-香奈儿邂逅柔情淡香水礼盒/50ml·香奈儿邂逅柔情淡香水50ml',1199,1260,'12','http://127.0.0.1:9050/index/product_17.jpg','礼品',1);
insert into product_index3 values(18,1,'创意新品','永生花满月艺术台灯/朦胧粉·永生花台灯',398,498,'12','http://127.0.0.1:9050/index/product_18.jpg','礼品',1);
-- 首页商品列表4数据
insert into product_index3 values(19,2,null,'小天鹅（4寸）·乳酪芝士蛋糕',199,299,'320','http://127.0.0.1:9050/index/product_19.jpg','cakeboss蛋糕',1);
insert into product_index3 values(20,2,null,'环游世界蛋糕（2-4人食）·巧克力蛋糕',258,358,'350','http://127.0.0.1:9050/index/product_20.jpg','黑池蛋糕',1);
insert into product_index3 values(21,2,null,'桃之夭夭·招郎慕斯蛋糕（7寸）·收获甜甜的恋爱 桃花马上降临',358,458,'93','http://127.0.0.1:9050/index/product_21.jpg','全国蛋糕',1);
insert into product_index3 values(22,2,null,'大都会红丝绒蛋糕（8寸）·丝绒蛋糕',319,419,'16','http://127.0.0.1:9050/index/product_22.jpg','幸福西饼蛋糕',1);
-- 首页商品列表5数据
insert into product_index3 values(23,3,'火热畅销款','星期耳钉礼盒·s925银个性耳钉',239,369,'1999','http://127.0.0.1:9050/index/product_23.jpg','礼品',1);
insert into product_index3 values(24,3,'专柜款7.8折','施华洛世奇One时尚浪漫心形项链/粉·施华洛世奇  时尚浪漫心形项链',999,1290,'4','http://127.0.0.1:9050/index/product_24.jpg','礼品',1);
insert into product_index3 values(25,3,'重阳节送长辈','山进莫扎特复古实木迷你音箱/收音机+蓝牙音箱·原创艺术音箱 享受听觉盛宴',499,599,'50','http://127.0.0.1:9050/index/product_25.jpg','礼品',1);
insert into product_index3 values(26,3,'畅销爆款','宝石旋转木马/蓝·音乐盒畅销款 送女友表白最佳礼物',158,262,'1.7万','http://127.0.0.1:9050/index/product_26.jpg','礼品',1);
-- 用户列表数据
insert into hua_user values(1,13458527306,12345678,'1109260651@qq.com');
-- 商品详情页轮播图
insert into details_banner value(1,'http://127.0.0.1:9050/details_banner/pro_1.1.jpg','http://127.0.0.1:9050/details_banner/pro_1.2.jpg','http://127.0.0.1:9050/details_banner/pro_1.3.jpg','http://127.0.0.1:9050/details_banner/pro_1.4.jpg');
insert into details_banner value(2,'http://127.0.0.1:9050/details_banner/pro_2.1.jpg','http://127.0.0.1:9050/details_banner/pro_2.2.jpg','http://127.0.0.1:9050/details_banner/pro_2.3.jpg','http://127.0.0.1:9050/details_banner/pro_2.4.jpg');
insert into details_banner value(3,'http://127.0.0.1:9050/details_banner/pro_3.1.jpg','http://127.0.0.1:9050/details_banner/pro_3.2.jpg','http://127.0.0.1:9050/details_banner/pro_3.3.jpg','http://127.0.0.1:9050/details_banner/pro_3.4.jpg');
insert into details_banner value(4,'http://127.0.0.1:9050/details_banner/pro_4.1.jpg','http://127.0.0.1:9050/details_banner/pro_4.2.jpg','http://127.0.0.1:9050/details_banner/pro_4.3.jpg','http://127.0.0.1:9050/details_banner/pro_4.4.jpg');
insert into details_banner value(5,'http://127.0.0.1:9050/details_banner/pro_5.1.jpg','http://127.0.0.1:9050/details_banner/pro_5.2.jpg','http://127.0.0.1:9050/details_banner/pro_5.3.jpg','http://127.0.0.1:9050/details_banner/pro_5.4.jpg');
insert into details_banner value(6,'http://127.0.0.1:9050/details_banner/pro_6.1.jpg','http://127.0.0.1:9050/details_banner/pro_6.2.jpg','http://127.0.0.1:9050/details_banner/pro_6.3.jpg','http://127.0.0.1:9050/details_banner/pro_6.4.jpg');
insert into details_banner value(7,'http://127.0.0.1:9050/details_banner/pro_7.1.jpg','http://127.0.0.1:9050/details_banner/pro_7.2.jpg','http://127.0.0.1:9050/details_banner/pro_7.3.jpg','http://127.0.0.1:9050/details_banner/pro_7.4.jpg');
insert into details_banner value(8,'http://127.0.0.1:9050/details_banner/pro_8.1.jpg','http://127.0.0.1:9050/details_banner/pro_8.2.jpg','http://127.0.0.1:9050/details_banner/pro_8.3.jpg','http://127.0.0.1:9050/details_banner/pro_8.4.jpg');
insert into details_banner value(9,'http://127.0.0.1:9050/details_banner/pro_9.1.jpg','http://127.0.0.1:9050/details_banner/pro_9.2.jpg','http://127.0.0.1:9050/details_banner/pro_9.3.jpg','http://127.0.0.1:9050/details_banner/pro_9.4.jpg');
insert into details_banner value(10,'http://127.0.0.1:9050/details_banner/pro_10.1.jpg','http://127.0.0.1:9050/details_banner/pro_10.2.jpg','http://127.0.0.1:9050/details_banner/pro_10.3.jpg','http://127.0.0.1:9050/details_banner/pro_10.4.jpg');
insert into details_banner value(11,'http://127.0.0.1:9050/details_banner/pro_11.1.jpg','http://127.0.0.1:9050/details_banner/pro_11.2.jpg','http://127.0.0.1:9050/details_banner/pro_11.3.jpg','http://127.0.0.1:9050/details_banner/pro_11.4.jpg');
insert into details_banner value(12,'http://127.0.0.1:9050/details_banner/pro_12.1.jpg','http://127.0.0.1:9050/details_banner/pro_12.2.jpg','http://127.0.0.1:9050/details_banner/pro_12.3.jpg','http://127.0.0.1:9050/details_banner/pro_12.4.jpg');
insert into details_banner value(13,'http://127.0.0.1:9050/details_banner/pro_13.1.jpg','http://127.0.0.1:9050/details_banner/pro_13.2.jpg','http://127.0.0.1:9050/details_banner/pro_13.3.jpg','http://127.0.0.1:9050/details_banner/pro_13.4.jpg');
insert into details_banner value(14,'http://127.0.0.1:9050/details_banner/pro_14.1.jpg','http://127.0.0.1:9050/details_banner/pro_14.2.jpg','http://127.0.0.1:9050/details_banner/pro_14.3.jpg','http://127.0.0.1:9050/details_banner/pro_14.4.jpg');

-- 商品详情页列表数据
insert into hua_details values(1,'你的轻柔像阵微风，让我从容不迫，想让你知道，我对你始终一往情深。','高档礼盒装鲜花:19枝红玫瑰，勿忘我0.1扎','牛皮纸和深咖啡色条纹纸，银色缎带花结，魔力铁山灰包装盒');
insert into hua_details values(2,'人间蹉跎，你是唯一值得','卡罗拉红玫瑰11枝、白色满天星3枝、尤加利10枝','红/金色鎏金纸5张、白色雪梨纸2张、酒红色罗纹烫金丝带2米');
insert into hua_details values(3,'下雨的时候，给她撑一把雨伞；寒冷的时候，给她一个温暖的臂弯；天黑了，永远有一盏灯为她点亮；晨起时，给她一缕温暖的阳光。爱她，就送她一束99枝的玫瑰花！','99枝红玫瑰','黑色雪梨纸，黑色条纹纸，玻璃纸卷，酒红色缎带花结');
insert into hua_details values(4,'喜欢像是一阵风，而爱你是细水长流','11枝香槟玫瑰，多头白百合2枝，栀子叶8枝','深浅绿双面人造纸2张，米白色缎带1.5米	');
insert into hua_details values(5,'青春有你，才温柔又闪光','韩式花束系列精选：苏醒玫瑰16枝、3头或以上白色洋桔梗5枝、尤加利10枝、浅紫色紫罗兰5枝（紫罗兰花期为12-4月，其他月份用浅紫色金鱼草/浅紫色桔梗/浅紫色风铃花等相似线状花材替代）、浅蓝绣球1枝、小菊4枝','浅紫/香芋紫人造纸7张、白色雪梨纸2张、灰蓝色罗纹烫金丝带2米');
insert into hua_details values(6,'只想和你忘掉一切烦恼，尽情沉醉在最浪漫的气氛中。','33枝红玫瑰，石竹梅20枝','黑色条纹纸，红色缎带花结');
insert into hua_details values(7,'我喜欢的样子你都有','韩式花束系列：粉佳人玫瑰16枝、3头或以上白色洋桔梗5枝、3头或以上粉色洋桔梗5枝、尤加利10枝、浅紫色小菊3枝、深粉色/浅粉色绣球1枝','蓝色人造纸8张、白色雪梨纸2张、粉色罗纹烫金丝带1.5米');
insert into hua_details values(8,'以热烈主题的红玫瑰及红色包装，搭配象征白色无暇的桔梗为设计主题，打造全新韩式系列。将这一簇美景包裹在一片雪白中，一条满载希望的丝带扎紧了无限的惊喜，只为将全世界的风景奉献于你怀里','韩式花束系列：卡罗拉玫瑰11枝、3头或以上白底粉边洋桔梗5枝（如白底粉边桔梗缺货，可用白色桔梗代替）、大叶尤加利10枝、4枝红豆（红豆属于季节性花材，如缺货用相思梅等类似花材代替）','红/金色鎏金纸5张、透明雾面纸3张、酒红色罗纹烫金丝带2米');
insert into hua_details values(9,'花开无声，静默温情','韩式系列花篮精选：苏醒玫瑰13枝，蓝紫色绣球1枝，香槟洋桔梗5枝，粉洋桔梗3枝，尤加利叶5枝','手工花篮');
insert into hua_details values(10,'家是什么?有人说家是倦鸟归来的巢，家是小船避风的港......有爱有家，幸福万年长。','红色康乃馨66枝，搭配白边紫色多头康乃馨15枝，栀子叶2扎','蓝灰色绝色纸2张，墨绿色条纹纸2张，玻璃纸1.5米，白绿粗条纹罗文带1.5米');
insert into hua_details values(11,'以秋色和暖阳为设计主题，打造全新韩式系列，在凛冽冬日，你的爱就像一束阳光，照进了我的心中！','韩式花束系列：向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝（腊梅花期为11-4月初，其他季节用跳舞兰或其他黄色线状花材代替）','姜黄色双面牛皮纸8张、白色雪梨纸1大张、浅粉色罗纹玫瑰金丝带2米');
insert into hua_details values(12,'我想在阳光下满身花香，我想在阳光下沐浴清新，我想在清新里感受每一天的好时光..','粉色康乃馨11枝，粉色多头香水百合2枝，栀子叶10枝','白色雪梨纸，米白色平面纸，粉色吊花压纹纸 银灰色缎带');
insert into hua_details values(13,'你如璀璨的星河，于苍穹之中，焕发光芒，闪耀着我的人生。','香槟玫瑰9枝、蓝绣球1枝、向日葵3枝、白色洋桔梗5枝、大叶尤加利5枝！','蓝色人造纸5张、褐绿色OPP膜书法纸3张、香槟缎带1.5米、灰蓝色罗纹烫金丝带1.5米');
insert into hua_details values(14,'没你疼爱我怎么生活，没你抚养我怎能长大，你给了我青春的年华，自己却满头白发，不负青春年华，是对你最好的报答！','紫红色康乃馨9枝，粉色多头康乃馨10枝','白色雪梨纸，香芋紫人造纸，粉色opp雾面纸，白蓝罗纹带花结');

