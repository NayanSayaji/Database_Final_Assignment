-- Q.1 Create patients table

mysql> create table patients (
        patient_id int primary key auto_increment,
        name varchar(50),
        age int,
        gender varchar(1),
        city varchar(20),
        date_of_admission date,
        status varchar(20),
        doctor_id int unique,
        FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id)
    );

mysql> desc patients;
+-------------------+-------------+------+-----+---------+----------------+
| Field             | Type        | Null | Key | Default | Extra          |
+-------------------+-------------+------+-----+---------+----------------+
| patient_id        | int         | NO   | PRI | NULL    | auto_increment |
| name              | varchar(50) | YES  |     | NULL    |                |
| age               | int         | YES  |     | NULL    |                |
| gender            | varchar(1)  | YES  |     | NULL    |                |
| city              | varchar(20) | YES  |     | NULL    |                |
| date_of_admission | date        | YES  |     | NULL    |                |
| status            | varchar(20) | YES  |     | NULL    |                |
| doctor_id         | int         | YES  | UNI | NULL    |                |
+-------------------+-------------+------+-----+---------+----------------+
8 rows in set (0.05 sec)

mysql> insert into patients (name,age,gender,city,date_of_admission,status,doctor_id)
    -> VALUES("nayan",44,"m","Mumbai","2000-04-05","admitted",6),
    ->      ("jayesh",54,"m","Pune","1980-09-09","admitted",7),
    ->      ("sanket",24,"m","Pune","2010-12-09","admitted",5),
    ->      ("rohit",31,"m","Dhule","1999-10-11","admitted",1),
    ->      ("ruchi",60,"f","Pune","2002-04-01","admitted",3),
    ->      ("anushka",34,"f","Ahmedabad","2002-04-01","discharged",2),
    ->      ("samadhan",39,"m","Mumbai","2012-02-01","discharged",4),
    ->      ("ravindra",49,"m","Ahmedabad","1985-05-08","discharged",8),
    ->      ("divya",29,"f","Jalgoan","2015-05-03","discharged",9);
Query OK, 9 rows affected (0.01 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> select * from patients;
+------------+----------+------+--------+-----------+-------------------+------------+-----------+
| patient_id | name     | age  | gender | city      | date_of_admission | status     | doctor_id |
+------------+----------+------+--------+-----------+-------------------+------------+-----------+
|         19 | nayan    |   44 | m      | Mumbai    | 2000-04-05        | admitted   |         6 |
|         20 | jayesh   |   54 | m      | Pune      | 1980-09-09        | admitted   |         7 |
|         21 | sanket   |   24 | m      | Pune      | 2010-12-09        | admitted   |         5 |
|         22 | rohit    |   31 | m      | Dhule     | 1999-10-11        | admitted   |         1 |
|         23 | ruchi    |   60 | f      | Pune      | 2002-04-01        | admitted   |         3 |
|         24 | anushka  |   34 | f      | Ahmedabad | 2002-04-01        | discharged |         2 |
|         25 | samadhan |   39 | m      | Mumbai    | 2012-02-01        | discharged |         4 |
|         26 | ravindra |   49 | m      | Ahmedabad | 1985-05-08        | discharged |         8 |
|         27 | divya    |   29 | f      | Jalgoan   | 2015-05-03        | discharged |         9 |
+------------+----------+------+--------+-----------+-------------------+------------+-----------+
9 rows in set (0.00 sec)



-- Q.2 Create doctors table
mysql> create table doctor (
        doctor_id int primary key auto_increment,
        name varchar(50),
        age int,
        gender varchar(1),
        city varchar(20),
        specialization varchar(50),
        experience int,
        salary decimal(10,2)
    );
mysql> desc doctor;
+---------------------+---------------+------+-----+---------+----------------+
| Field               | Type          | Null | Key | Default | Extra          |
+---------------------+---------------+------+-----+---------+----------------+
| doctor_id           | int           | NO   | PRI | NULL    | auto_increment |
| name                | varchar(50)   | YES  |     | NULL    |                |
| age                 | int           | YES  |     | NULL    |                |
| gender              | varchar(1)    | YES  |     | NULL    |                |
| city                | varchar(20)   | YES  |     | NULL    |                |
| specialization      | varchar(50)   | YES  |     | NULL    |                |
| experience          | int           | YES  |     | NULL    |                |
| salary              | decimal(10,2) | YES  |     | NULL    |                |
+---------------------+---------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)


mysql> insert into doctor (name,age,gender,city,specialization,experience,salary)
     VALUES
     ("ramesh",44,"m","Ahmedabad","brain surgeon",10,10474473.34),
     ("suresh",54,"m","Pune","brain surgeon",1,74473.34),
     ("jayesh",24,"m","Pune","bone",2,474473.34),
     ("rohit",31,"m","Dhule","brain surgeon",4,104473.34),
     ("riya",60,"f","Pune","brain surgeon",5,334473.34),
     ("priya",34,"f","Ahmedabad","accident spealist",10,474473.34),
     ("samadhan",39,"m","Mumbai","ear specialist",13,65473.34),
     ("rupesh",49,"m","Ahmedabad","eye specialist",12,58473.34),
     ("anita",29,"f","Ahmedabad","baby doctor",20,54473.34);
Query OK, 9 rows affected (0.01 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> select * from doctor;
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
| doctor_id | name     | age  | gender | city      | specialization    | experience | salary      |
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
|         1 | ramesh   |   44 | m      | Ahmedabad | brain surgeon     |         10 | 10474473.34 |
|         2 | suresh   |   54 | m      | Pune      | brain surgeon     |          1 |    74473.34 |
|         3 | jayesh   |   24 | m      | Pune      | bone              |          2 |   474473.34 |
|         4 | rohit    |   31 | m      | Dhule     | brain surgeon     |          4 |   104473.34 |
|         5 | riya     |   60 | f      | Pune      | brain surgeon     |          5 |   334473.34 |
|         6 | priya    |   34 | f      | Ahmedabad | accident spealist |         10 |   474473.34 |
|         7 | samadhan |   39 | m      | Mumbai    | ear specialist    |         13 |    65473.34 |
|         8 | rupesh   |   49 | m      | Ahmedabad | eye specialist    |         12 |    58473.34 |
|         9 | anita    |   29 | f      | Ahmedabad | baby doctor       |         20 |    54473.34 |
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
9 rows in set (0.00 sec)

mysql>
-- Q.3 Alter column "specialization" to "subject"
mysql> alter table doctor rename column specialization to subject;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0


-- Q.4 create a backup table for both tables prefix "bkup_"

mysql> Create table bkup_patients select * from patients;
Query OK, 9 rows affected (0.04 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> select * from bkup_patients;
+------------+----------+------+--------+-----------+-------------------+------------+-----------+
| patient_id | name     | age  | gender | city      | date_of_admission | status     | doctor_id |
+------------+----------+------+--------+-----------+-------------------+------------+-----------+
|         1  | nayan    |   44 | m      | Mumbai    | 2000-04-05        | admitted   |         6 |
|         2  | jayesh   |   54 | m      | Pune      | 1980-09-09        | admitted   |         7 |
|         3  | sanket   |   24 | m      | Pune      | 2010-12-09        | admitted   |         5 |
|         4  | rohit    |   31 | m      | Dhule     | 1999-10-11        | admitted   |         1 |
|         5  | ruchi    |   60 | f      | Pune      | 2002-04-01        | admitted   |         3 |
|         6  | anushka  |   34 | f      | Ahmedabad | 2002-04-01        | discharged |         2 |
|         7  | samadhan |   39 | m      | Mumbai    | 2012-02-01        | discharged |         4 |
|         8  | ravindra |   49 | m      | Ahmedabad | 1985-05-08        | discharged |         8 |
|         9  | divya    |   29 | f      | Jalgoan   | 2015-05-03        | discharged |         9 |
+------------+----------+------+--------+-----------+-------------------+------------+-----------+
9 rows in set (0.00 sec)


Create table bkup_doctor select * from doctor

mysql> Create table bkup_doctor select * from doctor
    ->
    -> ;
Query OK, 9 rows affected (0.04 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> select * from bkup_doctor;
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
| doctor_id | name     | age  | gender | city      | subject           | experience | salary      |
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
|         1 | ramesh   |   44 | m      | Ahmedabad | brain surgeon     |         10 | 10474473.34 |
|         2 | suresh   |   54 | m      | Pune      | brain surgeon     |          1 |    74473.34 |
|         3 | jayesh   |   24 | m      | Pune      | bone              |          2 |   474473.34 |
|         4 | rohit    |   31 | m      | Dhule     | brain surgeon     |          4 |   104473.34 |
|         5 | riya     |   60 | f      | Pune      | brain surgeon     |          5 |   334473.34 |
|         6 | priya    |   34 | f      | Ahmedabad | accident spealist |         10 |   474473.34 |
|         7 | samadhan |   39 | m      | Mumbai    | ear specialist    |         13 |    65473.34 |
|         8 | rupesh   |   49 | m      | Ahmedabad | eye specialist    |         12 |    58473.34 |
|         9 | anita    |   29 | f      | Ahmedabad | baby doctor       |         20 |    54473.34 |
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
9 rows in set (0.00 sec)


-- Q.5 find all the patients from pune and mumbai.
mysql> select * from patients where city = "Pune" or city = "Mumbai";
+------------+----------+------+--------+--------+-------------------+------------+-----------+
| patient_id | name     | age  | gender | city   | date_of_admission | status     | doctor_id |
+------------+----------+------+--------+--------+-------------------+------------+-----------+
|         19 | nayan    |   44 | m      | Mumbai | 2000-04-05        | admitted   |         6 |
|         20 | jayesh   |   54 | m      | Pune   | 1980-09-09        | admitted   |         7 |
|         21 | sanket   |   24 | m      | Pune   | 2010-12-09        | admitted   |         5 |
|         23 | ruchi    |   60 | f      | Pune   | 2002-04-01        | admitted   |         3 |
|         25 | samadhan |   39 | m      | Mumbai | 2012-02-01        | discharged |         4 |
+------------+----------+------+--------+--------+-------------------+------------+-----------+
5 rows in set (0.01 sec)

-- Q.6 Find all the doctors from "Ahmedabad" whose name starts with "A"
mysql> select * from doctor where city = "Ahmedabad" and name like "a%";
+-----------+--------+------+--------+-----------+-------------------+------------+-------------+
| doctor_id | name   | age  | gender | city      | subject           | experience | salary      |
+-----------+--------+------+--------+-----------+-------------------+------------+-------------+
|         9 | anita  |   29 | f      | Ahmedabad | baby doctor       |         20 |    54473.34 |
+-----------+--------+------+--------+-----------+-------------------+------------+-------------+
4 rows in set (0.01 sec)

-- Q.7 Find all the doctors who are having 4 or more than 4 years of Experience in treating patient.
mysql> select * from doctor where experience>=4;
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
| doctor_id | name     | age  | gender | city      | subject           | experience | salary      |
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
|         1 | ramesh   |   44 | m      | Ahmedabad | brain surgeon     |         10 | 10474473.34 |
|         4 | rohit    |   31 | m      | Dhule     | brain surgeon     |          4 |   104473.34 |
|         5 | riya     |   60 | f      | Pune      | brain surgeon     |          5 |   334473.34 |
|         6 | priya    |   34 | f      | Ahmedabad | accident spealist |         10 |   474473.34 |
|         7 | samadhan |   39 | m      | Mumbai    | ear specialist    |         13 |    65473.34 |
|         8 | rupesh   |   49 | m      | Ahmedabad | eye specialist    |         12 |    58473.34 |
|         9 | anita    |   29 | f      | Ahmedabad | baby doctor       |         20 |    54473.34 |
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
7 rows in set (0.00 sec)

-- Q.8 Increase salary of all the doctors by 1000 /- who are having more than 5 years of experience 
update doctor
set salary = salary + 1000
where years_of_experience > 5;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from doctor where experience > 5;
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
| doctor_id | name     | age  | gender | city      | subject           | experience | salary      |
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
|         1 | ramesh   |   44 | m      | Ahmedabad | brain surgeon     |         10 | 10475473.34 |
|         6 | priya    |   34 | f      | Ahmedabad | accident spealist |         10 |   475473.34 |
|         7 | samadhan |   39 | m      | Mumbai    | ear specialist    |         13 |    66473.34 |
|         8 | rupesh   |   49 | m      | Ahmedabad | eye specialist    |         12 |    59473.34 |
|         9 | anita    |   29 | f      | Ahmedabad | baby doctor       |         20 |    55473.34 |
+-----------+----------+------+--------+-----------+-------------------+------------+-------------+
5 rows in set (0.00 sec)

-- Q.9 find all the number of patients as per their respective city.
        -- Ex., pune-4 mumbai-5
mysql> select city, COUNT(*) AS number_of_patients
    -> from patients
    -> group by city;
+-----------+--------------------+
| city      | number_of_patients |
+-----------+--------------------+
| Mumbai    |                  2 |
| Pune      |                  3 |
| Dhule     |                  1 |
| Ahmedabad |                  3 |
+-----------+--------------------+
5 rows in set (0.01 sec)

-- Q.10 retrive patients records which have recorded (status is discharged) and were treated by doctors having more than 3 years of experience
mysql> select *
    -> from patients
    -> where status = 'discharged'
    ->   and doctor_id IN (
    ->     select doctor_id
    ->     from doctor
    ->     where experience > 3
    ->   );
+------------+----------+------+--------+-----------+-------------------+------------+-----------+
| patient_id | name     | age  | gender | city      | date_of_admission | status     | doctor_id |
+------------+----------+------+--------+-----------+-------------------+------------+-----------+
|         25 | samadhan |   39 | m      | Mumbai    | 2012-02-01        | discharged |         4 |
|         26 | ravindra |   49 | m      | Ahmedabad | 1985-05-08        | discharged |         8 |
|         27 | divya    |   29 | f      | Jalgoan   | 2015-05-03        | discharged |         9 |
+------------+----------+------+--------+-----------+-------------------+------------+-----------+
3 rows in set (0.00 sec)



-- Q.11 create backup tables without copying data of an existing table.
create table bkup_doctor2 like doctor
create table bkup_patients2 like patients

mysql> create table bkup_doctor2 like doctor
    -> ;
Query OK, 0 rows affected (0.03 sec)

mysql> create table bkup_patients2 like patients
    ->
    -> ;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from bkup_doctor2;
Empty set (0.00 sec)

mysql> select * from bkup_patients2;
Empty set (0.00 sec)

