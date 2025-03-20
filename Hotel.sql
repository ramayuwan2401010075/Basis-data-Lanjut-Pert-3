/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     20/03/2025 14:25:04                          */
/*==============================================================*/


drop table if exists KAMAR;

drop table if exists RESERVASI;

drop table if exists TAMU;

/*==============================================================*/
/* Table: KAMAR                                                 */
/*==============================================================*/
create table KAMAR
(
   ID_KAMAR             varchar(20) not null,
   TIPE_KAMAR           varchar(20),
   HARGA                bigint,
   STATUS               varchar(20),
   primary key (ID_KAMAR)
);

/*==============================================================*/
/* Table: RESERVASI                                             */
/*==============================================================*/
create table RESERVASI
(
   TAMU                 varchar(20) not null,
   ID_KAMAR             varchar(20) not null,
   CHECK_IN             date,
   CHECK_OUT            date,
   METODE_PEMBAYARAN    varchar(20),
   STATUS               varchar(20),
   primary key (TAMU, ID_KAMAR)
);

/*==============================================================*/
/* Table: TAMU                                                  */
/*==============================================================*/
create table TAMU
(
   TAMU                 varchar(20) not null,
   NAMA                 varchar(20),
   ALAMAT               varchar(20),
   NO_TELP              numeric(20,0),
   EMAIL                varchar(20),
   primary key (TAMU)
);

alter table RESERVASI add constraint FK_RESERVASI foreign key (TAMU)
      references TAMU (TAMU) on delete restrict on update restrict;

alter table RESERVASI add constraint FK_RESERVASI2 foreign key (ID_KAMAR)
      references KAMAR (ID_KAMAR) on delete restrict on update restrict;

