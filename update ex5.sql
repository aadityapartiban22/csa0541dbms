mysql> select ename from emp_info where age between 15 and 24;
+---------+
| ename   |
+---------+
| Shiyam  |
| Lohit   |
| Aaditya |
| Krishna |
| Harish  |
| Logesh  |
+---------+
6 rows in set (0.00 sec)
mysql> select max(salary),min(salary) from emp_info;
+-------------+-------------+
| max(salary) | min(salary) |
+-------------+-------------+
|       21000 |       11000 |
+-------------+-------------+
1 row in set (0.01 sec)

mysql> select count(ename) from emp_info;
+--------------+
| count(ename) |
+--------------+
|            6 |
+--------------+
1 row in set (0.00 sec)
mysql> select avg(salary) from emp_info;
+-------------+
| avg(salary) |
+-------------+
|  17333.3333 |
+-------------+
1 row in set (0.00 sec)

mysql> select sum(salary) from emp_info;
+-------------+
| sum(salary) |
+-------------+
|      104000 |
+-------------+
1 row in set (0.00 sec)

mysql> select ename,salary from emp_info where ename like '%a%';
+---------+--------+
| ename   | salary |
+---------+--------+
| Shiyam  |  20000 |
| Aaditya |  11000 |
| Krishna |  21000 |
| Harish  |  21000 |
+---------+--------+
4 rows in set (0.00 sec)

 select *from emp_info where city in ('chennai','vellore');
+-------+---------+------------+---------+------+--------+
| empid | ename   | dob        | city    | age  | salary |
+-------+---------+------------+---------+------+--------+
|     1 | Shiyam  | 1999-07-03 | vellore |   23 |  20000 |
|     2 | Lohit   | 2000-04-21 | chennai |   18 |  15000 |
|     3 | Aaditya | 2000-07-29 | chennai |   19 |  11000 |
|     6 | Logesh  | 2000-01-19 | chennai |   19 |  16000 |
+-------+---------+------------+---------+------+--------+
4 rows in set (0.00 sec)
