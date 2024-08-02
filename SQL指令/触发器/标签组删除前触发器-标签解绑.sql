CREATE TRIGGER trg_InsteadOfDelete
ON 标签组
INSTEAD OF DELETE
AS
BEGIN
    --SET NOCOUNT ON;

    -- 检查现在删除的父标签数据  是否存在是别人的子标签，获取标签内容
    DECLARE @IdToBeDeleted varchar(300);
    SELECT @IdToBeDeleted = 父标签 FROM deleted ;
    -- 现在检查 @IdToBeDeleted 是否存在  检查是否存在子标签中 如果存在则不让删除 
    IF EXISTS(SELECT 1 FROM 标签组 WHERE 子标签 = @IdToBeDeleted)
    BEGIN
        -- 如果 IdToBeDeleted 存在 @IdToBeDeleted，则不执行删除操作
        -- 这里可以添加你需要执行的其他逻辑，或者直接返回
        RETURN;
    END
    ELSE
    BEGIN
		-- 第一种方法
		  -- 禁用或者删除掉 删除后的触发器 after触发器 直接在这个触发器里面先保存数据 然后再删除数据
		 INSERT INTO DelBindBarcode(时间,用户,设备编号,客户,型号,料号,父标签,子标签) 
		 SELECT 时间,用户,设备编号,客户,型号,料号,父标签,子标签
		 FROM deleted;
		 DELETE FROM 标签组  WHERE 父标签 = @IdToBeDeleted

		 
		  --第二种方法 创建after触发器  在这个触发器中 只执行判断 不执行删除 删除还是在after触发器  建议采用第一种 直接判断后直接删除
		  -- DELETE FROM 标签组  WHERE 父标签 = @IdToBeDeleted

    END
END
GO