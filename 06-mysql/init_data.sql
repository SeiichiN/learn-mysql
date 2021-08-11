-- �������݂��Ă��Ȃ������� sample �f�[�^�x�[�X���쐬����
CREATE DATABASE IF NOT EXISTS sample;

-- sample �f�[�^�x�[�X���g�p
USE sample;

-- emp �e�[�u���̍쐬
-- ���� emp�e�[�u�������݂��Ȃ�������쐬����B
-- �������݂�����A����SQL���͎��s����Ȃ��B

CREATE TABLE IF NOT EXISTS emp (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  age INT NOT NULL,
  birthday YEAR NOT NULL,
  dept_id CHAR(3)
);

-- dept �e�[�u���̍쐬
-- ���� dept�e�[�u�������݂��Ȃ�������쐬����B
-- �������݂�����A����SQL���͎��s����Ȃ��B

CREATE TABLE IF NOT EXISTS dept (
  id CHAR(3) PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

-- �����A�Ԃ�����������B
ALTER TABLE emp AUTO_INCREMENT = 1;

-- �g�����U�N�V�����J�n
BEGIN;

-- �����A�f�[�^�����݂��Ă�����A�폜����B
DELETE FROM emp WHERE (SELECT COUNT(id) FROM emp) > 0;

INSERT INTO emp (name, age, birthday, dept_id) VALUES
('��������', 40, 1933, '001'),
('��t�^��', 34, 1939, '002') ,
('�k��H�Ӗ�', 30, 1943, '003'),
('����ߎq', 26, 1947, '002');

-- �����A�f�[�^�����݂��Ă�����A�폜����B
DELETE FROM dept WHERE (SELECT COUNT(id) FROM dept) > 0;

INSERT INTO dept (id, name) VALUES
('001', '������'),
('002', '�c�ƕ�'),
('003', '�o����'),
('004', '�J����');

SELECT * FROM emp;
SELECT * FROM dept;

-- COMMIT
COMMIT;

-- �C������: Tue Aug 10 08:01:58 2021
