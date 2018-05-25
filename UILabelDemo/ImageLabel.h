//
//  ImageLabel.h
//  UILabelDemo
//
//  Created by 李晓飞 on 2018/5/25.
//  Copyright © 2018年 李晓飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageLabel : UILabel

@property (nonatomic, strong)UIImage *image;

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image;

@end
