mysql> select *from emp_info order by age;
+-------+---------+------------+---------+------+--------+
| empid | ename   | dob        | city    | age  | salary |
+-------+---------+------------+---------+------+--------+
|     2 | Lohit   | 2000-04-21 | chennai |   18 |  15000 |
|     5 | Harish  | 2000-05-12 | trichy  |   18 |  21000 |
|     3 | Aaditya | 2000-07-29 | chennai |   19 |  11000 |
|     4 | Krishna | 2000-04-23 | kerala  |   19 |  21000 |
|     6 | Logesh  | 2000-01-19 | chennai |   19 |  16000 |
|     1 | Shiyam  | 1999-07-03 | vellore |   23 |  20000 |
+-------+---------+------------+---------+------+--------+
6 rows in set (0.00 sec)

mysql> select ename from emp_info order by salary desc;
+---------+
| ename   |
+---------+
| Krishna |
| Harish  |
| Shiyam  |
| Logesh  |
| Lohit   |
| Aaditya |
+---------+
6 rows in set (0.00 sec)

mysql> select *from emp_info order by age desc , ename asc;
+-------+---------+------------+---------+------+--------+
| empid | ename   | dob        | city    | age  | salary |
+-------+---------+------------+---------+------+--------+
|     1 | Shiyam  | 1999-07-03 | vellore |   23 |  20000 |
|     3 | Aaditya | 2000-07-29 | chennai |   19 |  11000 |
|     4 | Krishna | 2000-04-23 | kerala  |   19 |  21000 |
|     6 | Logesh  | 2000-01-19 | chennai |   19 |  16000 |
|     5 | Harish  | 2000-05-12 | trichy  |   18 |  21000 |
|     2 | Lohit   | 2000-04-21 | chennai |   18 |  15000 |
+-------+---------+------------+---------+------+--------+
6 rows in set (0.00 sec)

mysql> select *from emp_info order by age,ename;
+-------+---------+------------+---------+------+--------+
| empid | ename   | dob        | city    | age  | salary |
+-------+---------+------------+---------+------+--------+
|     5 | Harish  | 2000-05-12 | trichy  |   18 |  21000 |
|     2 | Lohit   | 2000-04-21 | chennai |   18 |  15000 |
|     3 | Aaditya | 2000-07-29 | chennai |   19 |  11000 |
|     4 | Krishna | 2000-04-23 | kerala  |   19 |  21000 |
|     6 | Logesh  | 2000-01-19 | chennai |   19 |  16000 |
|     1 | Shiyam  | 1999-07-03 | vellore |   23 |  20000 |
+-------+---------+------------+---------+------+--------+
6 rows in set (0.00 sec)

mysql> select count(empid),city from emp_info group by city order by count(empid);
+--------------+---------+
| count(empid) | city    |
+--------------+---------+
|            1 | vellore |
|            1 | kerala  |
|            1 | trichy  |
|            3 | chennai |
+--------------+---------+
4 rows in set (0.01 sec)

mysql> select count(salary),age from emp_info group by age order by count(salary);
+---------------+------+
| count(salary) | age  |
+---------------+------+
|             1 |   23 |
|             2 |   18 |
|             3 |   19 |
+---------------+------+
3 rows in set (0.00 sec)
