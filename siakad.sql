Microsoft Windows [Version 10.0.22000.1219]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO>cd "C:\Program Files\PostgreSQL\14\bin"

C:\Program Files\PostgreSQL\14\bin>psql -U postgres -h localhost
Password for user postgres:
psql (14.6)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \list
                                             List of databases
   Name    |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-----------+----------+----------+------------------------+------------------------+-----------------------
 postgres  | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0 | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
           |          |          |                        |                        | postgres=CTc/postgres
 template1 | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
           |          |          |                        |                        | postgres=CTc/postgres
(3 rows)


postgres=# create database siakad;
CREATE DATABASE
postgres=# \list
                                             List of databases
   Name    |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-----------+----------+----------+------------------------+------------------------+-----------------------
 postgres  | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0 | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
           |          |          |                        |                        | postgres=CTc/postgres
 template1 | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
           |          |          |                        |                        | postgres=CTc/postgres
(4 rows)


postgres=# \c siakad
You are now connected to database "siakad" as user "postgres".
siakad=# create table mahasiswa(nim varchar(30) not null primary key,nama varchar (50),prodi varchar(50));
CREATE TABLE
siakad=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


siakad=# create table dosen(nidn int not null primary key,nama varchar (50), program_studi varchar(50));
CREATE TABLE
siakad=# \d dosen;
                          Table "public.dosen"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 nidn          | integer               |           | not null |
 nama          | character varying(50) |           |          |
 program_studi | character varying(50) |           |          |
Indexes:
    "dosen_pkey" PRIMARY KEY, btree (nidn)


siakad=# create table kuliah(kode_makul varchar(30) not null primary key,nama_makul varchar (50), sks int,semeter int);
CREATE TABLE
siakad=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semeter    | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)



siakad=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


siakad=# insert into mahasiswa (nim,nama,prodi) values ('D0221095','wiwi lestiani','informatika'),('D0221361','Mutmainnah','informatika'),('D0221358','ida musdalifah','informatika');
INSERT 0 3
siakad=# select * from mahasiswa;
   nim    |      nama      |    prodi
----------+----------------+-------------
 D0221095 | wiwi lestiani  | informatika
 D0221361 | Mutmainnah     | informatika
 D0221358 | ida musdalifah | informatika
(3 rows)

siakad=# insert into dosen (nidn,nama,program_studi) values (0015018805,'Dr. Eng. Amry Dasar, ST., M.Eng.','sipil'),(0017038904,'Dr. Eng. Sulfayanti, S.Si., MT.','informatika'),(0031077904,'Indra, S.Kom., M.M','informatika');
INSERT 0 3
siakad=# select * from dosen;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra, S.Kom., M.M               | informatika
(3 rows)


siakad=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semeter    | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)

siakad=# insert into kuliah (kode_makul,nama_makul,sks,semeter) values ('INF183219','Aplikasi Komputer',2,3),('INF173319','Pengembangan Multimedia',3,3),('INF123319','Basis Data I',2,3);
INSERT 0 3
siakad=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semeter
------------+-------------------------+-----+---------
 INF183219  | Aplikasi Komputer       |   2 |       3
 INF173319  | Pengembangan Multimedia |   3 |       3
 INF123319  | Basis Data I            |   2 |       3
(3 rows)


siakad=#


siakad=# select * from mahasiswa;
   nim    |      nama      |    prodi
----------+----------------+-------------
 D0221095 | wiwi lestiani  | informatika
 D0221361 | Mutmainnah     | informatika
 D0221358 | ida musdalifah | informatika
(3 rows)


siakad=# update mahasiswa set nama='mutmainnah' where nim = 'D0221361';
UPDATE 1
siakad=# select * from mahasiswa;
   nim    |      nama      |    prodi
----------+----------------+-------------
 D0221095 | wiwi lestiani  | informatika
 D0221358 | ida musdalifah | informatika
 D0221361 | mutmainnah     | informatika
(3 rows)


siakad=# select * from dosen ;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra, S.Kom., M.M               | informatika
(3 rows)

                         ^



siakad=# update dosen set nama='Indra' where nidn =  31077904;
UPDATE 1
siakad=# select * from dosen ;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra                            | informatika
(3 rows)


siakad=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semeter
------------+-------------------------+-----+---------
 INF183219  | Aplikasi Komputer       |   2 |       3
 INF173319  | Pengembangan Multimedia |   3 |       3
 INF123319  | Basis Data I            |   2 |       3
(3 rows)


siakad=# update kuliah set sks=3 where kode_makul='INF173319';
UPDATE 1
siakad=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semeter
------------+-------------------------+-----+---------
 INF183219  | Aplikasi Komputer       |   2 |       3
 INF123319  | Basis Data I            |   2 |       3
 INF173319  | Pengembangan Multimedia |   3 |       3
(3 rows)


siakad=#


