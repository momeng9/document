# window系统
## 1 首先全局安装PM2
npm install pm2 -g
## 2 安装windows开机启动包
npm install pm2-windows-startup -g
## 3 创建开机启动脚本文件
pm2-startup install
## 4 使用pm2启动项目
pm2 start 项目启动文件（最好是进入到项目启动文件同级目录）
## 5 保存pm2中的项目（最好加一个保存一个
pm2 save

# linux系统
## 1 启动服务
pm2 start 项目启动文件（最好是进入到项目启动文件同级目录）
## 2 保存当前已启动的服务
pm2 save
## 3 设置开机自启配置
pm2 startup
## 4 执行pm2 startup后，得到提示，复制并执行以sudo env开头的提示，用来设置环境变量
sudo env ...