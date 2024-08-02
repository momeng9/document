CREATE TRIGGER trg_InsteadOfDelete
ON ��ǩ��
INSTEAD OF DELETE
AS
BEGIN
    --SET NOCOUNT ON;

    -- �������ɾ���ĸ���ǩ����  �Ƿ�����Ǳ��˵��ӱ�ǩ����ȡ��ǩ����
    DECLARE @IdToBeDeleted varchar(300);
    SELECT @IdToBeDeleted = ����ǩ FROM deleted ;
    -- ���ڼ�� @IdToBeDeleted �Ƿ����  ����Ƿ�����ӱ�ǩ�� �����������ɾ�� 
    IF EXISTS(SELECT 1 FROM ��ǩ�� WHERE �ӱ�ǩ = @IdToBeDeleted)
    BEGIN
        -- ��� IdToBeDeleted ���� @IdToBeDeleted����ִ��ɾ������
        -- ��������������Ҫִ�е������߼�������ֱ�ӷ���
        RETURN;
    END
    ELSE
    BEGIN
		-- ��һ�ַ���
		  -- ���û���ɾ���� ɾ����Ĵ����� after������ ֱ������������������ȱ������� Ȼ����ɾ������
		 INSERT INTO DelBindBarcode(ʱ��,�û�,�豸���,�ͻ�,�ͺ�,�Ϻ�,����ǩ,�ӱ�ǩ) 
		 SELECT ʱ��,�û�,�豸���,�ͻ�,�ͺ�,�Ϻ�,����ǩ,�ӱ�ǩ
		 FROM deleted;
		 DELETE FROM ��ǩ��  WHERE ����ǩ = @IdToBeDeleted

		 
		  --�ڶ��ַ��� ����after������  ������������� ִֻ���ж� ��ִ��ɾ�� ɾ��������after������  ������õ�һ�� ֱ���жϺ�ֱ��ɾ��
		  -- DELETE FROM ��ǩ��  WHERE ����ǩ = @IdToBeDeleted

    END
END
GO