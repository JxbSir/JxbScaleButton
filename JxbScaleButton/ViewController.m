//
//  ViewController.m
//  JxbScaleButton
//
//  Created by Peter on 15/8/7.
//  Copyright (c) 2015年 Peter. All rights reserved.
//

#import "ViewController.h"
#import "JxbScaleButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    JxbScaleButton* btn = [[JxbScaleButton alloc] initWithFrame:CGRectMake(100, 200, 100, 44)];
    btn.layer.cornerRadius = 5;
    btn.layer.masksToBounds = YES;

    [self.view addSubview:btn];
    
    [self btnAction:btn];
    
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnAction:(id)sender {
    NSLog(@"click");
    JxbScaleButton* btn = (JxbScaleButton*)sender;
    JxbScaleSetting* setting = [[JxbScaleSetting alloc] init];
    setting.strPrefix = @"";
    setting.strSuffix = @"秒";
    setting.strCommon = @"重新发送";
    setting.indexStart = 10;
    [btn startWithSetting:setting];
}

@end
