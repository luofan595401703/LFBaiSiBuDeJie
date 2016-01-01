//
//  UIBarButtonItem+LFItem.h
//  LFBaiSiBuDeJie
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 罗凡. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LFItem)

+(instancetype)itemWithImage:(NSString *)imageName selectImage:(NSString *)selectImage
                      target:(id)target action:(SEL)action;

@end
