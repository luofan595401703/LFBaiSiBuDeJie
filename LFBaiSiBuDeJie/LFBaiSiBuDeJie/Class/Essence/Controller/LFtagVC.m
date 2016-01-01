//
//  LFtagVC.m
//  LFBaiSiBuDeJie
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 罗凡. All rights reserved.
//

#import "LFtagVC.h"

@implementation LFtagVC

-(void)viewDidLoad
{
    [super viewDidLoad];
//这行代码没用
//self.navigationItem.leftBarButtonItem.title = @"返回";
    [self setUpItem];
    self.view.backgroundColor = [UIColor redColor];
    
}

-(void)setUpItem
{
    self.navigationItem.title = @"推荐标签";
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftBtn setTitle:@"返回" forState:UIControlStateNormal];
    [leftBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
    
    [leftBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [leftBtn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
    [leftBtn sizeToFit];
    leftBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);

    [leftBtn addTarget:self action:@selector(leftBtnClick) forControlEvents:UIControlEventTouchUpInside];
    UIView *view = [[UIView alloc]initWithFrame:leftBtn.bounds];
    [view addSubview:leftBtn];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:view];
}

-(void)leftBtnClick
{

    [self.navigationController popViewControllerAnimated:YES];

}


@end
