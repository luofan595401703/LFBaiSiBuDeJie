//
//  LFLoginVC.m
//  LFBaiSiBuDeJie
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 罗凡. All rights reserved.
//

#import "LFLoginVC.h"

#import "LFLoginTextField.h"


@interface LFLoginVC ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftSpance;

@end

@implementation LFLoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}


- (IBAction)close {
    [self dismissViewControllerAnimated:YES completion:^{
        nil;
    }];
    
}

//设置状态栏为白色
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;

}

//监听点击事件   一点击  就停止输入

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    [self.view endEditing:YES];

}

- (IBAction)loginOrRegister:(UIButton *)sender {
    if (self.leftSpance.constant == 0) {
        self.leftSpance.constant = -self.view.width;
        sender.selected = YES;
    }else
    {
        self.leftSpance.constant = 0;
        sender.selected = NO;
    }
    
//    延迟  刷新界面
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    }];
    
}

@end
