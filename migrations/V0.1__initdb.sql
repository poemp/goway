/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     2018-12-18 10:58:59                          */
/*==============================================================*/


drop table IF EXISTS t_market_information;

drop table IF EXISTS t_arms;

drop table IF EXISTS t_data_download;

drop table IF EXISTS t_depart;

drop table IF EXISTS t_equip_type;

drop table IF EXISTS t_equipment;

drop table IF EXISTS t_file;

drop table IF EXISTS t_industry;

drop table IF EXISTS t_link;

drop table IF EXISTS t_management_regulation;

drop table IF EXISTS t_news;

drop table IF EXISTS t_supplier_type;

drop table IF EXISTS t_ordering_meals;

drop table IF EXISTS t_party;

drop table IF EXISTS t_quality_deal;

drop table IF EXISTS t_quality_event;

drop table IF EXISTS t_quality_notice;

drop table IF EXISTS t_reports;

drop table IF EXISTS t_role;

drop table IF EXISTS t_room_reservation;

drop table IF EXISTS t_subject;

drop table IF EXISTS t_supplier;

drop table IF EXISTS t_tender_orgation;

drop table IF EXISTS t_user;

drop table IF EXISTS t_vehicle_pick;

drop table IF EXISTS t_work_dynamics;

/*==============================================================*/
/* Table: t_market_information                                   */
/*==============================================================*/
create table t_market_information (
   id                   INT8                 not null,
   title                VARCHAR(200)         null,
   industry             INT8                 null,
   top                  BOOL                 null,
   content              TEXT                 null,
   read_count           INT8                 null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK__MARKET_INFORMATION primary key (id)
);

comment on table t_market_information is
'市场信息';

comment on column t_market_information.title is
'标题';

comment on column t_market_information.industry is
'摘要';

comment on column t_market_information.top is
'置顶';

comment on column t_market_information.content is
'内容';

comment on column t_market_information.read_count is
'阅读量';

comment on column t_market_information.status is
'状态';

comment on column t_market_information.create_user is
'创建人';

comment on column t_market_information.create_time is
'创建时间';

comment on column t_market_information.update_user is
'修改人';

comment on column t_market_information.update_time is
'修改时间';

comment on column t_market_information.flag is
'标识';

/*==============================================================*/
/* Table: t_arms                                                */
/*==============================================================*/
create table t_arms (
   id                   INT8                 not null,
   title                VARCHAR(200)         null,
   attachment           INT8                 null,
   content              TEXT                 null,
   read_count           INT8                 null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_ARMS primary key (id)
);

comment on table t_arms is
'强军管理';

comment on column t_arms.title is
'标题';

comment on column t_arms.attachment is
'附件';

comment on column t_arms.content is
'内容';

comment on column t_arms.read_count is
'阅读量';

comment on column t_arms.status is
'状态';

comment on column t_arms.create_user is
'创建人';

comment on column t_arms.create_time is
'创建时间';

comment on column t_arms.update_user is
'修改人';

comment on column t_arms.update_time is
'修改时间';

comment on column t_arms.flag is
'标识';

/*==============================================================*/
/* Table: t_data_download                                       */
/*==============================================================*/
create table t_data_download (
   id                   INT8                 not null,
   report_name          VARCHAR(50)          null,
   subject_id           VARCHAR(200)         null,
   downloads            INT4                 null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_DATA_DOWNLOAD primary key (id)
);

comment on table t_data_download is
'资料下载';

comment on column t_data_download.report_name is
'资料名称';

comment on column t_data_download.subject_id is
'学科';

comment on column t_data_download.downloads is
'下载量';

comment on column t_data_download.status is
'状态';

comment on column t_data_download.create_user is
'创建人';

comment on column t_data_download.create_time is
'创建时间';

comment on column t_data_download.update_user is
'修改人';

comment on column t_data_download.update_time is
'修改时间';

comment on column t_data_download.flag is
'标识';

/*==============================================================*/
/* Table: t_depart                                              */
/*==============================================================*/
create table t_depart (
   id                   INT8                 not null,
   name                 VARCHAR(100)         null,
   status               INT4                 null,
   create_time          TIMESTAMP            null,
   update_time          TIMESTAMP            null,
   create_user          INT8                 null,
   update_user          INT8                 null,
   flag                 BOOL                 null,
   constraint PK_T_DEPART primary key (id)
);

comment on table t_depart is
'部门';

comment on column t_depart.name is
'名字';

comment on column t_depart.status is
'状态';

comment on column t_depart.create_time is
'创建时间';

comment on column t_depart.update_time is
'修改时间';

comment on column t_depart.create_user is
'创建人';

comment on column t_depart.update_user is
'修改人';

comment on column t_depart.flag is
'标记';

/*==============================================================*/
/* Table: t_equip_type                                          */
/*==============================================================*/
create table t_equip_type (
   id                   INT8                 not null,
   name                 VARCHAR(200)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_EQUIP_TYPE primary key (id)
);

comment on table t_equip_type is
'设备类型';

comment on column t_equip_type.name is
'名字';

comment on column t_equip_type.status is
'状态';

comment on column t_equip_type.create_user is
'创建人';

comment on column t_equip_type.create_time is
'创建时间';

comment on column t_equip_type.update_user is
'修改人';

comment on column t_equip_type.update_time is
'修改时间';

comment on column t_equip_type.flag is
'标识';

/*==============================================================*/
/* Table: t_equipment                                           */
/*==============================================================*/
create table t_equipment (
   id                   INT8                 not null,
   code                 VARCHAR(200)         null,
   name                 VARCHAR(200)         null,
   equip_type           INT8                 null,
   format               VARCHAR(100)         null,
   package_format       VARCHAR(100)         null,
   measurement          VARCHAR(100)         null,
   standard             VARCHAR(100)         null,
   manufacture_date     TIMESTAMP            null,
   validity             TIMESTAMP            null,
   supplier_id          INT8                 null,
   images               INT8                 null,
   remark               VARCHAR(500)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_EQUIPMENT primary key (id)
);

comment on table t_equipment is
'新闻';

comment on column t_equipment.code is
'设备编号';

comment on column t_equipment.name is
'设备名称';

comment on column t_equipment.equip_type is
'设备类型';

comment on column t_equipment.format is
'规格';

comment on column t_equipment."package_format" is
'包装规格';

comment on column t_equipment.measurement is
'计量单位';

comment on column t_equipment.standard is
'标准或批号';

comment on column t_equipment.manufacture_date is
'生产日期';

comment on column t_equipment.validity is
'有效期';

comment on column t_equipment.supplier_id is
'供应商';

comment on column t_equipment.images is
'图片';

comment on column t_equipment.remark is
'备注';

comment on column t_equipment.status is
'状态';

comment on column t_equipment.create_user is
'创建人';

comment on column t_equipment.create_time is
'创建时间';

comment on column t_equipment.update_user is
'修改人';

comment on column t_equipment.update_time is
'修改时间';

comment on column t_equipment.flag is
'标识';

/*==============================================================*/
/* Table: t_file                                                */
/*==============================================================*/
create table t_file (
   id                   INT8                 not null,
   name                 VARCHAR(200)         null,
   file_type            VARCHAR(200)         null,
   file_url             VARCHAR(500)         null,
   file_size            INT8                 null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_FILE primary key (id)
);

comment on table t_file is
'文件';

comment on column t_file.name is
'名字';

comment on column t_file.file_type is
'文件类型';

comment on column t_file.file_size is
'文件大小';

comment on column t_file.status is
'状态';

comment on column t_file.create_user is
'创建人';

comment on column t_file.create_time is
'创建时间';

comment on column t_file.update_user is
'修改人';

comment on column t_file.update_time is
'修改时间';

comment on column t_file.flag is
'标识';

/*==============================================================*/
/* Table: t_industry                                            */
/*==============================================================*/
create table t_industry (
   id                   INT8                 not null,
   name                 VARCHAR(200)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_INDUSTRY primary key (id)
);

comment on table t_industry is
'行业';

comment on column t_industry.name is
'标题';

comment on column t_industry.status is
'状态';

comment on column t_industry.create_user is
'创建人';

comment on column t_industry.create_time is
'创建时间';

comment on column t_industry.update_user is
'修改人';

comment on column t_industry.update_time is
'修改时间';

comment on column t_industry.flag is
'标识';

/*==============================================================*/
/* Table: t_link                                                */
/*==============================================================*/
create table t_link (
   id                   INT8                 not null,
   name                 VARCHAR(50)          null,
   link                 VARCHAR(200)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_LINK primary key (id)
);

comment on table t_link is
'外部链接';

comment on column t_link.name is
'名字';

comment on column t_link.link is
'地址';

comment on column t_link.status is
'状态';

comment on column t_link.create_user is
'创建人';

comment on column t_link.create_time is
'创建时间';

comment on column t_link.update_user is
'修改人';

comment on column t_link.update_time is
'修改时间';

comment on column t_link.flag is
'标识';

/*==============================================================*/
/* Table: t_management_regulation                               */
/*==============================================================*/
create table t_management_regulation (
   id                   INT8                 not null,
   title                VARCHAR(200)         null,
   depart_id            INT8                 null,
   top                  BOOL                 null,
   content              TEXT                 null,
   read_count           INT8                 null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_MANAGEMENT_REGULATION primary key (id)
);

comment on table t_management_regulation is
'管理规定';

comment on column t_management_regulation.title is
'标题';

comment on column t_management_regulation.depart_id is
'发布部门';

comment on column t_management_regulation.top is
'置顶';

comment on column t_management_regulation.content is
'内容';

comment on column t_management_regulation.read_count is
'阅读量';

comment on column t_management_regulation.status is
'状态';

comment on column t_management_regulation.create_user is
'创建人';

comment on column t_management_regulation.create_time is
'创建时间';

comment on column t_management_regulation.update_user is
'修改人';

comment on column t_management_regulation.update_time is
'修改时间';

comment on column t_management_regulation.flag is
'标识';

/*==============================================================*/
/* Table: t_news                                                */
/*==============================================================*/
create table t_news (
   id                   INT8                 not null,
   title                VARCHAR(200)         null,
   abstract             VARCHAR(200)         null,
   face                 INT8                 null,
   top                  BOOL                 null,
   content              TEXT                 null,
   read_count           INT8                 null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_NEWS primary key (id)
);

comment on table t_news is
'新闻';

comment on column t_news.title is
'标题';

comment on column t_news.abstract is
'摘要';

comment on column t_news.face is
'封面';

comment on column t_news.top is
'置顶';

comment on column t_news.content is
'内容';

comment on column t_news.read_count is
'阅读量';

comment on column t_news.status is
'状态';

comment on column t_news.create_user is
'创建人';

comment on column t_news.create_time is
'创建时间';

comment on column t_news.update_user is
'修改人';

comment on column t_news.update_time is
'修改时间';

comment on column t_news.flag is
'标识';

/*==============================================================*/
/* Table: t_supplier_type                                       */
/*==============================================================*/
create table t_supplier_type (
   id                   INT8                 not null,
   name                 VARCHAR(200)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_SUPPLIER_TYPE primary key (id)
);

comment on table t_supplier_type is
'供应商类型';

comment on column t_supplier_type.name is
'名字';

comment on column t_supplier_type.status is
'状态';

comment on column t_supplier_type.create_user is
'创建人';

comment on column t_supplier_type.create_time is
'创建时间';

comment on column t_supplier_type.update_user is
'修改人';

comment on column t_supplier_type.update_time is
'修改时间';

comment on column t_supplier_type.flag is
'标识';

/*==============================================================*/
/* Table: t_ordering_meals                                      */
/*==============================================================*/
create table t_ordering_meals (
   id                   INT8                 not null,
   name                 VARCHAR(200)         null,
   idnum                VARCHAR(200)         null,
   phone                VARCHAR(20)          null,
   workers              VARCHAR(200)         null,
   eats_count           INT4                 null,
   eat_time             TIMESTAMP            null,
   remark               VARCHAR(200)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_ORDERING_MEALS primary key (id)
);

comment on table t_ordering_meals is
'网上订餐';

comment on column t_ordering_meals.name is
'用餐人姓名';

comment on column t_ordering_meals.idnum is
'身份证';

comment on column t_ordering_meals.phone is
'联系电话';

comment on column t_ordering_meals.workers is
'工作单位';

comment on column t_ordering_meals.eats_count is
'用餐人数';

comment on column t_ordering_meals.eat_time is
'用餐时间';

comment on column t_ordering_meals.remark is
'备注';

comment on column t_ordering_meals.status is
'状态';

comment on column t_ordering_meals.create_user is
'创建人';

comment on column t_ordering_meals.create_time is
'创建时间';

comment on column t_ordering_meals.update_user is
'修改人';

comment on column t_ordering_meals.update_time is
'修改时间';

comment on column t_ordering_meals.flag is
'标识';

/*==============================================================*/
/* Table: t_party                                               */
/*==============================================================*/
create table t_party (
   id                   INT8                 not null,
   title                VARCHAR(200)         null,
   attachment           INT8                 null,
   content              TEXT                 null,
   read_count           INT8                 null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_PARTY primary key (id)
);

comment on table t_party is
'新闻';

comment on column t_party.title is
'标题';

comment on column t_party.attachment is
'封面';

comment on column t_party.content is
'内容';

comment on column t_party.read_count is
'阅读量';

comment on column t_party.status is
'状态';

comment on column t_party.create_user is
'创建人';

comment on column t_party.create_time is
'创建时间';

comment on column t_party.update_user is
'修改人';

comment on column t_party.update_time is
'修改时间';

comment on column t_party.flag is
'标识';

/*==============================================================*/
/* Table: t_quality_deal                                        */
/*==============================================================*/
create table t_quality_deal (
   id                   INT8                 not null,
   supplier_id          INT8                 null,
   materials            VARCHAR(200)         null,
   deal_start_time      TIMESTAMP            null,
   deal_end_time        TIMESTAMP            null,
   remark               VARCHAR(200)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_QUALITY_DEAL primary key (id)
);

comment on table t_quality_deal is
'质量处理';

comment on column t_quality_deal.supplier_id is
'供应商';

comment on column t_quality_deal.materials is
'涉及物料';

comment on column t_quality_deal.deal_start_time is
'处理开始时间';

comment on column t_quality_deal.deal_end_time is
'处理结束时间';

comment on column t_quality_deal.remark is
'事件描述';

comment on column t_quality_deal.status is
'状态';

comment on column t_quality_deal.create_user is
'创建人';

comment on column t_quality_deal.create_time is
'创建时间';

comment on column t_quality_deal.update_user is
'修改人';

comment on column t_quality_deal.update_time is
'修改时间';

comment on column t_quality_deal.flag is
'标识';

/*==============================================================*/
/* Table: t_quality_event                                       */
/*==============================================================*/
create table t_quality_event (
   id                   INT8                 not null,
   name                 VARCHAR(200)         null,
   event_level          INT8                 null,
   supplier_id          INT8                 null,
   materials            VARCHAR(200)         null,
   occurrence_time      TIMESTAMP            null,
   depart_id            INT4                 null,
   remark               VARCHAR(200)         null,
   top                  BOOL                 null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_QUALITY_EVENT primary key (id)
);

comment on table t_quality_event is
'质量事件';

comment on column t_quality_event.name is
'事件名称';

comment on column t_quality_event.event_level is
'事件级别';

comment on column t_quality_event.supplier_id is
'供应商';

comment on column t_quality_event.materials is
'涉及物料';

comment on column t_quality_event.occurrence_time is
'发生时间';

comment on column t_quality_event.depart_id is
'发生部门';

comment on column t_quality_event.remark is
'事件描述';

comment on column t_quality_event.top is
'置顶';

comment on column t_quality_event.status is
'状态';

comment on column t_quality_event.create_user is
'创建人';

comment on column t_quality_event.create_time is
'创建时间';

comment on column t_quality_event.update_user is
'修改人';

comment on column t_quality_event.update_time is
'修改时间';

comment on column t_quality_event.flag is
'标识';

/*==============================================================*/
/* Table: t_quality_notice                                      */
/*==============================================================*/
create table t_quality_notice (
   id                   INT8                 not null,
   title                VARCHAR(200)         null,
   top                  BOOL                 null,
   content              TEXT                 null,
   read_count           INT8                 null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_QUALITY_NOTICE primary key (id)
);

comment on table t_quality_notice is
'质量公告';

comment on column t_quality_notice.title is
'标题';

comment on column t_quality_notice.top is
'置顶';

comment on column t_quality_notice.content is
'内容';

comment on column t_quality_notice.read_count is
'阅读量';

comment on column t_quality_notice.status is
'状态';

comment on column t_quality_notice.create_user is
'创建人';

comment on column t_quality_notice.create_time is
'创建时间';

comment on column t_quality_notice.update_user is
'修改人';

comment on column t_quality_notice.update_time is
'修改时间';

comment on column t_quality_notice.flag is
'标识';

/*==============================================================*/
/* Table: t_reports                                             */
/*==============================================================*/
create table t_reports (
   id                   INT8                 not null,
   report_name          VARCHAR(50)          null,
   works                VARCHAR(200)         null,
   phone                VARCHAR(20)          null,
   title                VARCHAR(200)         null,
   report_time          TIMESTAMP            null,
   deal_time            TIMESTAMP            null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_REPORTS primary key (id)
);

comment on table t_reports is
'投诉举报';

comment on column t_reports.status is
'状态';

comment on column t_reports.create_user is
'创建人';

comment on column t_reports.create_time is
'创建时间';

comment on column t_reports.update_user is
'修改人';

comment on column t_reports.update_time is
'修改时间';

comment on column t_reports.flag is
'标识';

/*==============================================================*/
/* Table: t_role                                                */
/*==============================================================*/
create table t_role (
   id                   INT8                 not null,
   name                 VARCHAR(100)         null,
   remark               VARCHAR(200)         null,
   admin                BOOL                 null,
   status               INT4                 null,
   create_time          TIMESTAMP            null,
   update_time          TIMESTAMP            null,
   create_user          INT8                 null,
   update_user          INT8                 null,
   flag                 BOOL                 null,
   constraint PK_T_ROLE primary key (id)
);

comment on table t_role is
'角色';

comment on column t_role.name is
'名字';

comment on column t_role.remark is
'描述';

comment on column t_role.admin is
'是否是admin';

comment on column t_role.status is
'状态';

comment on column t_role.create_time is
'创建时间';

comment on column t_role.update_time is
'修改时间';

comment on column t_role.create_user is
'创建人';

comment on column t_role.update_user is
'修改人';

comment on column t_role.flag is
'标记';

/*==============================================================*/
/* Table: t_room_reservation                                    */
/*==============================================================*/
create table t_room_reservation (
   id                   INT8                 not null,
   name                 VARCHAR(200)         null,
   idnum                VARCHAR(200)         null,
   workers              VARCHAR(200)         null,
   persons              INT4                 null,
   rooms                INT4                 null,
   living_time          TIMESTAMP            null,
   remark               VARCHAR(200)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_ROOM_RESERVATION primary key (id)
);

comment on table t_room_reservation is
'客房预订';

comment on column t_room_reservation.name is
'房客姓名';

comment on column t_room_reservation.idnum is
'身份证';

comment on column t_room_reservation.workers is
'工作单位';

comment on column t_room_reservation.persons is
'入住人数';

comment on column t_room_reservation.rooms is
'预订房间数';

comment on column t_room_reservation.living_time is
'入住时间';

comment on column t_room_reservation.remark is
'备注';

comment on column t_room_reservation.status is
'状态';

comment on column t_room_reservation.create_user is
'创建人';

comment on column t_room_reservation.create_time is
'创建时间';

comment on column t_room_reservation.update_user is
'修改人';

comment on column t_room_reservation.update_time is
'修改时间';

comment on column t_room_reservation.flag is
'标识';

/*==============================================================*/
/* Table: t_subject                                             */
/*==============================================================*/
create table t_subject (
   id                   INT8                 not null,
   name                 VARCHAR(200)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_SUBJECT primary key (id)
);

comment on table t_subject is
'学科';

comment on column t_subject.name is
'标题';

comment on column t_subject.status is
'状态';

comment on column t_subject.create_user is
'创建人';

comment on column t_subject.create_time is
'创建时间';

comment on column t_subject.update_user is
'修改人';

comment on column t_subject.update_time is
'修改时间';

comment on column t_subject.flag is
'标识';

/*==============================================================*/
/* Table: t_supplier                                            */
/*==============================================================*/
create table t_supplier (
   id                   INT8                 not null,
   name                 VARCHAR(200)         null,
   type                 INT8                 null,
   region               VARCHAR(200)         null,
   address              VARCHAR(500)         null,
   social_credit_code   VARCHAR(50)          null,
   regist_date          TIMESTAMP            null,
   legal_person         VARCHAR(20)          null,
   legal_person_name    VARCHAR(50)          null,
   contacts_user_name   VARCHAR(50)          null,
   contacts_use_idnum   VARCHAR(50)          null,
   phone                VARCHAR(50)          null,
   logo                 INT8                 null,
   remark               VARCHAR(500)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_SUPPLIER primary key (id)
);

comment on table t_supplier is
'供应商';

comment on column t_supplier.name is
'标题';

comment on column t_supplier.type is
'摘要';

comment on column t_supplier.region is
'封面';

comment on column t_supplier.address is
'置顶';

comment on column t_supplier.social_credit_code is
'内容';

comment on column t_supplier.regist_date is
'阅读量';

comment on column t_supplier.status is
'状态';

comment on column t_supplier.create_user is
'创建人';

comment on column t_supplier.create_time is
'创建时间';

comment on column t_supplier.update_user is
'修改人';

comment on column t_supplier.update_time is
'修改时间';

comment on column t_supplier.flag is
'标识';

/*==============================================================*/
/* Table: t_tender_orgation                                     */
/*==============================================================*/
create table t_tender_orgation (
   id                   INT8                 not null,
   code                 VARCHAR(200)         null,
   name                 VARCHAR(200)         null,
   region               VARCHAR(200)         null,
   address              VARCHAR(500)         null,
   social_credit_code   VARCHAR(50)          null,
   regist_date          TIMESTAMP            null,
   legal_person         VARCHAR(20)          null,
   legal_person_name    VARCHAR(50)          null,
   contacts_user_name   VARCHAR(50)          null,
   contacts_use_idnum   VARCHAR(50)          null,
   phone                VARCHAR(50)          null,
   grade                INT8                 null,
   remark               VARCHAR(500)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_TENDER_ORGATION primary key (id)
);

comment on table t_tender_orgation is
'投标机构';

comment on column t_tender_orgation.code is
'机构编码';

comment on column t_tender_orgation.name is
'机构名字';

comment on column t_tender_orgation.region is
'所在地区';

comment on column t_tender_orgation.address is
'详细地址';

comment on column t_tender_orgation.social_credit_code is
'统一社会信用代码';

comment on column t_tender_orgation.regist_date is
'注册日期';

comment on column t_tender_orgation.legal_person is
'法人姓名';

comment on column t_tender_orgation.legal_person_name is
'法人身份证';

comment on column t_tender_orgation.contacts_user_name is
'联系人姓名';

comment on column t_tender_orgation.contacts_use_idnum is
'联系人身份证';

comment on column t_tender_orgation.phone is
'联系电话';

comment on column t_tender_orgation.grade is
'评级';

comment on column t_tender_orgation.remark is
'备注';

comment on column t_tender_orgation.status is
'状态';

comment on column t_tender_orgation.create_user is
'创建人';

comment on column t_tender_orgation.create_time is
'创建时间';

comment on column t_tender_orgation.update_user is
'修改人';

comment on column t_tender_orgation.update_time is
'修改时间';

comment on column t_tender_orgation.flag is
'标识';

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user (
   id                   INT8                 not null,
   depart_id            INT8                 null,
   phone                VARCHAR(50)          null,
   name                 VARCHAR(100)         null,
   role_id              INT8                 null,
   login_name           VARCHAR(100)         null,
   password             VARCHAR(100)         null,
   remark               VARCHAR(500)         null,
   status               INT4                 null,
   create_time          TIMESTAMP            null,
   update_time          TIMESTAMP            null,
   create_user          INT8                 null,
   update_user          INT8                 null,
   flag                 BOOL                 null,
   constraint PK_T_USER primary key (id)
);

comment on table t_user is
'用户';

comment on column t_user.phone is
'电话';

comment on column t_user.name is
'名字';

comment on column t_user.login_name is
'用户名';

comment on column t_user.password is
'密码';

comment on column t_user.status is
'状态';

comment on column t_user.create_time is
'创建时间';

comment on column t_user.update_time is
'修改时间';

comment on column t_user.create_user is
'创建人';

comment on column t_user.update_user is
'修改人';

comment on column t_user.flag is
'标记';

/*==============================================================*/
/* Table: t_vehicle_pick                                        */
/*==============================================================*/
create table t_vehicle_pick (
   id                   INT8                 not null,
   name                 VARCHAR(200)         null,
   idnum                VARCHAR(200)         null,
   phone                VARCHAR(20)          null,
   workers              VARCHAR(200)         null,
   persons              INT4                 null,
   departure_place      VARCHAR(200)         null,
   destination          VARCHAR(200)         null,
   vehicle_time         TIMESTAMP            null,
   remark               VARCHAR(200)         null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_VEHICLE_PICK primary key (id)
);

comment on table t_vehicle_pick is
'客房预订';

comment on column t_vehicle_pick.name is
'房客姓名';

comment on column t_vehicle_pick.idnum is
'身份证';

comment on column t_vehicle_pick.phone is
'电话号码';

comment on column t_vehicle_pick.workers is
'工作单位';

comment on column t_vehicle_pick.persons is
'乘客总数';

comment on column t_vehicle_pick.vehicle_time is
'接送时间';

comment on column t_vehicle_pick.remark is
'备注';

comment on column t_vehicle_pick.status is
'状态';

comment on column t_vehicle_pick.create_user is
'创建人';

comment on column t_vehicle_pick.create_time is
'创建时间';

comment on column t_vehicle_pick.update_user is
'修改人';

comment on column t_vehicle_pick.update_time is
'修改时间';

comment on column t_vehicle_pick.flag is
'标识';

/*==============================================================*/
/* Table: t_work_dynamics                                       */
/*==============================================================*/
create table t_work_dynamics (
   id                   INT8                 not null,
   title                VARCHAR(200)         null,
   abstract             VARCHAR(200)         null,
   face                 INT8                 null,
   top                  BOOL                 null,
   content              TEXT                 null,
   read_count           INT8                 null,
   status               INT4                 null,
   create_user          INT8                 null,
   create_time          TIMESTAMP            null,
   update_user          INT8                 null,
   update_time          TIMESTAMP            null,
   flag                 BOOL                 null,
   constraint PK_T_WORK_DYNAMICS primary key (id)
);

comment on table t_work_dynamics is
'工作动态';

comment on column t_work_dynamics.title is
'标题';

comment on column t_work_dynamics.abstract is
'摘要';

comment on column t_work_dynamics.face is
'封面';

comment on column t_work_dynamics.top is
'置顶';

comment on column t_work_dynamics.content is
'内容';

comment on column t_work_dynamics.read_count is
'阅读量';

comment on column t_work_dynamics.status is
'状态';

comment on column t_work_dynamics.create_user is
'创建人';

comment on column t_work_dynamics.create_time is
'创建时间';

comment on column t_work_dynamics.update_user is
'修改人';

comment on column t_work_dynamics.update_time is
'修改时间';

comment on column t_work_dynamics.flag is
'标识';


insert into "t_role" ( "id", "name", "remark", "admin", "status", "create_user", "create_time", "update_user", "update_time") values ( '1', '系统管理员', '最高权限,可进行所有操作，仅限纪委用户', 't', '0', null, '2018-07-24 13:28:30.975905', null, '2018-07-24 13:28:30.975905') ;
insert into "t_role" ( "id", "name", "remark", "admin", "status", "create_user", "create_time", "update_user", "update_time") values ( '2', '纪委操作员', '纪委中等权限，可进行系统管理以外的所有业务操作', 'f', '0', null, '2018-07-24 13:28:30.975905', null, '2018-07-24 13:28:30.975905') ;
insert into "t_role" ( "id", "name", "remark", "admin", "status", "create_user", "create_time", "update_user", "update_time") values ( '3', '纪委用户', '纪委最低权限,仅可进行查看和查询', 'f', '0', null, '2018-07-24 13:28:30.975905', null, '2018-07-24 13:28:30.975905') ;
insert into "t_role" ( "id", "name", "remark", "admin", "status", "create_user", "create_time", "update_user", "update_time") values ( '4', '单位管理员', '单位较高权限，可进行本单位所有操作', 'f', '0', null, '2018-07-24 13:28:30.975905', null, '2018-07-24 13:28:30.975905') ;
insert into "t_role" ( "id", "name", "remark", "admin", "status", "create_user", "create_time", "update_user", "update_time") values ( '5', '单位用户', '单位较低权限,只可查看和查询单位内的数据', 'f', '0', null, '2018-07-24 13:28:30.975905', null, '2018-07-24 13:28:30.975905') ;


INSERT INTO "t_user"(
	"id",
	"depart_id",
	"phone",
	"name",
	"role_id",
	"login_name",
	"password",
	"status",
	"create_user",
	"create_time",
	"update_user",
	"update_time",
	"flag"
)
VALUES
	(
		'100',
		NULL,
		NULL,
		'admin',
		1,
		'admin',
		'1234',
		'1',
		NULL,
		'2018-07-24 13:28:30.975905',
		NULL,
		'2018-07-24 13:28:30.975905',
		't'
	);
