DROP VIEW IF EXISTS student_view;

CREATE VIEW student_view AS
SELECT
    p.id       AS ID,
    p.name     AS 名前,
    g.gname    AS 性別,
    timestampdiff(YEAR, p.birthday, curdate()) AS 年齢,
    s.sname     AS 出身,
    c.cname   AS コース
  FROM person p
    INNER JOIN gender g
      ON p.g_id = g.gid
    INNER JOIN course c
      ON p.c_id = c.cid
    INNER JOIN state s
      ON p.s_id = s.sid;

-- p.birthday AS 誕生日,

-- 修正時刻: Sun Feb 20 17:39:07 2022
