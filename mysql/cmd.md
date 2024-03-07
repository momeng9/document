# 1 查询后插入
    INSERT INTO report_template (tmp_name, tmp_type, content) 
      SELECT '1', '2', '{}' 
      WHERE NOT EXISTS(SELECT id FROM report_template WHERE tmp_name = '1' and tmp_type ='2')