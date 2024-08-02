 ## 3、新建一个入口文件app.js 作为入口 并修改package.json文件

 ## 4、安装cors跨域
 npm i cors@2.8.5

 ## 5、配置解析表单数据的中间件

##  6、初始化路由相关文件夹
在项目根目录新建router文件夹
## 7、抽离路由模块的处理函数 保证模块的纯粹性
封装处理模块 提供给路由模块调用
## 8、安装mysql包
npm install mysql@2.18.1  
新建一个文件夹 建立数据库连接 并暴露出去连接

## 9、验证数据的合法性   此方法我没有使用 小项目不需要  一般在前端判断完成就行
定义合法规则
安装第三方数据校验包
npm install joi
npm i @escook/express-joi
## 10、 安装JWT token
npm install jsonwebtoken
安装解析token 中间件
npm install express-jwt

# 打包
先安装webpack
npm install webpack --save-dev
在package.json 添加  // 在终端直接执行webpack是全局的 在这里执行优先本地 
 "build":"webpack" ,
 "start": "node app"
在安装babel 把ES6转成es5
npm install --save-dev babel-loader babel-core babel-preset-es2015
npm install webpack-node-externals --save-dev


 
 
 
 ## 安装各种包
    npm i express
    npm i cors  cors跨域
    npm install mysql
    npm install jsonwebtoken
    npm install express-jwt


# 打包
    先安装webpack
    npm install webpack --save-dev
    在package.json 添加  // 在终端直接执行webpack是全局的 在这里执行优先本地 
    "build":"webpack" 
    在安装babel 把ES6转成es5
    npm install --save-dev babel-loader babel-core babel-preset-es2015
    npm install webpack-node-externals --save-dev
    npm install --save-dev copy-webpack-plugin

    创建webpack.config.js 文件
        const path = require('path');
        const nodeExternals = require('webpack-node-externals');
        console.log(path.resolve(__dirname, "dist"))
        module.exports = {
            entry: './index.js',
            mode: 'production',
            target: "node",
            output: {
                path: path.resolve(__dirname, "dist"),
                filename: 'index.js',
                publicPath: path.resolve(__dirname, "statics")
            },
            node: {},
            externals: [nodeExternals()],
            module: {
            rules: [
                {
                test: /\.js$/, // 匹配以.js结尾的文件
                exclude: /node_modules/,  // 排除node_modules文件夹
                use: {
                    loader: 'babel-loader' // 使用Babel加载器
                }
                }
            
            ]
            },
            plugins: [],
            resolve: {}
        }
    设置打包排除public目录的命令
    生成dist文件夹  执行命令  npm run build
    把dist文件夹下的index.js  拷贝到需要的目录下
    把package.json 拷贝到需要的目录下
    执行命令 npm install
    然后运行命令 node index.js
    再安装pm2实现node服务的自动重启
