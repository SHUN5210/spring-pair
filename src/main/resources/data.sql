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

INSERT INTO itemsList(category_id,name) VALUES(4,'にんにく');
INSERT INTO itemsList(category_id,name) VALUES(4,'生姜');
INSERT INTO itemsList(category_id,name) VALUES(4,'わさび');
INSERT INTO itemsList(category_id,name) VALUES(4,'バター');
INSERT INTO itemsList(category_id,name) VALUES(4,'チーズ');
INSERT INTO itemsList(category_id,name) VALUES(4,'マヨネーズ');
INSERT INTO itemsList(category_id,name) VALUES(4,'梅肉');
--チャーハン