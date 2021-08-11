-- �������݂��Ă��Ȃ������� sample �f�[�^�x�[�X���쐬����
CREATE DATABASE IF NOT EXISTS sample;

-- sample �f�[�^�x�[�X���g�p
USE sample;

-- ���� emp�e�[�u�������݂��Ă�����폜����B�B
DROP TABLE IF EXISTS emp;

-- ���� dept�e�[�u�������݂�����폜����B
DROP TABLE IF EXISTS dept;

-- dept �e�[�u���̍쐬
CREATE TABLE IF NOT EXISTS dept (
  id CHAR(3) PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);


-- emp �e�[�u���̍쐬
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


-- �����A�Ԃ�����������B
ALTER TABLE emp AUTO_INCREMENT = 1;

-- �g�����U�N�V�����J�n
BEGIN;

LOCK TABLES dept WRITE;

INSERT INTO dept (id, name) VALUES
('001', '������'),
('002', '�c�ƕ�'),
('003', '�o����'),
('004', '�J����');

UNLOCK TABLES;


LOCK TABLES emp WRITE;

INSERT INTO emp (name, age, birthday, dept_id) VALUES
('��������', 40, 1933, '001'),
('��t�^��', 34, 1939, '002') ,
('�k��H�Ӗ�', 30, 1943, '003'),
('����ߎq', 26, 1947, '002');

UNLOCK TABLES;


SELECT * FROM dept;
SELECT * FROM emp;

-- COMMIT
COMMIT;

-- �C������: Wed Aug 11 22:18:56 2021
