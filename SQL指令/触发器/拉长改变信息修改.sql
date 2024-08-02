--创建update触发器
create trigger name_update
on 拉别信息
for  insert, update
as
begin
--声明变量  申明拉长和拉别
    declare @line varchar(10), @name varchar(20) ;
	--声明游标
	declare Member_Cur cursor for  select 拉别,拉长 from inserted;

	--打开游标
	open Member_Cur ;
	--读取每一行的数据
	fetch next from Member_Cur  into @line, @name;
	

	--提取数据成功
	while @@FETCH_STATUS =0
			begin
			
	
	update 生产统计 set 拉长 = @name  where  拉别=@line and DateDiff(MONTH,生产日期,getdate())=0 ;  

	 
	--更新以后继续读取下一行数据 （重点）
	fetch next from Member_Cur  into @line, @name;
	end 
	
	--关闭游标
	close Member_Cur
	--释放游标
	deallocate Member_Cur

    
	
	--更新当月的所有数据
    
end