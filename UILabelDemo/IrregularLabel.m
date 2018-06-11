//
//  IrregularLabel.m
//  UILabelDemo
//
//  Created by 李晓飞 on 2018/6/11.
//  Copyright © 2018年 李晓飞. All rights reserved.
//

#import "IrregularLabel.h"

#define Label_width     self.bounds.size.width
#define Label_height    self.bounds.size.height
#define Corner_size     10

@interface IrregularLabel ()

/** 遮罩 */
@property (nonatomic, strong)CAShapeLayer *maskLayer;
/** 路径 */
@property (nonatomic, strong)UIBezierPath *borderPath;

@end

@implementation IrregularLabel

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // 初始化遮罩
        self.maskLayer = [CAShapeLayer layer];
        // 设置遮罩
        [self.layer setMask:self.maskLayer];
        // 初始化路径
        self.borderPath = [UIBezierPath bezierPath];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    // 遮罩层frame
    self.maskLayer.frame = self.bounds;
    // 设置path起点
    [self.borderPath moveToPoint:CGPointMake(0, Corner_size)];
    // 左上角的圆角
    [self.borderPath addQuadCurveToPoint:CGPointMake(Corner_size, 0) controlPoint:CGPointMake(0, 0)];
    // 直线，到右上角
    [self.borderPath addLineToPoint:CGPointMake(Label_width - Corner_size, 0)];
    // 右上角的圆
    [self.borderPath addQuadCurveToPoint:CGPointMake(Label_width, 10) controlPoint:CGPointMake(Label_width, 0)];
    // 直线，到右下角
    [self.borderPath addLineToPoint:CGPointMake(Label_width, Label_height)];
    // 直线，到左下角
    [self.borderPath addLineToPoint:CGPointMake(Label_width/2.0 + 5, Label_height)];
    //
    [self.borderPath addLineToPoint:CGPointMake(Label_width/2.0, Label_height - 5)];
    //
    [self.borderPath addLineToPoint:CGPointMake(Label_width/2.0 - 5, Label_height)];
    //
    [self.borderPath addLineToPoint:CGPointMake(0, Label_height)];
    // 回到起点
    [self.borderPath addLineToPoint:CGPointMake(0, Corner_size)];
    
    self.maskLayer.path = self.borderPath.CGPath;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
