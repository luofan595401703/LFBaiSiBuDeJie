//
//  UIImage+original.m
//  LFBaiSiBuDeJie
//
//  Created by apple on 15/12/31.
//  Copyright © 2015年 罗凡. All rights reserved.
//

#import "UIImage+original.h"

@implementation UIImage (original)
+(UIImage *)imageWithOriginal:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

}

@end
