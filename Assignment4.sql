mysql> create database online_bookstore;
Query OK, 1 row affected (0.56 sec)

mysql> use online_bookstore;
Database changed

mysql> create table author(
    -> a_name varchar(255) primary key,
    -> phone int,
    -> email varchar(100)
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

mysql> insert into author values("Jane Austen",787965452,"janeausten@gmail.com");
Query OK, 1 row affected (0.06 sec)

mysql> insert into author values("William Shakespeare",734465452, "shakespeare@yahoo.mail");
Query OK, 1 row affected (0.06 sec)

mysql> insert into author values("Oscar Wilde",939465412, "oscarwilde@outlook.com");
Query OK, 1 row affected (0.06 sec)

mysql> insert into author values("Victor Hugo",967362419, "hugovictor1@mail.com");
Query OK, 1 row affected (0.06 sec)

mysql> create table publisher(
    -> P_name varchar(255) primary key,
    -> url varchar(100) unique
    -> );
Query OK, 0 rows affected (0.17 sec)

mysql> desc publisher;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| P_name | varchar(255) | NO   | PRI | NULL    |       |
| url    | varchar(100) | YES  | UNI | NULL    |       |
+--------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into publisher values("Dover","doverbooks.in");
Query OK, 1 row affected (0.08 sec)

mysql> insert into publisher values("HarperCollins","harpercollins.us");
Query OK, 1 row affected (0.04 sec)

mysql> insert into publisher values("ModernLibrary","modernlib.org");
Query OK, 1 row affected (0.03 sec)

mysql> insert into publisher values("PenguinBooks","penguinbooks.com");
Query OK, 1 row affected (0.06 sec)

mysql> insert into publisher values("TwaynePublishers","twaynepublishers.to");
Query OK, 1 row affected (0.06 sec)

mysql> select * from publisher;
+------------------+---------------------+
| P_name           | url                 |
+------------------+---------------------+
| Dover            | doverbooks.in       |
| HarperCollins    | harpercollins.us    |
| ModernLibrary    | modernlib.org       |
| PenguinBooks     | penguinbooks.com    |
| TwaynePublishers | twaynepublishers.to |
+------------------+---------------------+
5 rows in set (0.00 sec)
