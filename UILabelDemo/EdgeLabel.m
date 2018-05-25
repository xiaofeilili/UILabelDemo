//
//  EdgeLabel.m
//  UILabelDemo
//
//  Created by 李晓飞 on 2018/5/25.
//  Copyright © 2018年 李晓飞. All rights reserved.
//

#import "EdgeLabel.h"

@implementation EdgeLabel

- (void)drawTextInRect:(CGRect)rect {
    //边距，上左下右
    UIEdgeInsets insets = {0, 5, 0, 5};
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
