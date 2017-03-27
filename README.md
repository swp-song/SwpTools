# SwpToolsiOS封装一些常用方法


#### SwpTools (简介):

```
1. 封装一些常用方法, 开发更简便，效率.
```

-------


#### 导入：

```rub

1. 手动导入：

 	* SwpTools 文件夹 导入 项目 中

	* #import "SwpTools" 			// 常用 工具类


2. CocoaPods 导入:

	* pod search SwpTools

	* pod 'SwpTools'

	* #import <SwpTools/SwpTools.h>	// 常用 工具类


```
**...更多工具请查看 Demo**

-------

##### 版本记录

-------
```
1. 版本版本: 3.1.0

2. 更新时间: 2017-03-27 11:06:29

3. 更新内容:  
    //  新增方法底部画线方法
    1. + (void)swpToolViewBottomDrawLines:(CGRect)frame linesHeight:(CGFloat)height linesColor:(UIColor *)color;

    //  根据字符串的宽度, 计算字符串的高度
    2. + (CGFloat)swpToolCalculateRowHeight:(NSString *)string font:(UIFont *)font width:(CGFloat)width;

    //  根据字符串的高度, 计算字符串的宽度
    3. + (CGFloat)swpTooCalculateRowWidth:(NSString *)string font:(UIFont *)font height:(CGFloat)height;
```
-------
```
1. 版本版本: 3.0.0

2. 更新时间: 2017-03-12 15:26:15

3. 更新内容: 源码公布
```
-------


#### 备注：
```
持续更新, 如果喜欢, 欢迎 Star
```

-------

#### 声明:

**著作权归 ©swp_song, 如需转载请标明出处**

-------


