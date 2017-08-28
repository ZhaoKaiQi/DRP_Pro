
delete from t_user;

delete from t_data_dict;

delete from t_client;

delete from t_temi_client;

delete from t_table_id;

--初始化系统管理员
insert into t_user(user_id, user_name, password) values('root', '系统管理员', 'root123');

--初始化物料类别
insert into t_data_dict(id, name, category) values('a01', '医疗器械', 'C');
insert into t_data_dict(id, name, category) values('a02', '中成药', 'C');
insert into t_data_dict(id, name, category) values('a03', '西药', 'C');

--初始化物料单位
insert into t_data_dict(id, name, category) values('b01', '盒', 'D');
insert into t_data_dict(id, name, category) values('b02', '片', 'D');
insert into t_data_dict(id, name, category) values('b03', '箱', 'D');

--初始化分销商类型
insert into t_data_dict(id, name, category) values('c01', '一级分销商', 'A');
insert into t_data_dict(id, name, category) values('c02', '二级分销商', 'A');
insert into t_data_dict(id, name, category) values('c03', '三级分销商', 'A');
insert into t_data_dict(id, name, category) values('c04', '总部', 'A');

--初始化终端客户类型
insert into t_data_dict(id, name, category) values('d01', '甲级医院', 'B');
insert into t_data_dict(id, name, category) values('d02', '乙级医院', 'B');
insert into t_data_dict(id, name, category) values('d03', '丙级医院', 'B');
insert into t_data_dict(id, name, category) values('d04', '药店', 'B');
insert into t_data_dict(id, name, category) values('d05', '其他', 'B');

--初始化分销商
insert into t_client(id, pid, name, is_leaf, is_client) values(10000, 0, '所有分销商', 'N', 'N');
insert into t_client(id, pid, name, is_leaf, is_client) values(10001, 10000, '华北区', 'N', 'N');
insert into t_client(id, pid, name, is_leaf, is_client) values(10002, 10001, '北京市', 'N', 'N');
insert into t_client(id, pid, name, is_leaf, is_client, client_level) values(10003, 10002, '北京医药股份有限公司', 'Y', 'Y', 'c01');

insert into t_client(id, pid, name, is_leaf, is_client) values(10004, 10000, '东北区', 'Y', 'N');
insert into t_client(id, pid, name, is_leaf, is_client) values(10005, 10000, '华南区', 'Y', 'N');

--初始化终端客户
insert into t_temi_client(id, pid, name, is_leaf, is_temi_client) values(20000, 0, '所有终端客户', 'N', 'N');
insert into t_temi_client(id, pid, name, is_leaf, is_temi_client) values(20001, 20000, '华北区', 'N', 'N');
insert into t_temi_client(id, pid, name, is_leaf, is_temi_client) values(20002, 20001, '北京市', 'N', 'N');
insert into t_temi_client(id, pid, name, temi_client_id, is_leaf, is_temi_client, temi_client_category) values(20003, 20002, '北京中医医院', 't0001','Y', 'Y', 'd01');

insert into t_temi_client(id, pid, name, is_leaf, is_temi_client) values(20004, 20000, '东北区', 'N', 'N');
insert into t_temi_client(id, pid, name, is_leaf, is_temi_client) values(20005, 20000, '华南区', 'N', 'N');

--初始化主键维护表
insert into t_table_id(table_name, value) values('t_client', 10005);
insert into t_table_id(table_name, value) values('t_temi_client', 20005);
insert into t_table_id(table_name, value) values('t_flow_card_detail', 0);
insert into t_table_id ( table_name, value ) values ('t_fiscal_year_period', '0'); 
commit; --因为数据提交到数据库进行保存的时候，会有时间差， 事务提交