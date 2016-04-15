//
//  ViewController.m
//  Demo
//
//  Created by swp_song on 16/4/15.
//  Copyright © 2016年 swp_song. All rights reserved.
//

#import "ViewController.h"

#import "SwpTools.h"
#import "SwpGetIp.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@", NSStringFromCGSize([SwpTools swpToolScreenSize]));
    NSLog(@"%@", [SwpGetIp swpGetIphoneIpAddress]);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
