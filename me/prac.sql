select * 
from emp
where to_char(hiredate, 'MM') = '09';



select ename, to_char(hiredate, 'YYYY/MM/DD') AS HIREDATE
from emp
where to_char(hiredate, 'YYYY') = '2003';






select e.empno, e.ename, d.deptno, d.dname
from emp e, dept d
where e.deptno = d.deptno(+);