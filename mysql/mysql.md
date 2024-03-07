# MYSQL的安装教程
## 1 下载安装包 -- 免安装程序包
    --  https://www.mysql.com/

## 2 解压文件 并安装mysql服务
    --  mysqld --install
## 3 在根目录创建一个my.ini配置文件
    [mysqld]
    # 设置3306端口
    port=3306
    # 设置mysql的安装目录
    basedir=D:\\Program Files\\MySql\\mysql-8.2.0-winx64\\mysql-8.2.0-winx64
    # 设置mysql数据库的数据的存放目录
    datadir=D:\\Program Files\\MySql\\mysql-8.2.0-winx64\\mysql-8.2.0-winx64\\data  
    # 允许最大连接数
    max_connections=200
    # 允许连接失败的次数。这是为了防止有人从该主机试图攻击数据库系统
    max_connect_errors=10
    # 服务端使用的字符集默认为UTF8
    character-set-server=utf8
    # 创建新表时将使用的默认存储引擎
    default-storage-engine=INNODB
    # 默认使用“mysql_native_password”插件认证
    default_authentication_plugin=mysql_native_password
    [mysql]
    # 设置mysql客户端默认字符集
    default-character-set=utf8
    [client]
    # 设置mysql客户端连接服务端时默认使用的端口
    port=3306
    default-character-set=utf8


## 4 初始化mysql  注意是在bin文件夹下执行
    -- mysqld --initialize --console
    -- mysqld --initialize-insecure --user=mysql
    只测试了第一条
    会出现一个随机密码
## 5 启动mysql服务
    --net start mysql
## 6 登录mysql
    -- mysql -u root -p
## 7 修改密码
    --ALTER USER ‘root’@‘localhost’ IDENTIFIED BY ‘123456’;
    --alter user ‘root’@‘localhost’ identified with 
    mysql_native_password by ‘root’;

## 8 环境配置
### 1 系统变量添加
    在系统变量添加一个变量名为MYSQL_HOME 
    路径为你解压文件的路径
### 2 在系统变量path中添加
    %MYSQL_HOME%\bin
## 9 创建远程用户
    CREATE USER '用户名'@'%' IDENTIFIED BY '密码';
    GRANT ALL PRIVILEGES ON *.* TO '用户名'@'%' WITH GRANT OPTION;
    FLUSH PRIVILEGES;

    CREATE USER 'ztx'@'%' IDENTIFIED BY 'ztx123456';
    GRANT ALL PRIVILEGES ON *.* TO 'ztx'@'%' WITH GRANT OPTION;
    FLUSH PRIVILEGES; 