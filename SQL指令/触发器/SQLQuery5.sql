 select 型号 from 称重标签 where 时间>='2020-05-21 16:06:14.070'and 时间<='2020-05-21 16:07:10.80' group by 型号
 select count(条码)from 称重标签 where 时间>='2020-05-21 16:06:14.050'and 时间<='2020-05-21 16:07:10.880'
 select 型号,条码 from 称重标签