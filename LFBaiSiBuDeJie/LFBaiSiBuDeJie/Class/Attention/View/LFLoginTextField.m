//
//  LFLoginTextField.m
//  LFBaiSiBuDeJie
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 罗凡. All rights reserved.
//

#import "LFLoginTextField.h"

#define LFPlaceHolderColorKey @"placeholderLabel.textColor"

// 默认的占位文字颜色
#define LFPlaceholderDefaultColor [UIColor grayColor]
// 聚焦的占位文字颜色
#define LFPlaceholderFocusColor [UIColor whiteColor]

@implementation LFLoginTextField

-(void)awakeFromNib
{
//文本框的光标颜色
    self.tintColor = LFPlaceholderFocusColor;
//    文本框占位的文字颜色
    self.textColor = LFPlaceholderFocusColor;
//    设置占位图片的颜色
    [self resignFirstResponder];

}

//文本框聚焦是调用   就是弹出键盘的时候调用
-(BOOL)becomeFirstResponder
{
    [self setValue:LFPlaceholderFocusColor forKeyPath:LFPlaceHolderColorKey];
    return [super becomeFirstResponder];

}

//文本框是去焦点的时候调用   就是隐藏键盘的时候调用
-(BOOL)resignFirstResponder
{
    [self setValue:LFPlaceholderDefaultColor forKeyPath:LFPlaceHolderColorKey];
    return [super resignFirstResponder];

}



@end
