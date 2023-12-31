-- テーブル削除
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS chahan;
DROP TABLE IF EXISTS element;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS items_list;
DROP TABLE IF EXISTS graph1;
DROP TABLE IF EXISTS dateprice1;
DROP TABLE IF EXISTS fridge;



	-- カテゴリーテーブル
CREATE TABLE categories
(
   id SERIAL PRIMARY KEY,
   name TEXT
);
	-- 保管テーブル
CREATE TABLE fridge
(
   id SERIAL PRIMARY KEY,
   name TEXT
);
-- 商品テーブル
CREATE TABLE items
(
   id SERIAL PRIMARY KEY,
   user_id INTEGER,
   category_id INTEGER,
   name TEXT,
   item_id INTEGER,
   today TEXT,
   care TEXT,
   price TEXT,
   fridge INTEGER
);
-- メニューテーブル
CREATE TABLE chahan
(
  id SERIAL PRIMARY KEY,
  menu TEXT,
  name1 TEXT,
  name2 TEXT,
  name3 TEXT
);
-- メニュー素材テーブル
CREATE TABLE element
(
  id SERIAL PRIMARY KEY,
  chahan_id INTEGER,
  name INTEGER
);
-- アカウントテーブル
CREATE TABLE users
(
  user_id SERIAL PRIMARY KEY,
  email TEXT,
  password TEXT
); 

-- 商品リスト
CREATE TABLE items_list
(
   id SERIAL PRIMARY KEY,
   category_id INTEGER,
   name TEXT
);

-- グラフテーブル
CREATE TABLE graph1
(
   id SERIAL PRIMARY KEY,
   user_id INTEGER,
   name TEXT,
   today TEXT,
   price TEXT
);

-- 日付価格テーブル
CREATE TABLE dateprice1
(
   id SERIAL PRIMARY KEY,
   user_id INTEGER,
   today TEXT,
   price TEXT
);