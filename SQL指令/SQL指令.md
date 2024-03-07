## 1：去重计数
select count (distinct 父标签)from 标签组 where 父标签='07-ANTWC0-D270AG*3600*L1041601*20200225*11.85*11.2*45x32.5x42***BL104160120207000001'
select count(父标签)from(select 父标签 from 标签组 where 父标签='07-ANTWC0-D270AG*3600*L1041601*20200225*11.85*11.2*45x32.5x42***BL104160120207000001' group by 父标签 )alias


## 2：表总数据
select count(*)from 标签组

## 3：查询一列最大值 这一行的另一个字段的值
select 流水号 from 称重标签 where 时间= (select max(时间)from 称重标签)

## 3：设置锁定超时
select @@LOCK_TIMEOUT
set lock_timeout 1000

## 4：查询锁
select   request_session_id   锁表进程,OBJECT_NAME(resource_associated_entity_id) 被锁表名  

from   sys.dm_tran_locks where resource_type='OBJECT';


## 5：分页查询
SELECT 查询列表 FROM 表 LIMIT (page-1)*size,size;
