SELECT e.ename, d.deptno, s.grade
FROM dept d, emp e, salgrade s
WHERE e.deptno = d.deptno AND (e.sal + 500) BETWEEN losal AND hisal;