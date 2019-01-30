# XGPush

信鸽官方 VIP 版本 CocoaPods Spec镜像

## 使用方法
Pods file中添加

```
pod 'QQ_XGVIPPush'
```


VERSION 1.0.0.7
-------------------------------------------
*[+]去除获取公有云配置服务器地址中对`Info.plist`文件名字的限制


VERSION 1.0.0.6
-------------------------------------------

*[+]支持私有云部署服务器配置
*[+]修复内存泄露

私有化部署需要引用 `XGPushPrivate.h`, 并要求在 信鸽 `SDK` 启动之前调用接口 `- (void)configureHost:(NSString *)host port:(NSInteger)port;` 来设置服务器配置信息

代码示例：

```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// 配置私有云服务器地址
	[[XGPush defaultManager] configureHost:@"yourcompany.domain.com" port:8080];
	
    [[XGPush defaultManager] setEnableDebug:YES];
    [[XGPush defaultManager] startXGWithAppID:2200257934 appKey:@"IF7E9U92S3ZC" delegate:self];
    // 清除角标
    if ([XGPush defaultManager].xgApplicationBadgeNumber > 0) {
        [[XGPush defaultManager] setXgApplicationBadgeNumber:0];
    }
	[[XGPush defaultManager] reportXGNotificationInfo:launchOptions];
	return YES;
}
```



VERSION 1.0.0.5
-------------------------------------------
*[+]支持公有云部署服务器配置

具体操作步骤：
配置 `Info.plist` 文件，配置文件名必须是 `Info.plist` ，且其中键值对和数据类型必须一致

参照：
![xg_vip_info](https://github.com/xingePush/cocoapods-xg-vip/blob/1.0.0.5/resources/xg_vip_info.png)


VERSION 1.0.0.4
-------------------------------------------
*[+]修复内存泄露


VERSION 1.0.0.3
-------------------------------------------
*[+] 获取路由重试机制
*[+]修复内存泄露

 VERSION 1.0.0.2
-------------------------------------------
* 初始版本
