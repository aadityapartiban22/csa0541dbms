mysql> create database studentdb;
ERROR 1007 (HY000): Can't create database 'studentdb'; database exists
mysql> create database student1;
Query OK, 1 row affected (0.03 sec)
mysql> use database student1;
ERROR 1049 (42000): Unknown database 'database'
mysql> use student1;
Database changed
mysql> create table student(sno int, sname varchar(40), age int);
Query OK, 0 rows affected (0.05 sec)
mysql> desc student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| sno   | int         | YES  |     | NULL    |       |
| sname | varchar(40) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)
mysql> insert into student values(1,"shiyam",23);
Query OK, 1 row affected (0.02 sec)
mysql> insert into student values(2,"lohit",18);
Query OK, 1 row affected (0.00 sec)
mysql> select *from student;
+------+--------+------+
| sno  | sname  | age  |
+------+--------+------+
|    1 | shiyam |   23 |
|    2 | lohit  |   18 |
+------+--------+------+
2 rows in set (0.00 sec)
mysql> commit;
Query OK, 0 rows affected (0.00 sec)
mysql> alter table student add column dob int;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0
mysql> desc student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| sno   | int         | YES  |     | NULL    |       |
| sname | varchar(40) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
| dob   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)
mysql> truncate student;
Query OK, 0 rows affected (0.04 sec)
mysql> select *from student;
Empty set (0.00 sec)
mysql> insert into student values(1,"Shiyam",23,3071999);
Query OK, 1 row affected (0.01 sec)
mysql> select *from student;
+------+--------+------+---------+
| sno  | sname  | age  | dob     |
+------+--------+------+---------+
|    1 | Shiyam |   23 | 3071999 |
+------+--------+------+---------+
1 row in set (0.00 sec)
mysql> update table student dob=3.07.1999 where dob=3071999;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table student dob=3.07.1999 where dob=3071999' at line 1
mysql> update table student dob=3.07.1999 where age=23;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table student dob=3.07.1999 where age=23' at line 1
mysql> update student set dob=3.07.1999 where age=23;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.1999 where age=23' at line 1
mysql>  update student set dob="3.07.1999" where age=23;
ERROR 1265 (01000): Data truncated for column 'dob' at row 1
mysql> select *from student;
+------+--------+------+---------+
| sno  | sname  | age  | dob     |
+------+--------+------+---------+
|    1 | Shiyam |   23 | 3071999 |
+------+--------+------+---------+
1 row in set (0.00 sec)
mysql> trucate student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'trucate student' at line 1
mysql> truncate table student;
Query OK, 0 rows affected (0.03 sec)
mysql> insert into student values(1,"Shiyam",23,3.07.1999);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.1999)' at line 1
mysql> alter table customers drop column dob;
ERROR 1146 (42S02): Table 'student1.customers' doesn't exist
mysql> alter table student drop column dob;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table student add column dob date(10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(10)' at line 1
mysql> alter table student add column dob date;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into student values
    -> (1,"Shiyam",23,3.7.1999);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.1999)' at line 2
mysql> insert into student values
    -> (1,"shiyam",23,371999);
ERROR 1292 (22007): Incorrect date value: '371999' for column 'dob' at row 1
mysql> insert into student values(1,"shiyam",23,19990703);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(2,"Lohit",18,20040421);
Query OK, 1 row affected (0.01 sec)

mysql> ^C
mysql> insert into student values(3,"Logesh",19,20040119);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(4,"Mani Ratnam",50,19700312);
Query OK, 1 row affected (0.00 sec)

mysql> select *from student;
+------+-------------+------+------------+
| sno  | sname       | age  | dob        |
+------+-------------+------+------------+
|    1 | shiyam      |   23 | 1999-07-03 |
|    2 | Lohit       |   18 | 2004-04-21 |
|    3 | Logesh      |   19 | 2004-01-19 |
|    4 | Mani Ratnam |   50 | 1970-03-12 |
+------+-------------+------+------------+
4 rows in set (0.00 sec)

mysql> update student set sname=GVM where sno=4;
ERROR 1054 (42S22): Unknown column 'GVM' in 'field list'
mysql> update student set sname="GVM" where sno=4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from student;
+------+--------+------+------------+
| sno  | sname  | age  | dob        |
+------+--------+------+------------+
|    1 | shiyam |   23 | 1999-07-03 |
|    2 | Lohit  |   18 | 2004-04-21 |
|    3 | Logesh |   19 | 2004-01-19 |
|    4 | GVM    |   50 | 1970-03-12 |
+------+--------+------+------------+
4 rows in set (0.00 sec)

mysql> select *from student where sno=1;
+------+--------+------+------------+
| sno  | sname  | age  | dob        |
+------+--------+------+------------+
|    1 | shiyam |   23 | 1999-07-03 |
+------+--------+------+------------+
1 row in set (0.00 sec)

mysql> select *from student where age=18;
+------+-------+------+------------+
| sno  | sname | age  | dob        |
+------+-------+------+------------+
|    2 | Lohit |   18 | 2004-04-21 |
+------+-------+------+------------+
1 row in set (0.00 sec)

mysql> update student set sname="vicky Melwin" where sno=3;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select sname from student where sno=2;
+-------+
| sname |
+-------+
| Lohit |
+-------+
1 row in set (0.00 sec)

mysql>
