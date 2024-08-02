select * from 称重标签 where 时间= (select max(时间)from 称重标签)
select max(时间) from 称重标签