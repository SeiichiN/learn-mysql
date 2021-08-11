-- もし存在していなかったら sample データベースを作成する
CREATE DATABASE IF NOT EXISTS sample;

-- sample データベースを使用
USE sample;

-- もし empテーブルが存在していたら削除する。。
DROP TABLE IF EXISTS emp;

-- もし deptテーブルが存在したら削除する。
DROP TABLE IF EXISTS dept;

-- dept テーブルの作成
CREATE TABLE IF NOT EXISTS dept (
  id CHAR(3) PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);


-- emp テーブルの作成
CREATE TABLE IF NOT EXISTS emp (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  age INT NOT NULL,
  birthday YEAR NOT NULL,
  dept_id CHAR(3),
  constraint fk_dept_id
  foreign key(dept_id) references dept(id)
  on delete restrict on update restrict
);


-- 自動連番を初期化する。
ALTER TABLE emp AUTO_INCREMENT = 1;

-- トランザクション開始
BEGIN;

LOCK TABLES dept WRITE;

INSERT INTO dept (id, name) VALUES
('001', '総務部'),
('002', '営業部'),
('003', '経理部'),
('004', '開発部');

UNLOCK TABLES;


LOCK TABLES emp WRITE;

INSERT INTO emp (name, age, birthday, dept_id) VALUES
('菅原文太', 40, 1933, '001'),
('千葉真一', 34, 1939, '002') ,
('北大路欣也', 30, 1943, '003'),
('梶芽衣子', 26, 1947, '002');

UNLOCK TABLES;


SELECT * FROM dept;
SELECT * FROM emp;

-- COMMIT
COMMIT;

-- 修正時刻: Wed Aug 11 22:18:56 2021
