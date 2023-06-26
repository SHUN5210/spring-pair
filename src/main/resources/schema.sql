-- テーブル削除
DROP TABLE IF EXISTS chahan;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS items_list;


	-- カテゴリーテーブル
CREATE TABLE categories
(
   id SERIAL PRIMARY KEY,
   name TEXT
);
-- 商品テーブル
CREATE TABLE items
(
   id SERIAL PRIMARY KEY,
   category_id INTEGER,
   name TEXT,
   detail TEXT
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
-- アカウントテーブル
CREATE TABLE users
(
  id SERIAL PRIMARY KEY,
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
