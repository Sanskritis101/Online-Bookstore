mysql> create database online_bookstore;
Query OK, 1 row affected (0.56 sec)

mysql> use online_bookstore;
Database changed

create table author(
    -> a_id int primary key,
    -> a_name varchar(255) unique,
    -> phone int,
    -> email_id varchar(100)
    -> );
Query OK, 0 rows affected (0.26 sec)

mysql> create table publisher(
    -> P_name varchar(255) primary key,
    -> url varchar(100) unique
    -> );
Query OK, 0 rows affected (0.17 sec)

