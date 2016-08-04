//
//  YYGDisplayView.m
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/4.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import "YYGDisplayView.h"

@implementation YYGDisplayView

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    CGContextRef context=UIGraphicsGetCurrentContext();
    
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    if (self.data)
    {
        CTFrameDraw(self.data.ctFram, context);
        
    }
    
}

@end
