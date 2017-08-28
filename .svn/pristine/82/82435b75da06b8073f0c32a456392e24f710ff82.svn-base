
drop view V_AIM_CLIENT;

drop table T_CLIENT cascade constraints;

drop table T_DATA_DICT cascade constraints;

drop table T_FISCAL_YEAR_PERIOD cascade constraints;

drop table T_FLOW_CARD_DETAIL cascade constraints;

drop table T_FLOW_CARD_MASTER cascade constraints;

drop table T_INVENTORY cascade constraints;

drop table T_ITEMS cascade constraints;

drop table T_TABLE_ID cascade constraints;

drop table T_TEMI_CLIENT cascade constraints;

drop table T_USER cascade constraints;

/*==============================================================*/
/* Table: T_CLIENT                                              */
/*==============================================================*/
create table T_CLIENT  (
   ID                   number(10)                      not null,
   PID                  number(10),
   CLIENT_LEVEL         char(3),
   NAME                 varchar2(40),
   CLIENT_ID            varchar2(10),
   BANK_ACCT_NO         varchar2(30),
   CONTACT_TEL          varchar2(30),
   ADDRESS              varchar2(50),
   ZIP_CODE             varchar2(15),
   IS_LEAF              char(1)                         not null,
   IS_CLIENT            char(1)                         not null,
   constraint PK_T_CLIENT primary key (ID)
);

comment on table T_CLIENT is '分销商信息';

comment on column T_CLIENT.IS_LEAF is
'Y：叶子
N：非叶子';

comment on column T_CLIENT.IS_CLIENT is
'Y：是分销商
N：不是分销商';

/*==============================================================*/
/* Table: T_DATA_DICT                                           */
/*==============================================================*/
create table T_DATA_DICT  (
   ID                   char(3)                         not null,
   NAME                 varchar2(30)                    not null,
   CATEGORY             char(1)                         not null,
   constraint PK_T_DATA_DICT primary key (ID)
);

comment on table T_DATA_DICT is '数据字典';

comment on column T_DATA_DICT.CATEGORY is
'A：分销商级别
B：终端客户类型
C：物料类别
D：计量单位';

/*==============================================================*/
/* Table: T_FISCAL_YEAR_PERIOD                                  */
/*==============================================================*/
create table T_FISCAL_YEAR_PERIOD  (
   ID                   number(10)                      not null,
   FISCAL_YEAR          number(4)                       not null,
   FISCAL_PERIOD        number(2)                       not null,
   BEGIN_DATE           date                            not null,
   END_DATE             date                            not null,
   PERIOD_STS           char(1)                         not null,
   constraint PK_T_FISCAL_YEAR_PERIOD primary key (ID)
);

comment on table T_FISCAL_YEAR_PERIOD is
'会计核算期';

comment on column T_FISCAL_YEAR_PERIOD.PERIOD_STS is
'Y：可以使用
N：不能使用';

/*==============================================================*/
/* Table: T_FLOW_CARD_DETAIL                                    */
/*==============================================================*/
create table T_FLOW_CARD_DETAIL  (
   FLOW_CARD_DETAIL_ID  number(10)                      not null,
   AIM_CLIENT_ID        number(10)                      not null,
   ITEM_NO              varchar2(20)                    not null,
   FLOW_CARD_NO         varchar2(20),
   OPT_QTY              number(12,2)                   default 0 not null,
   ADJUST_QTY           number(12,2)                   default 0,
   ADJUST_REASON        varchar2(30),
   ADJUST_FLAG          char(1)                         not null,
   constraint PK_T_FLOW_CARD_DETAIL primary key (FLOW_CARD_DETAIL_ID)
);

comment on table T_FLOW_CARD_DETAIL is
'流向单明细信息';

comment on column T_FLOW_CARD_DETAIL.ADJUST_FLAG is
'Y：调整
N：未调整';

/*==============================================================*/
/* Table: T_FLOW_CARD_MASTER                                    */
/*==============================================================*/
create table T_FLOW_CARD_MASTER  (
   FLOW_CARD_NO         varchar2(20)                    not null,
   FISCAL_YEAR_PERIOD   number(10)                      not null,
   OPT_TYPE             char(1)                         not null,
   CLIENT_ID            number(10)                      not null,
   RECORDER_ID          varchar2(10)                    not null,
   OPT_DATE             date                            not null,
   VOU_STS              char(1)                         not null,
   ADJUSTER_ID          varchar2(10),
   ADJUST_DATE          date,
   SPOTTER_ID           varchar2(10),
   SPOT_DATE            date,
   SPOT_DESC            varchar2(40),
   CONFIRMER_ID         varchar2(10),
   CONF_DATE            date,
   constraint PK_T_FLOW_CARD_MASTER primary key (FLOW_CARD_NO)
);

comment on table T_FLOW_CARD_MASTER is
'流向单主信息';

comment on column T_FLOW_CARD_MASTER.OPT_TYPE is
'D：调拨
A：调整（盘点）';

comment on column T_FLOW_CARD_MASTER.VOU_STS is
'S：送审
N：录入';

/*==============================================================*/
/* Table: T_INVENTORY                                           */
/*==============================================================*/
create table T_INVENTORY  (
   CLIENT_ID            number(10)                      not null,
   FISCAL_YEAR_PERIOD_ID number(10)                      not null,
   ITEM_NO              varchar2(20)                    not null,
   INIT_QTY             number(12,2)                   default 0,
   IN_QTY               number(12,2)                   default 0,
   OUT_QTY              number(12,2)                   default 0,
   constraint PK_T_INVENTORY primary key (CLIENT_ID, FISCAL_YEAR_PERIOD_ID, ITEM_NO)
);

comment on table T_INVENTORY is
'库存信息（台帐信息）';

/*==============================================================*/
/* Table: T_ITEMS                                               */
/*==============================================================*/
create table T_ITEMS  (
   ITEM_NO              varchar2(20)                    not null,
   CATEGORY             char(3),
   UNIT                 char(3),
   ITEM_NAME            varchar2(30)                    not null,
   SPEC                 varchar2(30),
   PATTERN              varchar2(30),
   UPLOAD_FILE_NAME     varchar2(40),
   constraint PK_T_ITEMS primary key (ITEM_NO)
);

comment on table T_ITEMS is
'物料信息';

/*==============================================================*/
/* Table: T_TABLE_ID                                            */
/*==============================================================*/
create table T_TABLE_ID  (
   TABLE_NAME           varchar2(30)                    not null,
   VALUE                varchar2(20)                    not null,
   constraint PK_T_TABLE_ID primary key (TABLE_NAME)
);

comment on table T_TABLE_ID is
'主键维护表';

/*==============================================================*/
/* Table: T_TEMI_CLIENT                                         */
/*==============================================================*/
create table T_TEMI_CLIENT  (
   ID                   number(10)                      not null,
   PID                  number(10),
   TEMI_CLIENT_CATEGORY char(3),
   NAME                 varchar2(40)                    not null,
   TEMI_CLIENT_ID       varchar2(10),
   CONTACTOR            varchar2(30),
   CONTATEL_TEL         varchar2(30),
   ADDRESS              varchar2(50),
   ZIP_CODE             varchar2(15),
   IS_LEAF              char(1)                         not null,
   IS_TEMI_CLIENT       char(1)                         not null,
   constraint PK_T_TEMI_CLIENT primary key (ID)
);

comment on table T_TEMI_CLIENT is
'终端客户信息';

comment on column T_TEMI_CLIENT.IS_LEAF is
'Y：叶子
N：非叶子';

comment on column T_TEMI_CLIENT.IS_TEMI_CLIENT is
'Y：终端
N：不是终端';

/*==============================================================*/
/* Table: T_USER                                                */
/*==============================================================*/
create table T_USER  (
   USER_ID              varchar2(10)                    not null,
   USER_NAME            varchar2(40)                    not null,
   PASSWORD             varchar2(20)                    not null,
   CONTACT_TEL          varchar2(40),
   EMAIL                varchar2(30),
   CREATE_DATE          date,
   constraint PK_T_USER primary key (USER_ID)
);

comment on table T_USER is
'用户信息';

/*==============================================================*/
/* View: V_AIM_CLIENT    
所谓的视图，就是一张存在的假表，是创建在真实表基础上的，之所以还要
创建一个视图，是为了操作简单，能够简化常用的数据

select * from V_AIM_CLIENT                        */
/*==============================================================*/
create or replace view V_AIM_CLIENT as
select c.id, c.name, c.client_id as client_temi_id, c.client_level as client_temi_category_id, d.name as client_temi_category_name from t_client c join t_data_dict d on c.client_level=d.id where is_client='Y'
union 
select t.id, t.name, t.temi_client_id as client_temi_id, t.temi_client_category as client_temi_category_id, d.name as client_temi_category_name from t_temi_client t join t_data_dict d on t.temi_client_category=d.id where is_temi_client='Y'
with read only;

 comment on table V_AIM_CLIENT is
'需方客户，包括分销商和终端客户';

