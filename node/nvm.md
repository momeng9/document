1 官网下载NVM http://nvm.uihtm.com
2 选择存放NVM的路径和存放Node的路径
3 安装完成 添加一个 %NVM_SYMLINK%\node_global到环境变量  
4 查看可以安装的node并安装  nvm list availabel  nvm install 版本
5 切换 nvm use 版本  此时你安装时选择的node路径 自动变成路径链接
6 配置npm缓存文件夹 npm config set cache "D:\Program Files\nodejs\node-cache"
7 配置npm全局安装路径  npm config set prefix "D:\Program Files\nodejs\node_global"
8 配置npm国内镜像连接  npm config set registry https://registry.npm.taobao.org    npm config set registry https://registry.npmmirror.com
