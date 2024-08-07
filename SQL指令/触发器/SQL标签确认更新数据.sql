USE [data]
GO
/****** Object:  Trigger [dbo].[labelstate_update]    Script Date: 2024/5/20 17:12:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--创建update触发器
create  trigger labelstate_update
on [dbo].[LabelVerify]
AFTER   update
as
begin
--声明变量  吧需要得赋值到新值得数据全部声明变量
    declare @time datetime,@soft varchar(15),@customer varchar(50), @productname varchar(50), @part varchar(50),@data varchar(3000),@state bit;
	--声明游标  获取次行得数据
	declare Member_Cur cursor for  select time,soft,customer,productname,part,data,state from inserted;

	--打开游标
	open Member_Cur ;
	--读取每一行的数据  吧数据赋值到变量内部
	fetch next from Member_Cur  into @time,@soft,@customer,@productname,@part,@data,@state;
	

	--提取数据成功
	while @@FETCH_STATUS =0
			begin
			
	
	--update weight set time = @time,,, where  customer=@customer and productname=@productname and part=@part ;
	--如果状态等于1启用则更新
	if  @state=1 
	begin
         update labelitem set time = @time,data=@data where soft=@soft and customer=@customer and productname=@productname and part=@part;  
    end
	 
	--更新以后继续读取下一行数据 （重点）
	fetch next from Member_Cur  into @time,@soft,@customer,@productname,@part,@data,@state;
	end 
	
	--关闭游标
	close Member_Cur
	--释放游标
	deallocate Member_Cur

    
	
	--更新当月的所有数据
    
end