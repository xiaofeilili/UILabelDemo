//
//  ViewController.m
//  UILabelDemo
//
//  Created by 李飞飞 on 16/2/5.
//  Copyright © 2016年 李晓飞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     * label1       label上添加图片
     * label2       label自适应高度
     * label3       label的文字添加下划线
     * label4       label中的文字添加阴影
     * label5       label上字体颜色不同
     */
    
    /** label中添加图片*/
    UIImage *image = [UIImage imageNamed:@"banner.png"];
    NSTextAttachment *textAttach = [[NSTextAttachment alloc] init];
    textAttach.image = image;
    
    NSAttributedString *attriAtr = [NSAttributedString attributedStringWithAttachment:textAttach];
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 100)];
    label1.attributedText = attriAtr;
    [self.view addSubview:label1];
    
    /** label高度自适应*/
    NSString *str = @"ljs;dljdl;fjskdhjkld;dksdjl;ljs;dljdl;fjskdhjkld;dksdjl;ljs;dljdl;fjskdhjkld;dksdjl;ljs;dljdl;fjskdhjkld;dksdjl;ljs;dljdl;fjskdhjkld;dksdjl;ljs;dljdl;fjskdhjkld;dksdjl;ljs;dljdl;fjskdhjkld;dksdjl;";
    //CGSize labelSize = [str sizeWithFont:font constrainedToSize:CGSizeMake(self.view.frame.size.width-40, 1000) lineBreakMode:NSLineBreakByTruncatingTail];
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:18]};
    /*
     * size  宽高限制，用于计算文本绘制时占据的矩形块
     * options  文本绘制时的附加选项。
     * context  上下文，包括一些信息，例如如何调整字间距以及缩放。最终，该对象包含的信息将用于文本绘制。该参数可为 nil
     */
    CGSize labelSize = [str boundingRectWithSize:CGSizeMake(self.view.frame.size.width-40, 1000) options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 120, labelSize.width, labelSize.height)];
    label2.numberOfLines = 0;
    label2.backgroundColor = [UIColor cyanColor];
    label2.font = [UIFont systemFontOfSize:18];
    label2.text = str;
    
    [self.view addSubview:label2];
    
    
    /** 给label的文字添加下划线*/
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(20, 250, self.view.frame.size.width-40, 50)];
    label3.backgroundColor = [UIColor grayColor];
    label3.numberOfLines = 0;
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:@"jd;sjfoeijldskhfdjklj"];
    NSRange contentRange = {5,[content length]-10};
    [content addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:contentRange];
    label3.attributedText = content;
    [self.view addSubview:label3];
    
    
    /** 给label中的文字添加阴影*/
    UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(20, 300, self.view.frame.size.width-40, 50)];
    label4.backgroundColor = [UIColor purpleColor];
    label4.shadowColor = [UIColor cyanColor];
    label4.text = @"想哦啊过街老鼠封疆大吏深刻的；";
    label4.font = [UIFont systemFontOfSize:18];
    label4.textColor = [UIColor orangeColor];
    label4.shadowOffset = CGSizeMake(1, 0);
    [self.view addSubview:label4];
    
    /** label上字体颜色不同*/
    UILabel *label5 = [[UILabel alloc] initWithFrame:CGRectMake(20, 350, self.view.frame.size.width-40, 50)];
    label5.backgroundColor = [UIColor cyanColor];
    label5.textAlignment = 1;
    [label5 setAttributedText:[self createAttrString]];
    [self.view addSubview:label5];
    
    /** */
    UILabel *label6 = [[UILabel alloc] initWithFrame:CGRectMake(20, 440, self.view.frame.size.width - 40, 100)];
    [self.view addSubview:label6];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 400, self.view.frame.size.width-40, 50)];
    
    //设置文字过长时的显示格式
    label.lineBreakMode = UILineBreakModeMiddleTruncation;//截去中间
    //  typedef enum {
    //      UILineBreakModeWordWrap = 0,
    //      UILineBreakModeCharacterWrap,
    //      UILineBreakModeClip,//截去多余部分
    //      UILineBreakModeHeadTruncation,//截去头部
    //      UILineBreakModeTailTruncation,//截去尾部
    //      UILineBreakModeMiddleTruncation,//截去中间
    //  } UILineBreakMode;
    //如果adjustsFontSizeToFitWidth属性设置为YES，这个属性就来控制文本基线的行为
    label.baselineAdjustment = UIBaselineAdjustmentNone;
    //  typedef enum {
    //      UIBaselineAdjustmentAlignBaselines,
    //      UIBaselineAdjustmentAlignCenters,
    //      UIBaselineAdjustmentNone,
    //  } UIBaselineAdjustment;
    label.enabled = YES;   //默认为YES //只是决定了Label的绘制方式，将它设置为NO将会使文本变暗，表示它没有激活，这时向它设置颜色值是无效的。
    
    
}

//编辑我要分期下面一排字
- (NSMutableAttributedString *)createAttrString {
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:@"用户xxxxxxx245成功申请分期"];
    NSInteger count = attrString.length;
    [attrString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:150.0/255.0f green:150.0/255.0f blue:150.0/255.0f alpha:1.0] range:NSMakeRange(0, 2)];
    [attrString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:1.0f green:131.0/255.0f blue:39.0/255.0f alpha:1.0f] range:NSMakeRange(2, count-6)];
    [attrString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:150.0/255.0f green:150.0/255.0f blue:150.0/255.0f alpha:1.0] range:NSMakeRange(count-6, 6)];
    
    [attrString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:17] range:NSMakeRange(0, count)];
    
    return attrString;
}


@end
