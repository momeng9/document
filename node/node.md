print  测试打印    
4-26 添加测试串口

vue create 项目名称

选择LESS  选择路由  
 
已经设置了standrad_VUE 为标准的


npm install xlsx   
用来安装excel插件 直接将import XLSX from 'xlsx'改为import * as XLSX from 'xlsx/xlsx.mjs'即可

安装饿了么
``` javaScript
//npm i element-ui -S 
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);
```





# 软件安装


## npm install file-saver --save

## npm install xlsx   
用来安装excel插件 直接将import XLSX from 'xlsx'改为import * as XLSX from 'xlsx/xlsx.mjs'即可

## 安装饿了么
//npm i element-ui -S 
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);


# 三件套
//docx文档预览组件
npm install @vue-office/docx vue-demi
 
//excel文档预览组件
npm install @vue-office/excel vue-demi
 
//pdf文档预览组件
npm install @vue-office/pdf vue-demi

# npm install mammoth



# 使用luckysheet制作
在public文件夹添加luckysheet文件
npm install --save luckyexcel  
npm install exceljs  不确定是否需要安装
把几个引用link到index.html文件
<!-- <link rel='stylesheet' href='./luckysheet/plugins/css/pluginsCss.css' />
    <link rel='stylesheet' href='./luckysheet/plugins/plugins.css' />
    <link rel='stylesheet' href='./luckysheet/css/luckysheet.css' />
    <link rel='stylesheet' href='./luckysheet/assets/iconfont/iconfont.css' />
    <script src="./luckysheet/plugins/js/plugin.js"></script>
    <script src="./luckysheet/luckysheet.umd.js"></script> -->
具体代码参考luckyexcel.VUE

时间格式化插件 day.js  moment   

//npm install dayjs --save 安装轻量级日期
//全局引入日期格式  VUE
import dayjs from 'dayjs'
Vue.prototype.dayjs = dayjs
