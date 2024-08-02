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

## 6 SQL查重后插入语句
    INSERT INTO QA_scanitem ('','') SELECT '${req.query.item}' WHERE NOT EXISTS (SELECT 1 FROM QA_scanitem WHERE item = '${req.query.item}'`
    insert into QA_scanItem (item,config) 
    select 'dddd','[]'
    where not exists (select * from QA_scanItem where item = 'ddd' )

## 7 转时间戳
    DATEDIFF(SECOND, '1970-01-01', [time])

## 8 查询多条件 使用like
SELECT FORMAT(time,'yyyy-MM-dd HH:mm:ss') time,[soft],[customer],[part],[productname],[data],[remark] from [LabelVerify] where time>='{stratTime}' and time<='{endTime}' and productname like '%{productname}%'

1：去重计数
select count (distinct 父标签)from 标签组 where 父标签='07-ANTWC0-D270AG*3600*L1041601*20200225*11.85*11.2*45x32.5x42***BL104160120207000001'
select count(父标签)from(select 父标签 from 标签组 where 父标签='07-ANTWC0-D270AG*3600*L1041601*20200225*11.85*11.2*45x32.5x42***BL104160120207000001' group by 父标签 )alias


2：表总数据
select count(*)from 标签组

3：查询一列最大值 这一行的另一个字段的值
select 流水号 from 称重标签 where 时间= (select max(时间)from 称重标签)

3：设置锁定超时
select @@LOCK_TIMEOUT
set lock_timeout 1000

4：查询锁
select   request_session_id   锁表进程,OBJECT_NAME(resource_associated_entity_id) 被锁表名  

from   sys.dm_tran_locks where resource_type='OBJECT';

5：
