# 离线安装visual studio 

## 1 下载vs引导程序以及创建布局 
    下载地址 https://learn.microsoft.com/zh-cn/visualstudio/install/create-a-network-installation-of-visual-studio?view=vs-2022
## 2 创建一个文件夹存放刚刚下载下来的制作工具包

## 3 打开windows powershell 执行命令
    下面命令是安装对于 .NET Web 和.NET 桌面开发
    vs_Community.exe --layout d:\vs2022 --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.NetWeb --includeOptional --lang en-US

    上诉命令参数意义如下：

    --layout 位置：指定离线包到指定位置

    --add 工作负载：添加一个工作负载，工作负载id对应将在下面列出。若要下载多个工作负载组件，可以多加几个–add参数

    --includeOptional/--includeRecommended：安装所选的工作负载组里面的推荐项/安装所选工作负载里面全部可选项

    --lang 语言：安装语言包，将会在下面给出语言列表

    常用工作负载id对应列表，可以去官网查看完整列表，这里列出社区版的一部分：
    常用工作负载id对应列表，可以去官网查看完整列表，这里列出社区版的一部分：

    工作负载	对应id
    Visual Studio 核心编辑器	Microsoft.VisualStudio.Workload.CoreEditor
    .NET 桌面开发	Microsoft.VisualStudio.Workload.ManagedDesktop
    使用 C++ 的桌面开发	Microsoft.VisualStudio.Workload.NativeDesktop
    使用 C++ 的移动开发	Microsoft.VisualStudio.Workload.NativeMobile
    使用 .NET 的移动开发	Microsoft.VisualStudio.Workload.NetCrossPlat
    ASP.NET 和 Web 开发	Microsoft.VisualStudio.Workload.NetWeb
    通用 Windows 平台开发	Microsoft.VisualStudio.Workload.Universal
    Visual Studio 扩展开发	Microsoft.VisualStudio.Workload.VisualStudioExtension
    .NET Core 跨平台开发	Microsoft.VisualStudio.Workload.NetCoreTools
    使用 C++ 的游戏开发	Microsoft.VisualStudio.Workload.NativeGame

    vs_Community.exe --layout d:\vs2022 --add Microsoft.VisualStudio.Workload.NativeDesktop --includeRecommended --lang en-US


    若要确保安装程序在安装产品时不会尝试访问 Internet，请使用 --noweb 开关
    