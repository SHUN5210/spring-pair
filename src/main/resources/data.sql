-- カテゴリーテーブルデータ
INSERT INTO categories(name) VALUES('肉');
INSERT INTO categories(name) VALUES('魚介');
INSERT INTO categories(name) VALUES('野菜');
INSERT INTO categories(name) VALUES('調味料');

--アカウント情報
INSERT INTO users(email, password) VALUES('shuijinhan@chahan.jp', 'pairchahan');

--食材
INSERT INTO items_list(category_id,name) VALUES(1,'豚バラ');
INSERT INTO items_list(category_id,name) VALUES(1,'肩ロース');
INSERT INTO items_list(category_id,name) VALUES(1,'ひき肉');
INSERT INTO items_list(category_id,name) VALUES(1,'ベーコン');
INSERT INTO items_list(category_id,name) VALUES(1,'チャーシュー');
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
INSERT INTO items_list(category_id,name) VALUES(2,'イカゲソ');
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
INSERT INTO items_list(category_id,name) VALUES(4,'わさび');
INSERT INTO items_list(category_id,name) VALUES(4,'バター');
INSERT INTO items_list(category_id,name) VALUES(4,'チーズ');
INSERT INTO items_list(category_id,name) VALUES(4,'マヨネーズ');
INSERT INTO items_list(category_id,name) VALUES(4,'梅肉');
INSERT INTO items_list(category_id,name) VALUES(4,'塩昆布');
INSERT INTO items_list(category_id,name) VALUES(4,'みそ');
INSERT INTO items_list(category_id,name) VALUES(4,'カレー粉');

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
INSERT INTO chahan(menu,name1,name2) VALUES('ポパイチャーハン','ホウレンソウ','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('ゴボウとソーセージのチャーハン','ゴボウ','ソーセージ');
INSERT INTO chahan(menu,name1,name2) VALUES('オイスターソース風味の海鮮そばめし','タコ','イカ');
INSERT INTO chahan(menu,name1,name2) VALUES('エビのガーリックピラフ','エビ','にんにく');
INSERT INTO chahan(menu,name1,name2) VALUES('豚キムチチャーハン','豚バラ','キムチ');
INSERT INTO chahan(menu,name1,name2) VALUES('豚バラキャベツチャーハン','豚バラ','キャベツ');
INSERT INTO chahan(menu,name1,name2) VALUES('エスニック風チャーハン','ベーコン','玉ねぎ');
INSERT INTO chahan(menu,name1,name2) VALUES('ホタテチャーハン','ホタテ','カイワレ大根');
INSERT INTO chahan(menu,name1,name2) VALUES('ナスとトマトのピラフ','なす','トマト');
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
INSERT INTO chahan(menu,name1,name2,name3) VALUES('カレーチャーハン','カレー粉','たけのこ','しいたけ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('鮭と小松菜の塩昆布マヨチャーハン','鮭','小松菜','塩昆布');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('ナッツ入りカレーチャーハン','カレー粉','トマト','ソーセージ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('カリフラワーとツナのカレーチャーハン','カレー粉','ツナ','カリフラワー');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('枝豆入り玄米チャーハン','枝豆','ネギ','にんじん');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('ツナマヨチャーハン','ツナ','しめじ','マヨネーズ');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('さつま揚げの梅風味チャーハン','さつま揚げ','梅肉','レタス');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('もやしのアジアンチャーハン','もやし','厚揚げ','豚こま切れ肉');
INSERT INTO chahan(menu,name1,name2,name3) VALUES('イカの塩辛チャーハン','イカ','エビ','玉ねぎ');













