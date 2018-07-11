//
//  UILabel+ChangeLineSpace.h
//  UILabelDemo
//
//  Created by 李晓飞 on 2018/7/11.
//  Copyright © 2018年 李晓飞. All rights reserved.
//  改变行间距和字间距

#import <UIKit/UIKit.h>

@interface UILabel (ChangeLineSpace)

/**
 * 改变行间距
 */
+ (void)changeLineSpaceForLabel:(UILabel *)label WithSpace:(CGFloat)space;

/**
 * 改变字间距
 */
+ (void)changeWordSpaceForLabel:(UILabel *)label WithSpace:(CGFloat)space;

/**
 * 改变行间距和字间距
 */
+ (void)changeSpaceForLabel:(UILabel *)label WithLineSpace:(CGFloat)lineSpace WordSpace:(CGFloat)wordSpace;


@end
