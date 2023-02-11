mysql> select ename from emp_info where age=19;
+---------+
| ename   |
+---------+
| Aaditya |
| Krishna |
| Logesh  |
+---------+
3 rows in set (0.00 sec)
mysql> select *from emp_info where ename like '%na';
+-------+---------+------------+--------+------+
| empid | ename   | dob        | city   | age  |
+-------+---------+------------+--------+------+
|     4 | Krishna | 2000-04-23 | kerala |   19 |
+-------+---------+------------+--------+------+
1 row in set (0.01 sec)

mysql> select *from emp_info where ename like 'sh%';
+-------+--------+------------+---------+------+
| empid | ename  | dob        | city    | age  |
+-------+--------+------------+---------+------+
|     1 | Shiyam | 1999-07-03 | vellore |   23 |
+-------+--------+------------+---------+------+
1 row in set (0.00 sec)

mysql> select *from emp_info where ename like '%a%';
+-------+---------+------------+---------+------+
| empid | ename   | dob        | city    | age  |
+-------+---------+------------+---------+------+
|     1 | Shiyam  | 1999-07-03 | vellore |   23 |
|     3 | Aaditya | 2000-07-29 | chennai |   19 |
|     4 | Krishna | 2000-04-23 | kerala  |   19 |
|     5 | Harish  | 2000-05-12 | trichy  |   18 |
+-------+---------+------------+---------+------+
