
--
-- データベース: `mountain`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `person`
--

CREATE TABLE `person` (
  `id` int(11) AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `g_id` char(1) NOT NULL,
  `birthday` date NOT NULL,
  `s_code` char(2) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`g_id`) REFERENCES `gender` (`gid`),
  FOREIGN KEY (`s_code`) REFERENCES `state` (`code`)
);

--
-- テーブルのデータのダンプ `person`
--
ALTER TABLE person AUTO_INCREMENT = 1;

INSERT INTO `person` (`name`, `g_id`, `birthday`, `s_code`) VALUES
('染谷将太',   '1', '1992-09-03', '13'),
('二階堂ふみ', '2', '1994-09-21', '47'),
('渡辺哲',     '1', '1950-03-11', '23'),
('窪塚洋介',   '1', '1979-05-07', '14'),
('吉高由里子', '2', '1988-07-22', '13');


-- 修正時刻: Sat Feb 19 13:47:09 2022
