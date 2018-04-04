//
//  ViewController.m
//  SwpToolsDemo
//
//  Created by swp_song on 2017/3/12.
//  Copyright © 2017年 swp_song. All rights reserved.
//

#import "ViewController.h"


#import <SwpTools/SwpTools.h>
#import <SwpTools/SwpLogTools.h>
#import <SwpTools/SwpCoordinateTransform.h>
#import <SwpTools/SwpGetSystemInformation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    {
#warning - 以下都是废弃方法，如有使用尽快迁移到新的 Api 上，会在下几个版本移除方法。
        SwpCoordinate2D BD09_1 = [SwpCoordinateTransform swpCoordinateTransformAMAPFromBaiDu:39.909745 longitude:116.402455];
        NSLog(@"BD09_1    = %f,%f", BD09_1.longitude, BD09_1.latitude);
        SwpCoordinate2D GCJ02 = [SwpCoordinateTransform swpCoordinateTransformBaiDuFromAMAP:BD09_1.latitude longitude:BD09_1.longitude];
        NSLog(@"GCJ02     = %f,%f", GCJ02.longitude, GCJ02.latitude);
        NSLog(@"IpAddress = %@", [SwpGetSystemInformation swpGetIphoneIpAddress]);
    }
    
    SwpLog(@"111111");
    SwpLog(@"A = %@", @"123123");
    
    NSDictionary *dictionary = @{@"key1" : @"value1", @"key2" : @"value2", @"key3" : @"value3", @"key4" : @"value4"};
    NSArray      *array      = @[@"123", @(123), dictionary, @[@"123", @"123"], [NSObject new]];
    SwpLog(@"array      = %@", array);
    SwpLog(@"dictionary = %@", dictionary);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
