//
//  JxbScaleButton.m
//  JxbScaleButton
//
//  Created by Peter on 15/8/7.
//  Copyright (c) 2015年 Peter. All rights reserved.
//

#import "JxbScaleButton.h"

@implementation JxbScaleSetting
@end

@implementation JxbScaleButton

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void)scale:(JxbScaleSetting*)setting {
    self.titleLabel.transform = CGAffineTransformMakeScale(1, 1);
    self.titleLabel.alpha     = 1;
    [self setTitleColor:setting.colorTitle ? setting.colorTitle : [UIColor whiteColor] forState:UIControlStateNormal];
    [self setTitleColor:setting.colorTitle ? setting.colorTitle : [UIColor whiteColor] forState:UIControlStateDisabled];
    if (setting.indexStart > 0)
    {
        self.backgroundColor = setting.colorDisable ? setting.colorDisable : [UIColor lightGrayColor];
        [self setEnabled:NO];
        NSString* title = [NSString stringWithFormat:@"   %@%ld%@   ",(setting.strPrefix ? setting.strPrefix : @""),setting.indexStart,(setting.strSuffix ? setting.strSuffix : @"")];
        NSLog(@"%@",title);
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitle:title forState:UIControlStateDisabled];

        __weak typeof (self) wSelf = self;
        [UIView animateWithDuration:1 animations:^{
            self.titleLabel.transform = CGAffineTransformMakeScale(1.2, 1.2);
            self.titleLabel.alpha     = 0.0;
        } completion:^(BOOL b){
            setting.indexStart--;
            [wSelf scale:setting];
        }];
    }
    else {
        self.backgroundColor = setting.colorCommon ? setting.colorCommon : [UIColor redColor];
        [self setEnabled:YES];
        [self setTitle:setting.strCommon forState:UIControlStateNormal];
    }
}

#pragma mark - 启动函数
- (void)startWithSetting:(JxbScaleSetting *)setting {
    [self scale:setting];
}

@end
