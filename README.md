# JxbScaleButton
一个倒计时闪秒的按钮控件

#支持CocoaPods引入
`pod 'JxbScaleButton'`

#Code
``` object-c
JxbScaleButton* btn = [[JxbScaleButton alloc] initWithFrame:CGRectMake(100, 200, 100, 44)];
btn.layer.cornerRadius = 5;
btn.layer.masksToBounds = YES;
[self.view addSubview:btn];
[self btnAction:btn];
[btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];


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
```     

#For Example
![](https://raw.githubusercontent.com/JxbSir/JxbScaleButton/master/screenshot.gif)
