//
//  FitLabel.m
//  UILabelDemo
//
//  Created by 李晓飞 on 2018/5/25.
//  Copyright © 2018年 李晓飞. All rights reserved.
//

#import "FitLabel.h"

@implementation FitLabel

- (void)setText:(NSString *)text {
    [super setText:text];
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:18]};
    /*
     * size  宽高限制，用于计算文本绘制时占据的矩形块
     * options  文本绘制时的附加选项。
     * context  上下文，包括一些信息，例如如何调整字间距以及缩放。最终，该对象包含的信息将用于文本绘制。该参数可为 nil
     */
    CGSize labelSize = [text boundingRectWithSize:CGSizeMake(self.frame.size.width-20, 1000) options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    //CGSize labelSize = [str sizeWithFont:font constrainedToSize:CGSizeMake(self.view.frame.size.width-40, 1000) lineBreakMode:NSLineBreakByTruncatingTail];
    
    CGRect frame = self.frame;
    frame.size.width = labelSize.width;
    frame.size.height = labelSize.height;
    self.frame = frame;
    
    self.numberOfLines = 0;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
