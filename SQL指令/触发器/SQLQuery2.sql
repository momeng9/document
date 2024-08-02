
 select count (distinct 父标签)from 标签组 where 父标签='07-ANTWC0-D270AG*3600*L1041601*20200225*11.85*11.2*45x32.5x42***BL104160120207000001'
select count(父标签)from(select 父标签 from 标签组 where 父标签='07-ANTWC0-D270AG*3600*L1041601*20200225*11.85*11.2*45x32.5x42***BL104160120207000001' group by 父标签 )alias
select count (*) from (select 父标签 from 标签组 group by 父标签)alias
select count(*)from 标签组
select max(流水号) from 称重标签 where 年='2020' and 周别='21'
select 流水号 from 称重标签 where 时间=max(时间)