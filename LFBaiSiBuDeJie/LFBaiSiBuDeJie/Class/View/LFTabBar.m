//
//  LFTabBar.m
//  LFBaiSiBuDeJie
//
//  Created by apple on 15/12/29.
//  Copyright © 2015年 罗凡. All rights reserved.
//

#import "LFTabBar.h"

@interface LFTabBar ()

@property (nonatomic,strong) UIButton *addBtn;


@end

@implementation LFTabBar

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
//        添加按钮 (添加的按钮不弹出控制器)
        UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [addBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [addBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [addBtn sizeToFit];
        
        [addBtn addTarget:self action:@selector(addBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:addBtn];
        self.addBtn = addBtn;
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    
    // 设置发布按钮的位置
    self.addBtn.center = CGPointMake(width * 0.5, height * 0.5);

//    按钮的索引
    int i = 0;
    CGFloat tabBarButtonW = self.bounds.size.width / 5.0;
    CGFloat tabBarButtonH = self.bounds.size.height;
    CGFloat tabBarButtonY = 0;
    CGFloat tabBarButtonX = 0;
    
//    NSLog(@"%@",self.subviews);
    
    for (UIView *tabBarBtn in self.subviews) {
        if ([NSStringFromClass(tabBarBtn.class) isEqualToString:@"UITabBarButton"]) {
            tabBarButtonX = i * tabBarButtonW;
            i++;
            if (i >= 3) {
                tabBarButtonX += tabBarButtonW;
            }
            
            tabBarBtn.frame = CGRectMake(tabBarButtonX, tabBarButtonY, tabBarButtonW, tabBarButtonH);
        }
        
      
    }
    
    
    
    
}

-(void)addBtnClick
{
    NSLog(@"点击了+");
}


@end
