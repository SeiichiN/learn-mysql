-- emp�\�� dept�\�� �E�O����������

select emp.id as ID, emp.name as ���O, age as �N��,
dept.name as ������ from emp right join dept
on emp.dept_id = dept.id
order by ID;


-- �C������: Tue Aug 10 18:56:19 2021
