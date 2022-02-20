-- sample データベース

CREATE DATABASE IF NOT EXISTS sample;

USE sample;

-- dept
DROP TABLE IF EXISTS emp;
DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
  did CHAR(3) PRIMARY KEY,
  dept_name VARCHAR(20) NOT NULL
);

INSERT INTO dept (did, dept_name) VALUES
('001', '総務部'),
('002', '営業部'),
('003', '経理部'),
('004', '開発部');

-- gender
DROP TABLE IF EXISTS gender;

CREATE TABLE gender (
  gid CHAR(1) PRIMARY KEY,
  g_name VARCHAR(3) NOT NULL
);

INSERT INTO gender (gid, g_name) VALUES
('0', '不明'),
('1', '男性'),
('2', '女性'),
('3', 'その他');

-- emp
DROP TABLE IF EXISTS emp;

CREATE TABLE emp (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  gender_id CHAR(1) NOT NULL,
  age INT NOT NULL,
  birthyear INT NOT NULL,
  dept_id CHAR(3),
  PRIMARY KEY (id),
  FOREIGN KEY (gender_id) REFERENCES gender (gid),
  FOREIGN KEY (dept_id) REFERENCES dept (did)
);

-- 自動連番の初期値を1にセット
ALTER TABLE emp AUTO_INCREMENT = 1;

INSERT INTO emp (name, gender_id, age, birthyear, dept_id) VALUES
('菅原文太', '1', 40, 1933, '001'),
('千葉真一', '1', 34, 1939, '002'),
('北大路欣也', '1', 30, 1943, '003'),
('梶芽衣子', '2', 26, 1947, '002');


-- hobby
DROP TABLE IF EXISTS hobby;

CREATE TABLE hobby (
  hid CHAR(3) PRIMARY KEY,
  h_name VARCHAR(20) NOT NULL
);

INSERT INTO hobby (hid, h_name) VALUES
('H01', '釣り'),
('H02', '油絵'),
('H03', '空手'),
('H04', '熱帯魚飼育'),
('H05', 'サッカー観戦'),
('H06', '茶道'),
('H07', '登山'),
('H08', 'ヨガ');

-- emp_hobby
DROP TABLE IF EXISTS emp_hobby;

CREATE TABLE emp_hobby (
 id INT NOT NULL,
 hid CHAR(3) NOT NULL,
 PRIMARY KEY (id, hid)
);

INSERT INTO emp_hobby (id, hid) VALUES
(1, 'H01'),
(1, 'H02'),
(1, 'H03'),
(2, 'H03'),
(2, 'H04'),
(2, 'H05'),
(2, 'H01'),
(3, 'H06'),
(3, 'H03'),
(4, 'H07'),
(4, 'H08'),
(4, 'H05');

-- 全員の 名前、性別、所属、趣味 を表示する。
-- それを hobby_view とする。
DROP VIEW IF EXISTS hobby_view;

create view hobby_view as
select e.name as 名前,
       g.g_name as 性別,
       d.dept_name as 所属,
       h.h_name as 趣味
  from emp as e
    inner join emp_hobby as eh
    on eh.id = e.id
      inner join gender as g
      on g.gid = e.gender_id
        inner join dept as d
        on d.did = e.dept_id
          inner join hobby as h
          on h.hid = eh.hid;
        
-- 趣味が"空手"である人の、名前、所属、趣味 を表示する。
select * from hobby_view
    where 趣味 like '%空手%';


-- 修正時刻: Sat Feb 19 09:57:35 2022
