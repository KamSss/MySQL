--1.��ѯ���ʸ���500���λΪMANAGER�Ĺ�Ա��ͬʱ���ǵ���������ĸΪJ
select ename,jobmsak from emp where (sal > 500 or job = "MANAGER") and eanme like  "J%";

--2.���ղ��ź��������Ա�Ĺ��ʽ�������
select deptno,ename,sal from emp order by deptno,sal desc;
 
--3.ʹ����н���н�����������
select ename, sal, comn, (sal + ifnull(comn,0)) * 12 as yearsal from emp order by yearsal desc;

--4.��ʾ������ߵ�Ա�������ֺ͹�����λ
select ename, job from emp order by sal desc limit 1;

--5.��ʾ���ʸ���ƽ�����ʵ�Ա����Ϣ
�Ӳ�ѯ��
select empno, ename�� sal from emp  where sal > (select avg(sal) from emp);
���(���ַ������ڸ���)
select empno, ename�� sal from emp, (select avg(sal) as avgsal from emp) temp where sal > temp.avgsal;

--6.��ʾÿ�����ŵ�ƽ�����ʺ���߹���
select deptno, avg(sal), max(sal) from emp group by deptno;

--7.��ʾƽ�����ʵ���2000�Ĳ��źź�����ƽ������
��ͼ��
create view v_tmp as select deptno, avg(sal) as avgsal from emp group by deptno;
select * from v_tmp where avgsal < 2000;
�Ӳ�ѯ��
  select deptno, avg(sal) as avgsal from emp group by deptno having avgsal < 2000;
  

--8.��ʾÿ�ָ�λ�Ĺ�Ա������ƽ������

