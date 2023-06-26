-- カテゴリーテーブルデータ
INSERT INTO categories(name) VALUES('肉');
INSERT INTO categories(name) VALUES('魚介');
INSERT INTO categories(name) VALUES('野菜');
INSERT INTO categories(name) VALUES('調味料');

--アカウント情報
INSERT INTO users(email, password) VALUES('shuijinhan@chahan.jp', 'pairchahan');

--食材
INSERT INTO itemsList(category_id,name) VALUES(1,'豚バラ');
INSERT INTO itemsList(category_id,name) VALUES(1,'肩ロース');
INSERT INTO itemsList(category_id,name) VALUES(1,'ひき肉');
INSERT INTO itemsList(category_id,name) VALUES(1,'ベーコン');
INSERT INTO itemsList(category_id,name) VALUES(1,'チャーシュー');
INSERT INTO itemsList(category_id,name) VALUES(1,'ハム');
INSERT INTO itemsList(category_id,name) VALUES(1,'ささみ');

INSERT INTO itemsList(category_id,name) VALUES(2,'明太子');
INSERT INTO itemsList(category_id,name) VALUES(2,'カニ');
INSERT INTO itemsList(category_id,name) VALUES(2,'エビ');
INSERT INTO itemsList(category_id,name) VALUES(2,'鮭');
INSERT INTO itemsList(category_id,name) VALUES(2,'あさり');
INSERT INTO itemsList(category_id,name) VALUES(2,'ホタテ');
INSERT INTO itemsList(category_id,name) VALUES(2,'じゃこ');
INSERT INTO itemsList(category_id,name) VALUES(2,'タコ');
INSERT INTO itemsList(category_id,name) VALUES(2,'イカゲソ');
INSERT INTO itemsList(category_id,name) VALUES(2,'うなぎ');

INSERT INTO itemsList(category_id,name) VALUES(3,'キムチ');
INSERT INTO itemsList(category_id,name) VALUES(3,'納豆');
INSERT INTO itemsList(category_id,name) VALUES(3,'レタス');
INSERT INTO itemsList(category_id,name) VALUES(3,'ネギ');
INSERT INTO itemsList(category_id,name) VALUES(3,'しいたけ');
INSERT INTO itemsList(category_id,name) VALUES(3,'玉ねぎ');
INSERT INTO itemsList(category_id,name) VALUES(3,'高菜');
INSERT INTO itemsList(category_id,name) VALUES(3,'たくあん');
INSERT INTO itemsList(category_id,name) VALUES(3,'コーン');
INSERT INTO itemsList(category_id,name) VALUES(3,'たけのこ');
INSERT INTO itemsList(category_id,name) VALUES(3,'ピーマン');
INSERT INTO itemsList(category_id,name) VALUES(3,'ニラ');
INSERT INTO itemsList(category_id,name) VALUES(3,'大葉');
INSERT INTO itemsList(category_id,name) VALUES(3,'なす');
INSERT INTO itemsList(category_id,name) VALUES(3,'トマト');
INSERT INTO itemsList(category_id,name) VALUES(3,'しめじ');
INSERT INTO itemsList(category_id,name) VALUES(3,'えのき');
INSERT INTO itemsList(category_id,name) VALUES(3,'にんじん');
INSERT INTO itemsList(category_id,name) VALUES(3,'マッシュルーム');
INSERT INTO itemsList(category_id,name) VALUES(3,'小松菜');
INSERT INTO itemsList(category_id,name) VALUES(3,'キャベツ');
INSERT INTO itemsList(category_id,name) VALUES(3,'オクラ');

INSERT INTO itemsList(category_id,name) VALUES(4,'にんにく');
INSERT INTO itemsList(category_id,name) VALUES(4,'生姜');
INSERT INTO itemsList(category_id,name) VALUES(4,'わさび');
INSERT INTO itemsList(category_id,name) VALUES(4,'バター');
INSERT INTO itemsList(category_id,name) VALUES(4,'チーズ');
INSERT INTO itemsList(category_id,name) VALUES(4,'マヨネーズ');
INSERT INTO itemsList(category_id,name) VALUES(4,'梅肉');
INSERT INTO itemsList(category_id,name) VALUES(4,'塩昆布');
INSERT INTO itemsList(category_id,name) VALUES(4,'みそ');

--チャーハン
INSERT INTO chahan(menu,name1) VALUES('たくあんチャーハン','たくあん');
INSERT INTO chahan(menu,name1) VALUES('なすチャーハン','なす');
INSERT INTO chahan(menu,name1) VALUES('ガーリックチャーハン','にんにく');
INSERT INTO chahan(menu,name1) VALUES('生姜チャーハン','生姜');
INSERT INTO chahan(menu,name1) VALUES('レタスチャーハン','レタス');
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
INSERT INTO chahan(menu,name1,name2) VALUES('麦ごはんのシンプルチャーハン','じゃこ','高菜');
INSERT INTO chahan(menu,name1,name2) VALUES('イカわたガーリックチャーハン','イカ','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('中華おこわ風チャーハン','たけのこ','にんじん');
INSERT INTO chahan(menu,name1,name2) VALUES('ハムとピーマンのチャーハン','ハム','ピーマン');
INSERT INTO chahan(menu,name1,name2) VALUES('キャベツとひき肉のチャーハン','キャベツ','ひき肉');
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


