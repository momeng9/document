USE [MES]
GO
/****** Object:  Trigger [dbo].[time_update]    Script Date: 2022/03/26 11:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--创建update触发器
ALTER trigger [dbo].[time_update]
on [dbo].[料号标准工时]
for insert, update
as
begin
--声明变量
    declare @proname varchar(100), @jobnum varchar(50),@jonname varchar(300), @time varchar(20), @part varchar(50) ;
	--声明游标
	declare Member_Cur cursor for  select 料号,产品名称,岗位编号,岗位名称,标准工时 from inserted;

	--打开游标
	open Member_Cur ;
	--读取每一行的数据
	fetch next from Member_Cur  into @part, @proname,@jobnum,@jonname,@time;
	

	--提取数据成功
	while @@FETCH_STATUS =0
			begin
			
	
	update 生产统计 set 产品名称 = @proname ,岗位名称=@jonname,标准工时=@time where 岗位编号=@jobnum and 料号=@part and DateDiff(MONTH,生产日期,getdate())=0 ;  

	 --  select * from 生产统计 where 岗位编号=@jobnum and 料号=@part;
	--更新以后继续读取下一行数据 （重点）
	fetch next from Member_Cur  into @part, @proname,@jobnum,@jonname,@time;
	end 
	
	--关闭游标
	close Member_Cur
	--释放游标
	deallocate Member_Cur

    --select @proname= 产品名称,@jobnum= 岗位编号,@jonname =岗位名称,@time=标准工时 , @part=料号 from inserted;
	--select * from inserted
	
	--更新当月的所有数据
    
end
