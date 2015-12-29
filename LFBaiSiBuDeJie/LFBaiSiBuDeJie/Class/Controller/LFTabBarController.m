//
//  LFTabBarController.m
//  LFBaiSiBuDeJie
//
//  Created by apple on 15/12/29.
//  Copyright © 2015年 罗凡. All rights reserved.
//

#import "LFTabBarController.h"
#import "LFNavController.h"
#import "LFAttentionTabVC.h"
#import "LFEssenceTabVC.h"
#import "LFMeTableVC.h"
#import "LFNewTabVC.h"
#import "LFTabBar.h"


@interface LFTabBarController ()

@end

@implementation LFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
//    添加所有的子控制器
    [self setUpAllChildVC];
    
//    自定义tabbarItem
    [self setUpItem];
    
//    自定义tabbar
    
    [self setValue:[[LFTabBar alloc]init] forKey:@"tabBar"];
    
}

-(void)setUpAllChildVC
{
//添加一个子控制器
    LFEssenceTabVC *essenceVC = [[LFEssenceTabVC alloc]init];
    LFNewTabVC *newVC = [[LFNewTabVC alloc]init];
    LFAttentionTabVC *attention = [[LFAttentionTabVC alloc]init];
    LFMeTableVC *me = [[LFMeTableVC alloc]init];
    
    [self setUpChildVC:essenceVC title:@"精华" image:[UIImage imageNamed:@"tabBar_essence_icon"] selectedImage:[UIImage imageNamed:@"tabBar_essence_click_icon"]];
    
    [self setUpChildVC:newVC title:@"新帖" image:[UIImage imageNamed:@"tabBar_new_icon"] selectedImage:[UIImage imageNamed:@"tabBar_new_click_icon"]];
    
    [self setUpChildVC:attention title:@"关注" image:[UIImage imageNamed:@"tabBar_friendTrends_icon"] selectedImage:[UIImage imageNamed:@"tabBar_friendTrends_click_icon"]];
    
    [self setUpChildVC:me title:@"我" image:[UIImage imageNamed:@"tabBar_me_icon"] selectedImage:[UIImage imageNamed:@"tabBar_me_click_icon"]];
    

}

-(void)setUpChildVC:(UIViewController *)vc title:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage
{

    LFNavController *navVC = [[LFNavController alloc]initWithRootViewController:vc];
    navVC.tabBarItem.title = title;
    navVC.tabBarItem.image = image;
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navVC.tabBarItem.selectedImage = selectedImage;
    
    [self addChildViewController:navVC];
}

//设置tabBarItem属性
-(void)setUpItem
{
    NSMutableDictionary *normal = [NSMutableDictionary dictionary];
    normal[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    normal[NSForegroundColorAttributeName] = [UIColor blackColor];
    
    NSMutableDictionary *select = [NSMutableDictionary dictionary];
    select[NSForegroundColorAttributeName] = [UIColor redColor];
//    获取全局所有的tabbarItem
//    只有这样才能改  不然每个navVC都有对应的tabbarItem属性  改不了
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:normal forState:UIControlStateNormal];
    [item setTitleTextAttributes:select forState:UIControlStateSelected];

}

@end
