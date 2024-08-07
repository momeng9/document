USE [data]
GO
/****** Object:  Trigger [dbo].[state_update]    Script Date: 2024/5/20 17:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--创建update触发器
create  trigger state_update
on [dbo].[WeightVerify]
AFTER   update
as
begin
--声明变量  吧需要得赋值到新值得数据全部声明变量
    declare @time datetime, @soft varchar(20), @customer varchar(50), @productname varchar(50), @part varchar(50),@Unitweight float,@pack float,@Mintolerance float,@Maxtolerance float,@subnum int,@subweight float,@state bit;
	--声明游标  获取次行得数据
	declare Member_Cur cursor for  select time,soft,customer,productname,part,Unitweight,pack,Mintolerance,Maxtolerance,subnum,subweight,state from inserted;

	--打开游标
	open Member_Cur ;
	--读取每一行的数据  吧数据赋值到变量内部
	fetch next from Member_Cur  into @time, @soft, @customer,@productname,@part,@Unitweight,@pack,@Mintolerance,@Maxtolerance,@subnum,@subweight,@state;
	

	--提取数据成功
	while @@FETCH_STATUS =0
			begin
			
	
	--update weight set time = @time,,, where  customer=@customer and productname=@productname and part=@part ;
	--如果状态等于1启用则更新
	if  @state=1 
	begin
	   if not exists (select id from weight where soft=@soft and customer=@customer and productname=@productname and part=@part)   
           insert into weight (time,soft, customer,productname,part,Unitweight,pack,Mintolerance,Maxtolerance,subnum,subweight) values (@time,@soft, @customer,@productname,@part,@Unitweight,@pack,@Mintolerance,@Maxtolerance,@subnum,@subweight) 
           else    
             update weight set time = @time,Unitweight=@Unitweight,pack=@pack,Mintolerance=@Mintolerance,Maxtolerance=@Maxtolerance,subnum=@subnum,subweight=@subweight where  soft=@soft and customer=@customer and productname=@productname and part=@part;  
    end
	 
	--更新以后继续读取下一行数据 （重点）
	fetch next from Member_Cur  into @time,@soft, @customer,@productname,@part,@Unitweight,@pack,@Mintolerance,@Maxtolerance,@subnum,@subweight,@state;
	end 
	
	--关闭游标
	close Member_Cur
	--释放游标
	deallocate Member_Cur

    
	
	--更新当月的所有数据
    
end