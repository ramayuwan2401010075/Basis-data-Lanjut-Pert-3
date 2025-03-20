CREATE DATABASE Hotel 

CREATE TABLE KAMAR
(
   ID_KAMAR             VARCHAR(20) NOT NULL,
   TIPE_KAMAR           VARCHAR(20),
   HARGA                BIGINT,
   STATUS               VARCHAR(20),
   PRIMARY KEY (ID_KAMAR)
);

CREATE TABLE RESERVASI
(
   TAMU                 VARCHAR(20) NOT NULL,
   ID_KAMAR             VARCHAR(20) NOT NULL,
   CHECK_IN             DATE,
   CHECK_OUT            DATE,
   METODE_PEMBAYARAN    VARCHAR(20),
   STATUS               VARCHAR(20),
   PRIMARY KEY (TAMU, ID_KAMAR)
);

CREATE TABLE TAMU
(
   TAMU                 VARCHAR(20) NOT NULL,
   NAMA                 VARCHAR(20),
   ALAMAT               VARCHAR(20),
   NO_TELP              NUMERIC(20,0),
   EMAIL                VARCHAR(20),
   PRIMARY KEY (TAMU)
);
