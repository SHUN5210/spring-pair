--アカウント情報
INSERT INTO users(email, password) VALUES('shuijinhan@chahan.jp', 'pairchahan');
INSERT INTO users(email, password) VALUES('masterChahan', 'himitu');
INSERT INTO users(email, password) VALUES('m', 'm');

-- カテゴリーテーブルデータ
INSERT INTO categories(name) VALUES('肉');
INSERT INTO categories(name) VALUES('魚介');
INSERT INTO categories(name) VALUES('野菜');
INSERT INTO categories(name) VALUES('調味料');

-- 保管テーブルデータ
INSERT INTO fridge(name) VALUES('冷蔵庫');
INSERT INTO fridge(name) VALUES('冷凍庫');
INSERT INTO fridge(name) VALUES('野菜室');
INSERT INTO fridge(name) VALUES('常温');

--食材
INSERT INTO items_list(category_id,name) VALUES(1,'豚バラ');
INSERT INTO items_list(category_id,name) VALUES(1,'ひき肉');
INSERT INTO items_list(category_id,name) VALUES(1,'ベーコン');
INSERT INTO items_list(category_id,name) VALUES(1,'ハム');
INSERT INTO items_list(category_id,name) VALUES(1,'ささみ');
INSERT INTO items_list(category_id,name) VALUES(1,'ソーセージ');
INSERT INTO items_list(category_id,name) VALUES(1,'とんかつ');
INSERT INTO items_list(category_id,name) VALUES(1,'豚こま切れ肉');

INSERT INTO items_list(category_id,name) VALUES(2,'明太子');
INSERT INTO items_list(category_id,name) VALUES(2,'カニ');
INSERT INTO items_list(category_id,name) VALUES(2,'エビ');
INSERT INTO items_list(category_id,name) VALUES(2,'鮭');
INSERT INTO items_list(category_id,name) VALUES(2,'あさり');
INSERT INTO items_list(category_id,name) VALUES(2,'ホタテ');
INSERT INTO items_list(category_id,name) VALUES(2,'じゃこ');
INSERT INTO items_list(category_id,name) VALUES(2,'タコ');
INSERT INTO items_list(category_id,name) VALUES(2,'うなぎ');
INSERT INTO items_list(category_id,name) VALUES(2,'ちくわ');
INSERT INTO items_list(category_id,name) VALUES(2,'ツナ');
INSERT INTO items_list(category_id,name) VALUES(2,'さつま揚げ');
INSERT INTO items_list(category_id,name) VALUES(2,'アンチョビ');

INSERT INTO items_list(category_id,name) VALUES(3,'キムチ');
INSERT INTO items_list(category_id,name) VALUES(3,'納豆');
INSERT INTO items_list(category_id,name) VALUES(3,'レタス');
INSERT INTO items_list(category_id,name) VALUES(3,'ネギ');
INSERT INTO items_list(category_id,name) VALUES(3,'しいたけ');
INSERT INTO items_list(category_id,name) VALUES(3,'玉ねぎ');
INSERT INTO items_list(category_id,name) VALUES(3,'高菜');
INSERT INTO items_list(category_id,name) VALUES(3,'たくあん');
INSERT INTO items_list(category_id,name) VALUES(3,'コーン');
INSERT INTO items_list(category_id,name) VALUES(3,'たけのこ');
INSERT INTO items_list(category_id,name) VALUES(3,'ピーマン');
INSERT INTO items_list(category_id,name) VALUES(3,'ニラ');
INSERT INTO items_list(category_id,name) VALUES(3,'大葉');
INSERT INTO items_list(category_id,name) VALUES(3,'なす');
INSERT INTO items_list(category_id,name) VALUES(3,'トマト');
INSERT INTO items_list(category_id,name) VALUES(3,'しめじ');
INSERT INTO items_list(category_id,name) VALUES(3,'えのき');
INSERT INTO items_list(category_id,name) VALUES(3,'にんじん');
INSERT INTO items_list(category_id,name) VALUES(3,'マッシュルーム');
INSERT INTO items_list(category_id,name) VALUES(3,'小松菜');
INSERT INTO items_list(category_id,name) VALUES(3,'キャベツ');
INSERT INTO items_list(category_id,name) VALUES(3,'オクラ');
INSERT INTO items_list(category_id,name) VALUES(3,'カイワレ大根');
INSERT INTO items_list(category_id,name) VALUES(3,'まいたけ');
INSERT INTO items_list(category_id,name) VALUES(3,'ホウレンソウ');
INSERT INTO items_list(category_id,name) VALUES(3,'ゴボウ');
INSERT INTO items_list(category_id,name) VALUES(3,'カリフラワー');
INSERT INTO items_list(category_id,name) VALUES(3,'枝豆');
INSERT INTO items_list(category_id,name) VALUES(3,'厚揚げ');
INSERT INTO items_list(category_id,name) VALUES(3,'もやし');

INSERT INTO items_list(category_id,name) VALUES(4,'にんにく');
INSERT INTO items_list(category_id,name) VALUES(4,'生姜');
INSERT INTO items_list(category_id,name) VALUES(4,'バター');
INSERT INTO items_list(category_id,name) VALUES(4,'チーズ');
INSERT INTO items_list(category_id,name) VALUES(4,'マヨネーズ');
INSERT INTO items_list(category_id,name) VALUES(4,'梅肉');
INSERT INTO items_list(category_id,name) VALUES(4,'塩昆布');
INSERT INTO items_list(category_id,name) VALUES(4,'みそ');
INSERT INTO items_list(category_id,name) VALUES(4,'カレー粉');
INSERT INTO items_list(category_id,name) VALUES(2,'イカ');

--チャーハン
INSERT INTO chahan(menu,name1) VALUES('たくあんチャーハン','たくあん');
INSERT INTO chahan(menu,name1) VALUES('なすチャーハン','なす');
INSERT INTO chahan(menu,name1) VALUES('ガーリックチャーハン','にんにく');
INSERT INTO chahan(menu,name1) VALUES('生姜チャーハン','生姜');
INSERT INTO chahan(menu,name1) VALUES('レタスチャーハン','レタス');
INSERT INTO chahan(menu,name1) VALUES('まいたけチャーハン','まいたけ');
INSERT INTO chahan(menu,name1) VALUES('カニチャーハン','カニ');
INSERT INTO chahan(menu,name1) VALUES('とんかつチャーハン','とんかつ');
INSERT INTO chahan(menu,name1,name2) VALUES('マッシュルームチャーハン','マッシュルーム','バター');
INSERT INTO chahan(menu,name1,name2) VALUES('うなぎにんにくチャーハン','うなぎ','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('納豆チャーハン','納豆','ネギ');
INSERT INTO chahan(menu,name1,name2) VALUES('キムチチャーハン','キムチ','豚バラ');
INSERT INTO chahan(menu,name1,name2) VALUES('キムチニラチャーハン','キムチ','ニラ');
INSERT INTO chahan(menu,name1,name2) VALUES('豚こまチャーハン','ネギ','豚バラ');
INSERT INTO chahan(menu,name1,name2) VALUES('タコのガーリックチャーハン','タコ','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('あさりの大葉チャーハン','あさり','大葉');
INSERT INTO chahan(menu,name1,name2) VALUES('梅シソチャーハン','梅肉','大葉');
INSERT INTO chahan(menu,name1,name2) VALUES('牛ひき肉のガーリックチャーハン','ひき肉','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('豚とコーンのチャーハン','ひき肉','コーン');
INSERT INTO chahan(menu,name1,name2) VALUES('明太ガーリックチャーハン','明太子','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('明太バターチャーハン','明太子','バター');
INSERT INTO chahan(menu,name1,name2) VALUES('マッシュルームチャーハン','マッシュルーム','バター');
INSERT INTO chahan(menu,name1,name2) VALUES('じゃこチャーハン','じゃこ','ネギ');
INSERT INTO chahan(menu,name1,name2) VALUES('じゃことニンニクのカリカリチャーハン','じゃこ','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('鮭とネギのチャーハン','鮭','ネギ');
INSERT INTO chahan(menu,name1,name2) VALUES('麦ごはんのシンプルチャーハン','じゃこ','高菜');
INSERT INTO chahan(menu,name1,name2) VALUES('イカわたガーリックチャーハン','イカ','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('中華おこわ風チャーハン','たけのこ','にんじん');
INSERT INTO chahan(menu,name1,name2) VALUES('ハムとピーマンのチャーハン','ハム','ピーマン');
INSERT INTO chahan(menu,name1,name2) VALUES('キャベツとひき肉のチャーハン','キャベツ','ひき肉');
INSERT INTO chahan(menu,name1,name2) VALUES('お好み焼き風チャーハン','キャベツ','ちくわ');
INSERT INTO chahan(menu,name1,name2) VALUES('ポパイチャーハン','ほうれん草','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('ゴボウとソーセージのチャーハン','コボウ','ソーセージ');
INSERT INTO chahan(menu,name1,name2) VALUES('オイスターソース風味の海鮮そばめし','タコ','イカ');
INSERT INTO chahan(menu,name1,name2) VALUES('エビのガーリックピラフ','エビ','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('豚キムチチャーハン','豚バラ','キムチ');
INSERT INTO chahan(menu,name1,name2) VALUES('豚バラキャベツチャーハン','豚バラ','キャベツ');
INSERT INTO chahan(menu,name1,name2) VALUES('エスニック風チャーハン','ベーコン','玉ねぎ');
INSERT INTO chahan(menu,name1,name2) VALUES('ホタテチャーハン','ホタテ','カイワレ大根');
INSERT INTO chahan(menu,name1,name2) VALUES('ナスとトマトのピラフ','ナス','トマト');
INSERT INTO chahan(menu,name1,name2) VALUES('イカとアンチョビのイタリアンチャーハン','イカ','アンチョビ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('五目チャーハン','豚バラ','ネギ','ピーマン');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('五目チャーハン２','ささみ','ハム','しいたけ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('みそ味チャーハン','みそ','玉ねぎ','ひき肉');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('タコライス風チャーハン','レタス','チーズ','トマト');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('きのこチャーハン','しいたけ','しめじ','えのき');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('鮭のバター醤油チャーハン','鮭','小松菜','バター');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('キムチーズチャーハン','キムチ','チーズ','ニラ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('コーンキムチチャーハン','キムチ','コーン','豚バラ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('明太チャーハン','明太子','オクラ','しいたけ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('塩昆布チャーハン','塩昆布','ひき肉','ニラ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('にんじんのコショウ風味チャーハン','ベーコン','にんじん','玉ねぎ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('鶏肉と桜えびのチャーハン','エビ','ひき肉','カイワレ大根');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('カレーチャーハン','しいたけ','たけのこ','カレー粉');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('鮭と小松菜の塩昆布マヨチャーハン','鮭','小松菜','塩昆布');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('ナッツ入りカレーチャーハン','トマト','ソーセージ','カレー粉');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('カリフラワーとツナのカレーチャーハン','カリフラワー','ツナ','カレー粉');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('枝豆入り玄米チャーハン','枝豆','ネギ','にんじん');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('ツナマヨチャーハン','ツナ','マヨネーズ','しめじ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('さつま揚げの梅風味チャーハン','さつま揚げ','梅肉','レタス');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('もやしのアジアンチャーハン','もやし','豚こま切れ肉','厚揚げ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('イカの塩辛チャーハン','イカ','エビ','玉ねぎ');

--チャーハン
INSERT INTO element(chahan_id,name) VALUES(1,29);
INSERT INTO element(chahan_id,name) VALUES(2,35);
INSERT INTO element(chahan_id,name) VALUES(3,52);
INSERT INTO element(chahan_id,name) VALUES(4,53);
INSERT INTO element(chahan_id,name) VALUES(5,24);
INSERT INTO element(chahan_id,name) VALUES(6,45);
INSERT INTO element(chahan_id,name) VALUES(7,10);
INSERT INTO element(chahan_id,name) VALUES(8,7);

INSERT INTO element(chahan_id,name) VALUES(9,40);
INSERT INTO element(chahan_id,name) VALUES(9,54);

INSERT INTO element(chahan_id,name) VALUES(10,17);
INSERT INTO element(chahan_id,name) VALUES(10,52);

INSERT INTO element(chahan_id,name) VALUES(11,23);
INSERT INTO element(chahan_id,name) VALUES(11,25);

INSERT INTO element(chahan_id,name) VALUES(12,22);
INSERT INTO element(chahan_id,name) VALUES(12,1);

INSERT INTO element(chahan_id,name) VALUES(13,22);
INSERT INTO element(chahan_id,name) VALUES(13,33);

INSERT INTO element(chahan_id,name) VALUES(14,25);
INSERT INTO element(chahan_id,name) VALUES(14,1);

INSERT INTO element(chahan_id,name) VALUES(15,16);
INSERT INTO element(chahan_id,name) VALUES(15,52);

INSERT INTO element(chahan_id,name) VALUES(16,13);
INSERT INTO element(chahan_id,name) VALUES(16,34);

INSERT INTO element(chahan_id,name) VALUES(17,57);
INSERT INTO element(chahan_id,name) VALUES(17,34);

INSERT INTO element(chahan_id,name) VALUES(18,2);
INSERT INTO element(chahan_id,name) VALUES(18,52);

INSERT INTO element(chahan_id,name) VALUES(19,2);
INSERT INTO element(chahan_id,name) VALUES(19,30);

INSERT INTO element(chahan_id,name) VALUES(20,9);
INSERT INTO element(chahan_id,name) VALUES(20,52);

INSERT INTO element(chahan_id,name) VALUES(21,9);
INSERT INTO element(chahan_id,name) VALUES(21,54);

INSERT INTO element(chahan_id,name) VALUES(22,40);
INSERT INTO element(chahan_id,name) VALUES(22,54);

INSERT INTO element(chahan_id,name) VALUES(23,15);
INSERT INTO element(chahan_id,name) VALUES(23,25);

INSERT INTO element(chahan_id,name) VALUES(24,15);
INSERT INTO element(chahan_id,name) VALUES(24,52);

INSERT INTO element(chahan_id,name) VALUES(25,12);
INSERT INTO element(chahan_id,name) VALUES(25,25);

INSERT INTO element(chahan_id,name) VALUES(26,15);
INSERT INTO element(chahan_id,name) VALUES(26,28);

INSERT INTO element(chahan_id,name) VALUES(27,61);
INSERT INTO element(chahan_id,name) VALUES(27,52);

INSERT INTO element(chahan_id,name) VALUES(28,31);
INSERT INTO element(chahan_id,name) VALUES(28,39);

INSERT INTO element(chahan_id,name) VALUES(29,4);
INSERT INTO element(chahan_id,name) VALUES(29,32);

INSERT INTO element(chahan_id,name) VALUES(30,42);
INSERT INTO element(chahan_id,name) VALUES(30,2);

INSERT INTO element(chahan_id,name) VALUES(31,42);
INSERT INTO element(chahan_id,name) VALUES(31,18);

INSERT INTO element(chahan_id,name) VALUES(32,46);
INSERT INTO element(chahan_id,name) VALUES(32,52);

INSERT INTO element(chahan_id,name) VALUES(33,47);
INSERT INTO element(chahan_id,name) VALUES(33,6);

INSERT INTO element(chahan_id,name) VALUES(34,16);
INSERT INTO element(chahan_id,name) VALUES(34,61);

INSERT INTO element(chahan_id,name) VALUES(35,11);
INSERT INTO element(chahan_id,name) VALUES(35,52);

INSERT INTO element(chahan_id,name) VALUES(36,1);
INSERT INTO element(chahan_id,name) VALUES(36,22);

INSERT INTO element(chahan_id,name) VALUES(37,1);
INSERT INTO element(chahan_id,name) VALUES(37,42);

INSERT INTO element(chahan_id,name) VALUES(38,3);
INSERT INTO element(chahan_id,name) VALUES(38,27);

INSERT INTO element(chahan_id,name) VALUES(39,14);
INSERT INTO element(chahan_id,name) VALUES(39,44);

INSERT INTO element(chahan_id,name) VALUES(40,35);
INSERT INTO element(chahan_id,name) VALUES(40,36);

INSERT INTO element(chahan_id,name) VALUES(41,61);
INSERT INTO element(chahan_id,name) VALUES(41,21);

INSERT INTO element(chahan_id,name) VALUES(42,1);
INSERT INTO element(chahan_id,name) VALUES(42,25);
INSERT INTO element(chahan_id,name) VALUES(42,32);

INSERT INTO element(chahan_id,name) VALUES(43,5);
INSERT INTO element(chahan_id,name) VALUES(43,4);
INSERT INTO element(chahan_id,name) VALUES(43,26);

INSERT INTO element(chahan_id,name) VALUES(44,59);
INSERT INTO element(chahan_id,name) VALUES(44,27);
INSERT INTO element(chahan_id,name) VALUES(44,2);

INSERT INTO element(chahan_id,name) VALUES(45,24);
INSERT INTO element(chahan_id,name) VALUES(45,55);
INSERT INTO element(chahan_id,name) VALUES(45,36);

INSERT INTO element(chahan_id,name) VALUES(46,26);
INSERT INTO element(chahan_id,name) VALUES(46,37);
INSERT INTO element(chahan_id,name) VALUES(46,38);

INSERT INTO element(chahan_id,name) VALUES(47,12);
INSERT INTO element(chahan_id,name) VALUES(47,41);
INSERT INTO element(chahan_id,name) VALUES(47,54);

INSERT INTO element(chahan_id,name) VALUES(48,22);
INSERT INTO element(chahan_id,name) VALUES(48,55);
INSERT INTO element(chahan_id,name) VALUES(48,33);

INSERT INTO element(chahan_id,name) VALUES(49,22);
INSERT INTO element(chahan_id,name) VALUES(49,30);
INSERT INTO element(chahan_id,name) VALUES(49,1);

INSERT INTO element(chahan_id,name) VALUES(50,9);
INSERT INTO element(chahan_id,name) VALUES(50,43);
INSERT INTO element(chahan_id,name) VALUES(50,26);

INSERT INTO element(chahan_id,name) VALUES(51,58);
INSERT INTO element(chahan_id,name) VALUES(51,2);
INSERT INTO element(chahan_id,name) VALUES(51,33);

INSERT INTO element(chahan_id,name) VALUES(52,3);
INSERT INTO element(chahan_id,name) VALUES(52,39);
INSERT INTO element(chahan_id,name) VALUES(52,27);

INSERT INTO element(chahan_id,name) VALUES(53,11);
INSERT INTO element(chahan_id,name) VALUES(53,2);
INSERT INTO element(chahan_id,name) VALUES(53,44);

INSERT INTO element(chahan_id,name) VALUES(54,60);
INSERT INTO element(chahan_id,name) VALUES(54,31);
INSERT INTO element(chahan_id,name) VALUES(54,26);

INSERT INTO element(chahan_id,name) VALUES(55,12);
INSERT INTO element(chahan_id,name) VALUES(55,41);
INSERT INTO element(chahan_id,name) VALUES(55,58);

INSERT INTO element(chahan_id,name) VALUES(56,60);
INSERT INTO element(chahan_id,name) VALUES(56,36);
INSERT INTO element(chahan_id,name) VALUES(56,6);

INSERT INTO element(chahan_id,name) VALUES(57,60);
INSERT INTO element(chahan_id,name) VALUES(57,19);
INSERT INTO element(chahan_id,name) VALUES(57,48);

INSERT INTO element(chahan_id,name) VALUES(58,49);
INSERT INTO element(chahan_id,name) VALUES(58,25);
INSERT INTO element(chahan_id,name) VALUES(58,39);

INSERT INTO element(chahan_id,name) VALUES(59,19);
INSERT INTO element(chahan_id,name) VALUES(59,37);
INSERT INTO element(chahan_id,name) VALUES(59,56);

INSERT INTO element(chahan_id,name) VALUES(60,20);
INSERT INTO element(chahan_id,name) VALUES(60,57);
INSERT INTO element(chahan_id,name) VALUES(60,24);

INSERT INTO element(chahan_id,name) VALUES(61,51);
INSERT INTO element(chahan_id,name) VALUES(61,50);
INSERT INTO element(chahan_id,name) VALUES(61,8);

INSERT INTO element(chahan_id,name) VALUES(62,61);
INSERT INTO element(chahan_id,name) VALUES(62,11);
INSERT INTO element(chahan_id,name) VALUES(62,27);

--items

INSERT INTO items(user_id,category_id,name,item_id,today,care,price,fridge) VALUES(1,2,'ツナ',19,'2023-03-01','2023-06-28',220,4);
INSERT INTO items(user_id,category_id,name,item_id,today,care,price,fridge) VALUES(1,2,'ツナ',19,'2023-03-20','2023-12-28',300,4);
INSERT INTO items(user_id,category_id,name,item_id,today,care,price,fridge) VALUES(1,3,'たくあん',29,'2023-04-11','2023-07-03',600,3);
INSERT INTO items(user_id,category_id,name,item_id,today,care,price,fridge) VALUES(1,3,'たくあん',29,'2023-04-21','2023-08-22',1000,2);
INSERT INTO items(user_id,category_id,name,item_id,today,care,price,fridge) VALUES(1,1,'豚バラ',1,'2023-05-15','2023-06-28',500,2);
INSERT INTO items(user_id,category_id,name,item_id,today,care,price,fridge) VALUES(1,4,'にんにく',52,'2023-05-16','2023-07-12',500,4);
INSERT INTO items(user_id,category_id,name,item_id,today,care,price,fridge) VALUES(1,3,'キムチ',22,'2023-06-01','2023-08-30',500,1);

--グラフ
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'ささみ','2022-01-06',190);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'もやし','2022-01-06',70);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'さつま揚げ','2022-01-06',300);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'ささみ','2023-05-06',190);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'もやし','2023-05-06',70);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'さつま揚げ','2023-05-06',300);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'ツナ','2023-05-11',200);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'ハム','2023-05-11',300);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'ソーセージ','2023-05-11',450);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'ニラ','2023-05-17',200);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'みそ','2023-05-17',250);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'カレー粉','2023-05-17',450);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'なす','2023-05-23',150);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'トマト','2023-05-23',180);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'にんじん','2023-05-23',200);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'にんにく','2023-05-26',230);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'バター','2023-05-26',250);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'チーズ','2023-05-26',200);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'キムチ','2023-05-29',210);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'納豆','2023-05-29',80);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'鮭','2023-05-29',330);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'まいたけ','2023-06-03',230);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'ゴボウ','2023-06-03',200);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'ちくわ','2023-06-03',160);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'しめじ','2023-06-08',180);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'えのき','2023-06-08',170);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'しいたけ','2023-06-10',190);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'ベーコン','2023-06-10',210);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'たくあん','2023-06-19',200);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'とんかつ','2023-06-19',320);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'エビ','2023-06-19',410);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'玉ねぎ','2023-06-22',120);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'豚バラ','2023-06-22',370);

INSERT INTO graph1(user_id,name,today,price) VALUES(1,'たけのこ','2023-06-27',220);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'ホウレンソウ','2023-06-27',200);
INSERT INTO graph1(user_id,name,today,price) VALUES(1,'じゃこ','2023-06-27',250);

INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2022-01-06',560);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-05-06',560);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-05-11',950);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-05-17',900);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-05-23',530);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-05-26',680);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-05-29',620);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-06-03',590);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-06-08',350);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-06-10',300);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-06-19',930);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-06-22',490);
INSERT INTO dateprice1(user_id,today,price) VALUES(1,'2023-06-27',670);
