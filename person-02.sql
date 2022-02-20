--
-- データベース: student
--

CREATE DATABASE IF NOT EXISTS student;

USE student;

DROP TABLE IF EXISTS gender;

CREATE TABLE gender (
  gid CHAR(1) PRIMARY KEY,
  gname VARCHAR(3)
);

INSERT INTO gender (gid, gname) VALUES
('0', '不明'),
('1', '男性'),
('2', '女性'),
('3', 'その他');

DROP TABLE IF EXISTS course;

CREATE TABLE course (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cname VARCHAR(50)
);

ALTER TABLE course AUTO_INCREMENT = 1;

INSERT INTO course (cname) VALUES
('HTML/CSSコース'),
('JavaScriptコース'),
('PHPコース'),
('Javaコース'),
('サーブレットJSPコース');


--
-- テーブルの構造 person
--
DROP TABLE IF EXISTS person;

CREATE TABLE person (
  id int(11) AUTO_INCREMENT,
  name varchar(20),
  g_id char(1),
  birthday date,
  s_id char(2),
  c_id int,
  PRIMARY KEY (id)
);

--
-- テーブルのデータのダンプ person
--
ALTER TABLE person AUTO_INCREMENT = 1;

INSERT INTO person (name, g_id, birthday, s_id, c_id) VALUES
('染谷将太',   '1', '1992-09-03', '13', 2),
('二階堂ふみ', '2', '1994-09-21', '47', 3),
('渡辺哲',     '1', '1950-03-11', '23', 4),
('窪塚洋介',   '1', '1979-05-07', '14', 1),
('吉高由里子', '2', '1988-07-22', '13', 4);


DROP TABLE IF EXISTS state;

CREATE TABLE state (
  sid CHAR(2) PRIMARY KEY,
  sname VARCHAR(5)
);

SOURCE state.sql;

-- 修正時刻: Sun Feb 20 17:27:04 2022
