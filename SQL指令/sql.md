# 一 数据备份
如果数据库损坏 但是日志文件完整  首先第一步执行一次日志备份 
backup log testDB to disk='D:\SQL\testDB.bak'
如果因为数据库损坏执行不了上面的语句 则执行日志备份
backup log  testDB to disk='D:\SQL\testDB.bak' with no_truncate

    说明: 也就是说执行了这个日志备份并不会清空日志内容,正常的日志备份会以这个备份开始记录新的日志数据
    WITH NO_TRUNCATE:
    NO_TRUNCATE 选项表示在备份日志时不会截断日志文件。
    默认情况下，BACKUP LOG 命令会截断（即清理）事务日志中的已提交事务，释放空间给新的事务使用。
    使用 NO_TRUNCATE 选项时，事务日志中的所有内容，包括未提交的事务，也会被保留，不会被截断。这通常用于在恢复或修复场景中，以确保所有事务记录都可以被保留

然后在开始全备恢复 然后在使用这个日志恢复 达到数据尽可能不丢失