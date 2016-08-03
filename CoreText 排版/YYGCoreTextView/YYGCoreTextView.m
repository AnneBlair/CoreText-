//
//  YYGCoreTextView.m
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import "YYGCoreTextView.h"

#import "UIView+YYGView.h"

@implementation YYGCoreTextView

-(void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    CGContextRef context=UIGraphicsGetCurrentContext();
    /**
     *  坐标系上下翻转
     */
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.frame.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGMutablePathRef path=CGPathCreateMutable();
//    CGPathAddEllipseInRect(path, NULL, self.bounds);   //椭圆区域文字排版
//    CGPathAddRoundedRect(path, NULL, self.bounds, 100, 100); //圆形排版
    CGPathAddRect(path, NULL, self.bounds);             //矩形排版
    
    NSAttributedString * String=[[NSAttributedString alloc]initWithString:@"Hello World! "
                                 " 创建绘制的区域，CoreText 本身支持各种文字排版的区域，"
                                 " 我们这里简单地将 UIView 的整个界面作为排版的区域。"
                                 " 为了加深理解，建议读者将该步骤的代码替换成如下代码，"
                                 " 测试设置不同的绘制区域带来的界面变化。"];
                                 //@"hello"];
    
    CTFramesetterRef  framesetter=CTFramesetterCreateWithAttributedString((CFAttributedStringRef)String);
    CTFrameRef fram=CTFramesetterCreateFrame(framesetter, CFRangeMake(0, [String length]), path, NULL);
    CTFrameDraw(fram, context);
    
    CFRelease(fram);
    CFRelease(path);
    CFRelease(framesetter);

   
}

@end
