-- emp�\�� dept�\�� ���O����������

select emp.id as ID, emp.name as ���O, age as �N��,
dept.name as ������ from emp left join dept
on emp.dept_id = dept.id
order by ID;


-- �C������: Tue Aug 10 18:47:23 2021
