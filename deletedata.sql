Microsoft Windows [Version 10.0.22000.1219]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO>cd "C:\Program Files\PostgreSQL\14\bin"

C:\Program Files\PostgreSQL\14\bin>psgl -U  postgres -h localhost
'psgl' is not recognized as an internal or external command,
operable program or batch file.

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
 siakad    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0 | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
           |          |          |                        |                        | postgres=CTc/postgres
 template1 | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
           |          |          |                        |                        | postgres=CTc/postgres
(4 rows)


postgres=# \c siakad
You are now connected to database "siakad" as user "postgres".
siakad=# \dt
           List of relations
 Schema |   Name    | Type  |  Owner
--------+-----------+-------+----------
 public | dosen     | table | postgres
 public | kuliah    | table | postgres
 public | mahasiswa | table | postgres
(3 rows)



siakad=# select * from mahasiswa;
   nim    |      nama      |    prodi
----------+----------------+-------------
 D0221095 | wiwi lestiani  | informatika
 D0221358 | ida musdalifah | informatika
 D0221361 | mutmainnah     | informatika
(3 rows)


siakad=# delete from mahasiswa where nim='D0221361';
DELETE 1
siakad=# select * from mahasiswa ;
   nim    |      nama      |    prodi
----------+----------------+-------------
 D0221095 | wiwi lestiani  | informatika
 D0221358 | ida musdalifah | informatika
(2 rows)


siakad=# select * from kuliah;
 kode_makul |       nama_makul        | sks | semeter
------------+-------------------------+-----+---------
 INF183219  | Aplikasi Komputer       |   2 |       3
 INF123319  | Basis Data I            |   2 |       3
 INF173319  | Pengembangan Multimedia |   3 |       3
(3 rows)


siakad=# delete from kuliah where kode_makul='INF173319';
DELETE 1
siakad=# select * from kuliah;
 kode_makul |    nama_makul     | sks | semeter
------------+-------------------+-----+---------
 INF183219  | Aplikasi Komputer |   2 |       3
 INF123319  | Basis Data I      |   2 |       3
(2 rows)


siakad=# select * from dosen;
   nidn   |               nama               | program_studi
----------+----------------------------------+---------------
 15018805 | Dr. Eng. Amry Dasar, ST., M.Eng. | sipil
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT.  | informatika
 31077904 | Indra                            | informatika
(3 rows)


siakad=# delete from dosen where nidn=15018805;
DELETE 1
siakad=# select * from dosen;
   nidn   |              nama               | program_studi
----------+---------------------------------+---------------
 17038904 | Dr. Eng. Sulfayanti, S.Si., MT. | informatika
 31077904 | Indra                           | informatika
(2 rows)


siakad=#