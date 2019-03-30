# bsdiffDemo
iOS 差量更新

# bspatch Tool For iOS

[bsdiff](http://www.daemonology.net/bsdiff/)

```
需要与服务端保持一致,因为不同的三方算法不同。
```
脚本使用 make diff
```
make 
```
Mac上执行命令
生成增量.pat文件
```
bsdiff oldfile newfile patchfile 

```
生成最新文件包

```
bspatch oldfile newfile patchfile

```




