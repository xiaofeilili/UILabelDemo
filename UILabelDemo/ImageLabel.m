//
//  ImageLabel.m
//  UILabelDemo
//
//  Created by 李晓飞 on 2018/5/25.
//  Copyright © 2018年 李晓飞. All rights reserved.
//

#import "ImageLabel.h"

@implementation ImageLabel

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image {
    self = [super initWithFrame:frame];
    if (self) {
        self.image = image;
    }
    return self;
}

- (void)setImage:(UIImage *)image {
    if (_image != image) {
        _image = image;
    }
    NSTextAttachment *textAttach = [[NSTextAttachment alloc] init];
    textAttach.image = image;
    
    NSAttributedString *attribute = [NSAttributedString attributedStringWithAttachment:textAttach];
    self.attributedText = attribute;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
