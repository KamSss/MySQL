--1.查询工资高于500或岗位为MANAGER的雇员，同时他们的姓名首字母为J
select ename,jobmsak from emp where (sal > 500 or job = "MANAGER") and eanme like  "J%";

--2.按照部门号升序而雇员的工资降序排序
select deptno,ename,sal from emp order by deptno,sal desc;
 
--3.使用年薪进行降序升序排序
select ename, sal, comn, (sal + ifnull(comn,0)) * 12 as yearsal from emp order by yearsal desc;

--4.显示工资最高的员工的名字和工作岗位
select ename, job from emp order by sal desc limit 1;

--5.显示工资高于平均工资的员工信息
子查询：
select empno, ename， sal from emp  where sal > (select avg(sal) from emp);
多表：(这种方法过于复杂)
select empno, ename， sal from emp, (select avg(sal) as avgsal from emp) temp where sal > temp.avgsal;

--6.显示每个部门的平均工资和最高工资
select deptno, avg(sal), max(sal) from emp group by deptno;

--7.显示平均工资低于2000的部门号和它的平均工资
视图：
create view v_tmp as select deptno, avg(sal) as avgsal from emp group by deptno;
select * from v_tmp where avgsal < 2000;
子查询：
  select deptno, avg(sal) as avgsal from emp group by deptno having avgsal < 2000;
  

--8.显示每种岗位的雇员总数，平均工资

