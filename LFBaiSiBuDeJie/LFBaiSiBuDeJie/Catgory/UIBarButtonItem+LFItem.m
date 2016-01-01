//
//  UIBarButtonItem+LFItem.m
//  LFBaiSiBuDeJie
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 罗凡. All rights reserved.
//

#import "UIBarButtonItem+LFItem.h"

@implementation UIBarButtonItem (LFItem)

+(instancetype)itemWithImage:(NSString *)imageName selectImage:(NSString *)selectImage target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:selectImage] forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIView *view = [[UIView alloc]initWithFrame:btn.bounds];
    [view addSubview:btn];
    return [[UIBarButtonItem alloc]initWithCustomView:view];

}

@end
