# GLaDOS-checkin

通过 github action 来实现自动签到（每天签到可以延时一天）。

[GLaDOS 官方 github](https://github.com/glados-network/GLaDOS)，[GLaDOS 官网](https://glados.rocks/)。

如果还没有注册的话，可以去[这里](https://glados.rocks/register)注册，然后填写邀请码：`0HCLD-0XA70-YBI10-Z6836`。双方都可以获得奖励天数哦。

## 步骤

### 1 fork 这个仓库

点击右上角的 fork。

### 2 获取 cookie

在 [GLaDOS](https://glados.rocks/console/checkin) 的网页上按 F12，进行请求，`Network > checkin > Headers > Resquest Headers > cookie` 查看请求的 cookie，如图所示：

![](https://cdn.jsdelivr.net/gh/shimmerjordan/GLaDOS-autoCheckin@master/README.assets/cookie.png)

### 3 设置 cookie

在 fork 后**自己的**仓库中依次点击 `Settings` - `Secrets` - `New repository secret`，然后添加一个名为 `COOKIE` 的变量，内容为获取到的 cookie。

### 4 运行 

随便发起一个 push 请求，可以修改一下 `README.md`，或者自己给自己点个 star，就可以开始。之后就会每隔 6 小时进行一次签到（因为有时候签到会失败，好像是服务器不太好，就设置一下每小时签到一次保证成功吧）。

注意，在官方文档中有这么一段：

> To prevent unnecessary workflow runs, scheduled workflows may be disabled automatically. When a public repository is forked, scheduled workflows are disabled by default. In a public repository, scheduled workflows are automatically disabled when no repository activity has occurred in 60 days.

也就是说，**定时执行的任务需要每隔 60 天激活一次**。

## Server酱

参考：[http://sc.ftqq.com/3.version](http://sc.ftqq.com/3.version)