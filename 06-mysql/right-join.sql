-- emp表と dept表を 右外部結合する

select emp.id as ID, emp.name as 名前, age as 年齢,
dept.name as 部署名 from emp right join dept
on emp.dept_id = dept.id
order by ID;


-- 修正時刻: Tue Aug 10 18:56:19 2021
