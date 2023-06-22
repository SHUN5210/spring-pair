-- テーブル削除
DROP TABLE IF EXISTS chahan;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS categories;

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
-- 注文テーブル
CREATE TABLE chahan
(
  id SERIAL PRIMARY KEY,
  menu TEXT,
  name1 TEXT,
  name2 TEXT,
  name3 TEXT
);
-- 注文詳細テーブル
CREATE TABLE users
(
  id SERIAL PRIMARY KEY,
  email TEXT,
  password TEXT
); 