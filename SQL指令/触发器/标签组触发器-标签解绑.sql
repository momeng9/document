CREATE TRIGGER trg_CopyData
ON ��ǩ��
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO DelBindBarcode(ʱ��,�û�,�豸���,�ͻ�,�ͺ�,�Ϻ�,����ǩ,�ӱ�ǩ) 
    SELECT ʱ��,�û�,�豸���,�ͻ�,�ͺ�,�Ϻ�,����ǩ,�ӱ�ǩ
    FROM deleted;
END
