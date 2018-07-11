//
//  UILabel+ChangeLineSpace.m
//  UILabelDemo
//
//  Created by 李晓飞 on 2018/7/11.
//  Copyright © 2018年 李晓飞. All rights reserved.
//

#import "UILabel+ChangeLineSpace.h"

@implementation UILabel (ChangeLineSpace)

///* 改变行间距
+ (void)changeLineSpaceForLabel:(UILabel *)label WithSpace:(CGFloat)space {
    NSString *lblText = label.text;
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:lblText];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [attStr addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [lblText length])];
    label.attributedText = attStr;
    [label sizeToFit];
}

///* 改变字间距
+ (void)changeWordSpaceForLabel:(UILabel *)label WithSpace:(CGFloat)space {
    NSString *lblText = label.text;
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:lblText attributes:@{NSKernAttributeName: @(space)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [attStr addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [lblText length])];
    label.attributedText = attStr;
    [label sizeToFit];
}

///* 改变行间距和字间距
+ (void)changeSpaceForLabel:(UILabel *)label WithLineSpace:(CGFloat)lineSpace WordSpace:(CGFloat)wordSpace {
    NSString *lblText = label.text;
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:lblText attributes:@{NSKernAttributeName:@(wordSpace)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attStr addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [lblText length])];
    label.attributedText = attStr;
    [label sizeToFit];
}

@end
