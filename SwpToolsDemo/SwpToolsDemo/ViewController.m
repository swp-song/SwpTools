//
//  ViewController.m
//  SwpToolsDemo
//
//  Created by swp_song on 2017/3/12.
//  Copyright © 2017年 swp_song. All rights reserved.
//

#import "ViewController.h"

#import "SwpLog.h"
#import "SwpTools.h"
#import "SwpGetSystemInformation.h"
#import "SwpCoordinateTransform.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@", NSStringFromCGSize([SwpTools swpToolScreenSize]));
    NSLog(@"%@", [SwpGetSystemInformation swpGetIphoneIpAddress]);
    
    // 坐标拾取稀土 可以 根据 坐标反查
    // http://lbs.amap.com/console/show/picker 高德
    // http://api.map.baidu.com/lbsapi/getpoint/index.html 百度
    // 126.632979, 45.761554  高德 哈尔滨 火车站 坐标 ( 转换之前 )
    // baidu 转成 百度坐标
    SwpCoordinate2D baidu = [SwpCoordinateTransform swpCoordinateTransformAMAPFromBaiDu:45.761554 longitude:126.632979];
    
    // 126.639577, 45.767864  百度 哈尔滨 火车站 坐标 ( 转换之前 )
    // amap 转成 高德 坐标
    SwpCoordinate2D amap  = [SwpCoordinateTransform swpCoordinateTransformBaiDuFromAMAP:45.767864 longitude:126.639577];
    NSLog(@"百度坐标: %f,%f", baidu.longitude, baidu.latitude);
    NSLog(@"高德坐标: %f,%f", amap.longitude, amap.latitude);
    
    NSString *string = @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈";
    
    NSLog(@"%f", [SwpTools swpToolCalculateRowHeight:string font:[UIFont systemFontOfSize:12] width:[SwpTools swpToolScreenWidth]]);
    
    NSLog(@"%f", [SwpTools swpToolCalculateRowWidth:string font:[UIFont systemFontOfSize:12] height:[SwpTools swpToolScreenHeight]]);
    
    SwpLog(@"%@", @{@"key" : @"value", @"key1" : @"value1", @"key2" : @"value2"});
    NSLog(@"%@", @{@"key" : @"value", @"key1" : @"value1", @"key2" : @"value2"});
    
    NSLog(@"%ld", [SwpGetSystemInformation swpGetIphoneDeviceByScreenSize]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
