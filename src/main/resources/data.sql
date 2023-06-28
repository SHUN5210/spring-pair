--アカウント情報
INSERT INTO users(email, password) VALUES('shuijinhan@chahan.jp', 'pairchahan');

-- カテゴリーテーブルデータ
INSERT INTO categories(name) VALUES('肉');
INSERT INTO categories(name) VALUES('魚介');
INSERT INTO categories(name) VALUES('野菜');
INSERT INTO categories(name) VALUES('調味料');

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
INSERT INTO items_list(category_id,name) VALUES(2,'イカ');

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

--チャーハン
INSERT INTO chahan(menu) VALUES('たくあんチャーハン');
INSERT INTO chahan(menu) VALUES('なすチャーハン');
INSERT INTO chahan(menu) VALUES('ガーリックチャーハン');
INSERT INTO chahan(menu) VALUES('生姜チャーハン');
INSERT INTO chahan(menu) VALUES('レタスチャーハン');
INSERT INTO chahan(menu) VALUES('まいたけチャーハン');
INSERT INTO chahan(menu) VALUES('カニチャーハン');
INSERT INTO chahan(menu) VALUES('とんかつチャーハン');
INSERT INTO chahan(menu) VALUES('マッシュルームチャーハン');
INSERT INTO chahan(menu) VALUES('うなぎにんにくチャーハン');
INSERT INTO chahan(menu) VALUES('納豆チャーハン');
INSERT INTO chahan(menu) VALUES('キムチチャーハン');
INSERT INTO chahan(menu) VALUES('キムチニラチャーハン');
INSERT INTO chahan(menu) VALUES('豚こまチャーハン');
INSERT INTO chahan(menu) VALUES('タコのガーリックチャーハン');
INSERT INTO chahan(menu) VALUES('あさりの大葉チャーハン');
INSERT INTO chahan(menu) VALUES('梅シソチャーハン');
INSERT INTO chahan(menu) VALUES('牛ひき肉のガーリックチャーハン');
INSERT INTO chahan(menu) VALUES('豚とコーンのチャーハン');
INSERT INTO chahan(menu) VALUES('明太ガーリックチャーハン');
INSERT INTO chahan(menu) VALUES('明太バターチャーハン');
INSERT INTO chahan(menu) VALUES('マッシュルームチャーハン');
INSERT INTO chahan(menu) VALUES('じゃこチャーハン');
INSERT INTO chahan(menu) VALUES('じゃことニンニクのカリカリチャーハン');
INSERT INTO chahan(menu) VALUES('鮭とネギのチャーハン');
INSERT INTO chahan(menu) VALUES('麦ごはんのシンプルチャーハン');
INSERT INTO chahan(menu) VALUES('イカわたガーリックチャーハン');
INSERT INTO chahan(menu) VALUES('中華おこわ風チャーハン');
INSERT INTO chahan(menu) VALUES('ハムとピーマンのチャーハン');
INSERT INTO chahan(menu) VALUES('キャベツとひき肉のチャーハン');
INSERT INTO chahan(menu) VALUES('お好み焼き風チャーハン');
INSERT INTO chahan(menu) VALUES('ポパイチャーハン');
INSERT INTO chahan(menu) VALUES('ゴボウとソーセージのチャーハン');
INSERT INTO chahan(menu) VALUES('オイスターソース風味の海鮮そばめし');
INSERT INTO chahan(menu) VALUES('エビのガーリックピラフ');
INSERT INTO chahan(menu) VALUES('豚キムチチャーハン');
INSERT INTO chahan(menu) VALUES('豚バラキャベツチャーハン');
INSERT INTO chahan(menu) VALUES('エスニック風チャーハン');
INSERT INTO chahan(menu) VALUES('ホタテチャーハン');
INSERT INTO chahan(menu) VALUES('ナスとトマトのピラフ');
INSERT INTO chahan(menu) VALUES('イカとアンチョビのイタリアンチャーハン');
INSERT INTO chahan(menu) VALUES('五目チャーハン');
INSERT INTO chahan(menu) VALUES('五目チャーハン２');
INSERT INTO chahan(menu) VALUES('みそ味チャーハン');
INSERT INTO chahan(menu) VALUES('タコライス風チャーハン');
INSERT INTO chahan(menu) VALUES('きのこチャーハン');
INSERT INTO chahan(menu) VALUES('鮭のバター醤油チャーハン');
INSERT INTO chahan(menu) VALUES('キムチーズチャーハン');
INSERT INTO chahan(menu) VALUES('コーンキムチチャーハン');
INSERT INTO chahan(menu) VALUES('明太チャーハン');
INSERT INTO chahan(menu) VALUES('塩昆布チャーハン');
INSERT INTO chahan(menu) VALUES('にんじんのコショウ風味チャーハン');
INSERT INTO chahan(menu) VALUES('鶏肉と桜えびのチャーハン');
INSERT INTO chahan(menu) VALUES('カレーチャーハン');
INSERT INTO chahan(menu) VALUES('鮭と小松菜の塩昆布マヨチャーハン');
INSERT INTO chahan(menu) VALUES('ナッツ入りカレーチャーハン');
INSERT INTO chahan(menu) VALUES('カリフラワーとツナのカレーチャーハン');
INSERT INTO chahan(menu) VALUES('枝豆入り玄米チャーハン');
INSERT INTO chahan(menu) VALUES('ツナマヨチャーハン');
INSERT INTO chahan(menu) VALUES('さつま揚げの梅風味チャーハン');
INSERT INTO chahan(menu) VALUES('もやしのアジアンチャーハン');
INSERT INTO chahan(menu) VALUES('イカの塩辛チャーハン');

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
INSERT INTO items(category_id,name,item_id,today,care,price) VALUES(1,'豚バラ',21,'2023-05-15','2023-06-28',500);
INSERT INTO items(category_id,name,item_id,today,care,price) VALUES(2,'ツナ',22,'2023-03-15','2023-12-28',500);
INSERT INTO items(category_id,name,item_id,today,care,price) VALUES(3,'たくあん',32,'2023-04-10','2023-08-22',500);
INSERT INTO items(category_id,name,item_id,today,care,price) VALUES(3,'キムチ',25,'2023-06-01','2023-08-30',500);
INSERT INTO items(category_id,name,item_id,today,care,price) VALUES(4,'にんにく',61,'2023-05-15','2023-07-12',500);
