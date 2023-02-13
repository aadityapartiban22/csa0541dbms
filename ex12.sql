mysql> select *from marks;
+-------+---------+-------+
| Regno | Name    | Marks |
+-------+---------+-------+
|   100 | Gowtham |    98 |
|   101 | Vikas   |    97 |
|   102 | Ram     |    87 |
|   103 | Harish  |    89 |
|   104 | Sabitha |    92 |
+-------+---------+-------+
5 rows in set (0.01 sec)
mysql> select @@autocommit;
+--------------+
| @@autocommit |
+--------------+
|            1 |
+--------------+
1 row in set (0.00 sec)
mysql> insert into marks values(105,"Vishnu",99);
Query OK, 1 row affected (0.01 sec)

mysql> select*from marks;
+-------+---------+-------+
| Regno | Name    | Marks |
+-------+---------+-------+
|   100 | Gowtham |    98 |
|   101 | Vikas   |    97 |
|   102 | Ram     |    87 |
|   103 | Harish  |    89 |
|   104 | Sabitha |    92 |
|   105 | Vishnu  |    99 |
+-------+---------+-------+
6 rows in set (0.00 sec)

mysql> set autocommit=0;
Query OK, 0 rows affected (0.00 sec)

mysql> select @@autocommit;
+--------------+
| @@autocommit |
+--------------+
|            0 |
+--------------+
1 row in set (0.00 sec)

mysql> delete from marks where Marks=99;
Query OK, 1 row affected (0.01 sec)

mysql> select*from marks;
+-------+---------+-------+
| Regno | Name    | Marks |
+-------+---------+-------+
|   100 | Gowtham |    98 |
|   101 | Vikas   |    97 |
|   102 | Ram     |    87 |
|   103 | Harish  |    89 |
|   104 | Sabitha |    92 |
+-------+---------+-------+
5 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.01 sec)

mysql> select*from marks;
+-------+---------+-------+
| Regno | Name    | Marks |
+-------+---------+-------+
|   100 | Gowtham |    98 |
|   101 | Vikas   |    97 |
|   102 | Ram     |    87 |
|   103 | Harish  |    89 |
|   104 | Sabitha |    92 |
|   105 | Vishnu  |    99 |
+-------+---------+-------+
6 rows in set (0.00 sec)
mysql> select*from movies;
+------+-----------------+----------------+
| Sno  | Moviename       | Type           |
+------+-----------------+----------------+
|    1 | Ponniyin selvan | History        |
|    2 | Naane varuven   | Crime thriller |
|    3 | Cobra           | Crime thriller |
|    4 | LKG             | Comedy         |
+------+-----------------+----------------+
4 rows in set (0.00 sec)

mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> savepoint ini;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into movies values(5,"DON","Commercial");
Query OK, 1 row affected (0.01 sec)

mysql> select*from movies;
+------+-----------------+----------------+
| Sno  | Moviename       | Type           |
+------+-----------------+----------------+
|    1 | Ponniyin selvan | History        |
|    2 | Naane varuven   | Crime thriller |
|    3 | Cobra           | Crime thriller |
|    4 | LKG             | Comedy         |
|    5 | DON             | Commercial     |
+------+-----------------+----------------+
5 rows in set (0.00 sec)

mysql> savepoint ins;
Query OK, 0 rows affected (0.00 sec)

mysql> update movies set Moviename="Mr.Local" where Sno=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from movies;
+------+-----------------+----------------+
| Sno  | Moviename       | Type           |
+------+-----------------+----------------+
|    1 | Ponniyin selvan | History        |
|    2 | Naane varuven   | Crime thriller |
|    3 | Cobra           | Crime thriller |
|    4 | LKG             | Comedy         |
|    5 | Mr.Local        | Commercial     |
+------+-----------------+----------------+
5 rows in set (0.00 sec)

mysql> savepoint upd;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from movies where Sno=5;
Query OK, 1 row affected (0.00 sec)

mysql> select*from movies;
+------+-----------------+----------------+
| Sno  | Moviename       | Type           |
+------+-----------------+----------------+
|    1 | Ponniyin selvan | History        |
|    2 | Naane varuven   | Crime thriller |
|    3 | Cobra           | Crime thriller |
|    4 | LKG             | Comedy         |
+------+-----------------+----------------+
4 rows in set (0.00 sec)

mysql> savepoint del;
Query OK, 0 rows affected (0.00 sec)

mysql> rollback to upd;
Query OK, 0 rows affected (0.00 sec)

mysql> select*from movies;
+------+-----------------+----------------+
| Sno  | Moviename       | Type           |
+------+-----------------+----------------+
|    1 | Ponniyin selvan | History        |
|    2 | Naane varuven   | Crime thriller |
|    3 | Cobra           | Crime thriller |
|    4 | LKG             | Comedy         |
|    5 | Mr.Local        | Commercial     |
+------+-----------------+----------------+
5 rows in set (0.00 sec)
mysql> rollback to ini;
Query OK, 0 rows affected (0.00 sec)
mysql> select *from movies;
+------+-----------------+----------------+
| Sno  | Moviename       | Type           |
+------+-----------------+----------------+
|    1 | Ponniyin selvan | History        |
|    2 | Naane varuven   | Crime thriller |
|    3 | Cobra           | Crime thriller |
|    4 | LKG             | Comedy         |
+------+-----------------+----------------+
4 rows in set (0.01 sec)
