# git上传配置
## 1 git init  
    初始化git配置文件
## 2 git add .   
    提交所有的文件更新
## 3 git remote add origin 地址   
    添加远程提交的地址  修改origin名称可以添加多个仓库地址
## 4 git branch  -M main  
    提交分支  选择mian分支  还可以是master分支
## 5 git commit -m "内容"
    提交更新信息
## 6 git push  origin 
    提交到远程仓库

## 其他
    git pull  https://github.com/LJF2402901363/test.git  拉去项目的文件比如readme.md


### 可以直接修改git文件夹下的config文件的分支文件
    添加一个url = https://github.com/momeng9/document.git
    然后直接提交就可以了 这样可以提交两个文档
git push -u origin master
git push: 这是Git命令，用于将本地的提交推送到远程仓库。

-u: 这是git push命令的一个选项，它表示将本地的当前分支与远程分支进行关联。使用-u选项后，下次使用git push命令时，就可以简单地执行git push而不需要再指定远程仓库和分支。

origin: 这是远程仓库的名称，通常情况下，远程仓库的默认名称是origin，它是Git远程仓库的默认标识符。

master: 这是要推送到远程仓库的本地分支的名称。在这个例子中，将本地的master分支推送到远程仓库。

因此，整个命令的意思是将本地的master分支的提交推送到远程仓库，并将本地的master分支与远程的master分支进行关联。