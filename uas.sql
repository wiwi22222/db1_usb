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
       Name        |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------------+----------+----------+------------------------+------------------------+-----------------------
 informatika       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 penjualan_produk  | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 penjualan_produkk | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad            | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_g          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_infog      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_unsulbar   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakkad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa             | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakadd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 sssiakaddd        | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
                   |          |          |                        |                        | postgres=CTc/postgres
 template1         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
                   |          |          |                        |                        | postgres=CTc/postgres
(20 rows)


postgres=# \c pemasaran
connection to server at "localhost" (::1), port 5432 failed: FATAL:  database "pemasaran" does not exist
Previous connection kept
postgres=# \dt
           List of relations
 Schema |   Name    | Type  |  Owner
--------+-----------+-------+----------
 public | dosen     | table | postgres
 public | mahasiswa | table | postgres
(2 rows)


postgres=# \c pemasaran
connection to server at "localhost" (::1), port 5432 failed: FATAL:  database "pemasaran" does not exist
Previous connection kept
postgres=# create database pemasaran;
CREATE DATABASE
postgres=# \list
                                                 List of databases
       Name        |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------------+----------+----------+------------------------+------------------------+-----------------------
 informatika       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 pemasaran         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 penjualan_produk  | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 penjualan_produkk | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad            | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_g          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_infog      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_unsulbar   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakkad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa             | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakadd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 sssiakaddd        | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
                   |          |          |                        |                        | postgres=CTc/postgres
 template1         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
                   |          |          |                        |                        | postgres=CTc/postgres
(21 rows)


postgres=# \c pemasaran;
You are now connected to database "pemasaran" as user "postgres".
pemasaran=# create table produk(kode_produk varchar(30) not null primary key,nama_produk varchar (50),harga int);
CREATE TABLE
pemasaran=# \d produk;
                        Table "public.produk"
   Column    |         Type          | Collation | Nullable | Default
-------------+-----------------------+-----------+----------+---------
 kode_produk | character varying(30) |           | not null |
 nama_produk | character varying(50) |           |          |
 harga       | integer               |           |          |
Indexes:
    "produk_pkey" PRIMARY KEY, btree (kode_produk)


pemasaran=# create table supplier(nama varchar(50) not null primary key,telepon varchar (50),id int);
CREATE TABLE
pemasaran=# \d supplier;
                     Table "public.supplier"
 Column  |         Type          | Collation | Nullable | Default
---------+-----------------------+-----------+----------+---------
 nama    | character varying(50) |           | not null |
 telepon | character varying(50) |           |          |
 id      | integer               |           |          |
Indexes:
    "supplier_pkey" PRIMARY KEY, btree (nama)


pemasaran=# create table pelanggan(nama varchar(30) not null primary key,jeniskelamin varchar (50),telepon varchar(50));
CREATE TABLE
pemasaran=# \d pelanggan;
                       Table "public.pelanggan"
    Column    |         Type          | Collation | Nullable | Default
--------------+-----------------------+-----------+----------+---------
 nama         | character varying(30) |           | not null |
 jeniskelamin | character varying(50) |           |          |
 telepon      | character varying(50) |           |          |
Indexes:
    "pelanggan_pkey" PRIMARY KEY, btree (nama)


pemasaran=# \d produk;
                        Table "public.produk"
   Column    |         Type          | Collation | Nullable | Default
-------------+-----------------------+-----------+----------+---------
 kode_produk | character varying(30) |           | not null |
 nama_produk | character varying(50) |           |          |
 harga       | integer               |           |          |
Indexes:
    "produk_pkey" PRIMARY KEY, btree (kode_produk)


pemasaran=# insert into produk (kode_produk,nama_produk,harga) values ('G1','sepatu balet',65.000),('G2','baju kaos',90.000),('G3','jilbab square',25.000),('G4','jeans',165.000),('G5','hoodie',250.000),('G6','kaos kaki',15.000),('G7','sarung tangan',45.000),('G8','sendal',50.000),('G9','rok',120.000),('G10','gamis',210.000),('G11','topi',35.000),('G12','tas',75.000),('G13','dompet',65.000),('G14','switer',110.000),('G15','masker',20.000);
INSERT 0 15
pemasaran=# select * from produk;
 kode_produk |  nama_produk  | harga
-------------+---------------+-------
 G1          | sepatu balet  |    65
 G2          | baju kaos     |    90
 G3          | jilbab square |    25
 G4          | jeans         |   165
 G5          | hoodie        |   250
 G6          | kaos kaki     |    15
 G7          | sarung tangan |    45
 G8          | sendal        |    50
 G9          | rok           |   120
 G10         | gamis         |   210
 G11         | topi          |    35
 G12         | tas           |    75
 G13         | dompet        |    65
 G14         | switer        |   110
 G15         | masker        |    20
(15 rows)


pemasaran=# \d supplier;
                     Table "public.supplier"
 Column  |         Type          | Collation | Nullable | Default
---------+-----------------------+-----------+----------+---------
 nama    | character varying(50) |           | not null |
 telepon | character varying(50) |           |          |
 id      | integer               |           |          |
Indexes:
    "supplier_pkey" PRIMARY KEY, btree (nama)


                                                             ^
pemasaran=# insert into supplier (nama,telepon,id) values ('carrefour','085222333444',01),('benang','085222444333',02),('kain','085109555210',03),('spetio','082222345678',04),('applestory','085123456789',05),('garudaindonesia','085987654321',06),('lionkoper','082103445289',07),('ammeren','085567888211',08),('pitney bowes','083669421988',09),('oracle','0852667809122',010),('dell corp','0852678234122',011),('mobility','082569811234',012),('corporation','085756322999',013),('walmart','083276659954',014),('payments','085523123456',015);
INSERT 0 15
pemasaran=# select * from supplier;
      nama       |    telepon    | id
-----------------+---------------+----
 carrefour       | 085222333444  |  1
 benang          | 085222444333  |  2
 kain            | 085109555210  |  3
 spetio          | 082222345678  |  4
 applestory      | 085123456789  |  5
 garudaindonesia | 085987654321  |  6
 lionkoper       | 082103445289  |  7
 ammeren         | 085567888211  |  8
 pitney bowes    | 083669421988  |  9
 oracle          | 085266780912  | 10
 dell corp       | 085267823412  | 11
 mobility        | 082569811234  | 12
 corporation     | 085756322999  | 13
 walmart         | 083276659954  | 14
 payments        | 085523123456  | 15
(15 rows)


pemasaran=# \d pelanggan;
                       Table "public.pelanggan"
    Column    |         Type          | Collation | Nullable | Default
--------------+-----------------------+-----------+----------+---------
 nama         | character varying(30) |           | not null |
 jeniskelamin | character varying(50) |           |          |
 telepon      | character varying(50) |           |          |
Indexes:
    "pelanggan_pkey" PRIMARY KEY, btree (nama)


pemasaran=# insert into pelanggan (nama,jeniskelamin,telepon) values ('marwa','perempuan','085222333444'),('berlian','perempuan','085222444333'),('dipa','perempuan','085109555210'),('lisa','perempuan','082222345678'),('ramdani','laki-laki','085123456789'),('topik','laki-laki','085987654321'),('salin','laki-laki','082103445289'),('iting','laki-laki','085567888211'),('rasul','laki-laki','083669421988'),('aqsha','laki-laki','0852667809122'),('acca','perempuan','0852678234122'),('nana','perempuan','082569811234'),('ecce','perempuan','085756322999'),('gusmi','perempuan','083276659954'),('mute','perempuan','085523123456');
INSERT 0 15
pemasaran=# select * from pelanggan;
  nama   | jeniskelamin |    telepon
---------+--------------+---------------
 marwa   | perempuan    | 085222333444
 berlian | perempuan    | 085222444333
 dipa    | perempuan    | 085109555210
 lisa    | perempuan    | 082222345678
 ramdani | laki-laki    | 085123456789
 topik   | laki-laki    | 085987654321
 salin   | laki-laki    | 082103445289
 iting   | laki-laki    | 085567888211
 rasul   | laki-laki    | 083669421988
 aqsha   | laki-laki    | 085266780912
 acca    | perempuan    | 085267823412
 nana    | perempuan    | 082569811234
 ecce    | perempuan    | 085756322999
 gusmi   | perempuan    | 083276659954
 mute    | perempuan    | 085523123456
(15 rows)


pemasaran=#