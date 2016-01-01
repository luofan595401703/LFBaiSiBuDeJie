//
//  LFEssenceTabVC.m
//  LFBaiSiBuDeJie
//
//  Created by apple on 15/12/29.
//  Copyright © 2015年 罗凡. All rights reserved.
//

#import "LFEssenceTabVC.h"
#import "LFtagVC.h"

@interface LFEssenceTabVC ()

@end

@implementation LFEssenceTabVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpItems];
    
    }

-(void)setUpItems
{
//self.title = @"精华";
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" selectImage:@"MainTagSubIconClick" target:self action:@selector(leftClick)];
}

-(void)leftClick
{
//push进来一个新的控制器
   LFtagVC *tagVC = [[LFtagVC alloc]init];
    tagVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:tagVC animated:YES];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

@end
