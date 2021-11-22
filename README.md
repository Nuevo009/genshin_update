# genshin_update

原神 国服更新api 不需要启动器，提供高速直链下载

### 写这个的原因

* 同学总是吵着校园网下原神更新慢，下载慢，这不外乎就是因为拉跨启动器单线程下载，拉跨校园网限速还带出口波动

* 看着同学一百多k的下载速度。。。我觉得还是有必要枪救一下

### 使用方法

#### 最新版的链接[见此](https://github.com/Nuevo009/genshin_update/blob/main/package/package.md)

#### 完整的json[见此](https://github.com/Nuevo009/genshin_update/blob/main/package/package.json)

#### 你可以用[这个powershell脚本](https://github.com/Nuevo009/genshin_update/blob/main/package/getPackage.ps1)来自动找链接，生成的东西就是[这个](https://github.com/Nuevo009/genshin_update/blob/main/package/package.md)

#### 你也可以自己找

* 打开这个[链接](https://sdk-static.mihoyo.com/hk4e_cn/mdk/launcher/api/resource?key=eYd89JmJ&launcher_id=18) 然后<kbd>ctrl</kbd> + <kbd>F</kbd> 搜索版本。

#### 如果你是更新
* 比如从2.1更新到2.2，那么搜索`2.1.0_2.2.0`，找到对应链接。

* 有Game,和Audio两种包，至少要下载Game包，Audio可以根据你在游戏里面选择的语音包下载。

* 把这些链接拖入IDM,[FDM](https://www.freedownloadmanager.org/zh/download.htm),[XDM](https://github.com/subhra74/xdm),[aria2](https://github.com/aria2/aria2)等多线程下载器下载。

* 把下载完成的zip放到`path\to\your\Genshin Impact\Genshin Impact Game`文件夹下。

* 打开启动器，如果你下载的是预下载包，那么应该会显示预下载已完成；如果你是正常更新，那么启动器会进行一步校验解压移动删除的操作，需要等一会儿。

#### 如果你是想完整下载，不想增量更新

* 那么更简单了，首先，你之前安装的原神可以直接删了

* 打开上面那个链接，第一条应该就是最后发布的完整游戏包，应该带有`"game":{"latest":{"name":"","version"`之类的返回信息，直接下载这个然后解压

* 找到你需要的完整语音包，应该带有类似于`voice_packs":[{"language":"zh-cn","name":"`之类的信息，下载之后解压在`path\to\your\Genshin Impact Game\YuanShen_Data`就行

* 从此之后你也用不到官方的启动器了。

#### 如果你不想用启动器，还想增量更新

* 暂时没有找到比较完善的方法

#### 其他


* 国际服可以去<https://github.com/rapdodge/GenshinRepository>

* 国服也可以去泡芙大佬那里解析<https://povsister.app/#/desktop-client-ys>，他这种直接帮你找好完整game包，但是不提供更新包和语音包下载，想找这些还是去上面拿。


文章采用 [CC BY-SA 4.0 协议][cc-by-nc-sa] ，转载请注明出处！

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
