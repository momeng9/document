
CREATE TRIGGER trg_CopyData
ON bind
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON; -- ���ò����ض�����������Ӱ��
    --  SELECT *
    --FROM deleted;
    INSERT INTO Delbind(����ǩ, �ӱ�ǩ) 
    SELECT ����ǩ, �ӱ�ǩ
    FROM deleted;
	
END
