mysql> create database online_bookstore;
Query OK, 1 row affected (0.56 sec)

mysql> use online_bookstore;
Database changed

mysql> create table author(
    -> a_name varchar(255) primary key,
    -> phone int,
    -> email_id varchar(100)
    -> );
Query OK, 0 rows affected (0.26 sec)

mysql> desc author;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| a_name   | varchar(255) | NO   | PRI | NULL    |       |
| phone    | int          | YES  |     | NULL    |       |
| email_id | varchar(100) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
3 rows in set (0.45 sec)

mysql> create table publisher(
    -> P_name varchar(255) primary key,
    -> url varchar(100) unique
    -> );
Query OK, 0 rows affected (0.17 sec)

