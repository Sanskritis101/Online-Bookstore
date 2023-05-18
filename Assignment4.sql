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

mysql> create table book(
    -> ISBN varchar(15) primary key,
    -> Title varchar(255) not null,
    -> Author varchar(255),
    -> Year year,
    -> Publisher varchar(255),
    -> Price float
    -> );
Query OK, 0 rows affected (0.12 sec)

mysql> alter table book add constraint b1 foreign key(Author) references author(a_name);
Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table book add constraint b2 foreign key(Publisher) references publisher(P_name);
Query OK, 0 rows affected (0.22 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc book;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ISBN      | varchar(15)  | NO   | PRI | NULL    |       |
| Title     | varchar(255) | NO   |     | NULL    |       |
| Author    | varchar(255) | YES  | MUL | NULL    |       |
| Year      | year         | YES  |     | NULL    |       |
| Publisher | varchar(255) | YES  | MUL | NULL    |       |
| Price     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> create table shopping_basket(
    -> basket_ID int primary key,
    -> order_id varchar(15),
    -> price float
    -> );
Query OK, 0 rows affected (0.18 sec)

mysql> alter table shopping_basket add constraint s1 foreign key(order_id) references book(ISBN);
Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc shopping_basket;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| basket_ID | int         | NO   | PRI | NULL    |       |
| order_id  | varchar(15) | YES  | MUL | NULL    |       |
| price     | float       | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table customer(
    -> customer_ID int primary key,
    -> c_name varchar(255) not null,
    -> basket_ID int,
    -> foreign key(basket_ID) references shopping_basket(basket_ID)
    -> );
Query OK, 0 rows affected (0.15 sec)

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_ID | int          | NO   | PRI | NULL    |       |
| c_name      | varchar(255) | NO   |     | NULL    |       |
| basket_ID   | int          | YES  | MUL | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into book values("0743477103","Macbeth","William Shakespeare",1903,"Dover",720.00);
Query OK, 1 row affected (0.06 sec)

mysql> insert into book values("0483477103","Hamlet","William Shakespeare",1901,"Dover",720.00);
Query OK, 1 row affected (0.06 sec)

mysql> insert into book values("0375757422","Emma","Jane Austen",1915,"ModernLibrary",799.00);
Query OK, 1 row affected (0.06 sec)

mysql> insert into book values("0679601666","Pride and Prejudice","Jane Austen",1915,"ModernLibrary",799.00);
Query OK, 1 row affected (0.06 sec)
