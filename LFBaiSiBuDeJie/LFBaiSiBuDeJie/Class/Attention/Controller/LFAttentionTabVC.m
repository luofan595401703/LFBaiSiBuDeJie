//
//  LFAttentionTabVC.m
//  LFBaiSiBuDeJie
//
//  Created by apple on 15/12/29.
//  Copyright © 2015年 罗凡. All rights reserved.
//

#import "LFAttentionTabVC.h"

#import "LFLoginVC.h"

@interface LFAttentionTabVC ()

@end

@implementation LFAttentionTabVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的关注";
    
    // 导航栏左边的内容
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" selectImage:@"friendsRecommentIcon-click" target:self action:@selector(friendsRecommendClick)];
}


- (void)friendsRecommendClick
{
    NSLog(@"123");
}


- (IBAction)login:(UIButton *)sender {
    
    [self presentViewController:[[LFLoginVC alloc]init] animated:YES completion:^{
        nil;
    }];
    
}


@end
