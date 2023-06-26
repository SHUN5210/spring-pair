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

INSERT INTO items_list(category_id,name) VALUES(2,'明太子');
INSERT INTO items_list(category_id,name) VALUES(2,'カニ');
INSERT INTO items_list(category_id,name) VALUES(2,'エビ');
INSERT INTO items_list(category_id,name) VALUES(2,'鮭');
INSERT INTO items_list(category_id,name) VALUES(2,'あさり');
INSERT INTO items_list(category_id,name) VALUES(2,'ホタテ');
INSERT INTO items_list(category_id,name) VALUES(2,'じゃこ');
INSERT INTO items_list(category_id,name) VALUES(2,'タコ');
INSERT INTO items_list(category_id,name) VALUES(2,'イカゲソ');

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

INSERT INTO items_list(category_id,name) VALUES(4,'にんにく');
INSERT INTO items_list(category_id,name) VALUES(4,'生姜');
INSERT INTO items_list(category_id,name) VALUES(4,'わさび');
INSERT INTO items_list(category_id,name) VALUES(4,'バター');
INSERT INTO items_list(category_id,name) VALUES(4,'チーズ');
INSERT INTO items_list(category_id,name) VALUES(4,'マヨネーズ');
INSERT INTO items_list(category_id,name) VALUES(4,'梅肉');
--チャーハン