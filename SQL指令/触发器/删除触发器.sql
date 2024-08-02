
CREATE TRIGGER trg_CopyData
ON bind
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON; -- 设置不返回多少条数据受影响
    --  SELECT *
    --FROM deleted;
    INSERT INTO Delbind(父标签, 子标签) 
    SELECT 父标签, 子标签
    FROM deleted;
	
END
