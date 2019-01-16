/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     2018-12-18 10:58:59                          */
/*==============================================================*/


drop table IF EXISTS t_message;

/*==============================================================*/
/* Table: t_message                                       */
/*==============================================================*/
create table t_message (
   id                   INT8                 not null,
   phone                VARCHAR(50)         null,
   code                 VARCHAR(10)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_MESSAGE primary key (id)
);

comment on table t_message is
'短信';

comment on column t_message.phone is
'标题';

comment on column t_message.code is
'摘要';

comment on column t_message.status is
'状态';

comment on column t_message.create_user is
'创建人';

comment on column t_message.create_time is
'创建时间';

comment on column t_message.update_user is
'修改人';

comment on column t_message.update_time is
'修改时间';

comment on column t_message.flag is
'标识';
