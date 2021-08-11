-- もし存在していなかったら sample データベースを作成する
CREATE DATABASE IF NOT EXISTS sample;

-- sample データベースを使用
USE sample;

-- emp テーブルの作成
-- もし empテーブルが存在しなかったら作成する。
-- もし存在したら、このSQL文は実行されない。

CREATE TABLE IF NOT EXISTS emp (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  age INT NOT NULL,
  birthday YEAR NOT NULL,
  dept_id CHAR(3)
);

-- dept テーブルの作成
-- もし deptテーブルが存在しなかったら作成する。
-- もし存在したら、このSQL文は実行されない。

CREATE TABLE IF NOT EXISTS dept (
  id CHAR(3) PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

-- 自動連番を初期化する。
ALTER TABLE emp AUTO_INCREMENT = 1;

-- トランザクション開始
BEGIN;

-- もし、データが存在していたら、削除する。
DELETE FROM emp WHERE (SELECT COUNT(id) FROM emp) > 0;

INSERT INTO emp (name, age, birthday, dept_id) VALUES
('菅原文太', 40, 1933, '001'),
('千葉真一', 34, 1939, '002') ,
('北大路欣也', 30, 1943, '003'),
('梶芽衣子', 26, 1947, '002');

-- もし、データが存在していたら、削除する。
DELETE FROM dept WHERE (SELECT COUNT(id) FROM dept) > 0;

INSERT INTO dept (id, name) VALUES
('001', '総務部'),
('002', '営業部'),
('003', '経理部'),
('004', '開発部');

SELECT * FROM emp;
SELECT * FROM dept;

-- COMMIT
COMMIT;

-- 修正時刻: Tue Aug 10 08:01:58 2021
