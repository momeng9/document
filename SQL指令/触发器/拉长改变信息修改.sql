--����update������
create trigger name_update
on ������Ϣ
for  insert, update
as
begin
--��������  ��������������
    declare @line varchar(10), @name varchar(20) ;
	--�����α�
	declare Member_Cur cursor for  select ����,���� from inserted;

	--���α�
	open Member_Cur ;
	--��ȡÿһ�е�����
	fetch next from Member_Cur  into @line, @name;
	

	--��ȡ���ݳɹ�
	while @@FETCH_STATUS =0
			begin
			
	
	update ����ͳ�� set ���� = @name  where  ����=@line and DateDiff(MONTH,��������,getdate())=0 ;  

	 
	--�����Ժ������ȡ��һ������ ���ص㣩
	fetch next from Member_Cur  into @line, @name;
	end 
	
	--�ر��α�
	close Member_Cur
	--�ͷ��α�
	deallocate Member_Cur

    
	
	--���µ��µ���������
    
end