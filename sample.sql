-- sample データベース

CREATE DATABASE IF NOT EXISTS sample;

USE sample;

-- emp
DROP TABLE IF EXISTS emp;


CREATE TABLE emp (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  birthyear INT NOT NULL,
  PRIMARY KEY (id)
);


-- 修正時刻: Fri Feb 18 17:01:15 2022
