CREATE TRIGGER trg_CopyData
ON 标签组
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO DelBindBarcode(时间,用户,设备编号,客户,型号,料号,父标签,子标签) 
    SELECT 时间,用户,设备编号,客户,型号,料号,父标签,子标签
    FROM deleted;
END
