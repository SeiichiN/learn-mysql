-- 日本百低山リスト 2009年版

-- database: mountain
-- user: moutain_user
-- password: 1234

-- mountain
CREATE DATABASE IF NOT EXISTS mountain;

USE mountain;

-- state
DROP TABLE IF EXISTS teizan;
DROP TABLE IF EXISTS state;

SOURCE state.sql;


-- teizan
CREATE TABLE teizan (
  id INT AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  kana VARCHAR(40) NOT NULL,
  state_id CHAR(2) NOT NULL,
  height int NOT NULL,
  PRIMARY KEY (id)
);

ALTER TABLE teizan
  ADD
    FOREIGN KEY (state_id)
    REFERENCES state (id);

ALTER TABLE teizan AUTO_INCREMENT = 1;

INSERT INTO teizan
(name, kana, state_id, height)
VALUE
('藻岩山', 'もいわやま','01',531),
('ニセコアンヌプリ', 'にせこあんぬぷり', '01',1308),
('樽前山', 'たるまえさん','01',1041),
('渡島駒ガ岳', 'おしまこまがたけ','01',1131),
('函館山', 'はこだてやま','01',334),
('恵山', 'えさん', '01', 618),
('七時雨山', 'ななしぐれやま', '03', 1063),
('姫神山', 'ひめかみやま', '03', 1124),
('太平山', 'たいへいざん', '05', 1170),
('泉ガ岳', 'いずみがたけ', '04', 1175),
('霊山', 'りょうぜん', '07', 825),
('蓬田岳', 'よもぎだだけ', '07', 952),
('鎌倉岳', 'かまくらだけ', '07', 967),
('猫魔ガ岳', 'ねこまがたけ', '07', 1404),
('小野岳', 'おのだけ', '07', 1383),
('筑波山', 'つくばさん', '08', 877),
('加波山', 'かばさん', '08', 709),
('男体山', 'なんたいさん', '08', 654),
('竪破山', 'たつわれさん', '08', 658),
('八溝山', 'やみぞさん', '07', 1022),
('古賀志山', 'こがしやま', '09', 583),
('晃石山', 'てるいしやま', '09', 419),
('岩櫃山', 'いわびつやま', '10', 802),
('嵩山', 'たけやま', '10', 789),
('子持山', 'こもちやま', '10', 1296),
('榛名山', 'はるなさん', '10', 1449),
('妙義山', 'みょうぎさん', '10', 1104),
('鹿岳', 'かなだけ', '10', 1015),
('稲含山', 'いなふくみやま', '10', 1370),
('荒船山', 'あらふねやま', '10', 1423),
('御荷鉾山', 'みかぼやま', '10', 1287),
('城峰山', 'じょうみねさん', '11', 1038),
('笠山', 'かさやま', '11', 837),
('秩父三峰山', 'ちちぶみつみねさん', '11', 1329),
('武甲山', 'ぶこうさん', '11', 1304),
('棒ノ折山', 'ぼうのおれやま', '11', 969),
('伊豆ガ岳', 'いずがだけ', '11', 851),
('釜伏山', 'かまふせやま', '11', 582),
('御岳山', 'みたけさん', '13', 929),
('大岳山', 'おおだけさん', '13', 1266),
('御前山', 'ごぜんやま', '13', 1405),
('川苔山', 'かわのりやま', '13', 1363),
('権現山', 'ごんげんやま', '19', 1312),
('高尾山', 'たかおさん', '13', 599),
('天上山', 'てんじょうさん', '13', 572),
('乳房山', 'ちぶさやま', '13', 463),
('石老山', 'せきろうざん', '14', 702),
('高畑山', 'たかはたやま', '19', 982),
('扇山', 'おうぎやま', '19', 1138),
('大山', 'おおやま', '14', 1252),
('塔ノ岳', 'とうのだけ', '14', 1491),
('金時山', 'きんときやま', '14', 1212),
('駒ガ岳', 'こまがたけ', '14', 1438),
('明神ガ岳', 'みょうじんがたけ', '14', 1169),
('鋸山', 'のこぎりやま', '12', 329),
('伊予ガ岳', 'いよがたけ', '12', 336),
('富山', 'とみさん', '12', 349),
('弥彦山', 'やひこやま', '15', 634),
('米山', 'よねやま', '15', 993),
('金北山', 'きんぽくさん', '15', 1172),
('石割山', 'いしわりやま', '19', 1413),
('大洞山', 'おおぼらやま', '19', 1384),
('足和田山', 'あしわだやま', '19', 1355),
('長者ガ岳', 'ちょうじゃがたけ', '19', 1336),
('蛭ガ岳', 'ひるがたけ', '19', 1280),
('身延山', 'みのぶさん', '19', 1153),
('高社山', 'たかやしろやま', '20', 1351),
('独鈷山', 'とっこさん', '20', 1266),
('霧訪山', 'きりとうやま', '20', 1305),
('浜石岳', 'はまいしだけ', '22', 707),
('竜爪山', 'りゅうそうざん', '22', 1051),
('天城山', 'あまぎさん', '22', 1406),
('高根山', 'たかねやま', '22', 343),
('発端丈山', 'ほったんじょうやま', '22', 410),
('鳳来寺山', 'ほうらいじさん', '23', 695),
('本宮山', 'ほんぐうさん', '23', 789),
('石巻山', 'いしまきさん', '23', 358),
('御在所岳', 'ございしょだけ', '24', 1212),
('霊仙山', 'りょうぜんざん', '25', 1094),
('伊吹山', 'いぶきやま', '25', 1377),
('武奈ガ岳', 'ぶながだけ', '25', 1214),
('比叡山', 'ひえいざん', '26', 848),
('愛宕山', 'あたごやま', '26', 924),
('二上山', 'にじょうさん', '29', 517),
('三輪山', 'みわやま', '29', 467),
('大和葛城山', 'やまとかつらぎさん', '29', 959),
('多武峰', 'とうのみね', '29', 678),
('吉野山', 'よしのやま', '29', 858),
('高野山', 'こうやさん', '30', 1009),
('六甲山', 'ろっこうさん', '28', 931),
('先山', 'せんざん', '28', 448),
('雪彦山', 'せっぴこさん', '28', 915),
('蒜山', 'ひるぜん', '33', 1202),
('三瓶山', 'さんべさん', '32', 1126),
('弥山', 'みせん', '34', 535),
('琴平山', 'ことひらやま', '37', 524),
('宝満山', 'ほうまんざん', '40', 829),
('英彦山', 'ひこさん', '40', 1199),
('鶴見岳', 'つるみだけ', '44', 1375),
('開聞岳', 'かいもんだけ', '46', 924),
('日本国', 'にほんこく', '15', 555);

--
-- gender
--
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS gender;

CREATE TABLE gender (
  id CHAR(1) PRIMARY KEY,
  name VARCHAR(3) NOT NULL
);

INSERT INTO gender
(id, name)
VALUES
('0', '不明'),
('1', '男性'),
('2', '女性'),
('3', 'その他');


--
-- person
--

CREATE TABLE person (
  id int(11) AUTO_INCREMENT,
  name varchar(20) NOT NULL,
  gender_id char(1) NOT NULL,
  birthday date NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (gender_id) REFERENCES gender (id)
);

--
-- テーブルのデータのダンプ `person`
--
ALTER TABLE person AUTO_INCREMENT = 1;

INSERT INTO `person`
(`name`, `gender_id`, `birthday`)
VALUES
('染谷将太',   '1', '1992-09-03'),
('二階堂ふみ', '2', '1994-09-21'),
('渡辺哲',     '1', '1950-03-11'),
('窪塚洋介',   '1', '1979-05-07'),
('吉高由里子', '2', '1988-07-22');


-- 
-- person_teizan
--

DROP TABLE IF EXISTS person_teizan;

CREATE TABLE person_teizan (
  person_id INT NOT NULL,
  teizan_id INT NOT NULL,
  PRIMARY KEY (person_id, teizan_id)
);

INSERT INTO person_teizan
(person_id, teizan_id)
VALUES
(1, 20),
(1, 30),
(1, 50),
(2, 66),
(2, 26),
(2, 30),
(2, 43),
(3, 82),
(3, 44),
(3, 50),
(4, 53),
(4, 58),
(4, 66),
(4, 67),
(5, 82),
(5, 80),
(5, 50),
(5, 30),
(5, 53);

DROP VIEW IF EXISTS pt_view;

CREATE VIEW pt_view AS
SELECT
  p.name as 名前, t.name as 山岳名
  FROM person_teizan as pt
    INNER JOIN person as p
    ON pt.person_id = p.id
      INNER JOIN teizan as t
      ON pt.teizan_id = t.id;

SELECT * FROM pt_view;

DROP VIEW IF EXISTS pt_view2;

CREATE VIEW pt_view2 AS
SELECT
  p.name as 名前,
  g.name as 性別,
  TIMESTAMPDIFF(YEAR, p.birthday, CURDATE()) as 年齢,
  t.name as 山岳名,
  s.name as 所在地
  FROM person_teizan as pt
    INNER JOIN person as p
    ON pt.person_id = p.id
      INNER JOIN teizan as t
      ON pt.teizan_id = t.id
        INNER JOIN gender as g
        ON p.gender_id = g.id
          INNER JOIN state as s
          ON t.state_id = s.id;
          
SELECT * FROM pt_view2;


-- 修正時刻: Thu 2022/10/06 16:05:582
